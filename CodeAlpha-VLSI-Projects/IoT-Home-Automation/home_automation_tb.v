`timescale 1ns/1ps

module home_automation_tb;

reg clk;
reg motion_sensor;
reg temp_sensor;
reg wifi_command;

wire light;
wire fan;

home_automation uut(
    .clk(clk),
    .motion_sensor(motion_sensor),
    .temp_sensor(temp_sensor),
    .wifi_command(wifi_command),
    .light(light),
    .fan(fan)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    motion_sensor = 0;
    temp_sensor = 0;
    wifi_command = 0;

    // Motion detected
    #20 motion_sensor = 1;
    #20 motion_sensor = 0;

    // High temperature
    #20 temp_sensor = 1;
    #20 temp_sensor = 0;

    // Remote Wi-Fi command
    #20 wifi_command = 1;
    #20 wifi_command = 0;

    #100 $finish;
end

initial
begin
    $monitor("Time=%0t Motion=%b Temp=%b WiFi=%b Light=%b Fan=%b",
             $time, motion_sensor, temp_sensor,
             wifi_command, light, fan);
end

endmodule