module euclidean_16cells(deg_Ri,deg_Qi,stop_i,//1,stop_i2,
                         Rin,Qin,Lin,Uin,start,//input
                         deg_Ro,deg_Qo,stop_o,//1,stop_o2,
				     Rout,Qout,Lout,Uout,st_out,//output
				     clk,reset);//~~~~~~~~~~~~~~`

input clk,reset;
input stop_i;//1,stop_i2;

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


wire [4:0]L_dR1,L_dR2,L_dR3,L_dR4,L_dR5,L_dR6,L_dR7,L_dR8,L_dR9,L_dR10,L_dR11,L_dR12,L_dR13,L_dR14,L_dR15,
          L_dQ1,L_dQ2,L_dQ3,L_dQ4,L_dQ5,L_dQ6,L_dQ7,L_dQ8,L_dQ9,L_dQ10,L_dQ11,L_dQ12,L_dQ13,L_dQ14,L_dQ15;
wire [12:0]LR1,LR2,LR3,LR4,LR5,LR6,LR7,LR8,LR9,LR10,LR11,LR12,LR13,LR14,LR15,//line of Rin,Rout
           LQ1,LQ2,LQ3,LQ4,LQ5,LQ6,LQ7,LQ8,LQ9,LQ10,LQ11,LQ12,LQ13,LQ14,LQ15,
		 LL1,LL2,LL3,LL4,LL5,LL6,LL7,LL8,LL9,LL10,LL11,LL12,LL13,LL14,LL15,
		 LU1,LU2,LU3,LU4,LU5,LU6,LU7,LU8,LU9,LU10,LU11,LU12,LU13,LU14,LU15;
wire LS1,LS2,LS3,LS4,LS5,LS6,LS7,LS8,LS9,LS10,LS11,LS12,LS13,LS14,LS15,
     Lstop1,Lstop2,Lstop3,Lstop4,Lstop5,Lstop6,Lstop7,Lstop8,Lstop9,Lstop10,Lstop11,Lstop12,Lstop13,Lstop14,Lstop15;

reg [3:0]stop1,stop2,stop3,stop4,stop5,
         stop6,stop7,stop8,stop9,stop10,
	    stop11,stop12,stop13,stop14,stop15;
reg [12:0]L1,L2,U1,U2;
	   
wire [12:0]Lout_temp;
wire [12:0]out_sel;
wire out_sel2;
reg ST1,ST2; 

euclidean_cell  cell_1(.deg_Ri(deg_Ri),
                       .deg_Qi(deg_Qi),
			        .stop_i(stop_i),
                       .Rin(Rin),
			        .Qin(Qin),
			        .Lin(Lin),
			        .Uin(Uin),
			        .start(start),//input
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
                       .deg_Ro(L_dR4),
			        .deg_Qo(L_dQ4),
			        .stop_o(Lstop4),
			        .Rout(LR4),
			        .Qout(LQ4),
			        .Lout(LL4),
			        .Uout(LU4),
			        .st_out(LS4),//output
			        .clk(clk),
				   .reset(reset));	
