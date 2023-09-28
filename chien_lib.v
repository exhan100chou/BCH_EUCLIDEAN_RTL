module multiplier(a,b,c);

input [12:0]a,b;
output [12:0]c;

wire [12:0]c,d;
wire [11:0]e;

 //-----d=Lb------------------------------

assign d[0]=(a[0]&b[0]);
assign d[1]=(a[1]&b[0])^(a[0]&b[1]);
assign d[2]=(a[2]&b[0])^(a[1]&b[1])^(a[0]&b[2]);
assign d[3]=(a[3]&b[0])^(a[2]&b[1])^(a[1]&b[2])^(a[0]&b[3]);
assign d[4]=(a[4]&b[0])^(a[3]&b[1])^(a[2]&b[2])^(a[1]&b[3])^(a[0]&b[4]);
assign d[5]=(a[5]&b[0])^(a[4]&b[1])^(a[3]&b[2])^(a[2]&b[3])^(a[1]&b[4])^(a[0]&b[5]);
assign d[6]=(a[6]&b[0])^(a[5]&b[1])^(a[4]&b[2])^(a[3]&b[3])^(a[2]&b[4])^(a[1]&b[5])^(a[0]&b[6]);
assign d[7]=(a[7]&b[0])^(a[6]&b[1])^(a[5]&b[2])^(a[4]&b[3])^(a[3]&b[4])^(a[2]&b[5])^(a[1]&b[6])^(a[0]&b[7]);
assign d[8]=(a[8]&b[0])^(a[7]&b[1])^(a[6]&b[2])^(a[5]&b[3])^(a[4]&b[4])^(a[3]&b[5])^(a[2]&b[6])^(a[1]&b[7])^(a[0]&b[8]);
assign d[9]=(a[9]&b[0])^(a[8]&b[1])^(a[7]&b[2])^(a[6]&b[3])^(a[5]&b[4])^(a[4]&b[5])^(a[3]&b[6])^(a[2]&b[7])^(a[1]&b[8])^(a[0]&b[9]);
assign d[10]=(a[10]&b[0])^(a[9]&b[1])^(a[8]&b[2])^(a[7]&b[3])^(a[6]&b[4])^(a[5]&b[5])^(a[4]&b[6])^(a[3]&b[7])^(a[2]&b[8])^(a[1]&b[9])^(a[0]&b[10]);
assign d[11]=(a[11]&b[0])^(a[10]&b[1])^(a[9]&b[2])^(a[8]&b[3])^(a[7]&b[4])^(a[6]&b[5])^(a[5]&b[6])^(a[4]&b[7])^(a[3]&b[8])^(a[2]&b[9])^(a[1]&b[10])^(a[0]&b[11]);
assign d[12]=(a[12]&b[0])^(a[11]&b[1])^(a[10]&b[2])^(a[9]&b[3])^(a[8]&b[4])^(a[7]&b[5])^(a[6]&b[6])^(a[5]&b[7])^(a[4]&b[8])^(a[3]&b[9])^(a[2]&b[10])^(a[1]&b[11])^(a[0]&b[12]);




//--------e=Ub----------------------------------------
assign e[0]=(a[12]&b[1])^(a[11]&b[2])^(a[10]&b[3])^(a[9]&b[4])^(a[8]&b[5])^(a[7]&b[6])^(a[6]&b[7])^(a[5]&b[8])^(a[4]&b[9])^(a[3]&b[10])^(a[2]&b[11])^(a[1]&b[12]);
assign e[1]=(a[12]&b[2])^(a[11]&b[3])^(a[10]&b[4])^(a[9]&b[5])^(a[8]&b[6])^(a[7]&b[7])^(a[6]&b[8])^(a[5]&b[9])^(a[4]&b[10])^(a[3]&b[11])^(a[2]&b[12]);
assign e[2]=(a[12]&b[3])^(a[11]&b[4])^(a[10]&b[5])^(a[9]&b[6])^(a[8]&b[7])^(a[7]&b[8])^(a[6]&b[9])^(a[5]&b[10])^(a[4]&b[11])^(a[3]&b[12]);
assign e[3]=(a[12]&b[4])^(a[11]&b[5])^(a[10]&b[6])^(a[9]&b[7])^(a[8]&b[8])^(a[7]&b[9])^(a[6]&b[10])^(a[5]&b[11])^(a[4]&b[12]);
assign e[4]=(a[12]&b[5])^(a[11]&b[6])^(a[10]&b[7])^(a[9]&b[8])^(a[8]&b[9])^(a[7]&b[10])^(a[6]&b[11])^(a[5]&b[12]);
assign e[5]=(a[12]&b[6])^(a[11]&b[7])^(a[10]&b[8])^(a[9]&b[9])^(a[8]&b[10])^(a[7]&b[11])^(a[6]&b[12]);
assign e[6]=(a[12]&b[7])^(a[11]&b[8])^(a[10]&b[9])^(a[9]&b[10])^(a[8]&b[11])^(a[7]&b[12]);
assign e[7]=(a[12]&b[8])^(a[11]&b[9])^(a[10]&b[10])^(a[9]&b[11])^(a[8]&b[12]);
assign e[8]=(a[12]&b[9])^(a[11]&b[10])^(a[10]&b[11])^(a[9]&b[12]);
assign e[9]=(a[12]&b[10])^(a[11]&b[11])^(a[10]&b[12]);
assign e[10]=(a[12]&b[11])^(a[11]&b[12]);
assign e[11]=(a[12]&b[12]);

//----------c=d+Q^t+e--------------------------------------
assign c[0]=d[0]^e[0] ^e[9] ^e[10] ;
assign c[1]=d[1]^e[0] ^e[1] ^e[9] ^e[11] ;
assign c[2]=d[2]^e[1] ^e[2] ^e[10] ;
assign c[3]=d[3]^e[0] ^e[2] ^e[3] ^e[9] ^e[10] ^e[11] ;
assign c[4]=d[4]^e[0] ^e[1] ^e[3] ^e[4] ^e[9] ^e[11] ;
assign c[5]=d[5]^e[1] ^e[2] ^e[4] ^e[5] ^e[10] ;
assign c[6]=d[6]^e[2] ^e[3] ^e[5] ^e[6] ^e[11] ;
assign c[7]=d[7]^e[3] ^e[4] ^e[6] ^e[7] ;
assign c[8]=d[8]^e[4] ^e[5] ^e[7] ^e[8] ;
assign c[9]=d[9]^e[5] ^e[6] ^e[8] ^e[9] ;
assign c[10]=d[10]^e[6] ^e[7] ^e[9] ^e[10] ;
assign c[11]=d[11]^e[7] ^e[8] ^e[10] ^e[11] ;
assign c[12]=d[12]^e[8] ^e[9] ^e[11] ;



  

endmodule


module multiplier_column8_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
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
BBM231;

