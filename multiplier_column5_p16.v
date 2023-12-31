module multiplier_column5_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
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
BBM221,BBM222,BBM223,BBM224;



assign BBM1=BBM11^BBM178;
assign BBM2=BBM13^BBM179;
assign BBM3=BBM13^BBM180;
assign BBM4=BBM22^BBM170^b[3];
assign BBM5=BBM12^b[4];
assign BBM6=BBM19^BBM181;
assign BBM7=BBM31^BBM182;
assign BBM8=BBM35^BBM177;
assign BBM9=BBM35^BBM183;
assign BBM10=BBM20^b[4];
assign BBM11=BBM40^BBM149;
assign BBM12=BBM36^b[10]^b[12];
assign BBM13=BBM21^BBM184;
assign BBM14=BBM53^BBM185;
assign BBM15=BBM43^BBM186;
assign BBM16=BBM64^BBM175;
assign BBM17=BBM42^BBM187;
assign BBM18=BBM65^b[4]^b[6];
assign BBM19=BBM36^b[9];
assign BBM20=BBM64^BBM188;
assign BBM21=BBM41^b[12];
assign BBM22=BBM83^BBM189;
assign BBM23=BBM77^BBM190;
assign BBM24=BBM58^b[9];
assign BBM25=BBM93^BBM191;
assign BBM26=BBM76^BBM190;
assign BBM27=BBM94^BBM171;
assign BBM28=BBM95^BBM192;
assign BBM29=BBM94^BBM193;
assign BBM30=BBM95^BBM194;
assign BBM31=BBM57^b[9];
assign BBM32=BBM61^b[5];
assign BBM33=BBM66^b[10];
assign BBM34=BBM66^b[7];
assign BBM35=BBM96^BBM164;
assign BBM36=BBM65^b[11];
assign BBM37=BBM125^BBM195;
assign BBM38=BBM97^b[2];
assign BBM39=BBM126^BBM183;
assign BBM40=BBM93^b[12];
assign BBM41=BBM127^BBM192;
assign BBM42=BBM96^b[12];
assign BBM43=BBM83^b[7];
assign BBM44=BBM99^b[2];
assign BBM45=BBM124^BBM192;
assign BBM46=BBM110^BBM209;
assign BBM47=BBM121^BBM183;
assign BBM48=BBM97^b[7];
assign BBM49=BBM100^b[3];
assign BBM50=BBM115^b[0]^b[10];
assign BBM51=BBM107^BBM199;
assign BBM52=BBM100^b[8];
assign BBM53=BBM125^BBM200;
assign BBM54=BBM99^b[4];
assign BBM55=BBM117^BBM201;
assign BBM56=BBM128^BBM202;
assign BBM57=BBM90^b[4];
assign BBM58=BBM127^BBM182;
assign BBM59=BBM101^b[9];
assign BBM60=BBM102^b[11];
assign BBM61=BBM129^b[2]^b[7];
assign BBM62=BBM101^b[6];
assign BBM63=BBM102^b[8];
assign BBM64=BBM130^BBM199;
assign BBM65=BBM130^BBM203;
assign BBM66=BBM122^BBM204;
assign BBM67=BBM115^b[12];
assign BBM68=BBM117^b[8];
assign BBM69=BBM132^b[3];
assign BBM70=BBM147^BBM178;
assign BBM71=BBM120^b[12];
assign BBM72=BBM133^b[6];
assign BBM73=BBM136^b[2];
assign BBM74=BBM126^b[3];
assign BBM75=BBM105^b[4];
assign BBM76=BBM144^BBM199;
assign BBM77=BBM150^BBM206;
assign BBM78=BBM123^b[11];
assign BBM79=BBM151^BBM193;
assign BBM81=BBM109^b[3];
assign BBM82=BBM145^BBM207;
assign BBM83=BBM113^b[2];
assign BBM84=BBM135^b[12];
assign BBM85=BBM136^b[0];
assign BBM86=BBM137^b[1];
assign BBM87=BBM132^b[10];
assign BBM88=BBM135^b[9];
assign BBM89=BBM136^b[10];
assign BBM90=BBM150^BBM195;
assign BBM92=BBM137^b[3];
assign BBM93=BBM152^BBM208;
assign BBM94=BBM149^BBM209;
assign BBM95=BBM153^BBM210;
assign BBM96=BBM154^BBM168;
assign BBM97=BBM153^BBM175;
assign BBM99=BBM133^b[7];
assign BBM100=BBM152^BBM182;
assign BBM101=BBM148^BBM191;
assign BBM102=BBM154^b[2]^b[12];
assign BBM104=BBM155^b[9];
assign BBM105=BBM156^b[10];
assign BBM106=BBM157^b[5];
assign BBM107=BBM168^BBM203;
assign BBM108=BBM164^b[5]^b[6];
assign BBM109=BBM165^BBM214;
assign BBM110=BBM141^b[7];
assign BBM111=BBM141^b[0];
assign BBM112=BBM145^b[7];
assign BBM113=BBM175^BBM188;
assign BBM114=BBM178^b[0]^b[7];
assign BBM115=BBM167^BBM214;
assign BBM117=BBM151^b[0];
assign BBM118=BBM160^b[12];
assign BBM119=BBM161^b[10];
assign BBM120=BBM146^b[3];
assign BBM121=BBM188^b[1]^b[9];
assign BBM122=BBM161^b[1];
assign BBM123=BBM154^b[0];
assign BBM124=BBM163^b[1];
assign BBM125=BBM184^BBM192;
assign BBM126=BBM155^b[4];
assign BBM127=BBM170^b[8]^b[10];
assign BBM128=BBM157^b[7];
assign BBM129=BBM156^b[4];
assign BBM130=BBM172^BBM173;
assign BBM132=BBM178^b[2]^b[6];
assign BBM133=BBM208^b[1]^b[12];
assign BBM135=BBM163^b[7];
assign BBM136=BBM164^BBM167;
assign BBM137=BBM160^b[10];
assign BBM141=BBM191^b[8];
assign BBM142=BBM191^b[1];
assign BBM143=BBM204^b[2];
assign BBM144=BBM185^b[9];
assign BBM145=BBM171^b[1];
assign BBM146=BBM178^b[9];
assign BBM147=BBM194^b[7];
assign BBM148=BBM168^b[0];
assign BBM149=BBM190^b[1];
assign BBM150=BBM200^b[11];
assign BBM151=BBM183^b[3];
assign BBM152=BBM171^b[6];
assign BBM153=BBM182^b[1];
assign BBM154=BBM170^b[6];
assign BBM155=BBM204^b[8];
assign BBM156=BBM192^b[12];
assign BBM157=BBM166^b[6];
assign BBM160=BBM168^b[9];
assign BBM163=BBM176^b[2];
assign BBM80=b[3]^b[4]^b[8]^b[11]^b[12];
assign BBM91=b[2]^b[3]^b[4]^b[8]^b[9];
assign BBM98=b[2]^b[4]^b[6]^b[10]^b[12];
assign BBM103=b[2]^b[3]^b[4]^b[8]^b[9];
assign BBM116=b[4]^b[5]^b[7]^b[8];
assign BBM131=b[0]^b[2]^b[3]^b[10];
assign BBM134=b[6]^b[7]^b[9]^b[10];
assign BBM138=b[4]^b[6]^b[10]^b[12];
assign BBM139=b[3]^b[4]^b[8]^b[9];
assign BBM140=b[4]^b[5]^b[7]^b[8];
assign BBM158=b[8]^b[10]^b[11];
assign BBM159=b[1]^b[2]^b[9];
assign BBM161=b[0]^b[5]^b[6];
assign BBM162=b[1]^b[6]^b[7];
assign BBM164=b[8]^b[9];
assign BBM165=b[9]^b[10];
assign BBM166=b[3]^b[12];
assign BBM167=b[3]^b[4];
assign BBM168=b[4]^b[5];
assign BBM169=b[3]^b[9];
assign BBM170=b[1]^b[7];
assign BBM171=b[2]^b[9];
assign BBM172=b[3]^b[5];
assign BBM173=b[0]^b[2];
assign BBM174=b[1]^b[2];
assign BBM175=b[4]^b[10];
assign BBM176=b[3]^b[8];
assign BBM177=b[0]^b[3];
assign BBM178=b[5]^b[11];
assign BBM179=b[3]^b[6];
assign BBM180=b[2]^b[5];
assign BBM181=b[6]^b[10];
assign BBM182=b[5]^b[12];
assign BBM183=b[2]^b[10];
assign BBM184=b[4]^b[11];
assign BBM185=b[7]^b[12];
assign BBM186=b[5]^b[9];
assign BBM187=b[2]^b[3];
assign BBM188=b[6]^b[12];
assign BBM189=b[9]^b[11];
assign BBM190=b[3]^b[10];
assign BBM191=b[10]^b[11];
assign BBM192=b[0]^b[9];
assign BBM193=b[7]^b[11];
assign BBM194=b[2]^b[4];
assign BBM195=b[1]^b[3];
assign BBM196=b[0]^b[9];
assign BBM197=b[4]^b[7];
assign BBM198=b[2]^b[10];
assign BBM199=b[1]^b[11];
assign BBM200=b[6]^b[8];
assign BBM201=b[6]^b[9];
assign BBM202=b[0]^b[11];
assign BBM203=b[7]^b[8];
assign BBM204=b[11]^b[12];
assign BBM205=b[1]^b[11];
assign BBM206=b[5]^b[7];
assign BBM207=b[5]^b[8];
assign BBM208=b[0]^b[8];
assign BBM209=b[0]^b[4];
assign BBM210=b[8]^b[11];
assign BBM211=b[4]^b[10];
assign BBM212=b[5]^b[12];
assign BBM213=b[1]^b[10];
assign BBM214=b[6]^b[7];
assign BBM215=b[4]^b[7];
assign BBM216=b[8]^b[11];
assign BBM217=b[0]^b[9];
assign BBM218=b[3]^b[12];
assign BBM219=b[4]^b[5];
assign BBM220=b[5]^b[12];
assign BBM221=b[0]^b[9];
assign BBM222=b[1]^b[11];
assign BBM223=b[8]^b[11];
assign BBM224=b[8];
assign P[1]=BBM164;
assign P[2]=BBM165;
assign P[3]=BBM141;
assign P[4]=BBM104;
assign P[5]=BBM105;
assign P[6]=BBM142;
assign P[7]=BBM143;
assign P[8]=BBM166;
assign P[13]=BBM166;
assign P[14]=BBM166^b[4];
assign P[15]=BBM168;
assign P[16]=BBM106;
assign P[17]=BBM67;
assign P[18]=BBM107;
assign P[19]=BBM108;
assign P[20]=BBM109;
assign P[21]=BBM110;
assign P[22]=BBM104;
assign P[23]=BBM105;
assign P[24]=BBM142;
assign P[25]=BBM143;
assign P[26]=BBM110;
assign P[27]=BBM144^b[10];
assign P[28]=BBM111;
assign P[29]=BBM21;
assign P[30]=BBM112;
assign P[31]=BBM68;
assign P[32]=BBM37;
assign P[33]=BBM38;
assign P[34]=BBM69;
assign P[35]=BBM67;
assign P[36]=BBM107;
assign P[37]=BBM108;
assign P[38]=BBM109;
assign P[39]=BBM69;
assign P[40]=BBM70^b[12];
assign P[41]=BBM106^b[8];
assign P[42]=BBM70^BBM169;
assign P[43]=BBM39;
assign P[44]=BBM71;
assign P[45]=BBM113;
assign P[46]=BBM114;
assign P[47]=BBM72;
assign P[48]=BBM112;
assign P[49]=BBM68;
assign P[50]=BBM37;
assign P[51]=BBM38;
assign P[52]=BBM72;
assign P[53]=BBM40^b[7];
assign P[54]=BBM41^b[3];
assign P[55]=BBM22^b[0];
assign P[56]=BBM23;
assign P[57]=BBM14;
assign P[58]=BBM24;
assign P[59]=BBM25;
assign P[60]=BBM26;
assign P[61]=BBM39;
assign P[62]=BBM71;
assign P[63]=BBM113;
assign P[64]=BBM114;
assign P[65]=BBM26;
assign P[66]=BBM73^BBM170;
assign P[67]=BBM73^b[5]^b[10];
assign P[68]=BBM42;
assign P[69]=BBM1;
assign P[70]=BBM4;
assign P[71]=BBM5;
assign P[72]=BBM7;
assign P[73]=BBM15;
assign P[74]=BBM23;
assign P[75]=BBM14;
assign P[76]=BBM24;
assign P[77]=BBM25;
assign P[78]=BBM15;
assign P[79]=BBM73^BBM204;
assign P[80]=BBM75^BBM172;
assign P[81]=BBM76^BBM173;
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
assign P[92]=BBM115;
assign P[93]=BBM107^b[0];
assign P[94]=BBM43^b[11];
assign P[95]=BBM27;
assign P[96]=BBM16;
assign P[97]=BBM10;
assign P[98]=BBM17;
assign P[99]=BBM18;
assign P[100]=BBM8;
assign P[101]=BBM9;
assign P[102]=BBM6;
assign P[103]=BBM2;
assign P[104]=BBM18;
assign P[105]=BBM145;
assign P[106]=BBM117;
assign P[107]=BBM77^BBM174;
assign P[108]=BBM118;
assign P[109]=BBM119;
assign P[110]=BBM78;
assign P[111]=BBM44;
assign P[112]=BBM45;
assign P[113]=BBM27;
assign P[114]=BBM16;
assign P[115]=BBM10;
assign P[116]=BBM17;
assign P[117]=BBM45;
assign P[118]=BBM175^b[8];
assign P[119]=BBM146;
assign P[120]=BBM11;
assign P[121]=BBM46;
assign P[122]=BBM28;
assign P[123]=BBM47;
assign P[124]=BBM79;
assign P[125]=BBM74;
assign P[126]=BBM118;
assign P[127]=BBM119;
assign P[128]=BBM78;
assign P[129]=BBM44;
assign P[130]=BBM74;
assign P[131]=BBM120^b[8];
assign P[132]=BBM75^b[6];
assign P[133]=BBM48^BBM176;
assign P[134]=BBM49;
assign P[135]=BBM50;
assign P[136]=BBM51;
assign P[137]=BBM52;
assign P[138]=BBM81;
assign P[139]=BBM46;
assign P[140]=BBM28;
assign P[141]=BBM47;
assign P[142]=BBM79;
assign P[143]=BBM81;
assign P[144]=BBM53^b[3];
assign P[145]=BBM48^b[9];
assign P[146]=BBM19;
assign P[147]=BBM54;
assign P[148]=BBM82;
assign P[149]=BBM55;
assign P[150]=BBM29;
assign P[151]=BBM30;
assign P[152]=BBM49;
assign P[153]=BBM50;
assign P[154]=BBM51;
assign P[155]=BBM52;
assign P[156]=BBM30;
assign P[157]=BBM31;
assign P[158]=BBM32^b[10];
assign P[159]=BBM83^BBM177;
assign P[160]=BBM84;
assign P[161]=BBM85;
assign P[162]=BBM86;
assign P[163]=BBM87;
assign P[164]=BBM56;
assign P[165]=BBM54;
assign P[166]=BBM82;
assign P[167]=BBM55;
assign P[168]=BBM29;
assign P[169]=BBM56;
assign P[170]=BBM57;
assign P[171]=BBM32;
assign P[172]=BBM58^b[11];
assign P[173]=BBM88;
assign P[174]=BBM89;
assign P[175]=BBM59;
assign P[176]=BBM33;
assign P[177]=BBM60;
assign P[178]=BBM84;
assign P[179]=BBM85;
assign P[180]=BBM86;
assign P[181]=BBM87;
assign P[182]=BBM60;
assign P[183]=BBM90;
assign P[184]=BBM61;
assign P[185]=BBM12^b[6];
assign P[186]=BBM73;
assign P[187]=BBM92;
assign P[188]=BBM62;
assign P[189]=BBM34;
assign P[190]=BBM63;
assign P[191]=BBM88;
assign P[192]=BBM89;
assign P[193]=BBM59;
assign P[194]=BBM33;
assign P[195]=BBM63;
assign P[196]=BBM121^b[3];
assign P[197]=BBM147^b[10];
assign P[198]=BBM20^b[7];
assign P[199]=BBM167;
assign P[200]=BBM148;
assign P[201]=BBM122;
assign P[202]=BBM123^b[2];
assign P[203]=BBM124^b[7];
assign P[204]=BBM73;
assign P[205]=BBM92;
assign P[206]=BBM62;
assign P[207]=BBM34;
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
assign P9[12:0]=P[116:104];
assign P10[12:0]=P[129:117];
assign P11[12:0]=P[142:130];
assign P12[12:0]=P[155:143];
assign P13[12:0]=P[168:156];
assign P14[12:0]=P[181:169];
assign P15[12:0]=P[194:182];
assign P16[12:0]=P[207:195];









endmodule
