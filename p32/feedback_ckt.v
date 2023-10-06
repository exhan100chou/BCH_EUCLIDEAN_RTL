module feedback_ckt(Din,start,Qout,clk,reset);
input [12:0]Din;
input start,clk,reset;

output[12:0]Qout;
//wire [12:0]Qout;
parameter DELAY =1;    

reg [12:0]D=0;

wire [12:0]feedback;
wire [12:0]out;

mux_13 mux(.a(feedback),.b(Din),.sel(start),.out(out));
assign feedback=Qout;
assign Qout=D;

always@(posedge clk)
begin
	 
	 //Qout <=#DELAY D; 
	 if(reset==0)
	 begin
	     D <=#DELAY 0;
	 end
	 else if(reset==1)
	 begin 
	    D <=#DELAY out;
	 end 
end




endmodule
