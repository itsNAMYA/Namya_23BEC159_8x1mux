// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/3/2025 at 9:41:25
// Library Name: MUX_LIB
// Block Name: mux
// User Label: 
// Write Command: write_verilog ./results/mux.routed.v
module mux ( A , B , C_in , C_out , Clock , SUM ) ;
input  [3:0] A ;
input  [3:0] B ;
input  C_in ;
output C_out ;
input  Clock ;
output [3:0] SUM ;

wire [3:0] reg1 ;
wire [3:1] reg2 ;
wire [3:0] sum_i ;

DFFX1_RVT \reg1_reg[0] ( .D ( A[0] ) , .CLK ( ctosc_drc_0 ) , .Q ( reg1[0] ) , 
    .QN ( n44 ) ) ;
DFFX1_RVT \reg2_reg[0] ( .D ( B[0] ) , .CLK ( ctosc_drc_0 ) , .Q ( n7 ) , 
    .QN ( n45 ) ) ;
DFFX1_RVT \reg2_reg[3] ( .D ( B[3] ) , .CLK ( ctosc_drc_0 ) , .Q ( reg2[3] ) ) ;
DFFX1_RVT \reg2_reg[2] ( .D ( B[2] ) , .CLK ( ctosc_drc_0 ) , .Q ( reg2[2] ) ) ;
DFFX1_RVT \reg2_reg[1] ( .D ( B[1] ) , .CLK ( ctosc_drc_0 ) , .Q ( reg2[1] ) , 
    .QN ( n47 ) ) ;
DFFX1_RVT \reg1_reg[3] ( .D ( A[3] ) , .CLK ( ctosc_drc_0 ) , .Q ( reg1[3] ) ) ;
DFFX1_RVT \reg1_reg[2] ( .D ( A[2] ) , .CLK ( ctosc_drc_0 ) , .Q ( reg1[2] ) ) ;
DFFX1_RVT \reg1_reg[1] ( .D ( A[1] ) , .CLK ( ctosc_drc_0 ) , .Q ( reg1[1] ) ) ;
DFFX1_RVT c_in_reg ( .D ( C_in ) , .CLK ( ctosc_drc_0 ) , .Q ( c_in ) ) ;
DFFX1_RVT \SUM_reg[0] ( .D ( sum_i[0] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[0] ) ) ;
DFFX1_RVT \SUM_reg[1] ( .D ( sum_i[1] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[1] ) ) ;
DFFX1_RVT C_out_reg ( .D ( c_out ) , .CLK ( ctosc_drc_0 ) , .Q ( C_out ) ) ;
DFFX1_RVT \SUM_reg[2] ( .D ( sum_i[2] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[2] ) ) ;
DFFX1_RVT \SUM_reg[3] ( .D ( sum_i[3] ) , .CLK ( ctosc_drc_0 ) , 
    .Q ( SUM[3] ) ) ;
NAND3X0_RVT U3 ( .A1 ( n14 ) , .A2 ( n39 ) , .A3 ( n13 ) , .Y ( n3 ) ) ;
NAND2X0_RVT U4 ( .A1 ( n1 ) , .A2 ( n24 ) , .Y ( n43 ) ) ;
INVX0_RVT ctmTdsLR_1_461 ( .A ( tmp_net23 ) , .Y ( sum_i[3] ) ) ;
NAND3X0_RVT ctmTdsLR_1_7 ( .A1 ( n40 ) , .A2 ( n16 ) , .A3 ( n26 ) , 
    .Y ( n21 ) ) ;
NAND2X0_RVT ctmTdsLR_1_449 ( .A1 ( c_in ) , .A2 ( tmp_net15 ) , .Y ( n34 ) ) ;
INVX0_RVT ctmTdsLR_1_8 ( .A ( n39 ) , .Y ( tmp_net3 ) ) ;
NAND3X0_RVT ctmTdsLR_1_4 ( .A1 ( n31 ) , .A2 ( n32 ) , .A3 ( n36 ) , 
    .Y ( n14 ) ) ;
