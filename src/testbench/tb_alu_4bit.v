`timescale 1ns/1ps
module tb_alu_4bit;
    reg  [3:0] A, B;
    reg  [2:0] opcode;
    wire [4:0] Result;
    wire       Zero, Carry;
    integer    pass, fail;

    alu_4bit uut(.A(A),.B(B),.opcode(opcode),
                 .Result(Result),.Zero(Zero),
                 .Carry(Carry));

    initial begin
        pass=0; fail=0;
        A=4'h3;B=4'h4;opcode=3'b000;#10;
        if(Result==5'h07)pass=pass+1;else fail=fail+1;
        A=4'h8;B=4'h3;opcode=3'b001;#10;
        if(Result==5'h05)pass=pass+1;else fail=fail+1;
        A=4'hF;B=4'hA;opcode=3'b010;#10;
        if(Result==5'h0A)pass=pass+1;else fail=fail+1;
        A=4'hA;B=4'h5;opcode=3'b011;#10;
        if(Result==5'h0F)pass=pass+1;else fail=fail+1;
        A=4'hF;B=4'hF;opcode=3'b100;#10;
        if(Result==5'h00)pass=pass+1;else fail=fail+1;
        A=4'h8;B=4'h0;opcode=3'b101;#10;
        if(Result==5'h04)pass=pass+1;else fail=fail+1;
        $display("%0d PASSED | %0d FAILED",pass,fail);
        $finish;
    end
endmodule
