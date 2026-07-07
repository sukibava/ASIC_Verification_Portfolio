module tb;
	reg a;
	reg b;
	wire _and;
    wire _or;
    wire _nand;
    wire _nor;
    wire ex_or;
    wire ex_nor;
    wire _not;
  
  logic_gates dut(a,b,_and,_or,_nand,_nor,ex_or,ex_nor,_not);

	initial begin
 		//no need to use in vivado
       // $dumpfile("logic_gates.vcd");
      //$dumpvars(1,tb);
      $display("------------------------------------------");
      $display("AB |and|  or|nand|nor | ex_or| ex_nor |not");
      $display("------------------------------------------");
      $monitor("%b%b | %b |  %b |  %b |  %b | %b    | %b      |  %b | ",a,b,_and,_or,_nand,_nor,ex_or,ex_nor,_not);
      
      a=0;b=0;
      #10 a=0;b=1;
      #10 a=1;b=0;
      #10 a=1;b=1;
      #10 $display("------------------------------------------");
       $finish;
   end
endmodule
  