module multiplier_column4_p32(b,P1,P2,P3,P4,P5,P6,P7,P8);

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

assign BBM1=BBM8^BBM65;
assign BBM2=BBM19^BBM66;
assign BBM3=BBM14^BBM86;
assign BBM4=BBM14^b[6];
assign BBM5=BBM36^BBM67;
assign BBM6=BBM22^b[2]^b[6];
assign BBM8=BBM37^b[0]^b[12];
assign BBM9=BBM49^BBM80^b[1];
assign BBM10=BBM26^BBM87;
assign BBM11=BBM22^b[7];
assign BBM12=BBM37^b[6]^b[8];
assign BBM14=BBM44^BBM85^b[0];
assign BBM15=BBM36^b[1];
assign BBM16=BBM55^b[1]^b[3];
assign BBM17=BBM33^b[12];
assign BBM19=BBM56^BBM90;
assign BBM20=BBM53^BBM91;
assign BBM22=BBM23^b[9];
assign BBM23=BBM59^BBM76;
assign BBM24=BBM56^b[2];
assign BBM25=BBM64^BBM85;
assign BBM26=BBM48^b[0];
assign BBM27=BBM66^b[0]^b[6];
assign BBM28=BBM79^BBM81^b[8];
assign BBM30=BBM68^BBM94;
assign BBM31=BBM58^b[3]^b[5];
assign BBM32=BBM69^BBM93;
assign BBM33=BBM65^BBM75;
assign BBM36=BBM63^b[4]^b[5];
assign BBM37=BBM68^b[3]^b[10];
assign BBM40=BBM71^b[0];
assign BBM41=BBM77^BBM96;
assign BBM42=BBM67^b[10];
assign BBM43=BBM75^BBM89;
assign BBM44=BBM58^b[8];
assign BBM45=BBM61^b[4];
assign BBM48=BBM70^b[6];
assign BBM49=BBM71^b[7];
assign BBM50=BBM69^b[2];
assign BBM52=BBM83^BBM91;
assign BBM53=BBM68^b[0];
assign BBM55=BBM90^b[0]^b[11];
assign BBM56=BBM77^b[3]^b[11];
assign BBM58=BBM98^b[9];
assign BBM59=BBM75^b[1];
assign BBM60=BBM98^b[2];
assign BBM61=BBM80^b[7];
assign BBM63=BBM87^b[12];
assign BBM64=BBM76^b[6];
assign BBM65=BBM94^b[8];
assign BBM67=BBM78^b[9];
assign BBM68=BBM97^b[7];
assign BBM69=BBM82^b[7];
assign BBM70=BBM96^b[11];
assign BBM71=BBM74^b[12];
assign BBM7=b[0]^b[4]^b[6]^b[7]^b[8]^b[9]^b[11]^b[12];
assign BBM13=b[1]^b[5]^b[7]^b[8]^b[9]^b[10]^b[12];
assign BBM18=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM21=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM29=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM34=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM35=b[3]^b[5]^b[9]^b[11]^b[12];
assign BBM38=b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM39=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM46=b[0]^b[9]^b[10]^b[12];
assign BBM47=b[6]^b[7]^b[9]^b[10];
assign BBM51=b[5]^b[6]^b[8]^b[9];
assign BBM54=b[1]^b[2]^b[7]^b[9];
assign BBM57=b[0]^b[5]^b[7]^b[11];
assign BBM62=b[1]^b[10]^b[11];
assign BBM66=b[1]^b[8]^b[12];
assign BBM72=b[5]^b[7]^b[11];
assign BBM73=b[1]^b[10]^b[11];
assign BBM74=b[9]^b[10];
assign BBM75=b[10]^b[11];
assign BBM76=b[3]^b[12];
assign BBM77=b[5]^b[6];
assign BBM78=b[6]^b[7];
assign BBM79=b[2]^b[3];
assign BBM80=b[5]^b[8];
assign BBM81=b[0]^b[10];
assign BBM82=b[1]^b[9];
assign BBM83=b[4]^b[10];
assign BBM84=b[3]^b[6];
assign BBM85=b[4]^b[7];
assign BBM86=b[1]^b[10];
assign BBM87=b[2]^b[10];
assign BBM88=b[5]^b[8];
assign BBM89=b[7]^b[8];
assign BBM90=b[4]^b[9];
assign BBM91=b[6]^b[12];
assign BBM92=b[3]^b[12];
assign BBM93=b[3]^b[8];
assign BBM94=b[2]^b[4];
assign BBM95=b[10]^b[11];
assign BBM96=b[8]^b[9];
assign BBM97=b[5]^b[11];
assign BBM98=b[11]^b[12];
assign BBM99=b[3]^b[12];
assign BBM100=b[5]^b[8];
assign BBM101=b[9];

