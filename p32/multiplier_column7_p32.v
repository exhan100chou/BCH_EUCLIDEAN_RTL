module multiplier_column7_p32(b,P1,P2,P3,P4,P5,P6,P7,P8);

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

assign BBM1=BBM11^BBM69;
assign BBM2=BBM7^b[7];
assign BBM3=BBM21^BBM95^b[9];
assign BBM4=BBM16^BBM96;
assign BBM5=BBM18^BBM87;
assign BBM6=BBM23^BBM70;
assign BBM7=BBM13^b[3]^b[5];
assign BBM8=BBM18^b[12];
assign BBM9=BBM28^BBM98;
assign BBM10=BBM28^b[12];
assign BBM11=BBM38^BBM99;
assign BBM12=BBM54^BBM67;
assign BBM13=BBM24^b[6];
assign BBM14=BBM34^b[0]^b[9];
assign BBM15=BBM44^BBM89;
assign BBM16=BBM43^BBM95;
assign BBM17=BBM29^BBM95;
assign BBM18=BBM46^BBM89^b[4];
assign BBM19=BBM44^b[9];
assign BBM20=BBM39^b[10];
assign BBM21=BBM57^BBM82;
assign BBM22=BBM41^b[11];
assign BBM23=BBM58^BBM103;
assign BBM24=BBM30^b[0];
assign BBM25=BBM52^BBM88;
assign BBM26=BBM59^BBM96;
assign BBM27=BBM56^BBM90;
assign BBM28=BBM58^BBM104;
assign BBM29=BBM77^BBM107;
assign BBM30=BBM72^b[8]^b[9];
assign BBM31=BBM59^b[10];
assign BBM32=BBM57^b[7];
assign BBM33=BBM60^b[11];
assign BBM34=BBM73^BBM105;
assign BBM35=BBM55^b[12];
assign BBM36=BBM68^BBM104;
assign BBM37=BBM74^b[3]^b[4];
assign BBM38=BBM62^BBM92;
assign BBM39=BBM60^b[1];
assign BBM40=BBM72^b[3]^b[7];
assign BBM41=BBM73^BBM103;
assign BBM42=BBM75^b[9]^b[12];
assign BBM43=BBM76^BBM106;
assign BBM44=BBM70^BBM105;
assign BBM46=BBM78^b[7];
assign BBM47=BBM79^b[7];
assign BBM48=BBM74^b[9];
assign BBM49=BBM79^b[0];
assign BBM50=BBM75^b[3];
assign BBM51=BBM71^b[8];
assign BBM52=BBM77^b[8];
assign BBM53=BBM76^b[9];
assign BBM54=BBM64^b[6];
assign BBM55=BBM66^b[3];
assign BBM56=BBM78^b[2];
assign BBM57=BBM84^b[4]^b[6];
assign BBM58=BBM65^b[10];
assign BBM59=BBM69^b[0];
assign BBM60=BBM83^BBM92;
assign BBM61=BBM85^b[9];
assign BBM62=BBM109^b[0];
assign BBM63=BBM91^b[10];
assign BBM64=BBM99^b[0];
assign BBM65=BBM96^b[7];
assign BBM66=BBM107^b[5];
assign BBM67=BBM86^b[12];
assign BBM68=BBM111^b[5];
assign BBM69=BBM93^b[8];
assign BBM70=BBM106^b[11];
assign BBM71=BBM92^b[7];
assign BBM72=BBM112^b[2];
assign BBM73=BBM98^b[10];
assign BBM74=BBM103^b[11];
assign BBM75=BBM89^b[6];
assign BBM76=BBM80^b[3];
assign BBM77=BBM90^b[0];
assign BBM78=BBM111^b[9];
assign BBM79=BBM112^b[8];
assign BBM45=b[0]^b[1]^b[9]^b[11]^b[12];
assign BBM80=b[6]^b[7];
assign BBM81=b[7]^b[8];
assign BBM82=b[1]^b[11];
assign BBM83=b[2]^b[12];
assign BBM84=b[3]^b[12];
assign BBM85=b[6]^b[8];
assign BBM86=b[4]^b[9];
assign BBM87=b[1]^b[8];
assign BBM88=b[2]^b[7];
assign BBM89=b[2]^b[5];
assign BBM90=b[1]^b[12];
assign BBM91=b[6]^b[12];
assign BBM92=b[4]^b[5];
assign BBM93=b[2]^b[3];
assign BBM94=b[4]^b[7];
assign BBM95=b[5]^b[8];
assign BBM96=b[1]^b[9];
assign BBM97=b[1]^b[8];
assign BBM98=b[2]^b[4];
assign BBM99=b[7]^b[11];
assign BBM100=b[2]^b[5];
assign BBM101=b[5]^b[8];
assign BBM102=b[1]^b[11];
assign BBM103=b[8]^b[12];
assign BBM104=b[3]^b[11];
assign BBM105=b[1]^b[3];
assign BBM106=b[0]^b[4];
assign BBM107=b[9]^b[11];
assign BBM108=b[4]^b[5];
assign BBM109=b[10]^b[12];
assign BBM110=b[1]^b[9];
assign BBM111=b[6]^b[10];
assign BBM112=b[10]^b[11];
assign BBM113=b[8]^b[12];
assign BBM114=b[1]^b[12];
assign BBM115=b[2]^b[5];
assign BBM116=b[6];
assign P[1]=BBM80;
assign P[2]=BBM81;
assign P[3]=BBM61;
assign P[4]=BBM46;
assign P[5]=BBM47;
assign P[6]=BBM48;
assign P[7]=BBM62^b[9];
assign P[8]=BBM82^b[10];
assign P[9]=BBM83^b[11];
assign P[10]=BBM84;
assign P[13]=BBM48;
assign P[14]=BBM49;
assign P[15]=BBM29;
assign P[16]=BBM30^b[1];
assign P[17]=BBM31;
assign P[18]=BBM19;
assign P[19]=BBM20;
assign P[20]=BBM50^b[11];
assign P[21]=BBM32;
assign P[22]=BBM51;
assign P[23]=BBM61^b[5];
assign P[24]=BBM46;
assign P[25]=BBM47;
assign P[26]=BBM20;
assign P[27]=BBM21^b[10];
assign P[28]=BBM33^b[7];
assign P[29]=BBM34^BBM85;
assign P[30]=BBM10;
assign P[31]=BBM22;
assign P[32]=BBM35;
assign P[33]=BBM63^b[4];
assign P[34]=BBM64^b[5];
assign P[35]=BBM52^b[6];
assign P[36]=BBM65^b[2];
assign P[37]=BBM31;
assign P[38]=BBM19;
assign P[39]=BBM35;
assign P[40]=BBM36^BBM86;
assign P[41]=BBM11^b[6];
assign P[42]=BBM53^BBM87;
assign P[43]=BBM1;
assign P[44]=BBM3;
assign P[45]=BBM8;
assign P[46]=BBM36^BBM81;
assign P[47]=BBM12^b[8];
assign P[48]=BBM23^b[5];
assign P[49]=BBM13;
assign P[50]=BBM10;
assign P[51]=BBM22;
assign P[52]=BBM8;
assign P[53]=BBM37^b[2]^b[9];
assign P[54]=BBM38^b[3]^b[9];
assign P[55]=BBM29^BBM88;
assign P[56]=BBM4;
assign P[57]=BBM5;
assign P[58]=BBM2;
assign P[59]=BBM6^b[3]^b[6];
assign P[60]=BBM6^BBM89;
assign P[61]=BBM7^BBM90;
assign P[62]=BBM9^BBM91;
assign P[63]=BBM1;
assign P[64]=BBM3;
assign P[65]=BBM2;
assign P[66]=BBM39;
assign P[67]=BBM50;
assign P[68]=BBM24^BBM92;
assign P[69]=BBM25;
assign P[70]=BBM26;
assign P[71]=BBM14;
assign P[72]=BBM15^b[10];
assign P[73]=BBM15^BBM91;
assign P[74]=BBM32^BBM89^b[1];
assign P[75]=BBM16^b[2];
assign P[76]=BBM4;
assign P[77]=BBM5;
assign P[78]=BBM14;
assign P[79]=BBM66;
assign P[80]=BBM63;
assign P[81]=BBM9;
assign P[82]=BBM17;
assign P[83]=BBM27;
assign P[84]=BBM40;
assign P[85]=BBM37;
assign P[86]=BBM67^b[5];
assign P[87]=BBM68^b[0];
assign P[88]=BBM54^b[1];
assign P[89]=BBM25;
assign P[90]=BBM26;
assign P[91]=BBM40;
assign P[92]=BBM41^b[7];
assign P[93]=BBM55^b[8];
assign P[94]=BBM12^BBM93;
assign P[95]=BBM33^BBM87;
assign P[96]=BBM42^b[3];
assign P[97]=BBM43^b[10];
assign P[98]=BBM51^BBM82;
assign P[99]=BBM42^b[8];
assign P[100]=BBM46^b[3];
assign P[101]=BBM47^BBM106;
assign P[102]=BBM17;
assign P[103]=BBM27;
assign P[0]=b[6];
assign P[11]=b[4];
assign P[12]=b[5];


assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];






endmodule
