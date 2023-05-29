`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module up_down_counter ( input clk, mode, clken,
output [3:0] dout
);

reg [3:0] temp =0;

always@(posedge clk) begin
if (clken == 1'b1)begin
    if(mode == 1'b1)
        temp <= temp + 1;
    else
    temp <= temp - 1;
    end
    else 
    temp <=4'bxxxx;
end
endmodule
