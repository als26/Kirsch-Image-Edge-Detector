//
// Verilog description for cell kirsch, 
// Fri Jul 21 00:14:30 2017
//
// Precision RTL Synthesis, 64-bit 2015.2.16//


module kirsch_logic ( clk, reset, i_valid, i_pixel, o_valid, o_edge, o_dir, o_mode,                 o_row, o_col ) ;

    input clk ;
    input reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    output [7:0]o_col ;

    wire [7:0]i_0;
    wire [7:0]i_1;
    wire [7:0]i_2;
    wire [7:0]i_3;
    wire [7:0]r_max0;
    wire [9:0]r_max1;
    wire [8:0]r_add0_a;
    wire [8:0]r_add0_b;
    wire [9:0]r_add1_a;
    wire [9:0]r_add1_b;
    wire [12:0]r_add2;
    wire r_sub0_12_, r_sub0_11_, r_sub0_10_, r_sub0_9_, r_sub0_8_, r_sub0_7_;
    wire [3:0]dir1;
    wire [3:0]dir1_final;
    wire [2:0]dir2;
    wire [2:0]dir2_final;
    wire [3:0]stg_counter1;
    wire [3:0]stg_counter2;
    wire [1:0]max0_bit_counter;
    wire [1:0]max1_bit_counter;
    wire [7:0]address;
    wire [1:0]row_index;
    wire [7:0]row_count;
    wire [7:0]o_dataA;
    wire [7:0]o_dataB;
    wire [7:0]o_dataC;
    wire [7:0]c3;
    wire [7:0]d3;
    wire [7:0]e3;
    wire [7:0]a2;
    wire [7:0]h2;
    wire [7:0]g2;
    wire [7:0]a3;
    wire [7:0]h3;
    wire [7:0]g3;
    wire [8:0]r_add0_a_0n1s1;
    wire [9:0]r_add1_a_3n1s1;
    wire [12:0]r_add2_4n1s1;
    wire nx35286z4, r_sub0_6n1s1_14_, r_sub0_6n1s1_12_, r_sub0_6n1s1_11_, 
         r_sub0_6n1s1_10_, r_sub0_6n1s1_9_, r_sub0_6n1s1_8_, r_sub0_6n1s1_7_, 
         nx46696z1, nx35286z17, nx46696z9, nx46696z8, nx46696z7, nx46696z6, 
         nx46696z5, nx46696z4, nx46696z3, nx34393z1, nx3245z1, nx45960z1, 
         nx53964z1, nx4759z1, nx26389z1, nx7999z5, nx24330z1, nx6818z1, 
         nx56023z1, nx43901z1, nx28327z1, nx35286z27, nx35286z26, nx35286z25, 
         nx35286z24, nx35286z23, nx35286z22, nx35286z21, nx35286z20, nx35286z19, 
         nx35286z14, nx35286z13, nx35286z12, nx35286z11, nx35286z10, nx35286z9, 
         nx35286z8, nx35286z7, nx35286z6, inc_d_0_, nx27063z1, inc_d_1_, 
         nx39256z1, inc_d_2_, nx57428z1, inc_d_3_, nx16053z1, inc_d_4_, 
         nx58827z1, inc_d_5_, nx65057z1, inc_d_6_, nx7308z1, inc_d_7_, 
         inc_d_0__dup_2752, nx35624z1, inc_d_1__dup_2754, nx20050z1, 
         inc_d_2__dup_2756, nx61060z1, inc_d_3__dup_2758, nx29155z1, 
         inc_d_4__dup_2760, nx44729z1, inc_d_5__dup_2762, nx5233z1, 
         inc_d_6__dup_2764, nx62982z1, inc_d_7__dup_2766, nx64903z1, nx16964z1, 
         nx51352z1, nx63389z1, nx36535z1, nx5387z1, nx43818z1, nx3851z1, 
         nx27297z1, nx58445z1, nx23422z1, nx7726z1, nx56931z1, nx42993z1, 
         nx11845z1, nx31945z1, nx18017z1, nx2443z1, nx34348z1, nx46762z1, 
         nx12374z1, nx3957z1, nx27191z1, nx58339z1, nx23528z1, nx57916z1, 
         nx35286z5, nx35286z18, nx46696z2, nx63136z1, nx7975z1, nx46502z1, 
         nx40590z1, nx41587z1, nx42584z1, nx43581z1, nx44578z1, nx45575z1, 
         nx46572z1, nx47569z1, nx41784z1, nx40787z1, nx39790z1, nx38793z1, 
         nx37796z1, nx36799z1, nx35802z1, nx34805z1, GND, next_row_index_1_, PWR, 
         not_reset;
    wire [7:0]r_max0_1n2ss1;
    wire nx4406z3, nx53455z2, nx47569z9, nx7999z2;
    wire [9:0]r_max1_5n6ss1;
    wire nx35286z30, nx18188z1, nx35286z15, nx60567z1, nx42447z4, nx1448z2;
    wire [7:0]a2_9n22ss1;
    wire [7:0]h2_9n22ss1;
    wire [7:0]f3_9n22ss1;
    wire nx47569z5, nx44516z3, nx41525z2, nx52935z3, nx50941z3, nx34964z3, 
         nx47569z7, nx47085z5, nx41525z3, nx7397z2, nx4406z2, nx6400z2, nx1448z1, 
         nx35286z1, nx54113z1, nx44441z1, nx4013z3, nx43444z1, nx42447z1, 
         nx47085z4, nx47085z3, nx58785z3, nx46696z10, nx35286z28, nx4013z6, 
         nx7999z4, nx47085z10, nx47569z6, nx52935z2, nx7999z3, nx50941z7, 
         nx7999z1, nx44516z2, nx8437z1, nx51271z1;
    wire [9:0]r_add2_4n1s1f1;
    wire [12:1]r_add2_4n1s1f2;
    wire nx3016z2, nx2019z2, nx58785z2, nx44441z3, nx35286z16, nx43519z2, 
         nx42522z2, nx51938z2, nx22438z1, nx21441z1, nx25517z1, nx26514z1, 
         nx40485z1, nx39488z1, nx38491z1, nx59782z1, nx58785z1, nx43221z1, 
         nx44516z1, nx43519z1, nx42522z1, nx41525z1, nx52935z1, nx51938z1, 
         nx50941z1, nx49944z1, nx6400z1, nx4406z1, nx7397z1, nx5403z1, nx2019z1, 
         nx3016z1, nx4013z1, nx53455z1, nx54452z1, nx55449z1, nx56446z1, 
         nx50941z2, nx50941z4, nx41525z4, nx51271z3, nx51271z7, nx51271z2, 
         nx51271z6, nx51271z5, nx50941z6, nx50941z5, nx34964z4, nx34964z2, 
         nx35961z2, nx36958z2, nx37955z2, nx38952z2, nx39949z2, nx40946z2, 
         nx41943z2, nx29829z2, nx30826z2, nx31823z2, nx32820z2, nx33817z2, 
         nx34814z2, nx35811z2, nx36808z2, nx51271z4, nx43224z1, nx44221z1, 
         nx45218z1, nx46215z1, nx47212z1, nx48209z1, nx49206z1, nx50203z1, 
         nx39150z1, nx38153z1, nx37156z1, nx36159z1, nx35162z1, nx34165z1, 
         nx33168z1, nx32171z1, nx34964z1, nx35961z1, nx36958z1, nx37955z1, 
         nx38952z1, nx39949z1, nx40946z1, nx41943z1, nx29829z1, nx30826z1, 
         nx31823z1, nx32820z1, nx33817z1, nx34814z1, nx35811z1, nx36808z1, 
         nx4013z7, nx4013z4, nx4013z11, nx4013z10, nx4013z9, nx4013z8, nx42447z2, 
         nx47569z4, nx47569z8, nx47085z7, nx44441z2, nx47085z6, nx42447z3, 
         nx47569z3, nx47085z8, nx1448z3, nx18188z3, nx60567z2, nx4013z5, 
         nx35286z3, nx18188z2, nx35286z29, nx32171z4, nx18119z2, nx18119z1, 
         nx33168z4, nx17122z2, nx17122z1, nx34165z4, nx16125z2, nx16125z1, 
         nx35162z4, nx15128z2, nx15128z1, nx36159z4, nx14131z2, nx14131z1, 
         nx37156z4, nx13134z2, nx13134z1, nx38153z4, nx12137z2, nx12137z1, 
         nx39150z5, nx24694z2, nx24694z1, nx50203z4, nx54064z2, nx54064z1, 
         nx49206z4, nx53067z2, nx53067z1, nx48209z4, nx52070z2, nx52070z1, 
         nx47212z4, nx51073z2, nx51073z1, nx46215z4, nx50076z2, nx50076z1, 
         nx45218z4, nx49079z2, nx49079z1, nx44221z4, nx48082z2, nx48082z1, 
         nx47085z9, nx43224z4, nx39150z3, nx35286z2, nx47085z2, nx47085z1, 
         nx43224z3, nx43224z2, nx44221z3, nx44221z2, nx45218z3, nx45218z2, 
         nx46215z3, nx46215z2, nx47212z3, nx47212z2, nx48209z3, nx48209z2, 
         nx49206z3, nx49206z2, nx50203z3, nx50203z2, nx34805z2, nx35802z2, 
         nx36799z2, nx37796z2, nx38793z2, nx39790z2, nx40787z2, nx41784z2, 
         nx39150z4, nx39150z2, nx38153z3, nx38153z2, nx37156z3, nx37156z2, 
         nx36159z3, nx36159z2, nx35162z3, nx35162z2, nx34165z3, nx34165z2, 
         nx33168z3, nx33168z2, nx32171z3, nx32171z2, nx47569z2, nx46572z2, 
         nx45575z2, nx44578z2, nx43581z2, nx42584z2, nx41587z2, nx40590z2, 
         nx4013z2;
    wire [1838:0] xmplr_dummy ;




    ram_dq_8_0 mem (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               o_dataA[7],o_dataA[6],o_dataA[5],o_dataA[4],o_dataA[3],o_dataA[2]
               ,o_dataA[1],o_dataA[0]}), .addr1 ({address[7],address[6],
               address[5],address[4],address[3],address[2],address[1],address[0]
               }), .wr_clk1 (clk), .wr_ena1 (nx47085z4)) ;
    ram_dq_8_1 mem_0 (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               o_dataB[7],o_dataB[6],o_dataB[5],o_dataB[4],o_dataB[3],o_dataB[2]
               ,o_dataB[1],o_dataB[0]}), .addr1 ({address[7],address[6],
               address[5],address[4],address[3],address[2],address[1],address[0]
               }), .wr_clk1 (clk), .wr_ena1 (nx47085z3)) ;
    ram_dq_8_2 mem_1 (.wr_data1 ({i_pixel[7],i_pixel[6],i_pixel[5],i_pixel[4],
               i_pixel[3],i_pixel[2],i_pixel[1],i_pixel[0]}), .rd_data1 ({
               o_dataC[7],o_dataC[6],o_dataC[5],o_dataC[4],o_dataC[3],o_dataC[2]
               ,o_dataC[1],o_dataC[0]}), .addr1 ({address[7],address[6],
               address[5],address[4],address[3],address[2],address[1],address[0]
               }), .wr_clk1 (clk), .wr_ena1 (nx54113z1)) ;
    assign GND = 1'b0 ;
    assign PWR = 1'b1 ;
    assign not_reset = ~reset ;
    fiftyfivenm_lcell_comb ix2_fadd (.combout (inc_d_0_), .cout (nx27063z1), .dataa (
                           row_count[0]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR)) ;
                           defparam ix2_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix6_fadd (.combout (inc_d_1_), .cout (nx39256z1), .dataa (
                           row_count[1]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx27063z1)) ;
                           defparam ix6_fadd.lut_mask = 16'h5aa0;
                           defparam ix6_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix10_fadd (.combout (inc_d_2_), .cout (nx57428z1), .dataa (
                           row_count[2]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx39256z1)) ;
                           defparam ix10_fadd.lut_mask = 16'h5aa0;
                           defparam ix10_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix14_fadd (.combout (inc_d_3_), .cout (nx16053z1), .dataa (
                           row_count[3]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx57428z1)) ;
                           defparam ix14_fadd.lut_mask = 16'h5aa0;
                           defparam ix14_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2723_fadd (.combout (inc_d_4_), .cout (nx58827z1), 
                           .dataa (row_count[4]), .datab (1'b1), .datac (1'b1), 
                           .datad (PWR), .cin (nx16053z1)) ;
                           defparam ix2723_fadd.lut_mask = 16'h5aa0;
                           defparam ix2723_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix22_fadd (.combout (inc_d_5_), .cout (nx65057z1), .dataa (
                           row_count[5]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx58827z1)) ;
                           defparam ix22_fadd.lut_mask = 16'h5aa0;
                           defparam ix22_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2725_fadd (.combout (inc_d_6_), .cout (nx7308z1), .dataa (
                           row_count[6]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx65057z1)) ;
                           defparam ix2725_fadd.lut_mask = 16'h5aa0;
                           defparam ix2725_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2726_fadd (.combout (inc_d_7_), .dataa (
                           row_count[7]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx7308z1)) ;
                           defparam ix2726_fadd.lut_mask = 16'h5a5a;
                           defparam ix2726_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2733_fadd (.combout (inc_d_0__dup_2752), .cout (
                           nx35624z1), .dataa (address[0]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR)) ;
                           defparam ix2733_fadd.lut_mask = 16'h55aa;
    fiftyfivenm_lcell_comb ix2735_fadd (.combout (inc_d_1__dup_2754), .cout (
                           nx20050z1), .dataa (address[1]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx35624z1)) ;
                           defparam ix2735_fadd.lut_mask = 16'h5aa0;
                           defparam ix2735_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2737_fadd (.combout (inc_d_2__dup_2756), .cout (
                           nx61060z1), .dataa (address[2]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx20050z1)) ;
                           defparam ix2737_fadd.lut_mask = 16'h5aa0;
                           defparam ix2737_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2739_fadd (.combout (inc_d_3__dup_2758), .cout (
                           nx29155z1), .dataa (address[3]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx61060z1)) ;
                           defparam ix2739_fadd.lut_mask = 16'h5aa0;
                           defparam ix2739_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2741_fadd (.combout (inc_d_4__dup_2760), .cout (
                           nx44729z1), .dataa (address[4]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx29155z1)) ;
                           defparam ix2741_fadd.lut_mask = 16'h5aa0;
                           defparam ix2741_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2743_fadd (.combout (inc_d_5__dup_2762), .cout (
                           nx5233z1), .dataa (address[5]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx44729z1)) ;
                           defparam ix2743_fadd.lut_mask = 16'h5aa0;
                           defparam ix2743_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2745_fadd (.combout (inc_d_6__dup_2764), .cout (
                           nx62982z1), .dataa (address[6]), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx5233z1)) ;
                           defparam ix2745_fadd.lut_mask = 16'h5aa0;
                           defparam ix2745_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix2746_fadd (.combout (inc_d_7__dup_2766), .dataa (
                           address[7]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx62982z1)) ;
                           defparam ix2746_fadd.lut_mask = 16'h5a5a;
                           defparam ix2746_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7104 (.cout (nx46696z9), .dataa (i_3[0]), .datab (
                           i_2[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam ix46696z7104.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb ix46696z7103 (.cout (nx46696z8), .dataa (i_3[1]), .datab (
                           i_2[1]), .datac (1'b1), .datad (PWR), .cin (nx46696z9
                           )) ;
                           defparam ix46696z7103.lut_mask = 16'h00b2;
                           defparam ix46696z7103.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7102 (.cout (nx46696z7), .dataa (i_3[2]), .datab (
                           i_2[2]), .datac (1'b1), .datad (PWR), .cin (nx46696z8
                           )) ;
                           defparam ix46696z7102.lut_mask = 16'h00b2;
                           defparam ix46696z7102.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7101 (.cout (nx46696z6), .dataa (i_3[3]), .datab (
                           i_2[3]), .datac (1'b1), .datad (PWR), .cin (nx46696z7
                           )) ;
                           defparam ix46696z7101.lut_mask = 16'h00b2;
                           defparam ix46696z7101.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7100 (.cout (nx46696z5), .dataa (i_3[4]), .datab (
                           i_2[4]), .datac (1'b1), .datad (PWR), .cin (nx46696z6
                           )) ;
                           defparam ix46696z7100.lut_mask = 16'h00b2;
                           defparam ix46696z7100.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7099 (.cout (nx46696z4), .dataa (i_3[5]), .datab (
                           i_2[5]), .datac (1'b1), .datad (PWR), .cin (nx46696z5
                           )) ;
                           defparam ix46696z7099.lut_mask = 16'h00b2;
                           defparam ix46696z7099.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7098 (.cout (nx46696z3), .dataa (i_3[6]), .datab (
                           i_2[6]), .datac (1'b1), .datad (PWR), .cin (nx46696z4
                           )) ;
                           defparam ix46696z7098.lut_mask = 16'h00b2;
                           defparam ix46696z7098.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7097 (.cout (nx46696z2), .dataa (i_3[7]), .datab (
                           i_2[7]), .datac (1'b1), .datad (PWR), .cin (nx46696z3
                           )) ;
                           defparam ix46696z7097.lut_mask = 16'h00b2;
                           defparam ix46696z7097.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7122 (.cout (nx35286z27), .dataa (r_add1_a[0]
                           ), .datab (r_max1[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam ix35286z7122.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb ix35286z7121 (.cout (nx35286z26), .dataa (r_add1_a[1]
                           ), .datab (r_max1[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z27)) ;
                           defparam ix35286z7121.lut_mask = 16'h00b2;
                           defparam ix35286z7121.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7120 (.cout (nx35286z25), .dataa (r_add1_a[2]
                           ), .datab (r_max1[2]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z26)) ;
                           defparam ix35286z7120.lut_mask = 16'h00b2;
                           defparam ix35286z7120.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7119 (.cout (nx35286z24), .dataa (r_add1_a[3]
                           ), .datab (r_max1[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z25)) ;
                           defparam ix35286z7119.lut_mask = 16'h00b2;
                           defparam ix35286z7119.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7118 (.cout (nx35286z23), .dataa (r_add1_a[4]
                           ), .datab (r_max1[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z24)) ;
                           defparam ix35286z7118.lut_mask = 16'h00b2;
                           defparam ix35286z7118.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7117 (.cout (nx35286z22), .dataa (r_add1_a[5]
                           ), .datab (r_max1[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z23)) ;
                           defparam ix35286z7117.lut_mask = 16'h00b2;
                           defparam ix35286z7117.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7116 (.cout (nx35286z21), .dataa (r_add1_a[6]
                           ), .datab (r_max1[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z22)) ;
                           defparam ix35286z7116.lut_mask = 16'h00b2;
                           defparam ix35286z7116.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7115 (.cout (nx35286z20), .dataa (r_add1_a[7]
                           ), .datab (r_max1[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z21)) ;
                           defparam ix35286z7115.lut_mask = 16'h00b2;
                           defparam ix35286z7115.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7114 (.cout (nx35286z19), .dataa (r_add1_a[8]
                           ), .datab (r_max1[8]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z20)) ;
                           defparam ix35286z7114.lut_mask = 16'h00b2;
                           defparam ix35286z7114.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7113 (.cout (nx35286z18), .dataa (r_add1_a[9]
                           ), .datab (r_max1[9]), .datac (1'b1), .datad (PWR), .cin (
                           nx35286z19)) ;
                           defparam ix35286z7113.lut_mask = 16'h00b2;
                           defparam ix35286z7113.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7109 (.cout (nx35286z14), .dataa (r_add1_a[0]
                           ), .datab (r_add1_b[0]), .datac (1'b1), .datad (PWR)
                           ) ;
                           defparam ix35286z7109.lut_mask = 16'h0022;
    fiftyfivenm_lcell_comb ix35286z7108 (.cout (nx35286z13), .dataa (r_add1_a[1]
                           ), .datab (r_add1_b[1]), .datac (1'b1), .datad (PWR)
                           , .cin (nx35286z14)) ;
                           defparam ix35286z7108.lut_mask = 16'h00b2;
                           defparam ix35286z7108.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7107 (.cout (nx35286z12), .dataa (r_add1_a[2]
                           ), .datab (r_add1_b[2]), .datac (1'b1), .datad (PWR)
                           , .cin (nx35286z13)) ;
                           defparam ix35286z7107.lut_mask = 16'h00b2;
                           defparam ix35286z7107.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7106 (.cout (nx35286z11), .dataa (r_add1_a[3]
                           ), .datab (r_add1_b[3]), .datac (1'b1), .datad (PWR)
                           , .cin (nx35286z12)) ;
                           defparam ix35286z7106.lut_mask = 16'h00b2;
                           defparam ix35286z7106.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7105 (.cout (nx35286z10), .dataa (r_add1_a[4]
                           ), .datab (r_add1_b[4]), .datac (1'b1), .datad (PWR)
                           , .cin (nx35286z11)) ;
                           defparam ix35286z7105.lut_mask = 16'h00b2;
                           defparam ix35286z7105.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7104 (.cout (nx35286z9), .dataa (r_add1_a[5])
                           , .datab (r_add1_b[5]), .datac (1'b1), .datad (PWR), 
                           .cin (nx35286z10)) ;
                           defparam ix35286z7104.lut_mask = 16'h00b2;
                           defparam ix35286z7104.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7103 (.cout (nx35286z8), .dataa (r_add1_a[6])
                           , .datab (r_add1_b[6]), .datac (1'b1), .datad (PWR), 
                           .cin (nx35286z9)) ;
                           defparam ix35286z7103.lut_mask = 16'h00b2;
                           defparam ix35286z7103.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7102 (.cout (nx35286z7), .dataa (r_add1_a[7])
                           , .datab (r_add1_b[7]), .datac (1'b1), .datad (PWR), 
                           .cin (nx35286z8)) ;
                           defparam ix35286z7102.lut_mask = 16'h00b2;
                           defparam ix35286z7102.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7101 (.cout (nx35286z6), .dataa (r_add1_a[8])
                           , .datab (r_add1_b[8]), .datac (1'b1), .datad (PWR), 
                           .cin (nx35286z7)) ;
                           defparam ix35286z7101.lut_mask = 16'h00b2;
                           defparam ix35286z7101.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7100 (.cout (nx35286z5), .dataa (r_add1_a[9])
                           , .datab (r_add1_b[9]), .datac (1'b1), .datad (PWR), 
                           .cin (nx35286z6)) ;
                           defparam ix35286z7100.lut_mask = 16'h004d;
                           defparam ix35286z7100.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix35_fadd (.combout (
                           r_add0_a_0n1s1[0]), .cout (nx64903z1), .dataa (i_0[0]
                           ), .datab (i_1[0]), .datac (1'b1), .datad (PWR)) ;
                           defparam r_add0_a_add8_0i1_ix35_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix39_fadd (.combout (
                           r_add0_a_0n1s1[1]), .cout (nx16964z1), .dataa (i_0[1]
                           ), .datab (i_1[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx64903z1)) ;
                           defparam r_add0_a_add8_0i1_ix39_fadd.lut_mask = 16'h96e8;
                           defparam r_add0_a_add8_0i1_ix39_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix43_fadd (.combout (
                           r_add0_a_0n1s1[2]), .cout (nx51352z1), .dataa (i_0[2]
                           ), .datab (i_1[2]), .datac (1'b1), .datad (PWR), .cin (
                           nx16964z1)) ;
                           defparam r_add0_a_add8_0i1_ix43_fadd.lut_mask = 16'h96e8;
                           defparam r_add0_a_add8_0i1_ix43_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix47_fadd (.combout (
                           r_add0_a_0n1s1[3]), .cout (nx63389z1), .dataa (i_0[3]
                           ), .datab (i_1[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx51352z1)) ;
                           defparam r_add0_a_add8_0i1_ix47_fadd.lut_mask = 16'h96e8;
                           defparam r_add0_a_add8_0i1_ix47_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix51_fadd (.combout (
                           r_add0_a_0n1s1[4]), .cout (nx36535z1), .dataa (i_0[4]
                           ), .datab (i_1[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx63389z1)) ;
                           defparam r_add0_a_add8_0i1_ix51_fadd.lut_mask = 16'h96e8;
                           defparam r_add0_a_add8_0i1_ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix55_fadd (.combout (
                           r_add0_a_0n1s1[5]), .cout (nx5387z1), .dataa (i_0[5])
                           , .datab (i_1[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx36535z1)) ;
                           defparam r_add0_a_add8_0i1_ix55_fadd.lut_mask = 16'h96e8;
                           defparam r_add0_a_add8_0i1_ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix59_fadd (.combout (
                           r_add0_a_0n1s1[6]), .cout (nx43818z1), .dataa (i_0[6]
                           ), .datab (i_1[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx5387z1)) ;
                           defparam r_add0_a_add8_0i1_ix59_fadd.lut_mask = 16'h96e8;
                           defparam r_add0_a_add8_0i1_ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix63_fadd (.combout (
                           r_add0_a_0n1s1[7]), .cout (nx46502z1), .dataa (i_0[7]
                           ), .datab (i_1[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx43818z1)) ;
                           defparam r_add0_a_add8_0i1_ix63_fadd.lut_mask = 16'h96e8;
                           defparam r_add0_a_add8_0i1_ix63_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix37_fadd (.combout (
                           r_add1_a_3n1s1[0]), .cout (nx3851z1), .dataa (
                           r_max0[0]), .datab (r_add0_a[0]), .datac (1'b1), .datad (
                           PWR)) ;
                           defparam r_add1_a_add9_3i1_ix37_fadd.lut_mask = 16'h6688;
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix41_fadd (.combout (
                           r_add1_a_3n1s1[1]), .cout (nx27297z1), .dataa (
                           r_max0[1]), .datab (r_add0_a[1]), .datac (1'b1), .datad (
                           PWR), .cin (nx3851z1)) ;
                           defparam r_add1_a_add9_3i1_ix41_fadd.lut_mask = 16'h96e8;
                           defparam r_add1_a_add9_3i1_ix41_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix45_fadd (.combout (
                           r_add1_a_3n1s1[2]), .cout (nx58445z1), .dataa (
                           r_max0[2]), .datab (r_add0_a[2]), .datac (1'b1), .datad (
                           PWR), .cin (nx27297z1)) ;
                           defparam r_add1_a_add9_3i1_ix45_fadd.lut_mask = 16'h96e8;
                           defparam r_add1_a_add9_3i1_ix45_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix49_fadd (.combout (
                           r_add1_a_3n1s1[3]), .cout (nx23422z1), .dataa (
                           r_max0[3]), .datab (r_add0_a[3]), .datac (1'b1), .datad (
                           PWR), .cin (nx58445z1)) ;
                           defparam r_add1_a_add9_3i1_ix49_fadd.lut_mask = 16'h96e8;
                           defparam r_add1_a_add9_3i1_ix49_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix53_fadd (.combout (
                           r_add1_a_3n1s1[4]), .cout (nx7726z1), .dataa (
                           r_max0[4]), .datab (r_add0_a[4]), .datac (1'b1), .datad (
                           PWR), .cin (nx23422z1)) ;
                           defparam r_add1_a_add9_3i1_ix53_fadd.lut_mask = 16'h96e8;
                           defparam r_add1_a_add9_3i1_ix53_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix57_fadd (.combout (
                           r_add1_a_3n1s1[5]), .cout (nx56931z1), .dataa (
                           r_max0[5]), .datab (r_add0_a[5]), .datac (1'b1), .datad (
                           PWR), .cin (nx7726z1)) ;
                           defparam r_add1_a_add9_3i1_ix57_fadd.lut_mask = 16'h96e8;
                           defparam r_add1_a_add9_3i1_ix57_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix61_fadd (.combout (
                           r_add1_a_3n1s1[6]), .cout (nx42993z1), .dataa (
                           r_max0[6]), .datab (r_add0_a[6]), .datac (1'b1), .datad (
                           PWR), .cin (nx56931z1)) ;
                           defparam r_add1_a_add9_3i1_ix61_fadd.lut_mask = 16'h96e8;
                           defparam r_add1_a_add9_3i1_ix61_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix65_fadd (.combout (
                           r_add1_a_3n1s1[7]), .cout (nx11845z1), .dataa (
                           r_max0[7]), .datab (r_add0_a[7]), .datac (1'b1), .datad (
                           PWR), .cin (nx42993z1)) ;
                           defparam r_add1_a_add9_3i1_ix65_fadd.lut_mask = 16'h96e8;
                           defparam r_add1_a_add9_3i1_ix65_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix69_fadd (.combout (
                           r_add1_a_3n1s1[8]), .cout (nx7975z1), .dataa (
                           r_add0_a[8]), .datab (1'b1), .datac (1'b1), .datad (
                           PWR), .cin (nx11845z1)) ;
                           defparam r_add1_a_add9_3i1_ix69_fadd.lut_mask = 16'h5aa0;
                           defparam r_add1_a_add9_3i1_ix69_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix22_fadd (.cout (nx31945z1), .dataa (
                           r_add2[1]), .datab (r_add2[0]), .datac (1'b1), .datad (
                           PWR)) ;
                           defparam r_sub0_sub13_6i1_ix22_fadd.lut_mask = 16'h0011;
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix24_fadd (.cout (nx18017z1), .dataa (
                           r_add2[2]), .datab (1'b1), .datac (1'b1), .datad (PWR
                           ), .cin (nx31945z1)) ;
                           defparam r_sub0_sub13_6i1_ix24_fadd.lut_mask = 16'h0050;
                           defparam r_sub0_sub13_6i1_ix24_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix26_fadd (.cout (nx2443z1), .dataa (
                           r_max1[0]), .datab (r_add2[3]), .datac (1'b1), .datad (
                           PWR), .cin (nx18017z1)) ;
                           defparam r_sub0_sub13_6i1_ix26_fadd.lut_mask = 16'h00b2;
                           defparam r_sub0_sub13_6i1_ix26_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix28_fadd (.cout (nx34348z1), .dataa (
                           r_max1[1]), .datab (r_add2[4]), .datac (1'b1), .datad (
                           PWR), .cin (nx2443z1)) ;
                           defparam r_sub0_sub13_6i1_ix28_fadd.lut_mask = 16'h00b2;
                           defparam r_sub0_sub13_6i1_ix28_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix30_fadd (.cout (nx46762z1), .dataa (
                           r_max1[2]), .datab (r_add2[5]), .datac (1'b1), .datad (
                           PWR), .cin (nx34348z1)) ;
                           defparam r_sub0_sub13_6i1_ix30_fadd.lut_mask = 16'h00b2;
                           defparam r_sub0_sub13_6i1_ix30_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix32_fadd (.cout (nx12374z1), .dataa (
                           r_max1[3]), .datab (r_add2[6]), .datac (1'b1), .datad (
                           PWR), .cin (nx46762z1)) ;
                           defparam r_sub0_sub13_6i1_ix32_fadd.lut_mask = 16'h00b2;
                           defparam r_sub0_sub13_6i1_ix32_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix36_fadd (.combout (r_sub0_6n1s1_7_
                           ), .cout (nx3957z1), .dataa (r_max1[4]), .datab (
                           r_add2[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx12374z1)) ;
                           defparam r_sub0_sub13_6i1_ix36_fadd.lut_mask = 16'h69b2;
                           defparam r_sub0_sub13_6i1_ix36_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix40_fadd (.combout (r_sub0_6n1s1_8_
                           ), .cout (nx27191z1), .dataa (r_max1[5]), .datab (
                           r_add2[8]), .datac (1'b1), .datad (PWR), .cin (
                           nx3957z1)) ;
                           defparam r_sub0_sub13_6i1_ix40_fadd.lut_mask = 16'h69b2;
                           defparam r_sub0_sub13_6i1_ix40_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix44_fadd (.combout (r_sub0_6n1s1_9_
                           ), .cout (nx58339z1), .dataa (r_max1[6]), .datab (
                           r_add2[9]), .datac (1'b1), .datad (PWR), .cin (
                           nx27191z1)) ;
                           defparam r_sub0_sub13_6i1_ix44_fadd.lut_mask = 16'h69b2;
                           defparam r_sub0_sub13_6i1_ix44_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix48_fadd (.combout (
                           r_sub0_6n1s1_10_), .cout (nx23528z1), .dataa (
                           r_max1[7]), .datab (r_add2[10]), .datac (1'b1), .datad (
                           PWR), .cin (nx58339z1)) ;
                           defparam r_sub0_sub13_6i1_ix48_fadd.lut_mask = 16'h69b2;
                           defparam r_sub0_sub13_6i1_ix48_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix52_fadd (.combout (
                           r_sub0_6n1s1_11_), .cout (nx57916z1), .dataa (
                           r_max1[8]), .datab (r_add2[11]), .datac (1'b1), .datad (
                           PWR), .cin (nx23528z1)) ;
                           defparam r_sub0_sub13_6i1_ix52_fadd.lut_mask = 16'h69b2;
                           defparam r_sub0_sub13_6i1_ix52_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix56_fadd (.combout (
                           r_sub0_6n1s1_12_), .cout (nx63136z1), .dataa (
                           r_max1[9]), .datab (r_add2[12]), .datac (1'b1), .datad (
                           PWR), .cin (nx57916z1)) ;
                           defparam r_sub0_sub13_6i1_ix56_fadd.lut_mask = 16'h694d;
                           defparam r_sub0_sub13_6i1_ix56_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix51_fadd (.combout (r_add2_4n1s1[0]
                           ), .cout (nx34393z1), .dataa (nx7999z2), .datab (
                           r_add2_4n1s1f1[0]), .datac (1'b1), .datad (PWR), .cin (
                           r_add0_a[0])) ;
                           defparam r_add2_add13_4i1_ix51_fadd.lut_mask = 16'h9c40;
                           defparam r_add2_add13_4i1_ix51_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix55_fadd (.combout (r_add2_4n1s1[1]
                           ), .cout (nx3245z1), .dataa (r_add2_4n1s1f1[1]), .datab (
                           r_add2_4n1s1f2[1]), .datac (1'b1), .datad (PWR), .cin (
                           nx34393z1)) ;
                           defparam r_add2_add13_4i1_ix55_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix55_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix59_fadd (.combout (r_add2_4n1s1[2]
                           ), .cout (nx45960z1), .dataa (r_add2_4n1s1f1[2]), .datab (
                           r_add2_4n1s1f2[2]), .datac (1'b1), .datad (PWR), .cin (
                           nx3245z1)) ;
                           defparam r_add2_add13_4i1_ix59_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix59_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix63_fadd (.combout (r_add2_4n1s1[3]
                           ), .cout (nx53964z1), .dataa (r_add2_4n1s1f1[3]), .datab (
                           r_add2_4n1s1f2[3]), .datac (1'b1), .datad (PWR), .cin (
                           nx45960z1)) ;
                           defparam r_add2_add13_4i1_ix63_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix63_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix67_fadd (.combout (r_add2_4n1s1[4]
                           ), .cout (nx4759z1), .dataa (r_add2_4n1s1f1[4]), .datab (
                           r_add2_4n1s1f2[4]), .datac (1'b1), .datad (PWR), .cin (
                           nx53964z1)) ;
                           defparam r_add2_add13_4i1_ix67_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix67_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix71_fadd (.combout (r_add2_4n1s1[5]
                           ), .cout (nx26389z1), .dataa (r_add2_4n1s1f1[5]), .datab (
                           r_add2_4n1s1f2[5]), .datac (1'b1), .datad (PWR), .cin (
                           nx4759z1)) ;
                           defparam r_add2_add13_4i1_ix71_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix71_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix75_fadd (.combout (r_add2_4n1s1[6]
                           ), .cout (nx7999z5), .dataa (r_add2_4n1s1f1[6]), .datab (
                           r_add2_4n1s1f2[6]), .datac (1'b1), .datad (PWR), .cin (
                           nx26389z1)) ;
                           defparam r_add2_add13_4i1_ix75_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix75_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix79_fadd (.combout (r_add2_4n1s1[7]
                           ), .cout (nx24330z1), .dataa (r_add2_4n1s1f1[7]), .datab (
                           r_add2_4n1s1f2[7]), .datac (1'b1), .datad (PWR), .cin (
                           nx7999z5)) ;
                           defparam r_add2_add13_4i1_ix79_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix79_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix83_fadd (.combout (r_add2_4n1s1[8]
                           ), .cout (nx6818z1), .dataa (r_add2_4n1s1f1[8]), .datab (
                           r_add2_4n1s1f2[8]), .datac (1'b1), .datad (PWR), .cin (
                           nx24330z1)) ;
                           defparam r_add2_add13_4i1_ix83_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix83_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix87_fadd (.combout (r_add2_4n1s1[9]
                           ), .cout (nx56023z1), .dataa (r_add2_4n1s1f1[9]), .datab (
                           r_add2_4n1s1f2[9]), .datac (1'b1), .datad (PWR), .cin (
                           nx6818z1)) ;
                           defparam r_add2_add13_4i1_ix87_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix87_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix91_fadd (.combout (
                           r_add2_4n1s1[10]), .cout (nx43901z1), .dataa (
                           r_add2[10]), .datab (r_add2_4n1s1f2[10]), .datac (
                           1'b1), .datad (PWR), .cin (nx56023z1)) ;
                           defparam r_add2_add13_4i1_ix91_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix91_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix95_fadd (.combout (
                           r_add2_4n1s1[11]), .cout (nx28327z1), .dataa (
                           r_add2[11]), .datab (r_add2_4n1s1f2[11]), .datac (
                           1'b1), .datad (PWR), .cin (nx43901z1)) ;
                           defparam r_add2_add13_4i1_ix95_fadd.lut_mask = 16'h96e8;
                           defparam r_add2_add13_4i1_ix95_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add2_add13_4i1_ix97_fadd (.combout (
                           r_add2_4n1s1[12]), .dataa (r_add2[12]), .datab (
                           r_add2_4n1s1f2[12]), .datac (1'b1), .datad (PWR), .cin (
                           nx28327z1)) ;
                           defparam r_add2_add13_4i1_ix97_fadd.lut_mask = 16'h9696;
                           defparam r_add2_add13_4i1_ix97_fadd.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7099 (.combout (nx35286z4), .dataa (1'b1), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx35286z5)
                           ) ;
                           defparam ix35286z7099.lut_mask = 16'hf0f0;
                           defparam ix35286z7099.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix35286z7112 (.combout (nx35286z17), .dataa (1'b1), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx35286z18)
                           ) ;
                           defparam ix35286z7112.lut_mask = 16'hf0f0;
                           defparam ix35286z7112.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb ix46696z7096 (.combout (nx46696z1), .dataa (1'b1), .datab (
                           1'b1), .datac (1'b1), .datad (PWR), .cin (nx46696z2)
                           ) ;
                           defparam ix46696z7096.lut_mask = 16'hf0f0;
                           defparam ix46696z7096.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_sub0_sub13_6i1_ix56_fadd_buf (.combout (
                           r_sub0_6n1s1_14_), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx63136z1)) ;
                           defparam r_sub0_sub13_6i1_ix56_fadd_buf.lut_mask = 16'hf0f0;
                           defparam r_sub0_sub13_6i1_ix56_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add1_a_add9_3i1_ix69_fadd_buf (.combout (
                           r_add1_a_3n1s1[9]), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx7975z1)) ;
                           defparam r_add1_a_add9_3i1_ix69_fadd_buf.lut_mask = 16'hf0f0;
                           defparam r_add1_a_add9_3i1_ix69_fadd_buf.sum_lutc_input = "cin";
    fiftyfivenm_lcell_comb r_add0_a_add8_0i1_ix63_fadd_buf (.combout (
                           r_add0_a_0n1s1[8]), .dataa (1'b1), .datab (1'b1), .datac (
                           1'b1), .datad (PWR), .cin (nx46502z1)) ;
                           defparam r_add0_a_add8_0i1_ix63_fadd_buf.lut_mask = 16'hf0f0;
                           defparam r_add0_a_add8_0i1_ix63_fadd_buf.sum_lutc_input = "cin";
    dffeas reg_i_3_7_ (.q (i_3[7]), .d (nx43224z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_3_6_ (.q (i_3[6]), .d (nx44221z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_3_5_ (.q (i_3[5]), .d (nx45218z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_3_4_ (.q (i_3[4]), .d (nx46215z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_3_3_ (.q (i_3[3]), .d (nx47212z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_3_2_ (.q (i_3[2]), .d (nx48209z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_3_1_ (.q (i_3[1]), .d (nx49206z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_3_0_ (.q (i_3[0]), .d (nx50203z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_2_7_ (.q (i_2[7]), .d (nx34805z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[7]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_2_6_ (.q (i_2[6]), .d (nx35802z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[6]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_2_5_ (.q (i_2[5]), .d (nx36799z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[5]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_2_4_ (.q (i_2[4]), .d (nx37796z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[4]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_2_3_ (.q (i_2[3]), .d (nx38793z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[3]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_2_2_ (.q (i_2[2]), .d (nx39790z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[2]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_2_1_ (.q (i_2[1]), .d (nx40787z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[1]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_2_0_ (.q (i_2[0]), .d (nx41784z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a3[0]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_1_7_ (.q (i_1[7]), .d (nx39150z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_1_6_ (.q (i_1[6]), .d (nx38153z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_1_5_ (.q (i_1[5]), .d (nx37156z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_1_4_ (.q (i_1[4]), .d (nx36159z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_1_3_ (.q (i_1[3]), .d (nx35162z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_1_2_ (.q (i_1[2]), .d (nx34165z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_1_1_ (.q (i_1[1]), .d (nx33168z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_1_0_ (.q (i_1[0]), .d (nx32171z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_i_0_7_ (.q (i_0[7]), .d (nx47569z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[7]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_0_6_ (.q (i_0[6]), .d (nx46572z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[6]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_0_5_ (.q (i_0[5]), .d (nx45575z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[5]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_0_4_ (.q (i_0[4]), .d (nx44578z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[4]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_0_3_ (.q (i_0[3]), .d (nx43581z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[3]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_0_2_ (.q (i_0[2]), .d (nx42584z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[2]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_0_1_ (.q (i_0[1]), .d (nx41587z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[1]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_i_0_0_ (.q (i_0[0]), .d (nx40590z1), .clk (clk), .ena (nx47569z7)
           , .clrn (PWR), .prn (PWR), .asdata (a2[0]), .sclr (1'b0), .sload (
           i_valid)) ;
    dffeas reg_d3_7_ (.q (d3[7]), .d (nx34964z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_d3_6_ (.q (d3[6]), .d (nx35961z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_d3_5_ (.q (d3[5]), .d (nx36958z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_d3_4_ (.q (d3[4]), .d (nx37955z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_d3_3_ (.q (d3[3]), .d (nx38952z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_d3_2_ (.q (d3[2]), .d (nx39949z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_d3_1_ (.q (d3[1]), .d (nx40946z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_d3_0_ (.q (d3[0]), .d (nx41943z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_7_ (.q (c3[7]), .d (nx29829z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_6_ (.q (c3[6]), .d (nx30826z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_5_ (.q (c3[5]), .d (nx31823z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_4_ (.q (c3[4]), .d (nx32820z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_3_ (.q (c3[3]), .d (nx33817z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_2_ (.q (c3[2]), .d (nx34814z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_1_ (.q (c3[1]), .d (nx35811z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_c3_0_ (.q (c3[0]), .d (nx36808z1), .clk (clk), .ena (nx34964z3), 
           .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_dir1_final_3_ (.q (dir1_final[3]), .d (nx56446z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir1_final_2_ (.q (dir1_final[2]), .d (nx55449z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir1_final_1_ (.q (dir1_final[1]), .d (nx54452z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir1_final_0_ (.q (dir1_final[0]), .d (nx53455z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir2_0_ (.q (dir2[0]), .d (nx4013z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir2_1_ (.q (dir2[1]), .d (nx3016z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir2_2_ (.q (dir2[2]), .d (nx2019z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir1_1_ (.q (dir1[1]), .d (nx5403z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir1_3_ (.q (dir1[3]), .d (nx7397z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir1_0_ (.q (dir1[0]), .d (nx4406z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_dir1_2_ (.q (dir1[2]), .d (nx6400z1), .clk (clk), .ena (PWR), .clrn (
           PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_o_mode_1_ (.q (o_mode[1]), .d (not_reset), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_o_mode_0_ (.q (o_mode[0]), .d (nx43221z1), .clk (clk), .ena (PWR)
           , .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (1'b0)
           ) ;
    dffeas reg_row_index_0_ (.q (row_index[0]), .d (nx58785z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_row_index_1_ (.q (row_index[1]), .d (nx59782z1), .clk (clk), .ena (
           PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_12_ (.q (r_add2[12]), .d (nx38491z1), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_11_ (.q (r_add2[11]), .d (nx39488z1), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_10_ (.q (r_add2[10]), .d (nx40485z1), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_max0_bit_counter_1_ (.q (max0_bit_counter[1]), .d (nx26514z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas reg_max0_bit_counter_0_ (.q (max0_bit_counter[0]), .d (nx25517z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas reg_max1_bit_counter_1_ (.q (max1_bit_counter[1]), .d (nx21441z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas reg_max1_bit_counter_0_ (.q (max1_bit_counter[0]), .d (nx22438z1), .clk (
           clk), .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0
           ), .sload (1'b0)) ;
    dffeas reg_stg_counter2_3_ (.q (stg_counter2[3]), .d (nx49944z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_stg_counter2_2_ (.q (stg_counter2[2]), .d (nx50941z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_stg_counter2_1_ (.q (stg_counter2[1]), .d (nx51938z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_stg_counter2_0_ (.q (stg_counter2[0]), .d (nx52935z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_stg_counter1_3_ (.q (stg_counter1[3]), .d (nx41525z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_stg_counter1_2_ (.q (stg_counter1[2]), .d (nx42522z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_stg_counter1_1_ (.q (stg_counter1[1]), .d (nx43519z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_stg_counter1_0_ (.q (stg_counter1[0]), .d (nx44516z1), .clk (clk)
           , .ena (PWR), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_q_7_ (.q (row_count[7]), .d (inc_d_7_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_6_ (.q (row_count[6]), .d (inc_d_6_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_5_ (.q (row_count[5]), .d (inc_d_5_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_4_ (.q (row_count[4]), .d (inc_d_4_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_3_ (.q (row_count[3]), .d (inc_d_3_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_2_ (.q (row_count[2]), .d (inc_d_2_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_1_ (.q (row_count[1]), .d (inc_d_1_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_0_ (.q (row_count[0]), .d (inc_d_0_), .clk (clk), .ena (
           nx51271z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (nx51271z4)
           , .sload (GND)) ;
    dffeas reg_q_7__dup_0 (.q (address[7]), .d (inc_d_7__dup_2766), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_q_6__dup_1 (.q (address[6]), .d (inc_d_6__dup_2764), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_q_5__dup_2 (.q (address[5]), .d (inc_d_5__dup_2762), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_q_4__dup_3 (.q (address[4]), .d (inc_d_4__dup_2760), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_q_3__dup_4 (.q (address[3]), .d (inc_d_3__dup_2758), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_q_2__dup_5 (.q (address[2]), .d (inc_d_2__dup_2756), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_q_1__dup_6 (.q (address[1]), .d (inc_d_1__dup_2754), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_q_0__dup_7 (.q (address[0]), .d (inc_d_0__dup_2752), .clk (clk), 
           .ena (nx8437z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           nx51271z1), .sload (GND)) ;
    dffeas reg_r_sub0_12_ (.q (r_sub0_12_), .d (r_sub0_6n1s1_12_), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           r_sub0_6n1s1_14_), .sload (GND)) ;
    dffeas reg_r_sub0_11_ (.q (r_sub0_11_), .d (r_sub0_6n1s1_11_), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           r_sub0_6n1s1_14_), .sload (GND)) ;
    dffeas reg_r_sub0_10_ (.q (r_sub0_10_), .d (r_sub0_6n1s1_10_), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           r_sub0_6n1s1_14_), .sload (GND)) ;
    dffeas reg_r_sub0_9_ (.q (r_sub0_9_), .d (r_sub0_6n1s1_9_), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           r_sub0_6n1s1_14_), .sload (GND)) ;
    dffeas reg_r_sub0_8_ (.q (r_sub0_8_), .d (r_sub0_6n1s1_8_), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           r_sub0_6n1s1_14_), .sload (GND)) ;
    dffeas reg_r_sub0_7_ (.q (r_sub0_7_), .d (r_sub0_6n1s1_7_), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (GND), .sclr (
           r_sub0_6n1s1_14_), .sload (GND)) ;
    dffeas reg_r_add0_a_8_ (.q (r_add0_a[8]), .d (r_add0_a_0n1s1[8]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_7_ (.q (r_add0_a[7]), .d (r_add0_a_0n1s1[7]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_6_ (.q (r_add0_a[6]), .d (r_add0_a_0n1s1[6]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_5_ (.q (r_add0_a[5]), .d (r_add0_a_0n1s1[5]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_4_ (.q (r_add0_a[4]), .d (r_add0_a_0n1s1[4]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_3_ (.q (r_add0_a[3]), .d (r_add0_a_0n1s1[3]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_2_ (.q (r_add0_a[2]), .d (r_add0_a_0n1s1[2]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_1_ (.q (r_add0_a[1]), .d (r_add0_a_0n1s1[1]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add0_a_0_ (.q (r_add0_a[0]), .d (r_add0_a_0n1s1[0]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_max0_7_ (.q (r_max0[7]), .d (r_max0_1n2ss1[7]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max0_6_ (.q (r_max0[6]), .d (r_max0_1n2ss1[6]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max0_5_ (.q (r_max0[5]), .d (r_max0_1n2ss1[5]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max0_4_ (.q (r_max0[4]), .d (r_max0_1n2ss1[4]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max0_3_ (.q (r_max0[3]), .d (r_max0_1n2ss1[3]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max0_2_ (.q (r_max0[2]), .d (r_max0_1n2ss1[2]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max0_1_ (.q (r_max0[1]), .d (r_max0_1n2ss1[1]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max0_0_ (.q (r_max0[0]), .d (r_max0_1n2ss1[0]), .clk (clk), .ena (
           nx46696z10), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_8_ (.q (r_add0_b[8]), .d (r_add0_a[8]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_7_ (.q (r_add0_b[7]), .d (r_add0_a[7]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_6_ (.q (r_add0_b[6]), .d (r_add0_a[6]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_5_ (.q (r_add0_b[5]), .d (r_add0_a[5]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_4_ (.q (r_add0_b[4]), .d (r_add0_a[4]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_3_ (.q (r_add0_b[3]), .d (r_add0_a[3]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_2_ (.q (r_add0_b[2]), .d (r_add0_a[2]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_1_ (.q (r_add0_b[1]), .d (r_add0_a[1]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add0_b_0_ (.q (r_add0_b[0]), .d (r_add0_a[0]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_a_9_ (.q (r_add1_a[9]), .d (r_add1_a_3n1s1[9]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_8_ (.q (r_add1_a[8]), .d (r_add1_a_3n1s1[8]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_7_ (.q (r_add1_a[7]), .d (r_add1_a_3n1s1[7]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_6_ (.q (r_add1_a[6]), .d (r_add1_a_3n1s1[6]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_5_ (.q (r_add1_a[5]), .d (r_add1_a_3n1s1[5]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_4_ (.q (r_add1_a[4]), .d (r_add1_a_3n1s1[4]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_3_ (.q (r_add1_a[3]), .d (r_add1_a_3n1s1[3]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_2_ (.q (r_add1_a[2]), .d (r_add1_a_3n1s1[2]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_1_ (.q (r_add1_a[1]), .d (r_add1_a_3n1s1[1]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add1_a_0_ (.q (r_add1_a[0]), .d (r_add1_a_3n1s1[0]), .clk (clk)
           , .ena (not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (
           1'b0), .sload (1'b0)) ;
    dffeas reg_r_add2_9_ (.q (r_add2[9]), .d (r_add2_4n1s1[9]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_8_ (.q (r_add2[8]), .d (r_add2_4n1s1[8]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_7_ (.q (r_add2[7]), .d (r_add2_4n1s1[7]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_6_ (.q (r_add2[6]), .d (r_add2_4n1s1[6]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_5_ (.q (r_add2[5]), .d (r_add2_4n1s1[5]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_4_ (.q (r_add2[4]), .d (r_add2_4n1s1[4]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_3_ (.q (r_add2[3]), .d (r_add2_4n1s1[3]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_2_ (.q (r_add2[2]), .d (r_add2_4n1s1[2]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_1_ (.q (r_add2[1]), .d (r_add2_4n1s1[1]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add2_0_ (.q (r_add2[0]), .d (r_add2_4n1s1[0]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_9_ (.q (r_max1[9]), .d (r_max1_5n6ss1[9]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_8_ (.q (r_max1[8]), .d (r_max1_5n6ss1[8]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_7_ (.q (r_max1[7]), .d (r_max1_5n6ss1[7]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_6_ (.q (r_max1[6]), .d (r_max1_5n6ss1[6]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_5_ (.q (r_max1[5]), .d (r_max1_5n6ss1[5]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_4_ (.q (r_max1[4]), .d (r_max1_5n6ss1[4]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_3_ (.q (r_max1[3]), .d (r_max1_5n6ss1[3]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_2_ (.q (r_max1[2]), .d (r_max1_5n6ss1[2]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_1_ (.q (r_max1[1]), .d (r_max1_5n6ss1[1]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_max1_0_ (.q (r_max1[0]), .d (r_max1_5n6ss1[0]), .clk (clk), .ena (
           nx35286z15), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir2_final_2_ (.q (dir2_final[2]), .d (dir2[2]), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir2_final_1_ (.q (dir2_final[1]), .d (dir2[1]), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_dir2_final_0_ (.q (dir2_final[0]), .d (dir2[0]), .clk (clk), .ena (
           nx18188z1), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_9_ (.q (r_add1_b[9]), .d (r_add1_a[9]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_8_ (.q (r_add1_b[8]), .d (r_add1_a[8]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_7_ (.q (r_add1_b[7]), .d (r_add1_a[7]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_6_ (.q (r_add1_b[6]), .d (r_add1_a[6]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_5_ (.q (r_add1_b[5]), .d (r_add1_a[5]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_4_ (.q (r_add1_b[4]), .d (r_add1_a[4]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_3_ (.q (r_add1_b[3]), .d (r_add1_a[3]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_2_ (.q (r_add1_b[2]), .d (r_add1_a[2]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_1_ (.q (r_add1_b[1]), .d (r_add1_a[1]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_r_add1_b_0_ (.q (r_add1_b[0]), .d (r_add1_a[0]), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_7_ (.q (o_col[7]), .d (address[7]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_6_ (.q (o_col[6]), .d (address[6]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_5_ (.q (o_col[5]), .d (address[5]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_4_ (.q (o_col[4]), .d (address[4]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_3_ (.q (o_col[3]), .d (address[3]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_2_ (.q (o_col[2]), .d (address[2]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_1_ (.q (o_col[1]), .d (address[1]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_col_0_ (.q (o_col[0]), .d (address[0]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_7_ (.q (o_row[7]), .d (row_count[7]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_6_ (.q (o_row[6]), .d (row_count[6]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_5_ (.q (o_row[5]), .d (row_count[5]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_4_ (.q (o_row[4]), .d (row_count[4]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_3_ (.q (o_row[3]), .d (row_count[3]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_2_ (.q (o_row[2]), .d (row_count[2]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_1_ (.q (o_row[1]), .d (row_count[1]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_row_0_ (.q (o_row[0]), .d (row_count[0]), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_valid (.q (o_valid), .d (nx60567z1), .clk (clk), .ena (
           not_reset), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_intermediate_dir_2_ (.q (o_dir[2]), .d (nx42447z1), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_intermediate_dir_1_ (.q (o_dir[1]), .d (nx43444z1), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_intermediate_dir_0_ (.q (o_dir[0]), .d (nx44441z1), .clk (clk), .ena (
           nx42447z4), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_o_edge (.q (o_edge), .d (nx1448z1), .clk (clk), .ena (not_reset)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_f3_7_ (.q (g2[7]), .d (f3_9n22ss1[7]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g2_6_ (.q (g2[6]), .d (f3_9n22ss1[6]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g2_5_ (.q (g2[5]), .d (f3_9n22ss1[5]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g2_4_ (.q (g2[4]), .d (f3_9n22ss1[4]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g2_3_ (.q (g2[3]), .d (f3_9n22ss1[3]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g2_2_ (.q (g2[2]), .d (f3_9n22ss1[2]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g2_1_ (.q (g2[1]), .d (f3_9n22ss1[1]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g2_0_ (.q (g2[0]), .d (f3_9n22ss1[0]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_g3_7_ (.q (g3[7]), .d (g2[7]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_g3_6_ (.q (g3[6]), .d (g2[6]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_g3_5_ (.q (g3[5]), .d (g2[5]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_g3_4_ (.q (g3[4]), .d (g2[4]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_g3_3_ (.q (g3[3]), .d (g2[3]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_g3_2_ (.q (g3[2]), .d (g2[2]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_g3_1_ (.q (g3[1]), .d (g2[1]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_g3_0_ (.q (g3[0]), .d (g2[0]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_7_ (.q (h3[7]), .d (h2[7]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_6_ (.q (h3[6]), .d (h2[6]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_5_ (.q (h3[5]), .d (h2[5]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_4_ (.q (h3[4]), .d (h2[4]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_3_ (.q (h3[3]), .d (h2[3]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_2_ (.q (h3[2]), .d (h2[2]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_1_ (.q (h3[1]), .d (h2[1]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h3_0_ (.q (h3[0]), .d (h2[0]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_7_ (.q (a3[7]), .d (a2[7]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_6_ (.q (a3[6]), .d (a2[6]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_5_ (.q (a3[5]), .d (a2[5]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_4_ (.q (a3[4]), .d (a2[4]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_3_ (.q (a3[3]), .d (a2[3]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_2_ (.q (a3[2]), .d (a2[2]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_1_ (.q (a3[1]), .d (a2[1]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_a3_0_ (.q (a3[0]), .d (a2[0]), .clk (clk), .ena (nx47085z5), .clrn (
           PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    dffeas reg_h2_7_ (.q (h2[7]), .d (h2_9n22ss1[7]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_h2_6_ (.q (h2[6]), .d (h2_9n22ss1[6]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_h2_5_ (.q (h2[5]), .d (h2_9n22ss1[5]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_h2_4_ (.q (h2[4]), .d (h2_9n22ss1[4]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_h2_3_ (.q (h2[3]), .d (h2_9n22ss1[3]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_h2_2_ (.q (h2[2]), .d (h2_9n22ss1[2]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_h2_1_ (.q (h2[1]), .d (h2_9n22ss1[1]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_h2_0_ (.q (h2[0]), .d (h2_9n22ss1[0]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_b3_7_ (.q (a2[7]), .d (a2_9n22ss1[7]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_a2_6_ (.q (a2[6]), .d (a2_9n22ss1[6]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_a2_5_ (.q (a2[5]), .d (a2_9n22ss1[5]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_a2_4_ (.q (a2[4]), .d (a2_9n22ss1[4]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_a2_3_ (.q (a2[3]), .d (a2_9n22ss1[3]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_a2_2_ (.q (a2[2]), .d (a2_9n22ss1[2]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_a2_1_ (.q (a2[1]), .d (a2_9n22ss1[1]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_a2_0_ (.q (a2[0]), .d (a2_9n22ss1[0]), .clk (clk), .ena (
           nx47085z5), .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (
           1'b0)) ;
    dffeas reg_e3_7_ (.q (e3[7]), .d (i_pixel[7]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_e3_6_ (.q (e3[6]), .d (i_pixel[6]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_e3_5_ (.q (e3[5]), .d (i_pixel[5]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_e3_4_ (.q (e3[4]), .d (i_pixel[4]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_e3_3_ (.q (e3[3]), .d (i_pixel[3]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_e3_2_ (.q (e3[2]), .d (i_pixel[2]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_e3_1_ (.q (e3[1]), .d (i_pixel[1]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    dffeas reg_e3_0_ (.q (e3[0]), .d (i_pixel[0]), .clk (clk), .ena (nx34964z3)
           , .clrn (PWR), .prn (PWR), .asdata (1'b0), .sclr (1'b0), .sload (1'b0
           )) ;
    fiftyfivenm_lcell_comb ix40590z7095 (.combout (nx40590z1), .dataa (1'b1), .datab (
                           nx40590z2), .datac (nx47569z3), .datad (d3[0])) ;
                           defparam ix40590z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix41587z7095 (.combout (nx41587z1), .dataa (1'b1), .datab (
                           nx41587z2), .datac (nx47569z3), .datad (d3[1])) ;
                           defparam ix41587z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix42584z7095 (.combout (nx42584z1), .dataa (1'b1), .datab (
                           nx42584z2), .datac (nx47569z3), .datad (d3[2])) ;
                           defparam ix42584z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix43581z7095 (.combout (nx43581z1), .dataa (1'b1), .datab (
                           nx43581z2), .datac (nx47569z3), .datad (d3[3])) ;
                           defparam ix43581z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix44578z7095 (.combout (nx44578z1), .dataa (1'b1), .datab (
                           nx44578z2), .datac (nx47569z3), .datad (d3[4])) ;
                           defparam ix44578z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix45575z7095 (.combout (nx45575z1), .dataa (1'b1), .datab (
                           nx45575z2), .datac (nx47569z3), .datad (d3[5])) ;
                           defparam ix45575z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix46572z7095 (.combout (nx46572z1), .dataa (1'b1), .datab (
                           nx46572z2), .datac (nx47569z3), .datad (d3[6])) ;
                           defparam ix46572z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix47569z7095 (.combout (nx47569z1), .dataa (1'b1), .datab (
                           nx47569z2), .datac (nx47569z3), .datad (d3[7])) ;
                           defparam ix47569z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix41784z7095 (.combout (nx41784z1), .dataa (1'b1), .datab (
                           nx41784z2), .datac (nx47569z3), .datad (c3[0])) ;
                           defparam ix41784z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix40787z7095 (.combout (nx40787z1), .dataa (1'b1), .datab (
                           nx40787z2), .datac (nx47569z3), .datad (c3[1])) ;
                           defparam ix40787z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix39790z7095 (.combout (nx39790z1), .dataa (1'b1), .datab (
                           nx39790z2), .datac (nx47569z3), .datad (c3[2])) ;
                           defparam ix39790z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix38793z7095 (.combout (nx38793z1), .dataa (1'b1), .datab (
                           nx38793z2), .datac (nx47569z3), .datad (c3[3])) ;
                           defparam ix38793z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix37796z7095 (.combout (nx37796z1), .dataa (1'b1), .datab (
                           nx37796z2), .datac (nx47569z3), .datad (c3[4])) ;
                           defparam ix37796z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix36799z7095 (.combout (nx36799z1), .dataa (1'b1), .datab (
                           nx36799z2), .datac (nx47569z3), .datad (c3[5])) ;
                           defparam ix36799z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix35802z7095 (.combout (nx35802z1), .dataa (1'b1), .datab (
                           nx35802z2), .datac (nx47569z3), .datad (c3[6])) ;
                           defparam ix35802z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix34805z7095 (.combout (nx34805z1), .dataa (1'b1), .datab (
                           nx34805z2), .datac (nx47569z3), .datad (c3[7])) ;
                           defparam ix34805z7095.lut_mask = 16'hcc0c;
    fiftyfivenm_lcell_comb ix59782z7096 (.combout (next_row_index_1_), .dataa (
                           nx51271z5), .datab (nx51271z6), .datac (row_index[0])
                           , .datad (row_index[1])) ;
                           defparam ix59782z7096.lut_mask = 16'h0070;
    fiftyfivenm_lcell_comb ix46696z7095 (.combout (r_max0_1n2ss1[7]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[7]), .datad (
                           i_2[7])) ;
                           defparam ix46696z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix45699z7095 (.combout (r_max0_1n2ss1[6]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[6]), .datad (
                           i_2[6])) ;
                           defparam ix45699z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix44702z7095 (.combout (r_max0_1n2ss1[5]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[5]), .datad (
                           i_2[5])) ;
                           defparam ix44702z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix43705z7095 (.combout (r_max0_1n2ss1[4]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[4]), .datad (
                           i_2[4])) ;
                           defparam ix43705z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix42708z7095 (.combout (r_max0_1n2ss1[3]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[3]), .datad (
                           i_2[3])) ;
                           defparam ix42708z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix41711z7095 (.combout (r_max0_1n2ss1[2]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[2]), .datad (
                           i_2[2])) ;
                           defparam ix41711z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix40714z7095 (.combout (r_max0_1n2ss1[1]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[1]), .datad (
                           i_2[1])) ;
                           defparam ix40714z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix39717z7095 (.combout (r_max0_1n2ss1[0]), .dataa (
                           1'b1), .datab (nx46696z1), .datac (i_3[0]), .datad (
                           i_2[0])) ;
                           defparam ix39717z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix4406z7097 (.combout (nx4406z3), .dataa (
                           stg_counter2[2]), .datab (stg_counter2[3]), .datac (
                           stg_counter1[2]), .datad (stg_counter1[3])) ;
                           defparam ix4406z7097.lut_mask = 16'h111f;
    fiftyfivenm_lcell_comb ix53455z7096 (.combout (nx53455z2), .dataa (nx39150z3
                           ), .datab (nx18188z2), .datac (nx4013z6), .datad (
                           reset)) ;
                           defparam ix53455z7096.lut_mask = 16'h00f8;
    fiftyfivenm_lcell_comb ix47569z7103 (.combout (nx47569z9), .dataa (nx35286z2
                           ), .datab (nx47085z10), .datac (stg_counter1[0]), .datad (
                           stg_counter1[1])) ;
                           defparam ix47569z7103.lut_mask = 16'hcecc;
    fiftyfivenm_lcell_comb ix7999z7098 (.combout (nx7999z2), .dataa (nx47085z10)
                           , .datab (nx7999z1), .datac (nx7999z3), .datad (
                           nx7999z4)) ;
                           defparam ix7999z7098.lut_mask = 16'h1110;
    fiftyfivenm_lcell_comb ix40271z7095 (.combout (r_max1_5n6ss1[9]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[9]), .datad (
                           r_add1_a[9])) ;
                           defparam ix40271z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix39274z7095 (.combout (r_max1_5n6ss1[8]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[8]), .datad (
                           r_add1_a[8])) ;
                           defparam ix39274z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix38277z7095 (.combout (r_max1_5n6ss1[7]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[7]), .datad (
                           r_add1_a[7])) ;
                           defparam ix38277z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix37280z7095 (.combout (r_max1_5n6ss1[6]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[6]), .datad (
                           r_add1_a[6])) ;
                           defparam ix37280z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix36283z7095 (.combout (r_max1_5n6ss1[5]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[5]), .datad (
                           r_add1_a[5])) ;
                           defparam ix36283z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix35286z7095 (.combout (r_max1_5n6ss1[4]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[4]), .datad (
                           r_add1_a[4])) ;
                           defparam ix35286z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix34289z7095 (.combout (r_max1_5n6ss1[3]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[3]), .datad (
                           r_add1_a[3])) ;
                           defparam ix34289z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix33292z7095 (.combout (r_max1_5n6ss1[2]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[2]), .datad (
                           r_add1_a[2])) ;
                           defparam ix33292z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix32295z7095 (.combout (r_max1_5n6ss1[1]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[1]), .datad (
                           r_add1_a[1])) ;
                           defparam ix32295z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix31298z7095 (.combout (r_max1_5n6ss1[0]), .dataa (
                           1'b1), .datab (nx35286z1), .datac (r_add1_b[0]), .datad (
                           r_add1_a[0])) ;
                           defparam ix31298z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix35286z7125 (.combout (nx35286z30), .dataa (
                           nx47085z9), .datab (nx42522z2), .datac (
                           stg_counter1[2]), .datad (stg_counter1[3])) ;
                           defparam ix35286z7125.lut_mask = 16'h004c;
    fiftyfivenm_lcell_comb ix18188z7095 (.combout (nx18188z1), .dataa (nx47085z9
                           ), .datab (nx18188z2), .datac (nx18188z3), .datad (
                           reset)) ;
                           defparam ix18188z7095.lut_mask = 16'h00f8;
    fiftyfivenm_lcell_comb ix35286z7110 (.combout (nx35286z15), .dataa (1'b1), .datab (
                           1'b1), .datac (nx35286z16), .datad (nx35286z28)) ;
                           defparam ix35286z7110.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix60567z7095 (.combout (nx60567z1), .dataa (1'b1), .datab (
                           nx60567z2), .datac (nx50941z7), .datad (
                           stg_counter1[3])) ;
                           defparam ix60567z7095.lut_mask = 16'hccfc;
    fiftyfivenm_lcell_comb ix42447z7098 (.combout (nx42447z4), .dataa (nx60567z2
                           ), .datab (nx42522z2), .datac (nx50941z7), .datad (
                           reset)) ;
                           defparam ix42447z7098.lut_mask = 16'h00ba;
    fiftyfivenm_lcell_comb ix1448z7096 (.combout (nx1448z2), .dataa (1'b1), .datab (
                           nx1448z3), .datac (r_sub0_11_), .datad (r_sub0_12_)
                           ) ;
                           defparam ix1448z7096.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix24694z7095 (.combout (a2_9n22ss1[7]), .dataa (
                           nx24694z1), .datab (nx24694z2), .datac (c3[7]), .datad (
                           i_valid)) ;
                           defparam ix24694z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix12137z7095 (.combout (a2_9n22ss1[6]), .dataa (
                           nx12137z1), .datab (nx12137z2), .datac (c3[6]), .datad (
                           i_valid)) ;
                           defparam ix12137z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix13134z7095 (.combout (a2_9n22ss1[5]), .dataa (
                           nx13134z1), .datab (nx13134z2), .datac (c3[5]), .datad (
                           i_valid)) ;
                           defparam ix13134z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix14131z7095 (.combout (a2_9n22ss1[4]), .dataa (
                           nx14131z1), .datab (nx14131z2), .datac (c3[4]), .datad (
                           i_valid)) ;
                           defparam ix14131z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix15128z7095 (.combout (a2_9n22ss1[3]), .dataa (
                           nx15128z1), .datab (nx15128z2), .datac (c3[3]), .datad (
                           i_valid)) ;
                           defparam ix15128z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix16125z7095 (.combout (a2_9n22ss1[2]), .dataa (
                           nx16125z1), .datab (nx16125z2), .datac (c3[2]), .datad (
                           i_valid)) ;
                           defparam ix16125z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix17122z7095 (.combout (a2_9n22ss1[1]), .dataa (
                           nx17122z1), .datab (nx17122z2), .datac (c3[1]), .datad (
                           i_valid)) ;
                           defparam ix17122z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix18119z7095 (.combout (a2_9n22ss1[0]), .dataa (
                           nx18119z1), .datab (nx18119z2), .datac (c3[0]), .datad (
                           i_valid)) ;
                           defparam ix18119z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix47085z7095 (.combout (h2_9n22ss1[7]), .dataa (
                           nx47085z1), .datab (nx47085z2), .datac (d3[7]), .datad (
                           i_valid)) ;
                           defparam ix47085z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix48082z7095 (.combout (h2_9n22ss1[6]), .dataa (
                           nx48082z1), .datab (nx48082z2), .datac (d3[6]), .datad (
                           i_valid)) ;
                           defparam ix48082z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix49079z7095 (.combout (h2_9n22ss1[5]), .dataa (
                           nx49079z1), .datab (nx49079z2), .datac (d3[5]), .datad (
                           i_valid)) ;
                           defparam ix49079z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix50076z7095 (.combout (h2_9n22ss1[4]), .dataa (
                           nx50076z1), .datab (nx50076z2), .datac (d3[4]), .datad (
                           i_valid)) ;
                           defparam ix50076z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix51073z7095 (.combout (h2_9n22ss1[3]), .dataa (
                           nx51073z1), .datab (nx51073z2), .datac (d3[3]), .datad (
                           i_valid)) ;
                           defparam ix51073z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix52070z7095 (.combout (h2_9n22ss1[2]), .dataa (
                           nx52070z1), .datab (nx52070z2), .datac (d3[2]), .datad (
                           i_valid)) ;
                           defparam ix52070z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix53067z7095 (.combout (h2_9n22ss1[1]), .dataa (
                           nx53067z1), .datab (nx53067z2), .datac (d3[1]), .datad (
                           i_valid)) ;
                           defparam ix53067z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix54064z7095 (.combout (h2_9n22ss1[0]), .dataa (
                           nx54064z1), .datab (nx54064z2), .datac (d3[0]), .datad (
                           i_valid)) ;
                           defparam ix54064z7095.lut_mask = 16'heef0;
    fiftyfivenm_lcell_comb ix45234z7095 (.combout (f3_9n22ss1[7]), .dataa (1'b1)
                           , .datab (e3[7]), .datac (i_pixel[7]), .datad (
                           i_valid)) ;
                           defparam ix45234z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix42947z7095 (.combout (f3_9n22ss1[6]), .dataa (1'b1)
                           , .datab (e3[6]), .datac (i_pixel[6]), .datad (
                           i_valid)) ;
                           defparam ix42947z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix43944z7095 (.combout (f3_9n22ss1[5]), .dataa (1'b1)
                           , .datab (e3[5]), .datac (i_pixel[5]), .datad (
                           i_valid)) ;
                           defparam ix43944z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix44941z7095 (.combout (f3_9n22ss1[4]), .dataa (1'b1)
                           , .datab (e3[4]), .datac (i_pixel[4]), .datad (
                           i_valid)) ;
                           defparam ix44941z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix45938z7095 (.combout (f3_9n22ss1[3]), .dataa (1'b1)
                           , .datab (e3[3]), .datac (i_pixel[3]), .datad (
                           i_valid)) ;
                           defparam ix45938z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix46935z7095 (.combout (f3_9n22ss1[2]), .dataa (1'b1)
                           , .datab (e3[2]), .datac (i_pixel[2]), .datad (
                           i_valid)) ;
                           defparam ix46935z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix47932z7095 (.combout (f3_9n22ss1[1]), .dataa (1'b1)
                           , .datab (e3[1]), .datac (i_pixel[1]), .datad (
                           i_valid)) ;
                           defparam ix47932z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix48929z7095 (.combout (f3_9n22ss1[0]), .dataa (1'b1)
                           , .datab (e3[0]), .datac (i_pixel[0]), .datad (
                           i_valid)) ;
                           defparam ix48929z7095.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix47569z7099 (.combout (nx47569z5), .dataa (nx35286z2
                           ), .datab (nx47569z6), .datac (stg_counter2[1]), .datad (
                           stg_counter1[1])) ;
                           defparam ix47569z7099.lut_mask = 16'h0cae;
    fiftyfivenm_lcell_comb ix44516z7097 (.combout (nx44516z3), .dataa (
                           stg_counter1[0]), .datab (stg_counter1[1]), .datac (
                           stg_counter1[2]), .datad (reset)) ;
                           defparam ix44516z7097.lut_mask = 16'hff80;
    fiftyfivenm_lcell_comb ix41525z7096 (.combout (nx41525z2), .dataa (nx50941z4
                           ), .datab (nx50941z7), .datac (nx41525z3), .datad (
                           reset)) ;
                           defparam ix41525z7096.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix52935z7097 (.combout (nx52935z3), .dataa (nx50941z2
                           ), .datab (stg_counter2[2]), .datac (stg_counter2[3])
                           , .datad (reset)) ;
                           defparam ix52935z7097.lut_mask = 16'hff08;
    fiftyfivenm_lcell_comb ix50941z7097 (.combout (nx50941z3), .dataa (nx50941z4
                           ), .datab (nx50941z7), .datac (nx41525z3), .datad (
                           reset)) ;
                           defparam ix50941z7097.lut_mask = 16'h0020;
    fiftyfivenm_lcell_comb ix34964z7097 (.combout (nx34964z3), .dataa (nx34964z4
                           ), .datab (nx50941z6), .datac (i_valid), .datad (
                           reset)) ;
                           defparam ix34964z7097.lut_mask = 16'h00e0;
    fiftyfivenm_lcell_comb ix47569z7101 (.combout (nx47569z7), .dataa (1'b1), .datab (
                           nx47085z6), .datac (nx47569z8), .datad (reset)) ;
                           defparam ix47569z7101.lut_mask = 16'h00c0;
    fiftyfivenm_lcell_comb ix47085z7100 (.combout (nx47085z5), .dataa (1'b1), .datab (
                           nx47085z6), .datac (nx47085z7), .datad (reset)) ;
                           defparam ix47085z7100.lut_mask = 16'h00c0;
    fiftyfivenm_lcell_comb ix41525z7097 (.combout (nx41525z3), .dataa (nx41525z4
                           ), .datab (address[1]), .datac (address[2]), .datad (
                           address[4])) ;
                           defparam ix41525z7097.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix7397z7096 (.combout (nx7397z2), .dataa (nx4406z3), 
                           .datab (max0_bit_counter[0]), .datac (
                           max0_bit_counter[1]), .datad (reset)) ;
                           defparam ix7397z7096.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix4406z7096 (.combout (nx4406z2), .dataa (nx4406z3), 
                           .datab (max0_bit_counter[0]), .datac (
                           max0_bit_counter[1]), .datad (reset)) ;
                           defparam ix4406z7096.lut_mask = 16'h0002;
    fiftyfivenm_lcell_comb ix6400z7096 (.combout (nx6400z2), .dataa (nx4406z3), 
                           .datab (max0_bit_counter[0]), .datac (
                           max0_bit_counter[1]), .datad (reset)) ;
                           defparam ix6400z7096.lut_mask = 16'h0020;
    fiftyfivenm_lcell_comb ix1448z7095 (.combout (nx1448z1), .dataa (nx60567z2)
                           , .datab (nx42522z2), .datac (nx50941z7), .datad (
                           nx1448z2)) ;
                           defparam ix1448z7095.lut_mask = 16'hba00;
    fiftyfivenm_lcell_comb ix35286z7096 (.combout (nx35286z1), .dataa (nx35286z2
                           ), .datab (nx35286z3), .datac (nx42522z2), .datad (
                           nx35286z4)) ;
                           defparam ix35286z7096.lut_mask = 16'hec00;
    fiftyfivenm_lcell_comb ix54113z7095 (.combout (nx54113z1), .dataa (1'b1), .datab (
                           row_index[0]), .datac (row_index[1]), .datad (i_valid
                           )) ;
                           defparam ix54113z7095.lut_mask = 16'h3000;
    fiftyfivenm_lcell_comb ix44441z7095 (.combout (nx44441z1), .dataa (nx1448z3)
                           , .datab (nx44441z2), .datac (r_sub0_11_), .datad (
                           r_sub0_12_)) ;
                           defparam ix44441z7095.lut_mask = 16'hccc8;
    fiftyfivenm_lcell_comb ix4013z7097 (.combout (nx4013z3), .dataa (nx4013z4), 
                           .datab (nx4013z7), .datac (nx35286z16), .datad (
                           nx35286z1)) ;
                           defparam ix4013z7097.lut_mask = 16'hffe0;
    fiftyfivenm_lcell_comb ix43444z7095 (.combout (nx43444z1), .dataa (nx1448z2)
                           , .datab (dir2_final[0]), .datac (dir2_final[1]), .datad (
                           dir2_final[2])) ;
                           defparam ix43444z7095.lut_mask = 16'h8a00;
    fiftyfivenm_lcell_comb ix42447z7095 (.combout (nx42447z1), .dataa (nx42447z2
                           ), .datab (nx1448z2), .datac (dir2_final[2]), .datad (
                           dir1_final[3])) ;
                           defparam ix42447z7095.lut_mask = 16'h8c80;
    fiftyfivenm_lcell_comb ix47085z7099 (.combout (nx47085z4), .dataa (1'b1), .datab (
                           row_index[0]), .datac (row_index[1]), .datad (i_valid
                           )) ;
                           defparam ix47085z7099.lut_mask = 16'h0300;
    fiftyfivenm_lcell_comb ix47085z7098 (.combout (nx47085z3), .dataa (1'b1), .datab (
                           row_index[0]), .datac (row_index[1]), .datad (i_valid
                           )) ;
                           defparam ix47085z7098.lut_mask = 16'h0c00;
    fiftyfivenm_lcell_comb ix58785z7097 (.combout (nx58785z3), .dataa (1'b1), .datab (
                           nx51271z5), .datac (nx51271z6), .datad (row_index[1])
                           ) ;
                           defparam ix58785z7097.lut_mask = 16'hffc0;
    fiftyfivenm_lcell_comb ix46696z7105 (.combout (nx46696z10), .dataa (
                           nx47569z6), .datab (stg_counter1[2]), .datac (
                           stg_counter1[3]), .datad (reset)) ;
                           defparam ix46696z7105.lut_mask = 16'h00ab;
    fiftyfivenm_lcell_comb ix35286z7123 (.combout (nx35286z28), .dataa (
                           nx35286z29), .datab (nx35286z3), .datac (nx35286z30)
                           , .datad (reset)) ;
                           defparam ix35286z7123.lut_mask = 16'h00fe;
    fiftyfivenm_lcell_comb ix4013z7100 (.combout (nx4013z6), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix4013z7100.lut_mask = 16'h0010;
    fiftyfivenm_lcell_comb ix7999z7100 (.combout (nx7999z4), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix7999z7100.lut_mask = 16'h0020;
    fiftyfivenm_lcell_comb ix47085z7105 (.combout (nx47085z10), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix47085z7105.lut_mask = 16'h0004;
    fiftyfivenm_lcell_comb ix47569z7100 (.combout (nx47569z6), .dataa (1'b1), .datab (
                           1'b1), .datac (stg_counter2[2]), .datad (
                           stg_counter2[3])) ;
                           defparam ix47569z7100.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix52935z7096 (.combout (nx52935z2), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix52935z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix7999z7099 (.combout (nx7999z3), .dataa (
                           stg_counter1[0]), .datab (stg_counter1[1]), .datac (
                           stg_counter1[2]), .datad (stg_counter1[3])) ;
                           defparam ix7999z7099.lut_mask = 16'h0020;
    fiftyfivenm_lcell_comb ix50941z7101 (.combout (nx50941z7), .dataa (1'b1), .datab (
                           stg_counter1[0]), .datac (stg_counter1[1]), .datad (
                           stg_counter1[2])) ;
                           defparam ix50941z7101.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix7999z7096 (.combout (nx7999z1), .dataa (
                           stg_counter1[0]), .datab (stg_counter1[1]), .datac (
                           stg_counter1[2]), .datad (stg_counter1[3])) ;
                           defparam ix7999z7096.lut_mask = 16'h0004;
    fiftyfivenm_lcell_comb ix44516z7096 (.combout (nx44516z2), .dataa (
                           stg_counter1[0]), .datab (stg_counter1[1]), .datac (
                           stg_counter1[2]), .datad (stg_counter1[3])) ;
                           defparam ix44516z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix8437z7095 (.combout (nx8437z1), .dataa (1'b1), .datab (
                           1'b1), .datac (i_valid), .datad (reset)) ;
                           defparam ix8437z7095.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix51271z7095 (.combout (nx51271z1), .dataa (nx51271z2
                           ), .datab (nx51271z3), .datac (i_valid), .datad (
                           reset)) ;
                           defparam ix51271z7095.lut_mask = 16'hff80;
    fiftyfivenm_lcell_comb ix6818z7095 (.combout (r_add2_4n1s1f1[9]), .dataa (
                           1'b1), .datab (nx47085z10), .datac (nx7999z1), .datad (
                           r_add2[9])) ;
                           defparam ix6818z7095.lut_mask = 16'h0300;
    fiftyfivenm_lcell_comb ix24330z7095 (.combout (r_add2_4n1s1f1[8]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[8]), .datad (
                           r_add0_b[8])) ;
                           defparam ix24330z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix7999z7095 (.combout (r_add2_4n1s1f1[7]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[7]), .datad (
                           r_add0_b[7])) ;
                           defparam ix7999z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix26389z7095 (.combout (r_add2_4n1s1f1[6]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[6]), .datad (
                           r_add0_b[6])) ;
                           defparam ix26389z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix4759z7095 (.combout (r_add2_4n1s1f1[5]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[5]), .datad (
                           r_add0_b[5])) ;
                           defparam ix4759z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix53964z7095 (.combout (r_add2_4n1s1f1[4]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[4]), .datad (
                           r_add0_b[4])) ;
                           defparam ix53964z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix45960z7095 (.combout (r_add2_4n1s1f1[3]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[3]), .datad (
                           r_add0_b[3])) ;
                           defparam ix45960z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix3245z7095 (.combout (r_add2_4n1s1f1[2]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[2]), .datad (
                           r_add0_b[2])) ;
                           defparam ix3245z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix34393z7095 (.combout (r_add2_4n1s1f1[1]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[1]), .datad (
                           r_add0_b[1])) ;
                           defparam ix34393z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix65531z7095 (.combout (r_add2_4n1s1f1[0]), .dataa (
                           nx47085z10), .datab (nx7999z1), .datac (r_add2[0]), .datad (
                           r_add0_b[0])) ;
                           defparam ix65531z7095.lut_mask = 16'hfe10;
    fiftyfivenm_lcell_comb ix28327z7095 (.combout (r_add2_4n1s1f2[12]), .dataa (
                           nx7999z3), .datab (nx7999z4), .datac (nx47569z9), .datad (
                           r_add2[11])) ;
                           defparam ix28327z7095.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix43901z7095 (.combout (r_add2_4n1s1f2[11]), .dataa (
                           nx7999z3), .datab (nx7999z4), .datac (nx47569z9), .datad (
                           r_add2[10])) ;
                           defparam ix43901z7095.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix56023z7095 (.combout (r_add2_4n1s1f2[10]), .dataa (
                           nx7999z3), .datab (nx7999z4), .datac (nx47569z9), .datad (
                           r_add2[9])) ;
                           defparam ix56023z7095.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix6818z7096 (.combout (r_add2_4n1s1f2[9]), .dataa (
                           nx7999z3), .datab (nx7999z4), .datac (nx47569z9), .datad (
                           r_add2[8])) ;
                           defparam ix6818z7096.lut_mask = 16'h0e00;
    fiftyfivenm_lcell_comb ix24330z7096 (.combout (r_add2_4n1s1f2[8]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[7]), .datad (
                           r_add0_a[8])) ;
                           defparam ix24330z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix7999z7097 (.combout (r_add2_4n1s1f2[7]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[6]), .datad (
                           r_add0_a[7])) ;
                           defparam ix7999z7097.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix26389z7096 (.combout (r_add2_4n1s1f2[6]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[5]), .datad (
                           r_add0_a[6])) ;
                           defparam ix26389z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix4759z7096 (.combout (r_add2_4n1s1f2[5]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[4]), .datad (
                           r_add0_a[5])) ;
                           defparam ix4759z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix53964z7096 (.combout (r_add2_4n1s1f2[4]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[3]), .datad (
                           r_add0_a[4])) ;
                           defparam ix53964z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix45960z7096 (.combout (r_add2_4n1s1f2[3]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[2]), .datad (
                           r_add0_a[3])) ;
                           defparam ix45960z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix3245z7096 (.combout (r_add2_4n1s1f2[2]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[1]), .datad (
                           r_add0_a[2])) ;
                           defparam ix3245z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix34393z7096 (.combout (r_add2_4n1s1f2[1]), .dataa (
                           1'b1), .datab (nx7999z2), .datac (r_add2[0]), .datad (
                           r_add0_a[1])) ;
                           defparam ix34393z7096.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix3016z7096 (.combout (nx3016z2), .dataa (1'b1), .datab (
                           1'b1), .datac (max1_bit_counter[0]), .datad (
                           max1_bit_counter[1])) ;
                           defparam ix3016z7096.lut_mask = 16'hff0f;
    fiftyfivenm_lcell_comb ix2019z7096 (.combout (nx2019z2), .dataa (1'b1), .datab (
                           1'b1), .datac (max1_bit_counter[0]), .datad (
                           max1_bit_counter[1])) ;
                           defparam ix2019z7096.lut_mask = 16'hf0ff;
    fiftyfivenm_lcell_comb ix58785z7096 (.combout (nx58785z2), .dataa (1'b1), .datab (
                           nx51271z2), .datac (nx51271z3), .datad (i_valid)) ;
                           defparam ix58785z7096.lut_mask = 16'hc000;
    fiftyfivenm_lcell_comb ix44441z7097 (.combout (nx44441z3), .dataa (1'b1), .datab (
                           1'b1), .datac (dir2_final[0]), .datad (dir1_final[1])
                           ) ;
                           defparam ix44441z7097.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix35286z7111 (.combout (nx35286z16), .dataa (
                           nx35286z2), .datab (nx35286z3), .datac (nx42522z2), .datad (
                           nx35286z17)) ;
                           defparam ix35286z7111.lut_mask = 16'h0013;
    fiftyfivenm_lcell_comb ix43519z7096 (.combout (nx43519z2), .dataa (
                           stg_counter1[0]), .datab (stg_counter1[1]), .datac (
                           stg_counter1[2]), .datad (stg_counter1[3])) ;
                           defparam ix43519z7096.lut_mask = 16'he666;
    fiftyfivenm_lcell_comb ix42522z7096 (.combout (nx42522z2), .dataa (
                           stg_counter1[0]), .datab (stg_counter1[1]), .datac (
                           stg_counter1[2]), .datad (stg_counter1[3])) ;
                           defparam ix42522z7096.lut_mask = 16'hf878;
    fiftyfivenm_lcell_comb ix51938z7096 (.combout (nx51938z2), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix51938z7096.lut_mask = 16'he666;
    fiftyfivenm_lcell_comb ix22438z7095 (.combout (nx22438z1), .dataa (
                           nx35286z28), .datab (max1_bit_counter[0]), .datac (
                           max1_bit_counter[1]), .datad (reset)) ;
                           defparam ix22438z7095.lut_mask = 16'h0246;
    fiftyfivenm_lcell_comb ix21441z7095 (.combout (nx21441z1), .dataa (
                           nx35286z28), .datab (max1_bit_counter[0]), .datac (
                           max1_bit_counter[1]), .datad (reset)) ;
                           defparam ix21441z7095.lut_mask = 16'h0858;
    fiftyfivenm_lcell_comb ix25517z7095 (.combout (nx25517z1), .dataa (nx35286z2
                           ), .datab (nx47569z6), .datac (max0_bit_counter[0]), 
                           .datad (reset)) ;
                           defparam ix25517z7095.lut_mask = 16'h001e;
    fiftyfivenm_lcell_comb ix26514z7095 (.combout (nx26514z1), .dataa (nx4406z3)
                           , .datab (max0_bit_counter[0]), .datac (
                           max0_bit_counter[1]), .datad (reset)) ;
                           defparam ix26514z7095.lut_mask = 16'h0078;
    fiftyfivenm_lcell_comb ix40485z7095 (.combout (nx40485z1), .dataa (nx35286z2
                           ), .datab (nx47085z9), .datac (nx47085z10), .datad (
                           r_add2_4n1s1[10])) ;
                           defparam ix40485z7095.lut_mask = 16'h0700;
    fiftyfivenm_lcell_comb ix39488z7095 (.combout (nx39488z1), .dataa (nx35286z2
                           ), .datab (nx47085z9), .datac (nx47085z10), .datad (
                           r_add2_4n1s1[11])) ;
                           defparam ix39488z7095.lut_mask = 16'h0700;
    fiftyfivenm_lcell_comb ix38491z7095 (.combout (nx38491z1), .dataa (nx35286z2
                           ), .datab (nx47085z9), .datac (nx47085z10), .datad (
                           r_add2_4n1s1[12])) ;
                           defparam ix38491z7095.lut_mask = 16'h0700;
    fiftyfivenm_lcell_comb ix59782z7095 (.combout (nx59782z1), .dataa (nx58785z2
                           ), .datab (next_row_index_1_), .datac (row_index[1])
                           , .datad (reset)) ;
                           defparam ix59782z7095.lut_mask = 16'h00d8;
    fiftyfivenm_lcell_comb ix58785z7095 (.combout (nx58785z1), .dataa (nx58785z2
                           ), .datab (nx58785z3), .datac (row_index[0]), .datad (
                           reset)) ;
                           defparam ix58785z7095.lut_mask = 16'h0052;
    fiftyfivenm_lcell_comb ix43221z7095 (.combout (nx43221z1), .dataa (nx42522z2
                           ), .datab (nx50941z7), .datac (nx52935z2), .datad (
                           reset)) ;
                           defparam ix43221z7095.lut_mask = 16'hff7f;
    fiftyfivenm_lcell_comb ix44516z7095 (.combout (nx44516z1), .dataa (nx44516z2
                           ), .datab (nx41525z2), .datac (nx44516z3), .datad (
                           stg_counter1[0])) ;
                           defparam ix44516z7095.lut_mask = 16'h3231;
    fiftyfivenm_lcell_comb ix43519z7095 (.combout (nx43519z1), .dataa (nx43519z2
                           ), .datab (nx50941z7), .datac (nx41525z2), .datad (
                           reset)) ;
                           defparam ix43519z7095.lut_mask = 16'h0f0e;
    fiftyfivenm_lcell_comb ix42522z7095 (.combout (nx42522z1), .dataa (nx42522z2
                           ), .datab (nx50941z7), .datac (nx41525z2), .datad (
                           reset)) ;
                           defparam ix42522z7095.lut_mask = 16'h0f0e;
    fiftyfivenm_lcell_comb ix41525z7095 (.combout (nx41525z1), .dataa (nx50941z7
                           ), .datab (nx41525z2), .datac (stg_counter1[3]), .datad (
                           reset)) ;
                           defparam ix41525z7095.lut_mask = 16'h3332;
    fiftyfivenm_lcell_comb ix52935z7095 (.combout (nx52935z1), .dataa (nx52935z2
                           ), .datab (nx50941z3), .datac (nx52935z3), .datad (
                           stg_counter2[0])) ;
                           defparam ix52935z7095.lut_mask = 16'h3231;
    fiftyfivenm_lcell_comb ix51938z7095 (.combout (nx51938z1), .dataa (nx60567z2
                           ), .datab (nx51938z2), .datac (nx50941z3), .datad (
                           reset)) ;
                           defparam ix51938z7095.lut_mask = 16'h0f0e;
    fiftyfivenm_lcell_comb ix50941z7095 (.combout (nx50941z1), .dataa (nx50941z2
                           ), .datab (nx50941z3), .datac (stg_counter2[2]), .datad (
                           reset)) ;
                           defparam ix50941z7095.lut_mask = 16'h3332;
    fiftyfivenm_lcell_comb ix49944z7095 (.combout (nx49944z1), .dataa (nx60567z2
                           ), .datab (nx50941z3), .datac (stg_counter2[3]), .datad (
                           reset)) ;
                           defparam ix49944z7095.lut_mask = 16'h3332;
    fiftyfivenm_lcell_comb ix6400z7095 (.combout (nx6400z1), .dataa (1'b1), .datab (
                           nx6400z2), .datac (nx46696z1), .datad (dir1[2])) ;
                           defparam ix6400z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix4406z7095 (.combout (nx4406z1), .dataa (1'b1), .datab (
                           nx4406z2), .datac (nx46696z1), .datad (dir1[0])) ;
                           defparam ix4406z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix7397z7095 (.combout (nx7397z1), .dataa (1'b1), .datab (
                           nx7397z2), .datac (nx46696z1), .datad (dir1[3])) ;
                           defparam ix7397z7095.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix5403z7095 (.combout (nx5403z1), .dataa (nx26514z1)
                           , .datab (nx46696z1), .datac (max0_bit_counter[1]), .datad (
                           dir1[1])) ;
                           defparam ix5403z7095.lut_mask = 16'hfd08;
    fiftyfivenm_lcell_comb ix2019z7095 (.combout (nx2019z1), .dataa (nx2019z2), 
                           .datab (nx35286z28), .datac (nx4013z3), .datad (
                           dir2[2])) ;
                           defparam ix2019z7095.lut_mask = 16'hfb40;
    fiftyfivenm_lcell_comb ix3016z7095 (.combout (nx3016z1), .dataa (nx3016z2), 
                           .datab (nx35286z28), .datac (nx4013z3), .datad (
                           dir2[1])) ;
                           defparam ix3016z7095.lut_mask = 16'hfb40;
    fiftyfivenm_lcell_comb ix4013z7095 (.combout (nx4013z1), .dataa (nx4013z2), 
                           .datab (nx35286z28), .datac (nx4013z3), .datad (
                           dir2[0])) ;
                           defparam ix4013z7095.lut_mask = 16'hfb40;
    fiftyfivenm_lcell_comb ix53455z7095 (.combout (nx53455z1), .dataa (1'b1), .datab (
                           nx53455z2), .datac (dir1_final[0]), .datad (dir1[0])
                           ) ;
                           defparam ix53455z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix54452z7095 (.combout (nx54452z1), .dataa (1'b1), .datab (
                           nx53455z2), .datac (dir1_final[1]), .datad (dir1[1])
                           ) ;
                           defparam ix54452z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix55449z7095 (.combout (nx55449z1), .dataa (1'b1), .datab (
                           nx53455z2), .datac (dir1_final[2]), .datad (dir1[2])
                           ) ;
                           defparam ix55449z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix56446z7095 (.combout (nx56446z1), .dataa (1'b1), .datab (
                           nx53455z2), .datac (dir1_final[3]), .datad (dir1[3])
                           ) ;
                           defparam ix56446z7095.lut_mask = 16'hfc30;
    fiftyfivenm_lcell_comb ix50941z7096 (.combout (nx50941z2), .dataa (1'b1), .datab (
                           1'b1), .datac (stg_counter2[0]), .datad (
                           stg_counter2[1])) ;
                           defparam ix50941z7096.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix50941z7098 (.combout (nx50941z4), .dataa (nx50941z5
                           ), .datab (nx50941z6), .datac (row_count[2]), .datad (
                           i_valid)) ;
                           defparam ix50941z7098.lut_mask = 16'hfe00;
    fiftyfivenm_lcell_comb ix41525z7098 (.combout (nx41525z4), .dataa (
                           address[3]), .datab (address[5]), .datac (address[6])
                           , .datad (address[7])) ;
                           defparam ix41525z7098.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix51271z7097 (.combout (nx51271z3), .dataa (
                           address[0]), .datab (address[1]), .datac (address[2])
                           , .datad (address[3])) ;
                           defparam ix51271z7097.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix51271z7101 (.combout (nx51271z7), .dataa (1'b1), .datab (
                           1'b1), .datac (address[6]), .datad (address[7])) ;
                           defparam ix51271z7101.lut_mask = 16'hf000;
    fiftyfivenm_lcell_comb ix51271z7096 (.combout (nx51271z2), .dataa (
                           address[4]), .datab (address[5]), .datac (address[6])
                           , .datad (address[7])) ;
                           defparam ix51271z7096.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix51271z7100 (.combout (nx51271z6), .dataa (
                           row_count[0]), .datab (row_count[1]), .datac (
                           row_count[2]), .datad (row_count[3])) ;
                           defparam ix51271z7100.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix51271z7099 (.combout (nx51271z5), .dataa (
                           row_count[4]), .datab (row_count[5]), .datac (
                           row_count[6]), .datad (row_count[7])) ;
                           defparam ix51271z7099.lut_mask = 16'h8000;
    fiftyfivenm_lcell_comb ix50941z7100 (.combout (nx50941z6), .dataa (
                           row_count[3]), .datab (row_count[4]), .datac (
                           row_count[6]), .datad (row_count[7])) ;
                           defparam ix50941z7100.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix50941z7099 (.combout (nx50941z5), .dataa (1'b1), .datab (
                           1'b1), .datac (row_count[1]), .datad (row_count[5])
                           ) ;
                           defparam ix50941z7099.lut_mask = 16'hfff0;
    fiftyfivenm_lcell_comb ix34964z7098 (.combout (nx34964z4), .dataa (1'b1), .datab (
                           row_count[1]), .datac (row_count[2]), .datad (
                           row_count[5])) ;
                           defparam ix34964z7098.lut_mask = 16'hfffc;
    fiftyfivenm_lcell_comb ix34964z7096 (.combout (nx34964z2), .dataa (1'b1), .datab (
                           o_dataB[7]), .datac (o_dataA[7]), .datad (
                           row_index[1])) ;
                           defparam ix34964z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix35961z7096 (.combout (nx35961z2), .dataa (1'b1), .datab (
                           o_dataB[6]), .datac (o_dataA[6]), .datad (
                           row_index[1])) ;
                           defparam ix35961z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix36958z7096 (.combout (nx36958z2), .dataa (1'b1), .datab (
                           o_dataB[5]), .datac (o_dataA[5]), .datad (
                           row_index[1])) ;
                           defparam ix36958z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix37955z7096 (.combout (nx37955z2), .dataa (1'b1), .datab (
                           o_dataB[4]), .datac (o_dataA[4]), .datad (
                           row_index[1])) ;
                           defparam ix37955z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix38952z7096 (.combout (nx38952z2), .dataa (1'b1), .datab (
                           o_dataB[3]), .datac (o_dataA[3]), .datad (
                           row_index[1])) ;
                           defparam ix38952z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix39949z7096 (.combout (nx39949z2), .dataa (1'b1), .datab (
                           o_dataB[2]), .datac (o_dataA[2]), .datad (
                           row_index[1])) ;
                           defparam ix39949z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix40946z7096 (.combout (nx40946z2), .dataa (1'b1), .datab (
                           o_dataB[1]), .datac (o_dataA[1]), .datad (
                           row_index[1])) ;
                           defparam ix40946z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix41943z7096 (.combout (nx41943z2), .dataa (1'b1), .datab (
                           o_dataB[0]), .datac (o_dataA[0]), .datad (
                           row_index[1])) ;
                           defparam ix41943z7096.lut_mask = 16'hccf0;
    fiftyfivenm_lcell_comb ix29829z7096 (.combout (nx29829z2), .dataa (1'b1), .datab (
                           o_dataC[7]), .datac (o_dataA[7]), .datad (
                           row_index[1])) ;
                           defparam ix29829z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix30826z7096 (.combout (nx30826z2), .dataa (1'b1), .datab (
                           o_dataC[6]), .datac (o_dataA[6]), .datad (
                           row_index[1])) ;
                           defparam ix30826z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix31823z7096 (.combout (nx31823z2), .dataa (1'b1), .datab (
                           o_dataC[5]), .datac (o_dataA[5]), .datad (
                           row_index[1])) ;
                           defparam ix31823z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix32820z7096 (.combout (nx32820z2), .dataa (1'b1), .datab (
                           o_dataC[4]), .datac (o_dataA[4]), .datad (
                           row_index[1])) ;
                           defparam ix32820z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix33817z7096 (.combout (nx33817z2), .dataa (1'b1), .datab (
                           o_dataC[3]), .datac (o_dataA[3]), .datad (
                           row_index[1])) ;
                           defparam ix33817z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix34814z7096 (.combout (nx34814z2), .dataa (1'b1), .datab (
                           o_dataC[2]), .datac (o_dataA[2]), .datad (
                           row_index[1])) ;
                           defparam ix34814z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix35811z7096 (.combout (nx35811z2), .dataa (1'b1), .datab (
                           o_dataC[1]), .datac (o_dataA[1]), .datad (
                           row_index[1])) ;
                           defparam ix35811z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix36808z7096 (.combout (nx36808z2), .dataa (1'b1), .datab (
                           o_dataC[0]), .datac (o_dataA[0]), .datad (
                           row_index[1])) ;
                           defparam ix36808z7096.lut_mask = 16'hf0cc;
    fiftyfivenm_lcell_comb ix51271z7098 (.combout (nx51271z4), .dataa (nx51271z5
                           ), .datab (nx51271z6), .datac (nx51271z7), .datad (
                           reset)) ;
                           defparam ix51271z7098.lut_mask = 16'hff80;
    fiftyfivenm_lcell_comb ix43224z7095 (.combout (nx43224z1), .dataa (nx43224z2
                           ), .datab (nx43224z3), .datac (nx43224z4), .datad (
                           i_valid)) ;
                           defparam ix43224z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix44221z7095 (.combout (nx44221z1), .dataa (nx44221z2
                           ), .datab (nx44221z3), .datac (nx44221z4), .datad (
                           i_valid)) ;
                           defparam ix44221z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix45218z7095 (.combout (nx45218z1), .dataa (nx45218z2
                           ), .datab (nx45218z3), .datac (nx45218z4), .datad (
                           i_valid)) ;
                           defparam ix45218z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix46215z7095 (.combout (nx46215z1), .dataa (nx46215z2
                           ), .datab (nx46215z3), .datac (nx46215z4), .datad (
                           i_valid)) ;
                           defparam ix46215z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix47212z7095 (.combout (nx47212z1), .dataa (nx47212z2
                           ), .datab (nx47212z3), .datac (nx47212z4), .datad (
                           i_valid)) ;
                           defparam ix47212z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix48209z7095 (.combout (nx48209z1), .dataa (nx48209z2
                           ), .datab (nx48209z3), .datac (nx48209z4), .datad (
                           i_valid)) ;
                           defparam ix48209z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix49206z7095 (.combout (nx49206z1), .dataa (nx49206z2
                           ), .datab (nx49206z3), .datac (nx49206z4), .datad (
                           i_valid)) ;
                           defparam ix49206z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix50203z7095 (.combout (nx50203z1), .dataa (nx50203z2
                           ), .datab (nx50203z3), .datac (nx50203z4), .datad (
                           i_valid)) ;
                           defparam ix50203z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix39150z7095 (.combout (nx39150z1), .dataa (nx39150z2
                           ), .datab (nx39150z4), .datac (nx39150z5), .datad (
                           i_valid)) ;
                           defparam ix39150z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix38153z7095 (.combout (nx38153z1), .dataa (nx38153z2
                           ), .datab (nx38153z3), .datac (nx38153z4), .datad (
                           i_valid)) ;
                           defparam ix38153z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix37156z7095 (.combout (nx37156z1), .dataa (nx37156z2
                           ), .datab (nx37156z3), .datac (nx37156z4), .datad (
                           i_valid)) ;
                           defparam ix37156z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix36159z7095 (.combout (nx36159z1), .dataa (nx36159z2
                           ), .datab (nx36159z3), .datac (nx36159z4), .datad (
                           i_valid)) ;
                           defparam ix36159z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix35162z7095 (.combout (nx35162z1), .dataa (nx35162z2
                           ), .datab (nx35162z3), .datac (nx35162z4), .datad (
                           i_valid)) ;
                           defparam ix35162z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix34165z7095 (.combout (nx34165z1), .dataa (nx34165z2
                           ), .datab (nx34165z3), .datac (nx34165z4), .datad (
                           i_valid)) ;
                           defparam ix34165z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix33168z7095 (.combout (nx33168z1), .dataa (nx33168z2
                           ), .datab (nx33168z3), .datac (nx33168z4), .datad (
                           i_valid)) ;
                           defparam ix33168z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix32171z7095 (.combout (nx32171z1), .dataa (nx32171z2
                           ), .datab (nx32171z3), .datac (nx32171z4), .datad (
                           i_valid)) ;
                           defparam ix32171z7095.lut_mask = 16'hf0f8;
    fiftyfivenm_lcell_comb ix34964z7095 (.combout (nx34964z1), .dataa (1'b1), .datab (
                           nx34964z2), .datac (nx47085z4), .datad (o_dataC[7])
                           ) ;
                           defparam ix34964z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix35961z7095 (.combout (nx35961z1), .dataa (1'b1), .datab (
                           nx35961z2), .datac (nx47085z4), .datad (o_dataC[6])
                           ) ;
                           defparam ix35961z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix36958z7095 (.combout (nx36958z1), .dataa (1'b1), .datab (
                           nx36958z2), .datac (nx47085z4), .datad (o_dataC[5])
                           ) ;
                           defparam ix36958z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix37955z7095 (.combout (nx37955z1), .dataa (1'b1), .datab (
                           nx37955z2), .datac (nx47085z4), .datad (o_dataC[4])
                           ) ;
                           defparam ix37955z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix38952z7095 (.combout (nx38952z1), .dataa (1'b1), .datab (
                           nx38952z2), .datac (nx47085z4), .datad (o_dataC[3])
                           ) ;
                           defparam ix38952z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix39949z7095 (.combout (nx39949z1), .dataa (1'b1), .datab (
                           nx39949z2), .datac (nx47085z4), .datad (o_dataC[2])
                           ) ;
                           defparam ix39949z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix40946z7095 (.combout (nx40946z1), .dataa (1'b1), .datab (
                           nx40946z2), .datac (nx47085z4), .datad (o_dataC[1])
                           ) ;
                           defparam ix40946z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix41943z7095 (.combout (nx41943z1), .dataa (1'b1), .datab (
                           nx41943z2), .datac (nx47085z4), .datad (o_dataC[0])
                           ) ;
                           defparam ix41943z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix29829z7095 (.combout (nx29829z1), .dataa (1'b1), .datab (
                           nx29829z2), .datac (nx47085z4), .datad (o_dataB[7])
                           ) ;
                           defparam ix29829z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix30826z7095 (.combout (nx30826z1), .dataa (1'b1), .datab (
                           nx30826z2), .datac (nx47085z4), .datad (o_dataB[6])
                           ) ;
                           defparam ix30826z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix31823z7095 (.combout (nx31823z1), .dataa (1'b1), .datab (
                           nx31823z2), .datac (nx47085z4), .datad (o_dataB[5])
                           ) ;
                           defparam ix31823z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix32820z7095 (.combout (nx32820z1), .dataa (1'b1), .datab (
                           nx32820z2), .datac (nx47085z4), .datad (o_dataB[4])
                           ) ;
                           defparam ix32820z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix33817z7095 (.combout (nx33817z1), .dataa (1'b1), .datab (
                           nx33817z2), .datac (nx47085z4), .datad (o_dataB[3])
                           ) ;
                           defparam ix33817z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix34814z7095 (.combout (nx34814z1), .dataa (1'b1), .datab (
                           nx34814z2), .datac (nx47085z4), .datad (o_dataB[2])
                           ) ;
                           defparam ix34814z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix35811z7095 (.combout (nx35811z1), .dataa (1'b1), .datab (
                           nx35811z2), .datac (nx47085z4), .datad (o_dataB[1])
                           ) ;
                           defparam ix35811z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix36808z7095 (.combout (nx36808z1), .dataa (1'b1), .datab (
                           nx36808z2), .datac (nx47085z4), .datad (o_dataB[0])
                           ) ;
                           defparam ix36808z7095.lut_mask = 16'hfc0c;
    fiftyfivenm_lcell_comb ix4013z7101 (.combout (nx4013z7), .dataa (nx4013z8), 
                           .datab (nx4013z9), .datac (nx4013z10), .datad (
                           nx4013z11)) ;
                           defparam ix4013z7101.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix4013z7098 (.combout (nx4013z4), .dataa (nx39150z3)
                           , .datab (nx18188z2), .datac (nx4013z5), .datad (
                           nx4013z6)) ;
                           defparam ix4013z7098.lut_mask = 16'hfff8;
    fiftyfivenm_lcell_comb ix4013z7105 (.combout (nx4013z11), .dataa (
                           r_add1_a[5]), .datab (r_add1_a[9]), .datac (r_max1[5]
                           ), .datad (r_max1[9])) ;
                           defparam ix4013z7105.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix4013z7104 (.combout (nx4013z10), .dataa (
                           r_add1_a[7]), .datab (r_add1_a[8]), .datac (r_max1[7]
                           ), .datad (r_max1[8])) ;
                           defparam ix4013z7104.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix4013z7103 (.combout (nx4013z9), .dataa (r_add1_a[1]
                           ), .datab (r_add1_a[6]), .datac (r_max1[1]), .datad (
                           r_max1[6])) ;
                           defparam ix4013z7103.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix4013z7102 (.combout (nx4013z8), .dataa (r_add1_a[3]
                           ), .datab (r_add1_a[4]), .datac (r_max1[3]), .datad (
                           r_max1[4])) ;
                           defparam ix4013z7102.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix42447z7096 (.combout (nx42447z2), .dataa (1'b1), .datab (
                           nx42447z3), .datac (dir2_final[1]), .datad (
                           dir1_final[2])) ;
                           defparam ix42447z7096.lut_mask = 16'hcfc0;
    fiftyfivenm_lcell_comb ix47569z7098 (.combout (nx47569z4), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix47569z7098.lut_mask = 16'h0001;
    fiftyfivenm_lcell_comb ix47569z7102 (.combout (nx47569z8), .dataa (nx41525z3
                           ), .datab (nx47569z5), .datac (nx47569z9), .datad (
                           i_valid)) ;
                           defparam ix47569z7102.lut_mask = 16'haafc;
    fiftyfivenm_lcell_comb ix47085z7102 (.combout (nx47085z7), .dataa (nx47085z8
                           ), .datab (nx41525z3), .datac (nx47569z5), .datad (
                           i_valid)) ;
                           defparam ix47085z7102.lut_mask = 16'h3305;
    fiftyfivenm_lcell_comb ix44441z7096 (.combout (nx44441z2), .dataa (nx44441z3
                           ), .datab (dir2_final[1]), .datac (dir2_final[2]), .datad (
                           dir1_final[3])) ;
                           defparam ix44441z7096.lut_mask = 16'hb0bf;
    fiftyfivenm_lcell_comb ix47085z7101 (.combout (nx47085z6), .dataa (nx50941z6
                           ), .datab (row_count[1]), .datac (row_count[2]), .datad (
                           row_count[5])) ;
                           defparam ix47085z7101.lut_mask = 16'hfffe;
    fiftyfivenm_lcell_comb ix42447z7097 (.combout (nx42447z3), .dataa (1'b1), .datab (
                           dir2_final[0]), .datac (dir1_final[0]), .datad (
                           dir1_final[1])) ;
                           defparam ix42447z7097.lut_mask = 16'hf3c0;
    fiftyfivenm_lcell_comb ix47569z7097 (.combout (nx47569z3), .dataa (nx35286z2
                           ), .datab (nx47569z4), .datac (stg_counter1[0]), .datad (
                           stg_counter1[1])) ;
                           defparam ix47569z7097.lut_mask = 16'hccce;
    fiftyfivenm_lcell_comb ix47085z7103 (.combout (nx47085z8), .dataa (nx47085z9
                           ), .datab (nx47085z10), .datac (stg_counter1[2]), .datad (
                           stg_counter1[3])) ;
                           defparam ix47085z7103.lut_mask = 16'h3331;
    fiftyfivenm_lcell_comb ix1448z7097 (.combout (nx1448z3), .dataa (r_sub0_7_)
                           , .datab (r_sub0_8_), .datac (r_sub0_9_), .datad (
                           r_sub0_10_)) ;
                           defparam ix1448z7097.lut_mask = 16'hfff8;
    fiftyfivenm_lcell_comb ix18188z7097 (.combout (nx18188z3), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix18188z7097.lut_mask = 16'h0040;
    fiftyfivenm_lcell_comb ix60567z7096 (.combout (nx60567z2), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix60567z7096.lut_mask = 16'h0080;
    fiftyfivenm_lcell_comb ix4013z7099 (.combout (nx4013z5), .dataa (r_add1_a[0]
                           ), .datab (r_add1_a[2]), .datac (r_max1[0]), .datad (
                           r_max1[2])) ;
                           defparam ix4013z7099.lut_mask = 16'h7bde;
    fiftyfivenm_lcell_comb ix35286z7098 (.combout (nx35286z3), .dataa (
                           stg_counter2[0]), .datab (stg_counter2[1]), .datac (
                           stg_counter2[2]), .datad (stg_counter2[3])) ;
                           defparam ix35286z7098.lut_mask = 16'h0008;
    fiftyfivenm_lcell_comb ix18188z7096 (.combout (nx18188z2), .dataa (1'b1), .datab (
                           1'b1), .datac (stg_counter1[2]), .datad (
                           stg_counter1[3])) ;
                           defparam ix18188z7096.lut_mask = 16'h00f0;
    fiftyfivenm_lcell_comb ix35286z7124 (.combout (nx35286z29), .dataa (1'b1), .datab (
                           stg_counter2[1]), .datac (stg_counter2[2]), .datad (
                           stg_counter2[3])) ;
                           defparam ix35286z7124.lut_mask = 16'h0030;
    fiftyfivenm_lcell_comb ix32171z7098 (.combout (nx32171z4), .dataa (nx18119z2
                           ), .datab (nx47085z4), .datac (o_dataB[0]), .datad (
                           i_valid)) ;
                           defparam ix32171z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix18119z7097 (.combout (nx18119z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[0]), .datad (
                           o_dataA[0])) ;
                           defparam ix18119z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix18119z7096 (.combout (nx18119z1), .dataa (
                           o_dataB[0]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix18119z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix33168z7098 (.combout (nx33168z4), .dataa (nx17122z2
                           ), .datab (nx47085z4), .datac (o_dataB[1]), .datad (
                           i_valid)) ;
                           defparam ix33168z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix17122z7097 (.combout (nx17122z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[1]), .datad (
                           o_dataA[1])) ;
                           defparam ix17122z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix17122z7096 (.combout (nx17122z1), .dataa (
                           o_dataB[1]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix17122z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix34165z7098 (.combout (nx34165z4), .dataa (nx16125z2
                           ), .datab (nx47085z4), .datac (o_dataB[2]), .datad (
                           i_valid)) ;
                           defparam ix34165z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix16125z7097 (.combout (nx16125z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[2]), .datad (
                           o_dataA[2])) ;
                           defparam ix16125z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix16125z7096 (.combout (nx16125z1), .dataa (
                           o_dataB[2]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix16125z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix35162z7098 (.combout (nx35162z4), .dataa (nx15128z2
                           ), .datab (nx47085z4), .datac (o_dataB[3]), .datad (
                           i_valid)) ;
                           defparam ix35162z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix15128z7097 (.combout (nx15128z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[3]), .datad (
                           o_dataA[3])) ;
                           defparam ix15128z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix15128z7096 (.combout (nx15128z1), .dataa (
                           o_dataB[3]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix15128z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix36159z7098 (.combout (nx36159z4), .dataa (nx14131z2
                           ), .datab (nx47085z4), .datac (o_dataB[4]), .datad (
                           i_valid)) ;
                           defparam ix36159z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix14131z7097 (.combout (nx14131z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[4]), .datad (
                           o_dataA[4])) ;
                           defparam ix14131z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix14131z7096 (.combout (nx14131z1), .dataa (
                           o_dataB[4]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix14131z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix37156z7098 (.combout (nx37156z4), .dataa (nx13134z2
                           ), .datab (nx47085z4), .datac (o_dataB[5]), .datad (
                           i_valid)) ;
                           defparam ix37156z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix13134z7097 (.combout (nx13134z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[5]), .datad (
                           o_dataA[5])) ;
                           defparam ix13134z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix13134z7096 (.combout (nx13134z1), .dataa (
                           o_dataB[5]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix13134z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix38153z7098 (.combout (nx38153z4), .dataa (nx12137z2
                           ), .datab (nx47085z4), .datac (o_dataB[6]), .datad (
                           i_valid)) ;
                           defparam ix38153z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix12137z7097 (.combout (nx12137z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[6]), .datad (
                           o_dataA[6])) ;
                           defparam ix12137z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix12137z7096 (.combout (nx12137z1), .dataa (
                           o_dataB[6]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix12137z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix39150z7099 (.combout (nx39150z5), .dataa (nx24694z2
                           ), .datab (nx47085z4), .datac (o_dataB[7]), .datad (
                           i_valid)) ;
                           defparam ix39150z7099.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix24694z7097 (.combout (nx24694z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataC[7]), .datad (
                           o_dataA[7])) ;
                           defparam ix24694z7097.lut_mask = 16'h3120;
    fiftyfivenm_lcell_comb ix24694z7096 (.combout (nx24694z1), .dataa (
                           o_dataB[7]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix24694z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix50203z7098 (.combout (nx50203z4), .dataa (nx54064z2
                           ), .datab (nx47085z4), .datac (o_dataC[0]), .datad (
                           i_valid)) ;
                           defparam ix50203z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix54064z7097 (.combout (nx54064z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[0]), .datad (
                           o_dataA[0])) ;
                           defparam ix54064z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix54064z7096 (.combout (nx54064z1), .dataa (
                           o_dataC[0]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix54064z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix49206z7098 (.combout (nx49206z4), .dataa (nx53067z2
                           ), .datab (nx47085z4), .datac (o_dataC[1]), .datad (
                           i_valid)) ;
                           defparam ix49206z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix53067z7097 (.combout (nx53067z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[1]), .datad (
                           o_dataA[1])) ;
                           defparam ix53067z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix53067z7096 (.combout (nx53067z1), .dataa (
                           o_dataC[1]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix53067z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix48209z7098 (.combout (nx48209z4), .dataa (nx52070z2
                           ), .datab (nx47085z4), .datac (o_dataC[2]), .datad (
                           i_valid)) ;
                           defparam ix48209z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix52070z7097 (.combout (nx52070z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[2]), .datad (
                           o_dataA[2])) ;
                           defparam ix52070z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix52070z7096 (.combout (nx52070z1), .dataa (
                           o_dataC[2]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix52070z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix47212z7098 (.combout (nx47212z4), .dataa (nx51073z2
                           ), .datab (nx47085z4), .datac (o_dataC[3]), .datad (
                           i_valid)) ;
                           defparam ix47212z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix51073z7097 (.combout (nx51073z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[3]), .datad (
                           o_dataA[3])) ;
                           defparam ix51073z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix51073z7096 (.combout (nx51073z1), .dataa (
                           o_dataC[3]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix51073z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix46215z7098 (.combout (nx46215z4), .dataa (nx50076z2
                           ), .datab (nx47085z4), .datac (o_dataC[4]), .datad (
                           i_valid)) ;
                           defparam ix46215z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix50076z7097 (.combout (nx50076z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[4]), .datad (
                           o_dataA[4])) ;
                           defparam ix50076z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix50076z7096 (.combout (nx50076z1), .dataa (
                           o_dataC[4]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix50076z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix45218z7098 (.combout (nx45218z4), .dataa (nx49079z2
                           ), .datab (nx47085z4), .datac (o_dataC[5]), .datad (
                           i_valid)) ;
                           defparam ix45218z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix49079z7097 (.combout (nx49079z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[5]), .datad (
                           o_dataA[5])) ;
                           defparam ix49079z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix49079z7096 (.combout (nx49079z1), .dataa (
                           o_dataC[5]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix49079z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix44221z7098 (.combout (nx44221z4), .dataa (nx48082z2
                           ), .datab (nx47085z4), .datac (o_dataC[6]), .datad (
                           i_valid)) ;
                           defparam ix44221z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix48082z7097 (.combout (nx48082z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[6]), .datad (
                           o_dataA[6])) ;
                           defparam ix48082z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix48082z7096 (.combout (nx48082z1), .dataa (
                           o_dataC[6]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix48082z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix47085z7104 (.combout (nx47085z9), .dataa (1'b1), .datab (
                           1'b1), .datac (stg_counter1[0]), .datad (
                           stg_counter1[1])) ;
                           defparam ix47085z7104.lut_mask = 16'h0f00;
    fiftyfivenm_lcell_comb ix43224z7098 (.combout (nx43224z4), .dataa (nx47085z2
                           ), .datab (nx47085z4), .datac (o_dataC[7]), .datad (
                           i_valid)) ;
                           defparam ix43224z7098.lut_mask = 16'hea00;
    fiftyfivenm_lcell_comb ix39150z7097 (.combout (nx39150z3), .dataa (1'b1), .datab (
                           1'b1), .datac (stg_counter1[0]), .datad (
                           stg_counter1[1])) ;
                           defparam ix39150z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix35286z7097 (.combout (nx35286z2), .dataa (1'b1), .datab (
                           1'b1), .datac (stg_counter1[2]), .datad (
                           stg_counter1[3])) ;
                           defparam ix35286z7097.lut_mask = 16'h000f;
    fiftyfivenm_lcell_comb ix47085z7097 (.combout (nx47085z2), .dataa (nx47085z3
                           ), .datab (nx47085z4), .datac (o_dataB[7]), .datad (
                           o_dataA[7])) ;
                           defparam ix47085z7097.lut_mask = 16'h3210;
    fiftyfivenm_lcell_comb ix47085z7096 (.combout (nx47085z1), .dataa (
                           o_dataC[7]), .datab (row_index[0]), .datac (
                           row_index[1]), .datad (i_valid)) ;
                           defparam ix47085z7096.lut_mask = 16'h0200;
    fiftyfivenm_lcell_comb ix43224z7097 (.combout (nx43224z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[7]), .datad (a2[7])
                           ) ;
                           defparam ix43224z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix43224z7096 (.combout (nx43224z2), .dataa (1'b1), .datab (
                           1'b1), .datac (nx47569z3), .datad (g2[7])) ;
                           defparam ix43224z7096.lut_mask = 16'hff0f;
    fiftyfivenm_lcell_comb ix44221z7097 (.combout (nx44221z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[6]), .datad (a2[6])
                           ) ;
                           defparam ix44221z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix44221z7096 (.combout (nx44221z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           g2[6])) ;
                           defparam ix44221z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix45218z7097 (.combout (nx45218z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[5]), .datad (a2[5])
                           ) ;
                           defparam ix45218z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix45218z7096 (.combout (nx45218z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           g2[5])) ;
                           defparam ix45218z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix46215z7097 (.combout (nx46215z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[4]), .datad (a2[4])
                           ) ;
                           defparam ix46215z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix46215z7096 (.combout (nx46215z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           g2[4])) ;
                           defparam ix46215z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix47212z7097 (.combout (nx47212z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[3]), .datad (a2[3])
                           ) ;
                           defparam ix47212z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix47212z7096 (.combout (nx47212z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           g2[3])) ;
                           defparam ix47212z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix48209z7097 (.combout (nx48209z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[2]), .datad (a2[2])
                           ) ;
                           defparam ix48209z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix48209z7096 (.combout (nx48209z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           g2[2])) ;
                           defparam ix48209z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix49206z7097 (.combout (nx49206z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[1]), .datad (a2[1])
                           ) ;
                           defparam ix49206z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix49206z7096 (.combout (nx49206z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           g2[1])) ;
                           defparam ix49206z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix50203z7097 (.combout (nx50203z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[0]), .datad (a2[0])
                           ) ;
                           defparam ix50203z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix50203z7096 (.combout (nx50203z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           g2[0])) ;
                           defparam ix50203z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix34805z7096 (.combout (nx34805z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[7]), .datad (e3[7])
                           ) ;
                           defparam ix34805z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix35802z7096 (.combout (nx35802z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[6]), .datad (e3[6])
                           ) ;
                           defparam ix35802z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix36799z7096 (.combout (nx36799z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[5]), .datad (e3[5])
                           ) ;
                           defparam ix36799z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix37796z7096 (.combout (nx37796z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[4]), .datad (e3[4])
                           ) ;
                           defparam ix37796z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix38793z7096 (.combout (nx38793z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[3]), .datad (e3[3])
                           ) ;
                           defparam ix38793z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix39790z7096 (.combout (nx39790z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[2]), .datad (e3[2])
                           ) ;
                           defparam ix39790z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix40787z7096 (.combout (nx40787z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[1]), .datad (e3[1])
                           ) ;
                           defparam ix40787z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix41784z7096 (.combout (nx41784z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[0]), .datad (e3[0])
                           ) ;
                           defparam ix41784z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix39150z7098 (.combout (nx39150z4), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[7]), .datad (a3[7])
                           ) ;
                           defparam ix39150z7098.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix39150z7096 (.combout (nx39150z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[7])) ;
                           defparam ix39150z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix38153z7097 (.combout (nx38153z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[6]), .datad (a3[6])
                           ) ;
                           defparam ix38153z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix38153z7096 (.combout (nx38153z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[6])) ;
                           defparam ix38153z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix37156z7097 (.combout (nx37156z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[5]), .datad (a3[5])
                           ) ;
                           defparam ix37156z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix37156z7096 (.combout (nx37156z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[5])) ;
                           defparam ix37156z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix36159z7097 (.combout (nx36159z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[4]), .datad (a3[4])
                           ) ;
                           defparam ix36159z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix36159z7096 (.combout (nx36159z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[4])) ;
                           defparam ix36159z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix35162z7097 (.combout (nx35162z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[3]), .datad (a3[3])
                           ) ;
                           defparam ix35162z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix35162z7096 (.combout (nx35162z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[3])) ;
                           defparam ix35162z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix34165z7097 (.combout (nx34165z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[2]), .datad (a3[2])
                           ) ;
                           defparam ix34165z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix34165z7096 (.combout (nx34165z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[2])) ;
                           defparam ix34165z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix33168z7097 (.combout (nx33168z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[1]), .datad (a3[1])
                           ) ;
                           defparam ix33168z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix33168z7096 (.combout (nx33168z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[1])) ;
                           defparam ix33168z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix32171z7097 (.combout (nx32171z3), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (g3[0]), .datad (a3[0])
                           ) ;
                           defparam ix32171z7097.lut_mask = 16'hfbea;
    fiftyfivenm_lcell_comb ix32171z7096 (.combout (nx32171z2), .dataa (nx35286z2
                           ), .datab (nx39150z3), .datac (nx47569z4), .datad (
                           e3[0])) ;
                           defparam ix32171z7096.lut_mask = 16'hff07;
    fiftyfivenm_lcell_comb ix47569z7096 (.combout (nx47569z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[7]), .datad (g2[7])
                           ) ;
                           defparam ix47569z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix46572z7096 (.combout (nx46572z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[6]), .datad (g2[6])
                           ) ;
                           defparam ix46572z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix45575z7096 (.combout (nx45575z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[5]), .datad (g2[5])
                           ) ;
                           defparam ix45575z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix44578z7096 (.combout (nx44578z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[4]), .datad (g2[4])
                           ) ;
                           defparam ix44578z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix43581z7096 (.combout (nx43581z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[3]), .datad (g2[3])
                           ) ;
                           defparam ix43581z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix42584z7096 (.combout (nx42584z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[2]), .datad (g2[2])
                           ) ;
                           defparam ix42584z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix41587z7096 (.combout (nx41587z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[1]), .datad (g2[1])
                           ) ;
                           defparam ix41587z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix40590z7096 (.combout (nx40590z2), .dataa (nx47569z3
                           ), .datab (nx47569z5), .datac (h3[0]), .datad (g2[0])
                           ) ;
                           defparam ix40590z7096.lut_mask = 16'hfeba;
    fiftyfivenm_lcell_comb ix4013z7096 (.combout (nx4013z2), .dataa (1'b1), .datab (
                           1'b1), .datac (max1_bit_counter[0]), .datad (
                           max1_bit_counter[1])) ;
                           defparam ix4013z7096.lut_mask = 16'hfff0;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename86;



    altsyncram ix64056z29483 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename86), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename86), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29483.width_a = 8;
               defparam ix64056z29483.widthad_a = 8;
               defparam ix64056z29483.numwords_a = 256;
               defparam ix64056z29483.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29483.address_aclr_a = "NONE";
               defparam ix64056z29483.outdata_aclr_a = "NONE";
               defparam ix64056z29483.indata_aclr_a = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29483.byteena_aclr_a = "NONE";
               defparam ix64056z29483.width_byteena_a = 1;
               defparam ix64056z29483.width_b = 8;
               defparam ix64056z29483.widthad_b = 8;
               defparam ix64056z29483.numwords_b = 256;
               defparam ix64056z29483.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29483.address_reg_b = "CLOCK1";
               defparam ix64056z29483.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29483.outdata_aclr_b = "NONE";
               defparam ix64056z29483.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29483.indata_reg_b = "CLOCK1";
               defparam ix64056z29483.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29483.byteena_reg_b = "CLOCK1";
               defparam ix64056z29483.indata_aclr_b = "NONE";
               defparam ix64056z29483.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29483.byteena_aclr_b = "NONE";
               defparam ix64056z29483.width_byteena_b = 1;
               defparam ix64056z29483.address_aclr_b = "NONE";
               defparam ix64056z29483.operation_mode = "SINGLE_PORT";
               defparam ix64056z29483.byte_size = 8;
               defparam ix64056z29483.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29483.ram_block_type = "AUTO";
               defparam ix64056z29483.init_file = "UNUSED";
               defparam ix64056z29483.init_file_layout = "UNUSED";
               defparam ix64056z29483.maximum_depth = 0;
               defparam ix64056z29483.intended_device_family = "MAX 10";
               defparam ix64056z29483.lpm_hint = "UNUSED";
               defparam ix64056z29483.lpm_type = "altsyncram";
    assign rd_ena1_rename86 = 1'b1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename56;



    altsyncram ix64056z29482 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename56), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename56), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29482.width_a = 8;
               defparam ix64056z29482.widthad_a = 8;
               defparam ix64056z29482.numwords_a = 256;
               defparam ix64056z29482.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29482.address_aclr_a = "NONE";
               defparam ix64056z29482.outdata_aclr_a = "NONE";
               defparam ix64056z29482.indata_aclr_a = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29482.byteena_aclr_a = "NONE";
               defparam ix64056z29482.width_byteena_a = 1;
               defparam ix64056z29482.width_b = 8;
               defparam ix64056z29482.widthad_b = 8;
               defparam ix64056z29482.numwords_b = 256;
               defparam ix64056z29482.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29482.address_reg_b = "CLOCK1";
               defparam ix64056z29482.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29482.outdata_aclr_b = "NONE";
               defparam ix64056z29482.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29482.indata_reg_b = "CLOCK1";
               defparam ix64056z29482.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29482.byteena_reg_b = "CLOCK1";
               defparam ix64056z29482.indata_aclr_b = "NONE";
               defparam ix64056z29482.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29482.byteena_aclr_b = "NONE";
               defparam ix64056z29482.width_byteena_b = 1;
               defparam ix64056z29482.address_aclr_b = "NONE";
               defparam ix64056z29482.operation_mode = "SINGLE_PORT";
               defparam ix64056z29482.byte_size = 8;
               defparam ix64056z29482.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29482.ram_block_type = "AUTO";
               defparam ix64056z29482.init_file = "UNUSED";
               defparam ix64056z29482.init_file_layout = "UNUSED";
               defparam ix64056z29482.maximum_depth = 0;
               defparam ix64056z29482.intended_device_family = "MAX 10";
               defparam ix64056z29482.lpm_hint = "UNUSED";
               defparam ix64056z29482.lpm_type = "altsyncram";
    assign rd_ena1_rename56 = 1'b1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1, regrst1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [7:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;
    input regrst1 ;

    wire rd_ena1_rename26;



    altsyncram ix64056z29481 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[7],addr1[6],addr1[5],addr1[4],addr1[3],addr1[2],addr1[1],
               addr1[0]}), .wren_a (wr_ena1), .rden_a (rd_ena1_rename26), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename26), .q_a ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]})) ;
               defparam ix64056z29481.width_a = 8;
               defparam ix64056z29481.widthad_a = 8;
               defparam ix64056z29481.numwords_a = 256;
               defparam ix64056z29481.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z29481.address_aclr_a = "NONE";
               defparam ix64056z29481.outdata_aclr_a = "NONE";
               defparam ix64056z29481.indata_aclr_a = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_a = "NONE";
               defparam ix64056z29481.byteena_aclr_a = "NONE";
               defparam ix64056z29481.width_byteena_a = 1;
               defparam ix64056z29481.width_b = 8;
               defparam ix64056z29481.widthad_b = 8;
               defparam ix64056z29481.numwords_b = 256;
               defparam ix64056z29481.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z29481.address_reg_b = "CLOCK1";
               defparam ix64056z29481.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z29481.outdata_aclr_b = "NONE";
               defparam ix64056z29481.rdcontrol_aclr_b = "NONE";
               defparam ix64056z29481.indata_reg_b = "CLOCK1";
               defparam ix64056z29481.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z29481.byteena_reg_b = "CLOCK1";
               defparam ix64056z29481.indata_aclr_b = "NONE";
               defparam ix64056z29481.wrcontrol_aclr_b = "NONE";
               defparam ix64056z29481.byteena_aclr_b = "NONE";
               defparam ix64056z29481.width_byteena_b = 1;
               defparam ix64056z29481.address_aclr_b = "NONE";
               defparam ix64056z29481.operation_mode = "SINGLE_PORT";
               defparam ix64056z29481.byte_size = 8;
               defparam ix64056z29481.read_during_write_mode_mixed_ports = "DONT_CARE";
               defparam ix64056z29481.ram_block_type = "AUTO";
               defparam ix64056z29481.init_file = "UNUSED";
               defparam ix64056z29481.init_file_layout = "UNUSED";
               defparam ix64056z29481.maximum_depth = 0;
               defparam ix64056z29481.intended_device_family = "MAX 10";
               defparam ix64056z29481.lpm_hint = "UNUSED";
               defparam ix64056z29481.lpm_type = "altsyncram";
    assign rd_ena1_rename26 = 1'b1 ;
endmodule

