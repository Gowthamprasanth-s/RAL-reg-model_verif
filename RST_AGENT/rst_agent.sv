class rst_agent extends uvm_agent;
    `uvm_component_utils(rst_agent)
    rst_driver rst_drv;

    function new(string name ="rst_agent", uvm_component parent=null);
        super.new(name, parent);
    endfunction
    
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        rst_drv=rst_driver::type_id::create("rst_drv",this);           
    endfunction

endclass
