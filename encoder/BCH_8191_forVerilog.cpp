//-------------------------------
#include <math.h>
#include <stdio.h>
#include <conio.h>
#include <time.h>
#include <stdlib.h>

#include <iostream.h>
#include <limits.h>
//--------------------------------------
#define SAMPLE 1000
#define RANDMAX   32767
#define DBSTEP     1
#define POINTNO    1
#define DB0        0.4
#define Eb         1.0
	
//#define TABLE_SIZE		16
#define LARGE_NUMBER  1.0e30
#define  ITERATION 			18


#define MAX_RANDOM LONG_MAX    // Maximum value of random() 
//---------------------------------
int             m, n, length, k, t, d;
int             p[21];
int             alpha_to[1048576], index_of[48576], g[576];
int             recd[1048576],recd2[1048576], data[1048576], bb[548576];
int             seed;
int             numerr, errpos[1024], decerror = 0;

static  double bpsk[2]={-1,1};			//BPSK modulation
static int initial=0;
double rnd(){ //rand_max=7FFF (32767) 隨時間改變 
	static int Num=0;
    double number;
    int i;

	if (Num >=RAND_MAX || initial==0){
		time_t t;
		t=time(NULL);
		srand((unsigned)(t%RAND_MAX));
        Num=0;
		initial=1;
//        printf("now the seed is set to %d\n",t%RAND_MAX);
    }

    i=rand();
    number=(double)(i)/(unsigned  (RAND_MAX+1));
    Num++;

    return (float)number;
}
double deviate;							//sqrt(variance)
FILE *fp;
//----------    for verilog     -----------------------
FILE *fp2,//testbench.txt
     *fp3,//code.txt
     *fp4,//syndrome_decimal.txt
     *fp5,//syndrome_binary
     *fp6,//error location 
     *fp7,//error_position
     *fp8,//error_location_binary 
     *fp9;
 //--------------------------------------
void 
read_p()
/*
 *	Read m, the degree of a primitive polynomial p(x) used to compute the
 *	Galois field GF(2**m). Get precomputed coefficients p[] of p(x). Read
 *	the code length.
 */
{
	int			i, ninf;

	for (i=1; i<m; i++)
		p[i] = 0;
	
	p[0] = p[m] = 1;
	
	if (m == 2)			p[1] = 1;
	else if (m == 3)	p[1] = 1;
	else if (m == 4)	p[1] = 1;
	else if (m == 5)	p[2] = 1;
	else if (m == 6)	p[1] = 1;
	else if (m == 7)	p[1] = 1;
	else if (m == 8)	p[4] = p[5] = p[6] = 1;
	else if (m == 9)	p[4] = 1;
	else if (m == 10)	p[3] = 1;
	else if (m == 11)	p[2] = 1;
	else if (m == 12)	p[3] = p[4] = p[7] = 1;
	else if (m == 13)	p[1] = p[3] = p[4] = 1;
	else if (m == 14)	p[1] = p[11] = p[12] = 1;
	else if (m == 15)	p[1] = 1;
	else if (m == 16)	p[2] = p[3] = p[5] = 1;
	else if (m == 17)	p[3] = 1;
	else if (m == 18)	p[7] = 1;
	else if (m == 19)	p[1] = p[5] = p[6] = 1;
	else if (m == 20)	p[3] = 1;

    
	n = 1;
	//--- n=2^m ---
	for (i = 0; i <= m; i++) {
        n *= 2;
		//printf("%1d", p[i]);
        }
	//printf("\n");
	
	//?????????shorten code
	n = n / 2 - 1;//m=3,n=7
	ninf = (n + 1) / 2 - 1;
	/*
	do  
	{
		printf("Enter code length (%d < length <= %d): ", ninf, n);
		scanf("%d", &length);
	} 
	
	 //????????????????????????
	while ( !((length <= n)&&(length>ninf)) );
	*/
}


