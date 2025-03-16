module RegB (
    input [7:0] data_in,
    input clk,
    input BI,//incarca reg si pune la iesire datele
    output reg [7:0] data_out
);


always @(posedge clk) begin
    if(BI)begin
        data_out<=data_in;
    end
end
    
endmodule