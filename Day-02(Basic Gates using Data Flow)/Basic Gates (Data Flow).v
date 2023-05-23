module Basic_gates(
    input a,
    input b,
    output [0:6]out  
    );
    assign out[0]=~a;
    assign out[1]=a&b;
    assign out[2]=a|b;
    assign out[3]=~(a &b);
    assign out[4]=~(a|b);
    assign out[5]=a^b;
    assign out[6]=~(a^b);
    endmodule
	