assign BBM1=BBM4^BBM186;
assign BBM2=BBM5^BBM167;
assign BBM3=BBM24^BBM188;
assign BBM4=BBM25^BBM176;
assign BBM5=BBM42^BBM189;
assign BBM6=BBM11^b[3];
assign BBM7=BBM43^BBM190;
assign BBM8=BBM43^BBM191;
assign BBM9=BBM26^BBM181;
assign BBM10=BBM44^b[0];
assign BBM11=BBM33^b[2];
assign BBM12=BBM41^b[12];
assign BBM13=BBM48^BBM193;
assign BBM14=BBM39^b[0];
assign BBM15=BBM45^b[4];
assign BBM16=BBM46^b[2];
assign BBM17=BBM47^BBM210;
assign BBM18=BBM46^b[3];
assign BBM19=BBM44^b[2];
assign BBM20=BBM53^BBM167;
assign BBM21=BBM51^BBM190;
assign BBM22=BBM59^b[5];
assign BBM23=BBM60^b[1];
assign BBM24=BBM83^BBM194;
assign BBM25=BBM59^b[9];
assign BBM26=BBM54^b[3];
assign BBM27=BBM57^b[0];
assign BBM28=BBM58^b[3];
assign BBM29=BBM62^b[3];
assign BBM30=BBM63^b[11];
assign BBM31=BBM62^b[1];
assign BBM32=BBM84^BBM195;
assign BBM33=BBM64^b[7];
assign BBM34=BBM92^BBM183;
assign BBM35=BBM79^BBM177;
assign BBM36=BBM60^b[3];
assign BBM37=BBM63^b[1];
assign BBM38=BBM78^BBM174;
assign BBM39=BBM93^BBM197;
assign BBM40=BBM56^b[4];
assign BBM41=BBM75^b[1]^b[4];
assign BBM42=BBM88^BBM197;
assign BBM43=BBM102^BBM184^b[7];
assign BBM44=BBM98^BBM153;
assign BBM45=BBM64^b[2];
assign BBM46=BBM81^BBM179;
assign BBM47=BBM116^BBM198;
assign BBM48=BBM74^b[6];
assign BBM49=BBM69^b[5];
assign BBM50=BBM92^b[6];
assign BBM51=BBM82^b[2];
assign BBM52=BBM77^b[3];
assign BBM53=BBM123^b[0]^b[6];
assign BBM54=BBM86^b[8];
assign BBM55=BBM108^BBM199;
assign BBM56=BBM95^b[11];
assign BBM57=BBM93^b[9];
assign BBM58=BBM72^b[6];
assign BBM59=BBM123^BBM163;
assign BBM60=BBM95^b[8];
assign BBM62=BBM107^BBM172;
assign BBM63=BBM124^BBM164;
assign BBM64=BBM91^b[5];
assign BBM65=BBM134^BBM202;
assign BBM66=BBM125^b[6];
assign BBM67=BBM119^b[4];
assign BBM68=BBM120^b[5];
assign BBM69=BBM106^b[12];
assign BBM70=BBM136^b[0]^b[3];
assign BBM71=BBM126^b[2];
assign BBM72=BBM103^b[0];
assign BBM73=BBM147^BBM177;
assign BBM74=BBM113^b[12];
assign BBM75=BBM104^b[8];
assign BBM76=BBM149^BBM199;
assign BBM77=BBM135^BBM204;
assign BBM78=BBM126^b[0];
assign BBM79=BBM140^BBM194;
assign BBM80=BBM112^b[0];
assign BBM81=BBM115^b[1];
assign BBM82=BBM125^b[7];
assign BBM83=BBM152^BBM170;
assign BBM84=BBM122^b[0];
assign BBM85=BBM139^BBM198;
assign BBM86=BBM138^BBM180;
assign BBM87=BBM154^BBM207;
assign BBM88=BBM101^b[12];
assign BBM89=BBM126^b[6];
assign BBM90=BBM118^b[0];
assign BBM91=BBM117^b[6];
assign BBM92=BBM131^BBM169;
assign BBM93=BBM137^BBM173;
assign BBM95=BBM99^b[5];
assign BBM96=BBM150^b[9];
assign BBM97=BBM142^b[10];
assign BBM98=BBM143^b[12];
assign BBM99=BBM131^b[7];
assign BBM100=BBM154^b[2];
assign BBM101=BBM170^b[2]^b[8];
assign BBM102=BBM148^b[6];
assign BBM103=BBM129^b[4];
assign BBM104=BBM174^BBM197;
assign BBM105=BBM134^b[5];
assign BBM106=BBM153^b[3];
assign BBM107=BBM156^b[4];
assign BBM108=BBM161^BBM170;
assign BBM109=BBM162^BBM210;
assign BBM111=BBM177^BBM211;
assign BBM112=BBM174^b[4]^b[8];
assign BBM113=BBM158^b[7];
assign BBM115=BBM181^BBM206;
assign BBM116=BBM150^b[3];
assign BBM117=BBM160^b[12];
assign BBM118=BBM156^b[10];
assign BBM119=BBM160^b[3];
assign BBM120=BBM158^b[12];
assign BBM121=BBM165^BBM176;
assign BBM122=BBM141^b[12];
assign BBM123=BBM165^BBM218;
assign BBM124=BBM151^b[4];
assign BBM125=BBM168^BBM186;
assign BBM126=BBM182^BBM215;
assign BBM129=BBM211^b[5];
assign BBM130=BBM166^b[8];
assign BBM131=BBM171^b[10];
assign BBM132=BBM209^b[6];
assign BBM133=BBM178^b[6];
assign BBM134=BBM218^b[0];
assign BBM135=BBM171^b[5];
assign BBM136=BBM167^b[8];
assign BBM137=BBM169^b[4];
assign BBM138=BBM168^b[6];
assign BBM139=BBM206^b[0];
assign BBM140=BBM210^b[5];
assign BBM141=BBM172^b[7];
assign BBM142=BBM162^b[9];
assign BBM143=BBM194^b[9];
assign BBM144=BBM170^b[11];
assign BBM145=BBM164^b[1];
assign BBM147=BBM166^b[11];
assign BBM148=BBM172^b[11];
assign BBM149=BBM189^b[5];
assign BBM150=BBM161^b[8];
assign BBM151=BBM174^b[0];
assign BBM152=BBM204^b[9];
assign BBM153=BBM162^b[4];
assign BBM154=BBM167^b[7];
assign BBM156=BBM194^b[12];
assign BBM157=BBM166^b[9];
assign BBM158=BBM190^b[2];
assign BBM160=BBM199^b[0];
assign BBM61=b[1]^b[2]^b[6]^b[7]^b[8]^b[12];
assign BBM94=b[1]^b[4]^b[5]^b[9]^b[10];
assign BBM110=b[6]^b[7]^b[9]^b[10];
assign BBM114=b[2]^b[3]^b[7]^b[8];
assign BBM127=b[4]^b[8]^b[10]^b[11];
assign BBM128=b[7]^b[9]^b[10]^b[12];
assign BBM146=b[7]^b[8]^b[10];
assign BBM155=b[0]^b[7]^b[11];
assign BBM159=b[5]^b[6]^b[8];
assign BBM161=b[5]^b[6];
assign BBM162=b[6]^b[7];
assign BBM163=b[1]^b[10];
assign BBM164=b[2]^b[12];
assign BBM165=b[3]^b[12];
assign BBM166=b[7]^b[10];
assign BBM167=b[1]^b[9];
assign BBM168=b[1]^b[12];
assign BBM169=b[1]^b[2];
assign BBM170=b[0]^b[10];
assign BBM171=b[9]^b[12];
assign BBM172=b[2]^b[5];
assign BBM173=b[3]^b[10];
assign BBM174=b[3]^b[9];
assign BBM175=b[3]^b[4];
assign BBM176=b[4]^b[6];
assign BBM177=b[2]^b[3];
assign BBM178=b[10]^b[12];
assign BBM179=b[6]^b[8];
assign BBM180=b[2]^b[7];
assign BBM181=b[9]^b[10];
assign BBM182=b[4]^b[11];
assign BBM183=b[3]^b[8];
assign BBM184=b[0]^b[9];
assign BBM185=b[5]^b[12];
assign BBM186=b[0]^b[8];
assign BBM187=b[1]^b[9];
assign BBM188=b[3]^b[5];
assign BBM189=b[4]^b[7];
assign BBM190=b[4]^b[10];
assign BBM191=b[1]^b[8];
assign BBM192=b[6]^b[7];
assign BBM193=b[5]^b[9];
assign BBM194=b[8]^b[11];
assign BBM195=b[4]^b[9];
assign BBM196=b[3]^b[8];
assign BBM197=b[5]^b[11];
assign BBM198=b[10]^b[11];
assign BBM199=b[1]^b[11];
assign BBM200=b[1]^b[10];
assign BBM201=b[2]^b[5];
assign BBM202=b[8]^b[9];
assign BBM203=b[2]^b[3];
assign BBM204=b[2]^b[6];
assign BBM205=b[0]^b[10];
assign BBM206=b[4]^b[5];
assign BBM207=b[11]^b[12];
assign BBM208=b[2]^b[10];
assign BBM209=b[9]^b[11];
assign BBM210=b[0]^b[1];
assign BBM211=b[7]^b[8];
assign BBM212=b[4]^b[10];
assign BBM213=b[4]^b[6];
assign BBM214=b[0]^b[8];
assign BBM215=b[8]^b[10];
assign BBM216=b[1]^b[12];
assign BBM217=b[7]^b[9];
assign BBM218=b[7]^b[11];
assign BBM219=b[8]^b[11];
assign BBM220=b[7]^b[10];
assign BBM221=b[5]^b[6];
assign BBM222=b[1]^b[11];
assign BBM223=b[6]^b[7];
assign BBM224=b[1]^b[9];
assign BBM225=b[1]^b[12];
assign BBM226=b[0]^b[10];
assign BBM227=b[2]^b[5];
assign BBM228=b[4]^b[6];
assign BBM229=b[2]^b[3];
assign BBM230=b[3]^b[8];
assign BBM231=b[5];


assign P[1]=BBM161;
assign P[2]=BBM162;
assign P[3]=BBM129;
assign P[4]=BBM96;
assign P[5]=BBM97;
assign P[6]=BBM130^b[11];
assign P[7]=BBM98;
assign P[8]=BBM131^b[0];
assign P[9]=BBM163^b[11];
assign P[10]=BBM164^b[11];
assign P[11]=BBM165;
assign P[13]=BBM97;
assign P[14]=BBM132^b[8];
assign P[15]=BBM99;
assign P[16]=BBM65^b[6];
assign P[17]=BBM66;
assign P[18]=BBM100;
assign P[19]=BBM101^b[3];
assign P[20]=BBM67^b[9];
assign P[21]=BBM68^b[1];
assign P[22]=BBM102^b[3];
assign P[23]=BBM69;
assign P[24]=BBM103;
assign P[25]=BBM96;
assign P[26]=BBM100;
assign P[27]=BBM70^BBM166;
assign P[28]=BBM71^BBM167;
assign P[29]=BBM22^b[0];
assign P[30]=BBM10;
assign P[31]=BBM23;
assign P[32]=BBM24;
assign P[33]=BBM25;
assign P[34]=BBM71^b[12];
assign P[35]=BBM104^b[12];
assign P[36]=BBM133^b[4];
assign P[37]=BBM105;
assign P[38]=BBM66;
assign P[39]=BBM23;
assign P[40]=BBM11;
assign P[41]=BBM26^b[0];
assign P[42]=BBM68^b[3];
assign P[43]=BBM1;
assign P[44]=BBM2;
assign P[45]=BBM3^BBM168;
assign P[46]=BBM4^b[2];
assign P[47]=BBM5^b[3];
assign P[48]=BBM12^b[6];
assign P[49]=BBM13;
assign P[50]=BBM47^b[7];
assign P[51]=BBM10;
assign P[52]=BBM2;
assign P[53]=BBM106;
assign P[54]=BBM72;
assign P[55]=BBM48^b[11];
assign P[56]=BBM27;
assign P[57]=BBM14;
assign P[58]=BBM15^b[3];
assign P[59]=BBM49^BBM169;
assign P[60]=BBM28^b[2];
assign P[61]=BBM28^BBM167;
assign P[62]=BBM16^b[7];
assign P[63]=BBM3^b[7];
assign P[64]=BBM1;
assign P[65]=BBM14;
assign P[66]=BBM133;
assign P[67]=BBM134;
assign P[68]=BBM29^b[10];
assign P[69]=BBM50;
assign P[70]=BBM73;
assign P[71]=BBM107^b[3];
assign P[72]=BBM135^b[4];
assign P[73]=BBM108;
assign P[74]=BBM109^b[11];
assign P[75]=BBM51;
assign P[76]=BBM70^b[2];
assign P[77]=BBM27;
assign P[78]=BBM73;
assign P[79]=BBM74^b[8];
assign P[80]=BBM75;
assign P[81]=BBM30^BBM162;
assign P[82]=BBM31;
assign P[83]=BBM52;
assign P[84]=BBM106^BBM170;
assign P[85]=BBM76^b[8];
assign P[86]=BBM77^b[8];
assign P[87]=BBM97^b[3];
assign P[88]=BBM78^b[7];
assign P[89]=BBM79^BBM171;
assign P[90]=BBM50;
assign P[91]=BBM52;
assign P[92]=BBM32^b[10];
assign P[93]=BBM17;
assign P[94]=BBM76^b[3];
assign P[95]=BBM80;
assign P[96]=BBM81;
assign P[97]=BBM102^b[10];
assign P[98]=BBM53;
assign P[99]=BBM82^b[4];
assign P[100]=BBM136^BBM172;
assign P[101]=BBM83^b[3];
assign P[102]=BBM67^BBM166;
assign P[103]=BBM31;
assign P[104]=BBM81;
assign P[105]=BBM132^BBM137;
assign P[106]=BBM84^BBM173;
assign P[107]=BBM47^b[9];
assign P[108]=BBM33;
assign P[109]=BBM54;
assign P[110]=BBM111^b[9];
assign P[111]=BBM112^b[10];
assign P[112]=BBM85^b[9];
assign P[113]=BBM55^b[12];
assign P[114]=BBM86^b[11];
assign P[115]=BBM111^b[12];
assign P[116]=BBM80;
assign P[117]=BBM54;
assign P[118]=BBM138^BBM174;
assign P[119]=BBM113;
assign P[120]=BBM6;
assign P[121]=BBM175;
assign P[122]=BBM139;
assign P[123]=BBM140^b[6];
assign P[124]=BBM109^b[2];
assign P[125]=BBM111^b[1];
assign P[126]=BBM112^b[2];
assign P[127]=BBM115^b[3];
assign P[128]=BBM85^b[6];
assign P[129]=BBM33;
assign P[130]=BBM139;
assign P[131]=BBM176^b[1];
assign P[132]=BBM141;
assign P[133]=BBM116^b[4];
assign P[134]=BBM142;
assign P[135]=BBM130;
assign P[136]=BBM143;
assign P[137]=BBM131;
assign P[138]=BBM144;
assign P[139]=BBM117;
assign P[140]=BBM145;
assign P[141]=BBM177;
assign P[142]=BBM175;
assign P[143]=BBM130;
assign P[144]=BBM147^b[9];
assign P[145]=BBM118;
assign P[146]=BBM65^BBM178;
assign P[147]=BBM87;
assign P[148]=BBM88;
assign P[149]=BBM119^b[9];
assign P[150]=BBM120^b[1];
assign P[151]=BBM148^b[3];
assign P[152]=BBM121;
assign P[153]=BBM149;
assign P[154]=BBM150;
assign P[155]=BBM142;
assign P[156]=BBM88;
assign P[157]=BBM34^b[11];
assign P[158]=BBM30^b[10];
assign P[159]=BBM35^b[4];
assign P[160]=BBM18;
assign P[161]=BBM7;
assign P[162]=BBM22^BBM179;
assign P[163]=BBM19;
assign P[164]=BBM36;
assign P[165]=BBM89^b[9];
assign P[166]=BBM56;
assign P[167]=BBM90^b[6];
assign P[168]=BBM87;
assign P[169]=BBM7;
assign P[170]=BBM37^b[8];
assign P[171]=BBM57^b[5];
assign P[172]=BBM151^b[7];
assign P[173]=BBM8;
assign P[174]=BBM9;
assign P[175]=BBM38^BBM180;
assign P[176]=BBM12^BBM170;
assign P[177]=BBM15^BBM181;
assign P[178]=BBM6^b[10];
assign P[179]=BBM26^BBM182;
assign P[180]=BBM32^BBM183;
assign P[181]=BBM18;
assign P[182]=BBM9;
assign P[183]=BBM91^b[4];
assign P[184]=BBM122^b[1];
assign P[185]=BBM99^b[1];
assign P[186]=BBM20;
assign P[187]=BBM21;
assign P[188]=BBM35^b[9];
assign P[189]=BBM27^b[6]^b[12];
assign P[190]=BBM39^b[7];
assign P[191]=BBM29^b[6];
assign P[192]=BBM49^BBM184;
assign P[193]=BBM58^BBM163;
assign P[194]=BBM8;
assign P[195]=BBM21;
assign P[196]=BBM40^b[3];
assign P[197]=BBM89^BBM185;
assign P[198]=BBM16^b[11];
assign P[199]=BBM41^b[6];
assign P[200]=BBM13^b[0];
assign P[201]=BBM17^b[7];
assign P[202]=BBM19^b[1];
assign P[203]=BBM36^b[2];
assign P[204]=BBM38^b[6];
assign P[205]=BBM40^b[1];
assign P[206]=BBM42^b[6];
assign P[207]=BBM20;
assign P[0]=b[5];
assign P[12]=b[4];


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



