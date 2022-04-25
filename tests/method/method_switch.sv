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
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_switch.cpp:620:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic [2:0] s;
logic [2:0] t;

// Local parameters generated for C++ constants
localparam logic signed [31:0] m = 11;
localparam logic ONE = 1;
localparam logic ZERO = 0;

//------------------------------------------------------------------------------
// Method process: switch_empty1 (test_switch.cpp:71:5) 

always_comb 
begin : switch_empty1     // test_switch.cpp:71:5
    integer i;
    i = 1;
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_empty2 (test_switch.cpp:80:5) 

always_comb 
begin : switch_empty2     // test_switch.cpp:80:5
    integer i;
    integer m_1;
    m_1 = s;
    i = 10;
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_const_default (test_switch.cpp:89:5) 

always_comb 
begin : switch_const_default     // test_switch.cpp:89:5
    integer i;
    integer unsigned c_1;
    c_1 = 0;
    case (0)
    default : begin
        i = 3;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_stmt1 (test_switch.cpp:104:5) 

always_comb 
begin : switch_stmt1     // test_switch.cpp:104:5
    integer i;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    3 : begin
        i = 3;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_stmt2 (test_switch.cpp:116:5) 

always_comb 
begin : switch_stmt2     // test_switch.cpp:116:5
    integer i;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    default : begin
        i = 10;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_stmt3 (test_switch.cpp:128:5) 

always_comb 
begin : switch_stmt3     // test_switch.cpp:128:5
    integer i;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    default : begin
        i = 10;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if1 (test_switch.cpp:142:5) 

