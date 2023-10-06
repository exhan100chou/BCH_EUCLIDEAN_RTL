module multiplier_column6_p32(b,P1,P2,P3,P4,P5,P6,P7,P8);

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
BBM111,BBM112,BBM113;

assign BBM1=BBM9^BBM87;
assign BBM2=BBM16^BBM79^b[6];
assign BBM3=BBM13^BBM88;
assign BBM4=BBM9^b[7];
assign BBM5=BBM21^BBM82;
assign BBM6=BBM21^BBM88;
assign BBM7=BBM24^BBM80^b[7];
assign BBM8=BBM22^BBM90;
assign BBM9=BBM15^b[3]^b[5];
assign BBM10=BBM22^b[6];
assign BBM11=BBM41^BBM88^b[2];
assign BBM12=BBM25^BBM79;
assign BBM13=BBM26^b[3]^b[5];
assign BBM14=BBM47^BBM87^b[9];
assign BBM15=BBM29^b[6];
assign BBM16=BBM30^BBM92;
assign BBM17=BBM40^BBM93;
assign BBM18=BBM29^b[5];
assign BBM19=BBM34^BBM94;
assign BBM20=BBM37^BBM95;
assign BBM21=BBM41^BBM96;
assign BBM22=BBM43^BBM88^b[4];
assign BBM23=BBM39^b[10];
assign BBM24=BBM56^BBM96;
assign BBM25=BBM57^b[0]^b[5];
assign BBM26=BBM55^BBM94;
assign BBM27=BBM58^b[2]^b[7];
assign BBM28=BBM51^BBM96;
assign BBM29=BBM68^BBM77^b[11];
assign BBM30=BBM57^b[12];
assign BBM31=BBM53^b[11];
assign BBM32=BBM69^BBM76;
assign BBM33=BBM58^b[6];
assign BBM34=BBM70^b[0]^b[4];
assign BBM35=BBM70^BBM73;
assign BBM36=BBM68^BBM99;
assign BBM37=BBM59^b[6];
assign BBM38=BBM42^b[3];
assign BBM39=BBM59^b[2];
assign BBM40=BBM62^b[6]^b[9];
assign BBM41=BBM63^BBM99;
assign BBM42=BBM71^b[11];
assign BBM43=BBM72^b[9];
assign BBM44=BBM77^b[9]^b[12];
assign BBM45=BBM73^b[4]^b[5];
assign BBM46=BBM69^b[9];
assign BBM47=BBM71^b[5];
assign BBM48=BBM65^b[4];
assign BBM49=BBM66^b[5];
assign BBM50=BBM81^BBM92;
assign BBM51=BBM95^b[0]^b[8];
assign BBM52=BBM86^b[1]^b[6];
assign BBM53=BBM80^BBM95;
assign BBM54=BBM78^BBM104;
assign BBM55=BBM72^b[4];
assign BBM56=BBM79^BBM83;
assign BBM57=BBM61^b[3];
assign BBM58=BBM87^b[0]^b[8];
assign BBM59=BBM87^b[4]^b[5];
assign BBM60=BBM92^b[10];
assign BBM61=BBM90^b[11];
assign BBM62=BBM94^b[12];
assign BBM63=BBM80^b[8];
assign BBM64=BBM106^b[9];
assign BBM66=BBM86^b[7];
assign BBM67=BBM78^b[1];
assign BBM68=BBM74^b[2];
assign BBM69=BBM93^b[6];
assign BBM70=BBM96^b[3];
assign BBM71=BBM73^b[10];
assign BBM72=BBM82^b[8];
assign BBM65=b[6]^b[10]^b[12];
assign BBM73=b[7]^b[8];
assign BBM74=b[8]^b[9];
assign BBM75=b[2]^b[11];
assign BBM76=b[3]^b[12];
assign BBM77=b[0]^b[10];
assign BBM78=b[3]^b[11];
assign BBM79=b[2]^b[4];
assign BBM80=b[5]^b[6];
assign BBM81=b[1]^b[2];
assign BBM82=b[11]^b[12];
assign BBM83=b[8]^b[10];
assign BBM84=b[3]^b[6];
assign BBM85=b[2]^b[5];
assign BBM86=b[0]^b[11];
assign BBM87=b[1]^b[12];
assign BBM88=b[0]^b[7];
assign BBM89=b[5]^b[7];
assign BBM90=b[1]^b[10];
assign BBM91=b[0]^b[7];
assign BBM92=b[7]^b[9];
assign BBM93=b[4]^b[7];
assign BBM94=b[2]^b[10];
assign BBM95=b[2]^b[3];
assign BBM96=b[1]^b[9];
assign BBM97=b[11]^b[12];
assign BBM98=b[1]^b[9];
assign BBM99=b[3]^b[4];
assign BBM100=b[0]^b[12];
assign BBM101=b[9]^b[10];
assign BBM102=b[0]^b[11];
assign BBM103=b[3]^b[6];
assign BBM104=b[7]^b[10];
assign BBM105=b[2]^b[4];
assign BBM106=b[5]^b[12];
assign BBM107=b[5]^b[6];
assign BBM108=b[3]^b[11];
assign BBM109=b[11]^b[12];
assign BBM110=b[0]^b[11];
assign BBM111=b[0]^b[7];
assign BBM112=b[1]^b[9];
assign BBM113=b[7];
assign P[1]=BBM73;
assign P[2]=BBM74;
assign P[3]=BBM60;
assign P[4]=BBM42;
assign P[5]=BBM43;
assign P[6]=BBM44;
assign P[7]=BBM61;
assign P[8]=BBM75^b[12];
assign P[9]=BBM76;
assign P[13]=BBM61;
assign P[14]=BBM62^b[1];
assign P[15]=BBM75^b[3];
assign P[16]=BBM30^b[4];
assign P[17]=BBM23;
assign P[18]=BBM31;
assign P[19]=BBM32;
assign P[20]=BBM45;
assign P[21]=BBM63^b[9];
assign P[22]=BBM60^b[6];
assign P[23]=BBM42;
assign P[24]=BBM43;
assign P[25]=BBM44;
assign P[26]=BBM45;
assign P[27]=BBM46;
assign P[28]=BBM47;
assign P[29]=BBM46^b[5]^b[11];
assign P[30]=BBM48;
assign P[31]=BBM49;
assign P[32]=BBM33;
assign P[33]=BBM50;
assign P[34]=BBM51^b[10];
assign P[35]=BBM34^b[11];
assign P[36]=BBM23;
assign P[37]=BBM31;
assign P[38]=BBM32;
assign P[39]=BBM50;
assign P[40]=BBM35^BBM77;
assign P[41]=BBM24^b[11];
assign P[42]=BBM25^b[7]^b[12];
assign P[43]=BBM10;
assign P[44]=BBM14;
assign P[45]=BBM15;
assign P[46]=BBM16;
assign P[47]=BBM26;
assign P[48]=BBM64^BBM78;
assign P[49]=BBM48;
assign P[50]=BBM49;
assign P[51]=BBM33;
assign P[52]=BBM16;
assign P[53]=BBM35^BBM79;
assign P[54]=BBM36^b[5]^b[10];
assign P[55]=BBM37^b[7];
assign P[56]=BBM1;
assign P[57]=BBM2;
assign P[58]=BBM3;
assign P[59]=BBM5;
assign P[60]=BBM17^b[5];
assign P[61]=BBM38^BBM80;
assign P[62]=BBM10;
assign P[63]=BBM14;
assign P[64]=BBM15;
assign P[65]=BBM5;
assign P[66]=BBM38^BBM81;
assign P[67]=BBM36^BBM82;
assign P[68]=BBM52^BBM83;
assign P[69]=BBM11;
assign P[70]=BBM6;
assign P[71]=BBM7;
assign P[72]=BBM4;
assign P[73]=BBM8^BBM84;
assign P[74]=BBM8^BBM85;
assign P[75]=BBM1;
assign P[76]=BBM2;
assign P[77]=BBM3;
assign P[78]=BBM4;
assign P[79]=BBM39;
assign P[80]=BBM53;
assign P[81]=BBM18^b[4];
assign P[82]=BBM27;
assign P[83]=BBM28;
assign P[84]=BBM19;
assign P[85]=BBM12;
assign P[86]=BBM20^BBM86;
assign P[87]=BBM20^b[7];
assign P[88]=BBM11;
assign P[89]=BBM6;
assign P[90]=BBM7;
assign P[91]=BBM12;
assign P[92]=BBM65;
assign P[93]=BBM66;
assign P[94]=BBM13;
assign P[95]=BBM40^b[1];
assign P[96]=BBM54^b[2];
assign P[97]=BBM55^b[3];
assign P[98]=BBM64^b[4];
assign P[99]=BBM77^BBM80;
assign P[100]=BBM52^b[7];
assign P[101]=BBM27;
assign P[102]=BBM28;
assign P[103]=BBM19;
assign P[0]=b[7];
assign P[10]=b[4];
assign P[11]=b[5];
assign P[12]=b[6];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];







endmodule
