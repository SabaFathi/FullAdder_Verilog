module xnor_primitive(a, b, y);
    input a, b;
    output y;

    xnor #(10) instance0(y, a, b);
endmodule
