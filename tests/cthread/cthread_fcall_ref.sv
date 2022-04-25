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
    input logic clk,
    output logic out,
    output logic p
);

// Variables generated for SystemC signals
logic nrst;
logic s;
logic signed [31:0] s0;
logic signed [31:0] s1;
logic signed [31:0] s2;
logic signed [31:0] s3;
logic signed [31:0] s5;
logic signed [31:0] s6;
logic signed [31:0] s7;
logic signed [31:0] s8;
logic signed [31:0] s9;

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ref_reset1 (test_fcall_ref.cpp:84:5) 

// Next-state combinational logic
always_comb begin : fcall_ref_reset1_comb     // test_fcall_ref.cpp:84:5
    fcall_ref_reset1_func;
end
function void fcall_ref_reset1_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ref_reset1_ff
    if ( ~nrst ) begin
        logic [3:0] i;
        logic [3:0] k;
        logic [3:0] j;
        i = 42;
        // Call ref() begin
        k = i[2 : 1];
        i = k + 1;
        // Call ref() end
        j = i;
        s0 <= 3;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ref_reset2 (test_fcall_ref.cpp:98:5) 

// Thread-local variables
logic [3:0] i0;
logic [3:0] i_next;
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic [3:0] val;
logic [3:0] val_next;
logic signed [31:0] s1_next;

// Next-state combinational logic
always_comb begin : fcall_ref_reset2_comb     // test_fcall_ref.cpp:98:5
    fcall_ref_reset2_func;
end
function void fcall_ref_reset2_func;
    logic [3:0] k;
    integer a;
    i_next = i0;
    j_next = j0;
    s1_next = s1;
    val_next = val;
    // Call ref() begin
    k = i_next[2 : 1];
    i_next = k + 1;
    // Call ref() end
    s1_next = i_next;
    s1_next = 0;
    a = 42;
    s1_next = 3;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ref_reset2_ff
    if ( ~nrst ) begin
        i0 <= 42;
        j0 <= i0 + 1;
    end
    else begin
        i0 <= i_next;
        j0 <= j_next;
        val <= val_next;
        s1 <= s1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ref1 (test_fcall_ref.cpp:116:5) 

// Thread-local variables
logic signed [31:0] s2_next;

// Next-state combinational logic
always_comb begin : fcall_ref1_comb     // test_fcall_ref.cpp:116:5
    fcall_ref1_func;
end
function void fcall_ref1_func;
    logic [3:0] i;
    logic [3:0] k;
    integer j;
    s2_next = s2;
    i = 42;
    // Call ref() begin
    k = i[2 : 1];
    i = k + 1;
    // Call ref() end
    j = i + 1;
    s2_next = 3;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ref1_ff
    if ( ~nrst ) begin
    end
    else begin
        s2 <= s2_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ref2 (test_fcall_ref.cpp:131:5) 

// Thread-local variables
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic [3:0] i1;
logic [3:0] i_next0;
logic signed [31:0] s3_next;
logic fcall_ref2_PROC_STATE;
logic fcall_ref2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fcall_ref2_comb     // test_fcall_ref.cpp:131:5
    fcall_ref2_func;
end
function void fcall_ref2_func;
    logic [3:0] k;
    i_next0 = i1;
    j_next0 = j1;
    s3_next = s3;
    fcall_ref2_PROC_STATE_next = fcall_ref2_PROC_STATE;
    
    case (fcall_ref2_PROC_STATE)
        0: begin
            i_next0 = 42;
            j_next0 = i_next0 + 1;
            fcall_ref2_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:139:13;
        end
        1: begin
            if (s)
            begin
                s3_next = 11;
            end else begin
                // Call ref() begin
                k = i_next0[2 : 1];
                i_next0 = k + 1;
                // Call ref() end
            end
            i_next0 = 42;
            j_next0 = i_next0 + 1;
            fcall_ref2_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:139:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ref2_ff
    if ( ~nrst ) begin
        fcall_ref2_PROC_STATE <= 0;    // test_fcall_ref.cpp:133:9;
    end
    else begin
        j1 <= j_next0;
        i1 <= i_next0;
        s3 <= s3_next;
        fcall_ref2_PROC_STATE <= fcall_ref2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ptr1 (test_fcall_ref.cpp:165:5) 

// Thread-local variables
logic signed [31:0] s5_next;
logic signed [31:0] q1;

// Next-state combinational logic
always_comb begin : fcall_ptr1_comb     // test_fcall_ref.cpp:165:5
    fcall_ptr1_func;
end
function void fcall_ptr1_func;
    integer loc;
    s5_next = s5;
    q1 = 1;
    s5_next = 2;
    // Call ptr2() begin
    loc = q1 + 1;
    q1 = loc;
    // Call ptr2() end
    s5_next = q1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ptr1_ff
    if ( ~nrst ) begin
    end
    else begin
        s5 <= s5_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ptr2 (test_fcall_ref.cpp:180:5) 

