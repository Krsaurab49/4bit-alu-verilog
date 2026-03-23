module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opcode,
    output reg [4:0] Result,
    output reg       Zero,
    output reg       Carry
);
    localparam ADD=3'b000, SUB=3'b001,
               AND=3'b010, OR =3'b011,
               XOR=3'b100, SHIFT=3'b101;

    always @(*) begin
        Carry = 0;
        case (opcode)
            ADD:  {Carry,Result[3:0]} = A + B;
            SUB:  {Carry,Result[3:0]} = A - B;
            AND:  Result = {1'b0, A & B};
            OR:   Result = {1'b0, A | B};
            XOR:  Result = {1'b0, A ^ B};
            SHIFT:Result = {1'b0, A >> 1};
            default: Result = 5'b0;
        endcase
        Zero = (Result[3:0] == 4'b0);
    end
endmodule
