`timescale 1ns/1ns
  `include "fulladder_dataflow.v"
 
  module fulladder_dataflow_tb;
 
 
 // module tb_full_adder_datafl ow
   reg A, B, C_in;
   wire S, C_out;
 
   // Instantiate the Full Adder module
   full_adder_dataflow uut (S, C_out, A, B, C_in);
 
 
   initial begin
     $display("Time\tA B C_in | S C_out");
     $monitor("%g\t%b %b %b | %b %b", $time, A, B, C_in, S, C_out);
 
     // Test cases
     A = 0; B = 0; C_in = 0; #10;
     A = 0; B = 0; C_in = 1; #10;
     A = 0; B = 1; C_in = 0; #10;
     A = 0; B = 1; C_in = 1; #10;
     A = 1; B = 0; C_in = 0; #10;
     A = 1; B = 0; C_in = 1; #10;
     A = 1; B = 1; C_in = 0; #10;
     A = 1; B = 1; C_in = 1; #10;
 
     $finish;
   end

  initial begin
     $dumpfile("fulladder_dataflow.vcd");
    $dumpvars(0,fulladder_dataflow_tb);
  end
  endmodule   
 
   