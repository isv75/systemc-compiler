//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
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
logic a;
logic b;
logic clk;
logic nrst;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .nrst(nrst),
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_const_prop.cpp:171:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst,
    input logic a,
    output logic b
);

// Variables generated for SystemC signals
logic [1:0] rr_first_indx;

// Local parameters generated for C++ constants
localparam logic [31:0] PORT_NUM = 2;
localparam logic [31:0] FIFO_LENGTH = 2;
localparam logic [63:0] p = 0;

//------------------------------------------------------------------------------
// Clocked THREAD: pointer_compare (test_cthread_const_prop.cpp:49:5) 

// Next-state combinational logic
always_comb begin : pointer_compare_comb     // test_cthread_const_prop.cpp:49:5
    pointer_compare_func;
end
function void pointer_compare_func;
    logic b1;
    integer i;
    logic b2;
    b1 = 1;
    i = 1;
    b2 = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : pointer_compare_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: pointer_compare2 (test_cthread_const_prop.cpp:65:5) 

// Next-state combinational logic
always_comb begin : pointer_compare2_comb     // test_cthread_const_prop.cpp:65:5
    pointer_compare2_func;
end
function void pointer_compare2_func;
    logic b1;
    integer i;
    logic b2;
    b1 = 1;
    i = 1;
    b2 = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : pointer_compare2_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fifoSyncProc (test_cthread_const_prop.cpp:87:5) 

// Thread-local variables
logic [1:0] popIndx;
logic [1:0] popIndx_next;

// Next-state combinational logic
always_comb begin : fifoSyncProc_comb     // test_cthread_const_prop.cpp:87:5
    fifoSyncProc_func;
end
function void fifoSyncProc_func;
    popIndx_next = popIndx;
    if (a)
    begin
        if (popIndx_next == FIFO_LENGTH - 1)
        begin
            popIndx_next = 0;
        end else begin
            popIndx_next = popIndx_next + 1;
        end
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fifoSyncProc_ff
    if ( ~nrst ) begin
        popIndx <= 0;
    end
    else begin
        popIndx <= popIndx_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: priorityProc (test_cthread_const_prop.cpp:109:5) 

// Thread-local variables
logic [1:0] rr_first_indx_next;

// Next-state combinational logic
always_comb begin : priorityProc_comb     // test_cthread_const_prop.cpp:109:5
    priorityProc_func;
end
function void priorityProc_func;
    rr_first_indx_next = rr_first_indx;
    rr_first_indx_next = (rr_first_indx == 1) ? 2 : ((rr_first_indx == PORT_NUM - 1) ? 0 : rr_first_indx + 1);
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : priorityProc_ff
    if ( ~nrst ) begin
        rr_first_indx <= 0;
    end
    else begin
        rr_first_indx <= rr_first_indx_next;
    end
end

//------------------------------------------------------------------------------
// Method process: nested_loops (test_cthread_const_prop.cpp:137:5) 

// Process-local variables
logic signed [31:0] m;

always_comb 
begin : nested_loops     // test_cthread_const_prop.cpp:137:5
    integer unsigned SIZE;
    integer arr[5];
    integer unsigned ll;
    SIZE = 5;
    for (integer i = 0; i < SIZE; i++)
    begin
        for (integer j = 0; j < SIZE; j++)
        begin
            for (integer k = 0; k < SIZE; k++)
            begin
                ll = 0;
                for (integer l = 0; l < SIZE; l++)
                begin
                    ll = l * l;
                end
                if (a)
                begin
                    m = k + ll;
                end
            end
            if (a)
            begin
                m = j;
            end
        end
        arr[i] = m;
    end
end

endmodule


