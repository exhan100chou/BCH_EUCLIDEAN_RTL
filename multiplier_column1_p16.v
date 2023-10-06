
module multiplier_column1_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [12:0]b;
output [12:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 

//wire[415:0]P;

wire	[207:0]P;

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
BBM111,BBM112,BBM113,BBM114,BBM115,BBM116,BBM117,BBM118,BBM119,BBM120,
BBM121,BBM122,BBM123,BBM124,BBM125,BBM126,BBM127,BBM128,BBM129,BBM130,
BBM131,BBM132,BBM133,BBM134,BBM135,BBM136,BBM137,BBM138,BBM139,BBM140,
BBM141,BBM142,BBM143,BBM144,BBM145,BBM146,BBM147,BBM148,BBM149,BBM150,
BBM151,BBM152,BBM153,BBM154,BBM155,BBM156,BBM157,BBM158,BBM159,BBM160,
BBM161,BBM162,BBM163,BBM164,BBM165,BBM166,BBM167,BBM168,BBM169,BBM170,
BBM171,BBM172,BBM173,BBM174,BBM175,BBM176,BBM177,BBM178,BBM179,BBM180,
BBM181,BBM182,BBM183,BBM184,BBM185,BBM186,BBM187,BBM188,BBM189,BBM190,
BBM191,BBM192,BBM193,BBM194,BBM195,BBM196,BBM197,BBM198,BBM199,BBM200,
BBM201,BBM202,BBM203,BBM204,BBM205,BBM206,BBM207,BBM208;


assign BBM1=BBM37^BBM135;
assign BBM2=BBM59^BBM134;
assign BBM8=BBM95^BBM115;
assign BBM9=BBM98^BBM130;
assign BBM11=BBM59^b[12];
assign BBM13=BBM129^BBM136^b[8];
assign BBM22=BBM83^b[9];
assign BBM23=BBM85^b[8];
assign BBM24=BBM87^b[7];
assign BBM26=BBM89^b[6];
assign BBM28=BBM91^b[5];
assign BBM31=BBM93^b[4];
assign BBM37=BBM114^BBM127;
assign BBM41=BBM114^BBM135;
assign BBM42=BBM115^BBM118;
assign BBM49=BBM87^b[0];
assign BBM50=BBM120^b[1]^b[8];
assign BBM53=BBM89^b[12];
assign BBM54=BBM141^b[1]^b[2];
assign BBM57=BBM91^b[11];
assign BBM59=BBM117^b[0]^b[9];
assign BBM82=BBM114^b[11];
assign BBM83=BBM113^b[10];
assign BBM84=BBM117^b[10];
assign BBM85=BBM116^b[9];
assign BBM87=BBM118^b[8];
assign BBM89=BBM120^b[7];
assign BBM91=BBM121^b[6];
assign BBM93=BBM123^b[5];
assign BBM95=BBM124^b[4];
assign BBM97=BBM115^b[4];
assign BBM98=BBM126^b[3];
assign BBM100=BBM130^b[3];
assign BBM3=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM4=b[0]^b[1]^b[3]^b[4]^b[9]^b[11];
assign BBM5=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM6=b[0]^b[1]^b[3]^b[4]^b[9]^b[11];
assign BBM7=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM10=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM12=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM14=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM15=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM16=b[0]^b[2]^b[3]^b[8]^b[10];
assign BBM17=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM18=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM19=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM20=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM21=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM25=b[0]^b[9]^b[10]^b[12];
assign BBM27=b[8]^b[9]^b[11]^b[12];
assign BBM29=b[7]^b[8]^b[10]^b[11];
assign BBM30=b[0]^b[9]^b[10]^b[12];
assign BBM32=b[6]^b[7]^b[9]^b[10];
assign BBM33=b[8]^b[9]^b[11]^b[12];
assign BBM34=b[5]^b[6]^b[8]^b[9];
assign BBM35=b[7]^b[8]^b[10]^b[11];
assign BBM36=b[0]^b[9]^b[10]^b[12];
assign BBM38=b[4]^b[5]^b[7]^b[8];
assign BBM39=b[6]^b[7]^b[9]^b[10];
assign BBM40=b[8]^b[9]^b[11]^b[12];
assign BBM43=b[5]^b[6]^b[8]^b[9];
assign BBM44=b[7]^b[8]^b[10]^b[11];
assign BBM45=b[0]^b[9]^b[10]^b[12];
assign BBM46=b[4]^b[5]^b[7]^b[8];
assign BBM47=b[6]^b[7]^b[9]^b[10];
assign BBM48=b[8]^b[9]^b[11]^b[12];
assign BBM51=b[5]^b[6]^b[8]^b[9];
assign BBM52=b[7]^b[8]^b[10]^b[11];
assign BBM55=b[4]^b[5]^b[7]^b[8];
assign BBM56=b[6]^b[7]^b[9]^b[10];
assign BBM58=b[5]^b[6]^b[8]^b[9];
assign BBM60=b[0]^b[9]^b[10]^b[12];
assign BBM61=b[8]^b[9]^b[11]^b[12];
assign BBM62=b[7]^b[8]^b[10]^b[11];
assign BBM63=b[6]^b[7]^b[9]^b[10];
assign BBM64=b[0]^b[9]^b[10]^b[12];
assign BBM65=b[4]^b[5]^b[7]^b[8];
assign BBM66=b[8]^b[9]^b[11]^b[12];
assign BBM67=b[5]^b[6]^b[8]^b[9];
assign BBM68=b[7]^b[8]^b[10]^b[11];
assign BBM69=b[6]^b[7]^b[9]^b[10];
assign BBM70=b[0]^b[9]^b[10]^b[12];
assign BBM71=b[4]^b[5]^b[7]^b[8];
assign BBM72=b[8]^b[9]^b[11]^b[12];
assign BBM73=b[5]^b[6]^b[8]^b[9];
assign BBM74=b[7]^b[8]^b[10]^b[11];
assign BBM75=b[6]^b[7]^b[9]^b[10];
assign BBM76=b[0]^b[9]^b[10]^b[12];
assign BBM77=b[4]^b[5]^b[7]^b[8];
assign BBM78=b[8]^b[9]^b[11]^b[12];
assign BBM79=b[5]^b[6]^b[8]^b[9];
assign BBM80=b[7]^b[8]^b[10]^b[11];
assign BBM81=b[6]^b[7]^b[9]^b[10];
assign BBM86=b[2]^b[11]^b[12];
assign BBM88=b[1]^b[10]^b[11];
assign BBM90=b[2]^b[11]^b[12];
assign BBM92=b[1]^b[10]^b[11];
assign BBM94=b[2]^b[11]^b[12];
assign BBM96=b[1]^b[10]^b[11];
assign BBM99=b[2]^b[11]^b[12];
assign BBM101=b[1]^b[10]^b[11];
assign BBM102=b[6]^b[8]^b[9];
assign BBM103=b[8]^b[10]^b[11];
assign BBM104=b[7]^b[9]^b[10];
assign BBM105=b[2]^b[11]^b[12];
assign BBM106=b[1]^b[10]^b[11];
assign BBM107=b[2]^b[11]^b[12];
assign BBM108=b[1]^b[10]^b[11];
assign BBM109=b[2]^b[11]^b[12];
assign BBM110=b[1]^b[10]^b[11];
assign BBM111=b[2]^b[11]^b[12];
assign BBM112=b[1]^b[10]^b[11];
assign BBM113=b[0]^b[12];
assign BBM114=b[2]^b[12];
assign BBM115=b[3]^b[12];
assign BBM116=b[11]^b[12];
assign BBM117=b[1]^b[11];
assign BBM118=b[10]^b[11];
assign BBM119=b[3]^b[12];
assign BBM120=b[9]^b[10];
assign BBM121=b[8]^b[9];
assign BBM122=b[3]^b[12];
assign BBM123=b[7]^b[8];
assign BBM124=b[6]^b[7];
assign BBM125=b[3]^b[12];
assign BBM126=b[5]^b[6];
assign BBM127=b[4]^b[5];
assign BBM128=b[3]^b[12];
assign BBM129=b[0]^b[2];
assign BBM130=b[2]^b[11];
assign BBM131=b[0]^b[7];
assign BBM132=b[1]^b[12];
assign BBM133=b[6]^b[8];
assign BBM134=b[3]^b[4];
assign BBM135=b[1]^b[10];
assign BBM136=b[3]^b[10];
assign BBM137=b[3]^b[12];
assign BBM138=b[4]^b[5];
assign BBM139=b[11]^b[12];
assign BBM140=b[8]^b[9];
assign BBM141=b[7]^b[9];
assign BBM142=b[0]^b[12];
assign BBM143=b[7]^b[8];
assign BBM144=b[6]^b[7];
assign BBM145=b[5]^b[6];
assign BBM146=b[2]^b[11];
assign BBM147=b[10]^b[11];
assign BBM148=b[11]^b[12];
assign BBM149=b[10]^b[11];
assign BBM150=b[3]^b[12];
assign BBM151=b[3]^b[12];
assign BBM152=b[2]^b[11];
assign BBM153=b[3]^b[12];
assign BBM154=b[3]^b[12];
assign BBM155=b[12];

assign P[1]=BBM113;
assign P[3]=BBM114;
assign P[4]=BBM115;
assign P[14]=BBM116;
assign P[15]=BBM113;
assign P[16]=BBM117;
assign P[17]=BBM82;
assign P[18]=BBM115;
assign P[27]=BBM118;
assign P[28]=BBM116;
assign P[29]=BBM83;
assign P[30]=BBM84;
assign P[31]=BBM82;
assign P[32]=BBM115;
assign P[40]=BBM120;
assign P[41]=BBM118;
assign P[42]=BBM85;
assign P[43]=BBM22;
assign P[44]=BBM84;
assign P[45]=BBM82;
assign P[46]=BBM115;
assign P[53]=BBM121;
assign P[54]=BBM120;
assign P[55]=BBM87;
assign P[56]=BBM23;
assign P[57]=BBM22;
assign P[58]=BBM84;
assign P[59]=BBM82;
assign P[60]=BBM115;
assign P[66]=BBM123;
assign P[67]=BBM121;
assign P[68]=BBM89;
assign P[69]=BBM24;
assign P[70]=BBM23;
assign P[71]=BBM22;
assign P[72]=BBM84;
assign P[73]=BBM82;
assign P[74]=BBM115;
assign P[79]=BBM124;
assign P[80]=BBM123;
assign P[81]=BBM91;
assign P[82]=BBM26;
assign P[83]=BBM24;
assign P[84]=BBM23;
assign P[85]=BBM22;
assign P[86]=BBM84;
assign P[87]=BBM82;
assign P[88]=BBM115;
assign P[92]=BBM126;
assign P[93]=BBM124;
assign P[94]=BBM93;
assign P[95]=BBM28;
assign P[96]=BBM26;
assign P[97]=BBM24;
assign P[98]=BBM23;
assign P[99]=BBM22;
assign P[100]=BBM84;
assign P[101]=BBM82;
assign P[102]=BBM115;
assign P[105]=BBM127;
assign P[106]=BBM126;
assign P[107]=BBM95;
assign P[108]=BBM31;
assign P[109]=BBM28;
assign P[110]=BBM26;
assign P[111]=BBM24;
assign P[112]=BBM23;
assign P[113]=BBM22;
assign P[114]=BBM84;
assign P[115]=BBM82;
assign P[116]=BBM115;
assign P[117]=BBM115;
assign P[118]=BBM97;
assign P[119]=BBM127;
assign P[120]=BBM98^b[12];
assign P[121]=BBM8;
assign P[122]=BBM31;
assign P[123]=BBM28;
assign P[124]=BBM26;
assign P[125]=BBM24;
assign P[126]=BBM23;
assign P[127]=BBM22;
assign P[128]=BBM84;
assign P[129]=BBM82;
assign P[130]=BBM82;
assign P[131]=BBM100;
assign P[132]=BBM97;
assign P[133]=BBM37^b[11];
assign P[134]=BBM9;
assign P[135]=BBM8;
assign P[136]=BBM31;
assign P[137]=BBM28;
assign P[138]=BBM26;
assign P[139]=BBM24;
assign P[140]=BBM23;
assign P[141]=BBM22;
assign P[142]=BBM84;
assign P[143]=BBM84;
assign P[144]=BBM41;
assign P[145]=BBM100;
assign P[146]=BBM42^b[1]^b[4];
assign P[147]=BBM1;
assign P[148]=BBM9;
assign P[149]=BBM8;
assign P[150]=BBM31;
assign P[151]=BBM28;
assign P[152]=BBM26;
assign P[153]=BBM24;
assign P[154]=BBM23;
assign P[155]=BBM22;
assign P[156]=BBM22;
assign P[157]=BBM11;
assign P[158]=BBM41;
assign P[159]=BBM22^BBM100;
assign P[160]=BBM2;
assign P[161]=BBM1;
assign P[162]=BBM9;
assign P[163]=BBM8;
assign P[164]=BBM31;
assign P[165]=BBM28;
assign P[166]=BBM26;
assign P[167]=BBM24;
assign P[168]=BBM23;
assign P[169]=BBM23;
assign P[170]=BBM49;
assign P[171]=BBM11;
assign P[172]=BBM50^BBM130;
assign P[173]=BBM13;
assign P[174]=BBM2;
assign P[175]=BBM1;
assign P[176]=BBM9;
assign P[177]=BBM8;
assign P[178]=BBM31;
assign P[179]=BBM28;
assign P[180]=BBM26;
assign P[181]=BBM24;
assign P[182]=BBM24;
assign P[183]=BBM53;
assign P[184]=BBM49;
assign P[185]=BBM22^BBM123^b[1];
assign P[186]=BBM54;
assign P[187]=BBM13;
assign P[188]=BBM2;
assign P[189]=BBM1;
assign P[190]=BBM9;
assign P[191]=BBM8;
assign P[192]=BBM31;
assign P[193]=BBM28;
assign P[194]=BBM26;
assign P[195]=BBM26;
assign P[196]=BBM57;
assign P[197]=BBM53;
assign P[198]=BBM57^BBM131;
assign P[199]=BBM113^BBM133^b[1];
assign P[200]=BBM54;
assign P[201]=BBM13;
assign P[202]=BBM2;
assign P[203]=BBM1;
assign P[204]=BBM9;
assign P[205]=BBM8;
assign P[206]=BBM31;
assign P[207]=BBM28;
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
assign P[103]=b[4];
assign P[104]=b[4];



assign P1[12:0]=P[12:0];
assign P2[12:0]=P[25:13];
assign P3[12:0]=P[38:26];
assign P4[12:0]=P[51:39];
assign P5[12:0]=P[64:52];
assign P6[12:0]=P[77:65];
assign P7[12:0]=P[90:78];
assign P8[12:0]=P[103:91];
assign P9[12:0]=P[116:104];
assign P10[12:0]=P[129:117];
assign P11[12:0]=P[142:130];
assign P12[12:0]=P[155:143];
assign P13[12:0]=P[168:156];
assign P14[12:0]=P[181:169];
assign P15[12:0]=P[194:182];
assign P16[12:0]=P[207:195];









endmodule



