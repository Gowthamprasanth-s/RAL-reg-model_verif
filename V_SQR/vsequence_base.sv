class vsequence_base extends uvm_sequence#(prot_sequence_item);
    `uvm_object_utils(vsequence_base)
    vsequencer vsqr;

    function new(string name = "vsequence_base");
        super.new(name);
    endfunction

    task body();
        if(!$cast(vsqr, m_sequencer))
            `uvm_error(get_full_name(), "M SEQUENCER CAST ERROR")
    endtask
endclass
//=======================================================================
class v_axi_apb_seq extends vsequence_base;
    `uvm_object_utils(v_axi_apb_seq)
    write_read_seq_1 axi_seq;
    write_read_seq_1 apb_seq;
    
    function new(string name = "v_axi_apb_seq");
        super.new(name);
        axi_seq   = write_read_seq_1 ::type_id :: create("axi_seq");
        apb_seq   = write_read_seq_1 ::type_id :: create("apb_seq");
    endfunction

    task body();
        super.body();
        fork
            begin : axi
                axi_seq.start(vsqr.v_axi);
            end
            begin : apb
                apb_seq.start(vsqr.v_apb);
            end
        join
    endtask
endclass