module multiplier_column2_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
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


assign BBM1=BBM8^BBM142;
assign BBM2=BBM19^BBM171^b[8];
assign BBM3=BBM16^BBM143;
assign BBM5=BBM45^BBM144;
assign BBM6=BBM29^BBM176;
assign BBM8=BBM49^BBM177;
assign BBM9=BBM29^b[6];
assign BBM10=BBM47^BBM177;
assign BBM16=BBM34^b[6];
assign BBM17=BBM75^b[0]^b[6];
assign BBM18=BBM76^b[3]^b[11];
assign BBM19=BBM49^b[7];
assign BBM20=BBM76^BBM179;
assign BBM21=BBM83^BBM145;
assign BBM29=BBM57^BBM178;
assign BBM34=BBM113^b[1]^b[4];
assign BBM35=BBM74^b[1];
assign BBM36=BBM75^b[1];
assign BBM37=BBM96^b[3]^b[4];
assign BBM40=BBM115^BBM180;
assign BBM43=BBM106^b[0]^b[1];
assign BBM45=BBM114^BBM168;
assign BBM46=BBM146^BBM147;
assign BBM47=BBM73^b[10];
assign BBM49=BBM113^b[0]^b[5];
assign BBM53=BBM117^b[3];
assign BBM54=BBM138^BBM162;
assign BBM55=BBM146^BBM184;
assign BBM57=BBM139^BBM181;
assign BBM58=BBM114^b[0];
assign BBM60=BBM141^BBM168;
assign BBM64=BBM129^b[3]^b[5];
assign BBM67=BBM116^b[10];
assign BBM71=BBM144^b[5]^b[10];
assign BBM72=BBM116^b[7];
assign BBM73=BBM117^b[5];
assign BBM74=BBM115^b[5];
assign BBM75=BBM140^BBM183;
assign BBM76=BBM100^b[1];
assign BBM82=BBM154^BBM157;
assign BBM83=BBM158^BBM159;
assign BBM84=BBM129^b[8];
assign BBM85=BBM160^BBM162;
assign BBM86=BBM131^b[6];
assign BBM88=BBM145^b[12];
assign BBM89=BBM133^b[4];
assign BBM96=BBM155^b[0]^b[9];
assign BBM100=BBM131^b[12];
assign BBM101=BBM143^b[1];
assign BBM104=BBM178^b[6]^b[10];
assign BBM105=BBM167^BBM168;
assign BBM106=BBM175^b[7]^b[12];
assign BBM113=BBM153^BBM184;
assign BBM114=BBM142^b[12];
assign BBM115=BBM137^b[4];
assign BBM116=BBM160^BBM173;
assign BBM117=BBM147^b[4];
assign BBM128=BBM153^b[2];
assign BBM129=BBM153^b[9];
assign BBM130=BBM155^b[10];
assign BBM131=BBM157^b[7];
assign BBM133=BBM159^b[5];
assign BBM137=BBM183^b[12];
assign BBM138=BBM165^b[11];
assign BBM139=BBM170^b[8];
assign BBM140=BBM160^b[11];
assign BBM141=BBM181^b[4];
assign BBM143=BBM177^b[7];
assign BBM144=BBM166^b[4];
assign BBM145=BBM162^b[3];
assign BBM146=BBM172^b[0];
assign BBM147=BBM163^b[12];
assign BBM4=b[0]^b[2]^b[3]^b[4]^b[5]^b[7]^b[8]^b[10]^b[11]^b[12];
assign BBM7=b[1]^b[3]^b[4]^b[5]^b[6]^b[8]^b[9]^b[11]^b[12];
assign BBM11=b[0]^b[4]^b[6]^b[7]^b[8]^b[9]^b[11]^b[12];
assign BBM12=b[2]^b[4]^b[5]^b[6]^b[7]^b[9]^b[10]^b[12];
assign BBM13=b[0]^b[4]^b[6]^b[7]^b[8]^b[9]^b[11]^b[12];
assign BBM14=b[2]^b[4]^b[5]^b[6]^b[7]^b[9]^b[10]^b[12];
assign BBM15=b[0]^b[4]^b[6]^b[7]^b[8]^b[9]^b[11]^b[12];
assign BBM22=b[0]^b[2]^b[6]^b[8]^b[9]^b[10]^b[11];
assign BBM23=b[1]^b[3]^b[7]^b[9]^b[10]^b[11]^b[12];
assign BBM24=b[1]^b[5]^b[7]^b[8]^b[9]^b[10]^b[12];
assign BBM25=b[1]^b[3]^b[7]^b[9]^b[10]^b[11]^b[12];
assign BBM26=b[3]^b[5]^b[6]^b[7]^b[8]^b[10]^b[11];
assign BBM27=b[0]^b[2]^b[6]^b[8]^b[9]^b[10]^b[11];
assign BBM28=b[1]^b[5]^b[7]^b[8]^b[9]^b[10]^b[12];
assign BBM30=b[3]^b[5]^b[6]^b[7]^b[8]^b[10]^b[11];
assign BBM31=b[0]^b[2]^b[6]^b[8]^b[9]^b[10]^b[11];
assign BBM32=b[1]^b[3]^b[7]^b[9]^b[10]^b[11]^b[12];
assign BBM33=b[1]^b[5]^b[7]^b[8]^b[9]^b[10]^b[12];
assign BBM38=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM39=b[0]^b[1]^b[3]^b[4]^b[9]^b[11];
assign BBM41=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM42=b[0]^b[1]^b[3]^b[4]^b[9]^b[11];
assign BBM44=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM48=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM50=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM51=b[0]^b[1]^b[3]^b[4]^b[9]^b[11];
assign BBM52=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM56=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM59=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM61=b[0]^b[2]^b[3]^b[8]^b[10];
assign BBM62=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM63=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM65=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM66=b[0]^b[2]^b[3]^b[8]^b[10];
assign BBM68=b[3]^b[5]^b[9]^b[11]^b[12];
assign BBM69=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM70=b[3]^b[5]^b[9]^b[11]^b[12];
assign BBM77=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM78=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM79=b[0]^b[2]^b[3]^b[8]^b[10];
assign BBM80=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM81=b[3]^b[5]^b[9]^b[11]^b[12];
assign BBM87=b[0]^b[9]^b[10]^b[12];
assign BBM90=b[7]^b[8]^b[10]^b[11];
assign BBM91=b[8]^b[9]^b[11]^b[12];
assign BBM92=b[5]^b[6]^b[8]^b[9];
assign BBM93=b[6]^b[7]^b[9]^b[10];
assign BBM94=b[0]^b[9]^b[10]^b[12];
assign BBM95=b[8]^b[9]^b[11]^b[12];
assign BBM97=b[4]^b[5]^b[7]^b[8];
assign BBM98=b[7]^b[8]^b[10]^b[11];
assign BBM99=b[6]^b[7]^b[9]^b[10];
assign BBM102=b[5]^b[6]^b[8]^b[9];
assign BBM103=b[4]^b[5]^b[7]^b[8];
assign BBM107=b[1]^b[2]^b[7]^b[9];
assign BBM108=b[4]^b[6]^b[10]^b[12];
assign BBM109=b[0]^b[5]^b[7]^b[11];
assign BBM110=b[1]^b[2]^b[7]^b[9];
assign BBM111=b[0]^b[5]^b[7]^b[11];
assign BBM112=b[4]^b[6]^b[10]^b[12];
assign BBM118=b[7]^b[8]^b[10]^b[11];
assign BBM119=b[0]^b[9]^b[10]^b[12];
assign BBM120=b[8]^b[9]^b[11]^b[12];
assign BBM121=b[5]^b[6]^b[8]^b[9];
assign BBM122=b[6]^b[7]^b[9]^b[10];
assign BBM123=b[4]^b[5]^b[7]^b[8];
assign BBM124=b[7]^b[8]^b[10]^b[11];
assign BBM125=b[1]^b[2]^b[7]^b[9];
assign BBM126=b[4]^b[6]^b[10]^b[12];
assign BBM127=b[0]^b[5]^b[7]^b[11];
assign BBM132=b[2]^b[11]^b[12];
assign BBM134=b[1]^b[10]^b[11];
assign BBM135=b[2]^b[11]^b[12];
assign BBM136=b[1]^b[10]^b[11];
assign BBM142=b[1]^b[6]^b[8];
assign BBM148=b[9]^b[11]^b[12];
assign BBM149=b[7]^b[9]^b[10];
assign BBM150=b[5]^b[7]^b[8];
assign BBM151=b[2]^b[11]^b[12];
assign BBM152=b[1]^b[10]^b[11];
assign BBM153=b[11]^b[12];
assign BBM154=b[0]^b[12];
assign BBM155=b[1]^b[11];
assign BBM156=b[3]^b[12];
assign BBM157=b[9]^b[10];
assign BBM158=b[10]^b[11];
assign BBM159=b[7]^b[8];
assign BBM160=b[8]^b[9];
assign BBM161=b[3]^b[12];
assign BBM162=b[5]^b[6];
assign BBM163=b[6]^b[7];
assign BBM164=b[3]^b[12];
assign BBM165=b[2]^b[3];
assign BBM166=b[3]^b[9];
assign BBM167=b[0]^b[7];
assign BBM168=b[5]^b[11];
assign BBM169=b[6]^b[11];
assign BBM170=b[0]^b[11];
assign BBM171=b[2]^b[4];
assign BBM172=b[2]^b[8];
assign BBM173=b[1]^b[3];
assign BBM174=b[3]^b[6];
assign BBM175=b[2]^b[5];
assign BBM176=b[1]^b[10];
assign BBM177=b[2]^b[9];
assign BBM178=b[4]^b[12];
assign BBM179=b[5]^b[8];
assign BBM180=b[8]^b[11];
assign BBM181=b[7]^b[9];
assign BBM182=b[5]^b[11];
assign BBM183=b[2]^b[10];
assign BBM184=b[3]^b[10];
assign BBM185=b[7]^b[9];
assign BBM186=b[11]^b[12];
assign BBM187=b[7]^b[8];
assign BBM188=b[11]^b[12];
assign BBM189=b[3]^b[12];
assign BBM190=b[3]^b[12];
assign BBM191=b[5]^b[11];
assign BBM192=b[7]^b[9];
assign BBM193=b[11];