INVX0_RVT gre_a_INV_23_inst_466 ( .A ( reg2[3] ) , .Y ( gre_a_INV_23_0 ) ) ;
INVX0_RVT ctmTdsLR_1_456 ( .A ( tmp_net20 ) , .Y ( sum_i[2] ) ) ;
NAND2X0_RVT ctmTdsLR_2_3 ( .A1 ( gre_a_INV_112_0 ) , .A2 ( n36 ) , 
    .Y ( n13 ) ) ;
NAND2X0_RVT ctmTdsLR_1_440 ( .A1 ( tmp_net8 ) , .A2 ( reg2[3] ) , .Y ( n23 ) ) ;
NAND3X0_RVT U17 ( .A1 ( n14 ) , .A2 ( n13 ) , .A3 ( n39 ) , .Y ( n40 ) ) ;
NAND2X0_RVT U21 ( .A1 ( n12 ) , .A2 ( n11 ) , .Y ( n39 ) ) ;
NAND2X0_RVT U22 ( .A1 ( n22 ) , .A2 ( n23 ) , .Y ( n24 ) ) ;
NAND2X0_RVT U23 ( .A1 ( reg1[1] ) , .A2 ( reg2[1] ) , .Y ( n26 ) ) ;
NAND2X0_RVT U24 ( .A1 ( n26 ) , .A2 ( n3 ) , .Y ( n27 ) ) ;
NAND2X0_RVT U25 ( .A1 ( reg1[2] ) , .A2 ( reg2[2] ) , .Y ( n16 ) ) ;
NAND2X0_RVT U26 ( .A1 ( n17 ) , .A2 ( n18 ) , .Y ( n28 ) ) ;
NAND2X0_RVT U27 ( .A1 ( n32 ) , .A2 ( n31 ) , .Y ( n35 ) ) ;
NAND2X0_RVT U28 ( .A1 ( reg1[0] ) , .A2 ( gre_a_INV_23_2 ) , .Y ( n31 ) ) ;
NAND3X0_RVT ctmTdsLR_2_9 ( .A1 ( n37 ) , .A2 ( tmp_net3 ) , .A3 ( n36 ) , 
    .Y ( n41 ) ) ;
INVX0_RVT ctmTdsLR_1_5 ( .A ( n28 ) , .Y ( tmp_net2 ) ) ;
NAND2X0_RVT U31 ( .A1 ( reg1[1] ) , .A2 ( n47 ) , .Y ( n11 ) ) ;
NBUFFX4_RVT ctosc_drc_inst_345 ( .A ( ctosc_drc_1 ) , .Y ( ctosc_drc_0 ) ) ;
NBUFFX2_RVT ctosc_drc_inst_436 ( .A ( Clock ) , .Y ( ctosc_drc_1 ) ) ;
INVX0_RVT ctmTdsLR_3_451 ( .A ( n35 ) , .Y ( tmp_net15 ) ) ;
NAND2X0_RVT U35 ( .A1 ( reg1[2] ) , .A2 ( gre_a_INV_14_0 ) , .Y ( n17 ) ) ;
NAND2X0_RVT ctmTdsLR_1_437 ( .A1 ( tmp_net6 ) , .A2 ( tmp_net7 ) , 
    .Y ( n36 ) ) ;
