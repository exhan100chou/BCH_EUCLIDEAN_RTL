

moduce bch_decode(clk,rst_n);

// In , Out
input		clk;
input		rst_n;



// Wire 
// For syndrome output
wire [12:0] S1;
wire [12:0] S2;
wire [12:0] S3;
wire [12:0] S4;
wire [12:0] S5;
wire [12:0] S6;
wire [12:0] S7;
wire [12:0] S8;
wire [12:0] S9;
wire [12:0] S10;
wire [12:0] S11;
wire [12:0] S12;
wire [12:0] S13;
wire [12:0] S14;
wire [12:0] S15;
wire [12:0] S16;

wire eculid_start;   
wire [12:0] gsynd; // for eculid, chien search input signal
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

wire [12:0] aadd1;
wire [12:0] aadd2;
wire [12:0] aadd3;
wire [12:0] aadd4;
wire [12:0] aadd5;
wire [12:0] aadd6;
wire [12:0] aadd7;
wire [12:0] aadd8;
  
wire [12:0] err_count;
wire 			  pre_err;        
wire 			  error_occur;  
wire 			  start_aadd;  
wire 			  error_finish;
wire [3:0]  error_number;
wire        e8;
wire [3:0]  e_sum_r;
wire [15:0] err_index;
wire		    enable_cs;
wire [3:0]  serr;
wire [12:0] Lout;

syndrome u_syndrome (

				 .clk(clk),
	      .reset(rst_n));
		 
        .r0(r[0]), 
        .r1(r[1]), 
        .r2(r[2]), 
        .r3(r[3]), 
        .r4(r[4]), 
        .r5(r[5]), 
        .r6(r[6]), 
        .r7(r[7]), 
        .r8(r[8]), 
        .r9(r[9]), 
        .r10(r[10]), 
        .r11(r[11]), 
        .r12(r[12]), 
        .r13(r[13]), 
        .r14(r[14]), 
        .r15(r[15]), 
        .r16(r[16]), 
        .r17(r[17]), 
        .r18(r[18]), 
        .r19(r[19]), 
        .r20(r[20]), 
        .r21(r[21]), 
        .r22(r[22]), 
        .r23(r[23]), 
        .r24(r[24]), 
        .r25(r[25]), 
        .r26(r[26]), 
        .r27(r[27]), 
        .r28(r[28]), 
        .r29(r[29]), 
        .r30(r[30]), 
        .r31(r[31]), 
        
	      .S1(S1),
	      .S2(S2),
	      .S3(S3),
	      .S4(S4),
	      .S5(S5),
	      .S6(S6),
	      .S7(S7),
	      .S8(S8),
	      .S9(S9),
	      .S10(S10),
	      .S11(S11),
	      .S12(S12),
	      .S13(S13),
	      .S14(S14),
	      .S15(S15),
	      .S16(S16));
	      
correct_module_4cells_p16  eculid_chien(
				 .rstn(rst_n),
	       .clk(clk),
				 .start(eculid_start),
         .gsynd(gsynd),
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
				.enable_cs(enable_cs));
	      
	      
	      


endmodule