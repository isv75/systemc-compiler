//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.16
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: dut ()
//
module dut // "dut_inst"
(
    input logic clk,
    input logic en,
    input logic r_nw,
    input logic [1:0] addr,
    input logic [31:0] wdata,
    output logic [31:0] rdata
);

// Variables generated for SystemC signals
logic [31:0] reg_file[4];
logic chr[3];
logic chp[3][2];

//------------------------------------------------------------------------------
// Method process: write_method_ff (test_sig_array_access.cpp:40:5) 

always_comb 
begin : write_method_ff     // test_sig_array_access.cpp:40:5
    if (en && !r_nw)
    begin
        reg_file[addr] = wdata;
    end
end

//------------------------------------------------------------------------------
// Method process: read_method_comb (test_sig_array_access.cpp:45:5) 

always_comb 
begin : read_method_comb     // test_sig_array_access.cpp:45:5
    rdata = 0;
    if (en && r_nw)
    begin
        rdata = reg_file[addr];
    end
end

//------------------------------------------------------------------------------
// Method process: chan_arr_func_param (test_sig_array_access.cpp:59:5) 

always_comb 
begin : chan_arr_func_param     // test_sig_array_access.cpp:59:5
    logic par;
    logic c;
    par = chr[1];
    // Call chan_func() begin
    c = par;
    // Call chan_func() end
end

//------------------------------------------------------------------------------
// Method process: chan_arr_func_param2 (test_sig_array_access.cpp:67:5) 

always_comb 
begin : chan_arr_func_param2     // test_sig_array_access.cpp:67:5
    logic par;
    logic c;
    par = chp[2][1];
    // Call chan_func() begin
    c = par;
    // Call chan_func() end
end

endmodule


