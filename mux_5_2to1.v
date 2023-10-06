module mux_5_2to1(a,b,sel,out); //0-->a,1-->b

input [4:0]a,b;
input sel;

output [4:0]out;
wire [4:0]out;

assign out=sel?a:b;

endmodule
