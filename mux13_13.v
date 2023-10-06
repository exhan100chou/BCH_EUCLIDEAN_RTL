module mux13_13(a,b,sel,enable, out,clk,reset); //0-->a,1-->b


input [12:0]a,b;
input sel,clk,reset;
input enable;

output [12:0]out;
reg [12:0]out;

always@(posedge clk or negedge reset)
 if(!reset)       out <=#1   13'b0;
 else if(enable)  out <=#1   sel? a : b;
 else							out <= #1  out;
 
endmodule
