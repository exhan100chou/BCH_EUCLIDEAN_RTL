module bch_encoder_p8(message,
                            sel,
					   code_o,
					   clk,
						start,
					   reset);
input	 [7:0]message;				
input	 clk,sel,start,reset;
output [7:0]code_o;



reg [7:0]parity;
reg [7:0] message_r;
reg   r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,
r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,
r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,
r61,r62,r63,r64,r65,r66,r67,r68,r69,r70,
r71,r72,r73,r74,r75,r76,r77,r78,r79,r80,
r81,r82,r83,r84,r85,r86,r87,r88,r89,r90,
r91,r92,r93,r94,r95,r96,r97,r98,r99,r100,
r101,r102,r103; 




wire  v0  ,v1  ,v2  ,v3  ,v4  ,v5  ,v6  ,v7  ,v8  ,
v9  ,v10 ,v11 ,v12 ,v13 ,v14 ,v15 ,v16 ,v17 ,v18 ,v19 ,
v20 ,v21 ,v22 ,v23 ,v24 ,v25 ,v26 ,v27 ,v28 ,v29 ,v30 ,
v31 ,v32 ,v33 ,v34 ,v35 ,v36 ,v37 ,v38 ,v39 ,v40 ,v41 ,
v42 ,v43 ,v44 ,v45 ,v46 ,v47 ,v48 ,v49 ,v50 ,v51 ,v52 ,
v53 ,v54 ,v55 ,v56 ,v57 ,v58 ,v59 ,v60 ,v61 ,v62 ,v63 ,
v64 ,v65 ,v66 ,v67 ,v68 ,v69 ,v70 ,v71 ,v72 ,v73 ,v74 ,
v75 ,v76 ,v77 ,v78 ,v79 ,v80 ,v81 ,v82 ,v83 ,v84 ,v85 ,
v86 ,v87 ,v88 ,v89 ,v90 ,v91 ,v92 ,v93 ,v94 ,v95 ,v96 ,
v97 ,v98 ,v99 ,v100,v101,v102,v103;
 
 
assign  v0  = r0  ^message[0];
assign  v1  = r1  ^message[1];	
assign	v2  = r2  ^message[2];
assign	v3  = r3  ^message[3];
assign	v4  = r4  ^message[4];
assign	v5  = r5  ^message[5];
assign	v6  = r6  ^message[6];
assign	v7  = r7  ^message[7];
assign	v8  = r8  ;
assign	v9  = r9  ;
assign	v10 = r10 ;
assign	v11 = r11 ;
assign	v12 = r12 ;
assign	v13 = r13 ;
assign	v14 = r14 ;
assign	v15 = r15 ;
assign	v16 = r16 ;
assign	v17 = r17 ;
assign	v18 = r18 ;
assign	v19 = r19 ;
assign	v20 = r20 ;
assign	v21 = r21 ;
assign	v22 = r22 ;
assign	v23 = r23 ;
assign	v24 = r24 ;
assign	v25 = r25 ;
assign	v26 = r26 ;
assign	v27 = r27 ;
assign	v28 = r28 ;
assign	v29 = r29 ;
assign	v30 = r30 ;
assign	v31 = r31 ;
assign	v32 = r32 ;
assign	v33 = r33 ;
assign	v34 = r34 ;
assign	v35 = r35 ;
assign	v36 = r36 ;
assign	v37 = r37 ;
assign	v38 = r38 ;
assign	v39 = r39 ;
assign	v40 = r40 ;
assign	v41 = r41 ;
assign	v42 = r42 ;
assign	v43 = r43 ;
assign	v44 = r44 ;
assign	v45 = r45 ;
assign	v46 = r46 ;
assign	v47 = r47 ;
assign	v48 = r48 ;
assign	v49 = r49 ;
assign	v50 = r50 ;
assign	v51 = r51 ;
assign	v52 = r52 ;
assign	v53 = r53 ;
assign	v54 = r54 ;
assign	v55 = r55 ;
assign	v56 = r56 ;
assign	v57 = r57 ;
assign	v58 = r58 ;
assign	v59 = r59 ;
assign	v60 = r60 ;
assign	v61 = r61 ;
assign	v62 = r62 ;
assign	v63 = r63 ;
assign	v64 = r64 ;
assign	v65 = r65 ;
assign	v66 = r66 ;
assign	v67 = r67 ;
assign	v68 = r68 ;
assign	v69 = r69 ;
assign	v70 = r70 ;
assign	v71 = r71 ;
assign	v72 = r72 ;
assign	v73 = r73 ;
assign  v74 = r74 ;
assign  v75 = r75 ;
assign  v76 = r76 ;
assign  v77 = r77 ;
assign  v78 = r78 ;
assign  v79 = r79 ;
assign  v80 = r80 ;
assign  v81 = r81 ;
assign  v82 = r82 ;
assign  v83 = r83 ;
assign  v84 = r84 ;
assign  v85 = r85 ;
assign  v86 = r86 ;
assign  v87 = r87 ;
assign  v88 = r88 ;
assign  v89 = r89 ;
assign  v90 = r90 ;
assign  v91 = r91 ;
assign  v92 = r92 ;
assign  v93 = r93 ;
assign  v94 = r94 ;
assign  v95 = r95 ;
assign  v96 = r96 ;
assign  v97 = r97 ;
assign  v98 = r98 ;
assign  v99 = r99 ;
assign  v100= r100;
assign  v101= r101;
assign  v102= r102;
assign  v103= r103;  

