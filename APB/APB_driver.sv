class APB_driver extends uvm_driver#(prot_sequence_item);
    `uvm_component_utils(APB_driver)
    virtual APB_inf apbinf;
    prot_sequence_item apbtr;
    function new(string name="APB_driver", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if(!uvm_config_db#(virtual APB_inf)::get(this,"","apbinf",apbinf))
            `uvm_error(get_type_name(), "APB_driver config_db error");
    endfunction

    task run_phase(uvm_phase phase);
        apbinf.psel        <=  0;
        apbinf.pwrite      <=  0;
        apbinf.penable     <=  0;
        apbinf.pwdata      <=  0;
        forever begin
            seq_item_port.get_next_item(apbtr);
            if(apbtr.wr ===1)
            begin
                write_add_data(apbtr);
                `uvm_info(get_full_name(),"APB-WRITE OPERATION HAPPENING",UVM_LOW)
            end
            else if(apbtr.wr ===0)
                read_data(apbtr);
            else
                `uvm_error(get_full_name(),"APB-WRITE BIT ERROR IN APB DRIVER")
            seq_item_port.item_done();
        end        
    endtask
    extern task write_add_data(prot_sequence_item apbtr);
    extern task read_data(prot_sequence_item apbtr);
endclass
//============================================================================
task APB_driver :: write_add_data(prot_sequence_item apbtr);
    apbtr.print();
    wait(apbinf.rstn===1);
    @(posedge apbinf.clk);
    apbinf.psel        <=  1;
    apbinf.pwrite      <=  1;
    apbinf.paddr       <=  apbtr.addr;
    apbinf.pwdata      <=  apbtr.data;
    @(posedge apbinf.clk);
    apbinf.penable     <=  1;
    wait(apbinf.pready);
    @(posedge apbinf.clk);
    `uvm_info(get_full_name(),"APB-WRITE : ADDR,DATA FUNCTION",UVM_LOW)
    $display("%s",{60{"="}});
    apbinf.psel        <=  0;
    apbinf.penable     <=  0;
    @(posedge apbinf.clk);

endtask
//----------------------------------------------------------
task APB_driver :: read_data(prot_sequence_item apbtr);
    @(posedge apbinf.clk);
    wait(apbinf.rstn===1);
    apbinf.psel        <=  1;
    apbinf.paddr       <=  apbtr.addr;
    apbinf.pwrite      <=  0;
    @(posedge apbinf.clk);
    apbinf.penable     <=  1;
    wait(apbinf.pready);
    `uvm_info(get_full_name(),$sformatf("APB-READ :: DATA =%0h",apbinf.prdata),UVM_LOW)
    apbtr.data         <= apbinf.prdata;
    $display("%s",{60{"="}});
    @(posedge apbinf.clk);
    apbinf.psel        <=  0;
    apbinf.penable     <=  0;
endtask
//----------------------------------------------------------
