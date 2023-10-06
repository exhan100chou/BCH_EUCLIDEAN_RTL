module correct_module_8cell_p=32(rstn,clk,start,
                      gsynd,
				  aadd1,aadd2,aadd3,aadd4,aadd5,aadd6,aadd7,aadd8,
				  state,
				  serr,
				  Lout);//~~~~~~
  //
input rstn,clk,
      start;//--correct start input(active low)
input [12:0]gsynd;//syndrome input

output [12:0]aadd1,aadd2,aadd3,aadd4,aadd5,aadd6,aadd7,aadd8;
output [1:0]state;//error state output

output [3:0]serr;//number of errors

output [12:0]Lout;//~~~~~~~~~~~~~

parameter DELAY =1;    

reg [9:0]count;//~~~max=1023;

//---Euclidean -------------	// not sure~~~~

wire [4:0]deg_Ri=5'd16;
wire [4:0]deg_Qi=5'd15;

wire [12:0]Lin=0;

reg [12:0]Rin,Uin;	//registor will lag for one unit time,
                    //so initial value of Rin is one
                    //Uin will take one unit time earlier 
reg start_eu; //-- "0" for locked leading coeff.
reg stop_i;
//------------ chien search ------------

reg [12:0]err_loc0,err_loc1,err_loc2,err_loc3,err_loc4,err_loc5,err_loc6,
          err_loc7,err_loc8;
reg sel_ch;

    wire [12:0] sigma1;
    wire [12:0] sigma2;
    wire [12:0] sigma3;
    wire [12:0] sigma4;
    wire [12:0] sigma5;
    wire [12:0] sigma6;
    wire [12:0] sigma7;
    wire [12:0] sigma8;
    

wire x1,x2,x3,x4,x5,x6,x7,x8;
//wire x0;
//wire [12:0]temp_x0;

reg e1,e2,e3,e4,e5,e6,e7,e8;
//reg e0;//for lambda(alpha^1)
reg [3:0]error_number;
reg [12:0]aadd[7:0];//1,aadd2,aadd3,aadd4,aadd5,aadd6,aadd7,aadd8;
reg [12:0]err_count;
integer i;
reg error; //do nothing
reg start_aadd;//
wire  error_occur;
reg   error_occur_d;
wire  enable_cs;
wire  pre_err;
//-----------EU-------------------

euclidean_8cells euclidean(
                  .deg_Ri(deg_Ri),.deg_Qi(deg_Qi),.stop_i(stop_i),//1,stop_i2,
                  .Rin(Rin),.Qin(gsynd),.Lin(Lin),.Uin(Uin),.start(start_eu),//input
                  //.deg_Ro(),.deg_Qo(),.stop_o(),//1,stop_o2,
			   /*.Rout(),.Qout(),.Lout(),*/.Lout(Lout),//.st_out(),//output
			   .clk(clk),.reset(rstn));


//--------chien search -------------------
 
chien_search_p32_t8 chien(
     .lambda0(err_loc0),.lambda1(err_loc1),.lambda2(err_loc2),.lambda3(err_loc3),
	.lambda4(err_loc4),.lambda5(err_loc5),.lambda6(err_loc6),.lambda7(err_loc7),
	.lambda8(err_loc8),
	   .sigma1(sigma1), 
        .sigma2(sigma2), 
        .sigma3(sigma3), 
        .sigma4(sigma4), 
        .sigma5(sigma5), 
        .sigma6(sigma6), 
        .sigma7(sigma7), 
        .sigma8(sigma8), //inputs
     .sel(sel_ch),
     .enable(enable_cs),
	.clk(clk),
	.reset(rstn));//,
	//.start(start));
 assign serr=error_number; 		    
/*assign temp_x0=err_loc0^err_loc1^err_loc2^err_loc3^	  
       err_loc4^err_loc5^err_loc6^err_loc7^err_loc8;  */
	   
