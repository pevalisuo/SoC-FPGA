module comparatornb_v #(parameter N=4)
   (output g,s,e, 
    input [N-1:0] a, b);
   
   // Define variables
   wire [N-1:0]   gv, sv, ev;
   wire [N-1:0] 	  gc, sc;
   genvar 	  i;
   
   comparator1b_v cmp0 (a[N-1], b[N-1], gv[N-1], sv[N-1], ev[N-1]);
   assign gc[N-1] = gv[N-1];
   assign sc[N-1] = sv[N-1];
	 
   generate for (i=N-2; i>=0; i=i-1)
     begin : f_loop
   	 comparator1b_v cmpi (a[i], b[i], gv[i], sv[i], ev[i]);
	    assign gc[i] = (gc[i+1]	| (gv[i] & ~sc[i+1]));
	    assign sc[i] = sc[i+1]	| (sv[i] & ~gc[i+1]);
     end // for
   endgenerate
   
   // Concurrent assignments
   assign g = gc[0];
   assign s = sc[0];
   assign e = (~gc[0]) & (~sc[0]);

 endmodule // comparatornb

