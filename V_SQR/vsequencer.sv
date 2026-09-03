class vsequencer extends uvm_sequencer;
    `uvm_component_utils(vsequencer)
/*
    uvm_sequencer #(AXI_lite_sequencer) v_axi;
    uvm_sequencer #(AHB_lite_sequencer) v_ahb;
    uvm_sequencer #(APB_sequencer)      v_apb;
*/
    AXI_lite_sequencer v_axi;
    AHB_lite_sequencer v_ahb;
    APB_sequencer      v_apb;
    function new(string name="vsequencer", uvm_component parent=null);
        super.new(name,parent);
    endfunction
endclass