//or(x0,temp_x0[0],temp_x0[1],temp_x0[2],temp_x0[3],temp_x0[4],temp_x0[5],temp_x0[6],temp_x0[7],temp_x0[8],temp_x0[9],temp_x0[10],temp_x0[11],temp_x0[12]);
or(x1,sigma1[0],sigma1[1],sigma1[2],sigma1[3],sigma1[4],sigma1[5],sigma1[6],sigma1[7],sigma1[8],sigma1[9],sigma1[10],sigma1[11],sigma1[12]);
or(x2,sigma2[0],sigma2[1],sigma2[2],sigma2[3],sigma2[4],sigma2[5],sigma2[6],sigma2[7],sigma2[8],sigma2[9],sigma2[10],sigma2[11],sigma2[12]);
or(x3,sigma3[0],sigma3[1],sigma3[2],sigma3[3],sigma3[4],sigma3[5],sigma3[6],sigma3[7],sigma3[8],sigma3[9],sigma3[10],sigma3[11],sigma3[12]);
or(x4,sigma4[0],sigma4[1],sigma4[2],sigma4[3],sigma4[4],sigma4[5],sigma4[6],sigma4[7],sigma4[8],sigma4[9],sigma4[10],sigma4[11],sigma4[12]);
or(x5,sigma5[0],sigma5[1],sigma5[2],sigma5[3],sigma5[4],sigma5[5],sigma5[6],sigma5[7],sigma5[8],sigma5[9],sigma5[10],sigma5[11],sigma5[12]);
or(x6,sigma6[0],sigma6[1],sigma6[2],sigma6[3],sigma6[4],sigma6[5],sigma6[6],sigma6[7],sigma6[8],sigma6[9],sigma6[10],sigma6[11],sigma6[12]);
or(x7,sigma7[0],sigma7[1],sigma7[2],sigma7[3],sigma7[4],sigma7[5],sigma7[6],sigma7[7],sigma7[8],sigma7[9],sigma7[10],sigma7[11],sigma7[12]);
or(x8,sigma8[0],sigma8[1],sigma8[2],sigma8[3],sigma8[4],sigma8[5],sigma8[6],sigma8[7],sigma8[8],sigma8[9],sigma8[10],sigma8[11],sigma8[12]);

assign aadd1=aadd[0];
assign aadd2=aadd[1];
assign aadd3=aadd[2];
assign aadd4=aadd[3];
assign aadd5=aadd[4];
assign aadd6=aadd[5];
assign aadd7=aadd[6];
assign aadd8=aadd[7];
					



always@(posedge clk or negedge rstn)//--------euclidean ------------------------
begin
  if(rstn==0)
    begin
      Rin <=#DELAY 1;
      Uin <=#DELAY 0;
      start_eu <=#DELAY 0;
      count    <=#DELAY 0;
      stop_i   <=#DELAY 1;
    end

else if(start==1)
begin 


    if(count==0)// && start==0)~~ and module must add start port
    begin
	    Rin <=#DELAY 0;
	    Uin <=#DELAY 0;
	    start_eu <=#DELAY 1;
	    stop_i <=#DELAY 1;
	    //count=count+1;
    end
    else if(count==1)
    begin
      Rin <=#DELAY 0;
	    Uin <=#DELAY 0;
	    start_eu <=#DELAY 1;
	    stop_i <=#DELAY 0;
	    //count=count+1;
    end
    else if(count>1 && count<14)
    begin
      Rin <=#DELAY 0;
	    Uin <=#DELAY 0;
	    start_eu <=#DELAY 1;
	    stop_i <=#DELAY 0;
	    //count=count+1;
    end
    else if(count==14)
    begin
      Rin <=#DELAY 0;
	    Uin <=#DELAY 1;
	    start_eu <=#DELAY 1;
	    //count=count+1;
	    stop_i <=#DELAY 0;
    end
    else if(count==15)
    begin
      Rin <=#DELAY 0;
	    Uin <=#DELAY 0;
	    start_eu <=#DELAY 1;
	    //count=count+1;
	    stop_i <=#DELAY 0;
    end
    else if(count>15)
    begin
      Rin <=#DELAY 0;
	    Uin <=#DELAY 0;
	    start_eu <=#DELAY 1;
	    //count=count+1;
	    stop_i <=#DELAY 0;
    end

    
    if(count==1000)
    begin
       count <=#DELAY 0;
    end

    	 count <=#DELAY count+1;

end //else if

end//always--eu---------------------------------------

//--------chien ------------------------
 assign pre_err = ~(x1 & x2 & x3 & x4 & x5 & x6 & x7 & x8) && count >=60;

always@(posedge clk)
begin

if(rstn==0)
begin

err_loc0 <=#DELAY 0;
err_loc1 <=#DELAY 0;
err_loc2 <=#DELAY 0;
err_loc3 <=#DELAY 0;
err_loc4 <=#DELAY 0;
err_loc5 <=#DELAY 0;
err_loc6 <=#DELAY 0;
err_loc7 <=#DELAY 0;
err_loc8 <=#DELAY 0;

sel_ch <=#DELAY 0;




end
else if(rstn==1 && start==1 & enable_cs)
begin
err_loc0 <=#DELAY Lout;
err_loc1 <=#DELAY err_loc0;
err_loc2 <=#DELAY err_loc1;
err_loc3 <=#DELAY err_loc2;
err_loc4 <=#DELAY err_loc3;
err_loc5 <=#DELAY err_loc4;
err_loc6 <=#DELAY err_loc5;
err_loc7 <=#DELAY err_loc6;
err_loc8 <=#DELAY err_loc7;


if(count==57)//6)
begin
   sel_ch <=#DELAY 1;
end
else
begin
   sel_ch <=#DELAY 0;
end

end //else if(rstn==1)
end//always--chien

//-------------------------------------------------------------
//-------------------------------------------------------------
reg [7:0] err_index;
wire      error_finish;
reg       start_aadd_d;


