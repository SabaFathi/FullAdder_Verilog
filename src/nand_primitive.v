module nand_primitive(a, b, y);
    input a, b;
    output y;

    nand #(10) instance0(y, a, b);
endmodule
