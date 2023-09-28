module chien_search_p16_t8(lambda0,lambda1,lambda2,lambda3,lambda4,
                           lambda5,lambda6,lambda7,lambda8,//inputs
					  enable,
       sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,
	  sigma9,sigma10,sigma11,sigma12,sigma13,sigma14,sigma15,sigma16,//outputs
	  sel,clk,reset);//~~~~~~~~~~~~~~~~~~~~~~


input [12:0]lambda0,lambda1,lambda2,lambda3,lambda4,lambda5,lambda6,lambda7,lambda8;
input sel,clk,reset;
input enable;

output [12:0]sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,
             sigma9,sigma10,sigma11,sigma12,sigma13,sigma14,sigma15,sigma16;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~`

reg [12:0]sigma1,sigma2,sigma3,sigma4,sigma5,sigma6,sigma7,sigma8,
          sigma9,sigma10,sigma11,sigma12,sigma13,sigma14,sigma15,sigma16;
//reg [12:0]d0,d1,d2,d3,d4,d5,d6,d7,d8;

wire [12:0]col0,col1,col2,col3,col4,col5,col6,col7,col8;
wire [12:0]L1_1,L1_2,L1_3,L1_4,L1_5,L1_6,L1_7,L1_8,
L2_1,L2_2,L2_3,L2_4,L2_5,L2_6,L2_7,L2_8,
L3_1,L3_2,L3_3,L3_4,L3_5,L3_6,L3_7,L3_8,
L4_1,L4_2,L4_3,L4_4,L4_5,L4_6,L4_7,L4_8,
L5_1,L5_2,L5_3,L5_4,L5_5,L5_6,L5_7,L5_8,
L6_1,L6_2,L6_3,L6_4,L6_5,L6_6,L6_7,L6_8,
L7_1,L7_2,L7_3,L7_4,L7_5,L7_6,L7_7,L7_8,
L8_1,L8_2,L8_3,L8_4,L8_5,L8_6,L8_7,L8_8,
L9_1,L9_2,L9_3,L9_4,L9_5,L9_6,L9_7,L9_8,
L10_1,L10_2,L10_3,L10_4,L10_5,L10_6,L10_7,L10_8,
L11_1,L11_2,L11_3,L11_4,L11_5,L11_6,L11_7,L11_8,
L12_1,L12_2,L12_3,L12_4,L12_5,L12_6,L12_7,L12_8,
L13_1,L13_2,L13_3,L13_4,L13_5,L13_6,L13_7,L13_8,
L14_1,L14_2,L14_3,L14_4,L14_5,L14_6,L14_7,L14_8,
L15_1,L15_2,L15_3,L15_4,L15_5,L15_6,L15_7,L15_8,
L16_1,L16_2,L16_3,L16_4,L16_5,L16_6,L16_7,L16_8;


wire [12:0]line1,line2,line3,line4,line5,line6,line7,line8;

   multiply_3967 m1(.a(lambda1),.c(line1));
   multiply_7934 m2(.a(lambda2),.c(line2));
   multiply_3710 m3(.a(lambda3),.c(line3));
   multiply_7677 m4(.a(lambda4),.c(line4));
   multiply_3453 m5(.a(lambda5),.c(line5));
   multiply_7420 m6(.a(lambda6),.c(line6));
   multiply_3196 m7(.a(lambda7),.c(line7));
   multiply_7163 m8(.a(lambda8),.c(line8));
   
   
   
   mux13_13 mmm0(.a(lambda0),.b(col0/*d0*/),.sel(sel),.enable(enable) ,.out(col0),.clk(clk),.reset(reset));
   mux13_13 mmm1(.a(line1),.b(L16_1/*d1*/),.sel(sel),.enable(enable) ,.out(col1),.clk(clk),.reset(reset));
   mux13_13 mmm2(.a(line2),.b(L16_2/*d2*/),.sel(sel),.enable(enable) ,.out(col2),.clk(clk),.reset(reset));
   mux13_13 mmm3(.a(line3),.b(L16_3/*d3*/),.sel(sel),.enable(enable) ,.out(col3),.clk(clk),.reset(reset));
   mux13_13 mmm4(.a(line4),.b(L16_4/*d4*/),.sel(sel),.enable(enable) ,.out(col4),.clk(clk),.reset(reset));
   mux13_13 mmm5(.a(line5),.b(L16_5/*d5*/),.sel(sel),.enable(enable) ,.out(col5),.clk(clk),.reset(reset));
   mux13_13 mmm6(.a(line6),.b(L16_6/*d6*/),.sel(sel),.enable(enable) ,.out(col6),.clk(clk),.reset(reset));
   mux13_13 mmm7(.a(line7),.b(L16_7/*d7*/),.sel(sel),.enable(enable) ,.out(col7),.clk(clk),.reset(reset));
   mux13_13 mmm8(.a(line8),.b(L16_8/*d8*/),.sel(sel),.enable(enable) ,.out(col8),.clk(clk),.reset(reset));

  multiplier_column1_p16 c1(.b(col1),

.P1(L1_1),.P2(L2_1),.P3(L3_1),.P4(L4_1),.P5(L5_1),
.P6(L6_1),.P7(L7_1),.P8(L8_1),.P9(L9_1),.P10(L10_1),
.P11(L11_1),.P12(L12_1),.P13(L13_1),.P14(L14_1),.P15(L15_1),
.P16(L16_1));

 multiplier_column2_p16 c2(.b(col2),

.P1(L1_2),.P2(L2_2),.P3(L3_2),.P4(L4_2),.P5(L5_2),
.P6(L6_2),.P7(L7_2),.P8(L8_2),.P9(L9_2),.P10(L10_2),
.P11(L11_2),.P12(L12_2),.P13(L13_2),.P14(L14_2),.P15(L15_2),
.P16(L16_2));

 multiplier_column3_p16 c3(.b(col3),

.P1(L1_3),.P2(L2_3),.P3(L3_3),.P4(L4_3),.P5(L5_3),
.P6(L6_3),.P7(L7_3),.P8(L8_3),.P9(L9_3),.P10(L10_3),
.P11(L11_3),.P12(L12_3),.P13(L13_3),.P14(L14_3),.P15(L15_3),
.P16(L16_3));

 multiplier_column4_p16 c4(.b(col4),

.P1(L1_4),.P2(L2_4),.P3(L3_4),.P4(L4_4),.P5(L5_4),
.P6(L6_4),.P7(L7_4),.P8(L8_4),.P9(L9_4),.P10(L10_4),
.P11(L11_4),.P12(L12_4),.P13(L13_4),.P14(L14_4),.P15(L15_4),
.P16(L16_4));

 multiplier_column5_p16 c5(.b(col5),

.P1(L1_5),.P2(L2_5),.P3(L3_5),.P4(L4_5),.P5(L5_5),
.P6(L6_5),.P7(L7_5),.P8(L8_5),.P9(L9_5),.P10(L10_5),
.P11(L11_5),.P12(L12_5),.P13(L13_5),.P14(L14_5),.P15(L15_5),
.P16(L16_5));

 multiplier_column6_p16 c6(.b(col6),

.P1(L1_6),.P2(L2_6),.P3(L3_6),.P4(L4_6),.P5(L5_6),
.P6(L6_6),.P7(L7_6),.P8(L8_6),.P9(L9_6),.P10(L10_6),
.P11(L11_6),.P12(L12_6),.P13(L13_6),.P14(L14_6),.P15(L15_6),
.P16(L16_6));

 multiplier_column7_p16 c7(.b(col7),

.P1(L1_7),.P2(L2_7),.P3(L3_7),.P4(L4_7),.P5(L5_7),
.P6(L6_7),.P7(L7_7),.P8(L8_7),.P9(L9_7),.P10(L10_7),
.P11(L11_7),.P12(L12_7),.P13(L13_7),.P14(L14_7),.P15(L15_7),
.P16(L16_7));

 multiplier_column8_p16 c8(.b(col8),

.P1(L1_8),.P2(L2_8),.P3(L3_8),.P4(L4_8),.P5(L5_8),
.P6(L6_8),.P7(L7_8),.P8(L8_8),.P9(L9_8),.P10(L10_8),
.P11(L11_8),.P12(L12_8),.P13(L13_8),.P14(L14_8),.P15(L15_8),
.P16(L16_8));







always@(posedge clk or negedge reset)
begin
	

	if(!reset)
	begin
	  /*d0<= #1 13'b0;
	  d1<= #1 13'b0;
	  d2<= #1 13'b0;
	  d3<= #1 13'b0;
	  d4<= #1 13'b0;
	  d5<= #1 13'b0;
	  d6<= #1 13'b0;
	  d7<= #1 13'b0;
	  d8<= #1 13'b0;*/

	  sigma1<= #1 13'b0;
	  sigma2<= #1 13'b0;
	  sigma3<= #1 13'b0;
	  sigma4<= #1 13'b0;
	  sigma5<= #1 13'b0;
	  sigma6<= #1 13'b0;
	  sigma7<= #1 13'b0;
	  sigma8<= #1 13'b0;
	  sigma9<= #1 13'b0;
	  sigma10<= #1 13'b0;
	  
	  sigma11<= #1 13'b0;
	  sigma12<= #1 13'b0;
	  sigma13<= #1 13'b0;
	  sigma14<= #1 13'b0;
	  sigma15<= #1 13'b0;
	  sigma16<= #1 13'b0;

	  
	end
	else if( enable)
	begin 
/*	d0<= #1 col0;
	d1<= #1 L32_1;
	d2<= #1 L32_2;
	d3<= #1 L32_3;
	d4<= #1 L32_4;
	d5<= #1 L32_5;
	d6<= #1 L32_6;
	d7<= #1 L32_7;
	d8<= #1 L32_8;  */
 
 sigma1<= #1 col0^L1_1^L1_2^L1_3^L1_4^L1_5^L1_6^L1_7^L1_8;
 sigma2<= #1 col0^L2_1^L2_2^L2_3^L2_4^L2_5^L2_6^L2_7^L2_8;
 sigma3<= #1 col0^L3_1^L3_2^L3_3^L3_4^L3_5^L3_6^L3_7^L3_8;
 sigma4<= #1 col0^L4_1^L4_2^L4_3^L4_4^L4_5^L4_6^L4_7^L4_8;
 sigma5<= #1 col0^L5_1^L5_2^L5_3^L5_4^L5_5^L5_6^L5_7^L5_8;
 sigma6<= #1 col0^L6_1^L6_2^L6_3^L6_4^L6_5^L6_6^L6_7^L6_8;
 sigma7<= #1 col0^L7_1^L7_2^L7_3^L7_4^L7_5^L7_6^L7_7^L7_8;
 sigma8<= #1 col0^L8_1^L8_2^L8_3^L8_4^L8_5^L8_6^L8_7^L8_8;
 sigma9<= #1 col0^L9_1^L9_2^L9_3^L9_4^L9_5^L9_6^L9_7^L9_8;
 sigma10<= #1 col0^L10_1^L10_2^L10_3^L10_4^L10_5^L10_6^L10_7^L10_8;
 sigma11<= #1 col0^L11_1^L11_2^L11_3^L11_4^L11_5^L11_6^L11_7^L11_8;
 sigma12<= #1 col0^L12_1^L12_2^L12_3^L12_4^L12_5^L12_6^L12_7^L12_8;
 sigma13<= #1 col0^L13_1^L13_2^L13_3^L13_4^L13_5^L13_6^L13_7^L13_8;
 sigma14<= #1 col0^L14_1^L14_2^L14_3^L14_4^L14_5^L14_6^L14_7^L14_8;
 sigma15<= #1 col0^L15_1^L15_2^L15_3^L15_4^L15_5^L15_6^L15_7^L15_8;
 sigma16<= #1 col0^L16_1^L16_2^L16_3^L16_4^L16_5^L16_6^L16_7^L16_8;
 
	end


end

endmodule