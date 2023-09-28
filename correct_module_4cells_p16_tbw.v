
 `timescale 1ns/10ps
module correct_module_4cells_p16_tbw;

//---received polynomial ---------
    //reg  R [0:220];//13x17=221
    reg  Q [0:220];
    //reg  L [0:220];
    //reg  U [0:220];
    
    //reg [12:0] Rin=0;
    reg [12:0] Qin;
   // reg [12:0] Lin=0;
   // reg [12:0] Uin=0;
    reg clk;
    reg [14:0] count;
    //reg start=0;
    //reg [4:0]deg_Ri=5'd16;
   // reg [4:0]deg_Qi=5'd15;
    //reg stop_i=1;//1=1;//0;
    reg reset;
    reg [3:0]gcount;
    reg start;
   wire [12:0] sigma1;
    wire [12:0] sigma2;
    wire [12:0] sigma3;
    wire [12:0] sigma4;
    wire [12:0] sigma5;
    wire [12:0] sigma6;
    wire [12:0] sigma7;
    wire [12:0] sigma8;
    wire [12:0] sigma9 ;
    wire [12:0] sigma10;
    wire [12:0] sigma11;
    wire [12:0] sigma12;
    wire [12:0] sigma13;
    wire [12:0] sigma14;
    wire [12:0] sigma15;
    wire [12:0] sigma16;   
    wire [12:0]err_count;
    wire pre_err;        
    wire error_occur;  
    wire start_aadd;  
    wire error_finish;
    wire [3:0]error_number;
    wire e8;
    wire [3:0]e_sum_r;
    
    wire [15:0]err_index;
parameter DELAY =1;    
wire [12:0]aadd1,aadd2,aadd3,aadd4,aadd5,aadd6,aadd7,aadd8;
 wire	 enable_cs;
   wire [3:0] serr;
    //reg stop_i2=1;
// Outputs
   // wire [12:0] Rout;
   // wire [12:0] Qout;
    wire [12:0] Lout;
    //wire [12:0] Uout;
    //wire st_out;
    //wire [4:0]deg_Ro,deg_Qo;
    //wire stop_o;//1,stop_o2;
    

    //wire [2:0]stop1,stop2,stop3;//~~~~~~~~~~~~~~~~~~~~~~~~~


  // integer TX_FILE1,TX_FILE2,TX_FILE3,TX_FILE4;
   integer i;//for 'for' loop
 wire [7:0] alu_out;
 
 
initial 
begin
clk = 0;
forever #10 clk = ~clk;//不確定時間單位正確？

end

initial
begin
 //    $sdf_annotate("correct_module_4cells_p16_s.sdf",corr);
 //  $fsdbDumpfile("correct_module_4cells_p16.fsdb"); 
//    $fsdbDumpvars;         
//      $finish;       
 // TX_FILE1=$fopen("result_Rout.txt");
  //TX_FILE2=$fopen("result_Qout.txt");
 // TX_FILE3=$fopen("result_Lout.txt");
  //TX_FILE4=$fopen("result_Uout.txt");
 
 // start=0;
  count = 0;
  reset=0;
  
  # 12
  reset = 1;
   // $readmemb("Rin.doc",R);//-----binary message data generated from c  
  $readmemb("Qin.doc",Q);
 // $readmemb("Lin.doc",L);
  //$readmemb("Uin.doc",U);
  
  #180000 // clock period * codelength=2*9000
  
  //$fclose(TX_FILE1);
  //$fclose(TX_FILE2);
  //$fclose(TX_FILE3);
  //$fclose(TX_FILE4);
  
  $stop;
end




always @ (posedge clk or negedge reset)
begin

if(!reset) begin
Qin[12] <= #1 0;
Qin[11] <= #1 0;
Qin[10] <= #1 0;
Qin[9] <= #1 0;
Qin[8] <= #1 0;
Qin[7] <= #1 0;
Qin[6] <= #1 0;
Qin[5] <= #1 0;
Qin[4] <= #1 0;
Qin[3] <= #1 0;
Qin[2] <= #1 0;
Qin[1] <= #1 0;
Qin[0] <= #1 0;

gcount <= #1 0;
start <= #1 0;
end
       
if(gcount<=10)
begin
   gcount <=#DELAY gcount+1;
   
   start <=#DELAY 0;
end
else 
begin
    start <=#DELAY 1;
	  
	  //-----start signal--------
	 // if(count>=13)// &count<26)
	 // begin
	       //start=1;
		  //stop_i=0;//1=0;
	 // end 
	 /* if (count>=52)
	  begin
	      stop_i2=0;
	  end */ 
	  
	  
	  //----------------------
	  if(count<210)
	  begin
		 for(i=0;i<13;i=i+1)
		 begin

		// Rin[12-i]=R[count+i];
		 Qin[12-i] <=#DELAY Q[count+i];
		// Lin[12-i]=L[count+i];
		// Uin[12-i]=U[count+i];
		 
		 
		 end
		 count <=#DELAY count+13;
	  end
	  else if(count>=210)
	 begin
	      for(i=0;i<13;i=i+1)
		 begin

		// Rin[12-i]=0;
		 Qin[12-i] <=#DELAY 0;
		 //Lin[12-i]=0;
		 //Uin[12-i]=0;
		 
		 end
		 count <=#DELAY count+13;
	  end
	//	$fdisplay(TX_FILE1,"%b",Rout);
	//	$fdisplay(TX_FILE2,"%b",Qout);
	//	$fdisplay(TX_FILE3,"%b",Lout);
	//	$fdisplay(TX_FILE4,"%b",Uout);


end//for gcount------

end



//initial begin
  //  $fsdbDumpfile("BCH.fsdb");
   //  $fsdbDumpvars(0, correct_module_8cells_p32_tbw);
//end

 


correct_module_4cells_p16  corr(.rstn(reset),
	                .clk(clk),
				 .start(start),
                     .gsynd(Qin),
				  .aadd1(aadd1),
				  .aadd2(aadd2),
				  .aadd3(aadd3),
				  .aadd4(aadd4),
				  .aadd5(aadd5),
				  .aadd6(aadd6),
				  .aadd7(aadd7),
				  .aadd8(aadd8),
				 // state,
       .sigma1(sigma1), 
        .sigma2(sigma2), 
        .sigma3(sigma3), 
        .sigma4(sigma4), 
        .sigma5(sigma5), 
        .sigma6(sigma6), 
        .sigma7(sigma7), 
        .sigma8(sigma8), 
 .sigma9 (sigma9 ),
.sigma10(sigma10),
.sigma11(sigma11),
.sigma12(sigma12),
.sigma13(sigma13),
.sigma14(sigma14),
.sigma15(sigma15),
.sigma16(sigma16),   
.e8(e8),
.e_sum_r(e_sum_r),

	  .err_count(err_count),
	  .pre_err(pre_err),
	  .error_occur(error_occur), 
	  .start_aadd(start_aadd),
	   .error_finish(error_finish),
	   .error_number(error_number),   	
	   .err_index(err_index),			  
				  .serr(serr),
				  .Lout(Lout),
				  .enable_cs(enable_cs));//~~~~~~

			  

endmodule

