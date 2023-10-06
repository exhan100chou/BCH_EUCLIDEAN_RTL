module multiplier_column3_p32(b,P1,P2,P3,P4,P5,P6,P7,P8);

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

assign BBM1=BBM9^b[9];
assign BBM2=BBM23^b[4];
assign BBM3=BBM30^BBM71;
assign BBM4=BBM21^b[0];
assign BBM5=BBM59^BBM79^b[0];
assign BBM7=BBM42^BBM78;
assign BBM9=BBM23^b[7];
assign BBM11=BBM56^BBM72;
assign BBM12=BBM53^BBM68;
assign BBM13=BBM60^b[0]^b[3];
assign BBM14=BBM39^b[11];
assign BBM15=BBM58^b[1]^b[6];
assign BBM18=BBM60^BBM79;
assign BBM19=BBM59^BBM76;
assign BBM21=BBM52^b[1]^b[8];
assign BBM23=BBM50^BBM68;
assign BBM24=BBM57^b[11];
assign BBM25=BBM67^BBM70;
assign BBM26=BBM49^b[9];
assign BBM27=BBM69^BBM71;
assign BBM28=BBM70^BBM72;
assign BBM29=BBM52^b[6];
assign BBM30=BBM61^b[2];
assign BBM34=BBM62^b[0];
assign BBM35=BBM80^b[2]^b[7];
assign BBM39=BBM53^b[9];
assign BBM40=BBM82^BBM83;
assign BBM41=BBM74^b[0]^b[11];
assign BBM42=BBM51^b[4];
assign BBM49=BBM82^b[0];
assign BBM50=BBM66^b[1];
assign BBM51=BBM67^b[2];
assign BBM52=BBM85^b[10];
assign BBM53=BBM83^b[7];
assign BBM56=BBM81^b[2];
assign BBM57=BBM69^b[10];
assign BBM59=BBM75^b[3];
assign BBM60=BBM78^b[2];
assign BBM61=BBM82^b[1];
assign BBM62=BBM66^b[8];
assign BBM63=BBM77^b[7];
assign BBM6=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM8=b[0]^b[1]^b[3]^b[4]^b[9]^b[11];
assign BBM10=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM16=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM17=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM20=b[0]^b[2]^b[3]^b[8]^b[10];
assign BBM22=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM31=b[7]^b[8]^b[10]^b[11];
assign BBM32=b[8]^b[9]^b[11]^b[12];
assign BBM33=b[0]^b[9]^b[10]^b[12];
assign BBM36=b[4]^b[5]^b[7]^b[8];
assign BBM37=b[5]^b[6]^b[8]^b[9];
assign BBM38=b[6]^b[7]^b[9]^b[10];
assign BBM43=b[1]^b[2]^b[7]^b[9];
assign BBM44=b[4]^b[6]^b[10]^b[12];
assign BBM45=b[0]^b[5]^b[7]^b[11];
assign BBM46=b[7]^b[8]^b[10]^b[11];
assign BBM47=b[4]^b[5]^b[7]^b[8];
assign BBM48=b[1]^b[2]^b[7]^b[9];
assign BBM54=b[1]^b[10]^b[11];
assign BBM55=b[2]^b[11]^b[12];
assign BBM58=b[0]^b[8]^b[12];
assign BBM64=b[1]^b[10]^b[11];
assign BBM65=b[2]^b[11]^b[12];
assign BBM66=b[10]^b[11];
assign BBM67=b[11]^b[12];
assign BBM68=b[3]^b[12];
assign BBM69=b[7]^b[8];
assign BBM70=b[8]^b[9];
assign BBM71=b[4]^b[5];
assign BBM72=b[5]^b[6];
assign BBM73=b[3]^b[12];
assign BBM74=b[5]^b[7];
assign BBM75=b[9]^b[11];
assign BBM76=b[5]^b[12];
assign BBM77=b[6]^b[9];
assign BBM78=b[8]^b[10];
assign BBM79=b[1]^b[4];
assign BBM80=b[1]^b[9];
assign BBM81=b[3]^b[11];
assign BBM82=b[10]^b[12];
assign BBM83=b[4]^b[6];
assign BBM84=b[4]^b[5];
assign BBM85=b[7]^b[9];
assign BBM86=b[8]^b[10];
assign BBM87=b[1]^b[10];
assign BBM88=b[11]^b[12];
assign BBM89=b[3]^b[12];
assign BBM90=b[10];

