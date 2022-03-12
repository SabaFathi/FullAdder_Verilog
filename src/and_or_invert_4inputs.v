module and_or_invert_4inputs(a, b, c, d, y);
    input a, b, c, d;
    output y;

    supply0 ground;
    supply1 power;

    wire connect1, connect2, connect3;

    pmos #(5, 6, 7) p1(connect1, power, a);
    pmos #(5, 6, 7) p2(connect1, power, b);
    pmos #(5, 6, 7) p3(y, connect1, c);
    pmos #(5, 6, 7) p4(y, connect1, d);
    nmos #(4, 5, 6) n1(y, connect2, a);
    nmos #(4, 5, 6) n2(connect2, ground, b);
    nmos #(4, 5, 6) n3(y, connect3, c);
    nmos #(4, 5, 6) n4(connect3, ground, d);
endmodule
