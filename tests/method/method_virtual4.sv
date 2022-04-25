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


//------------------------------------------------------------------------------
// Child module instances

C c_mod
(

);

endmodule



//==============================================================================
//
// Module: C (test_virtual4.cpp:72:5)
//
module C // "b_mod.c_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: virt_call (test_virtual4.cpp:47:5) 

// Process-local variables
logic signed [31:0] e1_n;
logic signed [31:0] e2_n;

always_comb 
begin : virt_call     // test_virtual4.cpp:47:5
    integer i;
    // Call g() begin
    e1_n++;
    // Call g() end
    // Call d() begin
    i = 2;
    // Call g() begin
    e2_n = e2_n + i;
    // Call g() end
    // Call d() end
end

endmodule


