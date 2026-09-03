class AHB_lite_driver extends uvm_driver#(prot_sequence_item);
    `uvm_component_utils(AHB_lite_driver)
    virtual AHB_lite_inf ahbinf;
    prot_sequence_item ahbtr;
    function new(string name="AHB_lite_driver", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if(!uvm_config_db#(virtual AHB_lite_inf)::get(this,"*","ahbinf",ahbinf))
            `uvm_error(get_type_name(), "AHB_lite_driver config_db error");
    endfunction


    task run_phase(uvm_phase phase);
        @(posedge ahbinf.clk);
        ahbinf.hsel        <=  0;
        ahbinf.hwrite      <=  0;
        ahbinf.htrans      <=  0;
        ahbinf.hsize       <=  0;
        ahbinf.haddr       <=  0;
        ahbinf.hwdata      <=  0;
        //ahbinf.hready      <=  ahbinf.hreadyout;
        forever begin
            wait(ahbinf.rstn);
            seq_item_port.get_next_item(ahbtr);
            if(ahbtr.wr ===1)
            begin
                write_add_data(ahbtr);
                `uvm_info(get_full_name(),"AHB-WRITE OPERATION HAPPENING",UVM_LOW)
            end
            else if(ahbtr.wr ===0)
                read_data(ahbtr);
            else
                `uvm_error(get_full_name(),"AHB-WRITE BIT ERROR IN AHB DRIVER")
            seq_item_port.item_done();
        end        
        
    endtask
    extern task write_add_data(prot_sequence_item ahbtr);
    extern task read_data(prot_sequence_item ahbtr);

endclass
//============================================================================
task AHB_lite_driver :: write_add_data(prot_sequence_item ahbtr);
    ahbtr.print();
    wait(ahbinf.rstn===1);
    @(posedge ahbinf.clk);
    ahbinf.hsel        <=  1;
    //ahbinf.hready      <=  1;
    ahbinf.hwrite      <=  1;
    ahbinf.hsize       <=  2;
    ahbinf.htrans      <=  2;
    ahbinf.haddr       <=  ahbtr.addr;
    ahbinf.hwdata      <=  ahbtr.data;
    //@(posedge ahbinf.clk);
    //ahbinf.hready      <=  1;
    wait(ahbinf.hreadyout);
    @(posedge ahbinf.clk);
    `uvm_info(get_full_name(),"AHB-WRITE : ADDR,DATA FUNCTION",UVM_LOW)
    $display("%s",{60{"="}});
    ahbinf.hsel        <=  0;
    ahbinf.hwrite      <=  0;
    ahbinf.htrans      <=  0;
    ahbinf.hsize       <=  0;
    //ahbinf.hready      <=  0;
    @(posedge ahbinf.clk);

endtask
//----------------------------------------------------------
task AHB_lite_driver :: read_data(prot_sequence_item ahbtr);
    @(posedge ahbinf.clk);
    ahbinf.hsel        <=  1;
    ahbinf.haddr       <=  ahbtr.addr;
    ahbinf.hwrite      <=  0;
    ahbinf.hsize       <=  2;
    ahbinf.htrans      <=  2;
    //@(posedge ahbinf.clk);
    //ahbinf.hready      <=  1;
    wait(ahbinf.hreadyout);
    @(posedge ahbinf.clk);
    ahbinf.hsel        <=  0;
    ahbinf.htrans      <=  0;
    @(posedge ahbinf.clk);
    @(posedge ahbinf.clk);
    `uvm_info(get_full_name(),$sformatf("AHB-READ : DATA =%0h",ahbinf.hrdata),UVM_LOW)
    ahbtr.data         <= ahbinf.hrdata;
    $display("%s",{60{"="}});
    //ahbinf.hready      <=  0;
endtask
//----------------------------------------------------------
