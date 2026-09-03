class rst_driver extends uvm_driver;
    `uvm_component_utils(rst_driver)
    virtual clk_inf cif;
    rstn_config rstn_obj;


    function new(string name ="rst_driver", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        rstn_obj=rstn_config::type_id::create("rstn_obj");
        if(! uvm_config_db#(virtual clk_inf)::get(this,"","cif",cif))
            `uvm_fatal("[rst_driver]","rst_interface not connected");
        if(! uvm_config_db#(rstn_config)::get(this,"","rstn_obj",rstn_obj))
            `uvm_fatal("[rst_driver]","rst_config_object not connected");

    endfunction
    
    task reset_phase(uvm_phase phase);
        phase.raise_objection(this);
        do_reset();
        phase.drop_objection(this);
    endtask

    task run_phase(uvm_phase phase);

        forever begin
            rstn_obj.reset_rqt_e.wait_trigger();
            `uvm_info("RESET_DRV","RESET  TRIGGERED",UVM_LOW)
            do_reset();
        end

    endtask

    task do_reset();
        cif.rstn<=0;
        repeat(rstn_obj.rst_cycle) @(posedge cif.clk);
        cif.rstn<=1;
    endtask
endclass
