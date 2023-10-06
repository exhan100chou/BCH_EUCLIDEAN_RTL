module euclidean_polynomial_2cell(Rin,Qin,Lin,Uin,start,sw,stop,//input
                            d1out,Rout,Qout,Lout,Uout,st_out,//output
					   clk,
					   r_mux);
input [12:0]Rin,Qin,Lin,Uin;
input start,sw,stop,clk;

output [12:0]d1out,Rout,Qout,Lout,Uout;
output st_out;
output [12:0]r_mux;

wire [12:0]d1out1,Rout1,Qout1,Lout1,Uout1;
wire st_out1;
wire [12:0]r_mux1;


euclidean_polynomial e1(.Rin(Rin),.Qin(Qin),.Lin(Lin),.Uin(Uin),.start(start),.sw(sw),.stop(stop),//input
                            .d1out(d1out1),.Rout(Rout1),.Qout(Qout1),.Lout(Lout1),.Uout(Uout1),.st_out(st_out1),//output
					   .clk(clk),
					   .r_mux(r_mux1));
euclidean_polynomial e2(.Rin(Rout1),.Qin(Qout1),.Lin(Lout1),.Uin(Uout1),.start(st_out1),.sw(sw),.stop(stop),//input
                            .d1out(d1out),.Rout(Rout),.Qout(Qout),.Lout(Lout),.Uout(Uout),.st_out(st_out),//output
					   .clk(clk),
					   .r_mux(r_mux));


endmodule
