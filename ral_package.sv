package ral_pkg;
    import urc_reg_pkg::*;
    `include "uvm_macros.svh"
    import uvm_pkg::*;

    `include "prot_sequence_item.sv"
    // AXI_M0
    `include "AXI_lite_driver.sv"
    `include "AXI_lite_monitor.sv"
    `include "AXI_lite_sequencer.sv"
    `include "AXI_lite_agent.sv"

    // AXI_M1
    `include "AHB_lite_driver.sv"
    `include "AHB_lite_monitor.sv"
    `include "AHB_lite_sequencer.sv"
    `include "AHB_lite_agent.sv"

    // AXI_S0
    `include "APB_driver.sv"
    `include "APB_monitor.sv"
    `include "APB_sequencer.sv"
    `include "APB_agent.sv"

    // CLK_AGENT
    `include "clk_config.sv"
    `include "clk_driver.sv"
    `include "clk_agent.sv"

    // RST_AGENT
    `include "rstn_config.sv"
    `include "rst_driver.sv"
    `include "rst_agent.sv"

    //RAL FILES
    `include "vsequencer.sv"
    `include "ral_adapter.sv"

    //TOP FILES
    `include "ral_env.sv"
    `include "ral_scoreboard.sv"
    //Test and sequence
    `include "ral_sequence.sv"
    `include "ral_base_test.sv"
    //VIRTUAL SEQUENCER
    `include "vsequence_base.sv"
    `include "v_test.sv"


endpackage
