// look in pins.pcf for all the pin names on the TinyFPGA BX board
// apply pull-ups to pins on pins.pcf -pullup yes

module top_tb();

  reg clk,reset;
  reg [6:0] in;
  wire [12:0] out;
dir
  decode U1 (in,out);

  initial begin
    $dumpfile("top.vcd");
    $dumpvars(0,top);
  end

  always
        #5 clk = ~clk;

  initial begin
    clk = 0; in = 0;

    #10
    in = 7'b??????0;

    #10
    in = 7'b00001?1;

    $finish();

  end

endmodule
