module full_adder_modular(a, b, carry_in, sum, carry_out);
    input a, b, carry_in;
    output sum, carry_out;

    wire connect1, connect2, connect3, connect4;

    xnor_2inputs xnor1(a, b, connect1);
    not not1(connect2, connect1);
    xnor_2inputs xnor2(connect2, carry_in, connect3);
    not not2(sum, connect3);
    and_or_invert_4inputs aoi(carry_in, connect2, a, b, connect4);
    not not3(carry_out, connect4);

endmodule
