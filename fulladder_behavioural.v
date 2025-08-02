  // b. Behavioral Level
  module full_adder_behavioral (S, C_out, A, B, C_in);
   input A, B, C_in;
   output reg S, C_out;
   always @(*) begin
     S = A ^ B ^ C_in; // XOR for sum
     C_out = (A & B) | (C_in & (A ^ B )); // Carry logic
   end
  endmodule
 