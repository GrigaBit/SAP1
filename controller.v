module ControllerSequencer (
    input wire clk,
    input wire reset,
    input wire [3:0] opcode,       
    output reg [1:0] OpSelect,     //op. ALU
    output reg ALUOut,             
    output reg [7:0] control_signals  
);

    typedef enum reg [1:0] {
        FETCH,
        DECODE,
        EXECUTE,
        STORE
    } state_type;

    state_type state;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= FETCH;
            control_signals <= 8'b00000000;
            OpSelect <= 2'b00;//implicit alu o sa faca adunare
            ALUOut <= 0;        Dezactivează ieșirea ALU
        end else begin
            case (state)
                FETCH: begin
                    control_signals <= 8'b00000001;  //fetch
                    state <= DECODE;
                end
                DECODE: begin
                    control_signals <= 8'b00000010; //decode
                    state <= EXECUTE;
                end
                EXECUTE: begin
                    case (opcode)
                        4'b0001: begin
                            OpSelect <= 2'b00;//add
                            ALUOut <= 1;
                        end
                        4'b0010: begin
                            OpSelect <= 2'b01;//sub
                            ALUOut <= 1;  
                        end
                        4'b0011: begin
                            OpSelect <= 2'b10;//or
                            ALUOut <= 1;       
                        end
                        4'b0100: begin
                            OpSelect <= 2'b11;//and
                            ALUOut <= 1;      
                        end
                        default: begin
                            OpSelect <= 2'b00;  
                            ALUOut <= 0;       
                        end
                    endcase
                    state <= STORE;
                end
                STORE: begin
                    control_signals <= 8'b00010000;//store
                    ALUOut <= 0;               
                    state <= FETCH;
                end
            endcase
        end
    end

endmodule