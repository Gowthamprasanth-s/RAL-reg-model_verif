class rstn_config extends uvm_object;
    `uvm_object_utils(rstn_config)

    time rst_cycle;
    uvm_event reset_rqt_e;

    function new(string name ="rstn_config");
        super.new(name);
        reset_rqt_e =new("reset_rqt_e");
        rst_cycle =10;
    endfunction

endclass

