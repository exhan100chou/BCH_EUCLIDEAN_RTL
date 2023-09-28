module feedback_ckt(Din,start,Qout,clk,reset);
input [12:0]Din;
input start,clk,reset;

output[12:0]Qout;
//wire [12:0]Qout;
parameter DELAY =1;    

reg [12:0]D;

wire [12:0]feedback;
wire [12:0]out;

mux_13 mux(.a(feedback),.b(Din),.sel(start),.out(out));
assign feedback=Qout;
assign Qout=D;

always@(posedge clk or negedge reset)
begin
	 
	 //Qout <=#1 D; 
	 if(!reset)
	 begin
	     D <=#1 0;
	 end
	 else 
	 begin 
	    D <=#1 out;
	 end 
end




endmodule
