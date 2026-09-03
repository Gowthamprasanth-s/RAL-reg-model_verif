class AXI_lite_driver extends uvm_driver#(prot_sequence_item);
    `uvm_component_utils(AXI_lite_driver)
    virtual AXI_lite_inf axiinf;
    prot_sequence_item axitr;
    //WRITE EVENTS
    uvm_event write_data_e;
    uvm_event read_data_e;
    uvm_event write_resp_e;


    function new(string name="AXI_lite_driver", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        write_data_e    =   new("write_data_e");
        read_data_e    =   new("read_data_e");
        write_resp_e    =   new("write_resp_e");
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if(!uvm_config_db#(virtual AXI_lite_inf)::get(this,"","axiinf",axiinf))
            `uvm_error(get_type_name(), "AXI_lite_driver config_db error");
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(axitr);
            if(axitr.wr ===1)
                write(axitr);
            if(axitr.wr ===0)
                read(axitr);
            seq_item_port.item_done();
        end
    endtask
    extern task write(prot_sequence_item axitr);
    extern task write_addr(prot_sequence_item axitr);
    extern task write_data(prot_sequence_item axitr);
    extern task write_resp(prot_sequence_item axitr);
    extern task read(prot_sequence_item axitr);
    extern task read_addr(prot_sequence_item axitr);
    extern task read_data(prot_sequence_item axitr);

endclass
//======================================================================================
task AXI_lite_driver :: write(prot_sequence_item axitr);
    fork
        axitr.print();
        `uvm_info(get_full_name(),"WRITE FUNCTION",UVM_LOW)
        write_addr(axitr);
        write_data(axitr);
        write_resp(axitr);
    join
endtask
//===================================
task AXI_lite_driver :: write_addr(prot_sequence_item axitr);
    `uvm_info(get_full_name(),"WRITE : ADDR FUNCTION",UVM_LOW)
    @(posedge axiinf.clk);
    axiinf.awaddr   <=  axitr.addr;
    axiinf.awvalid  <=  1;
    axiinf.wvalid  <=  1;
    axiinf.wstrb    <=  '1;
    axiinf.wdata    <=  axitr.data;
    wait(axiinf.awready);
    write_data_e.trigger();

endtask
//===================================
task AXI_lite_driver :: write_data(prot_sequence_item axitr);
    write_data_e.wait_trigger();
    `uvm_info(get_full_name(),"AXI-WRITE : DATA FUNCTION",UVM_LOW)
    @(posedge axiinf.clk);
    axiinf.awvalid  <=  0;
    axiinf.wdata    <=  axitr.data;
    axiinf.wvalid   <=  1;
    axiinf.wstrb    <=  '1;
    wait(axiinf.wready);
    write_resp_e.trigger();

endtask
//===================================
task AXI_lite_driver :: write_resp(prot_sequence_item axitr);
    write_resp_e.wait_trigger();
    `uvm_info(get_full_name(),"AXI-WRITE : RESP FUNCTION",UVM_LOW)
    @(posedge axiinf.clk);
    axiinf.wvalid   <=  0;
    axiinf.bready   <=  1;
    wait(axiinf.bvalid);
    if(axiinf.bresp ==2'b00)
        `uvm_info(get_full_name(),"AXI-WRITE RESPONSE OKAY",UVM_LOW)
    $display("%s",{60{"="}});
    @(posedge axiinf.clk);
    axiinf.bready   <=  1;
endtask
//======================================================================================
//======================================================================================
task AXI_lite_driver :: read(prot_sequence_item axitr);
    fork
        axitr.print();
        `uvm_info(get_full_name(),"AXI-READ FUNCTION",UVM_LOW)
        read_addr(axitr);
        read_data(axitr);
    join
endtask
//===================================
task AXI_lite_driver :: read_addr(prot_sequence_item axitr);
    `uvm_info(get_full_name(),"AXI-READ : ADDR FUNCTION",UVM_LOW)
    @(posedge axiinf.clk);
    axiinf.araddr   <=  axitr.addr;
    axiinf.arvalid  <=  1;
    wait(axiinf.arready);
    read_data_e.trigger();

endtask
//===================================
task AXI_lite_driver :: read_data(prot_sequence_item axitr);
    read_data_e.wait_trigger();
    `uvm_info(get_full_name(),"AXI-READ : DATA FUNCTION",UVM_LOW)
    @(posedge axiinf.clk);
    axiinf.arvalid  <=  0;
    axiinf.rready   <=  1;
    wait(axiinf.rvalid);
    `uvm_info(get_full_name(),$sformatf("AXI-READ :: DATA =%0h",axiinf.rdata),UVM_LOW)
    axitr.data         <= axiinf.rdata;
    $display("%s",{60{"="}});
    @(posedge axiinf.clk);
    axiinf.rready   <=  0;
endtask
