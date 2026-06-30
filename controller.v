module controller(
input clk,areset,roll,
input [7:0] random,
output reg [2:0] dice);
always @(posedge clk or posedge areset)
begin
    if (areset)
    dice <= 3'b000;//blank
    else if (roll)
    begin
        if(random[2:0] == 3'b000 || random[2:0] == 3'b111)begin
        end
        else dice <= random[2:0];

    end
    end
endmodule