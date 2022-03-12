module nor_primitive(a, b, y);
    input a, b;
    output y;

    nor #(10) instance0(y, a, b);
endmodule
