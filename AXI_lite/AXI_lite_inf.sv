interface AXI_lite_inf(input logic clk,input logic rstn);

  logic        awvalid  ;
  logic        awready  ;
  logic [31:0] awaddr   ;
  // Write Data Channel
  logic        wvalid   ;
  logic        wready   ;
  logic [31:0] wdata    ;
  logic [3:0]  wstrb    ;
  // Write Response Channel
  logic        bvalid   ;
  logic        bready   ;
  logic [1:0]  bresp    ;
  // Read Address Channel
  logic        arvalid  ;
  logic        arready  ;
  logic [31:0] araddr   ;
  // Read Data Channel
  logic        rvalid   ;
  logic        rready   ;
  logic [31:0] rdata    ;
  logic [1:0]  rresp    ;

endinterface