assign P[1]=BBM153;
assign P[2]=BBM154;
assign P[3]=BBM155;
assign P[4]=BBM128;
assign P[5]=BBM156;
assign P[14]=BBM157;
assign P[15]=BBM158;
assign P[16]=BBM129;
assign P[17]=BBM82;
assign P[18]=BBM130;
assign P[19]=BBM128;
assign P[20]=BBM156;
assign P[27]=BBM159;
assign P[28]=BBM160;
assign P[29]=BBM131;
assign P[30]=BBM83;
assign P[31]=BBM84;
assign P[32]=BBM82;
assign P[33]=BBM130;
assign P[34]=BBM128;
assign P[35]=BBM156;
assign P[40]=BBM162;
assign P[41]=BBM163;
assign P[42]=BBM133;
assign P[43]=BBM85;
assign P[44]=BBM86;
assign P[45]=BBM83;
assign P[46]=BBM84;
assign P[47]=BBM82;
assign P[48]=BBM130;
assign P[49]=BBM128;
assign P[50]=BBM156;
assign P[52]=BBM156;
assign P[53]=BBM156^b[4];
assign P[55]=BBM88;
assign P[56]=BBM53;
assign P[57]=BBM89;
assign P[58]=BBM85;
assign P[59]=BBM86;
assign P[60]=BBM83;
assign P[61]=BBM84;
assign P[62]=BBM82;
assign P[63]=BBM130;
assign P[64]=BBM128;
assign P[65]=BBM130;
assign P[66]=BBM137^b[1];
assign P[67]=BBM138;
assign P[68]=BBM34;
assign P[69]=BBM35;
assign P[70]=BBM54;
assign P[71]=BBM53;
assign P[72]=BBM89;
assign P[73]=BBM85;
assign P[74]=BBM86;
assign P[75]=BBM83;
assign P[76]=BBM84;
assign P[77]=BBM82;
assign P[78]=BBM84;
assign P[79]=BBM139^b[10];
assign P[80]=BBM96^b[12];
assign P[81]=BBM36;
assign P[82]=BBM55;
assign P[83]=BBM37;
assign P[84]=BBM35;
assign P[85]=BBM54;
assign P[86]=BBM53;
assign P[87]=BBM89;
assign P[88]=BBM85;
assign P[89]=BBM86;
assign P[90]=BBM83;
assign P[91]=BBM86;
assign P[92]=BBM140^b[6];
assign P[93]=BBM100;
assign P[94]=BBM57^b[6];
assign P[95]=BBM58;
assign P[96]=BBM101;
assign P[97]=BBM55;
assign P[98]=BBM37;
assign P[99]=BBM35;
assign P[100]=BBM54;
assign P[101]=BBM53;
assign P[102]=BBM89;
assign P[103]=BBM85;
assign P[104]=BBM89;
assign P[105]=BBM141^b[6];
assign P[106]=BBM133^b[10];
assign P[107]=BBM60^b[6];
assign P[108]=BBM104;
assign P[109]=BBM105;
assign P[110]=BBM58;
assign P[111]=BBM101;
assign P[112]=BBM55;
assign P[113]=BBM37;
assign P[114]=BBM35;
assign P[115]=BBM54;
assign P[116]=BBM53;
assign P[117]=BBM54;
assign P[118]=BBM106^b[4]^b[11];
assign P[119]=BBM88^b[8];
assign P[120]=BBM60^BBM165;
assign P[121]=BBM40;
assign P[122]=BBM64;
assign P[123]=BBM104;
assign P[124]=BBM105;
assign P[125]=BBM58;
assign P[126]=BBM101;
assign P[127]=BBM55;
assign P[128]=BBM37;
assign P[129]=BBM35;
assign P[130]=BBM37;
assign P[131]=BBM8;
assign P[132]=BBM16;
assign P[133]=BBM43^BBM166;
assign P[134]=BBM17;
assign P[135]=BBM18;
assign P[136]=BBM40;
assign P[137]=BBM64;
assign P[138]=BBM104;
assign P[139]=BBM105;
assign P[140]=BBM58;
assign P[141]=BBM101;
assign P[142]=BBM55;
assign P[143]=BBM101;
assign P[144]=BBM67^BBM167;
assign P[145]=BBM36^b[4];
assign P[146]=BBM19^b[1];
assign P[147]=BBM9;
assign P[148]=BBM20;
assign P[149]=BBM17;
assign P[150]=BBM18;
assign P[151]=BBM40;
assign P[152]=BBM64;
assign P[153]=BBM104;
assign P[154]=BBM105;
assign P[155]=BBM58;
assign P[156]=BBM105;
assign P[157]=BBM45^b[7];
assign P[158]=BBM46^b[9];
assign P[159]=BBM67^BBM168;
assign P[160]=BBM10;
assign P[161]=BBM21;
assign P[162]=BBM9;
assign P[163]=BBM20;
assign P[164]=BBM17;
assign P[165]=BBM18;
assign P[166]=BBM40;
assign P[167]=BBM64;
assign P[168]=BBM104;
assign P[169]=BBM64;
assign P[170]=BBM71^BBM169;
assign P[171]=BBM47^BBM170;
assign P[172]=BBM72^b[6];
assign P[173]=BBM2;
assign P[174]=BBM5;
assign P[175]=BBM10;
assign P[176]=BBM21;
assign P[177]=BBM9;
assign P[178]=BBM20;
assign P[179]=BBM17;
assign P[180]=BBM18;
assign P[181]=BBM40;
assign P[182]=BBM18;
assign P[183]=BBM72^BBM171;
assign P[184]=BBM71^BBM172;
assign P[185]=BBM73^b[1];
assign P[186]=BBM1;
assign P[187]=BBM3;
assign P[188]=BBM2;
assign P[189]=BBM5;
assign P[190]=BBM10;
assign P[191]=BBM21;
assign P[192]=BBM9;
assign P[193]=BBM20;
assign P[194]=BBM17;
assign P[195]=BBM20;
assign P[196]=BBM43^BBM169;
assign P[197]=BBM46^BBM173;
assign P[198]=BBM74^b[3];
assign P[199]=BBM6^BBM174;
assign P[200]=BBM6^BBM175;
assign P[201]=BBM1;
assign P[202]=BBM3;
assign P[203]=BBM2;
assign P[204]=BBM5;
assign P[205]=BBM10;
assign P[206]=BBM21;
assign P[207]=BBM9;
assign P[0]=b[11];
assign P[6]=b[4];
assign P[7]=b[5];
assign P[8]=b[6];
assign P[9]=b[7];
assign P[10]=b[8];
assign P[11]=b[9];
assign P[12]=b[10];
assign P[13]=b[9];
assign P[21]=b[4];
assign P[22]=b[5];
assign P[23]=b[6];
assign P[24]=b[7];
assign P[25]=b[8];
assign P[26]=b[7];
assign P[36]=b[4];
assign P[37]=b[5];
assign P[38]=b[6];
assign P[39]=b[5];
assign P[51]=b[4];
assign P[54]=b[4]^b[5];


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

module multiplier_column3_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
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
BBM211,BBM212,BBM213,BBM214,BBM215
;

