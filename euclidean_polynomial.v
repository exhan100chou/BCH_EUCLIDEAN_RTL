module euclidean_polynomial(Rin,Qin,Lin,Uin,start,sw,stop,//input
                            d1out,Rout,Qout,Lout,Uout,st_out,//output
					   clk,reset,
					   r_mux); //////////////////////////////

input [12:0]Rin,Qin,Lin,Uin;
input start,sw,stop,clk,reset;

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

reg [12:0]R1,R2,Q1,Q2,Q3,L1,L2,U1,U2,U3;
	
reg S1,S2,S3;//,
    //S4=0;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`


mux_13 m1(.a(Q1),.b(R1),.sel(sw),.out(r_mux));
mux_13 m2(.a(R1),.b(Q1),.sel(sw),.out(q_mux));
mux_13 m3(.a(U1),.b(L1),.sel(sw),.out(l_mux));
mux_13 m4(.a(L1),.b(U1),.sel(sw),.out(u_mux));


assign st_out=S3;//S4;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

feedback_ckt D1(.Din(q_mux),.start(start_temp),.Qout(d1out),.clk(clk),.reset(reset));
feedback_ckt D2(.Din(r_mux),.start(start_temp),.Qout(d2out),.clk(clk),.reset(reset));
feedback_ckt D3(.Din(q_mux),.start(start_temp),.Qout(d3out),.clk(clk),.reset(reset));
feedback_ckt D4(.Din(r_mux),.start(start_temp),.Qout(d4out),.clk(clk),.reset(reset));

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
always@(posedge  clk or negedge reset)
if(!reset)
begin
	R1 <=#1 13'b0;
	Q1 <=#1 13'b0;
	L1 <=#1 13'b0;
	U1 <=#1 13'b0;
	//--- block 2-------
  	R2 <=#1 13'b0;
	Q2 <=#1 13'b0;
	L2 <=#1 13'b0;
	U2 <=#1 13'b0;
	//----block3--------
  	Q3 <=#1 13'b0;
	U3 <=#1 13'b0;

	//--- block 4 ------
	S1 <=#1 1'b0;
	S2 <=#1 1'b0;
	S3 <=#1 1'b0;
	//S4 <=#1 S3;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	//st_out <=#1 S3;


end
else
begin
     //--- block1 ------
	R1 <= Rin;
	Q1 <=#1 Qin;
	L1 <=#1 Lin;
	U1 <=#1 Uin;
	//--- block 2-------
  	R2 <=#1 r_mux;
	Q2 <=#1 q_mux;
	L2 <=#1 l_mux;
	U2 <=#1 u_mux;
	//----block3--------
  	Q3 <=#1 Q2;
	U3 <=#1 U2;

	//--- block 4 ------
	S1 <=#1 start;
	S2 <=#1 S1;
	S3 <=#1 S2;
	//S4 <=#1 S3;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	//st_out <=#1 S3;

end



endmodule
