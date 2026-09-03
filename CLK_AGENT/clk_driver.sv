class clk_driver extends uvm_driver;
    `uvm_component_utils(clk_driver)
    clk_config clk_obj;
    virtual clk_inf cif;
    real clk_period;

    function new(string name="clk_driver", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        clk_obj =clk_config::type_id::create("clk_obj");
    endfunction

    function void connect_phase(uvm_phase phase);
        //clock interface
        assert(uvm_config_db#(virtual clk_inf)::get(this,"","cif",cif))
        else    `uvm_error(get_full_name(),"CLK CONFIG ERROR");
        //clock object 
        assert(uvm_config_db#(clk_config)::get(this,"","clk_obj",clk_obj))
        else    `uvm_error(get_full_name(),"CLK CONFIG object ERROR");
    endfunction

    task run_phase(uvm_phase phase);

        cif.clk =0;
        forever begin
            clk_period  = clk_obj.get_freq();
            #clk_period;
            cif.clk =~cif.clk;
        end
    endtask
endclass

        

