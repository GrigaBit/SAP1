module RNSwitch (
    input run_prog_select,
    input [3:0] MAR,// Memory adress register
    input [3:0] InputUnit,
    output reg [3:0] RAM_Adress//reg pt ca este folosit in always
);

always @(*) begin
    if (run_prog_select)begin
        RAM_Adress=MAR;
    end else begin 
        RAM_Adress=InputUnit;
    end
end
    
endmodule