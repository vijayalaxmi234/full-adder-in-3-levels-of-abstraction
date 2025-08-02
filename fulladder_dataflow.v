module fulladder_dataflow (S, C_out, A, B, C_in);
   input A, B, C_in;
   output S, C_out;
 
   assign S = A ^ B ^ C_in; // XOR for sum
   assign C_out = (A & B) | (C_in & (A ^ B )); // Carry logic
  endmodule