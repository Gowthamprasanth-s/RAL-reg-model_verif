class ral_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(ral_scoreboard)
    //uvm_analysis_imp #( , ) recv;

    function new(string name="ral_scoreboard", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        //recv=new("recv",this);
    endfunction

    task write ();

    endtask
endclass
