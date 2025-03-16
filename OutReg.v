module OutReg (
    input clk,
    input [7:0] data_in,
    output [7:0] data_out,
    input En
);

always @(posedge clk) begin
    if(En)begin
        data_out<=data_in;
    else
        data_out<=8'b0;
    end
end
    
endmodule