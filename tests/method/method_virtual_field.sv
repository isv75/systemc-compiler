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

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_virtual_field.cpp:99:5)
//
module A // "b_mod.a_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: proc (test_virtual_field.cpp:73:5) 

// Process-local variables
logic signed [31:0] n;

always_comb 
begin : proc     // test_virtual_field.cpp:73:5
    logic [1:0] n_1;
    integer j;
    // Call g() begin
    n_1 = 1;
    // Call g() end
    n = 1;
    j = 1;    // Call of g()
end

//------------------------------------------------------------------------------
// Method process: proc_d (test_virtual_field.cpp:80:5) 

always_comb 
begin : proc_d     // test_virtual_field.cpp:80:5
    logic [1:0] n_1;
    logic [3:0] k;
    // Call g() begin
    n_1 = 1;
    // Call g() end
    // Call f() begin
    k = 2;
    // Call f() end
end

//------------------------------------------------------------------------------
// Method process: proc_e (test_virtual_field.cpp:85:5) 

// Process-local variables
logic signed [31:0] e_k0;
logic [31:0] e_k;

always_comb 
begin : proc_e     // test_virtual_field.cpp:85:5
    logic [3:0] k;
    logic [3:0] k_1;
    logic [1:0] n_1;
    e_k0 = 0;
    e_k = 1;
    // Call f() begin
    k = 3;
    // Call f() end
    // Call f() begin
    k_1 = 2;
    // Call f() end
    // Call g() begin
    n_1 = 1;
    // Call g() end
end

endmodule


