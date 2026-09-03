class AHB_lite_monitor extends uvm_monitor;
    `uvm_component_utils(AHB_lite_monitor)
    virtual AHB_lite_inf ahbinf;
    uvm_analysis_port #(prot_sequence_item) send;

    function new(string name="AHB_lite_monitor", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        send=new("send",this);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if(!uvm_config_db#(virtual AHB_lite_inf)::get(this,"*","ahbinf",ahbinf))
            `uvm_error(get_type_name(), "AHB_lite_driver config_db error");
    endfunction


    task run_phase(uvm_phase phase);
        
    endtask

endclass
