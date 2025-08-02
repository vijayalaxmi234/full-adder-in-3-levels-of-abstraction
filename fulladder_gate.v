  // c. Gate-Level
 module full_adder_gate (S, C_out, A, B, C_in);
   input A, B, C_in;
   output S, C_out;
 
   wire S1, C1, C2;
 
   // Sum logic
   xor u1 (S1, A, B);
   xor u2 (S, S1, C_in);
 
   // Carry logic
   and u3 (C1, A, B);
   and u4 (C2, S1, C_in);
   or u5 (C_out, C1, C2);
  endmodule