assign P[1]=BBM74;
assign P[2]=BBM75;
assign P[3]=BBM58;
assign P[4]=BBM40;
assign P[5]=BBM59;
assign P[6]=BBM60;
assign P[7]=BBM76;
assign P[14]=BBM77;
assign P[15]=BBM78;
assign P[16]=BBM61;
assign P[17]=BBM41;
assign P[18]=BBM42;
assign P[19]=BBM43;
assign P[20]=BBM44;
assign P[21]=BBM40;
assign P[22]=BBM59;
assign P[23]=BBM60;
assign P[24]=BBM76;
assign P[26]=BBM59;
assign P[27]=BBM63^b[1];
assign P[28]=BBM79^b[11];
assign P[29]=BBM23^b[4];
assign P[30]=BBM15;
assign P[31]=BBM24;
assign P[32]=BBM25;
assign P[33]=BBM45;
assign P[34]=BBM41;
assign P[35]=BBM42;
assign P[36]=BBM43;
assign P[37]=BBM44;
assign P[38]=BBM40;
assign P[39]=BBM42;
assign P[40]=BBM48;
assign P[41]=BBM49;
assign P[42]=BBM26^b[7];
assign P[43]=BBM27;
assign P[44]=BBM50;
assign P[45]=BBM28;
assign P[46]=BBM16;
assign P[47]=BBM15;
assign P[48]=BBM24;
assign P[49]=BBM25;
assign P[50]=BBM45;
assign P[51]=BBM41;
assign P[52]=BBM24;
assign P[53]=BBM30^b[12];
assign P[54]=BBM64^BBM80;
assign P[55]=BBM30^b[3]^b[9];
assign P[56]=BBM17;
assign P[57]=BBM31;
assign P[58]=BBM52;
assign P[59]=BBM53;
assign P[60]=BBM27;
assign P[61]=BBM50;
assign P[62]=BBM28;
assign P[63]=BBM16;
assign P[64]=BBM15;
assign P[65]=BBM50;
assign P[66]=BBM32^BBM81;
assign P[67]=BBM33^BBM82;
assign P[68]=BBM8^b[1];
assign P[69]=BBM4;
assign P[70]=BBM9;
assign P[71]=BBM10;
assign P[72]=BBM11;
assign P[73]=BBM17;
assign P[74]=BBM31;
assign P[75]=BBM52;
assign P[76]=BBM53;
assign P[77]=BBM27;
assign P[78]=BBM31;
assign P[79]=BBM19^b[10];
assign P[80]=BBM20^BBM83;
assign P[81]=BBM32^b[6];
assign P[82]=BBM1;
assign P[83]=BBM2;
assign P[84]=BBM5;
assign P[85]=BBM12;
assign P[86]=BBM4;
assign P[87]=BBM9;
assign P[88]=BBM10;
assign P[89]=BBM11;
assign P[90]=BBM17;
assign P[91]=BBM9;
assign P[92]=BBM20^b[1]^b[2];
assign P[93]=BBM27^BBM79^b[7];
assign P[94]=BBM36^b[3];
assign P[95]=BBM3^BBM84;
assign P[96]=BBM3^b[2]^b[5];
assign P[97]=BBM6^BBM80^b[0];
assign P[98]=BBM6^BBM85;
assign P[99]=BBM1;
assign P[100]=BBM2;
assign P[101]=BBM5;
assign P[102]=BBM12;
assign P[103]=BBM4;
assign P[0]=b[9];
assign P[8]=b[4];
assign P[9]=b[5];
assign P[10]=b[6];
assign P[11]=b[7];
assign P[12]=b[8];
assign P[13]=b[5];
assign P[25]=b[4];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];








endmodule
