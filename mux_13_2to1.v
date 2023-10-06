module mux_13_2to1(a,b,sel,out); //0-->a,1-->b

input [12:0]a,b;
input sel;

output [12:0]out;
wire [12:0]out;

assign out=sel?a:b;

endmodule