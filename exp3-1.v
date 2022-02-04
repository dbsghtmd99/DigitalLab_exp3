module test;
    reg W, X, Y, Z;
    wire V;
    ex2_1 cwd(W, X, Y, Z, V);
    initial begin
        //1000
        W = 1'b1; X = 1'b0; Y = 1'b0; Z = 1'b0;
        #10
        //1001
        W = 1'b1; X = 1'b0; Y = 1'b0; Z = 1'b1;
        #10
        //1010
        W = 1'b1; X = 1'b0; Y = 1'b1; Z = 1'b0;
        #10
        //1011
        W = 1'b1; X = 1'b0; Y = 1'b1; Z = 1'b1;
        #10
        //1100
        W = 1'b1; X = 1'b1; Y = 1'b0; Z = 1'b0;
        #10
        //1101
        W = 1'b1; X = 1'b1; Y = 1'b0; Z = 1'b1;
        #10
        //1110
        W = 1'b1; X = 1'b1; Y = 1'b1; Z = 1'b0;
        #10
        //1111
        W = 1'b1; X = 1'b1; Y = 1'b1; Z = 1'b1;
        #10
        //0000
        W = 1'b0; X = 1'b0; Y = 1'b0; Z = 1'b0;
        #10
        //0001
        W = 1'b0; X = 1'b0; Y = 1'b0; Z = 1'b1;
        #10
        //0010
        W = 1'b0; X = 1'b0; Y = 1'b1; Z = 1'b0;
        #10
        //0011
        W = 1'b0; X = 1'b0; Y = 1'b1; Z = 1'b1;
        #10
        //0100
        W = 1'b0; X = 1'b1; Y = 1'b0; Z = 1'b0;
        #10
        //0101
        W = 1'b0; X = 1'b1; Y = 1'b0; Z = 1'b1;
        #10
        //0110
        W = 1'b0; X = 1'b1; Y = 1'b1; Z = 1'b0;
        #10
        //0111
        W = 1'b0; X = 1'b1; Y = 1'b1; Z = 1'b1;
        #10
        $finish;
    end
    
endmodule // test

module ex2_1(W, X, Y, Z, V);
    input W, X, Y, Z;
    output V;
    assign V = (~((~X&~Y)|Z))|Z|(X&Y)|(W&Z)|X;

endmodule // ex2_1
