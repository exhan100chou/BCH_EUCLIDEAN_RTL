module euclidean_4cells(deg_Ri,deg_Qi,stop_i,//1,stop_i2,
                         Rin,Qin,Lin,Uin,start,start_cnt,//input
                         deg_Ro,deg_Qo,stop_o,//1,stop_o2,
				     Rout,Qout,Lout,Uout,st_out,//output
				     clk,reset);//~~~~~~~~~~~~~~`
parameter DELAY =1; 

input clk,reset;
input stop_i;//1,stop_i2;
input start_cnt;

//---------degree------------
input [4:0]deg_Ri,deg_Qi;

//--------- poly--------------
input [12:0]Rin,Qin,Lin,Uin;
input start;

//---------degree------------
output [4:0]deg_Ro,deg_Qo;
output stop_o;//1,stop_o2;
//output [3:0]stop1,stop2,stop3;//~~~~~~~~~~~~~
//--------- poly--------------
output [12:0]Rout,Qout,Lout,Uout; 
output st_out;


wire [4:0]L_dR1,L_dR2,L_dR3,L_dR4,L_dR5,L_dR6,L_dR7,
          L_dQ1,L_dQ2,L_dQ3,L_dQ4,L_dQ5,L_dQ6,L_dQ7;
wire [12:0]LR1,LR2,LR3,LR4,LR5,LR6,LR7,//line of Rin,Rout
           LQ1,LQ2,LQ3,LQ4,LQ5,LQ6,LQ7,
		 LL1,LL2,LL3,LL4,LL5,LL6,LL7,
		 LU1,LU2,LU3,LU4,LU5,LU6,LU7;
wire LS1,LS2,LS3,LS4,LS5,LS6,LS7,
     Lstop1,Lstop2,Lstop3,Lstop4,Lstop5,Lstop6,Lstop7;

reg [3:0]stop1,stop2,stop3,stop4,stop5,
         stop6,stop7;
reg [12:0]L1,L2;
	   
wire [12:0]Lout_temp;
wire [12:0]out_sel;
wire out_sel2;
reg ST1,ST2; 


//-----  modified to 4cells---------------------
wire [4:0]dR,dQ;
wire SS,St;
wire [12:0]RR,QQ,LL,UU;

reg feedback_sel;
reg temp;//~~~~~~~~~~~

reg [4:0]dR_reg,dQ_reg;
reg SS_reg,St_reg;
reg [12:0]Rin_reg,Qin_reg,Lin_reg,Uin_reg;

reg [9:0]count;
reg [2:0]s_reg;


reg [4:0]DR1,DR2,DR3,DR4,DR5,DR6,DR7,DR8;
reg [4:0]DQ1,DQ2,DQ3,DQ4,DQ5,DQ6,DQ7,DQ8;
reg STOP1,STOP2,STOP3,STOP4,STOP5,STOP6,STOP7,STOP8;

reg [12:0]R1,R2,R3,R4,R5,R6,R7,R8;
reg [12:0]Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8;
reg [12:0]LLL1,LLL2,LLL3,LLL4,LLL5,LLL6,LLL7,LLL8;
reg [12:0]U1,U2,U3,U4,U5,U6,U7,U8;

reg START1,START2,START3,START4,START5,START6,START7,START8;

reg [12:0]Uout_temp;
//-----  modified to 8cells---------------------
mux_5_2to1    mmm1(.a(dR_reg),.b(DR8),.sel(feedback_sel),.out(dR)); 
mux_5_2to1    mmm2(.a(dQ_reg),.b(DQ8),.sel(feedback_sel),.out(dQ)); 

mux_1_2to1    mmm3(.a(St_reg),.b(s_reg[2]),.sel(feedback_sel),.out(St));

