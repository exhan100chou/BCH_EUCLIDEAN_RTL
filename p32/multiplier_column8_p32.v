module multiplier_column8_p32(b,P1,P2,P3,P4,P5,P6,P7,P8);

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
BBM111,BBM112,BBM113,BBM114,BBM115,BBM116;

assign BBM1=BBM4^BBM80;
assign BBM2=BBM5^BBM94;
assign BBM3=BBM9^BBM95;
assign BBM4=BBM10^b[4]^b[6];
assign BBM5=BBM15^BBM87;
assign BBM6=BBM16^b[8];
assign BBM7=BBM18^b[2]^b[4];
assign BBM8=BBM37^BBM77;
assign BBM9=BBM25^BBM97;
assign BBM10=BBM44^BBM98^b[11];
assign BBM11=BBM47^BBM81^b[0];
assign BBM12=BBM40^BBM84^b[1];
assign BBM13=BBM23^b[6];
assign BBM14=BBM27^BBM97;
assign BBM15=BBM19^b[5];
assign BBM16=BBM38^BBM100;
assign BBM17=BBM30^BBM101;
assign BBM18=BBM39^b[5];
assign BBM19=BBM51^BBM97;
assign BBM20=BBM57^b[3]^b[7];
assign BBM21=BBM57^BBM78;
assign BBM22=BBM36^b[3];
assign BBM23=BBM55^BBM103;
assign BBM24=BBM39^b[4];
assign BBM25=BBM43^b[0];
assign BBM26=BBM58^b[6];
assign BBM27=BBM59^b[4];
assign BBM28=BBM60^b[5];
assign BBM29=BBM59^b[8];
assign BBM30=BBM68^b[2]^b[8];
assign BBM31=BBM61^b[3]^b[6];
assign BBM32=BBM60^b[7];
assign BBM33=BBM69^BBM90;
assign BBM34=BBM58^b[7];
assign BBM35=BBM68^BBM104;
assign BBM36=BBM67^BBM105;
assign BBM37=BBM56^b[12];
assign BBM38=BBM66^b[6]^b[12];
assign BBM39=BBM64^b[0]^b[3];
assign BBM40=BBM71^b[6];
assign BBM41=BBM72^b[9];
assign BBM42=BBM69^b[8];
assign BBM43=BBM62^b[6];
assign BBM44=BBM63^b[7];
assign BBM45=BBM94^BBM103;
assign BBM46=BBM89^BBM90;
assign BBM47=BBM74^b[2]^b[11];
assign BBM48=BBM75^BBM84;
assign BBM49=BBM61^b[4];
assign BBM50=BBM95^BBM108;
assign BBM51=BBM76^b[4]^b[8];
assign BBM52=BBM70^b[1];
assign BBM53=BBM72^b[3];
assign BBM54=BBM84^b[8]^b[9];
assign BBM55=BBM78^BBM85;
assign BBM56=BBM71^b[1];
assign BBM57=BBM81^BBM105;
assign BBM58=BBM80^BBM81;
assign BBM59=BBM94^b[0]^b[3];
assign BBM60=BBM97^BBM109;
assign BBM61=BBM104^b[8];
assign BBM62=BBM108^b[8];
assign BBM63=BBM78^b[12];
assign BBM64=BBM82^b[1];
assign BBM65=BBM111^b[12];
assign BBM66=BBM87^b[11];
assign BBM67=BBM101^b[9];
assign BBM69=BBM77^b[11];
assign BBM70=BBM83^b[0];
assign BBM72=BBM75^b[10];
assign BBM68=b[1]^b[4]^b[11];
assign BBM71=b[5]^b[8]^b[9];
assign BBM73=b[5]^b[7]^b[8];
assign BBM74=b[5]^b[6];
assign BBM75=b[6]^b[7];
assign BBM76=b[11]^b[12];
assign BBM77=b[7]^b[10];
assign BBM78=b[9]^b[10];
assign BBM79=b[7]^b[12];
assign BBM80=b[0]^b[8];
assign BBM81=b[1]^b[12];
assign BBM82=b[10]^b[11];
assign BBM83=b[6]^b[11];
assign BBM84=b[3]^b[4];
assign BBM85=b[4]^b[5];
assign BBM86=b[0]^b[4];
assign BBM87=b[0]^b[7];
assign BBM88=b[1]^b[8];
assign BBM89=b[0]^b[10];
assign BBM90=b[2]^b[3];
assign BBM91=b[0]^b[4];
assign BBM92=b[0]^b[11];
assign BBM93=b[0]^b[12];
assign BBM94=b[1]^b[9];
assign BBM95=b[3]^b[5];
assign BBM96=b[2]^b[5];
assign BBM97=b[2]^b[10];
assign BBM98=b[1]^b[3];
assign BBM99=b[5]^b[6];
assign BBM100=b[4]^b[9];
assign BBM101=b[5]^b[12];
assign BBM102=b[2]^b[10];
assign BBM103=b[2]^b[7];
assign BBM104=b[5]^b[7];
assign BBM105=b[2]^b[6];
assign BBM106=b[2]^b[3];
assign BBM107=b[2]^b[5];
assign BBM108=b[9]^b[11];
assign BBM109=b[4]^b[12];
assign BBM110=b[9]^b[10];
assign BBM111=b[6]^b[10];
assign BBM112=b[7]^b[10];
assign BBM113=b[6]^b[11];
assign BBM114=b[9]^b[10];
assign BBM115=b[2]^b[10];
assign BBM116=b[5];
assign P[1]=BBM74;
assign P[2]=BBM75;
assign P[3]=BBM61;
assign P[4]=BBM40;
assign P[5]=BBM41;
assign P[6]=BBM42;
assign P[7]=BBM62^b[12];
assign P[8]=BBM63^b[0];
assign P[9]=BBM64;
assign P[10]=BBM76^b[2];
assign P[13]=BBM41;
assign P[14]=BBM43;
assign P[15]=BBM44;
assign P[16]=BBM25^b[7];
assign P[17]=BBM26;
assign P[18]=BBM45;
assign P[19]=BBM46^b[8];
assign P[20]=BBM27^b[11];
assign P[21]=BBM28^b[1];
assign P[22]=BBM47^b[3];
assign P[23]=BBM48^b[12];
assign P[24]=BBM49;
assign P[25]=BBM40;
assign P[26]=BBM45;
assign P[27]=BBM29^BBM77;
assign P[28]=BBM30^BBM78;
assign P[29]=BBM18^BBM79;
assign P[30]=BBM6;
assign P[31]=BBM8;
assign P[32]=BBM9;
assign P[33]=BBM10;
assign P[34]=BBM19;
assign P[35]=BBM50^b[12];
assign P[36]=BBM65^b[4];
assign P[37]=BBM66^b[5];
assign P[38]=BBM26;
assign P[39]=BBM8;
assign P[40]=BBM11^b[7];
assign P[41]=BBM20^BBM80;
assign P[42]=BBM28^b[3];
assign P[43]=BBM1;
assign P[44]=BBM2;
assign P[45]=BBM3^BBM81;
assign P[46]=BBM4^b[2];
assign P[47]=BBM5^b[3];
assign P[48]=BBM12^BBM76;
assign P[49]=BBM13^b[12];
assign P[50]=BBM31^BBM82;
assign P[51]=BBM6;
assign P[52]=BBM2;
assign P[53]=BBM48;
assign P[54]=BBM49^b[0];
assign P[55]=BBM32^BBM83;
assign P[56]=BBM14;
assign P[57]=BBM7;
assign P[58]=BBM11^BBM84;
assign P[59]=BBM20^BBM85;
assign P[60]=BBM31^BBM86^b[2];
assign P[61]=BBM12^BBM87;
assign P[62]=BBM13^BBM88;
assign P[63]=BBM3^b[7];
assign P[64]=BBM1;
assign P[65]=BBM7;
assign P[66]=BBM65;
assign P[67]=BBM66;
assign P[68]=BBM15^b[3];
assign P[69]=BBM21;
assign P[70]=BBM33;
assign P[71]=BBM51^b[3];
assign P[72]=BBM67^b[4];
assign P[73]=BBM74^BBM89;
assign P[74]=BBM52^b[7];
assign P[75]=BBM34^b[2];
assign P[76]=BBM29^b[2];
assign P[77]=BBM14;
assign P[78]=BBM33;
assign P[79]=BBM32^b[8];
assign P[80]=BBM50^b[8];
assign P[81]=BBM16^BBM90;
assign P[82]=BBM17;
assign P[83]=BBM22;
assign P[84]=BBM48^BBM89;
assign P[85]=BBM35^b[8];
assign P[86]=BBM36^b[8];
assign P[87]=BBM41^b[3];
assign P[88]=BBM42^BBM86;
assign P[89]=BBM37^BBM92;
assign P[90]=BBM21;
assign P[91]=BBM22;
assign P[92]=BBM23^BBM93;
assign P[93]=BBM18^b[6]^b[8];
assign P[94]=BBM35^b[3];
assign P[95]=BBM54^b[0];
assign P[96]=BBM55^b[1];
assign P[97]=BBM47^b[10];
assign P[98]=BBM38^b[3];
assign P[99]=BBM34^b[4];
assign P[100]=BBM56^b[2];
assign P[101]=BBM46^b[6]^b[9];
assign P[102]=BBM24^b[7];
assign P[103]=BBM17;
assign P[0]=b[5];
assign P[11]=b[3]^b[12];
assign P[12]=b[4];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];








endmodule
