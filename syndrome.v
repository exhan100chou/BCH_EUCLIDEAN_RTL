module syndrome(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset,
	 S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,
	 S11,S12,S13,S14,S15,S16);//

input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,
             S11,S12,S13,S14,S15,S16;

wire [12:0]S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,
             S11,S12,S13,S14,S15,S16;


syndrome_row s1(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S1,
clk,
reset);

syndrome_row_2 s2(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S2,
clk,
reset);

syndrome_row_3 s3(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S3,
clk,
reset);

syndrome_row_4 s4(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S4,
clk,
reset);

syndrome_row_5 s5(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S5,
clk,
reset);

syndrome_row_6 s6(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S6,
clk,
reset);

syndrome_row_7 s7(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S7,
clk,
reset);

syndrome_row_8 s8(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S8,
clk,
reset);

syndrome_row_9 s9(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S9,
clk,
reset);

syndrome_row_10 s10(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S10,
clk,
reset);

syndrome_row_11 s11(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S11,
clk,
reset);

syndrome_row_12 s12(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S12,
clk,
reset);

syndrome_row_13 s13(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S13,
clk,
reset);

syndrome_row_14 s14(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S14,
clk,
reset);

syndrome_row_15 s15(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S15,
clk,
reset);

syndrome_row_16 s16(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
S16,
clk,
reset);








endmodule