always@(posedge clk)
   error_occur_d  <=#DELAY  error_occur;

assign   enable_cs = ~(pre_err && ~(error_occur==1'b0 && err_index!=8'hff));   
assign   error_occur = start_aadd & pre_err &
                      (  (e1 ^ err_index[0]) | (e2 ^ err_index[1]) | (e3 ^ err_index[2]) | (e4 ^ err_index[3]) 
                       | (e5 ^ err_index[4]) | (e6 ^ err_index[5]) | (e7 ^ err_index[6]) | (e8 ^ err_index[7]) );
assign  error_finish =  (e1 ^ err_index[0]) & (e2 ^ err_index[1]) & (e3 ^ err_index[2]) & (e4 ^ err_index[3]) 
                      & (e5 ^ err_index[4]) & (e6 ^ err_index[5]) & (e7 ^ err_index[6]) & (e8 ^ err_index[7]) ;


always@(posedge clk)
begin

if(rstn==0)
begin
aadd[0]  <=#DELAY  8191;
aadd[1]  <=#DELAY  8191;
aadd[2]  <=#DELAY  8191;
aadd[3]  <=#DELAY  8191;
aadd[4]  <=#DELAY  8191;
aadd[5]  <=#DELAY  8191;
aadd[6]  <=#DELAY  8191;
aadd[7]  <=#DELAY  8191;

err_count  <=#DELAY  4216;

error  <=#DELAY  0;
error_number  <=#DELAY  0;

start_aadd  <=#DELAY  0;
err_index   <=#DELAY  8'hFF;
end


else if(rstn==1 && start==1)
begin

     if(start_aadd==1) // if( count==61+i*2)//63+i*2)// ||  count==65 ||count==67 || count==69 || count==71) //+i*2))
        begin
          if (error_occur) begin 
                 if(e1==1'b0 & err_index[0])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b111};//err_count-1;
                     error_number        <=#DELAY  error_number+1;
                     err_index[0]        <=#DELAY  1'b0;
                 end
                 else if(e2==1'b0 & err_index[1])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b110};//err_count-2;
                     error_number        <=#DELAY  error_number+1;
                     err_index[1]        <=#DELAY  1'b0;
                 end
                 else if(e3==1'b0 & err_index[2])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b101};//err_count-3;
                     error_number        <=#DELAY  error_number+1;
                     err_index[2]        <=#DELAY  1'b0;
                 end
                 else if(e4==1'b0 & err_index[3])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b100};//err_count-4;
                     error_number        <=#DELAY  error_number+1;
                     err_index[3]        <=#DELAY  1'b0;
                 end
                 else if(e5==1'b0 & err_index[4])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b011};//err_count-5;
                     error_number        <=#DELAY  error_number+1;
                     err_index[4]        <=#DELAY  1'b0;
                 end
                 else if(e6==1'b0 & err_index[5])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b010};//err_count-6;
                     error_number        <=#DELAY  error_number+1;
                     err_index[5]        <=#DELAY  1'b0;
                 end
                 else if(e7==1'b0 & err_index[6])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b001};//err_count-7;
                     error_number        <=#DELAY  error_number+1;
                     err_index[6]        <=#DELAY  1'b0;
                 end
                 else if(e8==1'b0 & err_index[7])
                 begin
                     aadd[error_number]  <=#DELAY  {err_count[12:3], 3'b000};//err_count-8;
                     error_number        <=#DELAY  error_number+1;
                     err_index[7]        <=#DELAY  1'b0;
                 end
            end
          else begin
                err_index  <=#DELAY  8'hFF;
          end
           
        end//if(start_aadd==1)
 //    end//for
	if(count>=60)
	begin
	start_aadd  <=#DELAY  1;
	end

   //  if(count>=61 && ~error_occur)//enable_cs)
     if(count>=60 && enable_cs)
     begin
          err_count  <=#DELAY  err_count-8;
		
     end

 
end //if(rstn==1)
end //always  

//-------------------------------------------------------------
//-------------------------------------------------------------


always@(posedge clk)
begin
if(rstn==0)
begin
   //e0 <=#DELAY 0;
   e1 <=#DELAY 0;
   e2 <=#DELAY 0;
   e3 <=#DELAY 0;
   e4 <=#DELAY 0;
   e5 <=#DELAY 0;
   e6 <=#DELAY 0;
   e7 <=#DELAY 0;
   e8 <=#DELAY 0;
   
   

end//if(rstn==0)
else if(rstn==1 && start==1)
begin
   
  // e0 <=#DELAY x0;

   e1 <=#DELAY x1;
   e2 <=#DELAY x2;
   e3 <=#DELAY x3;
   e4 <=#DELAY x4;
   e5 <=#DELAY x5;
   e6 <=#DELAY x6;
   e7 <=#DELAY x7;
   e8 <=#DELAY x8;
  
   

end//if(rstn==1)



end//always 
			
			
endmodule
