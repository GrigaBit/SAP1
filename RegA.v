module RegA (
    input AI,//incarca reg
    input AO,//trm datele pe bus
    input clk,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg [7:0] data_out_bus
);

reg [7:0] intern_data;//reg intern

always @(posedge clk) begin
    if (AI) begin
        intern_data <= data_in;
        data_out <= data_in; 
    end
end

always @(*) begin
    if (AO) 
        data_out_bus = intern_data;
    else 
        data_out_bus = 8'bz;  
end

endmodule
