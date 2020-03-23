`timescale 1ns / 1ps
module CPU_FSM(input [15:0] ins,
               input reset,
               clk,
               input ALU_zr,
               ALU_ng,
               output [6:0] ctrlWord,
               output writeM);
reg [2:0] state;

reg loadPC ;
wire A_or_M, loadD, wM, PC_rst, PC_inc, A_or_C, loadA, dest_contains_A;

parameter STATE_RESET      = 0;
parameter STATE_FETCH      = 1;
parameter STATE_DECODE     = 2;
parameter STATE_A_INS      = 3;
parameter STATE_C_INS_COMP = 4;

initial begin
    state = STATE_RESET;
end

always @(posedge clk) begin
    if (reset)   state = STATE_RESET;
    else begin
        case (state)
            STATE_RESET: begin
                /*
                Initialize PC and state variables
                */
                state    = STATE_FETCH;
            end
            
            STATE_FETCH: begin
                state  = STATE_DECODE;
            end
            
            STATE_DECODE: begin
                if (ins[15]) 		// C ins
                state = STATE_C_INS_COMP;
                else  						// A ins
                state = STATE_A_INS;
            end
            
            STATE_A_INS: begin  			//execute A ins
                state    = STATE_FETCH;
            end
        
            STATE_C_INS_COMP: begin  			//execute C ins (computation)
                state    = STATE_FETCH;
            end

            default: state = STATE_RESET;

        endcase
    end
end

assign PC_inc = (state==STATE_A_INS || state==STATE_C_INS_COMP);

assign A_or_C = (state==STATE_C_INS_COMP && ins[5:3] > 3'b011);

assign A_or_M = ins[12];

assign dest_contains_A = (state==STATE_C_INS_COMP && ins[5:3] > 3'b011);
assign loadA=(state==STATE_A_INS)?1'b1:dest_contains_A;

assign loadD=(state==STATE_C_INS_COMP && (ins[5:3]==3'b010 || ins[5:3]==3'b011 || ins[5:3]==3'b110 || ins[5:3]==3'b111));

assign wM = (state==STATE_C_INS_COMP && ins[3]);
assign PC_rst=(state==STATE_RESET);

//procedural implementation of signal loadPC
always @(ins[2:0],ALU_zr,ALU_ng,state) begin
    // $display("{%b} jump detected, in state %d \n",{ins[2:0],ALU_zr,ALU_ng},state);
    case({ins[2:0],ALU_zr,ALU_ng})
        5'b00100, //JGT
        5'b01010, //JEQ
        5'b01100,5'b01110, //JGE
        5'b10001,    //JLT
        5'b10100,5'b10101, //JNE
        5'b11001,5'b11010, //JLE
        5'b11100,5'b11101,5'b11110,5'b11111 //JMP
        : begin
            loadPC <= (state==STATE_C_INS_COMP);
            // $display("{%b} jump detected, in state %d \n",{ins[2:0],ALU_zr,ALU_ng},state);
            end
        default : loadPC <= 0;
    endcase
end
assign ctrlWord = {A_or_C, A_or_M, loadA, loadD, PC_inc, loadPC, PC_rst};
assign writeM   = wM;
endmodule

