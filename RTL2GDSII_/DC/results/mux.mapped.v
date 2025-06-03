/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Tue Jun  3 09:04:55 2025
/////////////////////////////////////////////////////////////


module mux ( A, B, C_in, C_out, Clock, SUM );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  input C_in, Clock;
  output C_out;
  wire   c_in, c_out, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n47;
  wire   [3:0] reg1;
  wire   [3:0] reg2;
  wire   [3:0] sum_i;

  DFFX1_RVT \reg1_reg[0]  ( .D(A[0]), .CLK(Clock), .Q(reg1[0]), .QN(n44) );
  DFFX1_RVT \reg2_reg[0]  ( .D(B[0]), .CLK(Clock), .Q(n7), .QN(n45) );
  DFFX1_RVT \reg2_reg[3]  ( .D(B[3]), .CLK(Clock), .Q(reg2[3]) );
  DFFX1_RVT \reg2_reg[2]  ( .D(B[2]), .CLK(Clock), .Q(reg2[2]) );
  DFFX1_RVT \reg2_reg[1]  ( .D(B[1]), .CLK(Clock), .Q(reg2[1]), .QN(n47) );
  DFFX1_RVT \reg1_reg[3]  ( .D(A[3]), .CLK(Clock), .Q(reg1[3]) );
  DFFX1_RVT \reg1_reg[2]  ( .D(A[2]), .CLK(Clock), .Q(reg1[2]) );
  DFFX1_RVT \reg1_reg[1]  ( .D(A[1]), .CLK(Clock), .Q(reg1[1]) );
  DFFX1_RVT c_in_reg ( .D(C_in), .CLK(Clock), .Q(c_in) );
  DFFX1_RVT \SUM_reg[0]  ( .D(sum_i[0]), .CLK(Clock), .Q(SUM[0]) );
  DFFX1_RVT \SUM_reg[1]  ( .D(sum_i[1]), .CLK(Clock), .Q(SUM[1]) );
  DFFX1_RVT C_out_reg ( .D(c_out), .CLK(Clock), .Q(C_out) );
  DFFX1_RVT \SUM_reg[2]  ( .D(sum_i[2]), .CLK(Clock), .Q(SUM[2]) );
  DFFX1_RVT \SUM_reg[3]  ( .D(sum_i[3]), .CLK(Clock), .Q(SUM[3]) );
  NAND3X1_RVT U3 ( .A1(n14), .A2(n13), .A3(n39), .Y(n3) );
  NAND2X1_RVT U4 ( .A1(n1), .A2(n24), .Y(n43) );
  OR2X1_RVT U5 ( .A1(n28), .A2(n27), .Y(n29) );
  NAND2X1_RVT U6 ( .A1(n9), .A2(n31), .Y(n14) );
  OR2X1_RVT U7 ( .A1(n4), .A2(reg1[3]), .Y(n23) );
  INVX0_RVT U8 ( .A(n16), .Y(n19) );
  INVX0_RVT U9 ( .A(n36), .Y(n10) );
  OR2X1_RVT U10 ( .A1(n2), .A2(reg1[1]), .Y(n12) );
  INVX1_RVT U11 ( .A(n7), .Y(n8) );
  OR2X1_RVT U12 ( .A1(n24), .A2(n1), .Y(n25) );
  AND2X1_RVT U13 ( .A1(n21), .A2(n20), .Y(n1) );
  OR2X1_RVT U14 ( .A1(reg1[0]), .A2(n8), .Y(n32) );
  INVX0_RVT U15 ( .A(reg2[1]), .Y(n2) );
  OR2X1_RVT U16 ( .A1(n44), .A2(n45), .Y(n36) );
  NAND3X0_RVT U17 ( .A1(n14), .A2(n13), .A3(n39), .Y(n40) );
  INVX0_RVT U18 ( .A(reg2[3]), .Y(n4) );
  INVX0_RVT U19 ( .A(c_in), .Y(n5) );
  INVX0_RVT U20 ( .A(reg2[2]), .Y(n6) );
  NAND2X1_RVT U21 ( .A1(n12), .A2(n11), .Y(n39) );
  NAND2X1_RVT U22 ( .A1(n23), .A2(n22), .Y(n24) );
  NAND2X1_RVT U23 ( .A1(reg1[1]), .A2(reg2[1]), .Y(n26) );
  NAND2X1_RVT U24 ( .A1(n26), .A2(n3), .Y(n27) );
  NAND2X1_RVT U25 ( .A1(reg1[2]), .A2(reg2[2]), .Y(n16) );
  NAND2X1_RVT U26 ( .A1(n18), .A2(n17), .Y(n28) );
  NAND2X1_RVT U27 ( .A1(n32), .A2(n31), .Y(n35) );
  NAND2X1_RVT U28 ( .A1(reg1[0]), .A2(n8), .Y(n31) );
  AND2X1_RVT U29 ( .A1(n32), .A2(n36), .Y(n9) );
  OR2X1_RVT U30 ( .A1(n10), .A2(c_in), .Y(n13) );
  NAND2X0_RVT U31 ( .A1(reg1[1]), .A2(n47), .Y(n11) );
  AND2X1_RVT U32 ( .A1(n26), .A2(n16), .Y(n15) );
  NAND2X0_RVT U33 ( .A1(n40), .A2(n15), .Y(n21) );
  OR2X1_RVT U34 ( .A1(n6), .A2(reg1[2]), .Y(n18) );
  NAND2X0_RVT U35 ( .A1(reg1[2]), .A2(n6), .Y(n17) );
  OR2X1_RVT U36 ( .A1(n19), .A2(n28), .Y(n20) );
  NAND2X0_RVT U37 ( .A1(reg1[3]), .A2(n4), .Y(n22) );
  AND2X1_RVT U38 ( .A1(n43), .A2(n25), .Y(sum_i[3]) );
  NAND2X0_RVT U39 ( .A1(n28), .A2(n27), .Y(n30) );
  AND2X1_RVT U40 ( .A1(n30), .A2(n29), .Y(sum_i[2]) );
  OR2X1_RVT U41 ( .A1(n5), .A2(n35), .Y(n34) );
  NAND2X0_RVT U42 ( .A1(n35), .A2(n5), .Y(n33) );
  NAND2X0_RVT U43 ( .A1(n34), .A2(n33), .Y(sum_i[0]) );
  NAND2X0_RVT U44 ( .A1(n35), .A2(c_in), .Y(n37) );
  NAND2X0_RVT U45 ( .A1(n37), .A2(n36), .Y(n38) );
  OR2X1_RVT U46 ( .A1(n39), .A2(n38), .Y(n41) );
  AND2X1_RVT U47 ( .A1(n41), .A2(n3), .Y(sum_i[1]) );
  NAND2X0_RVT U48 ( .A1(reg1[3]), .A2(reg2[3]), .Y(n42) );
  NAND2X0_RVT U49 ( .A1(n43), .A2(n42), .Y(c_out) );
endmodule

