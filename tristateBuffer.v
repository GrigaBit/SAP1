module tristateBuffer (
    input  [7:0] data_in,
    output [7:0] data_out,
    input En
);
    assign data_out = En ? data_in : 8'bz;
endmodule
