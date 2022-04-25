//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst_sig;
logic rst_sig_p;

//------------------------------------------------------------------------------
// Clocked THREAD: simple_rst (test_cthread_simple_reset.cpp:32:5) 

// Next-state combinational logic
always_comb begin : simple_rst_comb     // test_cthread_simple_reset.cpp:32:5
    simple_rst_func;
end
function void simple_rst_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst_sig) 
begin : simple_rst_ff
    if ( ~rst_sig ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_rst_p (test_cthread_simple_reset.cpp:40:5) 

// Next-state combinational logic
always_comb begin : simple_rst_p_comb     // test_cthread_simple_reset.cpp:40:5
    simple_rst_p_func;
end
function void simple_rst_p_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst_sig_p) 
begin : simple_rst_p_ff
    if ( ~rst_sig_p ) begin
    end
    else begin
    end
end

endmodule


