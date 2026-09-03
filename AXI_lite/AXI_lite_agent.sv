class AXI_lite_agent extends uvm_agent;
    `uvm_component_utils(AXI_lite_agent)
    AXI_lite_driver axi_drv;
    AXI_lite_monitor axi_mon;
    AXI_lite_sequencer axi_sqr;

    extern function new(string name="AXI_lite_agent", uvm_component parent=null);
    extern virtual function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
    extern task run_phase(uvm_phase phase);
endclass
//------------------------------------------------------------------------------
function AXI_lite_agent :: new(string name="AXI_lite_agent", uvm_component parent=null);
    super.new(name,parent);
endfunction
//----------------------------------------------------------
function void AXI_lite_agent :: build_phase(uvm_phase phase);
    super.build_phase(phase);
    axi_drv = AXI_lite_driver   ::type_id::create("axi_drv", this);
    axi_mon = AXI_lite_monitor  ::type_id::create("axi_mon", this);
    axi_sqr = AXI_lite_sequencer::type_id::create("axi_sqr", this);
endfunction
//----------------------------------------------------------
function void AXI_lite_agent :: connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    axi_drv.seq_item_port.connect(axi_sqr.seq_item_export);
endfunction
//----------------------------------------------------------
task AXI_lite_agent :: run_phase(uvm_phase phase);

endtask

