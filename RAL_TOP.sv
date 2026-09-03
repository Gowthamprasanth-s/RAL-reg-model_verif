`include "uvm_macros.svh"
import uvm_pkg::*;
import ral_pkg::*;
module RAL_TOP;
    //clk interface
    clk_inf cif();
    //Master interface
    AXI_lite_inf axiinf(.clk(cif.clk), .rstn(cif.rstn));
    AHB_lite_inf ahbinf(.clk(cif.clk), .rstn(cif.rstn));
    APB_inf      apbinf(.clk(cif.clk), .rstn(cif.rstn));

    //instantiation
    urc_top inst(
            .clk(cif.clk),
            .rst_n(cif.rstn),
            // ---------------- APB ----------------
            .psel     (apbinf.psel),
            .penable  (apbinf.penable),
            .pwrite   (apbinf.pwrite),
            .paddr    (apbinf.paddr),
            .pwdata   (apbinf.pwdata),
            .prdata   (apbinf.prdata),
            .pready   (apbinf.pready),
            .pslverr  (apbinf.pslverr),

            // ---------------- AHB ----------------
            .hsel     (ahbinf.hsel),
            //.hready   (ahbinf.hready),
            .hready   (ahbinf.hreadyout),
            .htrans   (ahbinf.htrans),
            .hsize    (ahbinf.hsize),
            .hwrite   (ahbinf.hwrite),
            .haddr    (ahbinf.haddr),
            .hwdata   (ahbinf.hwdata),
            .hrdata   (ahbinf.hrdata),
            .hreadyout(ahbinf.hreadyout),
            .hresp    (ahbinf.hresp),
            // ---------------- AXI Write Address ----------------
            .awvalid  (axiinf.awvalid),
            .awready  (axiinf.awready),
            .awaddr   (axiinf.awaddr),

            // --------------- AXI Write Data ----------------
            .wvalid   (axiinf.wvalid),
            .wready   (axiinf.wready),
            .wdata    (axiinf.wdata),
            .wstrb    (axiinf.wstrb),

            // --------------- AXI Write Response ----------------
            .bvalid   (axiinf.bvalid),
            .bready   (axiinf.bready),
            .bresp    (axiinf.bresp),

            // --------------- AXI Read Address ----------------
            .arvalid  (axiinf.arvalid),
            .arready  (axiinf.arready),
            .araddr   (axiinf.araddr),

            // --------------- AXI Read Data ----------------
            .rvalid   (axiinf.rvalid),
            .rready   (axiinf.rready),
            .rdata    (axiinf.rdata),
            .rresp    (axiinf.rresp)

        );

    initial begin
        uvm_config_db#(virtual clk_inf)::set(null,"*","cif",cif);
        //design interface
        uvm_config_db#(virtual AXI_lite_inf)::set(null,"*","axiinf",axiinf);
        uvm_config_db#(virtual AHB_lite_inf)::set(null,"*","ahbinf",ahbinf);
        uvm_config_db#(virtual APB_inf)::set(null,"*","apbinf",apbinf);
        run_test("");
    end

    initial begin
        //waveform dump
        $shm_open("wave.shm");
        $shm_probe("ACTMF");
    end

endmodule
