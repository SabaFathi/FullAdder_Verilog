module xnor_2inputs(a, b, y);
    input a, b;
    output y;

    supply0 ground;
    supply1 power;

    wire connect1, connect2, connect3;
    wire nota, notb;

    assign nota = !a;
    assign notb = !b;

    pmos #(5, 6, 7) p1(connect1, power, a);
    pmos #(5, 6, 7) p2(connect1, power, notb);
    pmos #(5, 6, 7) p3(y, connect1, nota);
    pmos #(5, 6, 7) p4(y, connect1, b);
    nmos #(4, 5, 6) n1(y, connect2, a);
    nmos #(4, 5, 6) n2(connect2, ground, notb);
    nmos #(4, 5, 6) n3(y, connect3, nota);
    nmos #(4, 5, 6) n4(connect3, ground, b);
endmodule
