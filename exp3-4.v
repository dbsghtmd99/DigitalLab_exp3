module test2;
    reg X, Y, Z;
    wire F;
    ex3_2 cwd(X, Y, Z, F);
    initial begin
        //000
        X = 1'b0; Y = 1'b0; Z = 1'b0;
        #10
        //001
        X = 1'b0; Y = 1'b0; Z = 1'b1;
        #10
        //010
        X = 1'b0; Y = 1'b1; Z = 1'b0;
        #10
        //011
        X = 1'b0; Y = 1'b1; Z = 1'b1;
        #10
        //100
        X = 1'b1; Y = 1'b0; Z = 1'b0;
        #10
        //101
        X = 1'b1; Y = 1'b0; Z = 1'b1;
        #10
        //110
        X = 1'b1; Y = 1'b1; Z = 1'b0;
        #10
        //111
        X = 1'b1; Y = 1'b1; Z = 1'b1;
        #10
        $finish;
    end
    
endmodule // test

module ex3_2(X, Y, Z, F);
    input X, Y, Z;
    output F;
    assign F = X|Y|Z;

endmodule // ex3_2
