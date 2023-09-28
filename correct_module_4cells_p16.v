module correct_module_4cells_p16(rstn,clk,start,
                      gsynd,
				  aadd1,aadd2,aadd3,aadd4,aadd5,aadd6,aadd7,aadd8,
				  
				   sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,
	  sigma9,sigma10,sigma11,sigma12,sigma13,sigma14,sigma15,sigma16,//outputs
				  Lout);//,e1,e2,e3,e4);//~~~~~~
  //
input rstn,clk,start;//--correct start input(active low)
input [12:0]gsynd;//syndrome input
													    
output [12:0]aadd1,aadd2,aadd3,aadd4,aadd5,aadd6,aadd7,aadd8;



output [12:0]Lout;//~~~~~~~~~~~~~

output [12:0]sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,
             sigma9,sigma10,sigma11,sigma12,sigma13,sigma14,sigma15,sigma16;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~`


parameter DELAY =1;    

reg [9:0]count;//~~~max=1023;

//---Euclidean -------------	// not sure~~~~

wire [4:0]deg_Ri=5'd16;
wire [4:0]deg_Qi=5'd15;

wire [12:0]Lin;

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
    wire [12:0] sigma9;
    wire [12:0] sigma10;
    wire [12:0] sigma11;
    wire [12:0] sigma12;
    wire [12:0] sigma13;
    wire [12:0] sigma14;
    wire [12:0] sigma15;
    wire [12:0] sigma16;
    

wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,
    x11,x12,x13,x14,x15,x16;
wire  x_1_w ,  
      x_2_w ,
      x_3_w ,
      x_4_w ,
      x_5_w ,
      x_6_w ,
      x_7_w ,
      x_8_w ,
      x_9_w ,
      x_10_w,
      x_11_w,
      x_12_w,
      x_13_w,
      x_14_w,
      x_15_w,
      x_16_w;
    
reg e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,
    e11,e12,e13,e14,e15,e16;

reg [3:0]error_number;
reg [12:0]aadd[7:0];//1,aadd2,aadd3,aadd4,aadd5,aadd6,aadd7,aadd8;
reg [12:0]err_count;

reg start_aadd;//


wire  enable_cs;

wire sig_all_zero;
//-----------EU-------------------

euclidean_4cells euclidean(
                  .deg_Ri(deg_Ri),.deg_Qi(deg_Qi),.stop_i(stop_i),//1,stop_i2,
                  .Rin(Rin),.Qin(gsynd),.Lin(Lin),.Uin(Uin),.start(start_eu),.start_cnt(start),//input
                  //.deg_Ro(),.deg_Qo(),.stop_o(),//1,stop_o2,
			   /*.Rout(),.Qout(),.Lout(),*/.Lout(Lout),//.st_out(),//output
			   .clk(clk),.reset(rstn));


//--------chien search -------------------
 
chien_search_p16_t8 chien(
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
        .sigma8(sigma8), 
        .sigma9(sigma9), 
        .sigma10(sigma10), 
        .sigma11(sigma11), 
        .sigma12(sigma12), 
        .sigma13(sigma13), 
        .sigma14(sigma14), 
        .sigma15(sigma15), 
        .sigma16(sigma16), //inputs
     .sel(sel_ch),
     .enable(enable_cs),
	.clk(clk),
	.reset(rstn));

	    

or(x1_w,sigma1[0],sigma1[1],sigma1[2],sigma1[3],sigma1[4],sigma1[5],sigma1[6],sigma1[7],sigma1[8],sigma1[9],sigma1[10],sigma1[11],sigma1[12]);
or(x2_w,sigma2[0],sigma2[1],sigma2[2],sigma2[3],sigma2[4],sigma2[5],sigma2[6],sigma2[7],sigma2[8],sigma2[9],sigma2[10],sigma2[11],sigma2[12]);
or(x3_w,sigma3[0],sigma3[1],sigma3[2],sigma3[3],sigma3[4],sigma3[5],sigma3[6],sigma3[7],sigma3[8],sigma3[9],sigma3[10],sigma3[11],sigma3[12]);
or(x4_w,sigma4[0],sigma4[1],sigma4[2],sigma4[3],sigma4[4],sigma4[5],sigma4[6],sigma4[7],sigma4[8],sigma4[9],sigma4[10],sigma4[11],sigma4[12]);
or(x5_w,sigma5[0],sigma5[1],sigma5[2],sigma5[3],sigma5[4],sigma5[5],sigma5[6],sigma5[7],sigma5[8],sigma5[9],sigma5[10],sigma5[11],sigma5[12]);
or(x6_w,sigma6[0],sigma6[1],sigma6[2],sigma6[3],sigma6[4],sigma6[5],sigma6[6],sigma6[7],sigma6[8],sigma6[9],sigma6[10],sigma6[11],sigma6[12]);
or(x7_w,sigma7[0],sigma7[1],sigma7[2],sigma7[3],sigma7[4],sigma7[5],sigma7[6],sigma7[7],sigma7[8],sigma7[9],sigma7[10],sigma7[11],sigma7[12]);
or(x8_w,sigma8[0],sigma8[1],sigma8[2],sigma8[3],sigma8[4],sigma8[5],sigma8[6],sigma8[7],sigma8[8],sigma8[9],sigma8[10],sigma8[11],sigma8[12]);
or(x9_w,sigma9[0],sigma9[1],sigma9[2],sigma9[3],sigma9[4],sigma9[5],sigma9[6],sigma9[7],sigma9[8],sigma9[9],sigma9[10],sigma9[11],sigma9[12]);
or(x10_w,sigma10[0],sigma10[1],sigma10[2],sigma10[3],sigma10[4],sigma10[5],sigma10[6],sigma10[7],sigma10[8],sigma10[9],sigma10[10],sigma10[11],sigma10[12]);
or(x11_w,sigma11[0],sigma11[1],sigma11[2],sigma11[3],sigma11[4],sigma11[5],sigma11[6],sigma11[7],sigma11[8],sigma11[9],sigma11[10],sigma11[11],sigma11[12]);
or(x12_w,sigma12[0],sigma12[1],sigma12[2],sigma12[3],sigma12[4],sigma12[5],sigma12[6],sigma12[7],sigma12[8],sigma12[9],sigma12[10],sigma12[11],sigma12[12]);
or(x13_w,sigma13[0],sigma13[1],sigma13[2],sigma13[3],sigma13[4],sigma13[5],sigma13[6],sigma13[7],sigma13[8],sigma13[9],sigma13[10],sigma13[11],sigma13[12]);
or(x14_w,sigma14[0],sigma14[1],sigma14[2],sigma14[3],sigma14[4],sigma14[5],sigma14[6],sigma14[7],sigma14[8],sigma14[9],sigma14[10],sigma14[11],sigma14[12]);
or(x15_w,sigma15[0],sigma15[1],sigma15[2],sigma15[3],sigma15[4],sigma15[5],sigma15[6],sigma15[7],sigma15[8],sigma15[9],sigma15[10],sigma15[11],sigma15[12]);
or(x16_w,sigma16[0],sigma16[1],sigma16[2],sigma16[3],sigma16[4],sigma16[5],sigma16[6],sigma16[7],sigma16[8],sigma16[9],sigma16[10],sigma16[11],sigma16[12]);

assign sig_all_zero=x1_w|x2_w|x3_w|x4_w|x5_w|x6_w|x7_w|x8_w|x9_w|x10_w|x11_w|x12_w|x13_w|x14_w|x15_w|x16_w;

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
  if(!rstn)
    begin
      Rin <=#1 13'b1;
      Uin <=#1 13'b0;
      start_eu <=#1 1'b0;
      count    <=#1 10'b0;
      stop_i   <=#1 1'b1;
    end

else if(start==1)
begin 


    if(count== 10'd0)// && start==0)~~ and module must add start port
    begin
	    Rin <=#1 13'b0;
	    Uin <=#1 13'b0;
	    start_eu <=#1 1'b1;
	    stop_i <=#1 1'b1;
	
    end
    else if(count==10'd1)
    begin
      Rin <=#1 13'b0;
	    Uin <=#1 13'b0;
	    start_eu <=#1 1'b1;
	    stop_i <=#1 1'b0;

    end
    else if(count>10'd1 && count<10'd14)
    begin
      Rin <=#1 13'b0;
	    Uin <=#1 13'b0;
	    start_eu <=#1 1'b1;
	    stop_i <=#1 1'b0;
	
    end
    else if(count==10'd14)
    begin
      Rin <=#1 13'b0;
	    Uin <=#1 13'b1;
	    start_eu <=#1 1'b1;

	    stop_i <=#1 1'b0;
    end
    else if(count==10'd15)
    begin
      Rin <=#1 13'b0;
	    Uin <=#1 13'b0;
	    start_eu <=#1 1'b1;

	    stop_i <=#1 1'b0;
    end
    else if(count>10'd15)
    begin
      Rin <=#1 13'b0;
	    Uin <=#1 13'b0;
	    start_eu <=#1 1'b1;

	    stop_i <=#1 1'b0;
    end

    				  
    if(count==10'd1000)
    begin
       count <=#1 10'b0;
    end
    else
    	 count <=#1 count+10'b1;

end //else if
else
begin
      Rin <=#1 Rin;
      Uin <=#1 Uin;
      start_eu <=#1 start_eu;
      count    <=#1 count;
      stop_i   <=#1 stop_i;

end

end//always--eu---------------------------------------

//--------chien ------------------------

always@(posedge clk or negedge rstn)
begin

if(!rstn)
begin

err_loc0 <=#1 13'b0;
err_loc1 <=#1 13'b0;
err_loc2 <=#1 13'b0;
err_loc3 <=#1 13'b0;
err_loc4 <=#1 13'b0;
err_loc5 <=#1 13'b0;
err_loc6 <=#1 13'b0;
err_loc7 <=#1 13'b0;
err_loc8 <=#1 13'b0;

sel_ch <=#1 1'b0;




end
else if(start==1 & enable_cs)
begin
err_loc0 <=#1 Lout;
err_loc1 <=#1 err_loc0;
err_loc2 <=#1 err_loc1;
err_loc3 <=#1 err_loc2;
err_loc4 <=#1 err_loc3;
err_loc5 <=#1 err_loc4;
err_loc6 <=#1 err_loc5;
err_loc7 <=#1 err_loc6;
err_loc8 <=#1 err_loc7;


if(count==10'd82)//82//56)	//*****************************
begin
   sel_ch <=#1 1'b1;
end
else
begin
   sel_ch <=#1 1'b0;
end

end //else if(rstn==1)
else
begin
err_loc0 <=#1 err_loc0;
err_loc1 <=#1 err_loc1;
err_loc2 <=#1 err_loc2;
err_loc3 <=#1 err_loc3;
err_loc4 <=#1 err_loc4;
err_loc5 <=#1 err_loc5;
err_loc6 <=#1 err_loc6;
err_loc7 <=#1 err_loc7;
err_loc8 <=#1 err_loc8;

sel_ch <=#1 sel_ch;

end
end//always--chien

//-------------------------------------------------------------
//-------------------------------------------------------------


reg       start_aadd_d;
reg enable_cs_r;
reg  [3:0]e_sum_r; 
reg [15:0]e_vecter_r; 

   
always@(posedge clk or negedge rstn)
begin
	if(!rstn) begin

   enable_cs_r<= #1  1'b0;
	end
	else begin
		
   enable_cs_r<= #1  enable_cs;
   end
end
assign   enable_cs = (err_count<=13'd4208 && error_number<=4'd8)?((e_sum_r<=3'd1)?1'b1:1'b0):(1'b0); //????  


assign x1 =(enable_cs==1&&sig_all_zero==1)?(x1_w ):e1;
assign x2 =(enable_cs==1&&sig_all_zero==1)?(x2_w ):e2;          
assign x3 =(enable_cs==1&&sig_all_zero==1)?(x3_w ):e3;          
assign x4 =(enable_cs==1&&sig_all_zero==1)?(x4_w ):e4;          
assign x5 =(enable_cs==1&&sig_all_zero==1)?(x5_w ):e5;          
assign x6 =(enable_cs==1&&sig_all_zero==1)?(x6_w ):e6;          
assign x7 =(enable_cs==1&&sig_all_zero==1)?(x7_w ):e7;          
assign x8 =(enable_cs==1&&sig_all_zero==1)?(x8_w ):e8;          
assign x9 =(enable_cs==1&&sig_all_zero==1)?(x9_w ):e9;          
assign x10=(enable_cs==1&&sig_all_zero==1)?(x10_w):e10;         
assign x11=(enable_cs==1&&sig_all_zero==1)?(x11_w):e11;         
assign x12=(enable_cs==1&&sig_all_zero==1)?(x12_w):e12;         
assign x13=(enable_cs==1&&sig_all_zero==1)?(x13_w):e13;         
assign x14=(enable_cs==1&&sig_all_zero==1)?(x14_w):e14;         
assign x15=(enable_cs==1&&sig_all_zero==1)?(x15_w):e15;         
assign x16=(enable_cs==1&&sig_all_zero==1)?(x16_w):e16;         


wire	e1go;
wire	e2go;
wire	e3go;
wire	e4go;
wire	e5go;
wire	e6go;
wire	e7go;
wire	e8go;
wire	e9go;
wire	e10go;
wire	e11go;
wire	e12go;
wire	e13go;
wire	e14go;
wire	e15go;
wire	e16go;

assign e1go = !e1;
assign e2go = (e1 && !e2);
assign e3go = (e1 && e2 && !e3);
assign e4go = (e1 && e2 && e3 && !e4);
assign e5go = (e1 && e2 && e3 && e4 && !e5);
assign e6go = (e1 && e2 && e3 && e4 && e5 && !e6);
assign e7go = (e1 && e2 && e3 && e4 && e5 && e6 && !e7);
assign e8go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && !e8);
assign e9go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && !e9);
assign e10go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && e9 && !e10);
assign e11go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && e9 && e10 && !e11);
assign e12go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && e9 && e10 && e11 && !e12); 
assign e13go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && e9 && e10 && e11 && e12 && !e13); 
assign e14go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && e9 && e10 && e11 && e12 && e13 && !e14);
assign e15go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && e9 && e10 && e11 && e12 && e13 && e14 && !e15);
assign e16go = (e1 && e2 && e3 && e4 && e5 && e6 && e7 && e8 && e9 && e10 && e11 && e12 && e13 && e14 && e15 && !e16);

always@(posedge clk or negedge rstn)
begin

if(!rstn)
begin
     aadd[0]  <=#1  13'd8191;
     aadd[1]  <=#1  13'd8191;
     aadd[2]  <=#1  13'd8191;
     aadd[3]  <=#1  13'd8191;
     aadd[4]  <=#1  13'd8191;
     aadd[5]  <=#1  13'd8191;
     aadd[6]  <=#1  13'd8191;
     aadd[7]  <=#1  13'd8191;
     
     
     e_sum_r <=#1 3'b0;
     
     err_count  <=#1  13'd4208; //4224-16=4208
     
     error_number  <=#1  4'b0;
     
     start_aadd  <=#1  1'b0;

end
else if(start==1 )
begin
    e_sum_r <= #1 {3'd0,~x1}+{3'd0,~x2}+{3'd0,~x3}+{3'd0,~x4}+{3'd0,~x5}+{3'd0,~x6}+{3'd0,~x7}+{3'd0,~x8}+{3'd0,~x9}
          +{3'd0,~x10}+{3'd0,~x11}+{3'd0,~x12}+{3'd0,~x13}+{3'd0,~x14}+{3'd0,~x15}+{3'd0,~x16};
     
     
  if(start_aadd==1)
        begin  
           if(e1go)
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd15};//err_count-1;
                     error_number        <=#1  error_number+4'b1;
                      
                 end
				else if(e2go)
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd14};//err_count-2;
                     error_number        <=#1  error_number+4'b1;
                    
                 end
        else if(e3go)
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd13};//err_count-3;
                     error_number        <=#1  error_number+4'b1;
                     
                 end
        else if(e4go)
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd12};//err_count-4;
                     error_number        <=#1  error_number+4'b1;
                    
                 end
        else if(e5go)
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd11};//err_count-5;
                     error_number        <=#1  error_number+4'b1;
                      
                 end
        else if(e6go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd10};//err_count-6;
                     error_number        <=#1  error_number+4'b1;
                     
                 end
        else if(e7go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd9};//err_count-7;
                     error_number        <=#1  error_number+4'b1;
                     
                 end
       else if(e8go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd8};//err_count-8;
                     error_number        <=#1  error_number+4'b1;
                       
                 end
			  else if(e9go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd7};//err_count-1;
                     error_number        <=#1  error_number+4'b1;
                  
                 end
       else if(e10go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd6};//err_count-2;
                     error_number        <=#1  error_number+4'b1;
                      
                 end
      else if(e11go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd5};//err_count-3;
                     error_number        <=#1  error_number+4'b1;
                    
                 end
      else if(e12go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd4};//err_count-4;
                     error_number        <=#1  error_number+4'b1;
                     
                 end
     else if(e13go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd3};//err_count-5;
                     error_number        <=#1  error_number+4'b1;
                     
                 end
     else if(e14go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd2};//err_count-6;
                     error_number        <=#1  error_number+4'b1;
                    
                 end
    else if(e15go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd1};//err_count-7;
                     error_number        <=#1  error_number+4'b1;
                    
                 end
    else if(e16go)  
                 begin
                     aadd[error_number]  <=#1  {err_count[12:4], 4'd0};//err_count-8;
                     error_number        <=#1  error_number+4'b1;
               
                      
                 end
               
               else
               begin
                  aadd[error_number]  <=#1  aadd[error_number];//err_count-8;
                     error_number        <=#1  error_number;
               
               
               end
        end
 
        
        
        
	if(count>=10'd85)//85	 //************************************
	begin
	     start_aadd  <=#1  1'b1;
	end

     if((count>=10'd86) && enable_cs)  //****************************
     begin
          err_count  <=#1  err_count+ 13'b1111111110000; //err_count-16;
		
     end

 
end //if(rstn==1)
else begin
     aadd[0]  <=#1 aadd[0];
     aadd[1]  <=#1 aadd[1];
     aadd[2]  <=#1  aadd[2];
     aadd[3]  <=#1  aadd[3];
     aadd[4]  <=#1  aadd[4];
     aadd[5]  <=#1  aadd[5];
     aadd[6]  <=#1  aadd[6];
     aadd[7]  <=#1  aadd[7];
     
     
     e_sum_r <=#1 e_sum_r;
     
     err_count  <=#1  err_count; //4224-16=4208
     
     error  <=#1   error;
     error_number  <=#1   error_number ;
     
     start_aadd  <=#1  start_aadd;


end
end //always 
//-------------------------------------------------------------


//-------------------------------------------------------------
 

//-------------------------------------------------------------


always@(posedge clk or negedge rstn)
begin
if(!rstn)
begin

   e1 <=#1 1'b1;
   e2 <=#1 1'b1;
   e3 <=#1 1'b1;
   e4 <=#1 1'b1;
   e5 <=#1 1'b1;
   e6 <=#1 1'b1;
   e7 <=#1 1'b1;
   e8 <=#1 1'b1;              
    e9 <=#1 1'b1;
   e10 <=#1 1'b1;
   e11 <=#1 1'b1;
   e12 <=#1 1'b1;
   e13 <=#1 1'b1;
   e14 <=#1 1'b1;
   e15 <=#1 1'b1;
   e16 <=#1 1'b1;
   
   

end//if(rstn==0)
else if(start==1 )
begin
   
   if(enable_cs==1&&sig_all_zero==1)
   begin
        e1 <=#1 x1_w;
        e2 <=#1 x2_w;
        e3 <=#1 x3_w;
        e4 <=#1 x4_w;
        e5 <=#1 x5_w;
        e6 <=#1 x6_w;
        e7 <=#1 x7_w;
        e8 <=#1 x8_w;  
        e9 <=#1 x9_w;
        e10 <=#1 x10_w;
        e11 <=#1 x11_w;
        e12 <=#1 x12_w;
        e13 <=#1 x13_w;
        e14 <=#1 x14_w;
        e15 <=#1 x15_w;
        e16 <=#1 x16_w;
   end
   else 
   begin
   
  
 	      if(e1go) e1 <= #1 1'b1;
 	      else    e1 <= #1 e1;
 	      	
 	      if(e2go) e2 <= #1 1'b1;
 	      else		 e2 <= #1 e2;
 	      
 	      if(e3go) e3 <= #1 1'b1;
 	      else		 e3 <= #1 e3;
 	       
 	      if(e4go) e4 <= #1 1'b1;
 	      else		 e4 <= #1 e4;
 	       
 	      if(e5go) e5 <= #1 1'b1;
 	      else		 e5 <= #1 e5;
 	      	
 	      if(e6go) e6 <= #1 1'b1;
 	      else		 e6 <= #1 e6;
 	      	
 	      if(e7go) e7 <= #1 1'b1;
 	      else		 e7 <= #1 e7;
 	      
 	      if(e8go) e8 <= #1 1'b1;
 	      else		 e8 <= #1 e8;
 	      
 	      if(e9go) e9 <= #1 1'b1;
 	      else		 e9 <= #1 e9;
 	      	
  			if(e10go) e10 <= #1 1'b1;
 	      else		  e10 <= #1 e10;
 	      
  			if(e11go) e11 <= #1 1'b1;
 	      else		  e11 <= #1 e11;
 	      
 	      if(e12go) e12 <= #1 1'b1;
 	      else 		  e12 <= #1 e12;
 	      
 	      if(e13go) e13 <= #1 1'b1;
 	      else 		  e13 <= #1 e13;
 	      
 	      if(e14go) e14 <= #1 1'b1;
 	      else 		  e14 <= #1 e14;
 	      
 	      if(e15go) e15 <= #1 1'b1;
 	      else 		  e15 <= #1 e15;
 	      
 	      if(e16go) e16 <= #1 1'b1;
 	      else 		  e16 <= #1 e16;
 	      
   end

end//if(rstn==1)
else begin
 	 
 	 e1 <=#1 e1;
 	 e2 <=#1 e2;
 	 e3 <=#1 e3;
 	 e4 <=#1 e4;
 	 
 	 e5 <=#1 e5;
 	 e6 <=#1 e6;
 	 e7 <=#1 e7;
 	 e8 <=#1 e8;
 	 
 	 e9 <=#1 e8;
 	 e10 <=#1 e10;
 	 e11 <=#1 e11;
 	 e12 <=#1 e12;
 	 
 	 e13 <=#1 e13;
 	 e14 <=#1 e14;
 	 e15 <=#1 e15;
 	 e16 <=#1 e16;
 	 
   
end



end//always 
			
			
endmodule

