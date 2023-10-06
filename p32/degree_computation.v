module degree_computation(deg_Ri,deg_Qi,stop_i,d1out,start,//input
                          deg_Ro,deg_Qo,stop_o,sw,//output
					 clk,reset);//,//);
					 //DR2,DQ2,addr_signal,addq_signal);//~~~~
					// mr_signal,mq_signal,r2mux_signal,q2mux_signal//~~
					 //);

input [4:0]deg_Ri,deg_Qi;
input [12:0]d1out;
input stop_i,clk,start,reset;

output [4:0]deg_Ro,deg_Qo;
output stop_o,sw;
/*output [4:0]//DR2,DQ2,addr_signal,addq_signal;//,//~~~~
					 mr_signal,mq_signal,r2mux_signal,q2mux_signal;//~~~~~~~~~~~~~~
					    */
parameter DELAY =1;    
					    
					    
wire out,j1_signal,j2_signal,z_lead;
wire [4:0]rmux_signal,qmux_signal,
      addr_signal,addq_signal,
	 mr_signal,mq_signal,
	 r2mux_signal,q2mux_signal;
wire [12:0]dmux_signal;


reg shift_reg,sw_reg,start_reg;
reg [4:0]DR1,DR2,DR3,DQ1,DQ2,DQ3;//reg [16:0]shift_reg;


//-----------------------------------------------------------------

assign out=(deg_Ri<deg_Qi); //|| deg_Ri==deg_Qi);
assign sw=shift_reg;

mux_5 mdeg1(.a(DQ1),.b(DR1),.sel(sw_reg),.out(rmux_signal));
mux_5 mdeg2(.a(DR1),.b(DQ1),.sel(sw_reg),.out(qmux_signal));

assign addr_signal=DR2-5'd1;
assign addq_signal=DQ2-5'd1;
mux_5 mdeg3(.a(DR2),.b(addr_signal),.sel(z_lead),.out(mr_signal));
mux_5 mdeg4(.a(addq_signal),.b(DQ2),.sel(z_lead),.out(mq_signal));

mux_5 mdeg5(.a(DR2),.b(mr_signal),.sel(stop_i),.out(r2mux_signal));
mux_5 mdeg6(.a(DQ2),.b(mq_signal),.sel(stop_i),.out(q2mux_signal));

assign deg_Ro=DR3;
assign deg_Qo=DQ3;

assign j1_signal=(mr_signal<8);
assign j2_signal=(mq_signal<8);
assign stop1_signal=(j1_signal || j2_signal);//or
assign stop2_signal=start_reg;
assign stop_o=stop1_signal && stop2_signal;

//--- verify coeff of Q==0 --------

mux_13 mdeg7(.a(d1out),.b(13'd1),.sel(start_reg),.out(dmux_signal));
assign z_lead=(dmux_signal==0);


always@(posedge clk)
begin
       

	   
	   if(reset==0)
	   begin
	    shift_reg <=#DELAY 0;
		  sw_reg <=#DELAY 0;
		  start_reg <=#DELAY 1;
		  DR1 <=#DELAY 0;
		  DR2 <=#DELAY 0;
		  DR3 <=#DELAY 0;
		  DQ1 <=#DELAY 0;
		  DQ2 <=#DELAY 0;
		  DQ3 <=#DELAY 0;
	   end
	   else if (reset==1)
	   begin
	         shift_reg <=#DELAY out;
	         sw_reg <=#DELAY out;
	         DR1 <=#DELAY deg_Ri;
	         DQ1 <=#DELAY deg_Qi;

           DR2 <=#DELAY rmux_signal;
	         DQ2 <=#DELAY qmux_signal;

	         DR3 <=#DELAY r2mux_signal;
	         DQ3 <=#DELAY q2mux_signal;
		    //--- verify coeff of Q==0 --------
	         start_reg <=#DELAY start;
	   end

end
endmodule
