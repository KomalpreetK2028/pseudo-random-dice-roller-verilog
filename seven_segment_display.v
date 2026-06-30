module seven_segment_display(input [2:0] dice,output reg [6:0] seg);
//seg = {a,b,c,d,e,f,g}
always @(*)
begin
    seg = 7'd0;
    case (dice)
    3'b001: seg = 7'b0110000;
    3'b010: seg = 7'b1101101;
    3'b011: seg = 7'b1111001;
    3'b100: seg = 7'b0110011;
    3'b101: seg = 7'b1011011;
    3'b110: seg = 7'b1011111;
    default : seg = 7'd0;
    endcase
end
endmodule