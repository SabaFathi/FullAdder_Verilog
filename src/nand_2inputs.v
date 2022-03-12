module nand_2inputs(a, b, y);
    input a, b;
    output y;

    supply0 ground;
    supply1 power;

    wire connect;

    pmos #(5, 6, 7) p1(y, power, a);
    pmos #(5, 6, 7) p2(y, power, b);
    nmos #(4, 5, 6) n1(y, connect, a);
    nmos #(4, 5, 6) n2(connect, ground, b);
endmodule