NAND2X0_RVT U37 ( .A1 ( reg1[3] ) , .A2 ( gre_a_INV_23_0 ) , .Y ( n22 ) ) ;
INVX0_RVT gre_a_INV_14_inst_467 ( .A ( reg2[2] ) , .Y ( gre_a_INV_14_0 ) ) ;
NAND2X0_RVT U39 ( .A1 ( n28 ) , .A2 ( n27 ) , .Y ( n30 ) ) ;
NAND2X0_RVT ctmTdsLR_2_462 ( .A1 ( n43 ) , .A2 ( n25 ) , .Y ( tmp_net23 ) ) ;
INVX0_RVT ctmTdsLR_1_452 ( .A ( tmp_net16 ) , .Y ( sum_i[1] ) ) ;
NAND2X0_RVT U42 ( .A1 ( n35 ) , .A2 ( gre_a_INV_23_1 ) , .Y ( n33 ) ) ;
NAND2X0_RVT U43 ( .A1 ( n34 ) , .A2 ( n33 ) , .Y ( sum_i[0] ) ) ;
NAND2X0_RVT U44 ( .A1 ( n35 ) , .A2 ( c_in ) , .Y ( n37 ) ) ;
INVX0_RVT ctmTdsLR_2_438 ( .A ( n44 ) , .Y ( tmp_net6 ) ) ;
INVX0_RVT ctmTdsLR_3_439 ( .A ( n45 ) , .Y ( tmp_net7 ) ) ;
NAND2X0_RVT ctmTdsLR_2_457 ( .A1 ( n30 ) , .A2 ( n29 ) , .Y ( tmp_net20 ) ) ;
NAND2X0_RVT U48 ( .A1 ( reg1[3] ) , .A2 ( reg2[3] ) , .Y ( n42 ) ) ;
NAND2X0_RVT U49 ( .A1 ( n43 ) , .A2 ( n42 ) , .Y ( c_out ) ) ;
INVX0_RVT ctmTdsLR_1_0 ( .A ( reg1[1] ) , .Y ( tmp_net0 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1 ( .A1 ( tmp_net0 ) , .A2 ( reg2[1] ) , .Y ( n12 ) ) ;
NAND2X0_RVT ctmTdsLR_2_6 ( .A1 ( tmp_net2 ) , .A2 ( n16 ) , .Y ( n20 ) ) ;
INVX0_RVT ctmTdsLR_2_441 ( .A ( reg1[3] ) , .Y ( tmp_net8 ) ) ;
NAND2X0_RVT ctmTdsLR_1_443 ( .A1 ( tmp_net10 ) , .A2 ( n7 ) , .Y ( n32 ) ) ;
INVX0_RVT ctmTdsLR_2_444 ( .A ( reg1[0] ) , .Y ( tmp_net10 ) ) ;
NAND2X0_RVT ctmTdsLR_1_446 ( .A1 ( tmp_net12 ) , .A2 ( reg2[2] ) , 
    .Y ( n18 ) ) ;
INVX0_RVT ctmTdsLR_2_447 ( .A ( reg1[2] ) , .Y ( tmp_net12 ) ) ;
NAND2X0_RVT ctmTdsLR_2_453 ( .A1 ( n3 ) , .A2 ( n41 ) , .Y ( tmp_net16 ) ) ;
INVX0_RVT ctmTdsLR_1_454 ( .A ( tmp_net17 ) , .Y ( n1 ) ) ;
NAND2X0_RVT ctmTdsLR_2_455 ( .A1 ( n20 ) , .A2 ( n21 ) , .Y ( tmp_net17 ) ) ;
NAND2X0_RVT ctmTdsLR_3_458 ( .A1 ( tmp_net18 ) , .A2 ( tmp_net19 ) , 
    .Y ( n29 ) ) ;
INVX0_RVT ctmTdsLR_4_459 ( .A ( n28 ) , .Y ( tmp_net18 ) ) ;
INVX0_RVT ctmTdsLR_5_460 ( .A ( n27 ) , .Y ( tmp_net19 ) ) ;
NAND2X0_RVT ctmTdsLR_3_463 ( .A1 ( tmp_net21 ) , .A2 ( tmp_net22 ) , 
    .Y ( n25 ) ) ;
INVX0_RVT ctmTdsLR_4_464 ( .A ( n24 ) , .Y ( tmp_net21 ) ) ;
INVX0_RVT ctmTdsLR_5_465 ( .A ( n1 ) , .Y ( tmp_net22 ) ) ;
INVX0_RVT gre_a_INV_112_inst_468 ( .A ( c_in ) , .Y ( gre_a_INV_112_0 ) ) ;
INVX0_RVT gre_a_INV_23_inst_469 ( .A ( c_in ) , .Y ( gre_a_INV_23_1 ) ) ;
INVX0_RVT gre_a_INV_23_inst_470 ( .A ( n7 ) , .Y ( gre_a_INV_23_2 ) ) ;
endmodule