assign BBM1=BBM24^b[1]^b[12];
assign BBM2=BBM23^BBM183;
assign BBM3=BBM23^b[2]^b[5];
assign BBM8=BBM41^BBM152;
assign BBM9=BBM36^BBM178;
assign BBM10=BBM24^b[7];
assign BBM15=BBM69^BBM153;
assign BBM17=BBM53^BBM184;
assign BBM18=BBM53^BBM185;
assign BBM19=BBM49^BBM186;
assign BBM23=BBM40^BBM187;
assign BBM24=BBM44^BBM180;
assign BBM26=BBM101^BBM144^b[0];
assign BBM27=BBM79^BBM154;
assign BBM30=BBM92^BBM155;
assign BBM31=BBM68^BBM188;
assign BBM32=BBM67^BBM188;
assign BBM36=BBM60^BBM180;
assign BBM40=BBM62^b[12];
assign BBM41=BBM56^b[6];
assign BBM42=BBM98^BBM192;
assign BBM43=BBM98^BBM190;
assign BBM44=BBM91^BBM193;
assign BBM45=BBM94^BBM175;
assign BBM49=BBM119^BBM156;
assign BBM51=BBM89^BBM191;
assign BBM53=BBM79^BBM181;
assign BBM56=BBM127^BBM194;
assign BBM57=BBM95^b[10];
assign BBM58=BBM127^BBM195;
assign BBM60=BBM99^b[12];
assign BBM62=BBM128^b[9]^b[10];
assign BBM63=BBM87^b[11];
assign BBM64=BBM118^BBM194;
assign BBM65=BBM129^BBM196;
assign BBM67=BBM129^b[4]^b[12];
assign BBM68=BBM141^BBM171^b[0];
assign BBM69=BBM97^b[9];
assign BBM70=BBM128^BBM197;
assign BBM71=BBM130^BBM195;
assign BBM76=BBM123^b[11];
assign BBM77=BBM144^BBM168;
assign BBM78=BBM124^b[8];
assign BBM79=BBM116^b[5];
assign BBM80=BBM156^b[8]^b[12];
assign BBM83=BBM130^b[4];
assign BBM84=BBM160^BBM192;
assign BBM87=BBM131^b[9];
assign BBM89=BBM149^BBM186;
assign BBM90=BBM147^b[7]^b[10];
assign BBM91=BBM111^b[6];
assign BBM92=BBM103^b[0];
assign BBM93=BBM104^b[1];
assign BBM94=BBM148^BBM192;
assign BBM95=BBM157^BBM197;
assign BBM96=BBM151^BBM200;
assign BBM97=BBM159^BBM196;
assign BBM98=BBM110^b[1];
assign BBM99=BBM131^b[11];
assign BBM100=BBM166^BBM169;
assign BBM101=BBM167^BBM170;
assign BBM102=BBM140^b[9];
assign BBM103=BBM148^b[4];
assign BBM104=BBM170^BBM172;
assign BBM105=BBM143^b[6];
assign BBM106=BBM154^b[1];
assign BBM110=BBM143^b[12];
assign BBM111=BBM158^b[8];
assign BBM112=BBM149^b[7];
assign BBM116=BBM144^b[9];
assign BBM117=BBM150^b[4];
assign BBM118=BBM151^b[5];
assign BBM119=BBM142^b[5];
assign BBM123=BBM155^b[5];
assign BBM124=BBM184^BBM185;
assign BBM125=BBM160^b[4];
assign BBM126=BBM172^BBM191;
assign BBM127=BBM176^BBM187;
assign BBM128=BBM169^BBM201;
assign BBM129=BBM153^b[7];
assign BBM130=BBM176^b[2]^b[8];
assign BBM131=BBM185^b[4]^b[8];
assign BBM140=BBM191^b[12];
assign BBM141=BBM166^b[1];
assign BBM142=BBM167^b[2];
assign BBM143=BBM179^b[10];
assign BBM144=BBM174^b[6];
assign BBM147=BBM188^b[11];
assign BBM148=BBM169^b[5];
assign BBM149=BBM193^b[1];
assign BBM150=BBM175^b[12];
assign BBM151=BBM178^b[11];
assign BBM152=BBM179^b[2];
assign BBM153=BBM172^b[1];
assign BBM154=BBM185^b[12];
assign BBM155=BBM183^b[2];
assign BBM156=BBM200^b[0];
assign BBM157=BBM171^b[1];
assign BBM158=BBM166^b[0];
assign BBM159=BBM168^b[4];
assign BBM161=BBM179^b[6];
assign BBM4=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[8]^b[9]^b[10]^b[11]^b[12];
assign BBM5=b[0]^b[1]^b[3]^b[4]^b[6]^b[7]^b[8]^b[9]^b[10]^b[11]^b[12];
assign BBM6=b[0]^b[1]^b[2]^b[4]^b[5]^b[7]^b[8]^b[9]^b[10]^b[11]^b[12];
assign BBM7=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[8]^b[9]^b[10]^b[11]^b[12];
assign BBM11=b[1]^b[2]^b[3]^b[4]^b[6]^b[7]^b[9]^b[10]^b[11]^b[12];
assign BBM12=b[0]^b[2]^b[3]^b[4]^b[5]^b[7]^b[8]^b[10]^b[11]^b[12];
assign BBM13=b[0]^b[2]^b[3]^b[5]^b[6]^b[7]^b[8]^b[9]^b[10]^b[11];
assign BBM14=b[0]^b[2]^b[3]^b[5]^b[6]^b[7]^b[8]^b[9]^b[10]^b[11];
assign BBM16=b[1]^b[3]^b[4]^b[5]^b[6]^b[8]^b[9]^b[11]^b[12];
assign BBM20=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7]^b[8]^b[9];
assign BBM21=b[1]^b[2]^b[4]^b[5]^b[6]^b[7]^b[8]^b[9]^b[10];
assign BBM22=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[11]^b[12];
assign BBM25=b[1]^b[3]^b[4]^b[5]^b[6]^b[8]^b[9]^b[11]^b[12];
assign BBM28=b[0]^b[4]^b[6]^b[7]^b[8]^b[9]^b[11]^b[12];
assign BBM29=b[2]^b[4]^b[5]^b[6]^b[7]^b[9]^b[10]^b[12];
assign BBM33=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7]^b[8];
assign BBM34=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[10]^b[11];
assign BBM35=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7]^b[12];
assign BBM37=b[0]^b[4]^b[6]^b[7]^b[8]^b[9]^b[11]^b[12];
assign BBM38=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7]^b[8];
assign BBM39=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[10]^b[11];
assign BBM46=b[1]^b[3]^b[7]^b[9]^b[10]^b[11]^b[12];
assign BBM47=b[1]^b[5]^b[7]^b[8]^b[9]^b[10]^b[12];
assign BBM48=b[0]^b[2]^b[6]^b[8]^b[9]^b[10]^b[11];
assign BBM50=b[3]^b[5]^b[6]^b[7]^b[8]^b[10]^b[11];
assign BBM52=b[0]^b[1]^b[2]^b[3]^b[4]^b[9]^b[10];
assign BBM54=b[1]^b[3]^b[7]^b[9]^b[10]^b[11]^b[12];
assign BBM55=b[0]^b[2]^b[6]^b[8]^b[9]^b[10]^b[11];
assign BBM59=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM61=b[0]^b[1]^b[3]^b[4]^b[9]^b[11];
assign BBM66=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM72=b[0]^b[1]^b[2]^b[7]^b[8]^b[12];
assign BBM73=b[0]^b[1]^b[2]^b[3]^b[8]^b[9];
assign BBM74=b[1]^b[2]^b[4]^b[5]^b[10]^b[12];
assign BBM75=b[2]^b[4]^b[8]^b[10]^b[11]^b[12];
assign BBM81=b[2]^b[3]^b[5]^b[6]^b[11];
assign BBM82=b[3]^b[4]^b[6]^b[7]^b[12];
assign BBM85=b[0]^b[2]^b[3]^b[8]^b[10];
assign BBM86=b[0]^b[1]^b[6]^b[8]^b[12];
assign BBM88=b[3]^b[5]^b[9]^b[11]^b[12];
assign BBM107=b[7]^b[8]^b[10]^b[11];
assign BBM108=b[8]^b[9]^b[11]^b[12];
assign BBM109=b[0]^b[9]^b[10]^b[12];
assign BBM113=b[4]^b[5]^b[7]^b[8];
assign BBM114=b[5]^b[6]^b[8]^b[9];
assign BBM115=b[6]^b[7]^b[9]^b[10];
assign BBM120=b[1]^b[2]^b[7]^b[9];
assign BBM121=b[4]^b[6]^b[10]^b[12];
assign BBM122=b[0]^b[5]^b[7]^b[11];
assign BBM132=b[4]^b[5]^b[7]^b[8];
assign BBM133=b[7]^b[8]^b[10]^b[11];
assign BBM134=b[8]^b[9]^b[11]^b[12];
assign BBM135=b[5]^b[6]^b[8]^b[9];
assign BBM136=b[1]^b[2]^b[7]^b[9];
assign BBM137=b[4]^b[5]^b[7]^b[8];
assign BBM138=b[4]^b[6]^b[10]^b[12];
assign BBM139=b[0]^b[5]^b[7]^b[11];
assign BBM145=b[1]^b[10]^b[11];
assign BBM146=b[2]^b[11]^b[12];
assign BBM160=b[5]^b[9]^b[12];
assign BBM162=b[5]^b[7]^b[8];
assign BBM163=b[0]^b[7]^b[11];
assign BBM164=b[1]^b[10]^b[11];
assign BBM165=b[2]^b[11]^b[12];
assign BBM166=b[10]^b[11];
assign BBM167=b[11]^b[12];
assign BBM168=b[3]^b[12];
assign BBM169=b[7]^b[8];
assign BBM170=b[8]^b[9];
assign BBM171=b[4]^b[5];
assign BBM172=b[5]^b[6];
assign BBM173=b[3]^b[12];
assign BBM174=b[4]^b[7];
assign BBM175=b[6]^b[10];
assign BBM176=b[1]^b[3];
assign BBM177=b[4]^b[6];
assign BBM178=b[0]^b[7];
assign BBM179=b[7]^b[9];
assign BBM180=b[3]^b[5];
assign BBM181=b[1]^b[8];
assign BBM182=b[6]^b[9];
assign BBM183=b[3]^b[6];
assign BBM184=b[0]^b[3];
assign BBM185=b[2]^b[10];
assign BBM186=b[3]^b[4];
assign BBM187=b[4]^b[11];
assign BBM188=b[2]^b[3];
assign BBM189=b[3]^b[5];
assign BBM190=b[5]^b[8];
assign BBM191=b[0]^b[10];
assign BBM192=b[3]^b[11];
assign BBM193=b[2]^b[9];
assign BBM194=b[10]^b[12];
assign BBM195=b[0]^b[9];
assign BBM196=b[8]^b[11];
assign BBM197=b[2]^b[12];
assign BBM198=b[6]^b[7];
assign BBM199=b[3]^b[11];
assign BBM200=b[1]^b[6];
assign BBM201=b[0]^b[1];
assign BBM202=b[2]^b[3];
assign BBM203=b[2]^b[10];
assign BBM204=b[7]^b[8];
assign BBM205=b[10]^b[12];
assign BBM206=b[7]^b[9];
assign BBM207=b[0]^b[11];
assign BBM208=b[10]^b[11];
assign BBM209=b[11]^b[12];
assign BBM210=b[3]^b[12];
assign BBM211=b[7]^b[8];
assign BBM212=b[2]^b[10];
assign BBM213=b[3]^b[11];
assign BBM214=b[10]^b[12];
assign BBM215=b[10];
assign P[1]=BBM166;
assign P[2]=BBM167;
assign P[3]=BBM140;
assign P[4]=BBM141;
assign P[5]=BBM142;
assign P[6]=BBM168;
assign P[14]=BBM169;
assign P[15]=BBM170;
assign P[16]=BBM143;
assign P[17]=BBM100;
assign P[18]=BBM101;
assign P[19]=BBM102;
assign P[20]=BBM141;
assign P[21]=BBM142;
assign P[22]=BBM168;
assign P[27]=BBM171;
assign P[28]=BBM172;
assign P[29]=BBM144;
assign P[30]=BBM103;
assign P[31]=BBM104;
assign P[32]=BBM105;
assign P[33]=BBM100;
assign P[34]=BBM101;
assign P[35]=BBM102;
assign P[36]=BBM141;
assign P[37]=BBM142;
assign P[38]=BBM168;
assign P[39]=BBM141;
assign P[40]=BBM106;
assign P[41]=BBM147;
assign P[42]=BBM56;
assign P[43]=BBM57;
assign P[44]=BBM76;
assign P[45]=BBM77;
assign P[46]=BBM103;
assign P[47]=BBM104;
assign P[48]=BBM105;
assign P[49]=BBM100;
assign P[50]=BBM101;
assign P[51]=BBM102;
assign P[52]=BBM100;
assign P[53]=BBM110;
assign P[54]=BBM111;
assign P[55]=BBM40;
assign P[56]=BBM112;
assign P[57]=BBM78;
assign P[58]=BBM58;
assign P[59]=BBM57;
assign P[60]=BBM76;
assign P[61]=BBM77;
assign P[62]=BBM103;
assign P[63]=BBM104;
assign P[64]=BBM105;
assign P[65]=BBM103;
assign P[66]=BBM116;
assign P[67]=BBM148^b[10];
assign P[68]=BBM79^b[11];
assign P[69]=BBM117;
assign P[70]=BBM118;
assign P[71]=BBM80;
assign P[72]=BBM112;
assign P[73]=BBM78;
assign P[74]=BBM58;
assign P[75]=BBM57;
assign P[76]=BBM76;
assign P[77]=BBM77;
assign P[78]=BBM57;
assign P[79]=BBM41;
assign P[80]=BBM119^BBM174;
assign P[81]=BBM83^BBM175;
assign P[82]=BBM42;
assign P[83]=BBM60;
assign P[84]=BBM84;
assign P[85]=BBM117;
assign P[86]=BBM118;
assign P[87]=BBM80;
assign P[88]=BBM112;
assign P[89]=BBM78;
assign P[90]=BBM58;
assign P[91]=BBM112;
assign P[92]=BBM62^b[3];
assign P[93]=BBM63^b[1];
assign P[94]=BBM64^BBM176;
assign P[95]=BBM26;
assign P[96]=BBM43;
assign P[97]=BBM44;
assign P[98]=BBM42;
assign P[99]=BBM60;
assign P[100]=BBM84;
assign P[101]=BBM117;
assign P[102]=BBM118;
assign P[103]=BBM80;
assign P[104]=BBM117;
assign P[105]=BBM64^BBM177;
assign P[106]=BBM65^b[12];
assign P[107]=BBM87^BBM178;
assign P[108]=BBM15;
assign P[109]=BBM27;
assign P[110]=BBM45;
assign P[111]=BBM26;
assign P[112]=BBM43;
assign P[113]=BBM44;
assign P[114]=BBM42;
assign P[115]=BBM60;
assign P[116]=BBM84;
assign P[117]=BBM42;
assign P[118]=BBM83^BBM179;
assign P[119]=BBM87^BBM180;
assign P[120]=BBM67;
assign P[121]=BBM1;
assign P[122]=BBM8;
assign P[123]=BBM9;
assign P[124]=BBM15;
assign P[125]=BBM27;
assign P[126]=BBM45;
assign P[127]=BBM26;
assign P[128]=BBM43;
assign P[129]=BBM44;
assign P[130]=BBM26;
assign P[131]=BBM68^b[6];
assign P[132]=BBM49^b[7];
assign P[133]=BBM89^b[11];
assign P[134]=BBM10;
assign P[135]=BBM2;
assign P[136]=BBM3;
assign P[137]=BBM1;
assign P[138]=BBM8;
assign P[139]=BBM9;
assign P[140]=BBM15;
assign P[141]=BBM27;
assign P[142]=BBM45;
assign P[143]=BBM15;
assign P[144]=BBM90^BBM181;
assign P[145]=BBM69^b[2];
assign P[146]=BBM91^b[1];
assign P[147]=BBM30;
assign P[148]=BBM17;
assign P[149]=BBM18;
assign P[150]=BBM10;
assign P[151]=BBM2;
assign P[152]=BBM3;
assign P[153]=BBM1;
assign P[154]=BBM8;
assign P[155]=BBM9;
assign P[156]=BBM1;
assign P[157]=BBM92;
assign P[158]=BBM93^b[0];
assign P[159]=BBM94^b[12];
assign P[160]=BBM31;
assign P[161]=BBM19;
assign P[162]=BBM32;
assign P[163]=BBM30;
assign P[164]=BBM17;
assign P[165]=BBM18;
assign P[166]=BBM10;
assign P[167]=BBM2;
assign P[168]=BBM3;
assign P[169]=BBM10;
assign P[170]=BBM95;
assign P[171]=BBM123;
assign P[172]=BBM63^b[0]^b[5];
assign P[173]=BBM70;
assign P[174]=BBM71;
assign P[175]=BBM51;
assign P[176]=BBM31;
assign P[177]=BBM19;
assign P[178]=BBM32;
assign P[179]=BBM30;
assign P[180]=BBM17;
assign P[181]=BBM18;
assign P[182]=BBM30;
assign P[183]=BBM149;
assign P[184]=BBM124;
assign P[185]=BBM65^b[2];
assign P[186]=BBM125;
assign P[187]=BBM126;
assign P[188]=BBM96;
assign P[189]=BBM70;
assign P[190]=BBM71;
assign P[191]=BBM51;
assign P[192]=BBM31;
assign P[193]=BBM19;
assign P[194]=BBM32;
assign P[195]=BBM31;
assign P[196]=BBM150;
assign P[197]=BBM151;
assign P[198]=BBM36;
assign P[199]=BBM106^BBM182;
assign P[200]=BBM90;
assign P[201]=BBM97;
assign P[202]=BBM125;
assign P[203]=BBM126;
assign P[204]=BBM96;
assign P[205]=BBM70;
assign P[206]=BBM71;
assign P[207]=BBM51;
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
assign P9[12:0]=P[116:104];
assign P10[12:0]=P[129:117];
assign P11[12:0]=P[142:130];
assign P12[12:0]=P[155:143];
assign P13[12:0]=P[168:156];
assign P14[12:0]=P[181:169];
assign P15[12:0]=P[194:182];
assign P16[12:0]=P[207:195];