wire u0  ,u1  ,u2  ,u3  ,u4  ,u5  ,u6  ,u7  ,u8  ,u9  ,u10 ,u11 ,
u12 ,u13 ,u14 ,u15 ,u16 ,u17 ,u18 ,u19 ,u20 ,u21 ,u22 ,u23 ,u24 ,
u25 ,u26 ,u27 ,u28 ,u29 ,u30 ,u31 ,u32 ,u33 ,u34 ,u35 ,u36 ,u37 ,
u38 ,u39 ,u40 ,u41 ,u42 ,u43 ,u44 ,u45 ,u46 ,u47 ,u48 ,u49 ,u50 ,
u51 ,u52 ,u53 ,u54 ,u55 ,u56 ,u57 ,u58 ,u59 ,u60 ,u61 ,u62 ,u63 ,
u64 ,u65 ,u66 ,u67 ,u68 ,u69 ,u70 ,u71 ,u72 ,u73 ,u74 ,u75 ,u76 ,
u77 ,u78 ,u79 ,u80 ,u81 ,u82 ,u83 ,u84 ,u85 ,u86 ,u87 ,u88 ,u89 ,
u90 ,u91 ,u92 ,u93 ,u94 ,u95 ,u96 ,u97 ,u98 ,u99 ,u100,u101,u102,u103;

