module mini_project_tb;
reg clk,areset,roll;
wire [6:0] seg;

pseudo_random_dice_roller_8_bit uut(.clk(clk),.areset(areset),.roll(roll),.seg(seg));
always #5 clk = ~clk;
initial begin
    clk = 1'b0;
    areset = 1'b1;
    roll = 1'b0;
    #10 areset = 1'b0;
  #200 roll = 1'b1;
    #10 roll = 1'b0;
    #50 roll = 1'b1;
    #10 roll = 1'b0;
    #50 roll = 1'b1;
    #10 roll = 1'b0;
    #50 roll = 1'b1;
    #10 roll = 1'b0;
    #50 roll = 1'b1;
    #10 roll = 1'b0;
    #50 roll = 1'b1;
    #10 roll = 1'b0;
end
initial #570 $finish;
initial $monitor("t=%g reset=%b roll=%b random=%b dice=%b seg=%b",$time,areset,roll,uut.random,uut.dice,seg);
initial begin
   $dumpfile("dump.vcd"); 
   $dumpvars(0,mini_project_tb);
end
endmodule