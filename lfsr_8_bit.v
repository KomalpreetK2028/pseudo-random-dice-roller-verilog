module lfsr_8_bit(output reg [7:0] q,input clk,areset);
always @(posedge clk or posedge areset)
begin
    if (areset)
    q <= 8'h01;
    else begin
    q[7] <= q[0];
    q[6] <= q[7];
    q[5] <= q[6]^q[0];
    q[4] <= q[5]^q[0];
    q[3] <= q[4]^q[0];
    q[2] <= q[3];
    q[1] <= q[2];
    q[0] <= q[1];   
 end
end
endmodule    