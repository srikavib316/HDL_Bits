module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0]a;
    always @(posedge clk)
        begin
            a<=in;
            if(reset)
                 out<=0;
            else 
                begin
                    out<=out|(a&~in);
                end
        end
endmodule
