module top_module(
    input a,
    input b,
    input c,
    input d, 
    output out  
);
    assign out=(~a&b&~c&~d)|(~c&~d&a&~b)|(~c&d&~a&~b)|(~c&d&a&b)|(c&d&~a&b)|(c&d&a&~b)|(c&~b&~a&~d)|(c&~d&a&b);

endmodule