euclidean_cell  cell_5(.deg_Ri(L_dR4),
                       .deg_Qi(L_dQ4),
			        .stop_i(stop4[2]),
                       .Rin(LR4),	
			        .Qin(LQ4),
			        .Lin(LL4),
			        .Uin(LU4),
			        .start(LS4),//input
                       .deg_Ro(L_dR5),
			        .deg_Qo(L_dQ5),
			        .stop_o(Lstop5),
			        .Rout(LR5),
			        .Qout(LQ5),
			        .Lout(LL5),
			        .Uout(LU5),
			        .st_out(LS5),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_6(.deg_Ri(L_dR5),
                       .deg_Qi(L_dQ5),
			        .stop_i(stop5[2]),
                       .Rin(LR5),	
			        .Qin(LQ5),
			        .Lin(LL5),
			        .Uin(LU5),
			        .start(LS5),//input
                       .deg_Ro(L_dR6),
			        .deg_Qo(L_dQ6),
			        .stop_o(Lstop6),
			        .Rout(LR6),
			        .Qout(LQ6),
			        .Lout(LL6),
			        .Uout(LU6),
			        .st_out(LS6),//output
				   .clk(clk),
				   .reset(reset));

euclidean_cell  cell_7(.deg_Ri(L_dR6),
                       .deg_Qi(L_dQ6),
			        .stop_i(stop6[2]),
                       .Rin(LR6),	
			        .Qin(LQ6),
			        .Lin(LL6),
			        .Uin(LU6),
			        .start(LS6),//input
                       .deg_Ro(L_dR7),
			        .deg_Qo(L_dQ7),
			        .stop_o(Lstop7),
			        .Rout(LR7),
			        .Qout(LQ7),
			        .Lout(LL7),
			        .Uout(LU7),
			        .st_out(LS7),//output
			        .clk(clk),
				   .reset(reset));
euclidean_cell  cell_8(.deg_Ri(L_dR7),
                       .deg_Qi(L_dQ7),
			        .stop_i(stop7[2]),
                       .Rin(LR7),	
			        .Qin(LQ7),
			        .Lin(LL7),
			        .Uin(LU7),
			        .start(LS7),//input
                       .deg_Ro(L_dR8),
			        .deg_Qo(L_dQ8),
			        .stop_o(Lstop8),
			        .Rout(LR8),
			        .Qout(LQ8),
			        .Lout(LL8),
			        .Uout(LU8),
			        .st_out(LS8),//output
			        .clk(clk),
				   .reset(reset));
				   
				   				   			        
euclidean_cell  cell_9(.deg_Ri(L_dR8),
                       .deg_Qi(L_dQ8),
			        .stop_i(stop8[2]),
                       .Rin(LR8),	
			        .Qin(LQ8),
			        .Lin(LL8),
			        .Uin(LU8),
			        .start(LS8),//input
                       .deg_Ro(L_dR9),
			        .deg_Qo(L_dQ9),
			        .stop_o(Lstop9),
			        .Rout(LR9),
			        .Qout(LQ9),
			        .Lout(LL9),
			        .Uout(LU9),
			        .st_out(LS9),//output
			        .clk(clk),
				   .reset(reset));				   				    
euclidean_cell  cell_10(.deg_Ri(L_dR9),
                       .deg_Qi(L_dQ9),
			        .stop_i(stop9[2]),
                       .Rin(LR9),	
			        .Qin(LQ9),
			        .Lin(LL9),
			        .Uin(LU9),
			        .start(LS9),//input
                       .deg_Ro(L_dR10),
			        .deg_Qo(L_dQ10),
			        .stop_o(Lstop10),
			        .Rout(LR10),
			        .Qout(LQ10),
			        .Lout(LL10),
			        .Uout(LU10),
			        .st_out(LS10),//output
			        .clk(clk),
				   .reset(reset));
euclidean_cell  cell_11(.deg_Ri(L_dR10),
                       .deg_Qi(L_dQ10),
			        .stop_i(stop10[2]),
                       .Rin(LR10),	
			        .Qin(LQ10),
			        .Lin(LL10),
			        .Uin(LU10),
			        .start(LS10),//input
                       .deg_Ro(L_dR11),
			        .deg_Qo(L_dQ11),
			        .stop_o(Lstop11),
			        .Rout(LR11),
			        .Qout(LQ11),
			        .Lout(LL11),
			        .Uout(LU11),
			        .st_out(LS11),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_12(.deg_Ri(L_dR11),
                       .deg_Qi(L_dQ11),
			        .stop_i(stop11[2]),
                       .Rin(LR11),	
			        .Qin(LQ11),
			        .Lin(LL11),
			        .Uin(LU11),
			        .start(LS11),//input
                       .deg_Ro(L_dR12),
			        .deg_Qo(L_dQ12),
			        .stop_o(Lstop12),
			        .Rout(LR12),
			        .Qout(LQ12),
			        .Lout(LL12),
			        .Uout(LU12),
			        .st_out(LS12),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_13(.deg_Ri(L_dR12),
                       .deg_Qi(L_dQ12),
			        .stop_i(stop12[2]),
                       .Rin(LR12),	
			        .Qin(LQ12),
			        .Lin(LL12),
			        .Uin(LU12),
			        .start(LS12),//input
                       .deg_Ro(L_dR13),
			        .deg_Qo(L_dQ13),
			        .stop_o(Lstop13),
			        .Rout(LR13),
			        .Qout(LQ13),
			        .Lout(LL13),
			        .Uout(LU13),
			        .st_out(LS13),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_14(.deg_Ri(L_dR13),
                       .deg_Qi(L_dQ13),
			        .stop_i(stop13[2]),
                       .Rin(LR13),	
			        .Qin(LQ13),
			        .Lin(LL13),
			        .Uin(LU13),
			        .start(LS13),//input
                       .deg_Ro(L_dR14),
			        .deg_Qo(L_dQ14),
			        .stop_o(Lstop14),
			        .Rout(LR14),
			        .Qout(LQ14),
			        .Lout(LL14),
			        .Uout(LU14),
			        .st_out(LS14),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_15(.deg_Ri(L_dR14),
                       .deg_Qi(L_dQ14),
			        .stop_i(stop14[2]),
                       .Rin(LR14),	
			        .Qin(LQ14),
			        .Lin(LL14),
			        .Uin(LU14),
			        .start(LS14),//input
                       .deg_Ro(L_dR15),
			        .deg_Qo(L_dQ15),
			        .stop_o(Lstop15),
			        .Rout(LR15),
			        .Qout(LQ15),
			        .Lout(LL15),
			        .Uout(LU15),
			        .st_out(LS15),//output
			        .clk(clk),
				   .reset(reset));

 


euclidean_cell  cell_16(.deg_Ri(L_dR15),
                       .deg_Qi(L_dQ15),
			        .stop_i(stop15[2]),
                       .Rin(LR15),
			        .Qin(LQ15),
			        .Lin(LL15),
			        .Uin(LU15),
			        .start(LS15),//input	
				   			   
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
mux_13  m_out(.a(L2),.b(U2),.sel(out_sel2),.out(Lout));					
  		 
always@(posedge clk)
begin
      
	 
	 if(reset==0)
	 begin
	    stop1<=3'b111;
	    stop2<=3'b111;
	    stop3<=3'b111;
	    stop4<=3'b111;
	    stop5<=3'b111;
	    stop6<=3'b111;
	    stop7<=3'b111;
	    stop8<=3'b111;
	    stop9<=3'b111;
	    stop10<=3'b111;
	    stop11<=3'b111;
	    stop12<=3'b111;
	    stop13<=3'b111;
	    stop14<=3'b111;
	    stop15<=3'b111;
	    //-----modified to t=8----
	    L1<=13'd0;
	    L2<=13'd0;
	    ST1<=0;
	    ST2<=0;
	    U1<=13'd0;
	  
        

	 end
	 else if(reset==1)
	 begin
      stop1[0]<=Lstop1;
	 stop1[1]<=stop1[0];
	 stop1[2]<=stop1[1];
//	 stop1[3]<=stop1[2];

	 stop2[0]<=Lstop2;
	 stop2[1]<=stop2[0];
	 stop2[2]<=stop2[1];
//	 stop2[3]<=stop2[2];
	 
	 stop3[0]<=Lstop3;
	 stop3[1]<=stop3[0];
	 stop3[2]<=stop3[1];
//	 stop3[3]<=stop3[2];

	 stop4[0]<=Lstop4;
	 stop4[1]<=stop4[0];
	 stop4[2]<=stop4[1];
//	 stop4[3]<=stop4[2];

	 stop5[0]<=Lstop5;
	 stop5[1]<=stop5[0];
	 stop5[2]<=stop5[1];
//	 stop5[3]<=stop5[2];

	 stop6[0]<=Lstop6;
	 stop6[1]<=stop6[0];
	 stop6[2]<=stop6[1];
//	 stop6[3]<=stop6[2];

	 stop7[0]<=Lstop7;
	 stop7[1]<=stop7[0];
	 stop7[2]<=stop7[1];
//	 stop7[3]<=stop7[2];

	 stop8[0]<=Lstop8;
	 stop8[1]<=stop8[0];
	 stop8[2]<=stop8[1];
//	 stop8[3]<=stop8[2];

	 stop9[0]<=Lstop9;
	 stop9[1]<=stop9[0];
	 stop9[2]<=stop9[1];
//	 stop9[3]<=stop9[2];

	 stop10[0]<=Lstop10;
	 stop10[1]<=stop10[0];
	 stop10[2]<=stop10[1];
//	 stop10[3]<=stop10[2];

	 stop11[0]<=Lstop11;
	 stop11[1]<=stop11[0];
	 stop11[2]<=stop11[1];
//	 stop11[3]<=stop11[2];

	 stop12[0]<=Lstop12;
	 stop12[1]<=stop12[0];
	 stop12[2]<=stop12[1];
//      stop12[3]<=stop12[2];
	
	 stop13[0]<=Lstop13;
	 stop13[1]<=stop13[0];
	 stop13[2]<=stop13[1];
	 //stop13[3]<=stop13[2];

	 stop14[0]<=Lstop14;
	 stop14[1]<=stop14[0];
	 stop14[2]<=stop14[1];
	 //stop14[3]<=stop14[2];
	
	 stop15[0]<=Lstop15;
	 stop15[1]<=stop15[0];
	 stop15[2]<=stop15[1];
	 //stop15[3]<=stop15[2];

   //-----modified to t=8----
             L1<=Lout_temp;
		   L2<=L1;
		   U1<=Uout;
		   U2<=U1;		   
		     ST1<=stop_o;     
			ST2<=ST1;

	 end	 //else if
					
     
end				    

endmodule
