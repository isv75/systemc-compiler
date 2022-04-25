//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic signed [31:0] s0;
logic signed [31:0] s1;
logic signed [31:0] s2;
logic signed [31:0] s3;
logic signed [31:0] s5;
logic signed [31:0] s6;
logic signed [31:0] s7;

// Local parameters generated for C++ constants
localparam logic signed [31:0] cp = 42;

//------------------------------------------------------------------------------
// Clocked THREAD: local_ref_reset (test_cthread_var_ref.cpp:61:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] s0_next;

// Next-state combinational logic
always_comb begin : local_ref_reset_comb     // test_cthread_var_ref.cpp:61:5
    local_ref_reset_func;
end
function void local_ref_reset_func;
    integer j;
    i_next = i;
    s0_next = s0;
    j = i_next + 1;
    s0_next = j;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_ref_reset_ff
    if ( ~rstn ) begin
        i <= 42;
    end
    else begin
        i <= i_next;
        s0 <= s0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_const_ref (test_cthread_var_ref.cpp:75:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic signed [31:0] cr;
logic signed [31:0] cr_next;
logic signed [31:0] s0_next0;

// Next-state combinational logic
always_comb begin : local_const_ref_comb     // test_cthread_var_ref.cpp:75:5
    local_const_ref_func;
end
function void local_const_ref_func;
    integer j;
    cr_next = cr;
    i_next0 = i0;
    s0_next0 = s0;
    cr_next = i_next0 + 1;
    j = cr_next;
    s0_next0 = j;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_const_ref_ff
    if ( ~rstn ) begin
        i0 <= 42;
    end
    else begin
        i0 <= i_next0;
        cr <= cr_next;
        s0 <= s0_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_ref1 (test_cthread_var_ref.cpp:91:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] s1_next;

// Next-state combinational logic
always_comb begin : local_ref1_comb     // test_cthread_var_ref.cpp:91:5
    local_ref1_func;
end
function void local_ref1_func;
    j_next = j0;
    s1_next = s1;
    s1_next = j_next;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_ref1_ff
    if ( ~rstn ) begin
        integer i_1;
        i_1 = 42;
        j0 <= i_1 + 1;
    end
    else begin
        j0 <= j_next;
        s1 <= s1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_ref2 (test_cthread_var_ref.cpp:107:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next1;
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic signed [31:0] s2_next;
logic local_ref2_PROC_STATE;
logic local_ref2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : local_ref2_comb     // test_cthread_var_ref.cpp:107:5
    local_ref2_func;
end
function void local_ref2_func;
    i_next1 = i1;
    j_next0 = j1;
    s2_next = s2;
    local_ref2_PROC_STATE_next = local_ref2_PROC_STATE;
    
    case (local_ref2_PROC_STATE)
        0: begin
            j_next0 = i_next1 + 1;
            s2_next = j_next0;
            local_ref2_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:117:13;
        end
        1: begin
            s2_next = j_next0 + 1;
            j_next0 = i_next1 + 1;
            s2_next = j_next0;
            local_ref2_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:117:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_ref2_ff
    if ( ~rstn ) begin
        i1 <= 42;
        local_ref2_PROC_STATE <= 0;    // test_cthread_var_ref.cpp:110:9;
    end
    else begin
        i1 <= i_next1;
        j1 <= j_next0;
        s2 <= s2_next;
        local_ref2_PROC_STATE <= local_ref2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_ptr1 (test_cthread_var_ref.cpp:127:5) 

// Thread-local variables
logic signed [31:0] p;
logic signed [31:0] p_next;
logic signed [31:0] s3_next;
logic [3:0] q;
logic local_ptr1_PROC_STATE;
logic local_ptr1_PROC_STATE_next;

// Thread-local constants
logic signed [31:0] A;

// Next-state combinational logic
always_comb begin : local_ptr1_comb     // test_cthread_var_ref.cpp:127:5
    local_ptr1_func;
end
function void local_ptr1_func;
    integer B;
    p_next = p;
    s3_next = s3;
    local_ptr1_PROC_STATE_next = local_ptr1_PROC_STATE;
    
    case (local_ptr1_PROC_STATE)
        0: begin
            B = cp;
            s3_next = p + A + B;
            local_ptr1_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:139:13;
        end
        1: begin
            q = s2;
            if (|q)
            begin
                q--;
            end
            p++;
            s3_next = q;
            B = cp;
            s3_next = p + A + B;
            local_ptr1_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:139:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_ptr1_ff
    if ( ~rstn ) begin
        integer i_1;
        A = 42;
        i_1 = 43;
        p <= 0;
        local_ptr1_PROC_STATE <= 0;    // test_cthread_var_ref.cpp:133:9;
    end
    else begin
        p <= p_next;
        s3 <= s3_next;
        local_ptr1_PROC_STATE <= local_ptr1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_record1 (test_cthread_var_ref.cpp:163:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next2;
logic signed [31:0] rec_b;
logic signed [31:0] rec_b_next;
logic signed [31:0] s5_next;
logic local_record1_PROC_STATE;
logic local_record1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : local_record1_comb     // test_cthread_var_ref.cpp:163:5
    local_record1_func;
end
function void local_record1_func;
    integer par;
    logic rec_a;
    i_next2 = i2;
    rec_b_next = rec_b;
    s5_next = s5;
    local_record1_PROC_STATE_next = local_record1_PROC_STATE;
    
    case (local_record1_PROC_STATE)
        0: begin
            par = i_next2;
            rec_a = 0;
            rec_b_next = par;
            local_record1_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:170:13;
        end
        1: begin
            s5_next = rec_b_next;
            par = i_next2;
            rec_a = 0;
            rec_b_next = par;
            local_record1_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:170:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_record1_ff
    if ( ~rstn ) begin
        i2 <= 42;
        local_record1_PROC_STATE <= 0;    // test_cthread_var_ref.cpp:166:9;
    end
    else begin
        i2 <= i_next2;
        rec_b <= rec_b_next;
        s5 <= s5_next;
        local_record1_PROC_STATE <= local_record1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_record_ref (test_cthread_var_ref.cpp:178:5) 

// Thread-local variables
logic signed [31:0] rec2_b;
logic signed [31:0] rec2_b_next;
logic signed [31:0] s6_next;
logic local_record_ref_PROC_STATE;
logic local_record_ref_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : local_record_ref_comb     // test_cthread_var_ref.cpp:178:5
    local_record_ref_func;
end
function void local_record_ref_func;
    logic rec1_a;
    integer rec1_b;
    logic rec2_a;
    rec2_b_next = rec2_b;
    s6_next = s6;
    local_record_ref_PROC_STATE_next = local_record_ref_PROC_STATE;
    
    case (local_record_ref_PROC_STATE)
        0: begin
            s6_next = rec1_b;
            local_record_ref_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:188:13;
        end
        1: begin
            s6_next = rec2_b_next;
            s6_next = rec1_b;
            local_record_ref_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:188:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_record_ref_ff
    if ( ~rstn ) begin
        local_record_ref_PROC_STATE <= 0;    // test_cthread_var_ref.cpp:180:9;
    end
    else begin
        rec2_b <= rec2_b_next;
        s6 <= s6_next;
        local_record_ref_PROC_STATE <= local_record_ref_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_record_ref_reset (test_cthread_var_ref.cpp:195:5) 

// Thread-local variables
logic signed [31:0] rec1_b0;
logic signed [31:0] rec1_b_next;
logic signed [31:0] rec2_b0;
logic signed [31:0] rec2_b_next0;
logic signed [31:0] s7_next;
logic local_record_ref_reset_PROC_STATE;
logic local_record_ref_reset_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : local_record_ref_reset_comb     // test_cthread_var_ref.cpp:195:5
    local_record_ref_reset_func;
end
function void local_record_ref_reset_func;
    rec1_b_next = rec1_b0;
    rec2_b_next0 = rec2_b0;
    s7_next = s7;
    local_record_ref_reset_PROC_STATE_next = local_record_ref_reset_PROC_STATE;
    
    case (local_record_ref_reset_PROC_STATE)
        0: begin
            s7_next = rec1_b_next;
            local_record_ref_reset_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:205:13;
        end
        1: begin
            s7_next = rec2_b_next0 + 1;
            s7_next = rec1_b_next;
            local_record_ref_reset_PROC_STATE_next = 1; return;    // test_cthread_var_ref.cpp:205:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : local_record_ref_reset_ff
    if ( ~rstn ) begin
        logic rec1_a;
        integer par;
        logic rec2_a;
        par = 42;
        rec2_a = 0;
        rec2_b0 <= par;
        local_record_ref_reset_PROC_STATE <= 0;    // test_cthread_var_ref.cpp:199:9;
    end
    else begin
        rec1_b0 <= rec1_b_next;
        rec2_b0 <= rec2_b_next0;
        s7 <= s7_next;
        local_record_ref_reset_PROC_STATE <= local_record_ref_reset_PROC_STATE_next;
    end
end

endmodule


