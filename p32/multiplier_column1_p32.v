
module multiplier_column1_p32(b,P1,P2,P3,P4,P5,P6,P7,P8);

input [12:0]b;
output [12:0]P1,P2,P3,P4,P5,P6,P7,P8; 

//wire[415:0]P;

wire	[415:0]P;

wire BBM1,BBM2,BBM3,BBM4,BBM5,BBM6,BBM7,BBM8,BBM9,BBM10,
BBM11,BBM12,BBM13,BBM14,BBM15,BBM16,BBM17,BBM18,BBM19,BBM20,
BBM21,BBM22,BBM23,BBM24,BBM25,BBM26,BBM27,BBM28,BBM29,BBM30,
BBM31,BBM32,BBM33,BBM34,BBM35,BBM36,BBM37,BBM38,BBM39,BBM40,
BBM41,BBM42,BBM43,BBM44,BBM45,BBM46,BBM47,BBM48,BBM49,BBM50,
BBM51,BBM52,BBM53,BBM54,BBM55,BBM56,BBM57,BBM58,BBM59,BBM60,
BBM61,BBM62,BBM63,BBM64,BBM65,BBM66,BBM67,BBM68,BBM69,BBM70,
BBM71,BBM72,BBM73,BBM74,BBM75,BBM76,BBM77,BBM78,BBM79,BBM80,
BBM81,BBM82,BBM83,BBM84,BBM85,BBM86,BBM87,BBM88,BBM89,BBM90,
BBM91,BBM92,BBM93,BBM94,BBM95,BBM96,BBM97,BBM98,BBM99,BBM100,
BBM101,BBM102,BBM103,BBM104;


assign BBM1=BBM12^b[9];
assign BBM2=BBM14^b[8];
assign BBM3=BBM16^b[7];
assign BBM5=BBM18^b[6];
assign BBM11=BBM28^b[11];
assign BBM12=BBM27^b[10];
assign BBM13=BBM31^b[10];
assign BBM14=BBM30^b[9];
assign BBM16=BBM32^b[8];
assign BBM18=BBM34^b[7];
assign BBM20=BBM35^b[6];
assign BBM0=BBM0^BBM0;
assign BBM4=b[0]^b[9]^b[10]^b[12];
assign BBM6=b[8]^b[9]^b[11]^b[12];
assign BBM7=b[7]^b[8]^b[10]^b[11];
assign BBM8=b[0]^b[9]^b[10]^b[12];
assign BBM9=b[8]^b[9]^b[11]^b[12];
assign BBM10=b[0]^b[9]^b[10]^b[12];
assign BBM15=b[2]^b[11]^b[12];
assign BBM17=b[1]^b[10]^b[11];
assign BBM19=b[2]^b[11]^b[12];
assign BBM21=b[1]^b[10]^b[11];
assign BBM22=b[2]^b[11]^b[12];
assign BBM23=b[1]^b[10]^b[11];
assign BBM24=b[2]^b[11]^b[12];
assign BBM25=b[1]^b[10]^b[11];
assign BBM26=b[2]^b[11]^b[12];
assign BBM27=b[0]^b[12];
assign BBM28=b[2]^b[12];
assign BBM29=b[3]^b[12];
assign BBM30=b[11]^b[12];
assign BBM31=b[1]^b[11];
assign BBM32=b[10]^b[11];
assign BBM33=b[3]^b[12];
assign BBM34=b[9]^b[10];
assign BBM35=b[8]^b[9];
assign BBM36=b[3]^b[12];
assign BBM37=b[7]^b[8];
assign BBM38=b[6]^b[7];
assign BBM39=b[3]^b[12];
assign BBM40=b[7]^b[8];
assign BBM41=b[0]^b[12];
assign BBM42=b[11]^b[12];
assign BBM43=b[10]^b[11];
assign BBM44=b[9]^b[10];
assign BBM45=b[8]^b[9];
assign BBM46=b[3]^b[12];
assign BBM47=b[3]^b[12];
assign BBM48=b[3]^b[12];
assign BBM49=b[12];

assign P[1]=BBM27;
assign P[3]=BBM28;
assign P[4]=BBM29;
assign P[14]=BBM30;
assign P[15]=BBM27;
assign P[16]=BBM31;
assign P[17]=BBM11;
assign P[18]=BBM29;
assign P[27]=BBM32;
assign P[28]=BBM30;
assign P[29]=BBM12;
assign P[30]=BBM13;
assign P[31]=BBM11;
assign P[32]=BBM29;
assign P[40]=BBM34;
assign P[41]=BBM32;
assign P[42]=BBM14;
assign P[43]=BBM1;
assign P[44]=BBM13;
assign P[45]=BBM11;
assign P[46]=BBM29;
assign P[53]=BBM35;
assign P[54]=BBM34;
assign P[55]=BBM16;
assign P[56]=BBM2;
assign P[57]=BBM1;
assign P[58]=BBM13;
assign P[59]=BBM11;
assign P[60]=BBM29;
assign P[66]=BBM37;
assign P[67]=BBM35;
assign P[68]=BBM18;
assign P[69]=BBM3;
assign P[70]=BBM2;
assign P[71]=BBM1;
assign P[72]=BBM13;
assign P[73]=BBM11;
assign P[74]=BBM29;
assign P[79]=BBM38;
assign P[80]=BBM37;
assign P[81]=BBM20;
assign P[82]=BBM5;
assign P[83]=BBM3;
assign P[84]=BBM2;
assign P[85]=BBM1;
assign P[86]=BBM13;
assign P[87]=BBM11;
assign P[88]=BBM29;
assign P[93]=BBM38;
assign P[94]=BBM37^b[5];
assign P[95]=BBM20^b[5];
assign P[96]=BBM5;
assign P[97]=BBM3;
assign P[98]=BBM2;
assign P[99]=BBM1;
assign P[100]=BBM13;
assign P[101]=BBM11;
assign P[102]=BBM29;
assign P[0]=b[12];
assign P[2]=b[1];
assign P[5]=b[4];
assign P[6]=b[5];
assign P[7]=b[6];
assign P[8]=b[7];
assign P[9]=b[8];
assign P[10]=b[9];
assign P[11]=b[10];
assign P[12]=b[11];
assign P[13]=b[11];
assign P[19]=b[4];
assign P[20]=b[5];
assign P[21]=b[6];
assign P[22]=b[7];
assign P[23]=b[8];
assign P[24]=b[9];
assign P[25]=b[10];
assign P[26]=b[10];
assign P[33]=b[4];
assign P[34]=b[5];
assign P[35]=b[6];
assign P[36]=b[7];
assign P[37]=b[8];
assign P[38]=b[9];
assign P[39]=b[9];
assign P[47]=b[4];
assign P[48]=b[5];
assign P[49]=b[6];
assign P[50]=b[7];
assign P[51]=b[8];
assign P[52]=b[8];
assign P[61]=b[4];
assign P[62]=b[5];
assign P[63]=b[6];
assign P[64]=b[7];
assign P[65]=b[7];
assign P[75]=b[4];
assign P[76]=b[5];
assign P[77]=b[6];
assign P[78]=b[6];
assign P[89]=b[4];
assign P[90]=b[5];
assign P[91]=b[5];
assign P[92]=b[5]^b[6];
assign P[103]=b[4];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];








endmodule



