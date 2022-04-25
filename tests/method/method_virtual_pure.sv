//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.16
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// Variables generated for SystemC signals
logic clk;
logic rst;


//------------------------------------------------------------------------------
// Child module instances

C c_mod
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: C (test_virtual_pure.cpp:80:5)
//
module C // "b_mod.c_mod"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Clocked THREAD: virt_call (test_virtual_pure.cpp:43:5) 

// Thread-local variables
logic signed [31:0] m;

// Next-state combinational logic
always_comb begin : virt_call_comb     // test_virtual_pure.cpp:43:5
    virt_call_func;
end
function void virt_call_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : virt_call_ff
    if ( ~rst ) begin
        integer i;
        integer m;
        // Call d() begin
        m = 1;
        // Call d() end
        i = 12;
        // Call f() begin
        m = i;
        // Call f() end
    end
    else begin
    end
end

endmodule


