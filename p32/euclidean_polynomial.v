module euclidean_polynomial(Rin,Qin,Lin,Uin,start,sw,stop,//input
                            d1out,Rout,Qout,Lout,Uout,st_out,//output
					   clk,
					   r_mux); //////////////////////////////

input [12:0]Rin,Qin,Lin,Uin;
input start,sw,stop,clk;

output [12:0]d1out,Rout,Qout,Lout,Uout;
output st_out;
output [12:0]r_mux;

parameter DELAY =1;    
wire st_out;
wire [12:0]Rout,Qout,Lout,Uout;
wire [12:0]r_mux,q_mux,l_mux/*L(line)_mux*/,u_mux;
wire [12:0]d1out,d2out,d3out,d4out;
wire [12:0]m1out,m2out,m3out,m4out;
wire [12:0]add1out,add2out;
wire start_temp;

reg [12:0]R1=0,R2=0,
          Q1=0,Q2=0,Q3=0,
		L1=0,L2=0,
		U1=0,U2=0,U3=0;
	//	D1=0,D2=0,D3=0,D4=0;
reg S1=0,S2=0,S3=0;//,
    //S4=0;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`


mux_13 m1(.a(Q1),.b(R1),.sel(sw),.out(r_mux));
mux_13 m2(.a(R1),.b(Q1),.sel(sw),.out(q_mux));
mux_13 m3(.a(U1),.b(L1),.sel(sw),.out(l_mux));
mux_13 m4(.a(L1),.b(U1),.sel(sw),.out(u_mux));


assign st_out=S3;//S4;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

feedback_ckt D1(.Din(q_mux),.start(start_temp),.Qout(d1out),.clk(clk));
feedback_ckt D2(.Din(r_mux),.start(start_temp),.Qout(d2out),.clk(clk));
feedback_ckt D3(.Din(q_mux),.start(start_temp),.Qout(d3out),.clk(clk));
feedback_ckt D4(.Din(r_mux),.start(start_temp),.Qout(d4out),.clk(clk));

assign start_temp=S1;
//----block 3--------
multiplier mx1(.a(R2),.b(d1out),.c(m1out));
multiplier mx2(.a(d2out),.b(Q2),.c(m2out));
multiplier mx3(.a(L2),.b(d3out),.c(m3out));
multiplier mx4(.a(d4out),.b(U2),.c(m4out));

assign add1out=m1out^m2out;
assign add2out=m3out^m4out;

mux_13 m5(.a(R2),.b(add1out),.sel(stop),.out(Rout));
mux_13 m6(.a(Q2),.b(Q3),.sel(stop),.out(Qout));
mux_13 m7(.a(L2),.b(add2out),.sel(stop),.out(Lout));
mux_13 m8(.a(U2),.b(U3),.sel(stop),.out(Uout));


//----------------
always@(posedge  clk)
begin
     //--- block1 ------
	R1 <=#DELAY Rin;
	Q1 <=#DELAY Qin;
	L1 <=#DELAY Lin;
	U1 <=#DELAY Uin;
	//--- block 2-------
  R2 <=#DELAY r_mux;
	Q2 <=#DELAY q_mux;
	L2 <=#DELAY l_mux;
	U2 <=#DELAY u_mux;
	//----block3--------
  Q3 <=#DELAY Q2;
	U3 <=#DELAY U2;

	//--- block 4 ------
	S1 <=#DELAY start;
	S2 <=#DELAY S1;
	S3 <=#DELAY S2;
	//S4 <=#DELAY S3;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	//st_out <=#DELAY S3;

end



endmodule
