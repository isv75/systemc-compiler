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
);

// Variables generated for SystemC signals
logic clk;
logic arstn;
logic signed [31:0] in;
logic signed [31:0] out;
logic signed [31:0] s1;

// Local parameters generated for C++ constants
localparam logic CONST_A = 1;

//------------------------------------------------------------------------------
// Method process: tmp (test_if.cpp:106:5) 

always_comb 
begin : tmp     // test_if.cpp:106:5
    logic b1;
    logic b2;
    integer i;
    b1 = |in;
    b2 = |in;
    if (b1 && b2)
    begin
        i = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: tmp1 (test_if.cpp:115:5) 

always_comb 
begin : tmp1     // test_if.cpp:115:5
    logic b1;
    logic b2;
    integer i;
    b1 = |in;
    b2 = |in;
    if (b1 && |32'(b2))
    begin
        i = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: tmp2 (test_if.cpp:124:5) 

always_comb 
begin : tmp2     // test_if.cpp:124:5
    logic b1;
    integer i;
    integer i_1;
    integer i_2;
    b1 = |in;
    i = 0;
    i++;
    if (b1 && |i)
    begin
        i_1 = 1;
    end
    i = 0;
    i++;
    if (b1 && |i)
    begin
        i_2 = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: tmp3 (test_if.cpp:142:5) 

always_comb 
begin : tmp3     // test_if.cpp:142:5
    integer n;
    n = 1;
end

//------------------------------------------------------------------------------
// Method process: empty_if (test_if.cpp:151:5) 

always_comb 
begin : empty_if     // test_if.cpp:151:5
    logic b1;
    integer i;
    integer j;
    b1 = |in;
    i = 0;
    s1 = i;
end

//------------------------------------------------------------------------------
// Clocked THREAD: variable_read_in_binaryop (test_if.cpp:172:5) 

// Thread-local variables
logic closeWaLine;
logic closeWaLine_next;

// Next-state combinational logic
always_comb begin : variable_read_in_binaryop_comb     // test_if.cpp:172:5
    variable_read_in_binaryop_func;
end
function void variable_read_in_binaryop_func;
    logic updateLine;
    closeWaLine_next = closeWaLine;
    updateLine = |in;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : variable_read_in_binaryop_ff
    if ( ~arstn ) begin
        closeWaLine <= 0;
    end
    else begin
        closeWaLine <= closeWaLine_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: smem_if_binary_const (test_if.cpp:192:5) 

// Thread-local variables
logic b;
logic b_next;

// Next-state combinational logic
always_comb begin : smem_if_binary_const_comb     // test_if.cpp:192:5
    smem_if_binary_const_func;
end
function void smem_if_binary_const_func;
    b_next = b;
    b_next = !b_next;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : smem_if_binary_const_ff
    if ( ~arstn ) begin
        b <= 0;
    end
    else begin
        b <= b_next;
    end
end

//------------------------------------------------------------------------------
// Method process: simple_no_wait (test_if.cpp:204:5) 

always_comb 
begin : simple_no_wait     // test_if.cpp:204:5
    integer k;
    k = 0;
    if (|in)
    begin
        k = 1;
        if (|out)
        begin
            k = 2;
        end else begin
            k = 3;
        end
    end else begin
        if (|out)
        begin
            k = 4;
        end
    end
    k = 6;
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_wait (test_if.cpp:227:5) 

// Thread-local variables
logic [2:0] simple_wait_PROC_STATE;
logic [2:0] simple_wait_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : simple_wait_comb     // test_if.cpp:227:5
    simple_wait_func;
end
function void simple_wait_func;
    integer k;
    simple_wait_PROC_STATE_next = simple_wait_PROC_STATE;
    
    case (simple_wait_PROC_STATE)
        0: begin
            if (|in)
            begin
                k = 1;
                simple_wait_PROC_STATE_next = 1; return;    // test_if.cpp:235:17;
            end else begin
                if (|out)
                begin
                    k = 4;
                    simple_wait_PROC_STATE_next = 3; return;    // test_if.cpp:247:21;
                end
            end
            simple_wait_PROC_STATE_next = 4; return;    // test_if.cpp:251:13;
        end
        1: begin
            if (|out)
            begin
                k = 2;
                simple_wait_PROC_STATE_next = 2; return;    // test_if.cpp:239:21;
            end else begin
                k = 3;
            end
            simple_wait_PROC_STATE_next = 4; return;    // test_if.cpp:251:13;
        end
        2: begin
            simple_wait_PROC_STATE_next = 4; return;    // test_if.cpp:251:13;
        end
        3: begin
            simple_wait_PROC_STATE_next = 4; return;    // test_if.cpp:251:13;
        end
        4: begin
            k = 6;
            if (|in)
            begin
                k = 1;
                simple_wait_PROC_STATE_next = 1; return;    // test_if.cpp:235:17;
            end else begin
                if (|out)
                begin
                    k = 4;
                    simple_wait_PROC_STATE_next = 3; return;    // test_if.cpp:247:21;
                end
            end
            simple_wait_PROC_STATE_next = 4; return;    // test_if.cpp:251:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : simple_wait_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        simple_wait_PROC_STATE <= 0;    // test_if.cpp:230:9;
    end
    else begin
        simple_wait_PROC_STATE <= simple_wait_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait0 (test_if.cpp:256:5) 

// Thread-local variables
logic [1:0] if_stmt_wait0_PROC_STATE;
logic [1:0] if_stmt_wait0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait0_comb     // test_if.cpp:256:5
    if_stmt_wait0_func;
end
function void if_stmt_wait0_func;
    integer k;
    if_stmt_wait0_PROC_STATE_next = if_stmt_wait0_PROC_STATE;
    
    case (if_stmt_wait0_PROC_STATE)
        0: begin
            if (|in)
            begin
                k = 1;
                if_stmt_wait0_PROC_STATE_next = 1; return;    // test_if.cpp:264:17;
            end
            k = 2;
            if_stmt_wait0_PROC_STATE_next = 2; return;    // test_if.cpp:268:13;
        end
        1: begin
            k = 2;
            if_stmt_wait0_PROC_STATE_next = 2; return;    // test_if.cpp:268:13;
        end
        2: begin
            k = 3;
            if (|in)
            begin
                k = 1;
                if_stmt_wait0_PROC_STATE_next = 1; return;    // test_if.cpp:264:17;
            end
            k = 2;
            if_stmt_wait0_PROC_STATE_next = 2; return;    // test_if.cpp:268:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait0_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait0_PROC_STATE <= 0;    // test_if.cpp:259:9;
    end
    else begin
        if_stmt_wait0_PROC_STATE <= if_stmt_wait0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait1 (test_if.cpp:274:5) 

// Thread-local variables
logic [1:0] if_stmt_wait1_PROC_STATE;
logic [1:0] if_stmt_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait1_comb     // test_if.cpp:274:5
    if_stmt_wait1_func;
end
function void if_stmt_wait1_func;
    integer k;
    if_stmt_wait1_PROC_STATE_next = if_stmt_wait1_PROC_STATE;
    
    case (if_stmt_wait1_PROC_STATE)
        0: begin
            k = 1;
            if_stmt_wait1_PROC_STATE_next = 1; return;    // test_if.cpp:281:13;
        end
        1: begin
            if (|in)
            begin
                k = 2;
                if_stmt_wait1_PROC_STATE_next = 2; return;    // test_if.cpp:285:17;
            end
            k = 1;
            if_stmt_wait1_PROC_STATE_next = 1; return;    // test_if.cpp:281:13;
        end
        2: begin
            k = 3;
            k = 1;
            if_stmt_wait1_PROC_STATE_next = 1; return;    // test_if.cpp:281:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait1_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait1_PROC_STATE <= 0;    // test_if.cpp:277:9;
    end
    else begin
        if_stmt_wait1_PROC_STATE <= if_stmt_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait2 (test_if.cpp:291:5) 

// Thread-local variables
logic [1:0] if_stmt_wait2_PROC_STATE;
logic [1:0] if_stmt_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait2_comb     // test_if.cpp:291:5
    if_stmt_wait2_func;
end
function void if_stmt_wait2_func;
    integer k;
    if_stmt_wait2_PROC_STATE_next = if_stmt_wait2_PROC_STATE;
    
    case (if_stmt_wait2_PROC_STATE)
        0: begin
            if (|in)
            begin
                k = 1;
                if_stmt_wait2_PROC_STATE_next = 1; return;    // test_if.cpp:299:17;
            end else begin
                k = 3;
                if_stmt_wait2_PROC_STATE_next = 2; return;    // test_if.cpp:304:17;
            end
        end
        1: begin
            k = 2;
            if (|in)
            begin
                k = 1;
                if_stmt_wait2_PROC_STATE_next = 1; return;    // test_if.cpp:299:17;
            end else begin
                k = 3;
                if_stmt_wait2_PROC_STATE_next = 2; return;    // test_if.cpp:304:17;
            end
        end
        2: begin
            k = 4;
            if (|in)
            begin
                k = 1;
                if_stmt_wait2_PROC_STATE_next = 1; return;    // test_if.cpp:299:17;
            end else begin
                k = 3;
                if_stmt_wait2_PROC_STATE_next = 2; return;    // test_if.cpp:304:17;
            end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait2_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait2_PROC_STATE <= 0;    // test_if.cpp:294:9;
    end
    else begin
        if_stmt_wait2_PROC_STATE <= if_stmt_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait2a (test_if.cpp:310:5) 

// Thread-local variables
logic [1:0] if_stmt_wait2a_PROC_STATE;
logic [1:0] if_stmt_wait2a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait2a_comb     // test_if.cpp:310:5
    if_stmt_wait2a_func;
end
function void if_stmt_wait2a_func;
    integer k;
    if_stmt_wait2a_PROC_STATE_next = if_stmt_wait2a_PROC_STATE;
    
    case (if_stmt_wait2a_PROC_STATE)
        0: begin
            if (|in)
            begin
                k = 1;
                if_stmt_wait2a_PROC_STATE_next = 1; return;    // test_if.cpp:318:17;
            end else begin
                k = 3;
                if_stmt_wait2a_PROC_STATE_next = 2; return;    // test_if.cpp:323:17;
            end
        end
        1: begin
            k = 2;
            if (|in)
            begin
                k = 1;
                if_stmt_wait2a_PROC_STATE_next = 1; return;    // test_if.cpp:318:17;
            end else begin
                k = 3;
                if_stmt_wait2a_PROC_STATE_next = 2; return;    // test_if.cpp:323:17;
            end
        end
        2: begin
            if (|out)
            begin
                k = 4;
            end
            if (|in)
            begin
                k = 1;
                if_stmt_wait2a_PROC_STATE_next = 1; return;    // test_if.cpp:318:17;
            end else begin
                k = 3;
                if_stmt_wait2a_PROC_STATE_next = 2; return;    // test_if.cpp:323:17;
            end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait2a_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait2a_PROC_STATE <= 0;    // test_if.cpp:313:9;
    end
    else begin
        if_stmt_wait2a_PROC_STATE <= if_stmt_wait2a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait3 (test_if.cpp:332:5) 

// Thread-local variables
logic [2:0] if_stmt_wait3_PROC_STATE;
logic [2:0] if_stmt_wait3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait3_comb     // test_if.cpp:332:5
    if_stmt_wait3_func;
end
function void if_stmt_wait3_func;
    integer k;
    if_stmt_wait3_PROC_STATE_next = if_stmt_wait3_PROC_STATE;
    
    case (if_stmt_wait3_PROC_STATE)
        0: begin
            if (|in)
            begin
                k = 1;
                if_stmt_wait3_PROC_STATE_next = 1; return;    // test_if.cpp:340:17;
            end else begin
                if (|out)
                begin
                    if (out == in)
                    begin
                        k = 4;
                        if_stmt_wait3_PROC_STATE_next = 3; return;    // test_if.cpp:353:25;
                    end
                end
            end
            if_stmt_wait3_PROC_STATE_next = 4; return;    // test_if.cpp:359:13;
        end
        1: begin
            if (|out)
            begin
                k = 2;
                if_stmt_wait3_PROC_STATE_next = 2; return;    // test_if.cpp:344:21;
            end else begin
                k = 3;
            end
            if_stmt_wait3_PROC_STATE_next = 4; return;    // test_if.cpp:359:13;
        end
        2: begin
            if_stmt_wait3_PROC_STATE_next = 4; return;    // test_if.cpp:359:13;
        end
        3: begin
            k = 5;
            if_stmt_wait3_PROC_STATE_next = 4; return;    // test_if.cpp:359:13;
        end
        4: begin
            k = 6;
            if (|in)
            begin
                k = 1;
                if_stmt_wait3_PROC_STATE_next = 1; return;    // test_if.cpp:340:17;
            end else begin
                if (|out)
                begin
                    if (out == in)
                    begin
                        k = 4;
                        if_stmt_wait3_PROC_STATE_next = 3; return;    // test_if.cpp:353:25;
                    end
                end
            end
            if_stmt_wait3_PROC_STATE_next = 4; return;    // test_if.cpp:359:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait3_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait3_PROC_STATE <= 0;    // test_if.cpp:335:9;
    end
    else begin
        if_stmt_wait3_PROC_STATE <= if_stmt_wait3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait_for0 (test_if.cpp:365:5) 

// Thread-local variables
logic signed [31:0] k0;
logic signed [31:0] k_next;
logic [1:0] if_stmt_wait_for0_PROC_STATE;
logic [1:0] if_stmt_wait_for0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait_for0_comb     // test_if.cpp:365:5
    if_stmt_wait_for0_func;
end
function void if_stmt_wait_for0_func;
    k_next = k0;
    if_stmt_wait_for0_PROC_STATE_next = if_stmt_wait_for0_PROC_STATE;
    
    case (if_stmt_wait_for0_PROC_STATE)
        0: begin
            for (integer i = 0; i < 3; i++)
            begin
                k_next++;
            end
            if (|in)
            begin
                k_next = 1;
                if_stmt_wait_for0_PROC_STATE_next = 1; return;    // test_if.cpp:378:17;
            end
            for (integer i_1 = 0; i_1 < 3; i_1++)
            begin
                k_next--;
            end
            if (|in)
            begin
                k_next = 2;
                if_stmt_wait_for0_PROC_STATE_next = 2; return;    // test_if.cpp:387:17;
            end
            if_stmt_wait_for0_PROC_STATE_next = 3; return;    // test_if.cpp:390:13;
        end
        1: begin
            for (integer i_1 = 0; i_1 < 3; i_1++)
            begin
                k_next--;
            end
            if (|in)
            begin
                k_next = 2;
                if_stmt_wait_for0_PROC_STATE_next = 2; return;    // test_if.cpp:387:17;
            end
            if_stmt_wait_for0_PROC_STATE_next = 3; return;    // test_if.cpp:390:13;
        end
        2: begin
            if_stmt_wait_for0_PROC_STATE_next = 3; return;    // test_if.cpp:390:13;
        end
        3: begin
            k_next = 3;
            for (integer i = 0; i < 3; i++)
            begin
                k_next++;
            end
            if (|in)
            begin
                k_next = 1;
                if_stmt_wait_for0_PROC_STATE_next = 1; return;    // test_if.cpp:378:17;
            end
            for (integer i_1 = 0; i_1 < 3; i_1++)
            begin
                k_next--;
            end
            if (|in)
            begin
                k_next = 2;
                if_stmt_wait_for0_PROC_STATE_next = 2; return;    // test_if.cpp:387:17;
            end
            if_stmt_wait_for0_PROC_STATE_next = 3; return;    // test_if.cpp:390:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait_for0_ff
    if ( ~arstn ) begin
        k0 <= 0;
        if_stmt_wait_for0_PROC_STATE <= 0;    // test_if.cpp:368:9;
    end
    else begin
        k0 <= k_next;
        if_stmt_wait_for0_PROC_STATE <= if_stmt_wait_for0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait_for1 (test_if.cpp:396:5) 

// Thread-local variables
logic signed [31:0] k1;
logic signed [31:0] k_next0;
logic [2:0] if_stmt_wait_for1_PROC_STATE;
logic [2:0] if_stmt_wait_for1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait_for1_comb     // test_if.cpp:396:5
    if_stmt_wait_for1_func;
end
function void if_stmt_wait_for1_func;
    k_next0 = k1;
    if_stmt_wait_for1_PROC_STATE_next = if_stmt_wait_for1_PROC_STATE;
    
    case (if_stmt_wait_for1_PROC_STATE)
        0: begin
            if (|in)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    k_next0++;
                end
                k_next0 = 1;
                if_stmt_wait_for1_PROC_STATE_next = 1; return;    // test_if.cpp:408:17;
            end else begin
                k_next0 = 4;
                if_stmt_wait_for1_PROC_STATE_next = 4; return;    // test_if.cpp:424:17;
            end
        end
        1: begin
            if (|out)
            begin
                for (integer j = 0; j < 3; j++)
                begin
                    k_next0--;
                end
            end else begin
                k_next0 = 3;
                if_stmt_wait_for1_PROC_STATE_next = 2; return;    // test_if.cpp:416:21;
            end
            k_next0 = 2;
            if_stmt_wait_for1_PROC_STATE_next = 3; return;    // test_if.cpp:419:17;
        end
        2: begin
            k_next0 = 2;
            if_stmt_wait_for1_PROC_STATE_next = 3; return;    // test_if.cpp:419:17;
        end
        3: begin
            k_next0 = 5;
            if (|in)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    k_next0++;
                end
                k_next0 = 1;
                if_stmt_wait_for1_PROC_STATE_next = 1; return;    // test_if.cpp:408:17;
            end else begin
                k_next0 = 4;
                if_stmt_wait_for1_PROC_STATE_next = 4; return;    // test_if.cpp:424:17;
            end
        end
        4: begin
            k_next0 = 6;
            if (|in)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    k_next0++;
                end
                k_next0 = 1;
                if_stmt_wait_for1_PROC_STATE_next = 1; return;    // test_if.cpp:408:17;
            end else begin
                k_next0 = 4;
                if_stmt_wait_for1_PROC_STATE_next = 4; return;    // test_if.cpp:424:17;
            end
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait_for1_ff
    if ( ~arstn ) begin
        k1 <= 0;
        if_stmt_wait_for1_PROC_STATE <= 0;    // test_if.cpp:399:9;
    end
    else begin
        k1 <= k_next0;
        if_stmt_wait_for1_PROC_STATE <= if_stmt_wait_for1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait_for2 (test_if.cpp:431:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic [1:0] if_stmt_wait_for2_PROC_STATE;
logic [1:0] if_stmt_wait_for2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait_for2_comb     // test_if.cpp:431:5
    if_stmt_wait_for2_func;
end
function void if_stmt_wait_for2_func;
    integer k;
    i_next = i0;
    if_stmt_wait_for2_PROC_STATE_next = if_stmt_wait_for2_PROC_STATE;
    
    case (if_stmt_wait_for2_PROC_STATE)
        0: begin
            i_next = 0;
            if (|in)
            begin
                k = 1;
                if_stmt_wait_for2_PROC_STATE_next = 1; return;    // test_if.cpp:441:21;
            end
            if_stmt_wait_for2_PROC_STATE_next = 2; return;    // test_if.cpp:444:17;
        end
        1: begin
            if_stmt_wait_for2_PROC_STATE_next = 2; return;    // test_if.cpp:444:17;
        end
        2: begin
            i_next++;
            if (i_next < 3)
            begin
                if (|in)
                begin
                    k = 1;
                    if_stmt_wait_for2_PROC_STATE_next = 1; return;    // test_if.cpp:441:21;
                end
                if_stmt_wait_for2_PROC_STATE_next = 2; return;    // test_if.cpp:444:17;
            end
            i_next = 0;
            if (|in)
            begin
                k = 1;
                if_stmt_wait_for2_PROC_STATE_next = 1; return;    // test_if.cpp:441:21;
            end
            if_stmt_wait_for2_PROC_STATE_next = 2; return;    // test_if.cpp:444:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait_for2_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait_for2_PROC_STATE <= 0;    // test_if.cpp:434:9;
    end
    else begin
        i0 <= i_next;
        if_stmt_wait_for2_PROC_STATE <= if_stmt_wait_for2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait_for2a (test_if.cpp:449:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic [1:0] if_stmt_wait_for2a_PROC_STATE;
logic [1:0] if_stmt_wait_for2a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait_for2a_comb     // test_if.cpp:449:5
    if_stmt_wait_for2a_func;
end
function void if_stmt_wait_for2a_func;
    integer k;
    i_next0 = i1;
    j_next = j0;
    if_stmt_wait_for2a_PROC_STATE_next = if_stmt_wait_for2a_PROC_STATE;
    
    case (if_stmt_wait_for2a_PROC_STATE)
        0: begin
            i_next0 = 0;
            j_next = 0;
            if (|in)
            begin
                k = 1;
                if_stmt_wait_for2a_PROC_STATE_next = 1; return;    // test_if.cpp:460:25;
            end
            if_stmt_wait_for2a_PROC_STATE_next = 2; return;    // test_if.cpp:463:21;
        end
        1: begin
            if_stmt_wait_for2a_PROC_STATE_next = 2; return;    // test_if.cpp:463:21;
        end
        2: begin
            j_next++;
            if (j_next < 3)
            begin
                if (|in)
                begin
                    k = 1;
                    if_stmt_wait_for2a_PROC_STATE_next = 1; return;    // test_if.cpp:460:25;
                end
                if_stmt_wait_for2a_PROC_STATE_next = 2; return;    // test_if.cpp:463:21;
            end
            i_next0++;
            if (i_next0 < 3)
            begin
                j_next = 0;
                if (|in)
                begin
                    k = 1;
                    if_stmt_wait_for2a_PROC_STATE_next = 1; return;    // test_if.cpp:460:25;
                end
                if_stmt_wait_for2a_PROC_STATE_next = 2; return;    // test_if.cpp:463:21;
            end
            if_stmt_wait_for2a_PROC_STATE_next = 3; return;    // test_if.cpp:467:13;
        end
        3: begin
            i_next0 = 0;
            j_next = 0;
            if (|in)
            begin
                k = 1;
                if_stmt_wait_for2a_PROC_STATE_next = 1; return;    // test_if.cpp:460:25;
            end
            if_stmt_wait_for2a_PROC_STATE_next = 2; return;    // test_if.cpp:463:21;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait_for2a_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait_for2a_PROC_STATE <= 0;    // test_if.cpp:452:9;
    end
    else begin
        j0 <= j_next;
        i1 <= i_next0;
        if_stmt_wait_for2a_PROC_STATE <= if_stmt_wait_for2a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_wait_for2b (test_if.cpp:471:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic [2:0] if_stmt_wait_for2b_PROC_STATE;
logic [2:0] if_stmt_wait_for2b_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : if_stmt_wait_for2b_comb     // test_if.cpp:471:5
    if_stmt_wait_for2b_func;
end
function void if_stmt_wait_for2b_func;
    integer k;
    i_next1 = i2;
    j_next0 = j1;
    if_stmt_wait_for2b_PROC_STATE_next = if_stmt_wait_for2b_PROC_STATE;
    
    case (if_stmt_wait_for2b_PROC_STATE)
        0: begin
            i_next1 = 0;
            if (|in)
            begin
                k = 1;
                if_stmt_wait_for2b_PROC_STATE_next = 1; return;    // test_if.cpp:481:21;
            end
            j_next0 = 0;
            if (|out)
            begin
                k = 2;
            end else begin
                k = 3;
                if_stmt_wait_for2b_PROC_STATE_next = 2; return;    // test_if.cpp:489:25;
            end
            if_stmt_wait_for2b_PROC_STATE_next = 3; return;    // test_if.cpp:491:21;
        end
        1: begin
            j_next0 = 0;
            if (|out)
            begin
                k = 2;
            end else begin
                k = 3;
                if_stmt_wait_for2b_PROC_STATE_next = 2; return;    // test_if.cpp:489:25;
            end
            if_stmt_wait_for2b_PROC_STATE_next = 3; return;    // test_if.cpp:491:21;
        end
        2: begin
            if_stmt_wait_for2b_PROC_STATE_next = 3; return;    // test_if.cpp:491:21;
        end
        3: begin
            j_next0++;
            if (j_next0 < 3)
            begin
                if (|out)
                begin
                    k = 2;
                end else begin
                    k = 3;
                    if_stmt_wait_for2b_PROC_STATE_next = 2; return;    // test_if.cpp:489:25;
                end
                if_stmt_wait_for2b_PROC_STATE_next = 3; return;    // test_if.cpp:491:21;
            end
            if_stmt_wait_for2b_PROC_STATE_next = 4; return;    // test_if.cpp:494:17;
        end
        4: begin
            i_next1++;
            if (i_next1 < 3)
            begin
                if (|in)
                begin
                    k = 1;
                    if_stmt_wait_for2b_PROC_STATE_next = 1; return;    // test_if.cpp:481:21;
                end
                j_next0 = 0;
                if (|out)
                begin
                    k = 2;
                end else begin
                    k = 3;
                    if_stmt_wait_for2b_PROC_STATE_next = 2; return;    // test_if.cpp:489:25;
                end
                if_stmt_wait_for2b_PROC_STATE_next = 3; return;    // test_if.cpp:491:21;
            end
            i_next1 = 0;
            if (|in)
            begin
                k = 1;
                if_stmt_wait_for2b_PROC_STATE_next = 1; return;    // test_if.cpp:481:21;
            end
            j_next0 = 0;
            if (|out)
            begin
                k = 2;
            end else begin
                k = 3;
                if_stmt_wait_for2b_PROC_STATE_next = 2; return;    // test_if.cpp:489:25;
            end
            if_stmt_wait_for2b_PROC_STATE_next = 3; return;    // test_if.cpp:491:21;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_wait_for2b_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        if_stmt_wait_for2b_PROC_STATE <= 0;    // test_if.cpp:474:9;
    end
    else begin
        i2 <= i_next1;
        j1 <= j_next0;
        if_stmt_wait_for2b_PROC_STATE <= if_stmt_wait_for2b_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_const_prop1 (test_if.cpp:499:5) 

// Next-state combinational logic
always_comb begin : if_stmt_const_prop1_comb     // test_if.cpp:499:5
    if_stmt_const_prop1_func;
end
function void if_stmt_const_prop1_func;
    integer k;
    k = 1;
    k = 3;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_const_prop1_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: if_stmt_const_prop2 (test_if.cpp:517:5) 

// Next-state combinational logic
always_comb begin : if_stmt_const_prop2_comb     // test_if.cpp:517:5
    if_stmt_const_prop2_func;
end
function void if_stmt_const_prop2_func;
    integer k;
    k = 2;
    k = 3;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : if_stmt_const_prop2_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
    end
    else begin
    end
end

endmodule


