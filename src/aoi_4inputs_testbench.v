module aoi_4inputs_testbench;
    reg a, b, c, d;
    wire out;

    and_or_invert_4inputs aoi_instance0(a, b, c, d, out);

    initial begin
            a=1'b0; b=1'b0; c=1'b0; d=1'b0; //expected out=1'b1
        #50 a=1'b0; b=1'b0; c=1'b0; d=1'b1; //expected out=1'b1
        #50 a=1'b0; b=1'b0; c=1'b1; d=1'b0; //expected out=1'b1
        #50 a=1'b0; b=1'b0; c=1'b1; d=1'b1; //expected out=1'b0

        #50 a=1'b0; b=1'b1; c=1'b0; d=1'b0; //expected out=1'b1
        #50 a=1'b0; b=1'b1; c=1'b0; d=1'b1; //expected out=1'b1
        #50 a=1'b0; b=1'b1; c=1'b1; d=1'b0; //expected out=1'b1
        #50 a=1'b0; b=1'b1; c=1'b1; d=1'b1; //expected out=1'b0

        #50 a=1'b1; b=1'b0; c=1'b0; d=1'b0; //expected out=1'b1
        #50 a=1'b1; b=1'b0; c=1'b0; d=1'b1; //expected out=1'b1
        #50 a=1'b1; b=1'b0; c=1'b1; d=1'b0; //expected out=1'b1
        #50 a=1'b1; b=1'b0; c=1'b1; d=1'b1; //expected out=1'b0

        #50 a=1'b1; b=1'b1; c=1'b0; d=1'b0; //expected out=1'b0
        #50 a=1'b1; b=1'b1; c=1'b0; d=1'b1; //expected out=1'b0
        #50 a=1'b1; b=1'b1; c=1'b1; d=1'b0; //expected out=1'b0
        #50 a=1'b1; b=1'b1; c=1'b1; d=1'b1; //expected out=1'b0
    end

endmodule