void 
generate_gf()
/*
 * Generate field GF(2**m) from the irreducible polynomial p(X) with
 * coefficients in p[0]..p[m].
 *
 * Lookup tables:
 *   index->polynomial form: alpha_to[] contains j=alpha^i;
 *   polynomial form -> index form:	index_of[j=alpha^i] = i
 *
 * alpha=2 is the primitive element of GF(2**m)
 */
{
	register int    i, mask;

	mask = 1;
	alpha_to[m] = 0;
	for (i = 0; i < m; i++) {
		alpha_to[i] = mask;
		index_of[alpha_to[i]] = i;
		if (p[i] != 0)
			alpha_to[m] ^= mask;//if a=alpha,p(a)=a^3+a+1,a^3=a+1
		mask <<= 1;

	}
	index_of[alpha_to[m]] = m;
	mask >>= 1;//移回最高次項EX:m=3,3bits,mask=100之前為10000
	for (i = m + 1; i < n; i++) {
		if (alpha_to[i - 1] >= mask)//比mask小,往左shift,反之消掉最高次項再往左移加alpha(m)ps:alpha(m)最高位元分給低次位元
		  alpha_to[i] = alpha_to[m] ^ ((alpha_to[i - 1] ^ mask) << 1);
		else
		  alpha_to[i] = alpha_to[i - 1] << 1;
		index_of[alpha_to[i]] = i;
	}//already complete alph_to[0-6]
	index_of[0] = -1;//沒有對應的power representation
}


void 
gen_poly()
/*
 * Compute the generator polynomial of a binary BCH code. Fist generate the
 * cycle sets modulo 2**m - 1, cycle[][] =  (i, 2*i, 4*i, ..., 2^l*i). Then
 * determine those cycle sets that contain integers in the set of (d-1)
 * consecutive integers {1..(d-1)}. The generator polynomial is calculated
 * as the product of linear factors of the form (x+alpha^i), for every i in
 * the above cycle sets.
 */
{
	register int	ii, jj, ll, kaux;
	register int	test, aux, nocycles, root, noterms, rdncy;
	int             cycle[1024][21], size[1024], min[1024], zeros[1024];

	/* Generate cycle sets modulo n, n = 2**m - 1 */
	cycle[0][0] = 0;
	size[0] = 1;
	cycle[1][0] = 1;
	size[1] = 1;
	jj = 1;			/* cycle set index */

	do 
	{
		/* Generate the jj-th cycle set */
		ii = 0;
		do 
		{
			ii++;
			cycle[jj][ii] = (cycle[jj][ii - 1] * 2) % n;
			size[jj]++;
			aux = (cycle[jj][ii] * 2) % n;
		} while (aux != cycle[jj][0]);
		/* Next cycle set representative */
		ll = 0;
		do 
		{
			ll++;
			test = 0;
			for (ii = 1; ((ii <= jj) && (!test)); ii++)	
			/* Examine previous cycle sets */
			  for (kaux = 0; ((kaux < size[ii]) && (!test)); kaux++)
			     if (ll == cycle[ii][kaux])
			        test = 1;
		} while ((test) && (ll < (n - 1)));
		if (!(test)) 
		{
			jj++;	/* next cycle set index */
			cycle[jj][0] = ll;
			size[jj] = 1;
		}
	} while (ll < (n - 1));
	nocycles = jj;		/* number of cycle sets modulo n */

	
	d = 2 * t + 1;

	/* Search for roots 1, 2, ..., d-1 in cycle sets */
	kaux = 0;
	rdncy = 0;
	for (ii = 1; ii <= nocycles; ii++) 
	{
		min[kaux] = 0;
		test = 0;
		for (jj = 0; ((jj <size[ii]) && (!test)); jj++)
			for (root = 1; ((root < d) && (!test)); root++)
				if (root == cycle[ii][jj])  
				{
					test = 1;
					min[kaux] = ii;
				}
		if (min[kaux]) 
		{
			rdncy += size[min[kaux]];
			kaux++;
		}
	}
	noterms = kaux;
	kaux = 1;
	for (ii = 0; ii < noterms; ii++)
		for (jj = 0; jj < size[min[ii]]; jj++) 
		{
			zeros[kaux] = cycle[min[ii]][jj];
			kaux++;
		}

	k = length - rdncy;

    if (k<0)
      {
         printf("Parameters invalid!\n");
         exit(0);
      }

	

	/* Compute the generator polynomial */
	g[0] = alpha_to[zeros[1]];
	g[1] = 1;		/* g(x) = (X + zeros[1]) initially */
	for (ii = 2; ii <= rdncy; ii++) {
	  g[ii] = 1;
	  for (jj = ii - 1; jj > 0; jj--)
	    if (g[jj] != 0)
	      g[jj] = g[jj - 1] ^ alpha_to[(index_of[g[jj]] + zeros[ii]) % n];
	    else
	      g[jj] = g[jj - 1];
	  g[0] = alpha_to[(index_of[g[0]] + zeros[ii]) % n];
	}

}


