module full_adder_modular_testbench;
    reg a, b, carry_in;
    wire sum, carry_out;

    full_adder_modular fa0(a, b, carry_in, sum, carry_out);

    initial begin
             a=1'b0; b=1'b0; carry_in=1'b0; //expected sum=1'b'0 & carry_out=1'b0
        #100 a=1'b0; b=1'b1; carry_in=1'b0; //expected sum=1'b'1 & carry_out=1'b0
        #100 a=1'b1; b=1'b0; carry_in=1'b0; //expected sum=1'b'1 & carry_out=1'b0
        #100 a=1'b1; b=1'b1; carry_in=1'b0; //expected sum=1'b'0 & carry_out=1'b1

        #100 a=1'b0; b=1'b0; carry_in=1'b1; //expected sum=1'b'1 & carry_out=1'b0
        #100 a=1'b0; b=1'b1; carry_in=1'b1; //expected sum=1'b'0 & carry_out=1'b1
        #100 a=1'b1; b=1'b0; carry_in=1'b1; //expected sum=1'b'0 & carry_out=1'b1
        #100 a=1'b1; b=1'b1; carry_in=1'b1; //expected sum=1'b'1 & carry_out=1'b1
    end

endmodule
