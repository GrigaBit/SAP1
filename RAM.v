module RAM (
    input clk,
    input [3:0] adress,
    input [7:0] data_in,
    output wire [7:0] data_out,
    input RO,//Daca-i 1 trimitem datele pe bus
    input RW//0 pt scriere 1 pt citire
);

reg[7:0] memory[0:15];
    
always @(posedge clk) begin
    if(!RW)begin
        memory[adress]<=data_in;
    end 
end

assign data_out=(RW&&RO)?memory[adress]:8'bz;//daca data_out este reg nu poate primi valori z, asa ca il fac wire

endmodule