mux_13_2to1   mmm4(.a(Rin_reg),.b(R8),.sel(feedback_sel),.out(RR));
mux_13_2to1   mmm5(.a(Qin_reg),.b(Q8),.sel(feedback_sel),.out(QQ));
mux_13_2to1   mmm6(.a(Lin_reg),.b(LLL8),.sel(feedback_sel),.out(LL));
mux_13_2to1   mmm7(.a(Uin_reg),.b(U8),.sel(feedback_sel),.out(UU));

mux_1_2to1    mmm8(.a(SS_reg),.b(START8),.sel(feedback_sel),.out(SS));
//----------------------------------------------

euclidean_cell  cell_1(.deg_Ri(dR),
                       .deg_Qi(dQ),
			        .stop_i(St),
                       .Rin(RR),
			        .Qin(QQ),
			        .Lin(LL),
			        .Uin(UU),
			        .start(SS),//input
                       .deg_Ro(L_dR1),
			        .deg_Qo(L_dQ1),
			        .stop_o(Lstop1),//------------
			        .Rout(LR1),
			        .Qout(LQ1),
			        .Lout(LL1),
			        .Uout(LU1),
			        .st_out(LS1),//output
			        .clk(clk),
				   .reset(reset));
				    
euclidean_cell  cell_2(.deg_Ri(L_dR1),
                       .deg_Qi(L_dQ1),
			        .stop_i(stop1[2]),
                       .Rin(LR1),
			        .Qin(LQ1),
			        .Lin(LL1),
			        .Uin(LU1),
			        .start(LS1),//input
                       .deg_Ro(L_dR2),
			        .deg_Qo(L_dQ2),
			        .stop_o(Lstop2),
			        .Rout(LR2),
			        .Qout(LQ2),
			        .Lout(LL2),
			        .Uout(LU2),
			        .st_out(LS2),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_3(.deg_Ri(L_dR2),
                       .deg_Qi(L_dQ2),
			        .stop_i(stop2[2]),
                       .Rin(LR2),
			        .Qin(LQ2),
			        .Lin(LL2),
			        .Uin(LU2),
			        .start(LS2),//input
                       .deg_Ro(L_dR3),
			        .deg_Qo(L_dQ3),
			        .stop_o(Lstop3),
			        .Rout(LR3),
			        .Qout(LQ3),
			        .Lout(LL3),
			        .Uout(LU3),
			        .st_out(LS3),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_4(.deg_Ri(L_dR3),
                       .deg_Qi(L_dQ3),
			        .stop_i(stop3[2]),
                       .Rin(LR3),	
			        .Qin(LQ3),
			        .Lin(LL3),
			        .Uin(LU3),
			        .start(LS3),//input
                       .deg_Ro(deg_Ro),
			        .deg_Qo(deg_Qo),
			        .stop_o(stop_o),
			        .Rout(Rout),
			        .Qout(Qout),
			        .Lout(Lout_temp),
			        .Uout(Uout),
			        .st_out(st_out),//output
			        .clk(clk),
				   .reset(reset)); 
				   	
	   			        
				 


                //-----modified to t=8----
  
                    

 feedback_ckt F1(.Din(Qout),.start(ST2),.Qout(out_sel),.clk(clk),.reset(reset));

assign out_sel2=out_sel[0]||out_sel[1]||out_sel[2]||out_sel[3]||out_sel[4]||out_sel[5]||
                out_sel[6]||out_sel[7]||out_sel[8]||out_sel[9]||out_sel[10]||out_sel[11]||
			 out_sel[12];	   
mux_13  m_out(.a(L2),.b(Uout_temp),.sel(out_sel2),.out(Lout));					
  		 
always@(posedge clk or negedge reset)
begin
      
	 
	 if(!reset)
	 begin
	 temp<=1	;
	    stop1 <=#1  3'b111;
	    stop2 <=#1  3'b111;
	    stop3 <=#1  3'b111;
	    //stop4 <=#1  3'b111;
	   // stop5 <=#1  3'b111;
	   // stop6 <=#1  3'b111;
	   // stop7 <=#1  3'b111;
	    
	    //-----modified to t=8----
	    L1 <=#1  13'd0;
	    L2 <=#1  13'd0;
	    ST1 <=#1  1'b0;
	    ST2 <=#1  1'b0;

	    Uout_temp <= #1 13'b0;
	    //-----  modified to 8cells---------------------
	    feedback_sel <=#1  1'b1;
	    
	    dR_reg <=#1  5'b0;
	    dQ_reg <=#1  5'b0;
	    
	    St_reg <=#1  1'b1;
	    SS_reg <=#1  1'b1;
         Rin_reg <=#1  13'b0;
	    Qin_reg <=#1  13'b0;
	    Lin_reg <=#1  13'b0;
	    Uin_reg <=#1  13'b0;
	    
	    
	    s_reg <=#1  3'b111;
	    
	    DR1 <=#1  5'b0; DR2 <=#1  5'b0; DR3 <=#1  5'b0; 
	    DR4 <=#1  5'b0; DR5 <=#1  5'b0; DR6 <=#1  5'b0;
	    DR7 <=#1  5'b0; DR8 <=#1  5'b0;

      DQ1 <=#1  5'b0; DQ2 <=#1  5'b0; DQ3 <=#1  5'b0;
	    DQ4 <=#1  5'b0; DQ5 <=#1  5'b0; DQ6 <=#1  5'b0; 
	    DQ7 <=#1  5'b0; DQ8 <=#1  5'b0;

         STOP1 <=#1  1'b1; STOP2 <=#1  1'b1; STOP3 <=#1  1'b1; 
	    STOP4 <=#1  1'b1; STOP5 <=#1  1'b1; STOP6 <=#1  1'b1;
	    STOP7 <=#1  1'b1; STOP8 <=#1  1'b1;

         R1 <=#1  13'b0; R2 <=#1  13'b0; R3 <=#1  13'b0;
	    R4 <=#1  13'b0; R5 <=#1  13'b0; R6 <=#1  13'b0;
	    R7 <=#1  13'b0; R8 <=#1  13'b0;

         Q1 <=#1  13'b0; Q2 <=#1  13'b0; Q3 <=#1  13'b0;
	    Q4 <=#1  13'b0; Q5 <=#1  13'b0; Q6 <=#1  13'b0;
	    Q7 <=#1  13'b0; Q8 <=#1  13'b0;

         LLL1 <=#1  13'b0; LLL2 <=#1  13'b0; LLL3 <=#1  13'b0;
	    LLL4 <=#1  13'b0; LLL5 <=#1  13'b0; LLL6 <=#1  13'b0;
	    LLL7 <=#1  13'b0; LLL8 <=#1  13'b0;

         U1 <=#1  13'b0; U2 <=#1  13'b0; U3 <=#1  13'b0;
	    U4 <=#1  13'b0; U5 <=#1  13'b0; U6 <=#1  13'b0;
	    U7 <=#1  13'b0; U8 <=#1  13'b0;

         START1 <=#1  1'b1; START2 <=#1  1'b1; START3 <=#1  1'b1;
	    START4 <=#1  1'b1; START5 <=#1  1'b1; START6 <=#1  1'b1;
	    START7 <=#1  1'b1; START8 <=#1  1'b1; 
        

	 end
	 else 
	 begin
      stop1[0] <=#1  Lstop1;
	 stop1[1] <=#1  stop1[0];
	 stop1[2] <=#1  stop1[1];
//	 stop1[3] <=#1  stop1[2];

	 stop2[0] <=#1  Lstop2;
	 stop2[1] <=#1  stop2[0];
	 stop2[2] <=#1  stop2[1];
//	 stop2[3] <=#1  stop2[2];
	 
	 stop3[0] <=#1  Lstop3;
	 stop3[1] <=#1  stop3[0];
	 stop3[2] <=#1  stop3[1];
//	 stop3[3] <=#1  stop3[2];

	
	 

   //-----modified to t=8----
             L1 <=#1  Lout_temp;
		   L2 <=#1  L1;
		   
		  		   
		   ST1 <=#1  stop_o;     
		   ST2 <=#1  ST1;

		   Uout_temp <=#1 Uout;

//-----  modified to 4cells---------------------

      dR_reg <=#1  deg_Ri;
	 dQ_reg <=#1  deg_Qi;
	 St_reg <=#1  stop_i;
	 SS_reg <=#1  start;

	 Rin_reg <=#1  Rin;
	 Qin_reg <=#1  Qin;
	 Lin_reg <=#1  Lin;
	 Uin_reg <=#1  Uin;

	  
	  DR1 <=#1  deg_Ro;
	  DR2 <=#1  DR1;
	  DR3 <=#1  DR2;
	  DR4 <=#1  DR3;
	  DR5 <=#1  DR4;
	  DR6 <=#1  DR5;
	  DR7 <=#1  DR6;
	  DR8 <=#1  DR7;

	  DQ1 <=#1  deg_Qo;
	  DQ2 <=#1  DQ1;
	  DQ3 <=#1  DQ2;
	  DQ4 <=#1  DQ3;
	  DQ5 <=#1  DQ4;
	  DQ6 <=#1  DQ5;
	  DQ7 <=#1  DQ6;
	  DQ8 <=#1  DQ7;

	  STOP1 <=#1  stop_o;
	  STOP2 <=#1  STOP1;
	  STOP3 <=#1  STOP2;
	  STOP4 <=#1  STOP3;
	  STOP5 <=#1  STOP4;
	  STOP6 <=#1  STOP5;
	  STOP7 <=#1  STOP6;
	  STOP8 <=#1  STOP7;

	  R1 <=#1  Rout;
	  R2 <=#1  R1;
	  R3 <=#1  R2;
	  R4 <=#1  R3;
	  R5 <=#1  R4;
	  R6 <=#1  R5;
	  R7 <=#1  R6;
	  R8 <=#1  R7;

	  Q1 <=#1  Qout;
	  Q2 <=#1  Q1;
	  Q3 <=#1  Q2;
	  Q4 <=#1  Q3;
	  Q5 <=#1  Q4;
	  Q6 <=#1  Q5;
	  Q7 <=#1  Q6;
	  Q8 <=#1  Q7;

	  LLL1 <=#1  Lout_temp;
	  LLL2 <=#1  LLL1;
	  LLL3 <=#1  LLL2;
	  LLL4 <=#1  LLL3;
	  LLL5 <=#1  LLL4;
	  LLL6 <=#1  LLL5;
	  LLL7 <=#1  LLL6;
	  LLL8 <=#1  LLL7;

	  U1 <=#1  Uout;
	  U2 <=#1  U1;
	  U3 <=#1  U2;
	  U4 <=#1  U3;
	  U5 <=#1  U4;
	  U6 <=#1  U5;
	  U7 <=#1  U6;
	  U8 <=#1  U7;

	  START1 <=#1  st_out;
	  START2 <=#1  START1;
	  START3 <=#1  START2;
	  START4 <=#1  START3;
	  START5 <=#1  START4;
	  START6 <=#1  START5;
	  START7 <=#1  START6;
	  START8 <=#1  START7;

	  s_reg[0] <=#1  STOP8;
       s_reg[1] <=#1  s_reg[0];
       s_reg[2] <=#1  s_reg[1];

	 if(count==10'd20)
	 begin
	 feedback_sel <=#1  0;
	 end
	 /*else if(count==10'd40)
	 begin
	 feedback_sel <=#1  1;
	 end*/
	 
	 end	 //else if
					
     
end	

always @ (posedge clk or negedge reset)
begin

	if(!reset)          count <= #1 10'b0;
	else if(start_cnt)  count <= #1 count + 10'b1;
	else		    count <= count;
end			    

endmodule