always_comb 
begin : switch_if1     // test_switch.cpp:142:5
    integer i;
    integer k_1;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        i = 1;
    end
    2 : begin
        if (m_1 == k_1)
        begin
            k_1 = 1;
        end else begin
            k_1 = 2;
        end
    end
    default : begin
        k_1 = 3;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if2 (test_switch.cpp:160:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : switch_if2     // test_switch.cpp:160:5
    integer i;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    default : begin
        if (m_1 == k)
        begin
            k = 3;
        end else begin
            k = 4;
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if3 (test_switch.cpp:178:5) 

always_comb 
begin : switch_if3     // test_switch.cpp:178:5
    integer i;
    integer m_1;
    integer k_1;
    m_1 = s;
    case (m_1)
    1 : begin
        i = 1;
    end
    2 : begin
        if (t == 0)
        begin
            k_1 = 3;
        end
        if (s == 1)
        begin
            k_1 = 4;
        end
    end
    default : begin
        if (t == 0)
        begin
            k_1 = 5;
            if (s == 1)
            begin
                k_1 = 6;
            end
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if3a (test_switch.cpp:203:5) 

always_comb 
begin : switch_if3a     // test_switch.cpp:203:5
    integer i;
    integer k_1;
    case (s)
    1 : begin
        if (t == 0)
        begin
            k_1 = 3;
        end else begin
            if (s == 1)
            begin
                k_1 = 4;
            end
        end
    end
    2 : begin
        if (s == 1)
        begin
            k_1 = 5;
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if4 (test_switch.cpp:228:5) 

always_comb 
begin : switch_if4     // test_switch.cpp:228:5
    integer k_1;
    integer i;
    i = s;
    case (s)
    1 : begin
        if (i == 1 || |t)
        begin
            k_1 = 3;
        end else begin
            if (ONE && i == 2)
            begin
                k_1 = 4;
            end
        end
    end
    2 : begin
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if4a (test_switch.cpp:250:5) 

always_comb 
begin : switch_if4a     // test_switch.cpp:250:5
    integer k_1;
    integer i;
    i = s;
    case (s)
    1 : begin
    end
    2 : begin
        k_1 = 1;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if5 (test_switch.cpp:279:5) 

always_comb 
begin : switch_if5     // test_switch.cpp:279:5
    integer k_1;
    integer i;
    logic TMP_0;
    integer val;
    integer TMP_1;
    integer TMP_2;
    logic TMP_3;
    i = s;
    case (s)
    1 : begin
        val = s;
        // Call g1() begin
        TMP_0 = val == 1;
        // Call g1() end
        if (TMP_0)
        begin
            k_1 = 3;
        end
    end
    2 : begin
        // Call g2() begin
        i = i + 1;
        TMP_1 = i;
        // Call g2() end
        if (|TMP_1)
        begin
            k_1 = i;
        end
    end
    default : begin
        // Call g2() begin
        i = i + 1;
        TMP_2 = i;
        // Call g2() end
        val = TMP_2;
        // Call g1() begin
        TMP_3 = val == 1;
        // Call g1() end
        if (TMP_3)
        begin
            k_1 = 5;
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_for1 (test_switch.cpp:305:5) 

always_comb 
begin : switch_for1     // test_switch.cpp:305:5
    integer i;
    integer k_1;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        k_1 = 1;
    end
    2 : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            k_1 = k_1 + 1;
        end
    end
    default : begin
        k_1 = 10;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_for2 (test_switch.cpp:320:5) 

always_comb 
begin : switch_for2     // test_switch.cpp:320:5
    integer i;
    integer k_1;
    integer m_1;
    m_1 = s;
    case (s)
    1 : begin
        for (integer i_1 = 0; i_1 < 3; i_1++)
        begin
            k_1 = k_1 + 1;
        end
        for (integer j = 0; j < 4; j++)
        begin
            k_1 = k_1 - 1;
        end
    end
    2 : begin
        for (integer l = 0; l < 7; l++)
        begin
            if (l == s)
            begin
                l++;
            end
            for (integer ll = 0; ll < 3; ll++)
            begin
                if (l == t)
                begin
                    l--;
                end
            end
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_for3 (test_switch.cpp:350:5) 

// Process-local variables
logic arr[3];

always_comb 
begin : switch_for3     // test_switch.cpp:350:5
    integer i;
    integer k_1;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        k_1 = 1;
    end
    2 : begin
        k_1 = 2;
    end
    default : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            k_1 = k_1 + 1;
            for (integer j = 0; j < 3; j++)
            begin
                arr[j] = |(i_1 + j);
            end
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_for4 (test_switch.cpp:367:5) 

always_comb 
begin : switch_for4     // test_switch.cpp:367:5
    integer i;
    integer k_1;
    integer m_1;
    m_1 = s;
    case (s)
    1 : begin
        k_1 = 1;
    end
    2 : begin
        k_1 = 2;
    end
    default : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            k_1 = k_1 + 1;
        end
        if (t == 1)
        begin
            for (integer j = 0; j < 7; j++)
            begin
                k_1 = k_1 + 1;
            end
            i = 3;
            while (i != 0)
            begin
                i--;
            end
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_for_empty (test_switch.cpp:393:5) 

always_comb 
begin : switch_for_empty     // test_switch.cpp:393:5
    integer i;
    i = 0;
    case (s)
    1 : begin
    end
    default : begin
        i = 1;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if_empty (test_switch.cpp:406:5) 

always_comb 
begin : switch_if_empty     // test_switch.cpp:406:5
    integer i;
    i = 0;
    case (s)
    1 : begin
    end
    default : begin
        i = 1;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_dowhile_empty (test_switch.cpp:419:5) 

always_comb 
begin : switch_dowhile_empty     // test_switch.cpp:419:5
    integer i;
    i = 0;
    case (s)
    1 : begin
        do
        begin
            i++;
        end
        while (i < 10);
    end
    default : begin
        i = 1;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_while_empty (test_switch.cpp:432:5) 

always_comb 
begin : switch_while_empty     // test_switch.cpp:432:5
    integer i;
    i = 0;
    case (s)
    1 : begin
        while (i < 10)
        begin
            i++;
        end
    end
    default : begin
        i = 1;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_default_while_empty (test_switch.cpp:445:5) 

always_comb 
begin : switch_default_while_empty     // test_switch.cpp:445:5
    integer i;
    i = 0;
    case (s)
    1 : begin
        i = 1;
    end
    default : begin
        while (i < 10)
        begin
            i++;
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_while1 (test_switch.cpp:460:5) 

// Process-local variables
logic arr2[10];

always_comb 
begin : switch_while1     // test_switch.cpp:460:5
    integer i;
    i = 0;
    case (s)
    1 : begin
        while (i < 5)
        begin
            i++;
        end
    end
    2 : begin
        while (i < 10)
        begin
            arr2[i] = 0;
            i++;
        end
    end
    default : begin
        if (t == 1)
        begin
            i = 3;
            while (i != 0)
            begin
                i--;
            end
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_break1 (test_switch.cpp:484:5) 

always_comb 
begin : switch_break1     // test_switch.cpp:484:5
    integer i;
    integer k_1;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        k_1 = 1;
    end
    2 : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            k_1 = k_1 + 1;
            if (m_1 == k_1)
            begin
                break;
            end
        end
    end
    default : begin
        k_1 = 10;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_break2 (test_switch.cpp:501:5) 

always_comb 
begin : switch_break2     // test_switch.cpp:501:5
    integer i;
    integer k_1;
    integer m_1;
    integer i_2;
    m_1 = s;
    case (m_1)
    1 : begin
        k_1 = 1;
    end
    2 : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            if (|s)
            begin
                break;
            end
        end
    end
    default : begin
        i_2 = 0;
        while (i_2 < 7)
        begin
            if (m_1 == k_1)
            begin
                break;
            end
            k_1 = k_1 + 1;
            i_2++;
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_continue1 (test_switch.cpp:521:5) 

always_comb 
begin : switch_continue1     // test_switch.cpp:521:5
    integer i;
    integer k_1;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin
        k_1 = 1;
    end
    2 : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            k_1 = k_1 + 1;
            if (m_1 == k_1)
            begin
                continue;
            end
        end
    end
    default : begin
        k_1 = 10;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_continue2 (test_switch.cpp:537:5) 

always_comb 
begin : switch_continue2     // test_switch.cpp:537:5
    integer i;
    integer k_1;
    integer m_1;
    integer i_2;
    m_1 = s;
    case (m_1)
    1 : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            if (|s)
            begin
                continue;
            end
        end
    end
    2 : begin
        k_1 = 2;
    end
    default : begin
        i_2 = 0;
        while (i_2 < 7)
        begin
            if (m_1 == k_1)
            begin
                continue;
            end
            k_1 = k_1 + 1;
            i_2++;
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_break_continue (test_switch.cpp:557:5) 

always_comb 
begin : switch_break_continue     // test_switch.cpp:557:5
    integer i;
    integer k_1;
    integer m_1;
    integer ii;
    m_1 = s;
    case (m_1)
    1 : begin
        for (integer i_1 = 0; i_1 < 7; i_1++)
        begin
            if (|s)
            begin
                continue;
            end
            ii = i_1;
            while (ii < 3)
            begin
                ii++;
                if (|s)
                begin
                    break;
                end
            end
        end
    end
    default : begin
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_fcall1 (test_switch.cpp:583:5) 

always_comb 
begin : switch_fcall1     // test_switch.cpp:583:5
    integer i;
    integer j;
    integer TMP_2;
    integer val;
    case (s)
    1 : begin
        i = 2;    // Call of f()
    end
    2 : begin
        i = 3;    // Call of f()
    end
    default : begin
        j = 0;
        while (j < 7)
        begin
            val = t;
            // Call f() begin
            TMP_2 = val + 1;
            // Call f() end
            if (TMP_2 == 1)
            begin
                break;
            end
            j++;
        end
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_fcall_empty1 (test_switch.cpp:598:5) 

always_comb 
begin : switch_fcall_empty1     // test_switch.cpp:598:5
    integer i;
    case (s)
    1 : begin  // Empty case without break
        i = 3;    // Call of f()
    end
    2 : begin
        i = 3;    // Call of f()
    end
    endcase
    i = 0;
end

endmodule