endmodule


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

module multiplier_column6_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
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
BBM211,BBM212,BBM213,BBM214,BBM215,BBM216,BBM217,BBM218;

assign BBM1=BBM9^BBM184;
assign BBM2=BBM16^BBM182^b[6];
assign BBM3=BBM13^b[0]^b[7];
assign BBM4=BBM9^b[7];
assign BBM5=BBM24^BBM185;
assign BBM6=BBM27^BBM186;
assign BBM7=BBM27^BBM187;
assign BBM8=BBM26^b[1]^b[4];
assign BBM9=BBM15^b[3]^b[5];
assign BBM10=BBM39^BBM177;
assign BBM11=BBM45^BBM188;
assign BBM12=BBM46^b[5]^b[11];
assign BBM13=BBM31^b[3]^b[5];
assign BBM14=BBM40^b[8];
assign BBM15=BBM47^b[6];
assign BBM16=BBM48^BBM183;
assign BBM17=BBM62^BBM189;
assign BBM18=BBM47^b[5];
assign BBM19=BBM46^b[9];
assign BBM20=BBM57^BBM179;
assign BBM21=BBM45^b[9];
assign BBM22=BBM64^BBM191;
assign BBM23=BBM80^BBM192;
assign BBM24=BBM72^BBM193;
assign BBM25=BBM61^BBM185;
assign BBM26=BBM65^BBM194;
assign BBM27=BBM81^BBM195;
assign BBM28=BBM59^b[10];
assign BBM29=BBM108^BBM194;
assign BBM30=BBM95^BBM185;
assign BBM31=BBM106^BBM182;
assign BBM32=BBM99^BBM193;
assign BBM33=BBM82^b[2];
assign BBM34=BBM108^b[0]^b[2];
assign BBM35=BBM88^BBM195;
assign BBM36=BBM109^BBM197;
assign BBM37=BBM81^b[11];
assign BBM38=BBM68^b[8];
assign BBM39=BBM110^BBM188;
assign BBM40=BBM98^BBM198;
assign BBM41=BBM82^b[4];
assign BBM42=BBM109^BBM199;
assign BBM43=BBM83^b[11];
assign BBM44=BBM83^b[8];
assign BBM45=BBM80^b[8];
assign BBM46=BBM105^BBM200;
assign BBM47=BBM94^b[9]^b[11];
assign BBM48=BBM125^BBM165;
assign BBM49=BBM96^b[11];
assign BBM50=BBM107^b[7];
assign BBM51=BBM111^b[5];
assign BBM52=BBM112^b[6];
assign BBM53=BBM143^b[0]^b[9];
assign BBM54=BBM113^b[4];
assign BBM55=BBM144^BBM201;
assign BBM56=BBM120^b[2];
assign BBM57=BBM101^b[5];
assign BBM58=BBM126^BBM194;
assign BBM59=BBM114^b[5];
assign BBM60=BBM144^b[4]^b[8];
assign BBM61=BBM115^b[11];
assign BBM62=BBM91^b[9];
assign BBM63=BBM90^b[3];
assign BBM64=BBM117^b[7];
assign BBM65=BBM86^b[0];
assign BBM67=BBM113^b[5];
assign BBM68=BBM146^BBM201;
assign BBM69=BBM119^b[12];
assign BBM70=BBM120^b[0];
assign BBM71=BBM103^b[1];
assign BBM72=BBM111^b[1];
assign BBM73=BBM119^b[9];
assign BBM74=BBM120^b[10];
assign BBM75=BBM117^b[5];
assign BBM76=BBM115^b[2];
assign BBM77=BBM119^b[1];
assign BBM79=BBM88^b[4];
assign BBM80=BBM133^BBM189;
assign BBM81=BBM89^b[1];
assign BBM82=BBM112^b[7];
assign BBM83=BBM135^b[6]^b[7];
assign BBM85=BBM137^b[11];
assign BBM86=BBM138^b[12];
assign BBM87=BBM139^b[0];
assign BBM88=BBM135^b[10];
assign BBM89=BBM136^b[8];
assign BBM90=BBM124^b[6];
assign BBM91=BBM130^b[4];
assign BBM92=BBM131^b[5];
assign BBM93=BBM149^b[7];
assign BBM94=BBM174^BBM200;
assign BBM95=BBM125^b[0];
assign BBM96=BBM171^BBM172;
assign BBM97=BBM151^b[12];
assign BBM98=BBM168^BBM202;
assign BBM99=BBM132^b[11];
assign BBM100=BBM152^b[11];
assign BBM101=BBM153^b[1];
assign BBM102=BBM154^b[5];
assign BBM103=BBM151^b[10];
assign BBM104=BBM140^b[0];
assign BBM105=BBM176^BBM180;
assign BBM106=BBM147^b[12];
assign BBM107=BBM153^b[3];
assign BBM108=BBM155^b[1];
assign BBM109=BBM152^b[10];
assign BBM110=BBM138^b[0];
assign BBM111=BBM188^b[9]^b[11];
assign BBM112=BBM169^b[0]^b[12];
assign BBM113=BBM149^b[8];
assign BBM114=BBM135^b[4];
assign BBM115=BBM154^b[7];
assign BBM117=BBM134^b[4];
assign BBM119=BBM145^b[8];
assign BBM120=BBM155^b[4];
assign BBM124=BBM183^b[10];
assign BBM125=BBM166^b[1];
assign BBM126=BBM179^b[11];
assign BBM127=BBM170^b[5];
assign BBM128=BBM183^b[6];
assign BBM129=BBM168^b[8];
assign BBM130=BBM192^b[6];
assign BBM131=BBM173^b[7];
assign BBM132=BBM168^b[6];
assign BBM133=BBM181^b[3];
assign BBM134=BBM166^b[0];
assign BBM135=BBM176^b[12];
assign BBM136=BBM197^b[5];
assign BBM137=BBM162^b[10];
assign BBM138=BBM163^b[11];
assign BBM139=BBM192^b[9];
assign BBM140=BBM164^b[1];
assign BBM143=BBM191^b[11];
assign BBM144=BBM164^b[3];
assign BBM145=BBM167^b[2];
assign BBM146=BBM178^b[6];
assign BBM147=BBM166^b[8];
assign BBM149=BBM176^b[9];
assign BBM150=BBM173^b[1];
assign BBM151=BBM201^b[4];
assign BBM152=BBM171^b[0];
assign BBM153=BBM188^b[12];
assign BBM154=BBM208^b[6];
assign BBM155=BBM163^b[3];
assign BBM66=b[2]^b[3]^b[7]^b[10]^b[11];
assign BBM78=b[2]^b[3]^b[4]^b[8]^b[9];
assign BBM84=b[2]^b[3]^b[4]^b[8]^b[9];
assign BBM116=b[4]^b[6]^b[10]^b[12];
assign BBM118=b[8]^b[9]^b[11]^b[12];
assign BBM121=b[2]^b[3]^b[7]^b[8];
assign BBM122=b[4]^b[5]^b[7]^b[8];
assign BBM123=b[3]^b[4]^b[8]^b[9];
assign BBM141=b[5]^b[6]^b[8];
assign BBM142=b[6]^b[7]^b[9];
assign BBM148=b[1]^b[2]^b[12];
assign BBM156=b[0]^b[10]^b[11];
assign BBM157=b[8]^b[9]^b[11];
assign BBM158=b[2]^b[3]^b[7];
assign BBM159=b[4]^b[5]^b[7];
assign BBM160=b[6]^b[7]^b[9];
assign BBM161=b[1]^b[2]^b[12];
assign BBM162=b[7]^b[8];
assign BBM163=b[8]^b[9];
assign BBM164=b[11]^b[12];
assign BBM165=b[3]^b[12];
assign BBM166=b[10]^b[11];
assign BBM167=b[3]^b[7];
assign BBM168=b[5]^b[10];
assign BBM169=b[1]^b[8];
assign BBM170=b[6]^b[8];
assign BBM171=b[3]^b[6];
assign BBM172=b[2]^b[5];
assign BBM173=b[0]^b[11];
assign BBM174=b[2]^b[8];
assign BBM175=b[8]^b[11];
assign BBM176=b[1]^b[2];
assign BBM177=b[7]^b[12];
assign BBM178=b[2]^b[12];
assign BBM179=b[2]^b[3];
assign BBM180=b[3]^b[4];
assign BBM181=b[0]^b[5];
assign BBM182=b[2]^b[4];
assign BBM183=b[7]^b[9];
assign BBM184=b[1]^b[12];
assign BBM185=b[5]^b[12];
assign BBM186=b[0]^b[3];
assign BBM187=b[2]^b[10];
assign BBM188=b[4]^b[6];
assign BBM189=b[2]^b[7];
assign BBM190=b[2]^b[3];
assign BBM191=b[1]^b[3];
assign BBM192=b[10]^b[12];
assign BBM193=b[3]^b[8];
assign BBM194=b[7]^b[10];
assign BBM195=b[6]^b[9];
assign BBM196=b[5]^b[12];
assign BBM197=b[4]^b[7];
assign BBM198=b[9]^b[12];
assign BBM199=b[2]^b[9];
assign BBM200=b[0]^b[10];
assign BBM201=b[5]^b[9];
assign BBM202=b[1]^b[7];
assign BBM203=b[3]^b[6];
assign BBM204=b[4]^b[9];
assign BBM205=b[7]^b[9];
assign BBM206=b[10]^b[11];
assign BBM207=b[5]^b[10];
assign BBM208=b[0]^b[1];
assign BBM209=b[4]^b[6];
assign BBM210=b[10]^b[11];
assign BBM211=b[8]^b[9];
assign BBM212=b[1]^b[2];
assign BBM213=b[5]^b[10];
assign BBM214=b[3]^b[6];
assign BBM215=b[2]^b[3];
assign BBM216=b[7]^b[9];
assign BBM217=b[10]^b[11];
assign BBM218=b[7];
assign P[1]=BBM162;
assign P[2]=BBM163;
assign P[3]=BBM124;
assign P[4]=BBM85;
assign P[5]=BBM86;
assign P[6]=BBM87;
assign P[7]=BBM125;
assign P[8]=BBM164^b[2];
assign P[9]=BBM165;
assign P[13]=BBM125;
assign P[14]=BBM88;
assign P[15]=BBM126;
assign P[16]=BBM48^b[4];
assign P[17]=BBM28;
assign P[18]=BBM49;
assign P[19]=BBM50;
assign P[20]=BBM89;
assign P[21]=BBM127^b[9];
assign P[22]=BBM90;
assign P[23]=BBM85;
assign P[24]=BBM86;
assign P[25]=BBM87;
assign P[26]=BBM89;
assign P[27]=BBM128^b[4];
assign P[28]=BBM129^b[7];
assign P[29]=BBM51^b[7];
assign P[30]=BBM91;
assign P[31]=BBM92;
assign P[32]=BBM52;
assign P[33]=BBM93;
assign P[34]=BBM94^b[3];
assign P[35]=BBM53^b[4];
assign P[36]=BBM28;
assign P[37]=BBM49;
assign P[38]=BBM50;
assign P[39]=BBM93;
assign P[40]=BBM29^b[0];
assign P[41]=BBM54^BBM166;
assign P[42]=BBM30^BBM167;
assign P[43]=BBM10;
assign P[44]=BBM14;
assign P[45]=BBM15;
assign P[46]=BBM16;
assign P[47]=BBM31;
assign P[48]=BBM55;
assign P[49]=BBM91;
assign P[50]=BBM92;
assign P[51]=BBM52;
assign P[52]=BBM16;
assign P[53]=BBM54^BBM167;
assign P[54]=BBM56^BBM168;
assign P[55]=BBM57^b[7];
assign P[56]=BBM1;
assign P[57]=BBM2;
assign P[58]=BBM3;
assign P[59]=BBM5;
assign P[60]=BBM17^b[5];
assign P[61]=BBM32^b[7];
assign P[62]=BBM10;
assign P[63]=BBM14;
assign P[64]=BBM15;
assign P[65]=BBM5;
assign P[66]=BBM58^BBM169;
assign P[67]=BBM56^BBM164;
assign P[68]=BBM95^BBM170;
assign P[69]=BBM11;
assign P[70]=BBM6;
assign P[71]=BBM7;
assign P[72]=BBM4;
assign P[73]=BBM8^BBM171;
assign P[74]=BBM8^BBM172;
assign P[75]=BBM1;
assign P[76]=BBM2;
assign P[77]=BBM3;
assign P[78]=BBM4;
assign P[79]=BBM59;
assign P[80]=BBM96;
assign P[81]=BBM18^b[4];
assign P[82]=BBM33;
assign P[83]=BBM34;
assign P[84]=BBM19;
assign P[85]=BBM12;
assign P[86]=BBM20^BBM173;
assign P[87]=BBM20^b[7];
assign P[88]=BBM11;
assign P[89]=BBM6;
assign P[90]=BBM7;
assign P[91]=BBM12;
assign P[92]=BBM130;
assign P[93]=BBM131;
assign P[94]=BBM13;
assign P[95]=BBM35;
assign P[96]=BBM58;
assign P[97]=BBM60;
assign P[98]=BBM97;
assign P[99]=BBM132^b[0];
assign P[100]=BBM61;
assign P[101]=BBM33;
assign P[102]=BBM34;
assign P[103]=BBM19;
assign P[104]=BBM97;
assign P[105]=BBM62^b[0];
assign P[106]=BBM98^b[11];
assign P[107]=BBM51^BBM174;
assign P[108]=BBM36;
assign P[109]=BBM37;
assign P[110]=BBM38;
assign P[111]=BBM63;
assign P[112]=BBM64^b[8];
assign P[113]=BBM65^b[1]^b[5];
assign P[114]=BBM35;
assign P[115]=BBM58;
assign P[116]=BBM60;
assign P[117]=BBM63;
assign P[118]=BBM39^b[3];
assign P[119]=BBM40^b[4];
assign P[120]=BBM21^b[11];
assign P[121]=BBM41;
assign P[122]=BBM67;
assign P[123]=BBM42;
assign P[124]=BBM22;
assign P[125]=BBM59^BBM175;
assign P[126]=BBM68^b[3];
assign P[127]=BBM36;
assign P[128]=BBM37;
assign P[129]=BBM38;
assign P[130]=BBM22;
assign P[131]=BBM23^b[8];
assign P[132]=BBM24;
assign P[133]=BBM55^BBM176;
assign P[134]=BBM43;
assign P[135]=BBM69;
assign P[136]=BBM70;
assign P[137]=BBM71;
assign P[138]=BBM99^b[2];
assign P[139]=BBM100^BBM177;
assign P[140]=BBM41;
assign P[141]=BBM67;
assign P[142]=BBM42;
assign P[143]=BBM71;
assign P[144]=BBM72^b[2];
assign P[145]=BBM23;
assign P[146]=BBM32^b[9];
assign P[147]=BBM25;
assign P[148]=BBM44;
assign P[149]=BBM73;
assign P[150]=BBM74;
assign P[151]=BBM75^b[9];
assign P[152]=BBM30^b[6];
assign P[153]=BBM43;
assign P[154]=BBM69;
assign P[155]=BBM70;
assign P[156]=BBM74;
assign P[157]=BBM133^BBM175;
assign P[158]=BBM101^b[9];
assign P[159]=BBM21^b[4];
assign P[160]=BBM102;
assign P[161]=BBM76;
assign P[162]=BBM77;
assign P[163]=BBM56;
assign P[164]=BBM103^b[3];
assign P[165]=BBM75^b[6];
assign P[166]=BBM25;
assign P[167]=BBM44;
assign P[168]=BBM73;
assign P[169]=BBM56;
assign P[170]=BBM129^b[2];
assign P[171]=BBM100^b[9];
assign P[172]=BBM29^BBM178;
assign P[173]=BBM134;
assign P[174]=BBM104;
assign P[175]=BBM135;
assign P[176]=BBM179;
assign P[177]=BBM180;
assign P[178]=BBM181^b[4];
assign P[179]=BBM102;
assign P[180]=BBM76;
assign P[181]=BBM77;
assign P[182]=BBM179;
assign P[183]=BBM182;
assign P[184]=BBM133;
assign P[185]=BBM105^b[6];
assign P[186]=BBM136;
assign P[187]=BBM127;
assign P[188]=BBM128;
assign P[189]=BBM137;
assign P[190]=BBM138;
assign P[191]=BBM139;
assign P[192]=BBM134;
assign P[193]=BBM104;
assign P[194]=BBM135;
assign P[195]=BBM137;
assign P[196]=BBM124^b[11];
assign P[197]=BBM106;
assign P[198]=BBM26;
assign P[199]=BBM140^BBM183;
assign P[200]=BBM94^b[12];
assign P[201]=BBM53;
assign P[202]=BBM79;
assign P[203]=BBM126^b[5];
assign P[204]=BBM107;
assign P[205]=BBM136;
assign P[206]=BBM127;
assign P[207]=BBM128;
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
assign P9[12:0]=P[116:104];
assign P10[12:0]=P[129:117];
assign P11[12:0]=P[142:130];
assign P12[12:0]=P[155:143];
assign P13[12:0]=P[168:156];
assign P14[12:0]=P[181:169];
assign P15[12:0]=P[194:182];
assign P16[12:0]=P[207:195];








