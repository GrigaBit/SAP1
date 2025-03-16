module inputUnit (
    input clk,
    input RWs,//selecteaza modul dintre write si read
    input [3:0] ADRSs,//adresa la care o sa fie scris 
    inout [7:0] DATAs;
);

reg [7:0] data;
assign DATAs=(RWs)?data:8'bz;

always @(posedge clk) begin
    if(RWs)begin
        data<=DATAs
    end
end
    
endmodule