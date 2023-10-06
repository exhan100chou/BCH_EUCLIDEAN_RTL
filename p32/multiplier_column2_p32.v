module multiplier_column2_p32(b,P1,P2,P3,P4,P5,P6,P7,P8); //P[12:0]P1,P[25:13]P2,.....P[415:403]P32

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


assign BBM1=BBM19^BBM65;
assign BBM2=BBM20^b[0]^b[9];
assign BBM4=BBM43^BBM63;
assign BBM5=BBM44^BBM70;
assign BBM6=BBM47^BBM66;
assign BBM10=BBM54^BBM57;
assign BBM11=BBM58^BBM59;
assign BBM12=BBM37^b[8];
assign BBM13=BBM60^BBM62;
assign BBM14=BBM39^b[6];
assign BBM16=BBM41^b[4];
assign BBM19=BBM67^BBM68;
assign BBM20=BBM55^b[3]^b[4];
assign BBM28=BBM48^b[6];
assign BBM36=BBM53^b[2];
assign BBM37=BBM53^b[9];
assign BBM38=BBM55^b[10];
assign BBM39=BBM57^b[7];
assign BBM41=BBM59^b[5];
assign BBM43=BBM56^b[4];
assign BBM44=BBM62^b[3];
assign BBM48=BBM60^b[11];
assign BBM3=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM7=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM8=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM9=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM15=b[0]^b[9]^b[10]^b[12];
assign BBM17=b[7]^b[8]^b[10]^b[11];
assign BBM18=b[8]^b[9]^b[11]^b[12];
assign BBM21=b[5]^b[6]^b[8]^b[9];
assign BBM22=b[6]^b[7]^b[9]^b[10];
assign BBM23=b[0]^b[9]^b[10]^b[12];
assign BBM24=b[8]^b[9]^b[11]^b[12];
assign BBM25=b[4]^b[5]^b[7]^b[8];
assign BBM26=b[7]^b[8]^b[10]^b[11];
assign BBM27=b[6]^b[7]^b[9]^b[10];
assign BBM29=b[5]^b[6]^b[8]^b[9];
assign BBM30=b[0]^b[9]^b[10]^b[12];
assign BBM31=b[4]^b[5]^b[7]^b[8];
assign BBM32=b[7]^b[8]^b[10]^b[11];
assign BBM33=b[8]^b[9]^b[11]^b[12];
assign BBM34=b[5]^b[6]^b[8]^b[9];
assign BBM35=b[6]^b[7]^b[9]^b[10];
assign BBM40=b[2]^b[11]^b[12];
assign BBM42=b[1]^b[10]^b[11];
assign BBM45=b[2]^b[11]^b[12];
assign BBM46=b[1]^b[10]^b[11];
assign BBM47=b[0]^b[8]^b[10];
assign BBM49=b[7]^b[9]^b[10];
assign BBM50=b[1]^b[10]^b[11];
assign BBM51=b[2]^b[11]^b[12];
assign BBM52=b[1]^b[10]^b[11];
assign BBM53=b[11]^b[12];
assign BBM54=b[0]^b[12];
assign BBM55=b[1]^b[11];
assign BBM56=b[3]^b[12];
assign BBM57=b[9]^b[10];
assign BBM58=b[10]^b[11];
assign BBM59=b[7]^b[8];
assign BBM60=b[8]^b[9];
assign BBM61=b[3]^b[12];
assign BBM62=b[5]^b[6];
assign BBM63=b[6]^b[7];
assign BBM64=b[3]^b[12];
assign BBM65=b[4]^b[5];
assign BBM66=b[2]^b[3];
assign BBM67=b[10]^b[12];
assign BBM68=b[1]^b[2];
assign BBM69=b[7]^b[9];
assign BBM70=b[2]^b[11];
assign BBM71=b[0]^b[12];
assign BBM72=b[8]^b[9];
assign BBM73=b[7]^b[8];
assign BBM74=b[5]^b[6];
assign BBM75=b[1]^b[11];
assign BBM76=b[3]^b[12];
assign BBM77=b[8]^b[9];
assign BBM78=b[3]^b[12];
assign BBM79=b[11];

assign P[1]=BBM53;
assign P[2]=BBM54;
assign P[3]=BBM55;
assign P[4]=BBM36;
assign P[5]=BBM56;
assign P[14]=BBM57;
assign P[15]=BBM58;
assign P[16]=BBM37;
assign P[17]=BBM10;
assign P[18]=BBM38;
assign P[19]=BBM36;
assign P[20]=BBM56;
assign P[27]=BBM59;
assign P[28]=BBM60;
assign P[29]=BBM39;
assign P[30]=BBM11;
assign P[31]=BBM12;
assign P[32]=BBM10;
assign P[33]=BBM38;
assign P[34]=BBM36;
assign P[35]=BBM56;
assign P[40]=BBM62;
assign P[41]=BBM63;
assign P[42]=BBM41;
assign P[43]=BBM13;
assign P[44]=BBM14;
assign P[45]=BBM11;
assign P[46]=BBM12;
assign P[47]=BBM10;
assign P[48]=BBM38;
assign P[49]=BBM36;
assign P[50]=BBM56;
assign P[52]=BBM56;
assign P[53]=BBM43;
assign P[54]=BBM65;
assign P[55]=BBM44^b[12];
assign P[56]=BBM4;
assign P[57]=BBM16;
assign P[58]=BBM13;
assign P[59]=BBM14;
assign P[60]=BBM11;
assign P[61]=BBM12;
assign P[62]=BBM10;
assign P[63]=BBM38;
assign P[64]=BBM36;
assign P[65]=BBM38;
assign P[66]=BBM19;
assign P[67]=BBM66^b[11];
assign P[68]=BBM20^BBM67;
assign P[69]=BBM1;
assign P[70]=BBM5;
assign P[71]=BBM4;
assign P[72]=BBM16;
assign P[73]=BBM13;
assign P[74]=BBM14;
assign P[75]=BBM11;
assign P[76]=BBM12;
assign P[77]=BBM10;
assign P[78]=BBM12;
assign P[79]=BBM47^b[11];
assign P[80]=BBM37^b[0]^b[1];
assign P[81]=BBM38^BBM60^b[2];
assign P[82]=BBM6;
assign P[83]=BBM2;
assign P[84]=BBM1;
assign P[85]=BBM5;
assign P[86]=BBM4;
assign P[87]=BBM16;
assign P[88]=BBM13;
assign P[89]=BBM14;
assign P[90]=BBM11;
assign P[91]=BBM14;
assign P[92]=BBM28;
assign P[93]=BBM39^b[12];
assign P[94]=BBM28^b[0]^b[7];
assign P[95]=BBM54^b[1]^b[6]^b[8];
assign P[96]=BBM68^BBM69;
assign P[97]=BBM6;
assign P[98]=BBM2;
assign P[99]=BBM1;
assign P[100]=BBM5;
assign P[101]=BBM4;
assign P[102]=BBM16;
assign P[103]=BBM13;
assign P[0]=b[11];
assign P[6]=b[4];
assign P[7]=b[5];
assign P[8]=b[6];
assign P[9]=b[7];
assign P[10]=b[8];
assign P[11]=b[9];
assign P[12]=b[10];
assign P[13]=b[9];
assign P[21]=b[4];
assign P[22]=b[5];
assign P[23]=b[6];
assign P[24]=b[7];
assign P[25]=b[8];
assign P[26]=b[7];
assign P[36]=b[4];
assign P[37]=b[5];
assign P[38]=b[6];
assign P[39]=b[5];
assign P[51]=b[4];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];







endmodule
