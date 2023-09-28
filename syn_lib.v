module mux(alpha,r,out);//muliply zero or alpha^i according selec line 'r'

//parameter zero=13'd0;
input [12:0]alpha;
input r;
output [12:0]out;
wire [12:0]out;

assign out[12]=alpha[12] &r;
assign out[11]=alpha[11] &r;
assign out[10]=alpha[10] &r;
assign out[9]=alpha[9] &r;
assign out[8]=alpha[8] &r;
assign out[7]=alpha[7] &r;
assign out[6]=alpha[6] &r;
assign out[5]=alpha[5] &r;
assign out[4]=alpha[4] &r;
assign out[3]=alpha[3] &r;
assign out[2]=alpha[2] &r;
assign out[1]=alpha[1] &r;
assign out[0]=alpha[0] &r;


endmodule


/****************************************************************/
module multiplier_alpha32(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[1]^a[5]^a[7]^a[8]^a[9]^a[10]^a[12];
assign c[1] =a[0]^a[1]^a[2]^a[5]^a[6]^a[7]^a[11]^a[12];
assign c[2] =a[0]^a[1]^a[2]^a[3]^a[6]^a[7]^a[8]^a[12];
assign c[3] =a[2]^a[3]^a[4]^a[5]^a[10]^a[12];
assign c[4] =a[0]^a[1]^a[3]^a[4]^a[6]^a[7]^a[8]^a[9]^a[10]^a[11]^a[12];
assign c[5] =a[0]^a[1]^a[2]^a[4]^a[5]^a[7]^a[8]^a[9]^a[10]^a[11]^a[12];
assign c[6] =a[0]^a[1]^a[2]^a[3]^a[5]^a[6]^a[8]^a[9]^a[10]^a[11]^a[12];
assign c[7] =a[1]^a[2]^a[3]^a[4]^a[6]^a[7]^a[9]^a[10]^a[11]^a[12];
assign c[8] =a[0]^a[2]^a[3]^a[4]^a[5]^a[7]^a[8]^a[10]^a[11]^a[12];
assign c[9] =a[1]^a[3]^a[4]^a[5]^a[6]^a[8]^a[9]^a[11]^a[12];
assign c[10] =a[2]^a[4]^a[5]^a[6]^a[7]^a[9]^a[10]^a[12];
assign c[11] =a[3]^a[5]^a[6]^a[7]^a[8]^a[10]^a[11];
assign c[12] =a[0]^a[4]^a[6]^a[7]^a[8]^a[9]^a[11]^a[12];


endmodule



module multiplier_alpha64(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[2]^a[3]^a[5]^a[6]^a[9]^a[12];
assign c[1] =a[0]^a[2]^a[4]^a[5]^a[7]^a[9]^a[10]^a[12];
assign c[2] =a[0]^a[1]^a[3]^a[5]^a[6]^a[8]^a[10]^a[11];
assign c[3] =a[1]^a[3]^a[4]^a[5]^a[7]^a[11];
assign c[4] =a[0]^a[3]^a[4]^a[8]^a[9];
assign c[5] =a[1]^a[4]^a[5]^a[9]^a[10];
assign c[6] =a[2]^a[5]^a[6]^a[10]^a[11];
assign c[7] =a[0]^a[3]^a[6]^a[7]^a[11]^a[12];
assign c[8] =a[0]^a[1]^a[4]^a[7]^a[8]^a[12];
assign c[9] =a[1]^a[2]^a[5]^a[8]^a[9];
assign c[10] =a[0]^a[2]^a[3]^a[6]^a[9]^a[10];
assign c[11] =a[0]^a[1]^a[3]^a[4]^a[7]^a[10]^a[11];
assign c[12] =a[1]^a[2]^a[4]^a[5]^a[8]^a[11]^a[12];



endmodule

module multiplier_alpha128(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;
assign c[0] =a[0]^a[1]^a[2]^a[4]^a[7]^a[8]^a[10]^a[12];
assign c[1] =a[3]^a[4]^a[5]^a[7]^a[9]^a[10]^a[11]^a[12];
assign c[2] =a[4]^a[5]^a[6]^a[8]^a[10]^a[11]^a[12];
assign c[3] =a[1]^a[2]^a[4]^a[5]^a[6]^a[8]^a[9]^a[10]^a[11];
assign c[4] =a[1]^a[3]^a[4]^a[5]^a[6]^a[8]^a[9]^a[11];
assign c[5] =a[0]^a[2]^a[4]^a[5]^a[6]^a[7]^a[9]^a[10]^a[12];
assign c[6] =a[0]^a[1]^a[3]^a[5]^a[6]^a[7]^a[8]^a[10]^a[11];
assign c[7] =a[1]^a[2]^a[4]^a[6]^a[7]^a[8]^a[9]^a[11]^a[12];
assign c[8] =a[2]^a[3]^a[5]^a[7]^a[8]^a[9]^a[10]^a[12];
assign c[9] =a[0]^a[3]^a[4]^a[6]^a[8]^a[9]^a[10]^a[11];
assign c[10] =a[1]^a[4]^a[5]^a[7]^a[9]^a[10]^a[11]^a[12];
assign c[11] =a[0]^a[2]^a[5]^a[6]^a[8]^a[10]^a[11]^a[12];
assign c[12] =a[0]^a[1]^a[3]^a[6]^a[7]^a[9]^a[11]^a[12];



endmodule

module multiplier_alpha160(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;
assign c[0] =a[0]^a[1]^a[2]^a[4]^a[8]^a[9]^a[10]^a[11];
assign c[1] =a[0]^a[3]^a[4]^a[5]^a[8]^a[12];
assign c[2] =a[0]^a[1]^a[4]^a[5]^a[6]^a[9];
assign c[3] =a[4]^a[5]^a[6]^a[7]^a[8]^a[9]^a[11];
assign c[4] =a[0]^a[1]^a[2]^a[4]^a[5]^a[6]^a[7]^a[11]^a[12];
assign c[5] =a[0]^a[1]^a[2]^a[3]^a[5]^a[6]^a[7]^a[8]^a[12];
assign c[6] =a[1]^a[2]^a[3]^a[4]^a[6]^a[7]^a[8]^a[9];
assign c[7] =a[2]^a[3]^a[4]^a[5]^a[7]^a[8]^a[9]^a[10];
assign c[8] =a[3]^a[4]^a[5]^a[6]^a[8]^a[9]^a[10]^a[11];
assign c[9] =a[0]^a[4]^a[5]^a[6]^a[7]^a[9]^a[10]^a[11]^a[12];
assign c[10] =a[1]^a[5]^a[6]^a[7]^a[8]^a[10]^a[11]^a[12];
assign c[11] =a[0]^a[2]^a[6]^a[7]^a[8]^a[9]^a[11]^a[12];
assign c[12] =a[0]^a[1]^a[3]^a[7]^a[8]^a[9]^a[10]^a[12];




endmodule

module multiplier_alpha192(a,c);
 input [12:0]a;
output [12:0] c;
wire   [12:0] c;
assign c[0] =a[1]^a[3]^a[7]^a[10]^a[11]^a[12];
assign c[1] =a[1]^a[2]^a[3]^a[4]^a[7]^a[8]^a[10];
assign c[2] =a[2]^a[3]^a[4]^a[5]^a[8]^a[9]^a[11];
assign c[3] =a[1]^a[4]^a[5]^a[6]^a[7]^a[9]^a[11];
assign c[4] =a[1]^a[2]^a[3]^a[5]^a[6]^a[8]^a[11];
assign c[5] =a[2]^a[3]^a[4]^a[6]^a[7]^a[9]^a[12];
assign c[6] =a[0]^a[3]^a[4]^a[5]^a[7]^a[8]^a[10];
assign c[7] =a[1]^a[4]^a[5]^a[6]^a[8]^a[9]^a[11];
assign c[8] =a[2]^a[5]^a[6]^a[7]^a[9]^a[10]^a[12];
assign c[9] =a[3]^a[6]^a[7]^a[8]^a[10]^a[11];
assign c[10] =a[0]^a[4]^a[7]^a[8]^a[9]^a[11]^a[12];
assign c[11] =a[1]^a[5]^a[8]^a[9]^a[10]^a[12];
assign c[12] =a[0]^a[2]^a[6]^a[9]^a[10]^a[11];


endmodule

module multiplier_alpha224(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[3]^a[6]^a[7]^a[9]^a[12];
assign c[1] =a[3]^a[4]^a[6]^a[8]^a[9]^a[10]^a[12];
assign c[2] =a[4]^a[5]^a[7]^a[9]^a[10]^a[11];
assign c[3] =a[3]^a[5]^a[7]^a[8]^a[9]^a[10]^a[11];
assign c[4] =a[0]^a[3]^a[4]^a[7]^a[8]^a[10]^a[11];
assign c[5] =a[1]^a[4]^a[5]^a[8]^a[9]^a[11]^a[12];
assign c[6] =a[0]^a[2]^a[5]^a[6]^a[9]^a[10]^a[12];
assign c[7] =a[0]^a[1]^a[3]^a[6]^a[7]^a[10]^a[11];
assign c[8] =a[1]^a[2]^a[4]^a[7]^a[8]^a[11]^a[12];
assign c[9] =a[2]^a[3]^a[5]^a[8]^a[9]^a[12];
assign c[10] =a[0]^a[3]^a[4]^a[6]^a[9]^a[10];
assign c[11] =a[1]^a[4]^a[5]^a[7]^a[10]^a[11];
assign c[12] =a[2]^a[5]^a[6]^a[8]^a[11]^a[12];



endmodule

module multiplier_alpha256(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[1]^a[2]^a[5]^a[8]^a[10]^a[12];
assign c[1] =a[1]^a[3]^a[5]^a[6]^a[8]^a[9]^a[10]^a[11]^a[12];
assign c[2] =a[2]^a[4]^a[6]^a[7]^a[9]^a[10]^a[11]^a[12];
assign c[3] =a[1]^a[2]^a[3]^a[7]^a[11];
assign c[4] =a[1]^a[3]^a[4]^a[5]^a[10];
assign c[5] =a[0]^a[2]^a[4]^a[5]^a[6]^a[11];
assign c[6] =a[1]^a[3]^a[5]^a[6]^a[7]^a[12];
assign c[7] =a[2]^a[4]^a[6]^a[7]^a[8];
assign c[8] =a[0]^a[3]^a[5]^a[7]^a[8]^a[9];
assign c[9] =a[1]^a[4]^a[6]^a[8]^a[9]^a[10];
assign c[10] =a[2]^a[5]^a[7]^a[9]^a[10]^a[11];
assign c[11] =a[0]^a[3]^a[6]^a[8]^a[10]^a[11]^a[12];
assign c[12] =a[0]^a[1]^a[4]^a[7]^a[9]^a[11]^a[12];




endmodule

module multiplier_alpha288(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[0]^a[1]^a[2]^a[9]^a[10];
assign c[1] =a[0]^a[3]^a[9]^a[11];
assign c[2] =a[1]^a[4]^a[10]^a[12];
assign c[3] =a[1]^a[5]^a[9]^a[10]^a[11];
assign c[4] =a[0]^a[1]^a[6]^a[9]^a[11]^a[12];
assign c[5] =a[1]^a[2]^a[7]^a[10]^a[12];
assign c[6] =a[2]^a[3]^a[8]^a[11];
assign c[7] =a[3]^a[4]^a[9]^a[12];
assign c[8] =a[4]^a[5]^a[10];
assign c[9] =a[5]^a[6]^a[11];
assign c[10] =a[6]^a[7]^a[12];
assign c[11] =a[0]^a[7]^a[8];
assign c[12] =a[0]^a[1]^a[8]^a[9];


endmodule

module multiplier_alpha320(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;


assign c[0] =a[2]^a[8]^a[9]^a[12];
assign c[1] =a[2]^a[3]^a[8]^a[10]^a[12];
assign c[2] =a[0]^a[3]^a[4]^a[9]^a[11];
assign c[3] =a[1]^a[2]^a[4]^a[5]^a[8]^a[9]^a[10];
assign c[4] =a[0]^a[3]^a[5]^a[6]^a[8]^a[10]^a[11]^a[12];
assign c[5] =a[0]^a[1]^a[4]^a[6]^a[7]^a[9]^a[11]^a[12];
assign c[6] =a[1]^a[2]^a[5]^a[7]^a[8]^a[10]^a[12];
assign c[7] =a[2]^a[3]^a[6]^a[8]^a[9]^a[11];
assign c[8] =a[3]^a[4]^a[7]^a[9]^a[10]^a[12];
assign c[9] =a[4]^a[5]^a[8]^a[10]^a[11];
assign c[10] =a[5]^a[6]^a[9]^a[11]^a[12];
assign c[11] =a[0]^a[6]^a[7]^a[10]^a[12];
assign c[12] =a[1]^a[7]^a[8]^a[11];


endmodule

module multiplier_alpha352(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;


assign c[0] =a[0]^a[3]^a[4]^a[6]^a[7]^a[10]^a[11];
assign c[1] =a[0]^a[1]^a[3]^a[5]^a[6]^a[8]^a[10]^a[12];
assign c[2] =a[0]^a[1]^a[2]^a[4]^a[6]^a[7]^a[9]^a[11];
assign c[3] =a[0]^a[1]^a[2]^a[4]^a[5]^a[6]^a[8]^a[11]^a[12];
assign c[4] =a[1]^a[2]^a[4]^a[5]^a[9]^a[10]^a[11]^a[12];
assign c[5] =a[2]^a[3]^a[5]^a[6]^a[10]^a[11]^a[12];
assign c[6] =a[0]^a[3]^a[4]^a[6]^a[7]^a[11]^a[12];
assign c[7] =a[0]^a[1]^a[4]^a[5]^a[7]^a[8]^a[12];
assign c[8] =a[1]^a[2]^a[5]^a[6]^a[8]^a[9];
assign c[9] =a[0]^a[2]^a[3]^a[6]^a[7]^a[9]^a[10];
assign c[10] =a[0]^a[1]^a[3]^a[4]^a[7]^a[8]^a[10]^a[11];
assign c[11] =a[1]^a[2]^a[4]^a[5]^a[8]^a[9]^a[11]^a[12];
assign c[12] =a[2]^a[3]^a[5]^a[6]^a[9]^a[10]^a[12];


endmodule

module multiplier_alpha384(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[3]^a[5]^a[6]^a[7]^a[9]^a[10];
assign c[1] =a[0]^a[3]^a[4]^a[5]^a[8]^a[9]^a[11];
assign c[2] =a[1]^a[4]^a[5]^a[6]^a[9]^a[10]^a[12];
assign c[3] =a[0]^a[2]^a[3]^a[9]^a[11];
assign c[4] =a[0]^a[1]^a[4]^a[5]^a[6]^a[7]^a[9]^a[12];
assign c[5] =a[1]^a[2]^a[5]^a[6]^a[7]^a[8]^a[10];
assign c[6] =a[0]^a[2]^a[3]^a[6]^a[7]^a[8]^a[9]^a[11];
assign c[7] =a[0]^a[1]^a[3]^a[4]^a[7]^a[8]^a[9]^a[10]^a[12];
assign c[8] =a[0]^a[1]^a[2]^a[4]^a[5]^a[8]^a[9]^a[10]^a[11];
assign c[9] =a[1]^a[2]^a[3]^a[5]^a[6]^a[9]^a[10]^a[11]^a[12];
assign c[10] =a[0]^a[2]^a[3]^a[4]^a[6]^a[7]^a[10]^a[11]^a[12];
assign c[11] =a[1]^a[3]^a[4]^a[5]^a[7]^a[8]^a[11]^a[12];
assign c[12] =a[2]^a[4]^a[5]^a[6]^a[8]^a[9]^a[12];


endmodule

module multiplier_alpha416(a,c);

input [12:0]a;
output [12:0] c;
wire   [12:0] c;

 assign c[0] =a[2]^a[4]^a[5]^a[7]^a[8]^a[9]^a[10];
assign c[1] =a[0]^a[2]^a[3]^a[4]^a[6]^a[7]^a[11];
assign c[2] =a[0]^a[1]^a[3]^a[4]^a[5]^a[7]^a[8]^a[12];
assign c[3] =a[0]^a[1]^a[6]^a[7]^a[10];
assign c[4] =a[0]^a[1]^a[4]^a[5]^a[9]^a[10]^a[11];
assign c[5] =a[0]^a[1]^a[2]^a[5]^a[6]^a[10]^a[11]^a[12];
assign c[6] =a[0]^a[1]^a[2]^a[3]^a[6]^a[7]^a[11]^a[12];
assign c[7] =a[1]^a[2]^a[3]^a[4]^a[7]^a[8]^a[12];
assign c[8] =a[0]^a[2]^a[3]^a[4]^a[5]^a[8]^a[9];
assign c[9] =a[0]^a[1]^a[3]^a[4]^a[5]^a[6]^a[9]^a[10];
assign c[10] =a[1]^a[2]^a[4]^a[5]^a[6]^a[7]^a[10]^a[11];
assign c[11] =a[0]^a[2]^a[3]^a[5]^a[6]^a[7]^a[8]^a[11]^a[12];
assign c[12] =a[1]^a[3]^a[4]^a[6]^a[7]^a[8]^a[9]^a[12];


endmodule

module multiplier_alpha448(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[1]^a[2]^a[3]^a[6]^a[8]^a[9]^a[10]^a[11]^a[12];
assign c[1] =a[0]^a[1]^a[4]^a[6]^a[7]^a[8];
assign c[2] =a[0]^a[1]^a[2]^a[5]^a[7]^a[8]^a[9];
assign c[3] =a[11]^a[12];
assign c[4] =a[0]^a[1]^a[2]^a[3]^a[6]^a[8]^a[9]^a[10]^a[11];
assign c[5] =a[0]^a[1]^a[2]^a[3]^a[4]^a[7]^a[9]^a[10]^a[11]^a[12];
assign c[6] =a[1]^a[2]^a[3]^a[4]^a[5]^a[8]^a[10]^a[11]^a[12];
assign c[7] =a[0]^a[2]^a[3]^a[4]^a[5]^a[6]^a[9]^a[11]^a[12];
assign c[8] =a[1]^a[3]^a[4]^a[5]^a[6]^a[7]^a[10]^a[12];
assign c[9] =a[2]^a[4]^a[5]^a[6]^a[7]^a[8]^a[11];
assign c[10] =a[0]^a[3]^a[5]^a[6]^a[7]^a[8]^a[9]^a[12];
assign c[11] =a[0]^a[1]^a[4]^a[6]^a[7]^a[8]^a[9]^a[10];
assign c[12] =a[0]^a[1]^a[2]^a[5]^a[7]^a[8]^a[9]^a[10]^a[11];



endmodule

module multiplier_alpha480(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;


assign c[0] =a[0]^a[4]^a[5]^a[6]^a[10];
assign c[1] =a[1]^a[4]^a[7]^a[10]^a[11];
assign c[2] =a[2]^a[5]^a[8]^a[11]^a[12];
assign c[3] =a[0]^a[3]^a[4]^a[5]^a[9]^a[10]^a[12];
assign c[4] =a[1]^a[11];
assign c[5] =a[2]^a[12];
assign c[6] =a[3];
assign c[7] =a[0]^a[4];
assign c[8] =a[0]^a[1]^a[5];
assign c[9] =a[0]^a[1]^a[2]^a[6];
assign c[10] =a[1]^a[2]^a[3]^a[7];
assign c[11] =a[2]^a[3]^a[4]^a[8];
assign c[12] =a[3]^a[4]^a[5]^a[9];


endmodule

module multiplier_alpha512(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[0]^a[2]^a[4]^a[6]^a[9]^a[10]^a[11]^a[12];
assign c[1] =a[1]^a[2]^a[3]^a[4]^a[5]^a[6]^a[7]^a[9];
assign c[2] =a[2]^a[3]^a[4]^a[5]^a[6]^a[7]^a[8]^a[10];
assign c[3] =a[0]^a[2]^a[3]^a[5]^a[7]^a[8]^a[10]^a[12];
assign c[4] =a[0]^a[1]^a[2]^a[3]^a[8]^a[10]^a[12];
assign c[5] =a[1]^a[2]^a[3]^a[4]^a[9]^a[11];
assign c[6] =a[2]^a[3]^a[4]^a[5]^a[10]^a[12];
assign c[7] =a[0]^a[3]^a[4]^a[5]^a[6]^a[11];
assign c[8] =a[1]^a[4]^a[5]^a[6]^a[7]^a[12];
assign c[9] =a[0]^a[2]^a[5]^a[6]^a[7]^a[8];
assign c[10] =a[1]^a[3]^a[6]^a[7]^a[8]^a[9];
assign c[11] =a[0]^a[2]^a[4]^a[7]^a[8]^a[9]^a[10];
assign c[12] =a[1]^a[3]^a[5]^a[8]^a[9]^a[10]^a[11];



endmodule

module multiplier_alpha96(a,c);
input [12:0]a;
output [12:0] c;
wire   [12:0] c;

assign c[0] =a[7]^a[8]^a[10];
assign c[1] =a[7]^a[9]^a[10]^a[11];
assign c[2] =a[8]^a[10]^a[11]^a[12];
assign c[3] =a[0]^a[7]^a[8]^a[9]^a[10]^a[11]^a[12];
assign c[4] =a[1]^a[7]^a[9]^a[11]^a[12];
assign c[5] =a[0]^a[2]^a[8]^a[10]^a[12];
assign c[6] =a[0]^a[1]^a[3]^a[9]^a[11];
assign c[7] =a[1]^a[2]^a[4]^a[10]^a[12];
assign c[8] =a[2]^a[3]^a[5]^a[11];
assign c[9] =a[3]^a[4]^a[6]^a[12];
assign c[10] =a[4]^a[5]^a[7];
assign c[11] =a[5]^a[6]^a[8];
assign c[12] =a[6]^a[7]^a[9];




endmodule




module syndrome_row_8(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha8=13'b0000100000000;
wire [12:0]alpha16=13'b0000011011000;
wire [12:0]alpha24=13'b1100001011010;
wire [12:0]alpha32=13'b1000101110110;
wire [12:0]alpha40=13'b1101101110101;
wire [12:0]alpha48=13'b1111100000101;
wire [12:0]alpha56=13'b0110001001000;
wire [12:0]alpha64=13'b0110110010110;
wire [12:0]alpha72=13'b1001100010100;
wire [12:0]alpha80=13'b1100011101000;
wire [12:0]alpha88=13'b0001100000001;
wire [12:0]alpha96=13'b0000001101000;
wire [12:0]alpha104=13'b0100000101101;
wire [12:0]alpha112=13'b0101111011011;
wire [12:0]alpha120=13'b1110011110010;
wire [12:0]alpha128=13'b1101001100001;
wire [12:0]alpha136=13'b0101111011101;
wire [12:0]alpha144=13'b1101011110010;
wire [12:0]alpha152=13'b1100010110001;
wire [12:0]alpha160=13'b1101000110111;
wire [12:0]alpha168=13'b1110111101011;
wire [12:0]alpha176=13'b0001110111001;
wire [12:0]alpha184=13'b1100000011111;
wire [12:0]alpha192=13'b1010001000000;
wire [12:0]alpha200=13'b0111011010110;
wire [12:0]alpha208=13'b1001001001010;
wire [12:0]alpha216=13'b0011000000110;
wire [12:0]alpha224=13'b0010011010000;
wire [12:0]alpha232=13'b1001100111010;
wire [12:0]alpha240=13'b1011011110011;
wire [12:0]alpha248=13'b1110000010001;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha8),.r(r1),.out(out1));
mux mux_2(.alpha(alpha16),.r(r2),.out(out2));
mux mux_3(.alpha(alpha24),.r(r3),.out(out3));
mux mux_4(.alpha(alpha32),.r(r4),.out(out4));
mux mux_5(.alpha(alpha40),.r(r5),.out(out5));
mux mux_6(.alpha(alpha48),.r(r6),.out(out6));
mux mux_7(.alpha(alpha56),.r(r7),.out(out7));
mux mux_8(.alpha(alpha64),.r(r8),.out(out8));
mux mux_9(.alpha(alpha72),.r(r9),.out(out9));
mux mux_10(.alpha(alpha80),.r(r10),.out(out10));
mux mux_11(.alpha(alpha88),.r(r11),.out(out11));
mux mux_12(.alpha(alpha96),.r(r12),.out(out12));
mux mux_13(.alpha(alpha104),.r(r13),.out(out13));
mux mux_14(.alpha(alpha112),.r(r14),.out(out14));
mux mux_15(.alpha(alpha120),.r(r15),.out(out15));
mux mux_16(.alpha(alpha128),.r(r16),.out(out16));
mux mux_17(.alpha(alpha136),.r(r17),.out(out17));
mux mux_18(.alpha(alpha144),.r(r18),.out(out18));
mux mux_19(.alpha(alpha152),.r(r19),.out(out19));
mux mux_20(.alpha(alpha160),.r(r20),.out(out20));
mux mux_21(.alpha(alpha168),.r(r21),.out(out21));
mux mux_22(.alpha(alpha176),.r(r22),.out(out22));
mux mux_23(.alpha(alpha184),.r(r23),.out(out23));
mux mux_24(.alpha(alpha192),.r(r24),.out(out24));
mux mux_25(.alpha(alpha200),.r(r25),.out(out25));
mux mux_26(.alpha(alpha208),.r(r26),.out(out26));
mux mux_27(.alpha(alpha216),.r(r27),.out(out27));
mux mux_28(.alpha(alpha224),.r(r28),.out(out28));
mux mux_29(.alpha(alpha232),.r(r29),.out(out29));
mux mux_30(.alpha(alpha240),.r(r30),.out(out30));
mux mux_31(.alpha(alpha248),.r(r31),.out(out31));





assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha256 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end
	   



endmodule

module syndrome_row_3(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha3=13'b0000000001000;
wire [12:0]alpha6=13'b0000001000000;
wire [12:0]alpha9=13'b0001000000000;
wire [12:0]alpha12=13'b1000000000000;
wire [12:0]alpha15=13'b0000001101100;
wire [12:0]alpha18=13'b0001101100000;
wire [12:0]alpha21=13'b1101100000000;
wire [12:0]alpha24=13'b1100001011010;
wire [12:0]alpha27=13'b0001010001010;
wire [12:0]alpha30=13'b1010001010000;
wire [12:0]alpha33=13'b0001011110111;
wire [12:0]alpha36=13'b1011110111000;
wire [12:0]alpha39=13'b1110110110111;
wire [12:0]alpha42=13'b0110111111001;
wire [12:0]alpha45=13'b0111111100101;
wire [12:0]alpha48=13'b1111100000101;
wire [12:0]alpha51=13'b1100001101001;
wire [12:0]alpha54=13'b0001100010010;
wire [12:0]alpha57=13'b1100010010000;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha63=13'b0011011001011;
wire [12:0]alpha66=13'b1011001000011;
wire [12:0]alpha69=13'b1001001101111;
wire [12:0]alpha72=13'b1001100010100;
wire [12:0]alpha75=13'b1100011001100;
wire [12:0]alpha78=13'b0011000111010;
wire [12:0]alpha81=13'b1000111001011;
wire [12:0]alpha84=13'b0111000110100;
wire [12:0]alpha87=13'b1000110001101;
wire [12:0]alpha90=13'b0110000000100;
wire [12:0]alpha93=13'b0000000001101;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha3),.r(r1),.out(out1));
mux mux_2(.alpha(alpha6),.r(r2),.out(out2));
mux mux_3(.alpha(alpha9),.r(r3),.out(out3));
mux mux_4(.alpha(alpha12),.r(r4),.out(out4));
mux mux_5(.alpha(alpha15),.r(r5),.out(out5));
mux mux_6(.alpha(alpha18),.r(r6),.out(out6));
mux mux_7(.alpha(alpha21),.r(r7),.out(out7));
mux mux_8(.alpha(alpha24),.r(r8),.out(out8));
mux mux_9(.alpha(alpha27),.r(r9),.out(out9));
mux mux_10(.alpha(alpha30),.r(r10),.out(out10));
mux mux_11(.alpha(alpha33),.r(r11),.out(out11));
mux mux_12(.alpha(alpha36),.r(r12),.out(out12));
mux mux_13(.alpha(alpha39),.r(r13),.out(out13));
mux mux_14(.alpha(alpha42),.r(r14),.out(out14));
mux mux_15(.alpha(alpha45),.r(r15),.out(out15));
mux mux_16(.alpha(alpha48),.r(r16),.out(out16));
mux mux_17(.alpha(alpha51),.r(r17),.out(out17));
mux mux_18(.alpha(alpha54),.r(r18),.out(out18));
mux mux_19(.alpha(alpha57),.r(r19),.out(out19));
mux mux_20(.alpha(alpha60),.r(r20),.out(out20));
mux mux_21(.alpha(alpha63),.r(r21),.out(out21));
mux mux_22(.alpha(alpha66),.r(r22),.out(out22));
mux mux_23(.alpha(alpha69),.r(r23),.out(out23));
mux mux_24(.alpha(alpha72),.r(r24),.out(out24));
mux mux_25(.alpha(alpha75),.r(r25),.out(out25));
mux mux_26(.alpha(alpha78),.r(r26),.out(out26));
mux mux_27(.alpha(alpha81),.r(r27),.out(out27));
mux mux_28(.alpha(alpha84),.r(r28),.out(out28));
mux mux_29(.alpha(alpha87),.r(r29),.out(out29));
mux mux_30(.alpha(alpha90),.r(r30),.out(out30));
mux mux_31(.alpha(alpha93),.r(r31),.out(out31));





assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha96 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end
	   


endmodule



 module syndrome_row(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);

wire [12:0]z=13'b0000000000000;//****** for test *****
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha1=13'b0000000000010;
wire [12:0]alpha2=13'b0000000000100;
wire [12:0]alpha3=13'b0000000001000;
wire [12:0]alpha4=13'b0000000010000;
wire [12:0]alpha5=13'b0000000100000;
wire [12:0]alpha6=13'b0000001000000;
wire [12:0]alpha7=13'b0000010000000;
wire [12:0]alpha8=13'b0000100000000;
wire [12:0]alpha9=13'b0001000000000;
wire [12:0]alpha10=13'b0010000000000;
wire [12:0]alpha11=13'b0100000000000;
wire [12:0]alpha12=13'b1000000000000;
wire [12:0]alpha13=13'b0000000011011;
wire [12:0]alpha14=13'b0000000110110;
wire [12:0]alpha15=13'b0000001101100;
wire [12:0]alpha16=13'b0000011011000;
wire [12:0]alpha17=13'b0000110110000;
wire [12:0]alpha18=13'b0001101100000;
wire [12:0]alpha19=13'b0011011000000;
wire [12:0]alpha20=13'b0110110000000;
wire [12:0]alpha21=13'b1101100000000;
wire [12:0]alpha22=13'b1011000011011;
wire [12:0]alpha23=13'b0110000101101;
wire [12:0]alpha24=13'b1100001011010;
wire [12:0]alpha25=13'b1000010101111;
wire [12:0]alpha26=13'b0000101000101;
wire [12:0]alpha27=13'b0001010001010;
wire [12:0]alpha28=13'b0010100010100;
wire [12:0]alpha29=13'b0101000101000;
wire [12:0]alpha30=13'b1010001010000;
wire [12:0]alpha31=13'b0100010111011;



input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;



wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha1),.r(r1),.out(out1));
mux mux_2(.alpha(alpha2),.r(r2),.out(out2));
mux mux_3(.alpha(alpha3),.r(r3),.out(out3));
mux mux_4(.alpha(alpha4),.r(r4),.out(out4));
mux mux_5(.alpha(alpha5),.r(r5),.out(out5));
mux mux_6(.alpha(alpha6),.r(r6),.out(out6));
mux mux_7(.alpha(alpha7),.r(r7),.out(out7));
mux mux_8(.alpha(alpha8),.r(r8),.out(out8));
mux mux_9(.alpha(alpha9),.r(r9),.out(out9));
mux mux_10(.alpha(alpha10),.r(r10),.out(out10));
mux mux_11(.alpha(alpha11),.r(r11),.out(out11));
mux mux_12(.alpha(alpha12),.r(r12),.out(out12));
mux mux_13(.alpha(alpha13),.r(r13),.out(out13));
mux mux_14(.alpha(alpha14),.r(r14),.out(out14));
mux mux_15(.alpha(alpha15),.r(r15),.out(out15));
mux mux_16(.alpha(alpha16),.r(r16),.out(out16));
mux mux_17(.alpha(alpha17),.r(r17),.out(out17));
mux mux_18(.alpha(alpha18),.r(r18),.out(out18));
mux mux_19(.alpha(alpha19),.r(r19),.out(out19));
mux mux_20(.alpha(alpha20),.r(r20),.out(out20));
mux mux_21(.alpha(alpha21),.r(r21),.out(out21));
mux mux_22(.alpha(alpha22),.r(r22),.out(out22));
mux mux_23(.alpha(alpha23),.r(r23),.out(out23));
mux mux_24(.alpha(alpha24),.r(r24),.out(out24));
mux mux_25(.alpha(alpha25),.r(r25),.out(out25));
mux mux_26(.alpha(alpha26),.r(r26),.out(out26));
mux mux_27(.alpha(alpha27),.r(r27),.out(out27));
mux mux_28(.alpha(alpha28),.r(r28),.out(out28));
mux mux_29(.alpha(alpha29),.r(r29),.out(out29));
mux mux_30(.alpha(alpha30),.r(r30),.out(out30));
mux mux_31(.alpha(alpha31),.r(r31),.out(out31));



assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha32 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   


endmodule




module syndrome_row_2(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha2=13'b0000000000100;
wire [12:0]alpha4=13'b0000000010000;
wire [12:0]alpha6=13'b0000001000000;
wire [12:0]alpha8=13'b0000100000000;
wire [12:0]alpha10=13'b0010000000000;
wire [12:0]alpha12=13'b1000000000000;
wire [12:0]alpha14=13'b0000000110110;
wire [12:0]alpha16=13'b0000011011000;
wire [12:0]alpha18=13'b0001101100000;
wire [12:0]alpha20=13'b0110110000000;
wire [12:0]alpha22=13'b1011000011011;
wire [12:0]alpha24=13'b1100001011010;
wire [12:0]alpha26=13'b0000101000101;
wire [12:0]alpha28=13'b0010100010100;
wire [12:0]alpha30=13'b1010001010000;
wire [12:0]alpha32=13'b1000101110110;
wire [12:0]alpha34=13'b0010111101110;
wire [12:0]alpha36=13'b1011110111000;
wire [12:0]alpha38=13'b1111011010110;
wire [12:0]alpha40=13'b1101101110101;
wire [12:0]alpha42=13'b0110111111001;
wire [12:0]alpha44=13'b1011111111111;
wire [12:0]alpha46=13'b1111111001010;
wire [12:0]alpha48=13'b1111100000101;
wire [12:0]alpha50=13'b1110000111001;
wire [12:0]alpha52=13'b1000011001001;
wire [12:0]alpha54=13'b0001100010010;
wire [12:0]alpha56=13'b0110001001000;
wire [12:0]alpha58=13'b1000100111011;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha62=13'b1001101101000;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha2),.r(r1),.out(out1));
mux mux_2(.alpha(alpha4),.r(r2),.out(out2));
mux mux_3(.alpha(alpha6),.r(r3),.out(out3));
mux mux_4(.alpha(alpha8),.r(r4),.out(out4));
mux mux_5(.alpha(alpha10),.r(r5),.out(out5));
mux mux_6(.alpha(alpha12),.r(r6),.out(out6));
mux mux_7(.alpha(alpha14),.r(r7),.out(out7));
mux mux_8(.alpha(alpha16),.r(r8),.out(out8));
mux mux_9(.alpha(alpha18),.r(r9),.out(out9));
mux mux_10(.alpha(alpha20),.r(r10),.out(out10));
mux mux_11(.alpha(alpha22),.r(r11),.out(out11));
mux mux_12(.alpha(alpha24),.r(r12),.out(out12));
mux mux_13(.alpha(alpha26),.r(r13),.out(out13));
mux mux_14(.alpha(alpha28),.r(r14),.out(out14));
mux mux_15(.alpha(alpha30),.r(r15),.out(out15));
mux mux_16(.alpha(alpha32),.r(r16),.out(out16));
mux mux_17(.alpha(alpha34),.r(r17),.out(out17));
mux mux_18(.alpha(alpha36),.r(r18),.out(out18));
mux mux_19(.alpha(alpha38),.r(r19),.out(out19));
mux mux_20(.alpha(alpha40),.r(r20),.out(out20));
mux mux_21(.alpha(alpha42),.r(r21),.out(out21));
mux mux_22(.alpha(alpha44),.r(r22),.out(out22));
mux mux_23(.alpha(alpha46),.r(r23),.out(out23));
mux mux_24(.alpha(alpha48),.r(r24),.out(out24));
mux mux_25(.alpha(alpha50),.r(r25),.out(out25));
mux mux_26(.alpha(alpha52),.r(r26),.out(out26));
mux mux_27(.alpha(alpha54),.r(r27),.out(out27));
mux mux_28(.alpha(alpha56),.r(r28),.out(out28));
mux mux_29(.alpha(alpha58),.r(r29),.out(out29));
mux mux_30(.alpha(alpha60),.r(r30),.out(out30));
mux mux_31(.alpha(alpha62),.r(r31),.out(out31));




assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha64 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   


endmodule




module syndrome_row_4(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha4=13'b0000000010000;
wire [12:0]alpha8=13'b0000100000000;
wire [12:0]alpha12=13'b1000000000000;
wire [12:0]alpha16=13'b0000011011000;
wire [12:0]alpha20=13'b0110110000000;
wire [12:0]alpha24=13'b1100001011010;
wire [12:0]alpha28=13'b0010100010100;
wire [12:0]alpha32=13'b1000101110110;
wire [12:0]alpha36=13'b1011110111000;
wire [12:0]alpha40=13'b1101101110101;
wire [12:0]alpha44=13'b1011111111111;
wire [12:0]alpha48=13'b1111100000101;
wire [12:0]alpha52=13'b1000011001001;
wire [12:0]alpha56=13'b0110001001000;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha64=13'b0110110010110;
wire [12:0]alpha68=13'b1100100111010;
wire [12:0]alpha72=13'b1001100010100;
wire [12:0]alpha76=13'b1000110000011;
wire [12:0]alpha80=13'b1100011101000;
wire [12:0]alpha84=13'b0111000110100;
wire [12:0]alpha88=13'b0001100000001;
wire [12:0]alpha92=13'b1000000001011;
wire [12:0]alpha96=13'b0000001101000;
wire [12:0]alpha100=13'b0011010000000;
wire [12:0]alpha104=13'b0100000101101;
wire [12:0]alpha108=13'b0001010111100;
wire [12:0]alpha112=13'b0101111011011;
wire [12:0]alpha116=13'b1110111000111;
wire [12:0]alpha120=13'b1110011110010;
wire [12:0]alpha124=13'b0111110100010;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha4),.r(r1),.out(out1));
mux mux_2(.alpha(alpha8),.r(r2),.out(out2));
mux mux_3(.alpha(alpha12),.r(r3),.out(out3));
mux mux_4(.alpha(alpha16),.r(r4),.out(out4));
mux mux_5(.alpha(alpha20),.r(r5),.out(out5));
mux mux_6(.alpha(alpha24),.r(r6),.out(out6));
mux mux_7(.alpha(alpha28),.r(r7),.out(out7));
mux mux_8(.alpha(alpha32),.r(r8),.out(out8));
mux mux_9(.alpha(alpha36),.r(r9),.out(out9));
mux mux_10(.alpha(alpha40),.r(r10),.out(out10));
mux mux_11(.alpha(alpha44),.r(r11),.out(out11));
mux mux_12(.alpha(alpha48),.r(r12),.out(out12));
mux mux_13(.alpha(alpha52),.r(r13),.out(out13));
mux mux_14(.alpha(alpha56),.r(r14),.out(out14));
mux mux_15(.alpha(alpha60),.r(r15),.out(out15));
mux mux_16(.alpha(alpha64),.r(r16),.out(out16));
mux mux_17(.alpha(alpha68),.r(r17),.out(out17));
mux mux_18(.alpha(alpha72),.r(r18),.out(out18));
mux mux_19(.alpha(alpha76),.r(r19),.out(out19));
mux mux_20(.alpha(alpha80),.r(r20),.out(out20));
mux mux_21(.alpha(alpha84),.r(r21),.out(out21));
mux mux_22(.alpha(alpha88),.r(r22),.out(out22));
mux mux_23(.alpha(alpha92),.r(r23),.out(out23));
mux mux_24(.alpha(alpha96),.r(r24),.out(out24));
mux mux_25(.alpha(alpha100),.r(r25),.out(out25));
mux mux_26(.alpha(alpha104),.r(r26),.out(out26));
mux mux_27(.alpha(alpha108),.r(r27),.out(out27));
mux mux_28(.alpha(alpha112),.r(r28),.out(out28));
mux mux_29(.alpha(alpha116),.r(r29),.out(out29));
mux mux_30(.alpha(alpha120),.r(r30),.out(out30));
mux mux_31(.alpha(alpha124),.r(r31),.out(out31));



assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha128 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end
	   



endmodule

module syndrome_row_5(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha5=13'b0000000100000;
wire [12:0]alpha10=13'b0010000000000;
wire [12:0]alpha15=13'b0000001101100;
wire [12:0]alpha20=13'b0110110000000;
wire [12:0]alpha25=13'b1000010101111;
wire [12:0]alpha30=13'b1010001010000;
wire [12:0]alpha35=13'b0101111011100;
wire [12:0]alpha40=13'b1101101110101;
wire [12:0]alpha45=13'b0111111100101;
wire [12:0]alpha50=13'b1110000111001;
wire [12:0]alpha55=13'b0011000100100;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha65=13'b1101100101100;
wire [12:0]alpha70=13'b0010011000101;
wire [12:0]alpha75=13'b1100011001100;
wire [12:0]alpha80=13'b1100011101000;
wire [12:0]alpha85=13'b1110001101000;
wire [12:0]alpha90=13'b0110000000100;
wire [12:0]alpha95=13'b0000000110100;
wire [12:0]alpha100=13'b0011010000000;
wire [12:0]alpha105=13'b1000001011010;
wire [12:0]alpha110=13'b0101011110000;
wire [12:0]alpha115=13'b1111011101110;
wire [12:0]alpha120=13'b1110011110010;
wire [12:0]alpha125=13'b1111101000100;
wire [12:0]alpha130=13'b0100110101001;
wire [12:0]alpha135=13'b1010111100011;
wire [12:0]alpha140=13'b1110110100111;
wire [12:0]alpha145=13'b1010111111111;
wire [12:0]alpha150=13'b1111000100111;
wire [12:0]alpha155=13'b0010111010010;



//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha5),.r(r1),.out(out1));
mux mux_2(.alpha(alpha10),.r(r2),.out(out2));
mux mux_3(.alpha(alpha15),.r(r3),.out(out3));
mux mux_4(.alpha(alpha20),.r(r4),.out(out4));
mux mux_5(.alpha(alpha25),.r(r5),.out(out5));
mux mux_6(.alpha(alpha30),.r(r6),.out(out6));
mux mux_7(.alpha(alpha35),.r(r7),.out(out7));
mux mux_8(.alpha(alpha40),.r(r8),.out(out8));
mux mux_9(.alpha(alpha45),.r(r9),.out(out9));
mux mux_10(.alpha(alpha50),.r(r10),.out(out10));
mux mux_11(.alpha(alpha55),.r(r11),.out(out11));
mux mux_12(.alpha(alpha60),.r(r12),.out(out12));
mux mux_13(.alpha(alpha65),.r(r13),.out(out13));
mux mux_14(.alpha(alpha70),.r(r14),.out(out14));
mux mux_15(.alpha(alpha75),.r(r15),.out(out15));
mux mux_16(.alpha(alpha80),.r(r16),.out(out16));
mux mux_17(.alpha(alpha85),.r(r17),.out(out17));
mux mux_18(.alpha(alpha90),.r(r18),.out(out18));
mux mux_19(.alpha(alpha95),.r(r19),.out(out19));
mux mux_20(.alpha(alpha100),.r(r20),.out(out20));
mux mux_21(.alpha(alpha105),.r(r21),.out(out21));
mux mux_22(.alpha(alpha110),.r(r22),.out(out22));
mux mux_23(.alpha(alpha115),.r(r23),.out(out23));
mux mux_24(.alpha(alpha120),.r(r24),.out(out24));
mux mux_25(.alpha(alpha125),.r(r25),.out(out25));
mux mux_26(.alpha(alpha130),.r(r26),.out(out26));
mux mux_27(.alpha(alpha135),.r(r27),.out(out27));
mux mux_28(.alpha(alpha140),.r(r28),.out(out28));
mux mux_29(.alpha(alpha145),.r(r29),.out(out29));
mux mux_30(.alpha(alpha150),.r(r30),.out(out30));
mux mux_31(.alpha(alpha155),.r(r31),.out(out31));





assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha160 mutilplier(.a(d),.c(feedback));

always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   



endmodule

module syndrome_row_6(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha6=13'b0000001000000;
wire [12:0]alpha12=13'b1000000000000;
wire [12:0]alpha18=13'b0001101100000;
wire [12:0]alpha24=13'b1100001011010;
wire [12:0]alpha30=13'b1010001010000;
wire [12:0]alpha36=13'b1011110111000;
wire [12:0]alpha42=13'b0110111111001;
wire [12:0]alpha48=13'b1111100000101;
wire [12:0]alpha54=13'b0001100010010;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha66=13'b1011001000011;
wire [12:0]alpha72=13'b1001100010100;
wire [12:0]alpha78=13'b0011000111010;
wire [12:0]alpha84=13'b0111000110100;
wire [12:0]alpha90=13'b0110000000100;
wire [12:0]alpha96=13'b0000001101000;
wire [12:0]alpha102=13'b1101000000000;
wire [12:0]alpha108=13'b0001010111100;
wire [12:0]alpha114=13'b0111101110111;
wire [12:0]alpha120=13'b1110011110010;
wire [12:0]alpha126=13'b1111010010011;
wire [12:0]alpha132=13'b0011010111111;
wire [12:0]alpha138=13'b0111101101111;
wire [12:0]alpha144=13'b1101011110010;
wire [12:0]alpha150=13'b1111000100111;
wire [12:0]alpha156=13'b0101110100100;
wire [12:0]alpha162=13'b0100011110001;
wire [12:0]alpha168=13'b1110111101011;
wire [12:0]alpha174=13'b1100011100101;
wire [12:0]alpha180=13'b1101110001011;
wire [12:0]alpha186=13'b0000001010001;



//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha6),.r(r1),.out(out1));
mux mux_2(.alpha(alpha12),.r(r2),.out(out2));
mux mux_3(.alpha(alpha18),.r(r3),.out(out3));
mux mux_4(.alpha(alpha24),.r(r4),.out(out4));
mux mux_5(.alpha(alpha30),.r(r5),.out(out5));
mux mux_6(.alpha(alpha36),.r(r6),.out(out6));
mux mux_7(.alpha(alpha42),.r(r7),.out(out7));
mux mux_8(.alpha(alpha48),.r(r8),.out(out8));
mux mux_9(.alpha(alpha54),.r(r9),.out(out9));
mux mux_10(.alpha(alpha60),.r(r10),.out(out10));
mux mux_11(.alpha(alpha66),.r(r11),.out(out11));
mux mux_12(.alpha(alpha72),.r(r12),.out(out12));
mux mux_13(.alpha(alpha78),.r(r13),.out(out13));
mux mux_14(.alpha(alpha84),.r(r14),.out(out14));
mux mux_15(.alpha(alpha90),.r(r15),.out(out15));
mux mux_16(.alpha(alpha96),.r(r16),.out(out16));
mux mux_17(.alpha(alpha102),.r(r17),.out(out17));
mux mux_18(.alpha(alpha108),.r(r18),.out(out18));
mux mux_19(.alpha(alpha114),.r(r19),.out(out19));
mux mux_20(.alpha(alpha120),.r(r20),.out(out20));
mux mux_21(.alpha(alpha126),.r(r21),.out(out21));
mux mux_22(.alpha(alpha132),.r(r22),.out(out22));
mux mux_23(.alpha(alpha138),.r(r23),.out(out23));
mux mux_24(.alpha(alpha144),.r(r24),.out(out24));
mux mux_25(.alpha(alpha150),.r(r25),.out(out25));
mux mux_26(.alpha(alpha156),.r(r26),.out(out26));
mux mux_27(.alpha(alpha162),.r(r27),.out(out27));
mux mux_28(.alpha(alpha168),.r(r28),.out(out28));
mux mux_29(.alpha(alpha174),.r(r29),.out(out29));
mux mux_30(.alpha(alpha180),.r(r30),.out(out30));
mux mux_31(.alpha(alpha186),.r(r31),.out(out31));





assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha192 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end
	   



endmodule

module syndrome_row_7(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha7=13'b0000010000000;
wire [12:0]alpha14=13'b0000000110110;
wire [12:0]alpha21=13'b1101100000000;
wire [12:0]alpha28=13'b0010100010100;
wire [12:0]alpha35=13'b0101111011100;
wire [12:0]alpha42=13'b0110111111001;
wire [12:0]alpha49=13'b1111000010001;
wire [12:0]alpha56=13'b0110001001000;
wire [12:0]alpha63=13'b0011011001011;
wire [12:0]alpha70=13'b0010011000101;
wire [12:0]alpha77=13'b0001100011101;
wire [12:0]alpha84=13'b0111000110100;
wire [12:0]alpha91=13'b1100000001000;
wire [12:0]alpha98=13'b0000110100000;
wire [12:0]alpha105=13'b1000001011010;
wire [12:0]alpha112=13'b0101111011011;
wire [12:0]alpha119=13'b0111001111001;
wire [12:0]alpha126=13'b1111010010011;
wire [12:0]alpha133=13'b0110101111110;
wire [12:0]alpha140=13'b1110110100111;
wire [12:0]alpha147=13'b1011111001010;
wire [12:0]alpha154=13'b0001011101001;
wire [12:0]alpha161=13'b1010001110101;
wire [12:0]alpha168=13'b1110111101011;
wire [12:0]alpha175=13'b1000111010001;
wire [12:0]alpha182=13'b0111000000001;
wire [12:0]alpha189=13'b0001010001000;
wire [12:0]alpha196=13'b0010011101110;
wire [12:0]alpha203=13'b1011010011101;
wire [12:0]alpha210=13'b0100100011110;
wire [12:0]alpha217=13'b0110000001100;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha7),.r(r1),.out(out1));
mux mux_2(.alpha(alpha14),.r(r2),.out(out2));
mux mux_3(.alpha(alpha21),.r(r3),.out(out3));
mux mux_4(.alpha(alpha28),.r(r4),.out(out4));
mux mux_5(.alpha(alpha35),.r(r5),.out(out5));
mux mux_6(.alpha(alpha42),.r(r6),.out(out6));
mux mux_7(.alpha(alpha49),.r(r7),.out(out7));
mux mux_8(.alpha(alpha56),.r(r8),.out(out8));
mux mux_9(.alpha(alpha63),.r(r9),.out(out9));
mux mux_10(.alpha(alpha70),.r(r10),.out(out10));
mux mux_11(.alpha(alpha77),.r(r11),.out(out11));
mux mux_12(.alpha(alpha84),.r(r12),.out(out12));
mux mux_13(.alpha(alpha91),.r(r13),.out(out13));
mux mux_14(.alpha(alpha98),.r(r14),.out(out14));
mux mux_15(.alpha(alpha105),.r(r15),.out(out15));
mux mux_16(.alpha(alpha112),.r(r16),.out(out16));
mux mux_17(.alpha(alpha119),.r(r17),.out(out17));
mux mux_18(.alpha(alpha126),.r(r18),.out(out18));
mux mux_19(.alpha(alpha133),.r(r19),.out(out19));
mux mux_20(.alpha(alpha140),.r(r20),.out(out20));
mux mux_21(.alpha(alpha147),.r(r21),.out(out21));
mux mux_22(.alpha(alpha154),.r(r22),.out(out22));
mux mux_23(.alpha(alpha161),.r(r23),.out(out23));
mux mux_24(.alpha(alpha168),.r(r24),.out(out24));
mux mux_25(.alpha(alpha175),.r(r25),.out(out25));
mux mux_26(.alpha(alpha182),.r(r26),.out(out26));
mux mux_27(.alpha(alpha189),.r(r27),.out(out27));
mux mux_28(.alpha(alpha196),.r(r28),.out(out28));
mux mux_29(.alpha(alpha203),.r(r29),.out(out29));
mux mux_30(.alpha(alpha210),.r(r30),.out(out30));
mux mux_31(.alpha(alpha217),.r(r31),.out(out31));





assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha224 mutilplier(.a(d),.c(feedback));

always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   



endmodule


module syndrome_row_12(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha12=13'b1000000000000;
wire [12:0]alpha24=13'b1100001011010;
wire [12:0]alpha36=13'b1011110111000;
wire [12:0]alpha48=13'b1111100000101;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha72=13'b1001100010100;
wire [12:0]alpha84=13'b0111000110100;
wire [12:0]alpha96=13'b0000001101000;
wire [12:0]alpha108=13'b0001010111100;
wire [12:0]alpha120=13'b1110011110010;
wire [12:0]alpha132=13'b0011010111111;
wire [12:0]alpha144=13'b1101011110010;
wire [12:0]alpha156=13'b0101110100100;
wire [12:0]alpha168=13'b1110111101011;
wire [12:0]alpha180=13'b1101110001011;
wire [12:0]alpha192=13'b1010001000000;
wire [12:0]alpha204=13'b0110100100001;
wire [12:0]alpha216=13'b0011000000110;
wire [12:0]alpha228=13'b0110100110110;
wire [12:0]alpha240=13'b1011011110011;
wire [12:0]alpha252=13'b0000110010010;
wire [12:0]alpha264=13'b0101110000011;
wire [12:0]alpha276=13'b0110001110110;
wire [12:0]alpha288=13'b1100000010011;
wire [12:0]alpha300=13'b0010010110100;
wire [12:0]alpha312=13'b1000110000101;
wire [12:0]alpha324=13'b0001100101100;
wire [12:0]alpha336=13'b1011101101010;
wire [12:0]alpha348=13'b1101001100110;
wire [12:0]alpha360=13'b0110110001010;
wire [12:0]alpha372=13'b1000100000001;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha12),.r(r1),.out(out1));
mux mux_2(.alpha(alpha24),.r(r2),.out(out2));
mux mux_3(.alpha(alpha36),.r(r3),.out(out3));
mux mux_4(.alpha(alpha48),.r(r4),.out(out4));
mux mux_5(.alpha(alpha60),.r(r5),.out(out5));
mux mux_6(.alpha(alpha72),.r(r6),.out(out6));
mux mux_7(.alpha(alpha84),.r(r7),.out(out7));
mux mux_8(.alpha(alpha96),.r(r8),.out(out8));
mux mux_9(.alpha(alpha108),.r(r9),.out(out9));
mux mux_10(.alpha(alpha120),.r(r10),.out(out10));
mux mux_11(.alpha(alpha132),.r(r11),.out(out11));
mux mux_12(.alpha(alpha144),.r(r12),.out(out12));
mux mux_13(.alpha(alpha156),.r(r13),.out(out13));
mux mux_14(.alpha(alpha168),.r(r14),.out(out14));
mux mux_15(.alpha(alpha180),.r(r15),.out(out15));
mux mux_16(.alpha(alpha192),.r(r16),.out(out16));
mux mux_17(.alpha(alpha204),.r(r17),.out(out17));
mux mux_18(.alpha(alpha216),.r(r18),.out(out18));
mux mux_19(.alpha(alpha228),.r(r19),.out(out19));
mux mux_20(.alpha(alpha240),.r(r20),.out(out20));
mux mux_21(.alpha(alpha252),.r(r21),.out(out21));
mux mux_22(.alpha(alpha264),.r(r22),.out(out22));
mux mux_23(.alpha(alpha276),.r(r23),.out(out23));
mux mux_24(.alpha(alpha288),.r(r24),.out(out24));
mux mux_25(.alpha(alpha300),.r(r25),.out(out25));
mux mux_26(.alpha(alpha312),.r(r26),.out(out26));
mux mux_27(.alpha(alpha324),.r(r27),.out(out27));
mux mux_28(.alpha(alpha336),.r(r28),.out(out28));
mux mux_29(.alpha(alpha348),.r(r29),.out(out29));
mux mux_30(.alpha(alpha360),.r(r30),.out(out30));
mux mux_31(.alpha(alpha372),.r(r31),.out(out31));





assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha384 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end   


endmodule

module syndrome_row_13(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha13=13'b0000000011011;
wire [12:0]alpha26=13'b0000101000101;
wire [12:0]alpha39=13'b1110110110111;
wire [12:0]alpha52=13'b1000011001001;
wire [12:0]alpha65=13'b1101100101100;
wire [12:0]alpha78=13'b0011000111010;
wire [12:0]alpha91=13'b1100000001000;
wire [12:0]alpha104=13'b0100000101101;
wire [12:0]alpha117=13'b1101110010101;
wire [12:0]alpha130=13'b0100110101001;
wire [12:0]alpha143=13'b0110101111001;
wire [12:0]alpha156=13'b0101110100100;
wire [12:0]alpha169=13'b1101111001101;
wire [12:0]alpha182=13'b0111000000001;
wire [12:0]alpha195=13'b0001001110111;
wire [12:0]alpha208=13'b1001001001010;
wire [12:0]alpha221=13'b0000010011010;
wire [12:0]alpha234=13'b0110011011110;
wire [12:0]alpha247=13'b1111000000101;
wire [12:0]alpha260=13'b1001010110100;
wire [12:0]alpha273=13'b0100110001000;
wire [12:0]alpha286=13'b0111000000010;
wire [12:0]alpha299=13'b0001001011010;
wire [12:0]alpha312=13'b1000110000101;
wire [12:0]alpha325=13'b0011001011000;
wire [12:0]alpha338=13'b1110110011110;
wire [12:0]alpha351=13'b1001101101010;
wire [12:0]alpha364=13'b1100011111010;
wire [12:0]alpha377=13'b0000110001011;
wire [12:0]alpha390=13'b1011001110101;
wire [12:0]alpha403=13'b0111011111110;



//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha13),.r(r1),.out(out1));
mux mux_2(.alpha(alpha26),.r(r2),.out(out2));
mux mux_3(.alpha(alpha39),.r(r3),.out(out3));
mux mux_4(.alpha(alpha52),.r(r4),.out(out4));
mux mux_5(.alpha(alpha65),.r(r5),.out(out5));
mux mux_6(.alpha(alpha78),.r(r6),.out(out6));
mux mux_7(.alpha(alpha91),.r(r7),.out(out7));
mux mux_8(.alpha(alpha104),.r(r8),.out(out8));
mux mux_9(.alpha(alpha117),.r(r9),.out(out9));
mux mux_10(.alpha(alpha130),.r(r10),.out(out10));
mux mux_11(.alpha(alpha143),.r(r11),.out(out11));
mux mux_12(.alpha(alpha156),.r(r12),.out(out12));
mux mux_13(.alpha(alpha169),.r(r13),.out(out13));
mux mux_14(.alpha(alpha182),.r(r14),.out(out14));
mux mux_15(.alpha(alpha195),.r(r15),.out(out15));
mux mux_16(.alpha(alpha208),.r(r16),.out(out16));
mux mux_17(.alpha(alpha221),.r(r17),.out(out17));
mux mux_18(.alpha(alpha234),.r(r18),.out(out18));
mux mux_19(.alpha(alpha247),.r(r19),.out(out19));
mux mux_20(.alpha(alpha260),.r(r20),.out(out20));
mux mux_21(.alpha(alpha273),.r(r21),.out(out21));
mux mux_22(.alpha(alpha286),.r(r22),.out(out22));
mux mux_23(.alpha(alpha299),.r(r23),.out(out23));
mux mux_24(.alpha(alpha312),.r(r24),.out(out24));
mux mux_25(.alpha(alpha325),.r(r25),.out(out25));
mux mux_26(.alpha(alpha338),.r(r26),.out(out26));
mux mux_27(.alpha(alpha351),.r(r27),.out(out27));
mux mux_28(.alpha(alpha364),.r(r28),.out(out28));
mux mux_29(.alpha(alpha377),.r(r29),.out(out29));
mux mux_30(.alpha(alpha390),.r(r30),.out(out30));
mux mux_31(.alpha(alpha403),.r(r31),.out(out31));




assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha416 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   



endmodule

module syndrome_row_14(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha14=13'b0000000110110;
wire [12:0]alpha28=13'b0010100010100;
wire [12:0]alpha42=13'b0110111111001;
wire [12:0]alpha56=13'b0110001001000;
wire [12:0]alpha70=13'b0010011000101;
wire [12:0]alpha84=13'b0111000110100;
wire [12:0]alpha98=13'b0000110100000;
wire [12:0]alpha112=13'b0101111011011;
wire [12:0]alpha126=13'b1111010010011;
wire [12:0]alpha140=13'b1110110100111;
wire [12:0]alpha154=13'b0001011101001;
wire [12:0]alpha168=13'b1110111101011;
wire [12:0]alpha182=13'b0111000000001;
wire [12:0]alpha196=13'b0010011101110;
wire [12:0]alpha210=13'b0100100011110;
wire [12:0]alpha224=13'b0010011010000;
wire [12:0]alpha238=13'b0110110111010;
wire [12:0]alpha252=13'b0000110010010;
wire [12:0]alpha266=13'b0111000010111;
wire [12:0]alpha280=13'b0011100111010;
wire [12:0]alpha294=13'b0011000010000;
wire [12:0]alpha308=13'b1011100010111;
wire [12:0]alpha322=13'b0000011001011;
wire [12:0]alpha336=13'b1011101101010;
wire [12:0]alpha350=13'b0100110110101;
wire [12:0]alpha364=13'b1100011111010;
wire [12:0]alpha378=13'b0001100010110;
wire [12:0]alpha392=13'b1100111100010;
wire [12:0]alpha406=13'b1011111011101;
wire [12:0]alpha420=13'b1011110010111;
wire [12:0]alpha434=13'b1101111001011;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha14),.r(r1),.out(out1));
mux mux_2(.alpha(alpha28),.r(r2),.out(out2));
mux mux_3(.alpha(alpha42),.r(r3),.out(out3));
mux mux_4(.alpha(alpha56),.r(r4),.out(out4));
mux mux_5(.alpha(alpha70),.r(r5),.out(out5));
mux mux_6(.alpha(alpha84),.r(r6),.out(out6));
mux mux_7(.alpha(alpha98),.r(r7),.out(out7));
mux mux_8(.alpha(alpha112),.r(r8),.out(out8));
mux mux_9(.alpha(alpha126),.r(r9),.out(out9));
mux mux_10(.alpha(alpha140),.r(r10),.out(out10));
mux mux_11(.alpha(alpha154),.r(r11),.out(out11));
mux mux_12(.alpha(alpha168),.r(r12),.out(out12));
mux mux_13(.alpha(alpha182),.r(r13),.out(out13));
mux mux_14(.alpha(alpha196),.r(r14),.out(out14));
mux mux_15(.alpha(alpha210),.r(r15),.out(out15));
mux mux_16(.alpha(alpha224),.r(r16),.out(out16));
mux mux_17(.alpha(alpha238),.r(r17),.out(out17));
mux mux_18(.alpha(alpha252),.r(r18),.out(out18));
mux mux_19(.alpha(alpha266),.r(r19),.out(out19));
mux mux_20(.alpha(alpha280),.r(r20),.out(out20));
mux mux_21(.alpha(alpha294),.r(r21),.out(out21));
mux mux_22(.alpha(alpha308),.r(r22),.out(out22));
mux mux_23(.alpha(alpha322),.r(r23),.out(out23));
mux mux_24(.alpha(alpha336),.r(r24),.out(out24));
mux mux_25(.alpha(alpha350),.r(r25),.out(out25));
mux mux_26(.alpha(alpha364),.r(r26),.out(out26));
mux mux_27(.alpha(alpha378),.r(r27),.out(out27));
mux mux_28(.alpha(alpha392),.r(r28),.out(out28));
mux mux_29(.alpha(alpha406),.r(r29),.out(out29));
mux mux_30(.alpha(alpha420),.r(r30),.out(out30));
mux mux_31(.alpha(alpha434),.r(r31),.out(out31));




assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha448 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   


endmodule

module syndrome_row_15(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha15=13'b0000001101100;
wire [12:0]alpha30=13'b1010001010000;
wire [12:0]alpha45=13'b0111111100101;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha75=13'b1100011001100;
wire [12:0]alpha90=13'b0110000000100;
wire [12:0]alpha105=13'b1000001011010;
wire [12:0]alpha120=13'b1110011110010;
wire [12:0]alpha135=13'b1010111100011;
wire [12:0]alpha150=13'b1111000100111;
wire [12:0]alpha165=13'b0011110111110;
wire [12:0]alpha180=13'b1101110001011;
wire [12:0]alpha195=13'b0001001110111;
wire [12:0]alpha210=13'b0100100011110;
wire [12:0]alpha225=13'b0100110100000;
wire [12:0]alpha240=13'b1011011110011;
wire [12:0]alpha255=13'b0110010010000;
wire [12:0]alpha270=13'b0000100110001;
wire [12:0]alpha285=13'b0011100000001;
wire [12:0]alpha300=13'b0010010110100;
wire [12:0]alpha315=13'b0110001000100;
wire [12:0]alpha330=13'b0101101011010;
wire [12:0]alpha345=13'b0101101001010;
wire [12:0]alpha360=13'b0110110001010;
wire [12:0]alpha375=13'b0100001100100;
wire [12:0]alpha390=13'b1011001110101;
wire [12:0]alpha405=13'b1101111100011;
wire [12:0]alpha420=13'b1011110010111;
wire [12:0]alpha435=13'b1011110001101;
wire [12:0]alpha450=13'b1001011110101;
wire [12:0]alpha465=13'b1110101010111;



//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha15),.r(r1),.out(out1));
mux mux_2(.alpha(alpha30),.r(r2),.out(out2));
mux mux_3(.alpha(alpha45),.r(r3),.out(out3));
mux mux_4(.alpha(alpha60),.r(r4),.out(out4));
mux mux_5(.alpha(alpha75),.r(r5),.out(out5));
mux mux_6(.alpha(alpha90),.r(r6),.out(out6));
mux mux_7(.alpha(alpha105),.r(r7),.out(out7));
mux mux_8(.alpha(alpha120),.r(r8),.out(out8));
mux mux_9(.alpha(alpha135),.r(r9),.out(out9));
mux mux_10(.alpha(alpha150),.r(r10),.out(out10));
mux mux_11(.alpha(alpha165),.r(r11),.out(out11));
mux mux_12(.alpha(alpha180),.r(r12),.out(out12));
mux mux_13(.alpha(alpha195),.r(r13),.out(out13));
mux mux_14(.alpha(alpha210),.r(r14),.out(out14));
mux mux_15(.alpha(alpha225),.r(r15),.out(out15));
mux mux_16(.alpha(alpha240),.r(r16),.out(out16));
mux mux_17(.alpha(alpha255),.r(r17),.out(out17));
mux mux_18(.alpha(alpha270),.r(r18),.out(out18));
mux mux_19(.alpha(alpha285),.r(r19),.out(out19));
mux mux_20(.alpha(alpha300),.r(r20),.out(out20));
mux mux_21(.alpha(alpha315),.r(r21),.out(out21));
mux mux_22(.alpha(alpha330),.r(r22),.out(out22));
mux mux_23(.alpha(alpha345),.r(r23),.out(out23));
mux mux_24(.alpha(alpha360),.r(r24),.out(out24));
mux mux_25(.alpha(alpha375),.r(r25),.out(out25));
mux mux_26(.alpha(alpha390),.r(r26),.out(out26));
mux mux_27(.alpha(alpha405),.r(r27),.out(out27));
mux mux_28(.alpha(alpha420),.r(r28),.out(out28));
mux mux_29(.alpha(alpha435),.r(r29),.out(out29));
mux mux_30(.alpha(alpha450),.r(r30),.out(out30));
mux mux_31(.alpha(alpha465),.r(r31),.out(out31));




assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha480 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end
	   


endmodule

module syndrome_row_16(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha16=13'b0000011011000;
wire [12:0]alpha32=13'b1000101110110;
wire [12:0]alpha48=13'b1111100000101;
wire [12:0]alpha64=13'b0110110010110;
wire [12:0]alpha80=13'b1100011101000;
wire [12:0]alpha96=13'b0000001101000;
wire [12:0]alpha112=13'b0101111011011;
wire [12:0]alpha128=13'b1101001100001;
wire [12:0]alpha144=13'b1101011110010;
wire [12:0]alpha160=13'b1101000110111;
wire [12:0]alpha176=13'b0001110111001;
wire [12:0]alpha192=13'b1010001000000;
wire [12:0]alpha208=13'b1001001001010;
wire [12:0]alpha224=13'b0010011010000;
wire [12:0]alpha240=13'b1011011110011;
wire [12:0]alpha256=13'b1100100100000;
wire [12:0]alpha272=13'b0010011000100;
wire [12:0]alpha288=13'b1100000010011;
wire [12:0]alpha304=13'b0101101110110;
wire [12:0]alpha320=13'b0100000110100;
wire [12:0]alpha336=13'b1011101101010;
wire [12:0]alpha352=13'b0011011001111;
wire [12:0]alpha368=13'b0111100010100;
wire [12:0]alpha384=13'b0010111011010;
wire [12:0]alpha400=13'b0100111011001;
wire [12:0]alpha416=13'b0101101111110;
wire [12:0]alpha432=13'b0111011110100;
wire [12:0]alpha448=13'b1110010110110;
wire [12:0]alpha464=13'b1111010100110;
wire [12:0]alpha480=13'b0001110001001;
wire [12:0]alpha496=13'b0001011000000;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha16),.r(r1),.out(out1));
mux mux_2(.alpha(alpha32),.r(r2),.out(out2));
mux mux_3(.alpha(alpha48),.r(r3),.out(out3));
mux mux_4(.alpha(alpha64),.r(r4),.out(out4));
mux mux_5(.alpha(alpha80),.r(r5),.out(out5));
mux mux_6(.alpha(alpha96),.r(r6),.out(out6));
mux mux_7(.alpha(alpha112),.r(r7),.out(out7));
mux mux_8(.alpha(alpha128),.r(r8),.out(out8));
mux mux_9(.alpha(alpha144),.r(r9),.out(out9));
mux mux_10(.alpha(alpha160),.r(r10),.out(out10));
mux mux_11(.alpha(alpha176),.r(r11),.out(out11));
mux mux_12(.alpha(alpha192),.r(r12),.out(out12));
mux mux_13(.alpha(alpha208),.r(r13),.out(out13));
mux mux_14(.alpha(alpha224),.r(r14),.out(out14));
mux mux_15(.alpha(alpha240),.r(r15),.out(out15));
mux mux_16(.alpha(alpha256),.r(r16),.out(out16));
mux mux_17(.alpha(alpha272),.r(r17),.out(out17));
mux mux_18(.alpha(alpha288),.r(r18),.out(out18));
mux mux_19(.alpha(alpha304),.r(r19),.out(out19));
mux mux_20(.alpha(alpha320),.r(r20),.out(out20));
mux mux_21(.alpha(alpha336),.r(r21),.out(out21));
mux mux_22(.alpha(alpha352),.r(r22),.out(out22));
mux mux_23(.alpha(alpha368),.r(r23),.out(out23));
mux mux_24(.alpha(alpha384),.r(r24),.out(out24));
mux mux_25(.alpha(alpha400),.r(r25),.out(out25));
mux mux_26(.alpha(alpha416),.r(r26),.out(out26));
mux mux_27(.alpha(alpha432),.r(r27),.out(out27));
mux mux_28(.alpha(alpha448),.r(r28),.out(out28));
mux mux_29(.alpha(alpha464),.r(r29),.out(out29));
mux mux_30(.alpha(alpha480),.r(r30),.out(out30));
mux mux_31(.alpha(alpha496),.r(r31),.out(out31));




assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha512 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   


endmodule

module syndrome_row_9(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha9=13'b0001000000000;
wire [12:0]alpha18=13'b0001101100000;
wire [12:0]alpha27=13'b0001010001010;
wire [12:0]alpha36=13'b1011110111000;
wire [12:0]alpha45=13'b0111111100101;
wire [12:0]alpha54=13'b0001100010010;
wire [12:0]alpha63=13'b0011011001011;
wire [12:0]alpha72=13'b1001100010100;
wire [12:0]alpha81=13'b1000111001011;
wire [12:0]alpha90=13'b0110000000100;
wire [12:0]alpha99=13'b0001101000000;
wire [12:0]alpha108=13'b0001010111100;
wire [12:0]alpha117=13'b1101110010101;
wire [12:0]alpha126=13'b1111010010011;
wire [12:0]alpha135=13'b1010111100011;
wire [12:0]alpha144=13'b1101011110010;
wire [12:0]alpha153=13'b1000101111001;
wire [12:0]alpha162=13'b0100011110001;
wire [12:0]alpha171=13'b0111100011001;
wire [12:0]alpha180=13'b1101110001011;
wire [12:0]alpha189=13'b0001010001000;
wire [12:0]alpha198=13'b1001110111000;
wire [12:0]alpha207=13'b0100100100101;
wire [12:0]alpha216=13'b0011000000110;
wire [12:0]alpha225=13'b0100110100000;
wire [12:0]alpha234=13'b0110011011110;
wire [12:0]alpha243=13'b1011111101111;
wire [12:0]alpha252=13'b0000110010010;
wire [12:0]alpha261=13'b0010101110011;
wire [12:0]alpha270=13'b0000100110001;
wire [12:0]alpha279=13'b0001110011101;


//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha9),.r(r1),.out(out1));
mux mux_2(.alpha(alpha18),.r(r2),.out(out2));
mux mux_3(.alpha(alpha27),.r(r3),.out(out3));
mux mux_4(.alpha(alpha36),.r(r4),.out(out4));
mux mux_5(.alpha(alpha45),.r(r5),.out(out5));
mux mux_6(.alpha(alpha54),.r(r6),.out(out6));
mux mux_7(.alpha(alpha63),.r(r7),.out(out7));
mux mux_8(.alpha(alpha72),.r(r8),.out(out8));
mux mux_9(.alpha(alpha81),.r(r9),.out(out9));
mux mux_10(.alpha(alpha90),.r(r10),.out(out10));
mux mux_11(.alpha(alpha99),.r(r11),.out(out11));
mux mux_12(.alpha(alpha108),.r(r12),.out(out12));
mux mux_13(.alpha(alpha117),.r(r13),.out(out13));
mux mux_14(.alpha(alpha126),.r(r14),.out(out14));
mux mux_15(.alpha(alpha135),.r(r15),.out(out15));
mux mux_16(.alpha(alpha144),.r(r16),.out(out16));
mux mux_17(.alpha(alpha153),.r(r17),.out(out17));
mux mux_18(.alpha(alpha162),.r(r18),.out(out18));
mux mux_19(.alpha(alpha171),.r(r19),.out(out19));
mux mux_20(.alpha(alpha180),.r(r20),.out(out20));
mux mux_21(.alpha(alpha189),.r(r21),.out(out21));
mux mux_22(.alpha(alpha198),.r(r22),.out(out22));
mux mux_23(.alpha(alpha207),.r(r23),.out(out23));
mux mux_24(.alpha(alpha216),.r(r24),.out(out24));
mux mux_25(.alpha(alpha225),.r(r25),.out(out25));
mux mux_26(.alpha(alpha234),.r(r26),.out(out26));
mux mux_27(.alpha(alpha243),.r(r27),.out(out27));
mux mux_28(.alpha(alpha252),.r(r28),.out(out28));
mux mux_29(.alpha(alpha261),.r(r29),.out(out29));
mux mux_30(.alpha(alpha270),.r(r30),.out(out30));
mux mux_31(.alpha(alpha279),.r(r31),.out(out31));





assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha288 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   



endmodule

module syndrome_row_10(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha10=13'b0010000000000;
wire [12:0]alpha20=13'b0110110000000;
wire [12:0]alpha30=13'b1010001010000;
wire [12:0]alpha40=13'b1101101110101;
wire [12:0]alpha50=13'b1110000111001;
wire [12:0]alpha60=13'b0010011011010;
wire [12:0]alpha70=13'b0010011000101;
wire [12:0]alpha80=13'b1100011101000;
wire [12:0]alpha90=13'b0110000000100;
wire [12:0]alpha100=13'b0011010000000;
wire [12:0]alpha110=13'b0101011110000;
wire [12:0]alpha120=13'b1110011110010;
wire [12:0]alpha130=13'b0100110101001;
wire [12:0]alpha140=13'b1110110100111;
wire [12:0]alpha150=13'b1111000100111;
wire [12:0]alpha160=13'b1101000110111;
wire [12:0]alpha170=13'b1011110000001;
wire [12:0]alpha180=13'b1101110001011;
wire [12:0]alpha190=13'b0010100010000;
wire [12:0]alpha200=13'b0111011010110;
wire [12:0]alpha210=13'b0100100011110;
wire [12:0]alpha220=13'b0000001001101;
wire [12:0]alpha230=13'b1010011000011;
wire [12:0]alpha240=13'b1011011110011;
wire [12:0]alpha250=13'b1000001101001;
wire [12:0]alpha260=13'b1001010110100;
wire [12:0]alpha270=13'b0000100110001;
wire [12:0]alpha280=13'b0011100111010;
wire [12:0]alpha290=13'b0000001100001;
wire [12:0]alpha300=13'b0010010110100;
wire [12:0]alpha310=13'b1110001101010;



//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha10),.r(r1),.out(out1));
mux mux_2(.alpha(alpha20),.r(r2),.out(out2));
mux mux_3(.alpha(alpha30),.r(r3),.out(out3));
mux mux_4(.alpha(alpha40),.r(r4),.out(out4));
mux mux_5(.alpha(alpha50),.r(r5),.out(out5));
mux mux_6(.alpha(alpha60),.r(r6),.out(out6));
mux mux_7(.alpha(alpha70),.r(r7),.out(out7));
mux mux_8(.alpha(alpha80),.r(r8),.out(out8));
mux mux_9(.alpha(alpha90),.r(r9),.out(out9));
mux mux_10(.alpha(alpha100),.r(r10),.out(out10));
mux mux_11(.alpha(alpha110),.r(r11),.out(out11));
mux mux_12(.alpha(alpha120),.r(r12),.out(out12));
mux mux_13(.alpha(alpha130),.r(r13),.out(out13));
mux mux_14(.alpha(alpha140),.r(r14),.out(out14));
mux mux_15(.alpha(alpha150),.r(r15),.out(out15));
mux mux_16(.alpha(alpha160),.r(r16),.out(out16));
mux mux_17(.alpha(alpha170),.r(r17),.out(out17));
mux mux_18(.alpha(alpha180),.r(r18),.out(out18));
mux mux_19(.alpha(alpha190),.r(r19),.out(out19));
mux mux_20(.alpha(alpha200),.r(r20),.out(out20));
mux mux_21(.alpha(alpha210),.r(r21),.out(out21));
mux mux_22(.alpha(alpha220),.r(r22),.out(out22));
mux mux_23(.alpha(alpha230),.r(r23),.out(out23));
mux mux_24(.alpha(alpha240),.r(r24),.out(out24));
mux mux_25(.alpha(alpha250),.r(r25),.out(out25));
mux mux_26(.alpha(alpha260),.r(r26),.out(out26));
mux mux_27(.alpha(alpha270),.r(r27),.out(out27));
mux mux_28(.alpha(alpha280),.r(r28),.out(out28));
mux mux_29(.alpha(alpha290),.r(r29),.out(out29));
mux mux_30(.alpha(alpha300),.r(r30),.out(out30));
mux mux_31(.alpha(alpha310),.r(r31),.out(out31));




assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha320 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end
	   


endmodule


module syndrome_row_11(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
				r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,
                    S,
				clk,
				reset);
//---------------------------S2--------------------------------
wire [12:0]alpha0=13'b0000000000001;
wire [12:0]alpha11=13'b0100000000000;
wire [12:0]alpha22=13'b1011000011011;
wire [12:0]alpha33=13'b0001011110111;
wire [12:0]alpha44=13'b1011111111111;
wire [12:0]alpha55=13'b0011000100100;
wire [12:0]alpha66=13'b1011001000011;
wire [12:0]alpha77=13'b0001100011101;
wire [12:0]alpha88=13'b0001100000001;
wire [12:0]alpha99=13'b0001101000000;
wire [12:0]alpha110=13'b0101011110000;
wire [12:0]alpha121=13'b1100111111111;
wire [12:0]alpha132=13'b0011010111111;
wire [12:0]alpha143=13'b0110101111001;
wire [12:0]alpha154=13'b0001011101001;
wire [12:0]alpha165=13'b0011110111110;
wire [12:0]alpha176=13'b0001110111001;
wire [12:0]alpha187=13'b0000010100010;
wire [12:0]alpha198=13'b1001110111000;
wire [12:0]alpha209=13'b0010010001111;
wire [12:0]alpha220=13'b0000001001101;
wire [12:0]alpha231=13'b0100110011101;
wire [12:0]alpha242=13'b1101111111010;
wire [12:0]alpha253=13'b0001100100100;
wire [12:0]alpha264=13'b0101110000011;
wire [12:0]alpha275=13'b0011000111011;
wire [12:0]alpha286=13'b0111000000010;
wire [12:0]alpha297=13'b1000010011011;
wire [12:0]alpha308=13'b1011100010111;
wire [12:0]alpha319=13'b0010000011010;
wire [12:0]alpha330=13'b0101101011010;
wire [12:0]alpha341=13'b0110010110001;



//-----------------------------------------------------------------------


input r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,
	 r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
	 r31,
	 clk,
	 reset;
output [12:0]S;

wire [12:0]S;

wire [12:0]out0;
wire [12:0]out1;
wire [12:0]out2;
wire [12:0]out3;
wire [12:0]out4;
wire [12:0]out5;
wire [12:0]out6;
wire [12:0]out7;
wire [12:0]out8;
wire [12:0]out9;
wire [12:0]out10;
wire [12:0]out11;
wire [12:0]out12;
wire [12:0]out13;
wire [12:0]out14;
wire [12:0]out15;
wire [12:0]out16;
wire [12:0]out17;
wire [12:0]out18;
wire [12:0]out19;
wire [12:0]out20;
wire [12:0]out21;
wire [12:0]out22;
wire [12:0]out23;
wire [12:0]out24;
wire [12:0]out25;
wire [12:0]out26;
wire [12:0]out27;
wire [12:0]out28;
wire [12:0]out29;
wire [12:0]out30;
wire [12:0]out31;

wire [12:0]sum;
wire [12:0]feedback;

reg [12:0]d=0;
	


mux mux_0(.alpha(alpha0),.r(r0),.out(out0));
mux mux_1(.alpha(alpha11),.r(r1),.out(out1));
mux mux_2(.alpha(alpha22),.r(r2),.out(out2));
mux mux_3(.alpha(alpha33),.r(r3),.out(out3));
mux mux_4(.alpha(alpha44),.r(r4),.out(out4));
mux mux_5(.alpha(alpha55),.r(r5),.out(out5));
mux mux_6(.alpha(alpha66),.r(r6),.out(out6));
mux mux_7(.alpha(alpha77),.r(r7),.out(out7));
mux mux_8(.alpha(alpha88),.r(r8),.out(out8));
mux mux_9(.alpha(alpha99),.r(r9),.out(out9));
mux mux_10(.alpha(alpha110),.r(r10),.out(out10));
mux mux_11(.alpha(alpha121),.r(r11),.out(out11));
mux mux_12(.alpha(alpha132),.r(r12),.out(out12));
mux mux_13(.alpha(alpha143),.r(r13),.out(out13));
mux mux_14(.alpha(alpha154),.r(r14),.out(out14));
mux mux_15(.alpha(alpha165),.r(r15),.out(out15));
mux mux_16(.alpha(alpha176),.r(r16),.out(out16));
mux mux_17(.alpha(alpha187),.r(r17),.out(out17));
mux mux_18(.alpha(alpha198),.r(r18),.out(out18));
mux mux_19(.alpha(alpha209),.r(r19),.out(out19));
mux mux_20(.alpha(alpha220),.r(r20),.out(out20));
mux mux_21(.alpha(alpha231),.r(r21),.out(out21));
mux mux_22(.alpha(alpha242),.r(r22),.out(out22));
mux mux_23(.alpha(alpha253),.r(r23),.out(out23));
mux mux_24(.alpha(alpha264),.r(r24),.out(out24));
mux mux_25(.alpha(alpha275),.r(r25),.out(out25));
mux mux_26(.alpha(alpha286),.r(r26),.out(out26));
mux mux_27(.alpha(alpha297),.r(r27),.out(out27));
mux mux_28(.alpha(alpha308),.r(r28),.out(out28));
mux mux_29(.alpha(alpha319),.r(r29),.out(out29));
mux mux_30(.alpha(alpha330),.r(r30),.out(out30));
mux mux_31(.alpha(alpha341),.r(r31),.out(out31));




assign sum=out0^out1^out2^out3^out4^out5^out6^out7^out8^out9^out10
             ^out11^out12^out13^out14^out15^out16^out17^out18^out19^out20
	        ^out21^out22^out23^out24^out25^out26^out27^out28^out29^out30
		   ^out31^feedback;
assign S=d;

multiplier_alpha352 mutilplier(.a(d),.c(feedback));


always@(posedge clk or negedge reset)
begin
           
		 if(!reset)
		 begin
		 d<= #1 13'b0;
		 end
		 else 
		 begin
		 d<= #1 sum;
		 end
		 
		 

end

	   


endmodule















