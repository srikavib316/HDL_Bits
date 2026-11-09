module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] a;
    always @(posedge clk)
        begin
            a<=in;
            anyedge<=in^a;
        end 

endmodule