void 
encode_bch()
/*
 * Compute redundacy bb[], the coefficients of b(x). The redundancy
 * polynomial b(x) is the remainder after dividing x^(length-k)*data(x)
 * by the generator polynomial g(x).
 */
{
	register int    i, j;
	register int    feedback;
	FILE *fp_s; 

	if((fp_s=fopen("state.txt","w"))!=NULL)
		fp_s=fopen("state.txt","w");

	for (i = 0; i < length - k; i++)
		bb[i] = 0;
	for (i = 0; i <k; i++)
	{//改成由 data[0]->data[k-1]
		feedback = data[i] ^ bb[length - k - 1];
		for(int j = 0; j <length - k; j++)fprintf(fp_s,"%d",bb[j]);
		if (feedback != 0) {
			for (j = length - k - 1; j > 0; j--)
				if (g[j] != 0)
					bb[j] = bb[j - 1] ^ feedback;
				else
					bb[j] = bb[j - 1];
			bb[0] = g[0] && feedback;
		} else {
			for (j = length - k - 1; j > 0; j--)
				bb[j] = bb[j - 1];
			bb[0] = 0;
		}
        fprintf(fp_s,"\n");
	}
for( j = 0; j <length - k; j++)fprintf(fp_s,"%d",bb[j]);
	 fclose(fp_s);
}


 void 
