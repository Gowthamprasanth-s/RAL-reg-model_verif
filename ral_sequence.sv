class base_sequence extends uvm_sequence;
    `uvm_object_utils(base_sequence)
    prot_sequence_item  tr;

    function new(string name="ral_sequence");
        super.new(name);
    endfunction


    task body();

    endtask

endclass
//============================================================================
class write_read_seq_1 extends base_sequence;
    `uvm_object_utils(write_read_seq_1)

    function new(string name="write_read_seq_1");
        super.new(name);
    endfunction

    extern task body();
endclass
//----------------------------
task write_read_seq_1 :: body();
        `uvm_do_with(tr,{
            wr      ==   1;
            addr    ==   32'hA0000004;
            data    ==   32'hFFFFFFFF;
        })
        `uvm_do_with(tr,{
            wr      ==   0;
            addr    ==   32'hA0000004;
            data    ==   1;
        })
endtask
//============================================================================
/*
class ral_top_seq extends write_read_seq_1;
    `uvm_object_utils(ral_top_seq)
    urc_reg_block reg_model;

    function new(string name="ral_top_seq");
        super.new(name);
    endfunction

    extern task body();
endclass
//----------------------------
task ral_top_seq :: body();
    uvm_status_e    status;
    bit[7:0]        rdata;

    reg_model.timer_reg_6.write(status,'1, .map(reg_model.apb_map));
    `uvm_info(get_full_name(),"WRITE DONE",UVM_LOW)
    reg_model.timer_reg_6.read(status,rdata, .map(reg_model.apb_map));
    `uvm_info(get_full_name(),$sformatf("READ DONE  : VALUE= %0h",rdata),UVM_LOW)
endtask
//============================================================================
*/