// Thread-local variables
logic signed [31:0] q2;
logic signed [31:0] q2_next;
logic signed [31:0] s6_next;
logic fcall_ptr2_PROC_STATE;
logic fcall_ptr2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fcall_ptr2_comb     // test_fcall_ref.cpp:180:5
    fcall_ptr2_func;
end
function void fcall_ptr2_func;
    q2_next = q2;
    s6_next = s6;
    fcall_ptr2_PROC_STATE_next = fcall_ptr2_PROC_STATE;
    
    case (fcall_ptr2_PROC_STATE)
        0: begin
            q2_next = 1;
            fcall_ptr2_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:186:13;
        end
        1: begin
            s6_next = 2;
            q2_next = 1;
            fcall_ptr2_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:186:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ptr2_ff
    if ( ~nrst ) begin
        fcall_ptr2_PROC_STATE <= 0;    // test_fcall_ref.cpp:182:9;
    end
    else begin
        q2 <= q2_next;
        s6 <= s6_next;
        fcall_ptr2_PROC_STATE <= fcall_ptr2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_ptr3 (test_fcall_ref.cpp:193:5) 

// Thread-local variables
logic signed [31:0] q3;
logic signed [31:0] q3_next;
logic signed [31:0] s7_next;
logic fcall_ptr3_PROC_STATE;
logic fcall_ptr3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fcall_ptr3_comb     // test_fcall_ref.cpp:193:5
    fcall_ptr3_func;
end
function void fcall_ptr3_func;
    integer loc;
    q3_next = q3;
    s7_next = s7;
    fcall_ptr3_PROC_STATE_next = fcall_ptr3_PROC_STATE;
    
    case (fcall_ptr3_PROC_STATE)
        0: begin
            q3_next = 1;
            fcall_ptr3_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:199:13;
        end
        1: begin
            // Call ptr2() begin
            loc = q3_next + 1;
            q3_next = loc;
            // Call ptr2() end
            s7_next = q3_next;
            q3_next = 1;
            fcall_ptr3_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:199:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_ptr3_ff
    if ( ~nrst ) begin
        fcall_ptr3_PROC_STATE <= 0;    // test_fcall_ref.cpp:195:9;
    end
    else begin
        q3 <= q3_next;
        s7 <= s7_next;
        fcall_ptr3_PROC_STATE <= fcall_ptr3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_rec_ref1 (test_fcall_ref.cpp:222:5) 

// Thread-local variables
logic [3:0] x;
logic [3:0] x_next;
logic signed [31:0] s8_next;
logic fcall_rec_ref1_PROC_STATE;
logic fcall_rec_ref1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fcall_rec_ref1_comb     // test_fcall_ref.cpp:222:5
    fcall_rec_ref1_func;
end
function void fcall_rec_ref1_func;
    logic [3:0] TMP_0;
    s8_next = s8;
    x_next = x;
    fcall_rec_ref1_PROC_STATE_next = fcall_rec_ref1_PROC_STATE;
    
    case (fcall_rec_ref1_PROC_STATE)
        0: begin
            x_next = s;
            fcall_rec_ref1_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:228:13;
        end
        1: begin
            // Call rec_ref() begin
            // Call rec_ref_() begin
            x_next++;
            // Call rec_ref_() end
            TMP_0 = x_next + 1;
            // Call rec_ref() end
            s8_next = TMP_0;
            x_next = s;
            fcall_rec_ref1_PROC_STATE_next = 1; return;    // test_fcall_ref.cpp:228:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_rec_ref1_ff
    if ( ~nrst ) begin
        fcall_rec_ref1_PROC_STATE <= 0;    // test_fcall_ref.cpp:224:9;
    end
    else begin
        x <= x_next;
        s8 <= s8_next;
        fcall_rec_ref1_PROC_STATE <= fcall_rec_ref1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_rec_ref2 (test_fcall_ref.cpp:248:5) 

// Thread-local variables
logic [3:0] par;
logic [3:0] par_next;
logic signed [31:0] s9_next;

// Next-state combinational logic
always_comb begin : fcall_rec_ref2_comb     // test_fcall_ref.cpp:248:5
    fcall_rec_ref2_func;
end
function void fcall_rec_ref2_func;
    logic [3:0] TMP_0;
    integer TMP_1;
    par_next = par;
    s9_next = s9;
    par_next = s;
    // Call rec_ref_const() begin
    // Call rec_ref_const_() begin
    TMP_1 = par_next + 1;
    // Call rec_ref_const_() end
    TMP_0 = TMP_1 + 1;
    // Call rec_ref_const() end
    s9_next = TMP_0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_rec_ref2_ff
    if ( ~nrst ) begin
    end
    else begin
        par <= par_next;
        s9 <= s9_next;
    end
end

endmodule


