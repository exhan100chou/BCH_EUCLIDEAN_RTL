module mux13_13(a,b,sel,enable, out,clk,reset); //0-->a,1-->b

input [12:0]a,b;
input sel,clk,reset;
input enable;

output [12:0]out;
reg [12:0]out;

always@(posedge clk)
begin
 if(reset==0)
 begin
    out <= 0;
 end
 
 if(reset==1)
 begin
 out<= enable== 1'b0 ? out : sel? a : b;
 end
end

endmodule
