module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    integer i;
    reg [7:0]a;
    always @(posedge clk)
        begin
            for(i=0;i<8;i=i+1)
                begin
                    if(a[i] !=in[i]&&in[i]==1)
                        begin
                            pedge[i]=1;
                        end
                    else 
                        begin
                            pedge[i]=0;
                        end
                    a[i]=in[i];
                end
        end
endmodule
 