endmodule

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

module multiply_7934(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;


assign c[0] =a[0]^a[1]^a[2]^a[3]^a[7]^a[9]^a[12];
assign c[1] =a[0]^a[4]^a[7]^a[8]^a[9]^a[10]^a[12];
assign c[2] =a[1]^a[5]^a[8]^a[9]^a[10]^a[11];
assign c[3] =a[0]^a[1]^a[3]^a[6]^a[7]^a[10]^a[11];
assign c[4] =a[0]^a[3]^a[4]^a[8]^a[9]^a[11];
assign c[5] =a[1]^a[4]^a[5]^a[9]^a[10]^a[12];
assign c[6] =a[0]^a[2]^a[5]^a[6]^a[10]^a[11];
assign c[7] =a[1]^a[3]^a[6]^a[7]^a[11]^a[12];
assign c[8] =a[2]^a[4]^a[7]^a[8]^a[12];
assign c[9] =a[3]^a[5]^a[8]^a[9];
assign c[10] =a[0]^a[4]^a[6]^a[9]^a[10];
assign c[11] =a[0]^a[1]^a[5]^a[7]^a[10]^a[11];
assign c[12] =a[0]^a[1]^a[2]^a[6]^a[8]^a[11]^a[12];



endmodule

module multiply_3196(a,c);


input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[2]^a[4]^a[5]^a[7]^a[10]^a[11]^a[12];
assign c[1] =a[2]^a[3]^a[4]^a[6]^a[7]^a[8]^a[10];
assign c[2] =a[3]^a[4]^a[5]^a[7]^a[8]^a[9]^a[11];
assign c[3] =a[0]^a[2]^a[6]^a[7]^a[8]^a[9]^a[11];
assign c[4] =a[1]^a[2]^a[3]^a[4]^a[5]^a[8]^a[9]^a[11];
assign c[5] =a[2]^a[3]^a[4]^a[5]^a[6]^a[9]^a[10]^a[12];
assign c[6] =a[0]^a[3]^a[4]^a[5]^a[6]^a[7]^a[10]^a[11];
assign c[7] =a[1]^a[4]^a[5]^a[6]^a[7]^a[8]^a[11]^a[12];
assign c[8] =a[0]^a[2]^a[5]^a[6]^a[7]^a[8]^a[9]^a[12];
assign c[9] =a[0]^a[1]^a[3]^a[6]^a[7]^a[8]^a[9]^a[10];
assign c[10] =a[1]^a[2]^a[4]^a[7]^a[8]^a[9]^a[10]^a[11];
assign c[11] =a[0]^a[2]^a[3]^a[5]^a[8]^a[9]^a[10]^a[11]^a[12];
assign c[12] =a[1]^a[3]^a[4]^a[6]^a[9]^a[10]^a[11]^a[12];



endmodule



module multiply_3453(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[3]^a[4]^a[8]^a[10]^a[11];
assign c[1] =a[0]^a[3]^a[5]^a[8]^a[9]^a[10]^a[12];
assign c[2] =a[0]^a[1]^a[4]^a[6]^a[9]^a[10]^a[11];
assign c[3] =a[0]^a[1]^a[2]^a[3]^a[4]^a[5]^a[7]^a[8]^a[12];
assign c[4] =a[1]^a[2]^a[5]^a[6]^a[9]^a[10]^a[11];
assign c[5] =a[0]^a[2]^a[3]^a[6]^a[7]^a[10]^a[11]^a[12];
assign c[6] =a[1]^a[3]^a[4]^a[7]^a[8]^a[11]^a[12];
assign c[7] =a[2]^a[4]^a[5]^a[8]^a[9]^a[12];
assign c[8] =a[3]^a[5]^a[6]^a[9]^a[10];
assign c[9] =a[0]^a[4]^a[6]^a[7]^a[10]^a[11];
assign c[10] =a[0]^a[1]^a[5]^a[7]^a[8]^a[11]^a[12];
assign c[11] =a[1]^a[2]^a[6]^a[8]^a[9]^a[12];
assign c[12] =a[2]^a[3]^a[7]^a[9]^a[10];



endmodule


module multiply_3710(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[3]^a[4]^a[5]^a[6]^a[9]^a[10]^a[11]^a[12];
assign c[1] =a[3]^a[7]^a[9];
assign c[2] =a[0]^a[4]^a[8]^a[10];
assign c[3] =a[0]^a[1]^a[3]^a[4]^a[6]^a[10]^a[12];
assign c[4] =a[0]^a[1]^a[2]^a[3]^a[6]^a[7]^a[9]^a[10]^a[12];
assign c[5] =a[1]^a[2]^a[3]^a[4]^a[7]^a[8]^a[10]^a[11];
assign c[6] =a[2]^a[3]^a[4]^a[5]^a[8]^a[9]^a[11]^a[12];
assign c[7] =a[0]^a[3]^a[4]^a[5]^a[6]^a[9]^a[10]^a[12];
assign c[8] =a[0]^a[1]^a[4]^a[5]^a[6]^a[7]^a[10]^a[11];
assign c[9] =a[0]^a[1]^a[2]^a[5]^a[6]^a[7]^a[8]^a[11]^a[12];
assign c[10] =a[0]^a[1]^a[2]^a[3]^a[6]^a[7]^a[8]^a[9]^a[12];
assign c[11] =a[1]^a[2]^a[3]^a[4]^a[7]^a[8]^a[9]^a[10];
assign c[12] =a[2]^a[3]^a[4]^a[5]^a[8]^a[9]^a[10]^a[11];



endmodule

module multiply_3967(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[0]^a[1]^a[8]^a[10]^a[11];
assign c[1] =a[2]^a[8]^a[9]^a[10]^a[12];
assign c[2] =a[3]^a[9]^a[10]^a[11];
assign c[3] =a[1]^a[4]^a[8]^a[12];
assign c[4] =a[1]^a[2]^a[5]^a[8]^a[9]^a[10]^a[11];
assign c[5] =a[0]^a[2]^a[3]^a[6]^a[9]^a[10]^a[11]^a[12];
assign c[6] =a[1]^a[3]^a[4]^a[7]^a[10]^a[11]^a[12];
assign c[7] =a[2]^a[4]^a[5]^a[8]^a[11]^a[12];
assign c[8] =a[3]^a[5]^a[6]^a[9]^a[12];
assign c[9] =a[4]^a[6]^a[7]^a[10];
assign c[10] =a[5]^a[7]^a[8]^a[11];
assign c[11] =a[6]^a[8]^a[9]^a[12];
assign c[12] =a[0]^a[7]^a[9]^a[10];



endmodule

module multiply_7163(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[1]^a[2]^a[4]^a[5]^a[9]^a[11]^a[12];
assign c[1] =a[1]^a[3]^a[4]^a[6]^a[9]^a[10]^a[11];
assign c[2] =a[0]^a[2]^a[4]^a[5]^a[7]^a[10]^a[11]^a[12];
assign c[3] =a[0]^a[2]^a[3]^a[4]^a[6]^a[8]^a[9];
assign c[4] =a[0]^a[2]^a[3]^a[7]^a[10]^a[11]^a[12];
assign c[5] =a[1]^a[3]^a[4]^a[8]^a[11]^a[12];
assign c[6] =a[2]^a[4]^a[5]^a[9]^a[12];
assign c[7] =a[3]^a[5]^a[6]^a[10];
assign c[8] =a[0]^a[4]^a[6]^a[7]^a[11];
assign c[9] =a[0]^a[1]^a[5]^a[7]^a[8]^a[12];
assign c[10] =a[1]^a[2]^a[6]^a[8]^a[9];
assign c[11] =a[0]^a[2]^a[3]^a[7]^a[9]^a[10];
assign c[12] =a[0]^a[1]^a[3]^a[4]^a[8]^a[10]^a[11];


endmodule

module multiply_7420(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[2]^a[3]^a[4]^a[5]^a[7]^a[9]^a[10]^a[12];
assign c[1] =a[0]^a[2]^a[6]^a[7]^a[8]^a[9]^a[11]^a[12];
assign c[2] =a[0]^a[1]^a[3]^a[7]^a[8]^a[9]^a[10]^a[12];
assign c[3] =a[0]^a[1]^a[3]^a[5]^a[7]^a[8]^a[11]^a[12];
assign c[4] =a[0]^a[1]^a[3]^a[5]^a[6]^a[7]^a[8]^a[10];
assign c[5] =a[1]^a[2]^a[4]^a[6]^a[7]^a[8]^a[9]^a[11];
assign c[6] =a[0]^a[2]^a[3]^a[5]^a[7]^a[8]^a[9]^a[10]^a[12];
assign c[7] =a[1]^a[3]^a[4]^a[6]^a[8]^a[9]^a[10]^a[11];
assign c[8] =a[0]^a[2]^a[4]^a[5]^a[7]^a[9]^a[10]^a[11]^a[12];
assign c[9] =a[0]^a[1]^a[3]^a[5]^a[6]^a[8]^a[10]^a[11]^a[12];
assign c[10] =a[0]^a[1]^a[2]^a[4]^a[6]^a[7]^a[9]^a[11]^a[12];
assign c[11] =a[0]^a[1]^a[2]^a[3]^a[5]^a[7]^a[8]^a[10]^a[12];
assign c[12] =a[1]^a[2]^a[3]^a[4]^a[6]^a[8]^a[9]^a[11];



endmodule

module multiply_7677(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[1]^a[4]^a[6]^a[10];
assign c[1] =a[1]^a[2]^a[4]^a[5]^a[6]^a[7]^a[10]^a[11];
assign c[2] =a[0]^a[2]^a[3]^a[5]^a[6]^a[7]^a[8]^a[11]^a[12];
assign c[3] =a[3]^a[7]^a[8]^a[9]^a[10]^a[12];
assign c[4] =a[1]^a[6]^a[8]^a[9]^a[11];
assign c[5] =a[2]^a[7]^a[9]^a[10]^a[12];
assign c[6] =a[3]^a[8]^a[10]^a[11];
assign c[7] =a[0]^a[4]^a[9]^a[11]^a[12];
assign c[8] =a[1]^a[5]^a[10]^a[12];
assign c[9] =a[0]^a[2]^a[6]^a[11];
assign c[10] =a[1]^a[3]^a[7]^a[12];
assign c[11] =a[2]^a[4]^a[8];
assign c[12] =a[0]^a[3]^a[5]^a[9];



endmodule

module mux_13_2to1(a,b,sel,out); //0-->a,1-->b

input [12:0]a,b;
input sel;

output [12:0]out;
wire [12:0]out;

assign out=sel?a:b;

endmodule

module mux13_13(a,b,sel,enable, out,clk,reset); //0-->a,1-->b

parameter DELAY =1;

input [12:0]a,b;
input sel,clk,reset;
input enable;

output [12:0]out;
reg [12:0]out;

always@(posedge clk)
begin
 if(reset==0)
 begin
    out  <=#DELAY  0;
 end
 
 if(reset==1)
 begin
 out <=#DELAY  enable== 1'b0 ? out : sel? a : b;
 end
end

endmodule

module mux_1_2to1(a,b,sel,out); //0-->a,1-->b

input a,b;
input sel;

output out;
wire out;

assign out=sel?a:b;

endmodule

module mux_5(a,b,sel,out);

input [4:0]a,b;
input sel;

output [4:0]out;
wire [4:0]out;

assign out=sel?a:b;

endmodule

module mux_5_2to1(a,b,sel,out); //0-->a,1-->b

input [4:0]a,b;
input sel;

output [4:0]out;
wire [4:0]out;

assign out=sel?a:b;

endmodule

module mux_13(a,b,sel,out); //0-->a,1-->b

input [12:0]a,b;
input sel;

output [12:0]out;
wire [12:0]out;

assign out=sel?a:b;

endmodule

