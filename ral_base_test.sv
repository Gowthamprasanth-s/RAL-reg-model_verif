class base_test extends uvm_test;
    `uvm_component_utils(base_test)
    rstn_config rstn_obj;
    clk_config  clk_obj;
    ral_env env;

    function new(string name="base_test", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        //OBJECT CREATION
        rstn_obj    =   rstn_config::type_id::create("rstn_obj");
        clk_obj     =   clk_config::type_id::create("clk_obj");
        env         =   ral_env::type_id::create("env",this);

        //CONFIG DB FOR CLK AND RESET
        uvm_config_db#(rstn_config)::set(this,"*","rstn_obj",rstn_obj);
        uvm_config_db#(clk_config)::set(this,"*","clk_obj",clk_obj);
        `uvm_info("TOP_test","clock object and config db set",UVM_LOW)
    endfunction
//--------------------------------------------------------------------
    function reset();
        rstn_obj.reset_rqt_e.trigger();
        `uvm_info("TOP_test",{"RESET TRIGGERED IN BASE TEST",get_full_name()},UVM_LOW)
    endfunction
//--------------------------------------------------------------------
    function clk_freq(string sel);
        case(sel)
            "f_256"   :   clk_obj.freq_sel=clk_config::freq_256;
            "f_512"   :   clk_obj.freq_sel=clk_config::freq_512;
            "f_1G"    :   clk_obj.freq_sel=clk_config::freq_1G;
            default   :   clk_obj.freq_sel=clk_config::freq_256;
        endcase
    endfunction
    
    task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        #100;
        phase.drop_objection(this);
    endtask
endclass
//====================================================================================================
class axi_lite_write_test_1 extends base_test;
    `uvm_component_utils(axi_lite_write_test_1)
    write_read_seq_1 seq_1;

    function new(string name="axi_lite_write_test_1",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        seq_1   =   write_read_seq_1 :: type_id :: create("seq_1");
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task axi_lite_write_test_1 :: run_phase(uvm_phase phase);
    phase.raise_objection(this);
    //WRITE SEQUENCE
    seq_1.start(env.axi_agn.axi_sqr);
    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
//====================================================================================================
class apb_write_test_1 extends axi_lite_write_test_1;
    `uvm_component_utils(apb_write_test_1)

    function new(string name="apb_write_test_1",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task apb_write_test_1 :: run_phase(uvm_phase phase);
    phase.raise_objection(this);
    //WRITE SEQUENCE
    seq_1.start(env.apb_agn.apb_sqr);
    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
//====================================================================================================
class ahb_lite_write_test_1 extends apb_write_test_1;
    `uvm_component_utils(ahb_lite_write_test_1)

    function new(string name="ahb_lite_write_test_1",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task ahb_lite_write_test_1 :: run_phase(uvm_phase phase);
    phase.raise_objection(this);
    //WRITE SEQUENCE
    seq_1.start(env.ahb_agn.ahb_sqr);
    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
//====================================================================================================
class ral_top_test extends ahb_lite_write_test_1;
    `uvm_component_utils(ral_top_test)
    //ral_top_seq ral_seq_1;
    uvm_status_e    status;
    bit[31:0]        rdata;

    function new(string name="ral_top_test",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        //ral_seq_1   =   ral_top_seq ::type_id ::create("ral_seq_1");
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task ral_top_test :: run_phase(uvm_phase phase);
    phase.raise_objection(this);
    //RAL WRITE SEQUENCE
    //ral_seq_1.reg_model = env.regmodel;
    /*
    env.regmodel.timer_reg_6.read(status, rdata, .map(env.regmodel.apb_map));
    `uvm_info(get_full_name(), $sformatf("TIME =%0t || READ DATA :: VALUE = %0h",$time,rdata),UVM_LOW)
    env.regmodel.timer_reg_6.write(status, '1, .map(env.regmodel.axi_map));
    $display("%s",{60{"*"}});
    env.regmodel.timer_reg_6.read(status, rdata, .map(env.regmodel.apb_map));
    `uvm_info(get_full_name(), $sformatf("TIME =%0t || READ DATA :: VALUE = %0h",$time,rdata),UVM_LOW)
    $display("%s",{60{"*"}});
*/
    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
//====================================================================================================
class default_ral_reset_test extends ral_top_test;
    `uvm_component_utils(default_ral_reset_test)
    //INBUILT RESET RAL SEQUENCE
    uvm_reg_hw_reset_seq default_reset_seq;

    function new(string name="default_ral_reset_test",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        default_reset_seq   = uvm_reg_hw_reset_seq ::type_id::create("default_reset_seq");
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task default_ral_reset_test :: run_phase(uvm_phase phase);
    phase.raise_objection(this);

    //RAL LINKING ADAPTER AND SEQUENCER
    env.regmodel.default_map    =   env.regmodel.axi_map;
    //CONNECTING DEFAULT MODEL FOR THE DEFAULT SEQUENCE TO REGMODEL
    default_reset_seq.model     =   env.regmodel;
    default_reset_seq.start(null);
    $display("%s",{60{"*"}});

    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
//====================================================================================================
class default_ral_bitbash_test extends default_ral_reset_test;
    `uvm_component_utils(default_ral_bitbash_test)
    //INBUILT RESET RAL SEQUENCE
    uvm_reg_bit_bash_seq default_bitbash_seq;

    function new(string name="default_ral_bitbash_test",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        default_bitbash_seq   = uvm_reg_bit_bash_seq ::type_id::create("default_bitbash_seq");
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task default_ral_bitbash_test :: run_phase(uvm_phase phase);
    phase.raise_objection(this);

    //RAL LINKING ADAPTER AND SEQUENCER
    env.regmodel.default_map    =   env.regmodel.axi_map;
    //CONNECTING DEFAULT MODEL FOR THE DEFAULT SEQUENCE TO REGMODEL
    default_bitbash_seq.model     =   env.regmodel;
    default_bitbash_seq.start(null);
    $display("%s",{60{"*"}});

    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
//====================================================================================================
class default_reg_access_test extends default_ral_bitbash_test;
    `uvm_component_utils(default_reg_access_test)
    //INBUILT RESET RAL SEQUENCE
    uvm_reg_access_seq default_access_seq;

    function new(string name="default_ral_access_test",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        default_access_seq   = uvm_reg_access_seq ::type_id::create("default_access_seq");
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task default_reg_access_test :: run_phase(uvm_phase phase);
    phase.raise_objection(this);

    //RAL LINKING ADAPTER AND SEQUENCER
    env.regmodel.default_map    =   env.regmodel.axi_map;
    //CONNECTING DEFAULT MODEL FOR THE DEFAULT SEQUENCE TO REGMODEL
    default_access_seq.model    =   env.regmodel;
    default_access_seq.start(null);
    $display("%s",{60{"*"}});

    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
//====================================================================================================
class default_reg_shared_access_test extends default_reg_access_test;
    `uvm_component_utils(default_reg_shared_access_test)
    //INBUILT RESET RAL SEQUENCE
    uvm_reg_shared_access_seq default_shared_access_seq;

    function new(string name="default_ral_shared_access_test",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        default_shared_access_seq   = uvm_reg_shared_access_seq ::type_id::create("default_shared_access_seq");
    endfunction

    extern task run_phase(uvm_phase phase);
endclass
//--------------------------------------------
task default_reg_shared_access_test :: run_phase(uvm_phase phase);
    phase.raise_objection(this);
    env.regmodel.print();

    //RAL LINKING ADAPTER AND SEQUENCER
    env.regmodel.default_map    =   env.regmodel.axi_map;
    //CONNECTING DEFAULT MODEL FOR THE DEFAULT SEQUENCE TO REGMODEL
    default_shared_access_seq.model    =   env.regmodel;
    default_shared_access_seq.start(null);
    $display("%s",{60{"*"}});

    phase.phase_done.set_drain_time(this,1000ns);
    phase.drop_objection(this);
endtask
