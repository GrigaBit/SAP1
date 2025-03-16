module ProgramCounter (
    input clk,
    input reset,
    input CE,       // 1: numără în continuare
    input CO,       // 1: pune adresa pe BUS
    output reg [3:0] NextAdress,
    output reg [3:0] BusOut
);

always @(posedge clk) begin
    if (reset) begin
        NextAdress <= 4'b0000;
    end else if (CE) begin
        NextAdress <= NextAdress + 1;
    end 

    if (CO) begin
        BusOut <= NextAdress;
    end
end

endmodule