decode_bch()
/*
 * Simon Rockliff's implementation of Berlekamp's algorithm.
 *
 * Assume we have received bits in recd[i], i=0..(n-1).
 *
 * Compute the 2*t syndromes by substituting alpha^i into rec(X) and
 * evaluating, storing the syndromes in s[i], i=1..2t (leave s[0] zero) .
 * Then we use the Berlekamp algorithm to find the error location polynomial
 * elp[i].
 *
 * If the degree of the elp is >t, then we cannot correct all the errors, and
 * we have detected an uncorrectable error pattern. We output the information
 * bits uncorrected.
 *
 * If the degree of elp is <=t, we substitute alpha^i , i=1..n into the elp
 * to get the roots, hence the inverse roots, the error location numbers.
 * This step is usually called "Chien's search".
 *
 * If the number of errors located is not equal the degree of the elp, then
 * the decoder assumes that there are more than t errors and cannot correct
 * them, only detect them. We output the information bits uncorrected.
 */
{
	register int    i, j, u, q, t2, count = 0, syn_error = 0;
	
	 typedef struct
	 {
	   int             elp[1026][1024], d[1026], l[1026], u_lu[1026], s[1025];
	   int             root[200], loc[200], err[1024], reg[201];
	   int    temp[13];//for verilog
	   
	 }EXIT;
	 typedef EXIT *EXIT_node;

   EXIT_node inner;
   inner = (EXIT_node)malloc(sizeof(EXIT));

	t2 = 2 * t;

   //------------ for verilog --------------------

    fp4=fopen("syndrome_decimal.txt","w");
    fp5=fopen("syndrome_binary.txt","w");
	fp6=fopen("error_location.txt","w");
	fp7=fopen("error_position.txt","w");
	fp8=fopen("error_location_binary.txt","w");
	fp9=fopen("Qin.doc","w");

   //---------------------------------------------
 int    temp_total[13][16];

	/* first form the syndromes */
	//printf("S(x) = ");
	for (i = 1; i <= t2; i++) {//-------fp4 s1~s2t from top-down -------
		inner->s[i] = 0;
		for (j = 0; j < length; j++)
			if (recd[j] != 0)
			{
				inner->s[i] ^= alpha_to[(i * j) % n];
				//if(j==31)
				//	fprintf(fp5,"\n");
			}
		if (inner->s[i] != 0)
			syn_error = 1; /* set error flag if non-zero syndrome */
/*
 * Note:    If the code is used only for ERROR DETECTION, then
 *          exit program here indicating the presence of errors.
 */     
		//------- for verilog --------------//in the txt----
		                                    // highest degree-->lowest
		                                    //  0000000000001
	   fprintf(fp4,"%d\n",inner->s[i]);
		int s;
		s=inner->s[i];
		for(int qq=0;qq<13;qq++)
		{
			inner->temp[qq]=0;
		}
		for(qq=0;qq<13;qq++)
		{
		 inner->temp[qq]=s%2;
		  s=s/2;
		}
		for(qq=12;qq>=0;qq--)
		{
		fprintf(fp5,"%d",inner->temp[qq]);
		temp_total[qq][i-1]=inner->temp[qq];
		}
		//fprintf(fp4,"%d",inner->s[i]);
        fprintf(fp5,"\r\n");
        //------------------------------------
       
		
		//fprintf(fp4,"%d",inner->s[i]);
        

		/* convert syndrome from polynomial form to index form  */
		inner->s[i] = index_of[inner->s[i]];
	//	printf("%3d ", inner->s[i]);
	}
	//printf("\n");
      for (i = t2; i >0; i--) 
	  {
        for(int qq=12;qq>=0;qq--)
		{
		fprintf(fp9,"%d",temp_total[qq][i-1]);
		fprintf(fp9,"\n");
		}
	  }
        for(int qq=12;qq>=0;qq--)
		{
		fprintf(fp9,"0");
		fprintf(fp9,"\n");
		}
    //------------ for verilog --------------------

   fclose(fp4);
   fclose(fp5);
   fclose(fp9);

   //---------------------------------------------


	if (syn_error) {	/* if there are errors, try to correct them */
		/*
		 * Compute the error location polynomial via the Berlekamp
		 * iterative algorithm. Following the terminology of Lin and
		 * Costello's book :   d[u] is the 'mu'th discrepancy, where
		 * u='mu'+1 and 'mu' (the Greek letter!) is the step number
		 * ranging from -1 to 2*t (see L&C),  l[u] is the degree of
		 * the elp at that step, and u_l[u] is the difference between
		 * the step number and the degree of the elp. 
		 */
		/* initialise table entries */
		inner->d[0] = 0;			/* index form */
		inner->d[1] = inner->s[1];		/* index form */
		inner->elp[0][0] = 0;		/* index form */
		inner->elp[1][0] = 1;		/* polynomial form */
		for (i = 1; i < t2; i++) {
			inner->elp[0][i] = -1;	/* index form */
			inner->elp[1][i] = 0;	/* polynomial form */
		}
		inner->l[0] = 0;//l[-1]=0
		inner->l[1] = 0;//l[0]=0
		inner->u_lu[0] = -1;
		inner->u_lu[1] = 0;
		u = 0;//iteration
 
		do {
			u++;
			if (inner->d[u] == -1) 
			{
				inner->l[u + 1] = inner->l[u];
				for (i = 0; i <= inner->l[u]; i++) {
					inner->elp[u + 1][i] = inner->elp[u][i];
					inner->elp[u][i] = index_of[inner->elp[u][i]];
				}
			} else
				/*
				 * search for words with greatest u_lu[q] for
				 * which d[q]!=0 
				 */
			{
				q = u - 1;
				while ((inner->d[q] == -1) && (q > 0))
					q--;
				/* have found first non-zero d[q]  */
				if (q > 0) 
				{
				  j = q;
				  do 
				  {
				    j--;
				    if ((inner->d[j] != -1) && (inner->u_lu[q] < inner->u_lu[j]))
				      q = j;
				  } while (j > 0);
				}
 
				/*
				 * have now found q such that d[u]!=0 and
				 * u_lu[q] is maximum 
				 */
				/* store degree of new elp polynomial */
				if (inner->l[u] > inner->l[q] + u - q)
					inner->l[u + 1] = inner->l[u];
				else
					inner->l[u + 1] = inner->l[q] + u - q;
 
				/* form new elp(x) */
				for (i = 0; i < t2; i++)
					inner->elp[u + 1][i] = 0;
				for (i = 0; i <= inner->l[q]; i++)
					if (inner->elp[q][i] != -1)
						inner->elp[u + 1][i + u - q] = 
                                   alpha_to[(inner->d[u] + n -inner-> d[q] + inner->elp[q][i]) % n];
				for (i = 0; i <= inner->l[u]; i++)
				{
					inner->elp[u + 1][i] ^= inner->elp[u][i];
					inner->elp[u][i] = index_of[inner->elp[u][i]];
				}
			}
			inner->u_lu[u + 1] = u - inner->l[u + 1];
 
			/* form (u+1)th discrepancy */
			if (u < t2) 
			{	
			/* no discrepancy computed on last iteration */
			  if (inner->s[u + 1] != -1)
			    inner->d[u + 1] = alpha_to[inner->s[u + 1]];
			  else
			    inner->d[u + 1] = 0;
			    for (i = 1; i <= inner->l[u + 1]; i++)
			      if ((inner->s[u + 1 - i] != -1) && (inner->elp[u + 1][i] != 0))
			        inner->d[u + 1] ^= alpha_to[(inner->s[u + 1 - i] 
			                      + index_of[inner->elp[u + 1][i]]) % n];
			  /* put d[u+1] into index form */
			 inner-> d[u + 1] = index_of[inner->d[u + 1]];	
			}
		} while ((u < t2) && (inner->l[u + 1] <= t));
 
		u++;
		if (inner->l[u] <= t) 
		{/* Can correct errors */
			//------------ for verilog --------------------------
			for(i=0;i<=inner->l[u];i++)
			{
               fprintf(fp6,"%d\n",inner->elp[u][i]);
               
			 	//------- for verilog --------------//in the txt----
		                                    // highest degree-->lowest
		                                    //  0000000000001
	    
	              	int ee;//temp
	         	ee=inner->elp[u][i];
	           	for(int qq=0;qq<13;qq++)
				{
		         	inner->temp[qq]=0;
				}
	        	for(qq=0;qq<13;qq++)
				{
	         	 inner->temp[qq]=ee%2;
	            	  ee=ee/2;
				}
	        	for(qq=12;qq>=0;qq--)
				{
	          	fprintf(fp8,"%d",inner->temp[qq]);
				}
	        	//fprintf(fp4,"%d",inner->s[i]);
                 fprintf(fp8,"\r\n");
                 //------------------------------------


            }


		

			//----------------------------------------------------
			/* put elp into index form */
			for (i = 0; i <= inner->l[u]; i++)
				inner->elp[u][i] = index_of[inner->elp[u][i]];
				 
            
		//	printf("sigma(x) = ");
		//	for (i = 0; i <= inner->l[u]; i++)
		//		printf("%3d ", inner->elp[u][i]);
		//	printf("\n");
		//	printf("Roots: ");

			/* Chien search: find roots of the error location polynomial */
			for (i = 1; i <= inner->l[u]; i++)
				inner->reg[i] = inner->elp[u][i];
			count = 0;
			for (i = 1; i <= n; i++) {
				q = 1;
				for (j = 1; j <= inner->l[u]; j++)
					if (inner->reg[j] != -1) {
						inner->reg[j] = (inner->reg[j] + j) % n;
						q ^= alpha_to[inner->reg[j]];
					}
				if (!q) {	/* store root and error
						 * location number indices */
					inner->root[count] = i;
					inner->loc[count] = n - i;
					count++;
					//printf("%3d ", n - i);
				
					
				}
			}
			//printf("\n");
			if (count ==inner-> l[u])	
			/* no. roots = degree of elp hence <= t errors */
				for (i = 0; i < inner->l[u]; i++)
				{
					recd[inner->loc[i]] ^= 1;
					fprintf(fp7,"%d\n",inner->loc[i]);
						//fprintf(fp7,"%d\n",inner->root[count]);//----for verilog ----
				}
			else	/* elp has degree >t hence cannot solve */
				printf("Incomplete decoding: errors detected\n");
		}
			
	}

fclose(fp6);
fclose(fp7);
fclose(fp8);
}



