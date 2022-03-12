module full_adder_assign(a, b, carry_in, sum, carry_out);
    input a, b, carry_in;
    output sum, carry_out;

    assign #(24) {carry_out, sum} = a + b + carry_in;
endmodule
