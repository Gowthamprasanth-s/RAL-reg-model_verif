class prot_sequence_item extends uvm_sequence_item;
    rand bit           wr  ;
    rand bit [31:0]    addr;
    rand bit [31:0]    data;

    function new(string name="prot_sequence_item");
        super.new(name);
    endfunction

    `uvm_object_utils_begin(prot_sequence_item)
        `uvm_field_int(wr,   UVM_HEX);      
        `uvm_field_int(addr, UVM_HEX);      
        `uvm_field_int(data, UVM_HEX);      
    `uvm_object_utils_end  

endclass
