module InstrReg (
    input clk,
    input [7:0] data_in,
    output reg [3:0] data_out_bus,
    output reg [3:0] data_out_cotroller,
    input InstrIn, //citeste de pe bus 8 biti de la mem RAM
    input InstrOut//trimite pe bus bitii 3:0
);
reg [7:0] interior_data;
always @(posedge clk) begin
    if(InstrIn)begin
        interior_data<=data_in;
        assign data_out_cotroller = data_in[7:4];
    end

    if(InstrOut)begin
        data_out_bus <= interior_data[3:0];
    end
    
end
    
endmodule