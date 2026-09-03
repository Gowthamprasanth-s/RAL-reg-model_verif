class v_axi_apb_test extends base_test;
    `uvm_component_utils(v_axi_apb_test)
    v_axi_apb_seq axi_apb_seq;

    function new(string name="v_axi_apb_test",uvm_component parent=null);
        super.new(name,parent);
        axi_apb_seq     = v_axi_apb_seq :: type_id :: create("axi_apb_seq");
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task v_axi_apb_test:: run_phase(uvm_phase phase);
    phase.raise_objection(this);
    //PARALLEL TEST
    axi_apb_seq.start(env.vsqr);
    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask

