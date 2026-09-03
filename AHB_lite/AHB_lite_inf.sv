interface AHB_lite_inf(input logic clk, input logic rstn);
  logic        hsel         ;
  logic        hready       ;
  logic [1:0]  htrans       ;
  logic [2:0]  hsize        ;
  logic        hwrite       ;
  logic [31:0] haddr        ;
  logic [31:0] hwdata       ;
  logic [31:0] hrdata       ;
  logic        hreadyout    ;
  logic [1:0]  hresp        ;

endinterface
