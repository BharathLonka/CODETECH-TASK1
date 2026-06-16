module home_automation(
    input clk,
    input motion_sensor,
    input temp_sensor,
    input wifi_command,
    output reg light,
    output reg fan
);

always @(posedge clk)
begin
    // Light Control
    if(motion_sensor || wifi_command)
        light <= 1'b1;
    else
        light <= 1'b0;

    // Fan Control
    if(temp_sensor)
        fan <= 1'b1;
    else
        fan <= 1'b0;
end

endmodule