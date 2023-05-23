module Basic_gates(
    input a,
    input b,
    output reg[0:6]out  //for Behavioral Modelling the output is declared with reg
    );
    always @ (a or b)
    begin
    out[0]=~a;        //Not gate
    out[1]=a&b;       //And gate
    out[2]=a|b;       //Or gate
    out[3]=~(a &b);   //Nand gate    
    out[4]=~(a|b);    //Nor gate
    out[5]=a^b;       //Ex-or gate
    out[6]=~(a^b);    //Ex-nor gate
    end
endmodule