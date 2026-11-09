module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [3:0] cout_temp;
    
    bcd_fadd u_bcd_fadd(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(cout_temp[0]),
        .sum(sum[3:0])
    );

    generate
    	genvar i;
        for(i=1; i<4; i=i+1) 
    	begin : gen_bcd
    		bcd_fadd u_bcd_fadd(
                .a(a[4*i +: 4]),
                .b(b[4*i +: 4]),
    			.cin(cout_temp[i-1]),
    			.cout(cout_temp[i]),
                .sum(sum[4*i +: 4])
    			);	
    	end
    endgenerate

    assign cout = cout_temp[3];
endmodule
    
