class AHB_lite_agent extends uvm_agent;
    `uvm_component_utils(AHB_lite_agent)

  AHB_lite_driver    ahb_drv;
  AHB_lite_monitor   ahb_mon;
  AHB_lite_sequencer ahb_sqr;

  extern function new(string name="AHB_lite_agent", uvm_component parent=null);
  extern virtual function void build_phase(uvm_phase phase);
  extern function void connect_phase(uvm_phase phase);
endclass

// -----------------------------------------------------------
function AHB_lite_agent::new(string name="AHB_lite_agent", uvm_component parent=null);
  super.new(name,parent);
endfunction

// -----------------------------------------------------------
function void AHB_lite_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);
  ahb_drv = AHB_lite_driver   ::type_id::create("ahb_drv", this);
  ahb_sqr = AHB_lite_sequencer::type_id::create("ahb_sqr", this);
  ahb_mon = AHB_lite_monitor  ::type_id::create("ahb_mon", this);
endfunction

// -----------------------------------------------------------
function void AHB_lite_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  ahb_drv.seq_item_port.connect(ahb_sqr.seq_item_export);
endfunction

