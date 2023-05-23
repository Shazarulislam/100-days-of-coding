//Gate Level Modelling
module basic_gates(input a,input b,output [0:6]y);
    not(y[0],a);           //Not gate
    and(y[1], a,b);      //And gate
    or(y[2],a,b);        //Or gate
    nand(y[3],a,b);      //Nand gate
    nor(y[4],a,b);       //Nor gate
    xor(y[5],a,b);       //Ex-or gate
    xnor(y[6],a,b);      //Ex-nor gate   //y = 1001101
endmodule

//test bench............................//
module basic_gates_tb;
//DUT Inputs
reg a;
reg b;
//DUT Outputs
 wire [0:6]y;
// Module instantiation
basic_gates uut (a,b,y);

integer i;
// Initialize Inputs
initial begin
for(i =0; i <4 ; i= i+1)
#10 {a,b}=i;
end
initial
$monitor("a= %0b | b = %0b |y = %0b",a,b,y);
endmodule
