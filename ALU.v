module ALU (
    input [7:0] RegA,
    input [7:0] RegB,
    output reg [7:0] ALUResults,
    input [1:0] OpSelect,  //00 add 01 sub 10 or 11 and
    input ALUOut,
    output reg [7:0] data_out
);

always @(*) begin
    case (OpSelect)
        2'b00:ALUResults=(RegA + RegB);
        
        2'B01:ALUResults=(RegA - RegB);

        2'b10:ALUResults=(RegA | RegB);

        2'b11:ALUResults=(RegA & RegB);
        
        default:
        ALUResults=8'b0; 
    endcase
end

always @(*) begin
    if (ALUOut) begin
        data_out=ALUResults;
    else
        data_out=8'b0;
    end
end
    
endmodule