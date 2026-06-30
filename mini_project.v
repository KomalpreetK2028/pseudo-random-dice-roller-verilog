module pseudo_random_dice_roller_8_bit(
input clk,
input areset,
input roll,
output [6:0] seg
);
wire [7:0] random;
wire [2:0] dice;
lfsr_8_bit inst1 (random,clk,areset);
controller inst2 (clk,areset,roll,random,dice);
seven_segment_display inst3(dice,seg);
endmodule