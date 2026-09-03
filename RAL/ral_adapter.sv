class top_adapter extends uvm_reg_adapter;
    `uvm_object_utils(top_adapter)

    function new(string name="top_adapter");
        super.new(name);
    endfunction
//===================================================================================
    //REG2BUS
    function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);
        prot_sequence_item tr;
        tr  =   prot_sequence_item  ::type_id   ::create("tr");

        tr.wr   =   rw.kind ==UVM_WRITE? 1:0;
        tr.addr =   rw.addr;
        if(tr.wr ===1)
            tr.data =   rw.data;

        return tr;
    endfunction
//===================================================================================
    //BUS2REG
    function void bus2reg(uvm_sequence_item bus_item, ref uvm_reg_bus_op rw);
        prot_sequence_item tr;

        assert($cast(tr, bus_item));

        rw.kind =   tr.wr? UVM_WRITE :UVM_READ;
        rw.data =   tr.data;
        rw.addr =   tr.addr;
        rw.status=  UVM_IS_OK;
    endfunction
endclass
