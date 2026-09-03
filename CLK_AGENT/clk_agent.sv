class clk_agent extends uvm_agent;
    `uvm_component_utils(clk_agent)
    clk_driver clk_drv;

    function new(string name ="clk_agent", uvm_component parent=null);
        super.new(name, parent);
    endfunction


    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        clk_drv=clk_driver::type_id::create("clk_drv",this);           
    endfunction

endclass
