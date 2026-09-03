class APB_sequencer extends uvm_sequencer#(prot_sequence_item);
    `uvm_component_utils(APB_sequencer)

    function new(string name="APB_sequencer", uvm_component parent=null);
        super.new(name,parent);
    endfunction

endclass

