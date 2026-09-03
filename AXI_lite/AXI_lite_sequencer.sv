class AXI_lite_sequencer extends uvm_sequencer#(prot_sequence_item);
    `uvm_component_utils(AXI_lite_sequencer)

    function new(string name="AXI_lite_sequencer", uvm_component parent=null);
        super.new(name,parent);
    endfunction

endclass

