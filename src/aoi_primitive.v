module aoi_primitive(a, b, c, d, y);
    input a, b, c, d;
    output y;

    wire connect1, connect2, connect3;

    and #(3) and0(connect1, a, b);
    and #(3) and1(connect2, c, d);
    or  #(3) or0(connect3, connect1, connect2);
    not #(3) not0(y, connect3);
endmodule
