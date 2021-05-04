
# For sequential circuits
create_clock -add -name sys_clk_pin -period 50.00 -waveform {0 5} [get_ports CLK]

# For combinational circuits
set_max_delay 50 -from [all_inputs] -to [all_outputs]
 