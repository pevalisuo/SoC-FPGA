# N-Bit adder
This source code shows how to implement an N-bit adder from scratch using 1-bit fulladder components, or using Behavioral level VHDL.

The test bench is used for testing them both.

What is still missing here is the synthesis toplevel which would include both of the implementations, in order to examine what the synthesizer will generate from behavioral description or low level RTL description.

To test the adder in FPGA, you can use the switches to input a 4-bit number to the adder and use LED:s to visualize the 4-bit result. You can even use and RGB LED to signify overflow (carry==1) situation.

To use the swithes and LED:s add corresponding input and output ports into your toplevel design. To connect the ports to the actual output and input PINs of the FPGA, inlude the given constraints file (Zybo.xdc) into your project, and uncomment corresponding PINS from the constraints file. Use the same porta names in your toplevel design, as they are called in the constraints file.

If you want to implement slightly more challenging test case you can also bring the system clock signal into your toplevel. Then implement a process in your toplevel, which copies the previous output from your adder to the next input in every rising_edge of the clock. This make a N-bit counter by using your adder component. If you adjust N large enough, it will blink approximately once per second, when your clock frequency is about 50 MHz.
