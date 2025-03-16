module MemAdrReg (
    input clk,
    input MI,
    input [3:0] dataIn,
    output reg [3:0] MARData;//!!mereu cand urm sa il folosesti in always FA-L REG
);
always @(posedge clk) begin
    if(MI) begin
        MARData<=dataIn;
    else
        MARData<=MARData;
    end
end
    
endmodule