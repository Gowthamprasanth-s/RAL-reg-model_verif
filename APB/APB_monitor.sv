class APB_monitor extends uvm_monitor;
    `uvm_component_utils(APB_monitor)
    virtual APB_inf apbinf;
    uvm_analysis_port #(prot_sequence_item) send;

    function new(string name="APB_monitor", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        send=new("send",this);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if(!uvm_config_db#(virtual APB_inf)::get(this,"*","apbinf",apbinf))
            `uvm_error(get_type_name(), "APB_driver config_db error");
    endfunction


    task run_phase(uvm_phase phase);
        
    endtask

endclass
