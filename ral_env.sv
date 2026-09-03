class ral_env extends uvm_env;
    `uvm_component_utils(ral_env)
    clk_agent clk_agn;
    rst_agent rst_agn;
    AXI_lite_agent  axi_agn;
    AHB_lite_agent  ahb_agn;
    APB_agent       apb_agn;
    //VIRTUAL SEQUENCER
    vsequencer vsqr;
    //RAL DECLARATION
    urc_reg_block regmodel;
    top_adapter adapter_inst;

    extern function new(string name="ral_env", uvm_component parent=null);
    extern virtual function void build_phase(uvm_phase phase);
    extern function void connect_phase(uvm_phase phase);
    extern function void end_of_elaboration_phase(uvm_phase phase);
    extern task run_phase(uvm_phase phase);

endclass
//---------------------------------------------------------------------------------------
function ral_env :: new(string name="ral_env", uvm_component parent=null);
    super.new(name,parent);
endfunction
//---------------------------------------------------------------------------------------
function void ral_env :: build_phase(uvm_phase phase);
    super.build_phase(phase);
    clk_agn     =   clk_agent       :: type_id :: create("clk_agn",this);
    rst_agn     =   rst_agent       :: type_id :: create("rst_agn",this);
    axi_agn     =   AXI_lite_agent  :: type_id :: create("axi_agn",this);
    ahb_agn     =   AHB_lite_agent  :: type_id :: create("ahb_agn",this);
    apb_agn     =   APB_agent       :: type_id :: create("apb_agn",this);
    //VIRTUAL SEQUENCER
    vsqr        =   vsequencer      :: type_id :: create("vsqr",this);
    //RAL DECLARATION
    regmodel    =   urc_reg_block   :: type_id :: create("regmodel",this);
    regmodel.build();
    adapter_inst=   top_adapter     :: type_id :: create("adapter_inst",,get_full_name());
endfunction
//---------------------------------------------------------------------------------------
function void ral_env :: connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    vsqr.v_axi  =   axi_agn.axi_sqr;
    vsqr.v_ahb  =   ahb_agn.ahb_sqr;
    vsqr.v_apb  =   apb_agn.apb_sqr;

    regmodel.axi_map.set_sequencer(.sequencer(axi_agn.axi_sqr), .adapter(adapter_inst));
    regmodel.apb_map.set_sequencer(.sequencer(apb_agn.apb_sqr), .adapter(adapter_inst));
    regmodel.ahb_map.set_sequencer(.sequencer(ahb_agn.ahb_sqr), .adapter(adapter_inst));
    //BASE ADDRESS
    regmodel.axi_map.set_base_addr(32'h90000000);
    regmodel.apb_map.set_base_addr(32'h90000000);
    regmodel.ahb_map.set_base_addr(32'h90000000);
endfunction
//---------------------------------------------------------------------------------------
function void ral_env :: end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
endfunction
//---------------------------------------------------------------------------------------
task ral_env :: run_phase(uvm_phase phase);

endtask