main()
{
	int             i;

	int point;
    double snrdb,snr;
	int biterrno2;
	long dsignal;
	time_t first,second;
//------------------------
		srand((unsigned)time(NULL));

 //for (point=0; point < POINTNO; point++)
 //{
     //-------Input Region--------------
	  m=13;//gf(2^m),m=2-20
	  length=8191;//codelengh
	  
	  t=8;
	//  double R=(length-red)/length;
    //---------------------------------


	read_p();               /* Read m */
	generate_gf();          /* Construct the Galois Field GF(2**m) */
	gen_poly();             /* Compute the generator polynomial of BCH code */

	
	//--Input region2----------
     double R=double(double(k)/double(length));
	 //------------------------------
        fp=fopen("test.txt","a");
		snrdb=DB0+point*DBSTEP;
		snr=pow(10,0.1*snrdb);
		deviate=sqrt(Eb/(2*R*snr));	
		dsignal=0;
		biterrno2=0;
		first=time(NULL);
//--------------------  for verilog  ---------------------

		fp2=fopen("correct_data.txt","w");
		fp3=fopen("code.txt","w");
    //--------------------------------
	/* Randomly generate DATA */
/*	seed = 131073;
	srand(seed);
	for (i = 0; i < k; i++)
		data[i] = ( rand() & 65536 ) >> 16;*/
	/*data[0]=0;
	data[1]=1;
	data[2]=1;
	data[3]=0;
	data[4]=1;*/
   //while (dsignal <=300 )//Input region3------------
	//	  {		
	// Randomly generate DATA */
      for (i = 0; i < k; i++)
	 {
	/*	 double temp = rnd();
		if(temp>0.5) data[i]=1;
		else data[i]=0;*/
	  	 
		 data[i] =(rand()>>10) % 2; 
	 }		
      for (i = 0; i < 3991; i++)
	  {
		  data[i] =0;
	  }
	encode_bch();           /* encode data */






	/*
	 * recd[] are the coefficients of c(x) = x**(length-k)*data(x) + b(x)
r[0]... r[n-k-1] r[n-k] ... r[n-k]
bb[0]...b[n-k-1] data[0]... data[k-1] 
 
    decode for verilog 
	<== rn-1 ,rn-2...    ,rn-k-1,..r0
    <== data0,data1,.....,bbn-k-1,...bb0

	 */

	for (i = 0; i < k; i++)
	{
		recd[n-i-1] = data[i];
		recd2[n-i-1] = data[i];
	}
  

	for (i = 0; i <length- k; i++)
	{
		recd[length-k-i-1] = bb[length-k-i-1];
	   recd2[length-k-i-1] = bb[length-k-i-1];

	}
	//------------------- error value -------------------
                /*  recd[8190]=recd[8190]^1;
	              recd[8109]=recd[8109]^1;
	              recd[2312]=recd[2312]^1;
	              recd[651]=recd[651]^1;
	              recd[652]=recd[652]^1;
                  recd[503]=recd[503]^1;
                  recd[153]=recd[153]^1;
				  recd[0]=recd[0]^1;
                  */
                  /*recd[4211]=recd[4211]^1;
	              recd[3000]=recd[3000]^1;
	              recd[632]=recd[632]^1;
	              recd[503]=recd[503]^1;
	              recd[159]=recd[159]^1;
                  recd[542]=recd[542]^1;
	              recd[777]=recd[777]^1;
	              recd[172]=recd[172]^1;*/
	              /*recd[8188]=recd[8188]^1;
	        
	              recd[8187]=recd[8187]^1;
	     
	              recd[8186]=recd[8186]^1;*/
                  recd[0]=recd[0]^1;
	              recd[1]=recd[1]^1;
	              recd[2]=recd[2]^1;
	              recd[3]=recd[3]^1;
	              recd[4]=recd[4]^1;
                  recd[5]=recd[5]^1;
	              recd[6]=recd[6]^1;
	              recd[7]=recd[7]^1;
	//--------------------------------------------
  
	/*for (i = 0; i < length - k; i++)
	recd[i] = bb[i]; 
	for (i = 0; i < k; i++)
		recd[i + length - k] = data[i]; */
	
	
	
	
	
	//-------------- for verilog -----------


      for(i=3991;i<length;i++)
	  {
	  fprintf(fp3,"%d\n",recd[length-i-1]);//r[0]~r[8190]-->
	  fprintf(fp2,"%d\n",recd2[length-i-1]);
	  }

	
	decode_bch();             /* DECODE received codeword recv[] */



	/*
	 * DECODING ERRORS? we compare only the data portion
	 */
	for (i = 0; i < length; i++)
		if (recd2[i] != recd[i])
			decerror++;

		
	//	dsignal+=length;
				printf("error:%d  \n",decerror);	
   
	
   	//fprintf(fp,"mod2 %5.2f %20.16f %6d %11lu\n",snrdb,(double)biterrno2/(dsignal),biterrno2,dsignal);
		//second=time(NULL);
		//printf("The total time is: %f seconds\n",difftime(second,first));
		//fprintf(fp,"The total time is: %f seconds\n",difftime(second,first));
		fclose(fp);

		//fclose(fp2);// for verilog "testbench.txt"
//***********************************************
	fclose(fp2);// for verilog "testbench.txt"*******************************
	fclose(fp3);// "code.txt"
//***********************************************
  
}

