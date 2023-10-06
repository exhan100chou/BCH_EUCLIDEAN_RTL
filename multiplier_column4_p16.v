module multiplier_column4_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
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
BBM201,BBM202,BBM203,BBM204,BBM205,BBM206,BBM207,BBM208,BBM209,BBM210,
BBM211,BBM212,BBM213,BBM214,BBM215,BBM216,BBM217,BBM218,BBM219,BBM220,
BBM221,BBM222,BBM223,BBM224,BBM225,BBM226,BBM227;

assign BBM1=BBM17^BBM183;
assign BBM2=BBM16^BBM181;
assign BBM3=BBM16^BBM184;
assign BBM6=BBM26^BBM185;
assign BBM7=BBM17^b[2];
assign BBM8=BBM27^BBM179;
assign BBM10=BBM43^BBM186;
assign BBM12=BBM43^BBM185;
assign BBM13=BBM51^BBM171^b[7];
assign BBM14=BBM33^BBM187;
assign BBM16=BBM37^BBM188;
assign BBM17=BBM30^BBM176;
assign BBM18=BBM46^b[4]^b[12];
assign BBM19=BBM41^b[6];
assign BBM21=BBM70^BBM183;
assign BBM22=BBM69^b[2]^b[4];
assign BBM23=BBM70^BBM190;
assign BBM26=BBM49^BBM192;
assign BBM27=BBM48^BBM183;
assign BBM28=BBM64^b[8];
assign BBM29=BBM98^BBM188;
assign BBM30=BBM72^BBM193;
assign BBM31=BBM109^BBM171^b[3];
assign BBM33=BBM99^BBM194;
assign BBM34=BBM97^BBM195;
assign BBM35=BBM100^BBM188;
assign BBM37=BBM110^b[0]^b[1]^b[5];
assign BBM38=BBM74^BBM197;
assign BBM39=BBM99^BBM199;
assign BBM40=BBM87^BBM198;
assign BBM41=BBM84^BBM193;
assign BBM43=BBM107^BBM153;
assign BBM45=BBM84^b[1];
assign BBM46=BBM98^b[7];
assign BBM47=BBM87^b[9];
assign BBM48=BBM133^BBM197;
assign BBM49=BBM93^b[11];
assign BBM51=BBM131^BBM195;
assign BBM52=BBM121^b[10]^b[12];
assign BBM54=BBM135^BBM169;
assign BBM55=BBM103^b[2];
assign BBM56=BBM130^BBM200;
assign BBM57=BBM111^BBM202;
assign BBM58=BBM104^b[8];
assign BBM59=BBM109^b[0]^b[4];
assign BBM60=BBM104^b[3];
assign BBM61=BBM123^BBM173;
assign BBM62=BBM96^b[8];
assign BBM64=BBM116^b[1]^b[5];
assign BBM65=BBM103^b[4];
assign BBM66=BBM125^BBM202;
assign BBM69=BBM134^BBM174;
assign BBM70=BBM123^b[2]^b[5];
assign BBM72=BBM143^BBM170;
assign BBM73=BBM132^b[3];
assign BBM74=BBM123^b[12];
assign BBM75=BBM135^b[12];
assign BBM76=BBM125^b[8];
assign BBM78=BBM144^BBM181;
assign BBM79=BBM142^BBM192;
assign BBM80=BBM151^BBM177;
assign BBM83=BBM155^BBM202;
assign BBM84=BBM138^b[5];
assign BBM85=BBM147^BBM198;
assign BBM86=BBM155^b[8]^b[12];
assign BBM87=BBM137^b[11];
assign BBM88=BBM149^b[1]^b[6];
assign BBM90=BBM108^b[3];
assign BBM93=BBM138^b[8];
assign BBM95=BBM156^BBM206;
assign BBM96=BBM157^BBM207;
assign BBM97=BBM139^b[0];
assign BBM98=BBM115^b[0];
assign BBM99=BBM144^b[1]^b[5];
assign BBM100=BBM137^b[9];
assign BBM103=BBM154^BBM208;
assign BBM104=BBM158^BBM209;
assign BBM106=BBM161^b[0];
assign BBM107=BBM162^b[9];
assign BBM108=BBM168^BBM172;
assign BBM109=BBM152^b[8];
assign BBM110=BBM142^b[8];
assign BBM111=BBM160^b[1];
assign BBM112=BBM145^b[4];
assign BBM115=BBM159^b[6];
assign BBM116=BBM161^b[7];
assign BBM117=BBM178^b[1]^b[7];
assign BBM119=BBM162^b[3];
assign BBM120=BBM148^b[4];
assign BBM121=BBM149^b[5];
assign BBM123=BBM163^b[4];
assign BBM124=BBM181^BBM183;
assign BBM125=BBM173^BBM212;
assign BBM126=BBM164^b[6];
assign BBM127=BBM158^b[4];
assign BBM129=BBM159^b[5];
assign BBM130=BBM183^b[3]^b[9];
assign BBM131=BBM168^BBM207;
assign BBM132=BBM171^b[2]^b[11];
assign BBM133=BBM192^b[2]^b[7];
assign BBM134=BBM164^b[11];
assign BBM135=BBM177^BBM194;
assign BBM137=BBM153^b[0];
assign BBM138=BBM160^b[4];
assign BBM139=BBM163^b[12];
assign BBM142=BBM186^b[9];
assign BBM143=BBM169^b[1];
assign BBM144=BBM186^b[2];
assign BBM145=BBM208^b[5];
assign BBM147=BBM212^b[11];
assign BBM148=BBM179^b[12];
assign BBM149=BBM185^b[11];
assign BBM151=BBM193^b[3];
assign BBM152=BBM169^b[7];
assign BBM153=BBM174^b[4];
assign BBM154=BBM190^b[0];
assign BBM155=BBM187^b[11];
assign BBM156=BBM200^b[5];
assign BBM157=BBM211^b[7];
assign BBM158=BBM215^b[5];
assign BBM159=BBM197^b[8];
assign BBM160=BBM188^b[12];
assign BBM161=BBM168^b[12];
assign BBM162=BBM171^b[8];
assign BBM163=BBM172^b[3];
assign BBM164=BBM173^b[5];
assign BBM4=b[0]^b[1]^b[2]^b[4]^b[5]^b[7]^b[8]^b[9]^b[10]^b[11]^b[12];
assign BBM5=b[0]^b[1]^b[3]^b[4]^b[6]^b[7]^b[8]^b[9]^b[10]^b[11]^b[12];
assign BBM9=b[0]^b[2]^b[3]^b[4]^b[5]^b[7]^b[8]^b[10]^b[11]^b[12];
assign BBM11=b[1]^b[3]^b[4]^b[5]^b[6]^b[8]^b[9]^b[11]^b[12];
assign BBM15=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7]^b[8]^b[9];
assign BBM20=b[0]^b[4]^b[6]^b[7]^b[8]^b[9]^b[11]^b[12];
assign BBM24=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7]^b[8];
assign BBM25=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[10]^b[11];
assign BBM32=b[1]^b[5]^b[7]^b[8]^b[9]^b[10]^b[12];
assign BBM36=b[0]^b[1]^b[2]^b[3]^b[4]^b[9]^b[10];
assign BBM42=b[1]^b[2]^b[4]^b[5]^b[8]^b[11]^b[12];
assign BBM44=b[0]^b[1]^b[5]^b[8]^b[9]^b[11]^b[12];
assign BBM50=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM53=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM63=b[1]^b[2]^b[6]^b[9]^b[10]^b[12];
assign BBM67=b[2]^b[5]^b[6]^b[8]^b[9]^b[12];
assign BBM68=b[2]^b[3]^b[5]^b[6]^b[9]^b[12];
assign BBM71=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM77=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM81=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM82=b[3]^b[5]^b[9]^b[11]^b[12];
assign BBM89=b[0]^b[1]^b[6]^b[7]^b[11];
assign BBM91=b[2]^b[3]^b[7]^b[10]^b[11];
assign BBM92=b[3]^b[4]^b[8]^b[11]^b[12];
assign BBM94=b[3]^b[6]^b[7]^b[9]^b[10];
assign BBM101=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM102=b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM105=b[2]^b[3]^b[7]^b[10]^b[11];
assign BBM113=b[0]^b[9]^b[10]^b[12];
assign BBM114=b[6]^b[7]^b[9]^b[10];
assign BBM118=b[5]^b[6]^b[8]^b[9];
assign BBM122=b[1]^b[2]^b[7]^b[9];
assign BBM128=b[0]^b[5]^b[6]^b[10];
assign BBM136=b[0]^b[2]^b[3]^b[10];
assign BBM140=b[5]^b[6]^b[8]^b[9];
assign BBM141=b[6]^b[7]^b[9]^b[10];
assign BBM146=b[1]^b[10]^b[11];
assign BBM150=b[2]^b[11]^b[12];
assign BBM165=b[8]^b[9]^b[11];
assign BBM166=b[1]^b[10]^b[11];
assign BBM167=b[2]^b[11]^b[12];
assign BBM168=b[9]^b[10];
assign BBM169=b[10]^b[11];
assign BBM170=b[3]^b[12];
assign BBM171=b[5]^b[6];
assign BBM172=b[6]^b[7];
assign BBM173=b[0]^b[10];
assign BBM174=b[1]^b[3];
assign BBM175=b[5]^b[10];
assign BBM176=b[4]^b[6];
assign BBM177=b[1]^b[8];
assign BBM178=b[2]^b[9];
assign BBM179=b[6]^b[10];
assign BBM180=b[6]^b[8];
assign BBM181=b[4]^b[7];
assign BBM182=b[0]^b[2];
assign BBM183=b[0]^b[8];
assign BBM184=b[3]^b[6];
assign BBM185=b[0]^b[7];
assign BBM186=b[11]^b[12];
assign BBM187=b[3]^b[4];
assign BBM188=b[2]^b[10];
assign BBM189=b[1]^b[10];
assign BBM190=b[1]^b[12];
assign BBM191=b[0]^b[8];
assign BBM192=b[3]^b[5];
assign BBM193=b[7]^b[9];
assign BBM194=b[0]^b[6];
assign BBM195=b[2]^b[8];
assign BBM196=b[2]^b[10];
assign BBM197=b[9]^b[11];
assign BBM198=b[7]^b[10];
assign BBM199=b[4]^b[8];
assign BBM200=b[1]^b[2];
assign BBM201=b[10]^b[11];
assign BBM202=b[6]^b[9];
assign BBM203=b[3]^b[12];
assign BBM204=b[4]^b[7];
assign BBM205=b[6]^b[9];
assign BBM206=b[8]^b[9];
assign BBM207=b[1]^b[4];
assign BBM208=b[7]^b[8];
assign BBM209=b[2]^b[6];
assign BBM210=b[0]^b[7];
assign BBM211=b[5]^b[11];
assign BBM212=b[2]^b[3];
assign BBM213=b[1]^b[8];
assign BBM214=b[9]^b[10];
assign BBM215=b[9]^b[12];
assign BBM216=b[6]^b[10];
assign BBM217=b[7]^b[9];
assign BBM218=b[3]^b[4];
assign BBM219=b[5]^b[6];
assign BBM220=b[9]^b[11];
assign BBM221=b[11]^b[12];
assign BBM222=b[9]^b[10];
assign BBM223=b[10]^b[11];
assign BBM224=b[0]^b[8];
assign BBM225=b[0]^b[7];
assign BBM226=b[2]^b[10];
assign BBM227=b[9];
assign P[1]=BBM168;
assign P[2]=BBM169;
assign P[3]=BBM142;
assign P[4]=BBM106;
assign P[5]=BBM143;
assign P[6]=BBM144;
assign P[7]=BBM170;
assign P[14]=BBM171;
assign P[15]=BBM172;
assign P[16]=BBM145;
assign P[17]=BBM107;
assign P[18]=BBM108;
assign P[19]=BBM109;
assign P[20]=BBM110;
assign P[21]=BBM106;
assign P[22]=BBM143;
assign P[23]=BBM144;
assign P[24]=BBM170;
assign P[26]=BBM143;
assign P[27]=BBM111;
assign P[28]=BBM147;
assign P[29]=BBM72^b[4];
assign P[30]=BBM45;
assign P[31]=BBM73;
assign P[32]=BBM74;
assign P[33]=BBM112;
assign P[34]=BBM107;
assign P[35]=BBM108;
assign P[36]=BBM109;
assign P[37]=BBM110;
assign P[38]=BBM106;
assign P[39]=BBM108;
assign P[40]=BBM115;
assign P[41]=BBM116;
assign P[42]=BBM46;
assign P[43]=BBM75;
assign P[44]=BBM117;
assign P[45]=BBM76;
assign P[46]=BBM47;
assign P[47]=BBM45;
assign P[48]=BBM73;
assign P[49]=BBM74;
assign P[50]=BBM112;
assign P[51]=BBM107;
assign P[52]=BBM73;
assign P[53]=BBM78^b[5];
assign P[54]=BBM119^b[12];
assign P[55]=BBM48^b[4];
assign P[56]=BBM49;
assign P[57]=BBM79;
assign P[58]=BBM120;
assign P[59]=BBM121;
assign P[60]=BBM75;
assign P[61]=BBM117;
assign P[62]=BBM76;
assign P[63]=BBM47;
assign P[64]=BBM45;
assign P[65]=BBM117;
assign P[66]=BBM80^BBM173;
assign P[67]=BBM51^b[11];
assign P[68]=BBM52^BBM174;
assign P[69]=BBM18;
assign P[70]=BBM28;
assign P[71]=BBM29;
assign P[72]=BBM30;
assign P[73]=BBM49;
assign P[74]=BBM79;
assign P[75]=BBM120;
assign P[76]=BBM121;
assign P[77]=BBM75;
assign P[78]=BBM79;
assign P[79]=BBM83^BBM175;
assign P[80]=BBM52^BBM176;
assign P[81]=BBM80^b[6];
assign P[82]=BBM6;
assign P[83]=BBM10;
assign P[84]=BBM19;
assign P[85]=BBM31;
assign P[86]=BBM18;
assign P[87]=BBM28;
assign P[88]=BBM29;
assign P[89]=BBM30;
assign P[90]=BBM49;
assign P[91]=BBM28;
assign P[92]=BBM33^b[7];
assign P[93]=BBM34^b[1];
assign P[94]=BBM84^b[3];
assign P[95]=BBM1;
assign P[96]=BBM2;
assign P[97]=BBM3;
assign P[98]=BBM7;
assign P[99]=BBM6;
assign P[100]=BBM10;
assign P[101]=BBM19;
assign P[102]=BBM31;
assign P[103]=BBM18;
assign P[104]=BBM10;
assign P[105]=BBM85^BBM177;
assign P[106]=BBM86^BBM178;
assign P[107]=BBM54;
assign P[108]=BBM21;
assign P[109]=BBM12;
assign P[110]=BBM13;
assign P[111]=BBM8;
assign P[112]=BBM1;
assign P[113]=BBM2;
assign P[114]=BBM3;
assign P[115]=BBM7;
assign P[116]=BBM6;
assign P[117]=BBM2;
assign P[118]=BBM123;
assign P[119]=BBM112^b[0];
assign P[120]=BBM78^BBM179;
assign P[121]=BBM35;
assign P[122]=BBM22;
assign P[123]=BBM14;
assign P[124]=BBM23;
assign P[125]=BBM21;
assign P[126]=BBM12;
assign P[127]=BBM13;
assign P[128]=BBM8;
assign P[129]=BBM1;
assign P[130]=BBM12;
assign P[131]=BBM125;
assign P[132]=BBM87;
assign P[133]=BBM34^b[9];
assign P[134]=BBM126;
assign P[135]=BBM88;
assign P[136]=BBM55;
assign P[137]=BBM56;
assign P[138]=BBM35;
assign P[139]=BBM22;
assign P[140]=BBM14;
assign P[141]=BBM23;
assign P[142]=BBM21;
assign P[143]=BBM22;
assign P[144]=BBM148;
assign P[145]=BBM149;
assign P[146]=BBM26;
assign P[147]=BBM57;
assign P[148]=BBM85;
assign P[149]=BBM86;
assign P[150]=BBM127;
assign P[151]=BBM126;
assign P[152]=BBM88;
assign P[153]=BBM55;
assign P[154]=BBM56;
assign P[155]=BBM35;
assign P[156]=BBM88;
assign P[157]=BBM144^BBM180;
assign P[158]=BBM151^b[12];
assign P[159]=BBM54^BBM181;
assign P[160]=BBM58;
assign P[161]=BBM90;
assign P[162]=BBM59;
assign P[163]=BBM37;
assign P[164]=BBM57;
assign P[165]=BBM85;
assign P[166]=BBM86;
assign P[167]=BBM127;
assign P[168]=BBM126;
assign P[169]=BBM85;
assign P[170]=BBM93^b[7];
assign P[171]=BBM129^b[3];
assign P[172]=BBM38^BBM182;
assign P[173]=BBM39;
assign P[174]=BBM60;
assign P[175]=BBM61;
assign P[176]=BBM62;
assign P[177]=BBM58;
assign P[178]=BBM90;
assign P[179]=BBM59;
assign P[180]=BBM37;
assign P[181]=BBM57;
assign P[182]=BBM90;
assign P[183]=BBM83^BBM183;
assign P[184]=BBM64^b[4];
assign P[185]=BBM27;
assign P[186]=BBM65;
assign P[187]=BBM95;
assign P[188]=BBM66;
assign P[189]=BBM40;
assign P[190]=BBM39;
assign P[191]=BBM60;
assign P[192]=BBM61;
assign P[193]=BBM62;
assign P[194]=BBM58;
assign P[195]=BBM60;
assign P[196]=BBM41^b[0];
assign P[197]=BBM54^BBM192;
assign P[198]=BBM96^b[3];
assign P[199]=BBM130^b[4];
assign P[200]=BBM131^b[5];
assign P[201]=BBM132^b[10];
assign P[202]=BBM97^b[11];
assign P[203]=BBM65;
assign P[204]=BBM95;
assign P[205]=BBM66;
assign P[206]=BBM40;
assign P[207]=BBM39;
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
assign P9[12:0]=P[116:104];
assign P10[12:0]=P[129:117];
assign P11[12:0]=P[142:130];
assign P12[12:0]=P[155:143];
assign P13[12:0]=P[168:156];
assign P14[12:0]=P[181:169];
assign P15[12:0]=P[194:182];
assign P16[12:0]=P[207:195];









endmodule
