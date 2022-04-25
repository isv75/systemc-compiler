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
logic rst;
logic clk_gen;
logic clk;

// Assignments generated for C++ channel arrays
assign clk = clk_gen;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_wait_states.cpp:130:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic rst
);

// Variables generated for SystemC signals
logic a;

//------------------------------------------------------------------------------
// Clocked THREAD: single_state (test_cthread_wait_states.cpp:43:6) 

// Next-state combinational logic
always_comb begin : single_state_comb     // test_cthread_wait_states.cpp:43:6
    single_state_func;
end
function void single_state_func;
    integer i;
    i = 2;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : single_state_ff
    if ( rst ) begin
        integer i;
        i = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: not_single_state1 (test_cthread_wait_states.cpp:53:5) 

// Thread-local variables
logic not_single_state1_PROC_STATE;
logic not_single_state1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : not_single_state1_comb     // test_cthread_wait_states.cpp:53:5
    not_single_state1_func;
end
function void not_single_state1_func;
    integer i;
    not_single_state1_PROC_STATE_next = not_single_state1_PROC_STATE;
    
    case (not_single_state1_PROC_STATE)
        0: begin
            i = 1;
            i = 2;
            not_single_state1_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:61:13;
        end
        1: begin
            i = 2;
            not_single_state1_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:61:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : not_single_state1_ff
    if ( rst ) begin
        integer i;
        i = 0;
        not_single_state1_PROC_STATE <= 0;    // test_cthread_wait_states.cpp:55:9;
    end
    else begin
        not_single_state1_PROC_STATE <= not_single_state1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: not_single_state2 (test_cthread_wait_states.cpp:65:5) 

// Thread-local variables
logic [1:0] not_single_state2_PROC_STATE;
logic [1:0] not_single_state2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : not_single_state2_comb     // test_cthread_wait_states.cpp:65:5
    not_single_state2_func;
end
function void not_single_state2_func;
    integer i;
    not_single_state2_PROC_STATE_next = not_single_state2_PROC_STATE;
    
    case (not_single_state2_PROC_STATE)
        0: begin
            i = 1;
            not_single_state2_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:70:9;
        end
        1: begin
            i = 2;
            not_single_state2_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:74:13;
        end
        2: begin
            i = 2;
            not_single_state2_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:74:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : not_single_state2_ff
    if ( rst ) begin
        integer i;
        i = 0;
        not_single_state2_PROC_STATE <= 0;    // test_cthread_wait_states.cpp:67:9;
    end
    else begin
        not_single_state2_PROC_STATE <= not_single_state2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: not_single_state3 (test_cthread_wait_states.cpp:78:5) 

// Thread-local variables
logic [1:0] not_single_state3_PROC_STATE;
logic [1:0] not_single_state3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : not_single_state3_comb     // test_cthread_wait_states.cpp:78:5
    not_single_state3_func;
end
function void not_single_state3_func;
    integer i;
    not_single_state3_PROC_STATE_next = not_single_state3_PROC_STATE;
    
    case (not_single_state3_PROC_STATE)
        0: begin
            if (a)
            begin
                i = 1;
                not_single_state3_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:84:13;
            end
            i = 2;
            not_single_state3_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:89:13;
        end
        1: begin
            i = 2;
            not_single_state3_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:89:13;
        end
        2: begin
            i = 2;
            not_single_state3_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:89:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : not_single_state3_ff
    if ( rst ) begin
        integer i;
        i = 0;
        not_single_state3_PROC_STATE <= 0;    // test_cthread_wait_states.cpp:80:9;
    end
    else begin
        not_single_state3_PROC_STATE <= not_single_state3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: state_in_if (test_cthread_wait_states.cpp:93:5) 

// Thread-local variables
logic b;
logic b_next;
logic [1:0] state_in_if_PROC_STATE;
logic [1:0] state_in_if_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : state_in_if_comb     // test_cthread_wait_states.cpp:93:5
    state_in_if_func;
end
function void state_in_if_func;
    integer i;
    integer j;
    b_next = b;
    state_in_if_PROC_STATE_next = state_in_if_PROC_STATE;
    
    case (state_in_if_PROC_STATE)
        0: begin
            b_next = !b_next;
            if (b_next)
            begin
                i = 1;
                state_in_if_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:100:17;
            end
            j = 2;
            state_in_if_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:103:13;
        end
        1: begin
            j = 2;
            state_in_if_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:103:13;
        end
        2: begin
            b_next = !b_next;
            if (b_next)
            begin
                i = 1;
                state_in_if_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:100:17;
            end
            j = 2;
            state_in_if_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:103:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : state_in_if_ff
    if ( rst ) begin
        b <= 0;
        state_in_if_PROC_STATE <= 0;    // test_cthread_wait_states.cpp:95:9;
    end
    else begin
        b <= b_next;
        state_in_if_PROC_STATE <= state_in_if_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: state_in_for (test_cthread_wait_states.cpp:107:5) 

// Thread-local variables
logic b0;
logic b_next0;
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic [1:0] state_in_for_PROC_STATE;
logic [1:0] state_in_for_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : state_in_for_comb     // test_cthread_wait_states.cpp:107:5
    state_in_for_func;
end
function void state_in_for_func;
    b_next0 = b0;
    i_next = i0;
    state_in_for_PROC_STATE_next = state_in_for_PROC_STATE;
    
    case (state_in_for_PROC_STATE)
        0: begin
            i_next = 0;
            b_next0 = !b_next0;
            state_in_for_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:114:17;
        end
        1: begin
            if (a)
            begin
                // break begin
                state_in_for_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:118:13;
                // break end
            end
            i_next++;
            if (i_next < 3)
            begin
                b_next0 = !b_next0;
                state_in_for_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:114:17;
            end
            state_in_for_PROC_STATE_next = 2; return;    // test_cthread_wait_states.cpp:118:13;
        end
        2: begin
            i_next = 0;
            b_next0 = !b_next0;
            state_in_for_PROC_STATE_next = 1; return;    // test_cthread_wait_states.cpp:114:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : state_in_for_ff
    if ( rst ) begin
        b0 <= 0;
        state_in_for_PROC_STATE <= 0;    // test_cthread_wait_states.cpp:109:9;
    end
    else begin
        b0 <= b_next0;
        i0 <= i_next;
        state_in_for_PROC_STATE <= state_in_for_PROC_STATE_next;
    end
end

endmodule


