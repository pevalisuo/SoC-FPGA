module comparator1b_v (input a, b, output g,s,e);
   // Define wires (~variables) nor inverted an and b
   wire na, nb;

   // Netlist method using Verilog primitives
	/*
   not g1 (a,na);
   not g2 (b,nb);
   and g3 (a, nb, g);
   and g4 (na,b,s);
   xnor g5 (a,b,e);
	*/

   //Assign the result of logical operators
	assign g = a & (~b);
	assign s = (~a) & b;
	assign e = ~(a ^ b);
endmodule // comparator1b