assign u0=v2^v4^v8;
assign u1=v0^v3^v5^v9;
assign u2=v0^v1^v4^v6^v10;
assign u3=v0^v1^v2^v5^v7^v11;
assign u4=v0^v1^v3^v4^v6^v12;
assign u5=v1^v2^v4^v5^v7^v13;
assign u6=v3^v4^v5^v6^v14;
assign u7=v4^v5^v6^v7^v15;
assign u8=v0^v2^v4^v5^v6^v7^v16;
assign u9=v1^v2^v3^v4^v5^v6^v7^v17;
assign u10=v0^v3^v5^v6^v7^v18;
assign u11=v0^v1^v2^v6^v7^v19;
assign u12=v1^v3^v4^v7^v20;
assign u13=v5^v21;
assign u14=v6^v22;
assign u15=v7^v23;
assign u16=v0^v2^v4^v24;
assign u17=v0^v1^v3^v5^v25;
assign u18=v0^v1^v2^v4^v6^v26;
assign u19=v0^v1^v2^v3^v5^v7^v27;
assign u20=v0^v1^v3^v6^v28;
assign u21=v0^v1^v2^v4^v7^v29;
assign u22=v0^v1^v3^v4^v5^v30;
assign u23=v1^v2^v4^v5^v6^v31;
assign u24=v0^v2^v3^v5^v6^v7^v32;
assign u25=v0^v1^v2^v3^v6^v7^v33;
assign u26=v0^v1^v3^v7^v34;
assign u27=v0^v1^v35;
assign u28=v0^v1^v2^v36;
assign u29=v0^v1^v2^v3^v37;
assign u30=v0^v1^v2^v3^v4^v38;
assign u31=v1^v2^v3^v4^v5^v39;
assign u32=v0^v2^v3^v4^v5^v6^v40;
assign u33=v1^v3^v4^v5^v6^v7^v41;
assign u34=v0^v5^v6^v7^v42;
assign u35=v1^v2^v4^v6^v7^v43;
assign u36=v0^v3^v4^v5^v7^v44;
assign u37=v1^v2^v5^v6^v45;
assign u38=v2^v3^v6^v7^v46;
assign u39=v2^v3^v7^v47;
assign u40=v2^v3^v48;
assign u41=v0^v3^v4^v49;
assign u42=v0^v1^v4^v5^v50;
assign u43=v0^v1^v2^v5^v6^v51;
assign u44=v1^v2^v3^v6^v7^v52;
assign u45=v3^v7^v53;
assign u46=v2^v54;
assign u47=v0^v3^v55;
assign u48=v1^v4^v56;
assign u49=v0^v2^v5^v57;
assign u50=v0^v1^v3^v6^v58;
assign u51=v0^v1^v2^v4^v7^v59;
assign u52=v0^v1^v3^v4^v5^v60;
assign u53=v1^v2^v4^v5^v6^v61;
assign u54=v2^v3^v5^v6^v7^v62;
assign u55=v2^v3^v6^v7^v63;
assign u56=v0^v2^v3^v7^v64;
assign u57=v1^v2^v3^v65;
assign u58=v2^v3^v4^v66;
assign u59=v0^v3^v4^v5^v67;
assign u60=v1^v4^v5^v6^v68;
assign u61=v0^v2^v5^v6^v7^v69;
assign u62=v1^v2^v3^v4^v6^v7^v70;
assign u63=v3^v5^v7^v71;
assign u64=v2^v6^v72;
assign u65=v0^v3^v7^v73;
assign u66=v0^v1^v2^v74;
assign u67=v1^v2^v3^v75;
assign u68=v0^v2^v3^v4^v76;
assign u69=v0^v1^v3^v4^v5^v77;
assign u70=v0^v1^v2^v4^v5^v6^v78;
assign u71=v0^v1^v2^v3^v5^v6^v7^v79;
assign u72=v1^v3^v6^v7^v80;
assign u73=v0^v7^v81;
assign u74=v1^v2^v4^v82;
assign u75=v2^v3^v5^v83;
assign u76=v3^v4^v6^v84;
assign u77=v0^v4^v5^v7^v85;
assign u78=v0^v1^v2^v4^v5^v6^v86;
assign u79=v0^v1^v2^v3^v5^v6^v7^v87;
assign u80=v0^v1^v3^v6^v7^v88;
assign u81=v0^v1^v7^v89;
assign u82=v1^v4^v90;
assign u83=v0^v2^v5^v91;
assign u84=v1^v3^v6^v92;
assign u85=v2^v4^v7^v93;
assign u86=v0^v2^v3^v4^v5^v94;
assign u87=v0^v1^v3^v4^v5^v6^v95;
assign u88=v0^v1^v2^v4^v5^v6^v7^v96;
assign u89=v1^v3^v4^v5^v6^v7^v97;
assign u90=v0^v5^v6^v7^v98;
assign u91=v0^v1^v2^v4^v6^v7^v99;
assign u92=v0^v1^v3^v4^v5^v7^v100;
assign u93=v0^v1^v5^v6^v101;
assign u94=v0^v1^v2^v6^v7^v102;
assign u95=v1^v3^v4^v7^v103;
assign u96=v0^v5;
assign u97=v0^v1^v6;
assign u98=v1^v2^v7;
assign u99=v0^v3^v4;
assign u100=v0^v1^v4^v5;
assign u101=v0^v1^v2^v5^v6;
assign u102=v0^v1^v2^v3^v6^v7;
assign u103=v1^v3^v7;

 assign code_o=(sel==1'b1)?message_r:parity;  

always@(posedge clk or negedge reset)
begin
if (!reset)
begin
 parity<=#1 8'b0;
r0<= #1 0;
r1<= #1 0;
r2<= #1 0;
r3<= #1 0;
r4<= #1 0;
r5<= #1 0;
r6<= #1 0;
r7<= #1 0;
r8<= #1 0;
r9<= #1 0;
r10<=#1 0;
r11<=#1 0;
r12<=#1 0;
r13<=#1 0;
r14<=#1 0;
r15<=#1 0;
r16<=#1 0;
r17<=#1 0;
r18<=#1 0;
r19<=#1 0;
r20<=#1 0;
r21<=#1 0;
r22<=#1 0;
r23<=#1 0;
r24<=#1 0;
r25<=#1 0;
r26<=#1 0;
r27<=#1 0;
r28<=#1 0;
r29<=#1 0;
r30<=#1 0;
r31<=#1 0;
r32<=#1 0;
r33<=#1 0;
r34<=#1 0;
r35<=#1 0;
r36<=#1 0;
r37<=#1 0;
r38<=#1 0;
r39<=#1 0;
r40<=#1 0;
r41<=#1 0;
r42<=#1 0;
r43<=#1 0;
r44<=#1 0;
r45<=#1 0;
r46<=#1 0;
r47<=#1 0;
r48<=#1 0;
r49<=#1 0;
r50<=#1 0;
r51<=#1 0;
r52<=#1 0;
r53<=#1 0;
r54<=#1 0;
r55<=#1 0;
r56<=#1 0;
r57<=#1 0;
r58<=#1 0;
r59<=#1 0;
r60<=#1 0;
r61<=#1 0;
r62<=#1 0;
r63<=#1 0;
r64<=#1 0;
r65<=#1 0;
r66<=#1 0;
r67<=#1 0;
r68<=#1 0;
r69<=#1 0;
r70<=#1 0;
r71<=#1 0;
r72<=#1 0;
r73<=#1 0;
r74<=#1 0;
r75<=#1 0;
r76<=#1 0;
r77<=#1 0;
r78<=#1 0;
r79<=#1 0;
r80<=#1 0;
r81<=#1 0;
r82<=#1 0;
r83<=#1 0;
r84<=#1 0;
r85<=#1 0;
r86<=#1 0;
r87<=#1 0;
r88<=#1 0;
r89<=#1 0;
r90<=#1 0;
r91<=#1 0;
r92<=#1 0;
r93<=#1 0;
r94<=#1 0;
r95<=#1 0;
r96<=#1 0;
r97<=#1 0;
r98<=#1 0;
r99<=#1 0;
r100<=#1 0;
r101<=#1 0;
r102<=#1 0;
r103<=#1 0;
message_r<=#1 8'b0;

 end
else if(start&&sel)
begin
parity<=#1 {r0,r1,r2,r3,r4,r5,r6,r7};		
		

r0<=  #1 u0  ;
r1<=  #1 u1  ;
r2<=  #1 u2  ;
r3<=  #1 u3  ;
r4<=  #1 u4  ;
r5<=  #1 u5  ;
r6<=  #1 u6  ;
r7<=  #1 u7  ;
r8<=  #1 u8  ;
r9<=  #1 u9  ;
r10<= #1 u10 ;
r11<= #1 u11 ;
r12<= #1 u12 ;
r13<= #1 u13 ;
r14<= #1 u14 ;
r15<= #1 u15 ;
r16<= #1 u16 ;
r17<= #1 u17 ;
r18<= #1 u18 ;
r19<= #1 u19 ;
r20<= #1 u20 ;
r21<= #1 u21 ;
r22<= #1 u22 ;
r23<= #1 u23 ;
r24<= #1 u24 ;
r25<= #1 u25 ;
r26<= #1 u26 ;
r27<= #1 u27 ;
r28<= #1 u28 ;
r29<= #1 u29 ;
r30<= #1 u30 ;
r31<= #1 u31 ;
r32<= #1 u32 ;
r33<= #1 u33 ;
r34<= #1 u34 ;
r35<= #1 u35 ;
r36<= #1 u36 ;
r37<= #1 u37 ;
r38<= #1 u38 ;
r39<= #1 u39 ;
r40<= #1 u40 ;
r41<= #1 u41 ;
r42<= #1 u42 ;
r43<= #1 u43 ;
r44<= #1 u44 ;
r45<= #1 u45 ;
r46<= #1 u46 ;
r47<= #1 u47 ;
r48<= #1 u48 ;
r49<= #1 u49 ;
r50<= #1 u50 ;
r51<= #1 u51 ;
r52<= #1 u52 ;
r53<= #1 u53 ;
r54<= #1 u54 ;
r55<= #1 u55 ;
r56<= #1 u56 ;
r57<= #1 u57 ;
r58<= #1 u58 ;
r59<= #1 u59 ;
r60<= #1 u60 ;
r61<= #1 u61 ;
r62<= #1 u62 ;
r63<= #1 u63 ;
r64<= #1 u64 ;
r65<= #1 u65 ;
r66<= #1 u66 ;
r67<= #1 u67 ;
r68<= #1 u68 ;
r69<= #1 u69 ;
r70<= #1 u70 ;
r71<= #1 u71 ;
r72<= #1 u72 ;
r73<= #1 u73 ;
r74<= #1 u74 ;
r75<= #1 u75 ;
r76<= #1 u76 ;
r77<= #1 u77 ;
r78<= #1 u78 ;
r79<= #1 u79 ;
r80<= #1 u80 ;
r81<= #1 u81 ;
r82<= #1 u82 ;
r83<= #1 u83 ;
r84<= #1 u84 ;
r85<= #1 u85 ;
r86<= #1 u86 ;
r87<= #1 u87 ;
r88<= #1 u88 ;
r89<= #1 u89 ;
r90<= #1 u90 ;
r91<= #1 u91 ;
r92<= #1 u92 ;
r93<= #1 u93 ;
r94<= #1 u94 ;
r95<= #1 u95 ;
r96<= #1 u96 ;
r97<= #1 u97 ;
r98<= #1 u98 ;
r99<= #1 u99 ;
r100<=#1 u100;
r101<=#1 u101;
r102<=#1 u102;
r103<=#1 u103;
  message_r<=#1 message;

 end
else if(start&&!sel)
begin
parity<=#1 {r0,r1,r2,r3,r4,r5,r6,r7};		
		

{r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,
r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,
r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,
r61,r62,r63,r64,r65,r66,r67,r68,r69,r70,
r71,r72,r73,r74,r75,r76,r77,r78,r79,r80,
r81,r82,r83,r84,r85,r86,r87,r88,r89,r90,
r91,r92,r93,r94,r95,r96,r97,r98,r99,r100,
r101,r102,r103	}<=#1 {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,
r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,
r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,
r61,r62,r63,r64,r65,r66,r67,r68,r69,r70,
r71,r72,r73,r74,r75,r76,r77,r78,r79,r80,
r81,r82,r83,r84,r85,r86,r87,r88,r89,r90,
r91,r92,r93,r94,r95,r96,r97,r98,r99,r100,
r101,r102,r103	}<<8;

	   message_r<=#1 8'b0;
 end



end


endmodule