assign P[1]=BBM66;
assign P[2]=BBM67;
assign P[3]=BBM49;
assign P[4]=BBM50;
assign P[5]=BBM51;
assign P[6]=BBM68;
assign P[14]=BBM69;
assign P[15]=BBM70;
assign P[16]=BBM52;
assign P[17]=BBM24;
assign P[18]=BBM25;
assign P[19]=BBM26;
assign P[20]=BBM50;
assign P[21]=BBM51;
assign P[22]=BBM68;
assign P[27]=BBM71;
assign P[28]=BBM72;
assign P[29]=BBM53;
assign P[30]=BBM27;
assign P[31]=BBM28;
assign P[32]=BBM29;
assign P[33]=BBM24;
assign P[34]=BBM25;
assign P[35]=BBM26;
assign P[36]=BBM50;
assign P[37]=BBM51;
assign P[38]=BBM68;
assign P[39]=BBM50;
assign P[40]=BBM30;
assign P[41]=BBM56;
assign P[42]=BBM2;
assign P[43]=BBM3;
assign P[44]=BBM11;
assign P[45]=BBM12;
assign P[46]=BBM27;
assign P[47]=BBM28;
assign P[48]=BBM29;
assign P[49]=BBM24;
assign P[50]=BBM25;
assign P[51]=BBM26;
assign P[52]=BBM24;
assign P[53]=BBM52^b[12];
assign P[54]=BBM34;
assign P[55]=BBM4^b[12];
assign P[56]=BBM35;
assign P[57]=BBM13;
assign P[58]=BBM5;
assign P[59]=BBM3;
assign P[60]=BBM11;
assign P[61]=BBM12;
assign P[62]=BBM27;
assign P[63]=BBM28;
assign P[64]=BBM29;
assign P[65]=BBM27;
assign P[66]=BBM39;
assign P[67]=BBM57^b[5];
assign P[68]=BBM14^b[5];
assign P[69]=BBM40;
assign P[70]=BBM41;
assign P[71]=BBM15;
assign P[72]=BBM35;
assign P[73]=BBM13;
assign P[74]=BBM5;
assign P[75]=BBM3;
assign P[76]=BBM11;
assign P[77]=BBM12;
assign P[78]=BBM3;
assign P[79]=BBM2^b[6];
assign P[80]=BBM42^BBM74;
assign P[81]=BBM18^b[3]^b[6];
assign P[82]=BBM1;
assign P[83]=BBM7;
assign P[84]=BBM19;
assign P[85]=BBM40;
assign P[86]=BBM41;
assign P[87]=BBM15;
assign P[88]=BBM35;
assign P[89]=BBM13;
assign P[90]=BBM5;
assign P[91]=BBM35;
assign P[92]=BBM4^b[3];
assign P[93]=BBM18^BBM75;
assign P[94]=BBM9^b[0]^b[5];
assign P[95]=BBM14^BBM58;
assign P[96]=BBM21^BBM76;
assign P[97]=BBM34^BBM77^b[2];
assign P[98]=BBM1;
assign P[99]=BBM7;
assign P[100]=BBM19;
assign P[101]=BBM40;
assign P[102]=BBM41;
assign P[103]=BBM15;
assign P[0]=b[10];
assign P[7]=b[4];
assign P[8]=b[5];
assign P[9]=b[6];
assign P[10]=b[7];
assign P[11]=b[8];
assign P[12]=b[9];
assign P[13]=b[7];
assign P[23]=b[4];
assign P[24]=b[5];
assign P[25]=b[6];
assign P[26]=b[4];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];










endmodule
