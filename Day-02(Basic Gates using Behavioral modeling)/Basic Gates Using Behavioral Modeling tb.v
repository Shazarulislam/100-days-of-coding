`timescale 1ns/1ns 
module Basic_gates_tb;
// Inputs
reg a;
reg b;
// Outputs
 wire [0:6]out;
// Instantiate the Unit Under Test (UUT)
Basic_gates f(a,b,out);
integer i;
initial begin
	for(i=0;i <4 ; i= i+1)begin
	#10 {a,b}=i;
	end
end
initial
$monitor("a= %0b | b = %0b |out_not = %0b | out_and= %0b |out_or = %0b | out_nand= %0b |out_nor = %0b | out_xor= %0b | out_xnor=%0b",a,b,out[0],out[1],out[2],out[3],out[4],out[5],out[6]);
endmodule