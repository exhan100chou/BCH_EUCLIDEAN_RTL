 `timescale 1ns/10ps
module syndrome_tbw;


parameter message_length=90000;
parameter code_length=8191;
parameter check_bits=104;
parameter information_length=8087;//code_length-check_bits;//8087
parameter parallel_factor=32;

//-------------------------------------------------------------------
     reg receive[0:(code_length-1)];	 //message length
	//reg receive_address=0;
	// Inputs
    reg [31:0]r;
    
    reg clk;
	//reg sel=1;
	reg [14:0] count;
	//reg [5:0]index;
	
	wire [12:0]S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16;//,test;//,temp;
	reg reset=0;
	//wire r[0];
	reg [14:0]gcount; //global count
	
		
	integer TX_FILE;
	integer i;//for 'for' loop
	//wire [12:0]sum;
initial 
begin

  TX_FILE=$fopen("syndrom_result.txt");
  gcount<=0;
  count <= 0;
 // index<=0;
  clk <= 0;
  for(i=0;i<32;i=i+1)
  begin
       r[i]=0;
  end
  $readmemb("code.txt ",receive);//-----binary received data generated from c  
  
  
  #180000 // clock period * codelength=2*9000
  
 
  $fclose(TX_FILE);
  $stop;
end


always #10 clk = ~clk;//不確定時間單位正確？


always @ (posedge clk)	   //	r0,r1,.....  r30          ,r31
begin				   //	........     receive[n-1] ,0
  	  
if(gcount<10)
begin
reset<=0; 
gcount<=gcount+1;
end	  
	  

else if (gcount==10)
  begin	  
  reset<=1;
  
    for(i=0;i<parallel_factor;i=i+1)//32times
    begin
	       if(i==0 && count==0)
		  begin
 		    r[31-i]<=0;
		    r[31-(i+1)]<=receive[count];
	       count=count+1;
		  i=1;
		  //$fdisplay(TX_FILE,"%b",S1);

		  end	 
	  
	  else if((count< code_length)&&(count>0))
	         begin
	       
		         r[31-i]<=receive[count];
	             count=count+1;
		       // $fdisplay(TX_FILE,"%b",S1);
	         end
	  else if(count>= code_length)
	       begin     
	             r[31-i]<=0;
	            count=count+1;
		       //$fdisplay(TX_FILE,"%b",S1);
	        end
	

     
     end//for
   
   
  end//else if	 
  
end	
	
syndrome Syndrome_1 (
        .r0(r[0]), 
        .r1(r[1]), 
        .r2(r[2]), 
        .r3(r[3]), 
        .r4(r[4]), 
        .r5(r[5]), 
        .r6(r[6]), 
        .r7(r[7]), 
        .r8(r[8]), 
        .r9(r[9]), 
        .r10(r[10]), 
        .r11(r[11]), 
        .r12(r[12]), 
        .r13(r[13]), 
        .r14(r[14]), 
        .r15(r[15]), 
        .r16(r[16]), 
        .r17(r[17]), 
        .r18(r[18]), 
        .r19(r[19]), 
        .r20(r[20]), 
        .r21(r[21]), 
        .r22(r[22]), 
        .r23(r[23]), 
        .r24(r[24]), 
        .r25(r[25]), 
        .r26(r[26]), 
        .r27(r[27]), 
        .r28(r[28]), 
        .r29(r[29]), 
        .r30(r[30]), 
        .r31(r[31]), 
        .clk(clk),
	   .S1(S1),.S2(S2),.S3(S3),.S4(S4),.S5(S5),
	   .S6(S6),.S7(S7),.S8(S8),.S9(S9),.S10(S10),
	   .S11(S11),.S12(S12),.S13(S13),.S14(S14),.S15(S15),
	   .S16(S16)
        ,.reset(reset));
		 
	
	
	
	
	
	
	
	
	

endmodule





