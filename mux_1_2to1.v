module mux_1_2to1(a,b,sel,out); //0-->a,1-->b

input a,b;
input sel;

output out;
wire out;

assign out=sel?a:b;

endmodule
