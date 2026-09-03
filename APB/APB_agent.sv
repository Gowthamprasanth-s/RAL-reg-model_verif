class APB_agent extends uvm_agent;
    `uvm_component_utils(APB_agent)

  APB_driver    apb_drv;
  APB_monitor   apb_mon;
  APB_sequencer apb_sqr;

  extern function new(string name="APB_agent", uvm_component parent=null);
  extern virtual function void build_phase(uvm_phase phase);
  extern function void connect_phase(uvm_phase phase);
endclass

// -----------------------------------------------------------
function APB_agent::new(string name="APB_agent", uvm_component parent=null);
  super.new(name,parent);
endfunction

// -----------------------------------------------------------
function void APB_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);
  apb_drv = APB_driver   ::type_id::create("apb_drv", this);
  apb_sqr = APB_sequencer::type_id::create("apb_sqr", this);
  apb_mon = APB_monitor  ::type_id::create("apb_mon", this);
endfunction

// -----------------------------------------------------------
function void APB_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    apb_drv.seq_item_port.connect(apb_sqr.seq_item_export);
endfunction
