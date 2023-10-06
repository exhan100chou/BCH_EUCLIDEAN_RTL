module multiplier_column5_p32(b,P1,P2,P3,P4,P5,P6,P7,P8);

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
BBM101,BBM102,BBM103,BBM104,BBM105,BBM106,BBM107,BBM108,BBM109,BBM110,
BBM111;



assign BBM1=BBM10^BBM87;
assign BBM2=BBM10^BBM88;
assign BBM3=BBM11^b[1]^b[9];
assign BBM4=BBM14^BBM89^b[7];
assign BBM5=BBM11^b[3];
assign BBM6=BBM15^BBM83^b[9];
assign BBM7=BBM21^BBM81;
assign BBM8=BBM21^BBM90;
assign BBM9=BBM22^BBM80;
assign BBM10=BBM31^BBM76^b[1];
assign BBM11=BBM26^BBM66;
assign BBM12=BBM28^b[4]^b[11];
assign BBM13=BBM22^b[12];
assign BBM14=BBM30^b[9];
assign BBM15=BBM41^BBM91;
assign BBM16=BBM42^BBM82;
assign BBM17=BBM31^b[2];
assign BBM18=BBM40^b[3]^b[10];
assign BBM19=BBM43^BBM87;
assign BBM20=BBM41^BBM83;
assign BBM21=BBM49^BBM89^b[4];
assign BBM22=BBM50^BBM78^b[2];
assign BBM23=BBM42^b[0];
assign BBM24=BBM43^b[9];
assign BBM25=BBM59^b[1]^b[10];
assign BBM26=BBM59^b[7]^b[11];
assign BBM27=BBM44^b[8];
assign BBM28=BBM60^BBM93;
assign BBM29=BBM67^BBM94^b[1];
assign BBM30=BBM44^b[6];
assign BBM31=BBM52^BBM95;
assign BBM32=BBM56^b[12];
assign BBM33=BBM66^BBM86;
assign BBM34=BBM68^b[2]^b[6];
assign BBM35=BBM61^b[7];
assign BBM36=BBM68^BBM96;
assign BBM37=BBM60^b[1];
assign BBM38=BBM61^b[8];
assign BBM39=BBM69^BBM75;
assign BBM40=BBM65^BBM98;
assign BBM41=BBM67^b[3]^b[8];
assign BBM42=BBM70^BBM80;
assign BBM43=BBM69^BBM98;
assign BBM44=BBM64^b[4]^b[10];
assign BBM45=BBM74^BBM81;
assign BBM46=BBM75^b[0]^b[12];
assign BBM47=BBM76^b[5]^b[6];
assign BBM48=BBM78^b[7]^b[8];
assign BBM49=BBM72^b[8];
assign BBM50=BBM70^b[6];
assign BBM51=BBM62^b[7];
assign BBM52=BBM62^b[0];
assign BBM53=BBM84^BBM93;
assign BBM54=BBM71^b[6];
assign BBM55=BBM79^BBM90;
assign BBM56=BBM88^b[3]^b[6];
assign BBM58=BBM72^b[4];
assign BBM59=BBM78^b[2]^b[12];
assign BBM60=BBM85^b[0]^b[8];
assign BBM61=BBM86^b[4]^b[9];
assign BBM62=BBM91^b[8];
assign BBM63=BBM91^b[1];
assign BBM64=BBM81^b[2];
assign BBM65=BBM93^b[12];
assign BBM66=BBM102^b[8];
assign BBM68=BBM79^b[3];
assign BBM69=BBM106^b[0];
assign BBM70=BBM75^b[7];
assign BBM71=BBM94^b[10];
assign BBM72=BBM95^b[5];
assign BBM57=b[4]^b[5]^b[7]^b[8];
assign BBM67=b[5]^b[6]^b[7];
assign BBM73=b[8]^b[10]^b[11];
assign BBM74=b[8]^b[9];
assign BBM75=b[9]^b[10];
assign BBM76=b[3]^b[12];
assign BBM77=b[3]^b[12];
assign BBM78=b[4]^b[5];
assign BBM79=b[5]^b[11];
assign BBM80=b[1]^b[8];
assign BBM81=b[11]^b[12];
assign BBM82=b[5]^b[12];
assign BBM83=b[0]^b[2];
assign BBM84=b[1]^b[2];
assign BBM85=b[6]^b[12];
assign BBM86=b[2]^b[3];
assign BBM87=b[2]^b[5];
assign BBM88=b[4]^b[7];
assign BBM89=b[1]^b[3];
assign BBM90=b[0]^b[7];
assign BBM91=b[10]^b[11];
assign BBM92=b[7]^b[10];
assign BBM93=b[7]^b[9];
assign BBM94=b[4]^b[12];
assign BBM95=b[6]^b[9];
assign BBM96=b[9]^b[12];
assign BBM97=b[9]^b[10];
assign BBM98=b[1]^b[11];
assign BBM99=b[1]^b[8];
assign BBM100=b[2]^b[11];
assign BBM101=b[11]^b[12];
assign BBM102=b[0]^b[10];
assign BBM103=b[3]^b[5];
assign BBM104=b[2]^b[5];
assign BBM105=b[6]^b[12];
assign BBM106=b[3]^b[4];
assign BBM107=b[7]^b[9];
assign BBM108=b[4]^b[12];
assign BBM109=b[10]^b[11];
assign BBM110=b[3]^b[12];
assign BBM111=b[8];
assign P[1]=BBM74;
assign P[2]=BBM75;
assign P[3]=BBM62;
assign P[4]=BBM45;
assign P[5]=BBM46;
assign P[6]=BBM63;
assign P[7]=BBM64;
assign P[8]=BBM76;
assign P[13]=BBM76;
assign P[14]=BBM76^b[4];
assign P[15]=BBM78;
assign P[16]=BBM47;
assign P[17]=BBM32;
assign P[18]=BBM48;
assign P[19]=BBM49;
assign P[20]=BBM50;
assign P[21]=BBM51;
assign P[22]=BBM45;
assign P[23]=BBM46;
assign P[24]=BBM63;
assign P[25]=BBM64;
assign P[26]=BBM51;
assign P[27]=BBM65^b[10];
assign P[28]=BBM52;
assign P[29]=BBM23^b[12];
assign P[30]=BBM53;
assign P[31]=BBM33;
assign P[32]=BBM24;
assign P[33]=BBM25;
assign P[34]=BBM34;
assign P[35]=BBM32;
assign P[36]=BBM48;
assign P[37]=BBM49;
assign P[38]=BBM50;
assign P[39]=BBM34;
assign P[40]=BBM26;
assign P[41]=BBM47^b[8];
assign P[42]=BBM35^BBM79;
assign P[43]=BBM27;
assign P[44]=BBM36;
assign P[45]=BBM54;
assign P[46]=BBM55;
assign P[47]=BBM37;
assign P[48]=BBM53;
assign P[49]=BBM33;
assign P[50]=BBM24;
assign P[51]=BBM25;
assign P[52]=BBM37;
assign P[53]=BBM28^b[2];
assign P[54]=BBM23^b[3];
assign P[55]=BBM14^b[0];
assign P[56]=BBM15;
assign P[57]=BBM12;
assign P[58]=BBM16;
assign P[59]=BBM17;
assign P[60]=BBM18;
assign P[61]=BBM27;
assign P[62]=BBM36;
assign P[63]=BBM54;
assign P[64]=BBM55;
assign P[65]=BBM18;
assign P[66]=BBM35^BBM80;
assign P[67]=BBM38^b[5]^b[10];
assign P[68]=BBM29;
assign P[69]=BBM1;
assign P[70]=BBM4;
assign P[71]=BBM5;
assign P[72]=BBM7;
assign P[73]=BBM13;
assign P[74]=BBM15;
assign P[75]=BBM12;
assign P[76]=BBM16;
assign P[77]=BBM17;
assign P[78]=BBM13;
assign P[79]=BBM38^BBM81;
assign P[80]=BBM39^BBM82;
assign P[81]=BBM40^BBM83;
assign P[82]=BBM8;
assign P[83]=BBM9;
assign P[84]=BBM6;
assign P[85]=BBM2;
assign P[86]=BBM3;
assign P[87]=BBM1;
assign P[88]=BBM4;
assign P[89]=BBM5;
assign P[90]=BBM7;
assign P[91]=BBM3;
assign P[92]=BBM56;
assign P[93]=BBM48^b[0];
assign P[94]=BBM30^b[7];
assign P[95]=BBM39^BBM84;
assign P[96]=BBM19^b[10];
assign P[97]=BBM19^BBM85;
assign P[98]=BBM29^BBM86;
assign P[99]=BBM20^b[4];
assign P[100]=BBM8;
assign P[101]=BBM9;
assign P[102]=BBM6;
assign P[103]=BBM2;
assign P[0]=b[8];
assign P[9]=b[4];
assign P[10]=b[5];
assign P[11]=b[6];
assign P[12]=b[7];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];








endmodule
