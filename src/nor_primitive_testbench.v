module nor_primitive_testbench;
    reg a, b;
    wire out;

    nor_primitive nor_instance0(a, b, out);

    initial begin
            a=1'b0; b=1'b0; //expected out=1'b1
        #50 a=1'b0; b=1'b1; //expected out=1'b0
        #50 a=1'b1; b=1'b0; //expected out=1'b0
        #50 a=1'b1; b=1'b1; //expected out=1'b0
    end

endmodule
