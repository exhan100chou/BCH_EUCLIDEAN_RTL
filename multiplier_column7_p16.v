module multiplier_column7_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
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
BBM221,BBM222,BBM223,BBM224,BBM225,BBM226,BBM227,BBM228,BBM229,BBM230,
BBM231,BBM232;

assign BBM1=BBM17^BBM182;
assign BBM2=BBM16^BBM183;
assign BBM3=BBM32^BBM161;
assign BBM4=BBM24^b[1]^b[9];
assign BBM5=BBM33^BBM184;
assign BBM6=BBM30^BBM185;
assign BBM7=BBM25^BBM183;
assign BBM8=BBM29^BBM187;
assign BBM9=BBM20^BBM188;
assign BBM10=BBM33^b[12];
assign BBM11=BBM56^BBM189;
assign BBM12=BBM49^BBM174;
assign BBM13=BBM32^b[10];
assign BBM14=BBM31^b[7];
assign BBM15=BBM36^BBM190;
assign BBM16=BBM71^BBM146;
assign BBM17=BBM48^BBM173;
assign BBM19=BBM82^BBM183;
assign BBM20=BBM53^b[7];
assign BBM21=BBM58^b[0];
assign BBM22=BBM57^b[0];
assign BBM23=BBM62^BBM193;
assign BBM24=BBM85^BBM179;
assign BBM25=BBM59^BBM179;
assign BBM26=BBM63^BBM184;
assign BBM27=BBM86^BBM183;
assign BBM28=BBM58^b[2];
assign BBM29=BBM87^BBM165;
assign BBM30=BBM60^BBM194;
assign BBM31=BBM88^BBM195;
assign BBM32=BBM64^b[5]^b[9];
assign BBM33=BBM87^BBM197;
assign BBM34=BBM83^b[4];
assign BBM35=BBM68^b[10];
assign BBM36=BBM113^BBM170;
assign BBM37=BBM70^b[11];
assign BBM38=BBM92^b[5]^b[6];
assign BBM39=BBM114^BBM198;
assign BBM40=BBM94^BBM188;
assign BBM41=BBM80^b[12];
assign BBM42=BBM74^b[2];
assign BBM43=BBM102^BBM199;
assign BBM44=BBM113^b[0]^b[4];
assign BBM45=BBM105^BBM163;
assign BBM46=BBM95^BBM186;
assign BBM47=BBM85^b[10];
assign BBM48=BBM92^b[0]^b[4];
assign BBM49=BBM116^BBM202;
assign BBM50=BBM99^BBM162;
assign BBM51=BBM89^b[9];
assign BBM52=BBM98^BBM204;
assign BBM53=BBM89^b[6];
assign BBM54=BBM117^b[5]^b[10];
assign BBM55=BBM94^BBM170;
assign BBM56=BBM90^b[7];
assign BBM57=BBM90^b[9];
assign BBM58=BBM117^BBM206;
assign BBM59=BBM107^b[9];
assign BBM60=BBM127^BBM207;
assign BBM61=BBM135^BBM199;
assign BBM62=BBM109^b[7];
assign BBM63=BBM116^b[11];
assign BBM64=BBM120^b[4];
assign BBM65=BBM100^b[12];
assign BBM66=BBM121^b[3];
assign BBM67=BBM120^b[9];
assign BBM68=BBM112^b[5];
assign BBM69=BBM144^BBM208;
assign BBM70=BBM132^BBM163;
assign BBM71=BBM97^b[2];
assign BBM72=BBM121^b[1];
assign BBM73=BBM147^BBM209;
assign BBM74=BBM148^BBM210;
assign BBM75=BBM103^b[9];
assign BBM76=BBM104^b[10];
assign BBM77=BBM122^b[12];
assign BBM78=BBM122^b[0];
assign BBM79=BBM103^b[1];
assign BBM80=BBM104^b[2];
assign BBM82=BBM117^b[1];
assign BBM83=BBM106^b[1];
assign BBM84=BBM126^b[3]^b[7];
assign BBM85=BBM119^b[0];
assign BBM86=BBM148^BBM204;
assign BBM87=BBM130^BBM171;
assign BBM88=BBM124^b[12];
assign BBM89=BBM115^b[5];
assign BBM90=BBM149^BBM183;
assign BBM91=BBM140^b[10];
assign BBM92=BBM141^b[11];
assign BBM93=BBM142^b[12];
assign BBM94=BBM136^b[8];
assign BBM95=BBM147^b[3];
assign BBM96=BBM138^b[8];
assign BBM97=BBM125^b[5];
assign BBM98=BBM151^b[0];
assign BBM99=BBM146^b[6];
assign BBM100=BBM131^b[3];
assign BBM101=BBM152^b[3];
assign BBM102=BBM153^b[1];
assign BBM103=BBM160^BBM173;
assign BBM104=BBM176^BBM207;
assign BBM105=BBM151^b[9];
assign BBM106=BBM172^b[0]^b[9];
assign BBM107=BBM154^b[0];
assign BBM108=BBM162^BBM168;
assign BBM109=BBM155^b[12];
assign BBM110=BBM125^b[10];
assign BBM111=BBM150^b[12];
assign BBM112=BBM137^b[4];
assign BBM113=BBM127^b[3];
assign BBM114=BBM141^b[5];
assign BBM115=BBM136^b[4];
assign BBM116=BBM133^b[2];
assign BBM117=BBM161^BBM215;
assign BBM118=BBM154^b[9];
assign BBM119=BBM155^b[7];
assign BBM120=BBM167^BBM184;
assign BBM121=BBM171^BBM180;
assign BBM122=BBM159^BBM193;
assign BBM124=BBM153^b[3];
assign BBM125=BBM201^b[8];
assign BBM126=BBM180^b[12];
assign BBM127=BBM174^b[10];
assign BBM128=BBM170^b[10];
assign BBM129=BBM190^b[0];
assign BBM130=BBM166^b[9];
assign BBM131=BBM189^b[5];
assign BBM132=BBM185^b[8];
assign BBM133=BBM171^b[12];
assign BBM134=BBM202^b[5];
assign BBM135=BBM163^b[8];
assign BBM136=BBM209^b[0];
assign BBM137=BBM193^b[12];
assign BBM138=BBM171^b[7];
assign BBM139=BBM179^b[6];
assign BBM140=BBM159^b[9];
assign BBM141=BBM160^b[10];
assign BBM142=BBM181^b[9];
assign BBM143=BBM160^b[5];
assign BBM144=BBM172^b[2];
assign BBM145=BBM215^b[3];
assign BBM146=BBM194^b[11];
assign BBM147=BBM168^b[6];
assign BBM148=BBM178^b[8];
assign BBM149=BBM177^b[1];
assign BBM150=BBM217^b[0];
assign BBM151=BBM170^b[1];
assign BBM152=BBM180^b[6];
assign BBM153=BBM188^b[8];
assign BBM154=BBM161^b[1];
assign BBM155=BBM167^b[4];
assign BBM18=b[1]^b[3]^b[4]^b[5]^b[6]^b[8]^b[9]^b[10];
assign BBM81=b[3]^b[4]^b[5]^b[9]^b[10];
assign BBM123=b[2]^b[3]^b[7]^b[8];
assign BBM156=b[1]^b[10]^b[11];
assign BBM157=b[7]^b[8]^b[10];
assign BBM158=b[0]^b[10]^b[11];
assign BBM159=b[6]^b[7];
assign BBM160=b[7]^b[8];
assign BBM161=b[11]^b[12];
assign BBM162=b[3]^b[12];
assign BBM163=b[2]^b[10];
assign BBM164=b[6]^b[11];
assign BBM165=b[0]^b[12];
assign BBM166=b[2]^b[7];
assign BBM167=b[3]^b[6];
assign BBM168=b[2]^b[5];
assign BBM169=b[2]^b[6];
assign BBM170=b[6]^b[12];
assign BBM171=b[4]^b[5];
assign BBM172=b[3]^b[11];
assign BBM173=b[2]^b[3];
assign BBM174=b[1]^b[11];
assign BBM175=b[0]^b[2];
assign BBM176=b[3]^b[4];
assign BBM177=b[2]^b[4];
assign BBM178=b[0]^b[1];
assign BBM179=b[5]^b[8];
assign BBM180=b[9]^b[10];
assign BBM181=b[8]^b[11];
assign BBM182=b[5]^b[12];
assign BBM183=b[3]^b[10];
assign BBM184=b[1]^b[8];
assign BBM185=b[4]^b[12];
assign BBM186=b[9]^b[12];
assign BBM187=b[3]^b[8];
assign BBM188=b[2]^b[9];
assign BBM189=b[9]^b[11];
assign BBM190=b[5]^b[7];
assign BBM191=b[2]^b[3];
assign BBM192=b[1]^b[11];
assign BBM193=b[1]^b[2];
assign BBM194=b[0]^b[7];
assign BBM195=b[1]^b[10];
assign BBM196=b[4]^b[5];
assign BBM197=b[6]^b[10];
assign BBM198=b[1]^b[12];
assign BBM199=b[0]^b[3];
assign BBM200=b[2]^b[10];
assign BBM201=b[6]^b[9];
assign BBM202=b[0]^b[6];
assign BBM203=b[3]^b[12];
assign BBM204=b[5]^b[11];
assign BBM205=b[6]^b[11];
assign BBM206=b[4]^b[6];
assign BBM207=b[8]^b[9];
assign BBM208=b[7]^b[10];
assign BBM209=b[10]^b[11];
assign BBM210=b[7]^b[12];
assign BBM211=b[10]^b[12];
assign BBM212=b[3]^b[10];
assign BBM213=b[1]^b[8];
assign BBM214=b[4]^b[5];
assign BBM215=b[7]^b[9];
assign BBM216=b[9]^b[11];
assign BBM217=b[8]^b[10];
assign BBM218=b[5]^b[7];
assign BBM219=b[5]^b[8];
assign BBM220=b[3]^b[11];
assign BBM221=b[7]^b[9];
assign BBM222=b[6]^b[12];
assign BBM223=b[9]^b[10];
assign BBM224=b[2]^b[9];
assign BBM225=b[2]^b[10];
assign BBM226=b[4]^b[5];
assign BBM227=b[2]^b[3];
assign BBM228=b[1]^b[11];
assign BBM229=b[1]^b[8];
assign BBM230=b[5]^b[7];
assign BBM231=b[4]^b[5];
assign BBM232=b[6];
assign P[1]=BBM159;
assign P[2]=BBM160;
assign P[3]=BBM125;
assign P[4]=BBM91;
assign P[5]=BBM92;
assign P[6]=BBM93;
assign P[7]=BBM126^b[0];
assign P[8]=BBM127;
assign P[9]=BBM161^b[2];
assign P[10]=BBM162;
assign P[13]=BBM93;
assign P[14]=BBM94;
assign P[15]=BBM59;
assign P[16]=BBM60^b[2];
assign P[17]=BBM61;
assign P[18]=BBM34;
assign P[19]=BBM35;
assign P[20]=BBM95^b[11];
assign P[21]=BBM62;
assign P[22]=BBM96;
assign P[23]=BBM97;
assign P[24]=BBM91;
assign P[25]=BBM92;
assign P[26]=BBM35;
assign P[27]=BBM36^b[4];
assign P[28]=BBM63^b[7];
assign P[29]=BBM64^BBM163;
assign P[30]=BBM19;
assign P[31]=BBM37;
assign P[32]=BBM65;
assign P[33]=BBM128^b[4];
assign P[34]=BBM129^b[11];
assign P[35]=BBM98^b[8];
assign P[36]=BBM130^b[1];
assign P[37]=BBM61;
assign P[38]=BBM34;
assign P[39]=BBM65;
assign P[40]=BBM66^BBM164;
assign P[41]=BBM20^b[12];
assign P[42]=BBM67^b[7];
assign P[43]=BBM1;
assign P[44]=BBM3;
assign P[45]=BBM10;
assign P[46]=BBM38^b[3];
assign P[47]=BBM21^b[8];
assign P[48]=BBM39^b[9];
assign P[49]=BBM40^b[6];
assign P[50]=BBM19;
assign P[51]=BBM37;
assign P[52]=BBM10;
assign P[53]=BBM41^b[11];
assign P[54]=BBM66^BBM165;
assign P[55]=BBM59^BBM166;
assign P[56]=BBM4;
assign P[57]=BBM5;
assign P[58]=BBM2;
assign P[59]=BBM6^BBM167;
assign P[60]=BBM6^BBM168;
assign P[61]=BBM7^BBM169;
assign P[62]=BBM11^BBM170;
assign P[63]=BBM1;
assign P[64]=BBM3;
assign P[65]=BBM2;
assign P[66]=BBM68;
assign P[67]=BBM95;
assign P[68]=BBM40^BBM171;
assign P[69]=BBM42;
assign P[70]=BBM43;
assign P[71]=BBM22;
assign P[72]=BBM44^BBM168;
assign P[73]=BBM12^b[3];
assign P[74]=BBM23^b[5];
assign P[75]=BBM24^b[2];
assign P[76]=BBM4;
assign P[77]=BBM5;
assign P[78]=BBM22;
assign P[79]=BBM131;
assign P[80]=BBM128;
assign P[81]=BBM11;
assign P[82]=BBM25;
assign P[83]=BBM45;
assign P[84]=BBM69;
assign P[85]=BBM132^BBM172;
assign P[86]=BBM133^b[9];
assign P[87]=BBM134^b[10];
assign P[88]=BBM99^b[1];
assign P[89]=BBM42;
assign P[90]=BBM43;
assign P[91]=BBM69;
assign P[92]=BBM70^b[7];
assign P[93]=BBM100^b[8];
assign P[94]=BBM21^BBM173;
assign P[95]=BBM26;
assign P[96]=BBM46;
assign P[97]=BBM47;
assign P[98]=BBM96^BBM174;
assign P[99]=BBM71^b[12];
assign P[100]=BBM91^b[3];
assign P[101]=BBM48;
assign P[102]=BBM25;
assign P[103]=BBM45;
assign P[104]=BBM47;
assign P[105]=BBM27^b[6];
assign P[106]=BBM28^b[1];
assign P[107]=BBM49^b[8];
assign P[108]=BBM72;
assign P[109]=BBM73;
assign P[110]=BBM50;
assign P[111]=BBM74^b[4];
assign P[112]=BBM102^b[5];
assign P[113]=BBM101^BBM175;
assign P[114]=BBM44^b[7];
assign P[115]=BBM26;
assign P[116]=BBM46;
assign P[117]=BBM50;
assign P[118]=BBM64^b[11];
assign P[119]=BBM29;
assign P[120]=BBM39^b[11];
assign P[121]=BBM75;
assign P[122]=BBM76;
assign P[123]=BBM51;
assign P[124]=BBM52^b[10];
assign P[125]=BBM77^b[11];
assign P[126]=BBM103^b[12];
assign P[127]=BBM104^b[0];
assign P[128]=BBM72;
assign P[129]=BBM73;
assign P[130]=BBM51;
assign P[131]=BBM105^b[4];
assign P[132]=BBM129^BBM163;
assign P[133]=BBM13^b[0];
assign P[134]=BBM78;
assign P[135]=BBM79;
assign P[136]=BBM80;
assign P[137]=BBM66;
assign P[138]=BBM53;
assign P[139]=BBM52^b[7];
assign P[140]=BBM77^b[8];
assign P[141]=BBM75;
assign P[142]=BBM76;
assign P[143]=BBM80;
assign P[144]=BBM135^b[5];
assign P[145]=BBM106^b[6];
assign P[146]=BBM14;
assign P[147]=BBM136;
assign P[148]=BBM107;
assign P[149]=BBM137;
assign P[150]=BBM173;
assign P[151]=BBM176;
assign P[152]=BBM171^b[0];
assign P[153]=BBM134^b[1];
assign P[154]=BBM78;
assign P[155]=BBM79;
assign P[156]=BBM137;
assign P[157]=BBM162^b[1];
assign P[158]=BBM177;
assign P[159]=BBM108^BBM178;
assign P[160]=BBM109;
assign P[161]=BBM138;
assign P[162]=BBM139;
assign P[163]=BBM140;
assign P[164]=BBM141;
assign P[165]=BBM142;
assign P[166]=BBM126;
assign P[167]=BBM136;
assign P[168]=BBM107;
assign P[169]=BBM139;
assign P[170]=BBM143^b[9];
assign P[171]=BBM110;
assign P[172]=BBM38^b[9];
assign P[173]=BBM54;
assign P[174]=BBM55;
assign P[175]=BBM82;
assign P[176]=BBM111^b[2];
assign P[177]=BBM83;
assign P[178]=BBM112^b[10];
assign P[179]=BBM144^b[5];
assign P[180]=BBM109;
assign P[181]=BBM138;
assign P[182]=BBM82;
assign P[183]=BBM30^b[2];
assign P[184]=BBM31^b[11];
assign P[185]=BBM56^b[0];
assign P[186]=BBM8;
assign P[187]=BBM13;
assign P[188]=BBM9;
assign P[189]=BBM15^b[8];
assign P[190]=BBM28^b[8];
assign P[191]=BBM84^BBM179;
assign P[192]=BBM110^b[4]^b[11];
assign P[193]=BBM54;
assign P[194]=BBM55;
assign P[195]=BBM9;
assign P[196]=BBM41^BBM178;
assign P[197]=BBM57^b[5];
assign P[198]=BBM145^b[0];
assign P[199]=BBM16^b[1];
assign P[200]=BBM14^b[6];
assign P[201]=BBM17^b[9];
assign P[202]=BBM7^b[4];
assign P[203]=BBM12^BBM180;
assign P[204]=BBM15^BBM175;
assign P[205]=BBM23^BBM181;
assign P[206]=BBM8;
assign P[207]=BBM13;
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
assign P9[12:0]=P[116:104];
assign P10[12:0]=P[129:117];
assign P11[12:0]=P[142:130];
assign P12[12:0]=P[155:143];
assign P13[12:0]=P[168:156];
assign P14[12:0]=P[181:169];
assign P15[12:0]=P[194:182];
assign P16[12:0]=P[207:195];







endmodule
