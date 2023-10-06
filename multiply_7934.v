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
