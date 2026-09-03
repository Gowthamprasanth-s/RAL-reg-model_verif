class AXI_lite_monitor extends uvm_monitor;
    `uvm_component_utils(AXI_lite_monitor)
    virtual AXI_lite_inf axiinf;
    uvm_analysis_port #(prot_sequence_item) send;

    function new(string name="AXI_lite_monitor", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        send=new("send",this);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if(!uvm_config_db#(virtual AXI_lite_inf)::get(this,"*","axiinf",axiinf))
            `uvm_error(get_type_name(),"AXI_lite_Monitor config_db error");
    endfunction


    task run_phase(uvm_phase phase);
        
    endtask

endclass
