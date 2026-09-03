package urc_reg_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  class adc_reg_5_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_5_reg)

    rand uvm_reg_field adc_ctrl_5;
    rand uvm_reg_field adc_cfg_5;
    rand uvm_reg_field adc_stat_5;
    rand uvm_reg_field reserved;

    function new(string name = "adc_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      adc_ctrl_5 = uvm_reg_field::type_id::create("adc_ctrl_5");
      adc_ctrl_5.configure(.parent(this), .size(1), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_cfg_5 = uvm_reg_field::type_id::create("adc_cfg_5");
      adc_cfg_5.configure(.parent(this), .size(15), .lsb_pos(2), .access("RW"), .volatile(0), .reset('h7208), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_stat_5 = uvm_reg_field::type_id::create("adc_stat_5");
      adc_stat_5.configure(.parent(this), .size(15), .lsb_pos(17), .access("W1S"), .volatile(0), .reset('h15FF), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_4_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_4_reg)

    rand uvm_reg_field adc_stat_4;
    rand uvm_reg_field adc_ctrl_4;
    rand uvm_reg_field adc_cfg_4;
    rand uvm_reg_field reserved;

    function new(string name = "adc_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      adc_stat_4 = uvm_reg_field::type_id::create("adc_stat_4");
      adc_stat_4.configure(.parent(this), .size(8), .lsb_pos(24), .access("WO"), .volatile(0), .reset('h7F), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_ctrl_4 = uvm_reg_field::type_id::create("adc_ctrl_4");
      adc_ctrl_4.configure(.parent(this), .size(10), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h2FF), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_cfg_4 = uvm_reg_field::type_id::create("adc_cfg_4");
      adc_cfg_4.configure(.parent(this), .size(2), .lsb_pos(22), .access("WO"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_5_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_5_reg)

    rand uvm_reg_field pwm_stat_5;
    rand uvm_reg_field pwm_ctrl_5;
    rand uvm_reg_field pwm_cfg_5;
    rand uvm_reg_field reserved;

    function new(string name = "pwm_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_stat_5 = uvm_reg_field::type_id::create("pwm_stat_5");
      pwm_stat_5.configure(.parent(this), .size(9), .lsb_pos(23), .access("W1C"), .volatile(0), .reset('h1D2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_ctrl_5 = uvm_reg_field::type_id::create("pwm_ctrl_5");
      pwm_ctrl_5.configure(.parent(this), .size(15), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h75D), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_cfg_5 = uvm_reg_field::type_id::create("pwm_cfg_5");
      pwm_cfg_5.configure(.parent(this), .size(5), .lsb_pos(18), .access("W0C"), .volatile(0), .reset('h17), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(3), .lsb_pos(15), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_6_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_6_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field adc_cfg_6;
    rand uvm_reg_field adc_stat_6;
    rand uvm_reg_field adc_ctrl_6;

    function new(string name = "adc_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(7), .lsb_pos(17), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_cfg_6 = uvm_reg_field::type_id::create("adc_cfg_6");
      adc_cfg_6.configure(.parent(this), .size(1), .lsb_pos(24), .access("RC"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_stat_6 = uvm_reg_field::type_id::create("adc_stat_6");
      adc_stat_6.configure(.parent(this), .size(7), .lsb_pos(25), .access("RW"), .volatile(0), .reset('h23), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_ctrl_6 = uvm_reg_field::type_id::create("adc_ctrl_6");
      adc_ctrl_6.configure(.parent(this), .size(17), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h16AAC), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_1_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_1_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field adc_cfg_1;
    rand uvm_reg_field adc_ctrl_1;
    rand uvm_reg_field adc_stat_1;

    function new(string name = "adc_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_cfg_1 = uvm_reg_field::type_id::create("adc_cfg_1");
      adc_cfg_1.configure(.parent(this), .size(12), .lsb_pos(15), .access("RO"), .volatile(0), .reset('hB2A), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_ctrl_1 = uvm_reg_field::type_id::create("adc_ctrl_1");
      adc_ctrl_1.configure(.parent(this), .size(10), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h2AA), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_stat_1 = uvm_reg_field::type_id::create("adc_stat_1");
      adc_stat_1.configure(.parent(this), .size(5), .lsb_pos(27), .access("W0C"), .volatile(0), .reset('h5), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_2_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_2_reg)

    rand uvm_reg_field pwm_ctrl_2;
    rand uvm_reg_field reserved;
    rand uvm_reg_field pwm_cfg_2;
    rand uvm_reg_field pwm_stat_2;

    function new(string name = "pwm_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_ctrl_2 = uvm_reg_field::type_id::create("pwm_ctrl_2");
      pwm_ctrl_2.configure(.parent(this), .size(17), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h3C75), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(7), .lsb_pos(17), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_cfg_2 = uvm_reg_field::type_id::create("pwm_cfg_2");
      pwm_cfg_2.configure(.parent(this), .size(2), .lsb_pos(24), .access("RO"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_stat_2 = uvm_reg_field::type_id::create("pwm_stat_2");
      pwm_stat_2.configure(.parent(this), .size(6), .lsb_pos(26), .access("W0S"), .volatile(0), .reset('h23), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_3_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_3_reg)

    rand uvm_reg_field adc_ctrl_3;
    rand uvm_reg_field reserved;
    rand uvm_reg_field adc_stat_3;
    rand uvm_reg_field adc_cfg_3;

    function new(string name = "adc_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      adc_ctrl_3 = uvm_reg_field::type_id::create("adc_ctrl_3");
      adc_ctrl_3.configure(.parent(this), .size(8), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h98), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(8), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_stat_3 = uvm_reg_field::type_id::create("adc_stat_3");
      adc_stat_3.configure(.parent(this), .size(17), .lsb_pos(15), .access("W1C"), .volatile(0), .reset('h1EDB2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_cfg_3 = uvm_reg_field::type_id::create("adc_cfg_3");
      adc_cfg_3.configure(.parent(this), .size(6), .lsb_pos(9), .access("RO"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_2_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_2_reg)

    rand uvm_reg_field adc_stat_2;
    rand uvm_reg_field reserved;
    rand uvm_reg_field adc_cfg_2;
    rand uvm_reg_field adc_ctrl_2;

    function new(string name = "adc_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      adc_stat_2 = uvm_reg_field::type_id::create("adc_stat_2");
      adc_stat_2.configure(.parent(this), .size(5), .lsb_pos(27), .access("W1S"), .volatile(0), .reset('h15), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(11), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_cfg_2 = uvm_reg_field::type_id::create("adc_cfg_2");
      adc_cfg_2.configure(.parent(this), .size(6), .lsb_pos(21), .access("W0S"), .volatile(0), .reset('h1D), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_ctrl_2 = uvm_reg_field::type_id::create("adc_ctrl_2");
      adc_ctrl_2.configure(.parent(this), .size(10), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h33D), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_9_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_9_reg)

    rand uvm_reg_field adc_ctrl_9;
    rand uvm_reg_field reserved;
    rand uvm_reg_field adc_stat_9;
    rand uvm_reg_field adc_cfg_9;

    function new(string name = "adc_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      adc_ctrl_9 = uvm_reg_field::type_id::create("adc_ctrl_9");
      adc_ctrl_9.configure(.parent(this), .size(3), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h5), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_stat_9 = uvm_reg_field::type_id::create("adc_stat_9");
      adc_stat_9.configure(.parent(this), .size(9), .lsb_pos(23), .access("W0C"), .volatile(0), .reset('hC3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_cfg_9 = uvm_reg_field::type_id::create("adc_cfg_9");
      adc_cfg_9.configure(.parent(this), .size(8), .lsb_pos(15), .access("W0C"), .volatile(0), .reset('hE4), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_7_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_7_reg)

    rand uvm_reg_field adc_ctrl_7;
    rand uvm_reg_field adc_stat_7;
    rand uvm_reg_field adc_cfg_7;
    rand uvm_reg_field reserved;

    function new(string name = "adc_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      adc_ctrl_7 = uvm_reg_field::type_id::create("adc_ctrl_7");
      adc_ctrl_7.configure(.parent(this), .size(16), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h94C), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_stat_7 = uvm_reg_field::type_id::create("adc_stat_7");
      adc_stat_7.configure(.parent(this), .size(3), .lsb_pos(29), .access("RW"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_cfg_7 = uvm_reg_field::type_id::create("adc_cfg_7");
      adc_cfg_7.configure(.parent(this), .size(2), .lsb_pos(27), .access("WO"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(11), .lsb_pos(16), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_9_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_9_reg)

    rand uvm_reg_field pwm_stat_9;
    rand uvm_reg_field pwm_cfg_9;
    rand uvm_reg_field reserved;
    rand uvm_reg_field pwm_ctrl_9;

    function new(string name = "pwm_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_stat_9 = uvm_reg_field::type_id::create("pwm_stat_9");
      pwm_stat_9.configure(.parent(this), .size(17), .lsb_pos(15), .access("W0S"), .volatile(0), .reset('h63F5), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_cfg_9 = uvm_reg_field::type_id::create("pwm_cfg_9");
      pwm_cfg_9.configure(.parent(this), .size(4), .lsb_pos(11), .access("WO"), .volatile(0), .reset('h8), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(5), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_ctrl_9 = uvm_reg_field::type_id::create("pwm_ctrl_9");
      pwm_ctrl_9.configure(.parent(this), .size(5), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h18), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_8_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_8_reg)

    rand uvm_reg_field pwm_cfg_8;
    rand uvm_reg_field pwm_ctrl_8;
    rand uvm_reg_field pwm_stat_8;
    rand uvm_reg_field reserved;

    function new(string name = "pwm_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_cfg_8 = uvm_reg_field::type_id::create("pwm_cfg_8");
      pwm_cfg_8.configure(.parent(this), .size(20), .lsb_pos(10), .access("RC"), .volatile(0), .reset('h43640), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_ctrl_8 = uvm_reg_field::type_id::create("pwm_ctrl_8");
      pwm_ctrl_8.configure(.parent(this), .size(6), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h36), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_stat_8 = uvm_reg_field::type_id::create("pwm_stat_8");
      pwm_stat_8.configure(.parent(this), .size(2), .lsb_pos(30), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(4), .lsb_pos(6), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_6_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_6_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field timer_cfg_6;
    rand uvm_reg_field timer_stat_6;
    rand uvm_reg_field timer_ctrl_6;

    function new(string name = "timer_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_cfg_6 = uvm_reg_field::type_id::create("timer_cfg_6");
      timer_cfg_6.configure(.parent(this), .size(11), .lsb_pos(8), .access("WO"), .volatile(0), .reset('h2D6), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_stat_6 = uvm_reg_field::type_id::create("timer_stat_6");
      timer_stat_6.configure(.parent(this), .size(13), .lsb_pos(19), .access("W0C"), .volatile(0), .reset('h148A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_ctrl_6 = uvm_reg_field::type_id::create("timer_ctrl_6");
      timer_ctrl_6.configure(.parent(this), .size(2), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_7_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_7_reg)

    rand uvm_reg_field timer_stat_7;
    rand uvm_reg_field timer_ctrl_7;
    rand uvm_reg_field timer_cfg_7;
    rand uvm_reg_field reserved;

    function new(string name = "timer_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      timer_stat_7 = uvm_reg_field::type_id::create("timer_stat_7");
      timer_stat_7.configure(.parent(this), .size(3), .lsb_pos(29), .access("W1S"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_ctrl_7 = uvm_reg_field::type_id::create("timer_ctrl_7");
      timer_ctrl_7.configure(.parent(this), .size(4), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_cfg_7 = uvm_reg_field::type_id::create("timer_cfg_7");
      timer_cfg_7.configure(.parent(this), .size(7), .lsb_pos(22), .access("WO"), .volatile(0), .reset('h2A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(18), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_4_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_4_reg)

    rand uvm_reg_field timer_stat_4;
    rand uvm_reg_field timer_ctrl_4;
    rand uvm_reg_field reserved;
    rand uvm_reg_field timer_cfg_4;

    function new(string name = "timer_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      timer_stat_4 = uvm_reg_field::type_id::create("timer_stat_4");
      timer_stat_4.configure(.parent(this), .size(8), .lsb_pos(24), .access("W0C"), .volatile(0), .reset('h61), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_ctrl_4 = uvm_reg_field::type_id::create("timer_ctrl_4");
      timer_ctrl_4.configure(.parent(this), .size(6), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(14), .lsb_pos(6), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_cfg_4 = uvm_reg_field::type_id::create("timer_cfg_4");
      timer_cfg_4.configure(.parent(this), .size(4), .lsb_pos(20), .access("WO"), .volatile(0), .reset('hD), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_5_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_5_reg)

    rand uvm_reg_field timer_ctrl_5;
    rand uvm_reg_field timer_stat_5;
    rand uvm_reg_field reserved;
    rand uvm_reg_field timer_cfg_5;

    function new(string name = "timer_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      timer_ctrl_5 = uvm_reg_field::type_id::create("timer_ctrl_5");
      timer_ctrl_5.configure(.parent(this), .size(14), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h3506), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_stat_5 = uvm_reg_field::type_id::create("timer_stat_5");
      timer_stat_5.configure(.parent(this), .size(15), .lsb_pos(17), .access("WO"), .volatile(0), .reset('h761A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(2), .lsb_pos(14), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_cfg_5 = uvm_reg_field::type_id::create("timer_cfg_5");
      timer_cfg_5.configure(.parent(this), .size(1), .lsb_pos(16), .access("W1C"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_2_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_2_reg)

    rand uvm_reg_field timer_ctrl_2;
    rand uvm_reg_field timer_cfg_2;
    rand uvm_reg_field timer_stat_2;
    rand uvm_reg_field reserved;

    function new(string name = "timer_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      timer_ctrl_2 = uvm_reg_field::type_id::create("timer_ctrl_2");
      timer_ctrl_2.configure(.parent(this), .size(20), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('hAA072), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_cfg_2 = uvm_reg_field::type_id::create("timer_cfg_2");
      timer_cfg_2.configure(.parent(this), .size(5), .lsb_pos(21), .access("W0S"), .volatile(0), .reset('h1E), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_stat_2 = uvm_reg_field::type_id::create("timer_stat_2");
      timer_stat_2.configure(.parent(this), .size(6), .lsb_pos(26), .access("W0S"), .volatile(0), .reset('h11), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(20), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_3_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_3_reg)

    rand uvm_reg_field timer_ctrl_3;
    rand uvm_reg_field reserved;
    rand uvm_reg_field timer_stat_3;
    rand uvm_reg_field timer_cfg_3;

    function new(string name = "timer_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      timer_ctrl_3 = uvm_reg_field::type_id::create("timer_ctrl_3");
      timer_ctrl_3.configure(.parent(this), .size(12), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h134), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(12), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_stat_3 = uvm_reg_field::type_id::create("timer_stat_3");
      timer_stat_3.configure(.parent(this), .size(9), .lsb_pos(23), .access("W1S"), .volatile(0), .reset('h131), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_cfg_3 = uvm_reg_field::type_id::create("timer_cfg_3");
      timer_cfg_3.configure(.parent(this), .size(6), .lsb_pos(17), .access("W0C"), .volatile(0), .reset('h38), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_1_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_1_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field timer_ctrl_1;
    rand uvm_reg_field timer_cfg_1;
    rand uvm_reg_field timer_stat_1;

    function new(string name = "timer_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(8), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_ctrl_1 = uvm_reg_field::type_id::create("timer_ctrl_1");
      timer_ctrl_1.configure(.parent(this), .size(8), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h17), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_cfg_1 = uvm_reg_field::type_id::create("timer_cfg_1");
      timer_cfg_1.configure(.parent(this), .size(7), .lsb_pos(13), .access("W1C"), .volatile(0), .reset('h6F), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_stat_1 = uvm_reg_field::type_id::create("timer_stat_1");
      timer_stat_1.configure(.parent(this), .size(12), .lsb_pos(20), .access("W1C"), .volatile(0), .reset('hB43), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_3_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_3_reg)

    rand uvm_reg_field pwm_ctrl_3;
    rand uvm_reg_field reserved;
    rand uvm_reg_field pwm_cfg_3;
    rand uvm_reg_field pwm_stat_3;

    function new(string name = "pwm_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_ctrl_3 = uvm_reg_field::type_id::create("pwm_ctrl_3");
      pwm_ctrl_3.configure(.parent(this), .size(6), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h16), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(6), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_cfg_3 = uvm_reg_field::type_id::create("pwm_cfg_3");
      pwm_cfg_3.configure(.parent(this), .size(12), .lsb_pos(18), .access("RW"), .volatile(0), .reset('hDF2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_stat_3 = uvm_reg_field::type_id::create("pwm_stat_3");
      pwm_stat_3.configure(.parent(this), .size(2), .lsb_pos(30), .access("W1C"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_8_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_8_reg)

    rand uvm_reg_field timer_cfg_8;
    rand uvm_reg_field timer_ctrl_8;
    rand uvm_reg_field timer_stat_8;
    rand uvm_reg_field reserved;

    function new(string name = "timer_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      timer_cfg_8 = uvm_reg_field::type_id::create("timer_cfg_8");
      timer_cfg_8.configure(.parent(this), .size(8), .lsb_pos(13), .access("RW"), .volatile(0), .reset('hC), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_ctrl_8 = uvm_reg_field::type_id::create("timer_ctrl_8");
      timer_ctrl_8.configure(.parent(this), .size(1), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_stat_8 = uvm_reg_field::type_id::create("timer_stat_8");
      timer_stat_8.configure(.parent(this), .size(11), .lsb_pos(21), .access("W0S"), .volatile(0), .reset('h521), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_9_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_9_reg)

    rand uvm_reg_field timer_cfg_9;
    rand uvm_reg_field timer_stat_9;
    rand uvm_reg_field reserved;
    rand uvm_reg_field timer_ctrl_9;

    function new(string name = "timer_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      timer_cfg_9 = uvm_reg_field::type_id::create("timer_cfg_9");
      timer_cfg_9.configure(.parent(this), .size(6), .lsb_pos(5), .access("RO"), .volatile(0), .reset('h3C), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_stat_9 = uvm_reg_field::type_id::create("timer_stat_9");
      timer_stat_9.configure(.parent(this), .size(21), .lsb_pos(11), .access("WO"), .volatile(0), .reset('hFCCDE), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(4), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_ctrl_9 = uvm_reg_field::type_id::create("timer_ctrl_9");
      timer_ctrl_9.configure(.parent(this), .size(1), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_9_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_9_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field gpio_cfg_9;
    rand uvm_reg_field gpio_stat_9;
    rand uvm_reg_field gpio_ctrl_9;

    function new(string name = "gpio_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(18), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_cfg_9 = uvm_reg_field::type_id::create("gpio_cfg_9");
      gpio_cfg_9.configure(.parent(this), .size(4), .lsb_pos(25), .access("RW"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_stat_9 = uvm_reg_field::type_id::create("gpio_stat_9");
      gpio_stat_9.configure(.parent(this), .size(3), .lsb_pos(29), .access("W1S"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_ctrl_9 = uvm_reg_field::type_id::create("gpio_ctrl_9");
      gpio_ctrl_9.configure(.parent(this), .size(7), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h13), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_8_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_8_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field gpio_ctrl_8;
    rand uvm_reg_field gpio_cfg_8;
    rand uvm_reg_field gpio_stat_8;

    function new(string name = "gpio_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(2), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_ctrl_8 = uvm_reg_field::type_id::create("gpio_ctrl_8");
      gpio_ctrl_8.configure(.parent(this), .size(1), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_cfg_8 = uvm_reg_field::type_id::create("gpio_cfg_8");
      gpio_cfg_8.configure(.parent(this), .size(14), .lsb_pos(3), .access("W0S"), .volatile(0), .reset('h321A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_stat_8 = uvm_reg_field::type_id::create("gpio_stat_8");
      gpio_stat_8.configure(.parent(this), .size(15), .lsb_pos(17), .access("W1S"), .volatile(0), .reset('hC65), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_5_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_5_reg)

    rand uvm_reg_field gpio_ctrl_5;
    rand uvm_reg_field gpio_cfg_5;
    rand uvm_reg_field gpio_stat_5;
    rand uvm_reg_field reserved;

    function new(string name = "gpio_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      gpio_ctrl_5 = uvm_reg_field::type_id::create("gpio_ctrl_5");
      gpio_ctrl_5.configure(.parent(this), .size(2), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_cfg_5 = uvm_reg_field::type_id::create("gpio_cfg_5");
      gpio_cfg_5.configure(.parent(this), .size(23), .lsb_pos(3), .access("RC"), .volatile(0), .reset('hC7551), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_stat_5 = uvm_reg_field::type_id::create("gpio_stat_5");
      gpio_stat_5.configure(.parent(this), .size(6), .lsb_pos(26), .access("WO"), .volatile(0), .reset('h37), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_4_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_4_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field gpio_cfg_4;
    rand uvm_reg_field gpio_stat_4;
    rand uvm_reg_field gpio_ctrl_4;

    function new(string name = "gpio_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_cfg_4 = uvm_reg_field::type_id::create("gpio_cfg_4");
      gpio_cfg_4.configure(.parent(this), .size(14), .lsb_pos(16), .access("WO"), .volatile(0), .reset('h1FDD), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_stat_4 = uvm_reg_field::type_id::create("gpio_stat_4");
      gpio_stat_4.configure(.parent(this), .size(2), .lsb_pos(30), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_ctrl_4 = uvm_reg_field::type_id::create("gpio_ctrl_4");
      gpio_ctrl_4.configure(.parent(this), .size(4), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h5), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_7_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_7_reg)

    rand uvm_reg_field gpio_stat_7;
    rand uvm_reg_field gpio_ctrl_7;
    rand uvm_reg_field gpio_cfg_7;
    rand uvm_reg_field reserved;

    function new(string name = "gpio_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      gpio_stat_7 = uvm_reg_field::type_id::create("gpio_stat_7");
      gpio_stat_7.configure(.parent(this), .size(5), .lsb_pos(27), .access("W0C"), .volatile(0), .reset('h1D), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_ctrl_7 = uvm_reg_field::type_id::create("gpio_ctrl_7");
      gpio_ctrl_7.configure(.parent(this), .size(4), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_cfg_7 = uvm_reg_field::type_id::create("gpio_cfg_7");
      gpio_cfg_7.configure(.parent(this), .size(6), .lsb_pos(21), .access("RW"), .volatile(0), .reset('h3C), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(17), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_6_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_6_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field gpio_ctrl_6;
    rand uvm_reg_field gpio_cfg_6;
    rand uvm_reg_field gpio_stat_6;

    function new(string name = "gpio_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(14), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_ctrl_6 = uvm_reg_field::type_id::create("gpio_ctrl_6");
      gpio_ctrl_6.configure(.parent(this), .size(14), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h1E99), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_cfg_6 = uvm_reg_field::type_id::create("gpio_cfg_6");
      gpio_cfg_6.configure(.parent(this), .size(6), .lsb_pos(15), .access("RO"), .volatile(0), .reset('h1E), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_stat_6 = uvm_reg_field::type_id::create("gpio_stat_6");
      gpio_stat_6.configure(.parent(this), .size(11), .lsb_pos(21), .access("W1S"), .volatile(0), .reset('h57A), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_1_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_1_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field gpio_stat_1;
    rand uvm_reg_field gpio_ctrl_1;
    rand uvm_reg_field gpio_cfg_1;

    function new(string name = "gpio_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(3), .lsb_pos(19), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_stat_1 = uvm_reg_field::type_id::create("gpio_stat_1");
      gpio_stat_1.configure(.parent(this), .size(5), .lsb_pos(27), .access("W1S"), .volatile(0), .reset('h1B), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_ctrl_1 = uvm_reg_field::type_id::create("gpio_ctrl_1");
      gpio_ctrl_1.configure(.parent(this), .size(19), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h2BD30), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_cfg_1 = uvm_reg_field::type_id::create("gpio_cfg_1");
      gpio_cfg_1.configure(.parent(this), .size(5), .lsb_pos(22), .access("W0C"), .volatile(0), .reset('hB), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_3_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_3_reg)

    rand uvm_reg_field gpio_ctrl_3;
    rand uvm_reg_field gpio_stat_3;
    rand uvm_reg_field gpio_cfg_3;
    rand uvm_reg_field reserved;

    function new(string name = "gpio_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      gpio_ctrl_3 = uvm_reg_field::type_id::create("gpio_ctrl_3");
      gpio_ctrl_3.configure(.parent(this), .size(22), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h1F51AC), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_stat_3 = uvm_reg_field::type_id::create("gpio_stat_3");
      gpio_stat_3.configure(.parent(this), .size(5), .lsb_pos(27), .access("W0S"), .volatile(0), .reset('h1C), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_cfg_3 = uvm_reg_field::type_id::create("gpio_cfg_3");
      gpio_cfg_3.configure(.parent(this), .size(4), .lsb_pos(23), .access("RW"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(22), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_2_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_2_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field gpio_ctrl_2;
    rand uvm_reg_field gpio_stat_2;
    rand uvm_reg_field gpio_cfg_2;

    function new(string name = "gpio_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(16), .lsb_pos(6), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_ctrl_2 = uvm_reg_field::type_id::create("gpio_ctrl_2");
      gpio_ctrl_2.configure(.parent(this), .size(6), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h37), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_stat_2 = uvm_reg_field::type_id::create("gpio_stat_2");
      gpio_stat_2.configure(.parent(this), .size(9), .lsb_pos(23), .access("W1S"), .volatile(0), .reset('h190), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_cfg_2 = uvm_reg_field::type_id::create("gpio_cfg_2");
      gpio_cfg_2.configure(.parent(this), .size(1), .lsb_pos(22), .access("W0C"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_2_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_2_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field intc_stat_2;
    rand uvm_reg_field intc_ctrl_2;
    rand uvm_reg_field intc_cfg_2;

    function new(string name = "intc_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(6), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      intc_stat_2 = uvm_reg_field::type_id::create("intc_stat_2");
      intc_stat_2.configure(.parent(this), .size(11), .lsb_pos(21), .access("RW"), .volatile(0), .reset('h75E), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_ctrl_2 = uvm_reg_field::type_id::create("intc_ctrl_2");
      intc_ctrl_2.configure(.parent(this), .size(6), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h20), .has_reset(1), .is_rand(0), .individually_accessible(1));
      intc_cfg_2 = uvm_reg_field::type_id::create("intc_cfg_2");
      intc_cfg_2.configure(.parent(this), .size(9), .lsb_pos(12), .access("W0C"), .volatile(0), .reset('h1F4), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_3_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_3_reg)

    rand uvm_reg_field intc_ctrl_3;
    rand uvm_reg_field intc_stat_3;
    rand uvm_reg_field intc_cfg_3;
    rand uvm_reg_field reserved;

    function new(string name = "intc_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_ctrl_3 = uvm_reg_field::type_id::create("intc_ctrl_3");
      intc_ctrl_3.configure(.parent(this), .size(3), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h5), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_stat_3 = uvm_reg_field::type_id::create("intc_stat_3");
      intc_stat_3.configure(.parent(this), .size(12), .lsb_pos(20), .access("WO"), .volatile(0), .reset('hF2D), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_cfg_3 = uvm_reg_field::type_id::create("intc_cfg_3");
      intc_cfg_3.configure(.parent(this), .size(9), .lsb_pos(11), .access("W0S"), .volatile(0), .reset('h129), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_1_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_1_reg)

    rand uvm_reg_field intc_cfg_1;
    rand uvm_reg_field intc_stat_1;
    rand uvm_reg_field intc_ctrl_1;
    rand uvm_reg_field reserved;

    function new(string name = "intc_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_cfg_1 = uvm_reg_field::type_id::create("intc_cfg_1");
      intc_cfg_1.configure(.parent(this), .size(7), .lsb_pos(23), .access("W0S"), .volatile(0), .reset('h76), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_stat_1 = uvm_reg_field::type_id::create("intc_stat_1");
      intc_stat_1.configure(.parent(this), .size(2), .lsb_pos(30), .access("WO"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_ctrl_1 = uvm_reg_field::type_id::create("intc_ctrl_1");
      intc_ctrl_1.configure(.parent(this), .size(22), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h2E0C3C), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(22), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_6_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_6_reg)

    rand uvm_reg_field intc_ctrl_6;
    rand uvm_reg_field reserved;
    rand uvm_reg_field intc_cfg_6;
    rand uvm_reg_field intc_stat_6;

    function new(string name = "intc_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_ctrl_6 = uvm_reg_field::type_id::create("intc_ctrl_6");
      intc_ctrl_6.configure(.parent(this), .size(8), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('hDF), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(8), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      intc_cfg_6 = uvm_reg_field::type_id::create("intc_cfg_6");
      intc_cfg_6.configure(.parent(this), .size(7), .lsb_pos(20), .access("W0C"), .volatile(0), .reset('h2E), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_stat_6 = uvm_reg_field::type_id::create("intc_stat_6");
      intc_stat_6.configure(.parent(this), .size(5), .lsb_pos(27), .access("RC"), .volatile(0), .reset('h12), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_7_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_7_reg)

    rand uvm_reg_field intc_ctrl_7;
    rand uvm_reg_field intc_stat_7;
    rand uvm_reg_field intc_cfg_7;
    rand uvm_reg_field reserved;

    function new(string name = "intc_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_ctrl_7 = uvm_reg_field::type_id::create("intc_ctrl_7");
      intc_ctrl_7.configure(.parent(this), .size(7), .lsb_pos(0), .access("WO"), .volatile(0), .reset('hB), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_stat_7 = uvm_reg_field::type_id::create("intc_stat_7");
      intc_stat_7.configure(.parent(this), .size(10), .lsb_pos(22), .access("RC"), .volatile(0), .reset('h361), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_cfg_7 = uvm_reg_field::type_id::create("intc_cfg_7");
      intc_cfg_7.configure(.parent(this), .size(9), .lsb_pos(13), .access("W0S"), .volatile(0), .reset('h145), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_4_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_4_reg)

    rand uvm_reg_field intc_ctrl_4;
    rand uvm_reg_field intc_cfg_4;
    rand uvm_reg_field intc_stat_4;
    rand uvm_reg_field reserved;

    function new(string name = "intc_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_ctrl_4 = uvm_reg_field::type_id::create("intc_ctrl_4");
      intc_ctrl_4.configure(.parent(this), .size(12), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('hFD5), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_cfg_4 = uvm_reg_field::type_id::create("intc_cfg_4");
      intc_cfg_4.configure(.parent(this), .size(12), .lsb_pos(18), .access("W0S"), .volatile(0), .reset('hBCA), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_stat_4 = uvm_reg_field::type_id::create("intc_stat_4");
      intc_stat_4.configure(.parent(this), .size(2), .lsb_pos(30), .access("RC"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(12), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_5_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_5_reg)

    rand uvm_reg_field intc_stat_5;
    rand uvm_reg_field intc_ctrl_5;
    rand uvm_reg_field intc_cfg_5;
    rand uvm_reg_field reserved;

    function new(string name = "intc_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_stat_5 = uvm_reg_field::type_id::create("intc_stat_5");
      intc_stat_5.configure(.parent(this), .size(22), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h396BCF), .has_reset(1), .is_rand(0), .individually_accessible(1));
      intc_ctrl_5 = uvm_reg_field::type_id::create("intc_ctrl_5");
      intc_ctrl_5.configure(.parent(this), .size(5), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h11), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_cfg_5 = uvm_reg_field::type_id::create("intc_cfg_5");
      intc_cfg_5.configure(.parent(this), .size(1), .lsb_pos(9), .access("RC"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(4), .lsb_pos(5), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_8_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_8_reg)

    rand uvm_reg_field intc_cfg_8;
    rand uvm_reg_field intc_stat_8;
    rand uvm_reg_field reserved;
    rand uvm_reg_field intc_ctrl_8;

    function new(string name = "intc_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_cfg_8 = uvm_reg_field::type_id::create("intc_cfg_8");
      intc_cfg_8.configure(.parent(this), .size(4), .lsb_pos(24), .access("RO"), .volatile(0), .reset('h6), .has_reset(1), .is_rand(0), .individually_accessible(1));
      intc_stat_8 = uvm_reg_field::type_id::create("intc_stat_8");
      intc_stat_8.configure(.parent(this), .size(4), .lsb_pos(28), .access("WO"), .volatile(0), .reset('h8), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(19), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      intc_ctrl_8 = uvm_reg_field::type_id::create("intc_ctrl_8");
      intc_ctrl_8.configure(.parent(this), .size(19), .lsb_pos(0), .access("RO"), .volatile(0), .reset('hD18F), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_9_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_9_reg)

    rand uvm_reg_field intc_stat_9;
    rand uvm_reg_field intc_ctrl_9;
    rand uvm_reg_field intc_cfg_9;
    rand uvm_reg_field reserved;

    function new(string name = "intc_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      intc_stat_9 = uvm_reg_field::type_id::create("intc_stat_9");
      intc_stat_9.configure(.parent(this), .size(10), .lsb_pos(22), .access("RC"), .volatile(0), .reset('h346), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_ctrl_9 = uvm_reg_field::type_id::create("intc_ctrl_9");
      intc_ctrl_9.configure(.parent(this), .size(7), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h17), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_cfg_9 = uvm_reg_field::type_id::create("intc_cfg_9");
      intc_cfg_9.configure(.parent(this), .size(4), .lsb_pos(18), .access("W0S"), .volatile(0), .reset('hF), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(11), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_5_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_5_reg)

    rand uvm_reg_field watchdog_stat_5;
    rand uvm_reg_field reserved;
    rand uvm_reg_field watchdog_ctrl_5;
    rand uvm_reg_field watchdog_cfg_5;

    function new(string name = "watchdog_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      watchdog_stat_5 = uvm_reg_field::type_id::create("watchdog_stat_5");
      watchdog_stat_5.configure(.parent(this), .size(2), .lsb_pos(30), .access("W0S"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(4), .lsb_pos(15), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      watchdog_ctrl_5 = uvm_reg_field::type_id::create("watchdog_ctrl_5");
      watchdog_ctrl_5.configure(.parent(this), .size(15), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h2936), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_cfg_5 = uvm_reg_field::type_id::create("watchdog_cfg_5");
      watchdog_cfg_5.configure(.parent(this), .size(11), .lsb_pos(19), .access("RO"), .volatile(0), .reset('h6A), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_4_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_4_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field watchdog_stat_4;
    rand uvm_reg_field watchdog_ctrl_4;
    rand uvm_reg_field watchdog_cfg_4;

    function new(string name = "watchdog_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(16), .lsb_pos(9), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      watchdog_stat_4 = uvm_reg_field::type_id::create("watchdog_stat_4");
      watchdog_stat_4.configure(.parent(this), .size(5), .lsb_pos(27), .access("W1S"), .volatile(0), .reset('hC), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_ctrl_4 = uvm_reg_field::type_id::create("watchdog_ctrl_4");
      watchdog_ctrl_4.configure(.parent(this), .size(9), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h1DE), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_cfg_4 = uvm_reg_field::type_id::create("watchdog_cfg_4");
      watchdog_cfg_4.configure(.parent(this), .size(2), .lsb_pos(25), .access("W0C"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_7_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_7_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field watchdog_cfg_7;
    rand uvm_reg_field watchdog_ctrl_7;
    rand uvm_reg_field watchdog_stat_7;

    function new(string name = "watchdog_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(10), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      watchdog_cfg_7 = uvm_reg_field::type_id::create("watchdog_cfg_7");
      watchdog_cfg_7.configure(.parent(this), .size(11), .lsb_pos(17), .access("W0S"), .volatile(0), .reset('h3B8), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_ctrl_7 = uvm_reg_field::type_id::create("watchdog_ctrl_7");
      watchdog_ctrl_7.configure(.parent(this), .size(7), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h56), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_stat_7 = uvm_reg_field::type_id::create("watchdog_stat_7");
      watchdog_stat_7.configure(.parent(this), .size(4), .lsb_pos(28), .access("W0C"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_6_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_6_reg)

    rand uvm_reg_field watchdog_ctrl_6;
    rand uvm_reg_field reserved;
    rand uvm_reg_field watchdog_stat_6;
    rand uvm_reg_field watchdog_cfg_6;

    function new(string name = "watchdog_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      watchdog_ctrl_6 = uvm_reg_field::type_id::create("watchdog_ctrl_6");
      watchdog_ctrl_6.configure(.parent(this), .size(10), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h3B0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      watchdog_stat_6 = uvm_reg_field::type_id::create("watchdog_stat_6");
      watchdog_stat_6.configure(.parent(this), .size(12), .lsb_pos(20), .access("RW"), .volatile(0), .reset('h2A0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_cfg_6 = uvm_reg_field::type_id::create("watchdog_cfg_6");
      watchdog_cfg_6.configure(.parent(this), .size(9), .lsb_pos(11), .access("W1C"), .volatile(0), .reset('h52), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_1_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_1_reg)

    rand uvm_reg_field watchdog_ctrl_1;
    rand uvm_reg_field watchdog_cfg_1;
    rand uvm_reg_field watchdog_stat_1;
    rand uvm_reg_field reserved;

    function new(string name = "watchdog_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      watchdog_ctrl_1 = uvm_reg_field::type_id::create("watchdog_ctrl_1");
      watchdog_ctrl_1.configure(.parent(this), .size(4), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_cfg_1 = uvm_reg_field::type_id::create("watchdog_cfg_1");
      watchdog_cfg_1.configure(.parent(this), .size(1), .lsb_pos(8), .access("RW"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_stat_1 = uvm_reg_field::type_id::create("watchdog_stat_1");
      watchdog_stat_1.configure(.parent(this), .size(23), .lsb_pos(9), .access("W1C"), .volatile(0), .reset('h24ABD0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(4), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_3_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_3_reg)

    rand uvm_reg_field watchdog_cfg_3;
    rand uvm_reg_field watchdog_ctrl_3;
    rand uvm_reg_field watchdog_stat_3;
    rand uvm_reg_field reserved;

    function new(string name = "watchdog_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      watchdog_cfg_3 = uvm_reg_field::type_id::create("watchdog_cfg_3");
      watchdog_cfg_3.configure(.parent(this), .size(5), .lsb_pos(25), .access("RO"), .volatile(0), .reset('h18), .has_reset(1), .is_rand(0), .individually_accessible(1));
      watchdog_ctrl_3 = uvm_reg_field::type_id::create("watchdog_ctrl_3");
      watchdog_ctrl_3.configure(.parent(this), .size(17), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h1EB13), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_stat_3 = uvm_reg_field::type_id::create("watchdog_stat_3");
      watchdog_stat_3.configure(.parent(this), .size(2), .lsb_pos(30), .access("RO"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(17), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_2_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_2_reg)

    rand uvm_reg_field watchdog_stat_2;
    rand uvm_reg_field watchdog_ctrl_2;
    rand uvm_reg_field watchdog_cfg_2;
    rand uvm_reg_field reserved;

    function new(string name = "watchdog_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      watchdog_stat_2 = uvm_reg_field::type_id::create("watchdog_stat_2");
      watchdog_stat_2.configure(.parent(this), .size(8), .lsb_pos(24), .access("WO"), .volatile(0), .reset('h9E), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_ctrl_2 = uvm_reg_field::type_id::create("watchdog_ctrl_2");
      watchdog_ctrl_2.configure(.parent(this), .size(3), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_cfg_2 = uvm_reg_field::type_id::create("watchdog_cfg_2");
      watchdog_cfg_2.configure(.parent(this), .size(5), .lsb_pos(19), .access("W1S"), .volatile(0), .reset('h17), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(16), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_9_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_9_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field watchdog_ctrl_9;
    rand uvm_reg_field watchdog_stat_9;
    rand uvm_reg_field watchdog_cfg_9;

    function new(string name = "watchdog_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(11), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      watchdog_ctrl_9 = uvm_reg_field::type_id::create("watchdog_ctrl_9");
      watchdog_ctrl_9.configure(.parent(this), .size(11), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h700), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_stat_9 = uvm_reg_field::type_id::create("watchdog_stat_9");
      watchdog_stat_9.configure(.parent(this), .size(9), .lsb_pos(23), .access("W0S"), .volatile(0), .reset('h6B), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_cfg_9 = uvm_reg_field::type_id::create("watchdog_cfg_9");
      watchdog_cfg_9.configure(.parent(this), .size(7), .lsb_pos(16), .access("RC"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_8_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_8_reg)

    rand uvm_reg_field watchdog_cfg_8;
    rand uvm_reg_field watchdog_ctrl_8;
    rand uvm_reg_field watchdog_stat_8;
    rand uvm_reg_field reserved;

    function new(string name = "watchdog_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      watchdog_cfg_8 = uvm_reg_field::type_id::create("watchdog_cfg_8");
      watchdog_cfg_8.configure(.parent(this), .size(1), .lsb_pos(9), .access("RC"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_ctrl_8 = uvm_reg_field::type_id::create("watchdog_ctrl_8");
      watchdog_ctrl_8.configure(.parent(this), .size(7), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h23), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_stat_8 = uvm_reg_field::type_id::create("watchdog_stat_8");
      watchdog_stat_8.configure(.parent(this), .size(22), .lsb_pos(10), .access("RC"), .volatile(0), .reset('h29302E), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(2), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_8_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_8_reg)

    rand uvm_reg_field adc_ctrl_8;
    rand uvm_reg_field reserved;
    rand uvm_reg_field adc_stat_8;
    rand uvm_reg_field adc_cfg_8;

    function new(string name = "adc_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      adc_ctrl_8 = uvm_reg_field::type_id::create("adc_ctrl_8");
      adc_ctrl_8.configure(.parent(this), .size(10), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h27), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(14), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_stat_8 = uvm_reg_field::type_id::create("adc_stat_8");
      adc_stat_8.configure(.parent(this), .size(4), .lsb_pos(28), .access("W1S"), .volatile(0), .reset('h9), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_cfg_8 = uvm_reg_field::type_id::create("adc_cfg_8");
      adc_cfg_8.configure(.parent(this), .size(4), .lsb_pos(24), .access("W0C"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_4_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_4_reg)

    rand uvm_reg_field pwm_ctrl_4;
    rand uvm_reg_field pwm_cfg_4;
    rand uvm_reg_field pwm_stat_4;
    rand uvm_reg_field reserved;

    function new(string name = "pwm_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_ctrl_4 = uvm_reg_field::type_id::create("pwm_ctrl_4");
      pwm_ctrl_4.configure(.parent(this), .size(5), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h18), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_cfg_4 = uvm_reg_field::type_id::create("pwm_cfg_4");
      pwm_cfg_4.configure(.parent(this), .size(2), .lsb_pos(17), .access("RO"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_stat_4 = uvm_reg_field::type_id::create("pwm_stat_4");
      pwm_stat_4.configure(.parent(this), .size(13), .lsb_pos(19), .access("WO"), .volatile(0), .reset('h408), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(5), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_10_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_10_reg)

    rand uvm_reg_field i2c_stat_10;
    rand uvm_reg_field reserved;
    rand uvm_reg_field i2c_cfg_10;
    rand uvm_reg_field i2c_ctrl_10;

    function new(string name = "i2c_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_stat_10 = uvm_reg_field::type_id::create("i2c_stat_10");
      i2c_stat_10.configure(.parent(this), .size(3), .lsb_pos(29), .access("W1C"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(9), .lsb_pos(12), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_cfg_10 = uvm_reg_field::type_id::create("i2c_cfg_10");
      i2c_cfg_10.configure(.parent(this), .size(8), .lsb_pos(21), .access("WO"), .volatile(0), .reset('h72), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_ctrl_10 = uvm_reg_field::type_id::create("i2c_ctrl_10");
      i2c_ctrl_10.configure(.parent(this), .size(12), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('hEB8), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_6_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_6_reg)

    rand uvm_reg_field pwm_ctrl_6;
    rand uvm_reg_field pwm_cfg_6;
    rand uvm_reg_field pwm_stat_6;
    rand uvm_reg_field reserved;

    function new(string name = "pwm_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_ctrl_6 = uvm_reg_field::type_id::create("pwm_ctrl_6");
      pwm_ctrl_6.configure(.parent(this), .size(3), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_cfg_6 = uvm_reg_field::type_id::create("pwm_cfg_6");
      pwm_cfg_6.configure(.parent(this), .size(9), .lsb_pos(10), .access("RW"), .volatile(0), .reset('h79), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_stat_6 = uvm_reg_field::type_id::create("pwm_stat_6");
      pwm_stat_6.configure(.parent(this), .size(13), .lsb_pos(19), .access("RO"), .volatile(0), .reset('hE86), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(7), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_10_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_10_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field dma_cfg_10;
    rand uvm_reg_field dma_stat_10;
    rand uvm_reg_field dma_ctrl_10;

    function new(string name = "dma_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(2), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_cfg_10 = uvm_reg_field::type_id::create("dma_cfg_10");
      dma_cfg_10.configure(.parent(this), .size(25), .lsb_pos(4), .access("W0C"), .volatile(0), .reset('h34226D), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_stat_10 = uvm_reg_field::type_id::create("dma_stat_10");
      dma_stat_10.configure(.parent(this), .size(3), .lsb_pos(29), .access("RO"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_ctrl_10 = uvm_reg_field::type_id::create("dma_ctrl_10");
      dma_ctrl_10.configure(.parent(this), .size(2), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_1_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_1_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field pwm_cfg_1;
    rand uvm_reg_field pwm_ctrl_1;
    rand uvm_reg_field pwm_stat_1;

    function new(string name = "pwm_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(3), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_cfg_1 = uvm_reg_field::type_id::create("pwm_cfg_1");
      pwm_cfg_1.configure(.parent(this), .size(7), .lsb_pos(10), .access("W1C"), .volatile(0), .reset('h32), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_ctrl_1 = uvm_reg_field::type_id::create("pwm_ctrl_1");
      pwm_ctrl_1.configure(.parent(this), .size(7), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h24), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_stat_1 = uvm_reg_field::type_id::create("pwm_stat_1");
      pwm_stat_1.configure(.parent(this), .size(15), .lsb_pos(17), .access("RW"), .volatile(0), .reset('hF3E), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class intc_reg_10_reg extends uvm_reg;
    `uvm_object_utils(intc_reg_10_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field intc_ctrl_10;
    rand uvm_reg_field intc_cfg_10;
    rand uvm_reg_field intc_stat_10;

    function new(string name = "intc_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(7), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      intc_ctrl_10 = uvm_reg_field::type_id::create("intc_ctrl_10");
      intc_ctrl_10.configure(.parent(this), .size(10), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h1A2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_cfg_10 = uvm_reg_field::type_id::create("intc_cfg_10");
      intc_cfg_10.configure(.parent(this), .size(5), .lsb_pos(17), .access("W0S"), .volatile(0), .reset('hE), .has_reset(1), .is_rand(1), .individually_accessible(1));
      intc_stat_10 = uvm_reg_field::type_id::create("intc_stat_10");
      intc_stat_10.configure(.parent(this), .size(10), .lsb_pos(22), .access("W1S"), .volatile(0), .reset('h137), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_10_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_10_reg)

    rand uvm_reg_field spi_stat_10;
    rand uvm_reg_field spi_ctrl_10;
    rand uvm_reg_field spi_cfg_10;
    rand uvm_reg_field reserved;

    function new(string name = "spi_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_stat_10 = uvm_reg_field::type_id::create("spi_stat_10");
      spi_stat_10.configure(.parent(this), .size(5), .lsb_pos(27), .access("W1C"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_ctrl_10 = uvm_reg_field::type_id::create("spi_ctrl_10");
      spi_ctrl_10.configure(.parent(this), .size(7), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h21), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_cfg_10 = uvm_reg_field::type_id::create("spi_cfg_10");
      spi_cfg_10.configure(.parent(this), .size(6), .lsb_pos(21), .access("WO"), .volatile(0), .reset('h15), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(14), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_8_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_8_reg)

    rand uvm_reg_field uart_cfg_8;
    rand uvm_reg_field reserved;
    rand uvm_reg_field uart_ctrl_8;
    rand uvm_reg_field uart_stat_8;

    function new(string name = "uart_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_cfg_8 = uvm_reg_field::type_id::create("uart_cfg_8");
      uart_cfg_8.configure(.parent(this), .size(7), .lsb_pos(16), .access("RO"), .volatile(0), .reset('h70), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(8), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_ctrl_8 = uvm_reg_field::type_id::create("uart_ctrl_8");
      uart_ctrl_8.configure(.parent(this), .size(8), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h43), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_stat_8 = uvm_reg_field::type_id::create("uart_stat_8");
      uart_stat_8.configure(.parent(this), .size(9), .lsb_pos(23), .access("W0S"), .volatile(0), .reset('h10A), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_9_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_9_reg)

    rand uvm_reg_field uart_ctrl_9;
    rand uvm_reg_field uart_stat_9;
    rand uvm_reg_field reserved;
    rand uvm_reg_field uart_cfg_9;

    function new(string name = "uart_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_ctrl_9 = uvm_reg_field::type_id::create("uart_ctrl_9");
      uart_ctrl_9.configure(.parent(this), .size(4), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_stat_9 = uvm_reg_field::type_id::create("uart_stat_9");
      uart_stat_9.configure(.parent(this), .size(7), .lsb_pos(25), .access("W0S"), .volatile(0), .reset('h52), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(10), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_cfg_9 = uvm_reg_field::type_id::create("uart_cfg_9");
      uart_cfg_9.configure(.parent(this), .size(11), .lsb_pos(14), .access("WO"), .volatile(0), .reset('h305), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_1_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_1_reg)

    rand uvm_reg_field uart_ctrl_1;
    rand uvm_reg_field uart_stat_1;
    rand uvm_reg_field uart_cfg_1;
    rand uvm_reg_field reserved;

    function new(string name = "uart_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_ctrl_1 = uvm_reg_field::type_id::create("uart_ctrl_1");
      uart_ctrl_1.configure(.parent(this), .size(3), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_stat_1 = uvm_reg_field::type_id::create("uart_stat_1");
      uart_stat_1.configure(.parent(this), .size(11), .lsb_pos(21), .access("W1C"), .volatile(0), .reset('h57E), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_cfg_1 = uvm_reg_field::type_id::create("uart_cfg_1");
      uart_cfg_1.configure(.parent(this), .size(12), .lsb_pos(9), .access("RC"), .volatile(0), .reset('h665), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_2_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_2_reg)

    rand uvm_reg_field uart_stat_2;
    rand uvm_reg_field reserved;
    rand uvm_reg_field uart_cfg_2;
    rand uvm_reg_field uart_ctrl_2;

    function new(string name = "uart_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_stat_2 = uvm_reg_field::type_id::create("uart_stat_2");
      uart_stat_2.configure(.parent(this), .size(6), .lsb_pos(26), .access("RC"), .volatile(0), .reset('h11), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(3), .lsb_pos(13), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_cfg_2 = uvm_reg_field::type_id::create("uart_cfg_2");
      uart_cfg_2.configure(.parent(this), .size(10), .lsb_pos(16), .access("W1C"), .volatile(0), .reset('h286), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_ctrl_2 = uvm_reg_field::type_id::create("uart_ctrl_2");
      uart_ctrl_2.configure(.parent(this), .size(13), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h1B7C), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_3_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_3_reg)

    rand uvm_reg_field uart_stat_3;
    rand uvm_reg_field uart_ctrl_3;
    rand uvm_reg_field uart_cfg_3;
    rand uvm_reg_field reserved;

    function new(string name = "uart_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_stat_3 = uvm_reg_field::type_id::create("uart_stat_3");
      uart_stat_3.configure(.parent(this), .size(7), .lsb_pos(25), .access("RC"), .volatile(0), .reset('h5A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_ctrl_3 = uvm_reg_field::type_id::create("uart_ctrl_3");
      uart_ctrl_3.configure(.parent(this), .size(3), .lsb_pos(0), .access("RC"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_cfg_3 = uvm_reg_field::type_id::create("uart_cfg_3");
      uart_cfg_3.configure(.parent(this), .size(21), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h155B3E), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_4_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_4_reg)

    rand uvm_reg_field uart_ctrl_4;
    rand uvm_reg_field reserved;
    rand uvm_reg_field uart_stat_4;
    rand uvm_reg_field uart_cfg_4;

    function new(string name = "uart_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_ctrl_4 = uvm_reg_field::type_id::create("uart_ctrl_4");
      uart_ctrl_4.configure(.parent(this), .size(7), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h26), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(11), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_stat_4 = uvm_reg_field::type_id::create("uart_stat_4");
      uart_stat_4.configure(.parent(this), .size(11), .lsb_pos(21), .access("W0C"), .volatile(0), .reset('h72A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_cfg_4 = uvm_reg_field::type_id::create("uart_cfg_4");
      uart_cfg_4.configure(.parent(this), .size(3), .lsb_pos(18), .access("W0S"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_5_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_5_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field uart_cfg_5;
    rand uvm_reg_field uart_ctrl_5;
    rand uvm_reg_field uart_stat_5;

    function new(string name = "uart_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(9), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_cfg_5 = uvm_reg_field::type_id::create("uart_cfg_5");
      uart_cfg_5.configure(.parent(this), .size(15), .lsb_pos(11), .access("RO"), .volatile(0), .reset('h7078), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_ctrl_5 = uvm_reg_field::type_id::create("uart_ctrl_5");
      uart_ctrl_5.configure(.parent(this), .size(2), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_stat_5 = uvm_reg_field::type_id::create("uart_stat_5");
      uart_stat_5.configure(.parent(this), .size(6), .lsb_pos(26), .access("W1S"), .volatile(0), .reset('h5), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_6_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_6_reg)

    rand uvm_reg_field uart_ctrl_6;
    rand uvm_reg_field uart_cfg_6;
    rand uvm_reg_field uart_stat_6;
    rand uvm_reg_field reserved;

    function new(string name = "uart_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_ctrl_6 = uvm_reg_field::type_id::create("uart_ctrl_6");
      uart_ctrl_6.configure(.parent(this), .size(5), .lsb_pos(0), .access("RC"), .volatile(0), .reset('h1A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_cfg_6 = uvm_reg_field::type_id::create("uart_cfg_6");
      uart_cfg_6.configure(.parent(this), .size(4), .lsb_pos(13), .access("W0C"), .volatile(0), .reset('hE), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_stat_6 = uvm_reg_field::type_id::create("uart_stat_6");
      uart_stat_6.configure(.parent(this), .size(15), .lsb_pos(17), .access("RO"), .volatile(0), .reset('h3326), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(5), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_7_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_7_reg)

    rand uvm_reg_field uart_ctrl_7;
    rand uvm_reg_field uart_stat_7;
    rand uvm_reg_field reserved;
    rand uvm_reg_field uart_cfg_7;

    function new(string name = "uart_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_ctrl_7 = uvm_reg_field::type_id::create("uart_ctrl_7");
      uart_ctrl_7.configure(.parent(this), .size(10), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h2A2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_stat_7 = uvm_reg_field::type_id::create("uart_stat_7");
      uart_stat_7.configure(.parent(this), .size(3), .lsb_pos(29), .access("W1C"), .volatile(0), .reset('h7), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      uart_cfg_7 = uvm_reg_field::type_id::create("uart_cfg_7");
      uart_cfg_7.configure(.parent(this), .size(13), .lsb_pos(16), .access("W1C"), .volatile(0), .reset('h1772), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class adc_reg_10_reg extends uvm_reg;
    `uvm_object_utils(adc_reg_10_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field adc_cfg_10;
    rand uvm_reg_field adc_ctrl_10;
    rand uvm_reg_field adc_stat_10;

    function new(string name = "adc_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(10), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_cfg_10 = uvm_reg_field::type_id::create("adc_cfg_10");
      adc_cfg_10.configure(.parent(this), .size(7), .lsb_pos(13), .access("RC"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      adc_ctrl_10 = uvm_reg_field::type_id::create("adc_ctrl_10");
      adc_ctrl_10.configure(.parent(this), .size(3), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h5), .has_reset(1), .is_rand(0), .individually_accessible(1));
      adc_stat_10 = uvm_reg_field::type_id::create("adc_stat_10");
      adc_stat_10.configure(.parent(this), .size(12), .lsb_pos(20), .access("W0C"), .volatile(0), .reset('h4B5), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class watchdog_reg_10_reg extends uvm_reg;
    `uvm_object_utils(watchdog_reg_10_reg)

    rand uvm_reg_field watchdog_ctrl_10;
    rand uvm_reg_field watchdog_stat_10;
    rand uvm_reg_field watchdog_cfg_10;
    rand uvm_reg_field reserved;

    function new(string name = "watchdog_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      watchdog_ctrl_10 = uvm_reg_field::type_id::create("watchdog_ctrl_10");
      watchdog_ctrl_10.configure(.parent(this), .size(12), .lsb_pos(0), .access("RO"), .volatile(0), .reset('hDE), .has_reset(1), .is_rand(0), .individually_accessible(1));
      watchdog_stat_10 = uvm_reg_field::type_id::create("watchdog_stat_10");
      watchdog_stat_10.configure(.parent(this), .size(6), .lsb_pos(26), .access("W0C"), .volatile(0), .reset('h15), .has_reset(1), .is_rand(1), .individually_accessible(1));
      watchdog_cfg_10 = uvm_reg_field::type_id::create("watchdog_cfg_10");
      watchdog_cfg_10.configure(.parent(this), .size(12), .lsb_pos(14), .access("RC"), .volatile(0), .reset('h8FD), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(2), .lsb_pos(12), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class timer_reg_10_reg extends uvm_reg;
    `uvm_object_utils(timer_reg_10_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field timer_stat_10;
    rand uvm_reg_field timer_ctrl_10;
    rand uvm_reg_field timer_cfg_10;

    function new(string name = "timer_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(2), .lsb_pos(17), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_stat_10 = uvm_reg_field::type_id::create("timer_stat_10");
      timer_stat_10.configure(.parent(this), .size(11), .lsb_pos(21), .access("W1S"), .volatile(0), .reset('h4D4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      timer_ctrl_10 = uvm_reg_field::type_id::create("timer_ctrl_10");
      timer_ctrl_10.configure(.parent(this), .size(17), .lsb_pos(0), .access("RO"), .volatile(0), .reset('hA217), .has_reset(1), .is_rand(0), .individually_accessible(1));
      timer_cfg_10 = uvm_reg_field::type_id::create("timer_cfg_10");
      timer_cfg_10.configure(.parent(this), .size(2), .lsb_pos(19), .access("W0S"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_1_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_1_reg)

    rand uvm_reg_field dma_cfg_1;
    rand uvm_reg_field reserved;
    rand uvm_reg_field dma_ctrl_1;
    rand uvm_reg_field dma_stat_1;

    function new(string name = "dma_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_cfg_1 = uvm_reg_field::type_id::create("dma_cfg_1");
      dma_cfg_1.configure(.parent(this), .size(1), .lsb_pos(28), .access("RW"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(16), .lsb_pos(12), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_ctrl_1 = uvm_reg_field::type_id::create("dma_ctrl_1");
      dma_ctrl_1.configure(.parent(this), .size(12), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h8FE), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_stat_1 = uvm_reg_field::type_id::create("dma_stat_1");
      dma_stat_1.configure(.parent(this), .size(3), .lsb_pos(29), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_3_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_3_reg)

    rand uvm_reg_field dma_stat_3;
    rand uvm_reg_field dma_cfg_3;
    rand uvm_reg_field dma_ctrl_3;
    rand uvm_reg_field reserved;

    function new(string name = "dma_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_stat_3 = uvm_reg_field::type_id::create("dma_stat_3");
      dma_stat_3.configure(.parent(this), .size(6), .lsb_pos(26), .access("WO"), .volatile(0), .reset('h9), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_cfg_3 = uvm_reg_field::type_id::create("dma_cfg_3");
      dma_cfg_3.configure(.parent(this), .size(4), .lsb_pos(22), .access("W0S"), .volatile(0), .reset('h9), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_ctrl_3 = uvm_reg_field::type_id::create("dma_ctrl_3");
      dma_ctrl_3.configure(.parent(this), .size(10), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h120), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_2_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_2_reg)

    rand uvm_reg_field dma_ctrl_2;
    rand uvm_reg_field dma_cfg_2;
    rand uvm_reg_field dma_stat_2;
    rand uvm_reg_field reserved;

    function new(string name = "dma_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_ctrl_2 = uvm_reg_field::type_id::create("dma_ctrl_2");
      dma_ctrl_2.configure(.parent(this), .size(18), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h13DCC), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_cfg_2 = uvm_reg_field::type_id::create("dma_cfg_2");
      dma_cfg_2.configure(.parent(this), .size(2), .lsb_pos(22), .access("W1S"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_stat_2 = uvm_reg_field::type_id::create("dma_stat_2");
      dma_stat_2.configure(.parent(this), .size(8), .lsb_pos(24), .access("RW"), .volatile(0), .reset('hF6), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(4), .lsb_pos(18), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_5_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_5_reg)

    rand uvm_reg_field dma_cfg_5;
    rand uvm_reg_field reserved;
    rand uvm_reg_field dma_stat_5;
    rand uvm_reg_field dma_ctrl_5;

    function new(string name = "dma_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_cfg_5 = uvm_reg_field::type_id::create("dma_cfg_5");
      dma_cfg_5.configure(.parent(this), .size(1), .lsb_pos(17), .access("W1C"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(7), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_stat_5 = uvm_reg_field::type_id::create("dma_stat_5");
      dma_stat_5.configure(.parent(this), .size(14), .lsb_pos(18), .access("W0S"), .volatile(0), .reset('h3019), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_ctrl_5 = uvm_reg_field::type_id::create("dma_ctrl_5");
      dma_ctrl_5.configure(.parent(this), .size(10), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h3E), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_4_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_4_reg)

    rand uvm_reg_field dma_cfg_4;
    rand uvm_reg_field dma_stat_4;
    rand uvm_reg_field reserved;
    rand uvm_reg_field dma_ctrl_4;

    function new(string name = "dma_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_cfg_4 = uvm_reg_field::type_id::create("dma_cfg_4");
      dma_cfg_4.configure(.parent(this), .size(15), .lsb_pos(10), .access("RC"), .volatile(0), .reset('h1EB3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_stat_4 = uvm_reg_field::type_id::create("dma_stat_4");
      dma_stat_4.configure(.parent(this), .size(7), .lsb_pos(25), .access("W0C"), .volatile(0), .reset('h67), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(9), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_ctrl_4 = uvm_reg_field::type_id::create("dma_ctrl_4");
      dma_ctrl_4.configure(.parent(this), .size(1), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_7_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_7_reg)

    rand uvm_reg_field dma_stat_7;
    rand uvm_reg_field dma_cfg_7;
    rand uvm_reg_field reserved;
    rand uvm_reg_field dma_ctrl_7;

    function new(string name = "dma_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_stat_7 = uvm_reg_field::type_id::create("dma_stat_7");
      dma_stat_7.configure(.parent(this), .size(3), .lsb_pos(29), .access("WO"), .volatile(0), .reset('h7), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_cfg_7 = uvm_reg_field::type_id::create("dma_cfg_7");
      dma_cfg_7.configure(.parent(this), .size(19), .lsb_pos(10), .access("W0S"), .volatile(0), .reset('h37468), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_ctrl_7 = uvm_reg_field::type_id::create("dma_ctrl_7");
      dma_ctrl_7.configure(.parent(this), .size(2), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_6_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_6_reg)

    rand uvm_reg_field dma_ctrl_6;
    rand uvm_reg_field dma_cfg_6;
    rand uvm_reg_field dma_stat_6;
    rand uvm_reg_field reserved;

    function new(string name = "dma_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_ctrl_6 = uvm_reg_field::type_id::create("dma_ctrl_6");
      dma_ctrl_6.configure(.parent(this), .size(1), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_cfg_6 = uvm_reg_field::type_id::create("dma_cfg_6");
      dma_cfg_6.configure(.parent(this), .size(7), .lsb_pos(20), .access("RO"), .volatile(0), .reset('h2F), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_stat_6 = uvm_reg_field::type_id::create("dma_stat_6");
      dma_stat_6.configure(.parent(this), .size(5), .lsb_pos(27), .access("RW"), .volatile(0), .reset('hD), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(19), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_9_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_9_reg)

    rand uvm_reg_field dma_stat_9;
    rand uvm_reg_field reserved;
    rand uvm_reg_field dma_ctrl_9;
    rand uvm_reg_field dma_cfg_9;

    function new(string name = "dma_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      dma_stat_9 = uvm_reg_field::type_id::create("dma_stat_9");
      dma_stat_9.configure(.parent(this), .size(6), .lsb_pos(26), .access("RW"), .volatile(0), .reset('hE), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(11), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_ctrl_9 = uvm_reg_field::type_id::create("dma_ctrl_9");
      dma_ctrl_9.configure(.parent(this), .size(3), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_cfg_9 = uvm_reg_field::type_id::create("dma_cfg_9");
      dma_cfg_9.configure(.parent(this), .size(12), .lsb_pos(14), .access("W1S"), .volatile(0), .reset('h50A), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class dma_reg_8_reg extends uvm_reg;
    `uvm_object_utils(dma_reg_8_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field dma_stat_8;
    rand uvm_reg_field dma_ctrl_8;
    rand uvm_reg_field dma_cfg_8;

    function new(string name = "dma_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      dma_stat_8 = uvm_reg_field::type_id::create("dma_stat_8");
      dma_stat_8.configure(.parent(this), .size(21), .lsb_pos(11), .access("RW"), .volatile(0), .reset('hFA22B), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_ctrl_8 = uvm_reg_field::type_id::create("dma_ctrl_8");
      dma_ctrl_8.configure(.parent(this), .size(2), .lsb_pos(0), .access("WO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      dma_cfg_8 = uvm_reg_field::type_id::create("dma_cfg_8");
      dma_cfg_8.configure(.parent(this), .size(4), .lsb_pos(7), .access("W1C"), .volatile(0), .reset('hF), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_7_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_7_reg)

    rand uvm_reg_field i2c_cfg_7;
    rand uvm_reg_field reserved;
    rand uvm_reg_field i2c_ctrl_7;
    rand uvm_reg_field i2c_stat_7;

    function new(string name = "i2c_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_cfg_7 = uvm_reg_field::type_id::create("i2c_cfg_7");
      i2c_cfg_7.configure(.parent(this), .size(14), .lsb_pos(16), .access("RO"), .volatile(0), .reset('h33A4), .has_reset(1), .is_rand(0), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_ctrl_7 = uvm_reg_field::type_id::create("i2c_ctrl_7");
      i2c_ctrl_7.configure(.parent(this), .size(10), .lsb_pos(0), .access("RO"), .volatile(0), .reset('h38A), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_stat_7 = uvm_reg_field::type_id::create("i2c_stat_7");
      i2c_stat_7.configure(.parent(this), .size(2), .lsb_pos(30), .access("RC"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_6_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_6_reg)

    rand uvm_reg_field i2c_ctrl_6;
    rand uvm_reg_field reserved;
    rand uvm_reg_field i2c_stat_6;
    rand uvm_reg_field i2c_cfg_6;

    function new(string name = "i2c_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_ctrl_6 = uvm_reg_field::type_id::create("i2c_ctrl_6");
      i2c_ctrl_6.configure(.parent(this), .size(13), .lsb_pos(0), .access("RC"), .volatile(0), .reset('h11DF), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(13), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_stat_6 = uvm_reg_field::type_id::create("i2c_stat_6");
      i2c_stat_6.configure(.parent(this), .size(9), .lsb_pos(23), .access("RO"), .volatile(0), .reset('h1A1), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_cfg_6 = uvm_reg_field::type_id::create("i2c_cfg_6");
      i2c_cfg_6.configure(.parent(this), .size(2), .lsb_pos(21), .access("RW"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_5_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_5_reg)

    rand uvm_reg_field i2c_stat_5;
    rand uvm_reg_field reserved;
    rand uvm_reg_field i2c_cfg_5;
    rand uvm_reg_field i2c_ctrl_5;

    function new(string name = "i2c_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_stat_5 = uvm_reg_field::type_id::create("i2c_stat_5");
      i2c_stat_5.configure(.parent(this), .size(4), .lsb_pos(28), .access("W1C"), .volatile(0), .reset('h6), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(10), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_cfg_5 = uvm_reg_field::type_id::create("i2c_cfg_5");
      i2c_cfg_5.configure(.parent(this), .size(17), .lsb_pos(11), .access("W1C"), .volatile(0), .reset('h25A7), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_ctrl_5 = uvm_reg_field::type_id::create("i2c_ctrl_5");
      i2c_ctrl_5.configure(.parent(this), .size(1), .lsb_pos(0), .access("RC"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_4_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_4_reg)

    rand uvm_reg_field i2c_stat_4;
    rand uvm_reg_field i2c_ctrl_4;
    rand uvm_reg_field reserved;
    rand uvm_reg_field i2c_cfg_4;

    function new(string name = "i2c_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_stat_4 = uvm_reg_field::type_id::create("i2c_stat_4");
      i2c_stat_4.configure(.parent(this), .size(14), .lsb_pos(18), .access("RO"), .volatile(0), .reset('h1045), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_ctrl_4 = uvm_reg_field::type_id::create("i2c_ctrl_4");
      i2c_ctrl_4.configure(.parent(this), .size(1), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_cfg_4 = uvm_reg_field::type_id::create("i2c_cfg_4");
      i2c_cfg_4.configure(.parent(this), .size(9), .lsb_pos(9), .access("RW"), .volatile(0), .reset('hE7), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_3_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_3_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field i2c_ctrl_3;
    rand uvm_reg_field i2c_stat_3;
    rand uvm_reg_field i2c_cfg_3;

    function new(string name = "i2c_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(13), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_ctrl_3 = uvm_reg_field::type_id::create("i2c_ctrl_3");
      i2c_ctrl_3.configure(.parent(this), .size(2), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_stat_3 = uvm_reg_field::type_id::create("i2c_stat_3");
      i2c_stat_3.configure(.parent(this), .size(10), .lsb_pos(22), .access("RC"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_cfg_3 = uvm_reg_field::type_id::create("i2c_cfg_3");
      i2c_cfg_3.configure(.parent(this), .size(7), .lsb_pos(15), .access("W0S"), .volatile(0), .reset('hB), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_2_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_2_reg)

    rand uvm_reg_field i2c_stat_2;
    rand uvm_reg_field i2c_cfg_2;
    rand uvm_reg_field i2c_ctrl_2;
    rand uvm_reg_field reserved;

    function new(string name = "i2c_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_stat_2 = uvm_reg_field::type_id::create("i2c_stat_2");
      i2c_stat_2.configure(.parent(this), .size(19), .lsb_pos(13), .access("W1S"), .volatile(0), .reset('h71205), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_cfg_2 = uvm_reg_field::type_id::create("i2c_cfg_2");
      i2c_cfg_2.configure(.parent(this), .size(7), .lsb_pos(6), .access("RO"), .volatile(0), .reset('h2C), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_ctrl_2 = uvm_reg_field::type_id::create("i2c_ctrl_2");
      i2c_ctrl_2.configure(.parent(this), .size(1), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(1), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_1_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_1_reg)

    rand uvm_reg_field i2c_cfg_1;
    rand uvm_reg_field i2c_stat_1;
    rand uvm_reg_field i2c_ctrl_1;
    rand uvm_reg_field reserved;

    function new(string name = "i2c_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_cfg_1 = uvm_reg_field::type_id::create("i2c_cfg_1");
      i2c_cfg_1.configure(.parent(this), .size(11), .lsb_pos(16), .access("RC"), .volatile(0), .reset('h2AD), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_stat_1 = uvm_reg_field::type_id::create("i2c_stat_1");
      i2c_stat_1.configure(.parent(this), .size(5), .lsb_pos(27), .access("W1C"), .volatile(0), .reset('h8), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_ctrl_1 = uvm_reg_field::type_id::create("i2c_ctrl_1");
      i2c_ctrl_1.configure(.parent(this), .size(8), .lsb_pos(0), .access("RW"), .volatile(0), .reset('hE1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(8), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_9_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_9_reg)

    rand uvm_reg_field i2c_cfg_9;
    rand uvm_reg_field i2c_ctrl_9;
    rand uvm_reg_field reserved;
    rand uvm_reg_field i2c_stat_9;

    function new(string name = "i2c_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_cfg_9 = uvm_reg_field::type_id::create("i2c_cfg_9");
      i2c_cfg_9.configure(.parent(this), .size(1), .lsb_pos(14), .access("W0S"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_ctrl_9 = uvm_reg_field::type_id::create("i2c_ctrl_9");
      i2c_ctrl_9.configure(.parent(this), .size(3), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(11), .lsb_pos(3), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      i2c_stat_9 = uvm_reg_field::type_id::create("i2c_stat_9");
      i2c_stat_9.configure(.parent(this), .size(17), .lsb_pos(15), .access("RC"), .volatile(0), .reset('h1C80), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class i2c_reg_8_reg extends uvm_reg;
    `uvm_object_utils(i2c_reg_8_reg)

    rand uvm_reg_field i2c_cfg_8;
    rand uvm_reg_field i2c_ctrl_8;
    rand uvm_reg_field i2c_stat_8;
    rand uvm_reg_field reserved;

    function new(string name = "i2c_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      i2c_cfg_8 = uvm_reg_field::type_id::create("i2c_cfg_8");
      i2c_cfg_8.configure(.parent(this), .size(14), .lsb_pos(14), .access("WO"), .volatile(0), .reset('h1FCA), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_ctrl_8 = uvm_reg_field::type_id::create("i2c_ctrl_8");
      i2c_ctrl_8.configure(.parent(this), .size(12), .lsb_pos(0), .access("RC"), .volatile(0), .reset('hF4A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      i2c_stat_8 = uvm_reg_field::type_id::create("i2c_stat_8");
      i2c_stat_8.configure(.parent(this), .size(4), .lsb_pos(28), .access("RC"), .volatile(0), .reset('hC), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(2), .lsb_pos(12), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_1_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_1_reg)

    rand uvm_reg_field spi_ctrl_1;
    rand uvm_reg_field spi_cfg_1;
    rand uvm_reg_field reserved;
    rand uvm_reg_field spi_stat_1;

    function new(string name = "spi_reg_1_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_ctrl_1 = uvm_reg_field::type_id::create("spi_ctrl_1");
      spi_ctrl_1.configure(.parent(this), .size(4), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_cfg_1 = uvm_reg_field::type_id::create("spi_cfg_1");
      spi_cfg_1.configure(.parent(this), .size(15), .lsb_pos(10), .access("W0C"), .volatile(0), .reset('h16C), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(6), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_stat_1 = uvm_reg_field::type_id::create("spi_stat_1");
      spi_stat_1.configure(.parent(this), .size(7), .lsb_pos(25), .access("RW"), .volatile(0), .reset('h3D), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_3_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_3_reg)

    rand uvm_reg_field spi_stat_3;
    rand uvm_reg_field spi_ctrl_3;
    rand uvm_reg_field spi_cfg_3;
    rand uvm_reg_field reserved;

    function new(string name = "spi_reg_3_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_stat_3 = uvm_reg_field::type_id::create("spi_stat_3");
      spi_stat_3.configure(.parent(this), .size(15), .lsb_pos(17), .access("W1C"), .volatile(0), .reset('h5720), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_ctrl_3 = uvm_reg_field::type_id::create("spi_ctrl_3");
      spi_ctrl_3.configure(.parent(this), .size(9), .lsb_pos(0), .access("WO"), .volatile(0), .reset('hE7), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_cfg_3 = uvm_reg_field::type_id::create("spi_cfg_3");
      spi_cfg_3.configure(.parent(this), .size(7), .lsb_pos(10), .access("RW"), .volatile(0), .reset('h2A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(1), .lsb_pos(9), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_2_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_2_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field spi_stat_2;
    rand uvm_reg_field spi_cfg_2;
    rand uvm_reg_field spi_ctrl_2;

    function new(string name = "spi_reg_2_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(14), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_stat_2 = uvm_reg_field::type_id::create("spi_stat_2");
      spi_stat_2.configure(.parent(this), .size(6), .lsb_pos(26), .access("W1C"), .volatile(0), .reset('h13), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_cfg_2 = uvm_reg_field::type_id::create("spi_cfg_2");
      spi_cfg_2.configure(.parent(this), .size(2), .lsb_pos(24), .access("W0S"), .volatile(0), .reset('h2), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_ctrl_2 = uvm_reg_field::type_id::create("spi_ctrl_2");
      spi_ctrl_2.configure(.parent(this), .size(10), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h12B), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_5_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_5_reg)

    rand uvm_reg_field spi_cfg_5;
    rand uvm_reg_field spi_ctrl_5;
    rand uvm_reg_field spi_stat_5;
    rand uvm_reg_field reserved;

    function new(string name = "spi_reg_5_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_cfg_5 = uvm_reg_field::type_id::create("spi_cfg_5");
      spi_cfg_5.configure(.parent(this), .size(3), .lsb_pos(23), .access("W0S"), .volatile(0), .reset('h7), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_ctrl_5 = uvm_reg_field::type_id::create("spi_ctrl_5");
      spi_ctrl_5.configure(.parent(this), .size(2), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_stat_5 = uvm_reg_field::type_id::create("spi_stat_5");
      spi_stat_5.configure(.parent(this), .size(6), .lsb_pos(26), .access("RC"), .volatile(0), .reset('h26), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(21), .lsb_pos(2), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_4_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_4_reg)

    rand uvm_reg_field spi_ctrl_4;
    rand uvm_reg_field spi_cfg_4;
    rand uvm_reg_field reserved;
    rand uvm_reg_field spi_stat_4;

    function new(string name = "spi_reg_4_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_ctrl_4 = uvm_reg_field::type_id::create("spi_ctrl_4");
      spi_ctrl_4.configure(.parent(this), .size(9), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h1EA), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_cfg_4 = uvm_reg_field::type_id::create("spi_cfg_4");
      spi_cfg_4.configure(.parent(this), .size(3), .lsb_pos(18), .access("RC"), .volatile(0), .reset('h3), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(9), .lsb_pos(9), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_stat_4 = uvm_reg_field::type_id::create("spi_stat_4");
      spi_stat_4.configure(.parent(this), .size(11), .lsb_pos(21), .access("RC"), .volatile(0), .reset('h18), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_7_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_7_reg)

    rand uvm_reg_field spi_ctrl_7;
    rand uvm_reg_field spi_cfg_7;
    rand uvm_reg_field reserved;
    rand uvm_reg_field spi_stat_7;

    function new(string name = "spi_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_ctrl_7 = uvm_reg_field::type_id::create("spi_ctrl_7");
      spi_ctrl_7.configure(.parent(this), .size(8), .lsb_pos(0), .access("W0C"), .volatile(0), .reset('h5A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_cfg_7 = uvm_reg_field::type_id::create("spi_cfg_7");
      spi_cfg_7.configure(.parent(this), .size(10), .lsb_pos(20), .access("W0S"), .volatile(0), .reset('h116), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(12), .lsb_pos(8), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_stat_7 = uvm_reg_field::type_id::create("spi_stat_7");
      spi_stat_7.configure(.parent(this), .size(2), .lsb_pos(30), .access("WO"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_6_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_6_reg)

    rand uvm_reg_field spi_stat_6;
    rand uvm_reg_field spi_cfg_6;
    rand uvm_reg_field spi_ctrl_6;
    rand uvm_reg_field reserved;

    function new(string name = "spi_reg_6_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_stat_6 = uvm_reg_field::type_id::create("spi_stat_6");
      spi_stat_6.configure(.parent(this), .size(6), .lsb_pos(26), .access("W0C"), .volatile(0), .reset('h28), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_cfg_6 = uvm_reg_field::type_id::create("spi_cfg_6");
      spi_cfg_6.configure(.parent(this), .size(8), .lsb_pos(18), .access("RO"), .volatile(0), .reset('h45), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_ctrl_6 = uvm_reg_field::type_id::create("spi_ctrl_6");
      spi_ctrl_6.configure(.parent(this), .size(9), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h17A), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(9), .lsb_pos(9), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_9_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_9_reg)

    rand uvm_reg_field reserved;
    rand uvm_reg_field spi_ctrl_9;
    rand uvm_reg_field spi_stat_9;
    rand uvm_reg_field spi_cfg_9;

    function new(string name = "spi_reg_9_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(7), .lsb_pos(6), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_ctrl_9 = uvm_reg_field::type_id::create("spi_ctrl_9");
      spi_ctrl_9.configure(.parent(this), .size(6), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('hE), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_stat_9 = uvm_reg_field::type_id::create("spi_stat_9");
      spi_stat_9.configure(.parent(this), .size(12), .lsb_pos(20), .access("RO"), .volatile(0), .reset('h96C), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_cfg_9 = uvm_reg_field::type_id::create("spi_cfg_9");
      spi_cfg_9.configure(.parent(this), .size(7), .lsb_pos(13), .access("W1S"), .volatile(0), .reset('h6A), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class spi_reg_8_reg extends uvm_reg;
    `uvm_object_utils(spi_reg_8_reg)

    rand uvm_reg_field spi_cfg_8;
    rand uvm_reg_field spi_stat_8;
    rand uvm_reg_field reserved;
    rand uvm_reg_field spi_ctrl_8;

    function new(string name = "spi_reg_8_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      spi_cfg_8 = uvm_reg_field::type_id::create("spi_cfg_8");
      spi_cfg_8.configure(.parent(this), .size(6), .lsb_pos(21), .access("W0C"), .volatile(0), .reset('h3F), .has_reset(1), .is_rand(1), .individually_accessible(1));
      spi_stat_8 = uvm_reg_field::type_id::create("spi_stat_8");
      spi_stat_8.configure(.parent(this), .size(5), .lsb_pos(27), .access("RW"), .volatile(0), .reset('h1D), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(5), .lsb_pos(16), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      spi_ctrl_8 = uvm_reg_field::type_id::create("spi_ctrl_8");
      spi_ctrl_8.configure(.parent(this), .size(16), .lsb_pos(0), .access("W1C"), .volatile(0), .reset('hC912), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class uart_reg_10_reg extends uvm_reg;
    `uvm_object_utils(uart_reg_10_reg)

    rand uvm_reg_field uart_stat_10;
    rand uvm_reg_field uart_ctrl_10;
    rand uvm_reg_field uart_cfg_10;
    rand uvm_reg_field reserved;

    function new(string name = "uart_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      uart_stat_10 = uvm_reg_field::type_id::create("uart_stat_10");
      uart_stat_10.configure(.parent(this), .size(5), .lsb_pos(27), .access("RC"), .volatile(0), .reset('h12), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_ctrl_10 = uvm_reg_field::type_id::create("uart_ctrl_10");
      uart_ctrl_10.configure(.parent(this), .size(10), .lsb_pos(0), .access("W0S"), .volatile(0), .reset('h2AB), .has_reset(1), .is_rand(1), .individually_accessible(1));
      uart_cfg_10 = uvm_reg_field::type_id::create("uart_cfg_10");
      uart_cfg_10.configure(.parent(this), .size(8), .lsb_pos(19), .access("RC"), .volatile(0), .reset('hBC), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(9), .lsb_pos(10), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
    endfunction
  endclass

  class gpio_reg_10_reg extends uvm_reg;
    `uvm_object_utils(gpio_reg_10_reg)

    rand uvm_reg_field gpio_cfg_10;
    rand uvm_reg_field gpio_ctrl_10;
    rand uvm_reg_field reserved;
    rand uvm_reg_field gpio_stat_10;

    function new(string name = "gpio_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      gpio_cfg_10 = uvm_reg_field::type_id::create("gpio_cfg_10");
      gpio_cfg_10.configure(.parent(this), .size(2), .lsb_pos(17), .access("W1C"), .volatile(0), .reset('h1), .has_reset(1), .is_rand(1), .individually_accessible(1));
      gpio_ctrl_10 = uvm_reg_field::type_id::create("gpio_ctrl_10");
      gpio_ctrl_10.configure(.parent(this), .size(7), .lsb_pos(0), .access("RC"), .volatile(0), .reset('h16), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(10), .lsb_pos(7), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      gpio_stat_10 = uvm_reg_field::type_id::create("gpio_stat_10");
      gpio_stat_10.configure(.parent(this), .size(13), .lsb_pos(19), .access("W0C"), .volatile(0), .reset('h19D2), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_10_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_10_reg)

    rand uvm_reg_field pwm_cfg_10;
    rand uvm_reg_field pwm_ctrl_10;
    rand uvm_reg_field reserved;
    rand uvm_reg_field pwm_stat_10;

    function new(string name = "pwm_reg_10_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_cfg_10 = uvm_reg_field::type_id::create("pwm_cfg_10");
      pwm_cfg_10.configure(.parent(this), .size(14), .lsb_pos(12), .access("WO"), .volatile(0), .reset('h3743), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_ctrl_10 = uvm_reg_field::type_id::create("pwm_ctrl_10");
      pwm_ctrl_10.configure(.parent(this), .size(4), .lsb_pos(0), .access("W1S"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(8), .lsb_pos(4), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_stat_10 = uvm_reg_field::type_id::create("pwm_stat_10");
      pwm_stat_10.configure(.parent(this), .size(6), .lsb_pos(26), .access("WO"), .volatile(0), .reset('h19), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass

  class pwm_reg_7_reg extends uvm_reg;
    `uvm_object_utils(pwm_reg_7_reg)

    rand uvm_reg_field pwm_cfg_7;
    rand uvm_reg_field reserved;
    rand uvm_reg_field pwm_ctrl_7;
    rand uvm_reg_field pwm_stat_7;

    function new(string name = "pwm_reg_7_reg");
      super.new(name, 32, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
      pwm_cfg_7 = uvm_reg_field::type_id::create("pwm_cfg_7");
      pwm_cfg_7.configure(.parent(this), .size(4), .lsb_pos(22), .access("W0C"), .volatile(0), .reset('h4), .has_reset(1), .is_rand(1), .individually_accessible(1));
      reserved = uvm_reg_field::type_id::create("reserved");
      reserved.configure(.parent(this), .size(7), .lsb_pos(15), .access("RO"), .volatile(0), .reset('h0), .has_reset(1), .is_rand(0), .individually_accessible(1));
      pwm_ctrl_7 = uvm_reg_field::type_id::create("pwm_ctrl_7");
      pwm_ctrl_7.configure(.parent(this), .size(15), .lsb_pos(0), .access("RW"), .volatile(0), .reset('h58C5), .has_reset(1), .is_rand(1), .individually_accessible(1));
      pwm_stat_7 = uvm_reg_field::type_id::create("pwm_stat_7");
      pwm_stat_7.configure(.parent(this), .size(6), .lsb_pos(26), .access("W0C"), .volatile(0), .reset('h6), .has_reset(1), .is_rand(1), .individually_accessible(1));
    endfunction
  endclass
//======================================================================================================================
//TOP REG BLOCK
//======================================================================================================================
  class urc_reg_block extends uvm_reg_block;
    `uvm_object_utils(urc_reg_block)

    rand adc_reg_5_reg adc_reg_5;
    rand adc_reg_4_reg adc_reg_4;
    rand pwm_reg_5_reg pwm_reg_5;
    rand adc_reg_6_reg adc_reg_6;
    rand adc_reg_1_reg adc_reg_1;
    rand pwm_reg_2_reg pwm_reg_2;
    rand adc_reg_3_reg adc_reg_3;
    rand adc_reg_2_reg adc_reg_2;
    rand adc_reg_9_reg adc_reg_9;
    rand adc_reg_7_reg adc_reg_7;
    rand pwm_reg_9_reg pwm_reg_9;
    rand pwm_reg_8_reg pwm_reg_8;
    rand timer_reg_6_reg timer_reg_6;
    rand timer_reg_7_reg timer_reg_7;
    rand timer_reg_4_reg timer_reg_4;
    rand timer_reg_5_reg timer_reg_5;
    rand timer_reg_2_reg timer_reg_2;
    rand timer_reg_3_reg timer_reg_3;
    rand timer_reg_1_reg timer_reg_1;
    rand pwm_reg_3_reg pwm_reg_3;
    rand timer_reg_8_reg timer_reg_8;
    rand timer_reg_9_reg timer_reg_9;
    rand gpio_reg_9_reg gpio_reg_9;
    rand gpio_reg_8_reg gpio_reg_8;
    rand gpio_reg_5_reg gpio_reg_5;
    rand gpio_reg_4_reg gpio_reg_4;
    rand gpio_reg_7_reg gpio_reg_7;
    rand gpio_reg_6_reg gpio_reg_6;
    rand gpio_reg_1_reg gpio_reg_1;
    rand gpio_reg_3_reg gpio_reg_3;
    rand gpio_reg_2_reg gpio_reg_2;
    rand intc_reg_2_reg intc_reg_2;
    rand intc_reg_3_reg intc_reg_3;
    rand intc_reg_1_reg intc_reg_1;
    rand intc_reg_6_reg intc_reg_6;
    rand intc_reg_7_reg intc_reg_7;
    rand intc_reg_4_reg intc_reg_4;
    rand intc_reg_5_reg intc_reg_5;
    rand intc_reg_8_reg intc_reg_8;
    rand intc_reg_9_reg intc_reg_9;
    rand watchdog_reg_5_reg watchdog_reg_5;
    rand watchdog_reg_4_reg watchdog_reg_4;
    rand watchdog_reg_7_reg watchdog_reg_7;
    rand watchdog_reg_6_reg watchdog_reg_6;
    rand watchdog_reg_1_reg watchdog_reg_1;
    rand watchdog_reg_3_reg watchdog_reg_3;
    rand watchdog_reg_2_reg watchdog_reg_2;
    rand watchdog_reg_9_reg watchdog_reg_9;
    rand watchdog_reg_8_reg watchdog_reg_8;
    rand adc_reg_8_reg adc_reg_8;
    rand pwm_reg_4_reg pwm_reg_4;
    rand i2c_reg_10_reg i2c_reg_10;
    rand pwm_reg_6_reg pwm_reg_6;
    rand dma_reg_10_reg dma_reg_10;
    rand pwm_reg_1_reg pwm_reg_1;
    rand intc_reg_10_reg intc_reg_10;
    rand spi_reg_10_reg spi_reg_10;
    rand uart_reg_8_reg uart_reg_8;
    rand uart_reg_9_reg uart_reg_9;
    rand uart_reg_1_reg uart_reg_1;
    rand uart_reg_2_reg uart_reg_2;
    rand uart_reg_3_reg uart_reg_3;
    rand uart_reg_4_reg uart_reg_4;
    rand uart_reg_5_reg uart_reg_5;
    rand uart_reg_6_reg uart_reg_6;
    rand uart_reg_7_reg uart_reg_7;
    rand adc_reg_10_reg adc_reg_10;
    rand watchdog_reg_10_reg watchdog_reg_10;
    rand timer_reg_10_reg timer_reg_10;
    rand dma_reg_1_reg dma_reg_1;
    rand dma_reg_3_reg dma_reg_3;
    rand dma_reg_2_reg dma_reg_2;
    rand dma_reg_5_reg dma_reg_5;
    rand dma_reg_4_reg dma_reg_4;
    rand dma_reg_7_reg dma_reg_7;
    rand dma_reg_6_reg dma_reg_6;
    rand dma_reg_9_reg dma_reg_9;
    rand dma_reg_8_reg dma_reg_8;
    rand i2c_reg_7_reg i2c_reg_7;
    rand i2c_reg_6_reg i2c_reg_6;
    rand i2c_reg_5_reg i2c_reg_5;
    rand i2c_reg_4_reg i2c_reg_4;
    rand i2c_reg_3_reg i2c_reg_3;
    rand i2c_reg_2_reg i2c_reg_2;
    rand i2c_reg_1_reg i2c_reg_1;
    rand i2c_reg_9_reg i2c_reg_9;
    rand i2c_reg_8_reg i2c_reg_8;
    rand spi_reg_1_reg spi_reg_1;
    rand spi_reg_3_reg spi_reg_3;
    rand spi_reg_2_reg spi_reg_2;
    rand spi_reg_5_reg spi_reg_5;
    rand spi_reg_4_reg spi_reg_4;
    rand spi_reg_7_reg spi_reg_7;
    rand spi_reg_6_reg spi_reg_6;
    rand spi_reg_9_reg spi_reg_9;
    rand spi_reg_8_reg spi_reg_8;
    rand uart_reg_10_reg uart_reg_10;
    rand gpio_reg_10_reg gpio_reg_10;
    rand pwm_reg_10_reg pwm_reg_10;
    rand pwm_reg_7_reg pwm_reg_7;

    //DIFFERENT MAPPING FOR DIFFERENT PROTOCOL
    uvm_reg_map axi_map;
    uvm_reg_map apb_map;
    uvm_reg_map ahb_map;

    function new(string name = "urc_reg_block");
      super.new(name, UVM_NO_COVERAGE);
    endfunction

    virtual function void build();
    //CREATE MAPPING FOR ALL THE DIFF PROTOCOL
      axi_map = create_map("axi_map", 'h9000_0000, 4, UVM_LITTLE_ENDIAN);
      apb_map = create_map("apb_map", 'h9000_0000, 4, UVM_LITTLE_ENDIAN);
      ahb_map = create_map("ahb_map", 'h9000_0000, 4, UVM_LITTLE_ENDIAN);

      adc_reg_5 = adc_reg_5_reg::type_id::create("adc_reg_5");
      adc_reg_5.configure(this);
      adc_reg_5.build();
      axi_map.add_reg(adc_reg_5, 'h154, "RW");
      apb_map.add_reg(adc_reg_5, 'h154, "RW");
      ahb_map.add_reg(adc_reg_5, 'h154, "RW");

      adc_reg_4 = adc_reg_4_reg::type_id::create("adc_reg_4");
      adc_reg_4.configure(this);
      adc_reg_4.build();
      axi_map.add_reg(adc_reg_4, 'h150, "RW");
      apb_map.add_reg(adc_reg_4, 'h150, "RW");
      ahb_map.add_reg(adc_reg_4, 'h150, "RW");

      pwm_reg_5 = pwm_reg_5_reg::type_id::create("pwm_reg_5");
      pwm_reg_5.configure(this);
      pwm_reg_5.build();
      axi_map.add_reg(pwm_reg_5, 'h0DC, "RW");
      apb_map.add_reg(pwm_reg_5, 'h0DC, "RW");
      ahb_map.add_reg(pwm_reg_5, 'h0DC, "RW");

      adc_reg_6 = adc_reg_6_reg::type_id::create("adc_reg_6");
      adc_reg_6.configure(this);
      adc_reg_6.build();
      axi_map.add_reg(adc_reg_6, 'h158, "RW");
      apb_map.add_reg(adc_reg_6, 'h158, "RW");
      ahb_map.add_reg(adc_reg_6, 'h158, "RW");

      adc_reg_1 = adc_reg_1_reg::type_id::create("adc_reg_1");
      adc_reg_1.configure(this);
      adc_reg_1.build();
      axi_map.add_reg(adc_reg_1, 'h144, "RW");
      apb_map.add_reg(adc_reg_1, 'h144, "RW");
      ahb_map.add_reg(adc_reg_1, 'h144, "RW");

      pwm_reg_2 = pwm_reg_2_reg::type_id::create("pwm_reg_2");
      pwm_reg_2.configure(this);
      pwm_reg_2.build();
      axi_map.add_reg(pwm_reg_2, 'h0D0, "RW");
      apb_map.add_reg(pwm_reg_2, 'h0D0, "RW");
      ahb_map.add_reg(pwm_reg_2, 'h0D0, "RW");

      adc_reg_3 = adc_reg_3_reg::type_id::create("adc_reg_3");
      adc_reg_3.configure(this);
      adc_reg_3.build();
      axi_map.add_reg(adc_reg_3, 'h14C, "RW");
      apb_map.add_reg(adc_reg_3, 'h14C, "RW");
      ahb_map.add_reg(adc_reg_3, 'h14C, "RW");

      adc_reg_2 = adc_reg_2_reg::type_id::create("adc_reg_2");
      adc_reg_2.configure(this);
      adc_reg_2.build();
      axi_map.add_reg(adc_reg_2, 'h148, "RW");
      apb_map.add_reg(adc_reg_2, 'h148, "RW");
      ahb_map.add_reg(adc_reg_2, 'h148, "RW");

      adc_reg_9 = adc_reg_9_reg::type_id::create("adc_reg_9");
      adc_reg_9.configure(this);
      adc_reg_9.build();
      axi_map.add_reg(adc_reg_9, 'h164, "RW");
      apb_map.add_reg(adc_reg_9, 'h164, "RW");
      ahb_map.add_reg(adc_reg_9, 'h164, "RW");

      adc_reg_7 = adc_reg_7_reg::type_id::create("adc_reg_7");
      adc_reg_7.configure(this);
      adc_reg_7.build();
      axi_map.add_reg(adc_reg_7, 'h15C, "RW");
      apb_map.add_reg(adc_reg_7, 'h15C, "RW");
      ahb_map.add_reg(adc_reg_7, 'h15C, "RW");

      pwm_reg_9 = pwm_reg_9_reg::type_id::create("pwm_reg_9");
      pwm_reg_9.configure(this);
      pwm_reg_9.build();
      axi_map.add_reg(pwm_reg_9, 'h0EC, "RW");
      apb_map.add_reg(pwm_reg_9, 'h0EC, "RW");
      ahb_map.add_reg(pwm_reg_9, 'h0EC, "RW");

      pwm_reg_8 = pwm_reg_8_reg::type_id::create("pwm_reg_8");
      pwm_reg_8.configure(this);
      pwm_reg_8.build();
      axi_map.add_reg(pwm_reg_8, 'h0E8, "RW");
      apb_map.add_reg(pwm_reg_8, 'h0E8, "RW");
      ahb_map.add_reg(pwm_reg_8, 'h0E8, "RW");

      timer_reg_6 = timer_reg_6_reg::type_id::create("timer_reg_6");
      timer_reg_6.configure(this);
      timer_reg_6.build();
      axi_map.add_reg(timer_reg_6, 'h0B8, "RW");
      apb_map.add_reg(timer_reg_6, 'h0B8, "RW");
      ahb_map.add_reg(timer_reg_6, 'h0B8, "RW");

      timer_reg_7 = timer_reg_7_reg::type_id::create("timer_reg_7");
      timer_reg_7.configure(this);
      timer_reg_7.build();
      axi_map.add_reg(timer_reg_7, 'h0BC, "RW");
      apb_map.add_reg(timer_reg_7, 'h0BC, "RW");
      ahb_map.add_reg(timer_reg_7, 'h0BC, "RW");

      timer_reg_4 = timer_reg_4_reg::type_id::create("timer_reg_4");
      timer_reg_4.configure(this);
      timer_reg_4.build();
      axi_map.add_reg(timer_reg_4, 'h0B0, "RW");
      apb_map.add_reg(timer_reg_4, 'h0B0, "RW");
      ahb_map.add_reg(timer_reg_4, 'h0B0, "RW");

      timer_reg_5 = timer_reg_5_reg::type_id::create("timer_reg_5");
      timer_reg_5.configure(this);
      timer_reg_5.build();
      axi_map.add_reg(timer_reg_5, 'h0B4, "RW");
      apb_map.add_reg(timer_reg_5, 'h0B4, "RW");
      ahb_map.add_reg(timer_reg_5, 'h0B4, "RW");

      timer_reg_2 = timer_reg_2_reg::type_id::create("timer_reg_2");
      timer_reg_2.configure(this);
      timer_reg_2.build();
      axi_map.add_reg(timer_reg_2, 'h0A8, "RW");
      apb_map.add_reg(timer_reg_2, 'h0A8, "RW");
      ahb_map.add_reg(timer_reg_2, 'h0A8, "RW");

      timer_reg_3 = timer_reg_3_reg::type_id::create("timer_reg_3");
      timer_reg_3.configure(this);
      timer_reg_3.build();
      axi_map.add_reg(timer_reg_3, 'h0AC, "RW");
      apb_map.add_reg(timer_reg_3, 'h0AC, "RW");
      ahb_map.add_reg(timer_reg_3, 'h0AC, "RW");

      timer_reg_1 = timer_reg_1_reg::type_id::create("timer_reg_1");
      timer_reg_1.configure(this);
      timer_reg_1.build();
      axi_map.add_reg(timer_reg_1, 'h0A4, "RW");
      apb_map.add_reg(timer_reg_1, 'h0A4, "RW");
      ahb_map.add_reg(timer_reg_1, 'h0A4, "RW");

      pwm_reg_3 = pwm_reg_3_reg::type_id::create("pwm_reg_3");
      pwm_reg_3.configure(this);
      pwm_reg_3.build();
      axi_map.add_reg(pwm_reg_3, 'h0D4, "RW");
      apb_map.add_reg(pwm_reg_3, 'h0D4, "RW");
      ahb_map.add_reg(pwm_reg_3, 'h0D4, "RW");

      timer_reg_8 = timer_reg_8_reg::type_id::create("timer_reg_8");
      timer_reg_8.configure(this);
      timer_reg_8.build();
      axi_map.add_reg(timer_reg_8, 'h0C0, "RW");
      apb_map.add_reg(timer_reg_8, 'h0C0, "RW");
      ahb_map.add_reg(timer_reg_8, 'h0C0, "RW");

      timer_reg_9 = timer_reg_9_reg::type_id::create("timer_reg_9");
      timer_reg_9.configure(this);
      timer_reg_9.build();
      axi_map.add_reg(timer_reg_9, 'h0C4, "RW");
      apb_map.add_reg(timer_reg_9, 'h0C4, "RW");
      ahb_map.add_reg(timer_reg_9, 'h0C4, "RW");

      gpio_reg_9 = gpio_reg_9_reg::type_id::create("gpio_reg_9");
      gpio_reg_9.configure(this);
      gpio_reg_9.build();
      axi_map.add_reg(gpio_reg_9, 'h09C, "RW");
      apb_map.add_reg(gpio_reg_9, 'h09C, "RW");
      ahb_map.add_reg(gpio_reg_9, 'h09C, "RW");

      gpio_reg_8 = gpio_reg_8_reg::type_id::create("gpio_reg_8");
      gpio_reg_8.configure(this);
      gpio_reg_8.build();
      axi_map.add_reg(gpio_reg_8, 'h098, "RW");
      apb_map.add_reg(gpio_reg_8, 'h098, "RW");
      ahb_map.add_reg(gpio_reg_8, 'h098, "RW");

      gpio_reg_5 = gpio_reg_5_reg::type_id::create("gpio_reg_5");
      gpio_reg_5.configure(this);
      gpio_reg_5.build();
      axi_map.add_reg(gpio_reg_5, 'h08C, "RW");
      apb_map.add_reg(gpio_reg_5, 'h08C, "RW");
      ahb_map.add_reg(gpio_reg_5, 'h08C, "RW");

      gpio_reg_4 = gpio_reg_4_reg::type_id::create("gpio_reg_4");
      gpio_reg_4.configure(this);
      gpio_reg_4.build();
      axi_map.add_reg(gpio_reg_4, 'h088, "RW");
      apb_map.add_reg(gpio_reg_4, 'h088, "RW");
      ahb_map.add_reg(gpio_reg_4, 'h088, "RW");

      gpio_reg_7 = gpio_reg_7_reg::type_id::create("gpio_reg_7");
      gpio_reg_7.configure(this);
      gpio_reg_7.build();
      axi_map.add_reg(gpio_reg_7, 'h094, "RW");
      apb_map.add_reg(gpio_reg_7, 'h094, "RW");
      ahb_map.add_reg(gpio_reg_7, 'h094, "RW");

      gpio_reg_6 = gpio_reg_6_reg::type_id::create("gpio_reg_6");
      gpio_reg_6.configure(this);
      gpio_reg_6.build();
      axi_map.add_reg(gpio_reg_6, 'h090, "RW");
      apb_map.add_reg(gpio_reg_6, 'h090, "RW");
      ahb_map.add_reg(gpio_reg_6, 'h090, "RW");

      gpio_reg_1 = gpio_reg_1_reg::type_id::create("gpio_reg_1");
      gpio_reg_1.configure(this);
      gpio_reg_1.build();
      axi_map.add_reg(gpio_reg_1, 'h07C, "RW");
      apb_map.add_reg(gpio_reg_1, 'h07C, "RW");
      ahb_map.add_reg(gpio_reg_1, 'h07C, "RW");

      gpio_reg_3 = gpio_reg_3_reg::type_id::create("gpio_reg_3");
      gpio_reg_3.configure(this);
      gpio_reg_3.build();
      axi_map.add_reg(gpio_reg_3, 'h084, "RW");
      apb_map.add_reg(gpio_reg_3, 'h084, "RW");
      ahb_map.add_reg(gpio_reg_3, 'h084, "RW");

      gpio_reg_2 = gpio_reg_2_reg::type_id::create("gpio_reg_2");
      gpio_reg_2.configure(this);
      gpio_reg_2.build();
      axi_map.add_reg(gpio_reg_2, 'h080, "RW");
      apb_map.add_reg(gpio_reg_2, 'h080, "RW");
      ahb_map.add_reg(gpio_reg_2, 'h080, "RW");

      intc_reg_2 = intc_reg_2_reg::type_id::create("intc_reg_2");
      intc_reg_2.configure(this);
      intc_reg_2.build();
      axi_map.add_reg(intc_reg_2, 'h120, "RW");
      apb_map.add_reg(intc_reg_2, 'h120, "RW");
      ahb_map.add_reg(intc_reg_2, 'h120, "RW");

      intc_reg_3 = intc_reg_3_reg::type_id::create("intc_reg_3");
      intc_reg_3.configure(this);
      intc_reg_3.build();
      axi_map.add_reg(intc_reg_3, 'h124, "RW");
      apb_map.add_reg(intc_reg_3, 'h124, "RW");
      ahb_map.add_reg(intc_reg_3, 'h124, "RW");

      intc_reg_1 = intc_reg_1_reg::type_id::create("intc_reg_1");
      intc_reg_1.configure(this);
      intc_reg_1.build();
      axi_map.add_reg(intc_reg_1, 'h11C, "RW");
      apb_map.add_reg(intc_reg_1, 'h11C, "RW");
      ahb_map.add_reg(intc_reg_1, 'h11C, "RW");

      intc_reg_6 = intc_reg_6_reg::type_id::create("intc_reg_6");
      intc_reg_6.configure(this);
      intc_reg_6.build();
      axi_map.add_reg(intc_reg_6, 'h130, "RW");
      apb_map.add_reg(intc_reg_6, 'h130, "RW");
      ahb_map.add_reg(intc_reg_6, 'h130, "RW");

      intc_reg_7 = intc_reg_7_reg::type_id::create("intc_reg_7");
      intc_reg_7.configure(this);
      intc_reg_7.build();
      axi_map.add_reg(intc_reg_7, 'h134, "RW");
      apb_map.add_reg(intc_reg_7, 'h134, "RW");
      ahb_map.add_reg(intc_reg_7, 'h134, "RW");

      intc_reg_4 = intc_reg_4_reg::type_id::create("intc_reg_4");
      intc_reg_4.configure(this);
      intc_reg_4.build();
      axi_map.add_reg(intc_reg_4, 'h128, "RW");
      apb_map.add_reg(intc_reg_4, 'h128, "RW");
      ahb_map.add_reg(intc_reg_4, 'h128, "RW");

      intc_reg_5 = intc_reg_5_reg::type_id::create("intc_reg_5");
      intc_reg_5.configure(this);
      intc_reg_5.build();
      axi_map.add_reg(intc_reg_5, 'h12C, "RW");
      apb_map.add_reg(intc_reg_5, 'h12C, "RW");
      ahb_map.add_reg(intc_reg_5, 'h12C, "RW");

      intc_reg_8 = intc_reg_8_reg::type_id::create("intc_reg_8");
      intc_reg_8.configure(this);
      intc_reg_8.build();
      axi_map.add_reg(intc_reg_8, 'h138, "RW");
      apb_map.add_reg(intc_reg_8, 'h138, "RW");
      ahb_map.add_reg(intc_reg_8, 'h138, "RW");

      intc_reg_9 = intc_reg_9_reg::type_id::create("intc_reg_9");
      intc_reg_9.configure(this);
      intc_reg_9.build();
      axi_map.add_reg(intc_reg_9, 'h13C, "RW");
      apb_map.add_reg(intc_reg_9, 'h13C, "RW");
      ahb_map.add_reg(intc_reg_9, 'h13C, "RW");

      watchdog_reg_5 = watchdog_reg_5_reg::type_id::create("watchdog_reg_5");
      watchdog_reg_5.configure(this);
      watchdog_reg_5.build();
      axi_map.add_reg(watchdog_reg_5, 'h17C, "RW");
      apb_map.add_reg(watchdog_reg_5, 'h17C, "RW");
      ahb_map.add_reg(watchdog_reg_5, 'h17C, "RW");

      watchdog_reg_4 = watchdog_reg_4_reg::type_id::create("watchdog_reg_4");
      watchdog_reg_4.configure(this);
      watchdog_reg_4.build();
      axi_map.add_reg(watchdog_reg_4, 'h178, "RW");
      apb_map.add_reg(watchdog_reg_4, 'h178, "RW");
      ahb_map.add_reg(watchdog_reg_4, 'h178, "RW");

      watchdog_reg_7 = watchdog_reg_7_reg::type_id::create("watchdog_reg_7");
      watchdog_reg_7.configure(this);
      watchdog_reg_7.build();
      axi_map.add_reg(watchdog_reg_7, 'h184, "RW");
      apb_map.add_reg(watchdog_reg_7, 'h184, "RW");
      ahb_map.add_reg(watchdog_reg_7, 'h184, "RW");

      watchdog_reg_6 = watchdog_reg_6_reg::type_id::create("watchdog_reg_6");
      watchdog_reg_6.configure(this);
      watchdog_reg_6.build();
      axi_map.add_reg(watchdog_reg_6, 'h180, "RW");
      apb_map.add_reg(watchdog_reg_6, 'h180, "RW");
      ahb_map.add_reg(watchdog_reg_6, 'h180, "RW");

      watchdog_reg_1 = watchdog_reg_1_reg::type_id::create("watchdog_reg_1");
      watchdog_reg_1.configure(this);
      watchdog_reg_1.build();
      axi_map.add_reg(watchdog_reg_1, 'h16C, "RW");
      apb_map.add_reg(watchdog_reg_1, 'h16C, "RW");
      ahb_map.add_reg(watchdog_reg_1, 'h16C, "RW");

      watchdog_reg_3 = watchdog_reg_3_reg::type_id::create("watchdog_reg_3");
      watchdog_reg_3.configure(this);
      watchdog_reg_3.build();
      axi_map.add_reg(watchdog_reg_3, 'h174, "RW");
      apb_map.add_reg(watchdog_reg_3, 'h174, "RW");
      ahb_map.add_reg(watchdog_reg_3, 'h174, "RW");

      watchdog_reg_2 = watchdog_reg_2_reg::type_id::create("watchdog_reg_2");
      watchdog_reg_2.configure(this);
      watchdog_reg_2.build();
      axi_map.add_reg(watchdog_reg_2, 'h170, "RW");
      apb_map.add_reg(watchdog_reg_2, 'h170, "RW");
      ahb_map.add_reg(watchdog_reg_2, 'h170, "RW");

      watchdog_reg_9 = watchdog_reg_9_reg::type_id::create("watchdog_reg_9");
      watchdog_reg_9.configure(this);
      watchdog_reg_9.build();
      axi_map.add_reg(watchdog_reg_9, 'h18C, "RW");
      apb_map.add_reg(watchdog_reg_9, 'h18C, "RW");
      ahb_map.add_reg(watchdog_reg_9, 'h18C, "RW");

      watchdog_reg_8 = watchdog_reg_8_reg::type_id::create("watchdog_reg_8");
      watchdog_reg_8.configure(this);
      watchdog_reg_8.build();
      axi_map.add_reg(watchdog_reg_8, 'h188, "RW");
      apb_map.add_reg(watchdog_reg_8, 'h188, "RW");
      ahb_map.add_reg(watchdog_reg_8, 'h188, "RW");

      adc_reg_8 = adc_reg_8_reg::type_id::create("adc_reg_8");
      adc_reg_8.configure(this);
      adc_reg_8.build();
      axi_map.add_reg(adc_reg_8, 'h160, "RW");
      apb_map.add_reg(adc_reg_8, 'h160, "RW");
      ahb_map.add_reg(adc_reg_8, 'h160, "RW");

      pwm_reg_4 = pwm_reg_4_reg::type_id::create("pwm_reg_4");
      pwm_reg_4.configure(this);
      pwm_reg_4.build();
      axi_map.add_reg(pwm_reg_4, 'h0D8, "RW");
      apb_map.add_reg(pwm_reg_4, 'h0D8, "RW");
      ahb_map.add_reg(pwm_reg_4, 'h0D8, "RW");

      i2c_reg_10 = i2c_reg_10_reg::type_id::create("i2c_reg_10");
      i2c_reg_10.configure(this);
      i2c_reg_10.build();
      axi_map.add_reg(i2c_reg_10, 'h078, "RW");
      apb_map.add_reg(i2c_reg_10, 'h078, "RW");
      ahb_map.add_reg(i2c_reg_10, 'h078, "RW");

      pwm_reg_6 = pwm_reg_6_reg::type_id::create("pwm_reg_6");
      pwm_reg_6.configure(this);
      pwm_reg_6.build();
      axi_map.add_reg(pwm_reg_6, 'h0E0, "RW");
      apb_map.add_reg(pwm_reg_6, 'h0E0, "RW");
      ahb_map.add_reg(pwm_reg_6, 'h0E0, "RW");

      dma_reg_10 = dma_reg_10_reg::type_id::create("dma_reg_10");
      dma_reg_10.configure(this);
      dma_reg_10.build();
      axi_map.add_reg(dma_reg_10, 'h118, "RW");
      apb_map.add_reg(dma_reg_10, 'h118, "RW");
      ahb_map.add_reg(dma_reg_10, 'h118, "RW");

      pwm_reg_1 = pwm_reg_1_reg::type_id::create("pwm_reg_1");
      pwm_reg_1.configure(this);
      pwm_reg_1.build();
      axi_map.add_reg(pwm_reg_1, 'h0CC, "RW");
      apb_map.add_reg(pwm_reg_1, 'h0CC, "RW");
      ahb_map.add_reg(pwm_reg_1, 'h0CC, "RW");

      intc_reg_10 = intc_reg_10_reg::type_id::create("intc_reg_10");
      intc_reg_10.configure(this);
      intc_reg_10.build();
      axi_map.add_reg(intc_reg_10, 'h140, "RW");
      apb_map.add_reg(intc_reg_10, 'h140, "RW");
      ahb_map.add_reg(intc_reg_10, 'h140, "RW");

      spi_reg_10 = spi_reg_10_reg::type_id::create("spi_reg_10");
      spi_reg_10.configure(this);
      spi_reg_10.build();
      axi_map.add_reg(spi_reg_10, 'h050, "RW");
      apb_map.add_reg(spi_reg_10, 'h050, "RW");
      ahb_map.add_reg(spi_reg_10, 'h050, "RW");

      uart_reg_8 = uart_reg_8_reg::type_id::create("uart_reg_8");
      uart_reg_8.configure(this);
      uart_reg_8.build();
      axi_map.add_reg(uart_reg_8, 'h020, "RW");
      apb_map.add_reg(uart_reg_8, 'h020, "RW");
      ahb_map.add_reg(uart_reg_8, 'h020, "RW");

      uart_reg_9 = uart_reg_9_reg::type_id::create("uart_reg_9");
      uart_reg_9.configure(this);
      uart_reg_9.build();
      axi_map.add_reg(uart_reg_9, 'h024, "RW");
      apb_map.add_reg(uart_reg_9, 'h024, "RW");
      ahb_map.add_reg(uart_reg_9, 'h024, "RW");

      uart_reg_1 = uart_reg_1_reg::type_id::create("uart_reg_1");
      uart_reg_1.configure(this);
      uart_reg_1.build();
      axi_map.add_reg(uart_reg_1, 'h004, "RW");
      apb_map.add_reg(uart_reg_1, 'h004, "RW");
      ahb_map.add_reg(uart_reg_1, 'h004, "RW");

      uart_reg_2 = uart_reg_2_reg::type_id::create("uart_reg_2");
      uart_reg_2.configure(this);
      uart_reg_2.build();
      axi_map.add_reg(uart_reg_2, 'h008, "RW");
      apb_map.add_reg(uart_reg_2, 'h008, "RW");
      ahb_map.add_reg(uart_reg_2, 'h008, "RW");

      uart_reg_3 = uart_reg_3_reg::type_id::create("uart_reg_3");
      uart_reg_3.configure(this);
      uart_reg_3.build();
      axi_map.add_reg(uart_reg_3, 'h00C, "RW");
      apb_map.add_reg(uart_reg_3, 'h00C, "RW");
      ahb_map.add_reg(uart_reg_3, 'h00C, "RW");

      uart_reg_4 = uart_reg_4_reg::type_id::create("uart_reg_4");
      uart_reg_4.configure(this);
      uart_reg_4.build();
      axi_map.add_reg(uart_reg_4, 'h010, "RW");
      apb_map.add_reg(uart_reg_4, 'h010, "RW");
      ahb_map.add_reg(uart_reg_4, 'h010, "RW");

      uart_reg_5 = uart_reg_5_reg::type_id::create("uart_reg_5");
      uart_reg_5.configure(this);
      uart_reg_5.build();
      axi_map.add_reg(uart_reg_5, 'h014, "RW");
      apb_map.add_reg(uart_reg_5, 'h014, "RW");
      ahb_map.add_reg(uart_reg_5, 'h014, "RW");

      uart_reg_6 = uart_reg_6_reg::type_id::create("uart_reg_6");
      uart_reg_6.configure(this);
      uart_reg_6.build();
      axi_map.add_reg(uart_reg_6, 'h018, "RW");
      apb_map.add_reg(uart_reg_6, 'h018, "RW");
      ahb_map.add_reg(uart_reg_6, 'h018, "RW");

      uart_reg_7 = uart_reg_7_reg::type_id::create("uart_reg_7");
      uart_reg_7.configure(this);
      uart_reg_7.build();
      axi_map.add_reg(uart_reg_7, 'h01C, "RW");
      apb_map.add_reg(uart_reg_7, 'h01C, "RW");
      ahb_map.add_reg(uart_reg_7, 'h01C, "RW");

      adc_reg_10 = adc_reg_10_reg::type_id::create("adc_reg_10");
      adc_reg_10.configure(this);
      adc_reg_10.build();
      axi_map.add_reg(adc_reg_10, 'h168, "RW");
      apb_map.add_reg(adc_reg_10, 'h168, "RW");
      ahb_map.add_reg(adc_reg_10, 'h168, "RW");

      watchdog_reg_10 = watchdog_reg_10_reg::type_id::create("watchdog_reg_10");
      watchdog_reg_10.configure(this);
      watchdog_reg_10.build();
      axi_map.add_reg(watchdog_reg_10, 'h190, "RW");
      apb_map.add_reg(watchdog_reg_10, 'h190, "RW");
      ahb_map.add_reg(watchdog_reg_10, 'h190, "RW");

      timer_reg_10 = timer_reg_10_reg::type_id::create("timer_reg_10");
      timer_reg_10.configure(this);
      timer_reg_10.build();
      axi_map.add_reg(timer_reg_10, 'h0C8, "RW");
      apb_map.add_reg(timer_reg_10, 'h0C8, "RW");
      ahb_map.add_reg(timer_reg_10, 'h0C8, "RW");

      dma_reg_1 = dma_reg_1_reg::type_id::create("dma_reg_1");
      dma_reg_1.configure(this);
      dma_reg_1.build();
      axi_map.add_reg(dma_reg_1, 'h0F4, "RW");
      apb_map.add_reg(dma_reg_1, 'h0F4, "RW");
      ahb_map.add_reg(dma_reg_1, 'h0F4, "RW");

      dma_reg_3 = dma_reg_3_reg::type_id::create("dma_reg_3");
      dma_reg_3.configure(this);
      dma_reg_3.build();
      axi_map.add_reg(dma_reg_3, 'h0FC, "RW");
      apb_map.add_reg(dma_reg_3, 'h0FC, "RW");
      ahb_map.add_reg(dma_reg_3, 'h0FC, "RW");

      dma_reg_2 = dma_reg_2_reg::type_id::create("dma_reg_2");
      dma_reg_2.configure(this);
      dma_reg_2.build();
      axi_map.add_reg(dma_reg_2, 'h0F8, "RW");
      apb_map.add_reg(dma_reg_2, 'h0F8, "RW");
      ahb_map.add_reg(dma_reg_2, 'h0F8, "RW");

      dma_reg_5 = dma_reg_5_reg::type_id::create("dma_reg_5");
      dma_reg_5.configure(this);
      dma_reg_5.build();
      axi_map.add_reg(dma_reg_5, 'h104, "RW");
      apb_map.add_reg(dma_reg_5, 'h104, "RW");
      ahb_map.add_reg(dma_reg_5, 'h104, "RW");

      dma_reg_4 = dma_reg_4_reg::type_id::create("dma_reg_4");
      dma_reg_4.configure(this);
      dma_reg_4.build();
      axi_map.add_reg(dma_reg_4, 'h100, "RW");
      apb_map.add_reg(dma_reg_4, 'h100, "RW");
      ahb_map.add_reg(dma_reg_4, 'h100, "RW");

      dma_reg_7 = dma_reg_7_reg::type_id::create("dma_reg_7");
      dma_reg_7.configure(this);
      dma_reg_7.build();
      axi_map.add_reg(dma_reg_7, 'h10C, "RW");
      apb_map.add_reg(dma_reg_7, 'h10C, "RW");
      ahb_map.add_reg(dma_reg_7, 'h10C, "RW");

      dma_reg_6 = dma_reg_6_reg::type_id::create("dma_reg_6");
      dma_reg_6.configure(this);
      dma_reg_6.build();
      axi_map.add_reg(dma_reg_6, 'h108, "RW");
      apb_map.add_reg(dma_reg_6, 'h108, "RW");
      ahb_map.add_reg(dma_reg_6, 'h108, "RW");

      dma_reg_9 = dma_reg_9_reg::type_id::create("dma_reg_9");
      dma_reg_9.configure(this);
      dma_reg_9.build();
      axi_map.add_reg(dma_reg_9, 'h114, "RW");
      apb_map.add_reg(dma_reg_9, 'h114, "RW");
      ahb_map.add_reg(dma_reg_9, 'h114, "RW");

      dma_reg_8 = dma_reg_8_reg::type_id::create("dma_reg_8");
      dma_reg_8.configure(this);
      dma_reg_8.build();
      axi_map.add_reg(dma_reg_8, 'h110, "RW");
      apb_map.add_reg(dma_reg_8, 'h110, "RW");
      ahb_map.add_reg(dma_reg_8, 'h110, "RW");

      i2c_reg_7 = i2c_reg_7_reg::type_id::create("i2c_reg_7");
      i2c_reg_7.configure(this);
      i2c_reg_7.build();
      axi_map.add_reg(i2c_reg_7, 'h06C, "RW");
      apb_map.add_reg(i2c_reg_7, 'h06C, "RW");
      ahb_map.add_reg(i2c_reg_7, 'h06C, "RW");

      i2c_reg_6 = i2c_reg_6_reg::type_id::create("i2c_reg_6");
      i2c_reg_6.configure(this);
      i2c_reg_6.build();
      axi_map.add_reg(i2c_reg_6, 'h068, "RW");
      apb_map.add_reg(i2c_reg_6, 'h068, "RW");
      ahb_map.add_reg(i2c_reg_6, 'h068, "RW");

      i2c_reg_5 = i2c_reg_5_reg::type_id::create("i2c_reg_5");
      i2c_reg_5.configure(this);
      i2c_reg_5.build();
      axi_map.add_reg(i2c_reg_5, 'h064, "RW");
      apb_map.add_reg(i2c_reg_5, 'h064, "RW");
      ahb_map.add_reg(i2c_reg_5, 'h064, "RW");

      i2c_reg_4 = i2c_reg_4_reg::type_id::create("i2c_reg_4");
      i2c_reg_4.configure(this);
      i2c_reg_4.build();
      axi_map.add_reg(i2c_reg_4, 'h060, "RW");
      apb_map.add_reg(i2c_reg_4, 'h060, "RW");
      ahb_map.add_reg(i2c_reg_4, 'h060, "RW");

      i2c_reg_3 = i2c_reg_3_reg::type_id::create("i2c_reg_3");
      i2c_reg_3.configure(this);
      i2c_reg_3.build();
      axi_map.add_reg(i2c_reg_3, 'h05C, "RW");
      apb_map.add_reg(i2c_reg_3, 'h05C, "RW");
      ahb_map.add_reg(i2c_reg_3, 'h05C, "RW");

      i2c_reg_2 = i2c_reg_2_reg::type_id::create("i2c_reg_2");
      i2c_reg_2.configure(this);
      i2c_reg_2.build();
      axi_map.add_reg(i2c_reg_2, 'h058, "RW");
      apb_map.add_reg(i2c_reg_2, 'h058, "RW");
      ahb_map.add_reg(i2c_reg_2, 'h058, "RW");

      i2c_reg_1 = i2c_reg_1_reg::type_id::create("i2c_reg_1");
      i2c_reg_1.configure(this);
      i2c_reg_1.build();
      axi_map.add_reg(i2c_reg_1, 'h054, "RW");
      apb_map.add_reg(i2c_reg_1, 'h054, "RW");
      ahb_map.add_reg(i2c_reg_1, 'h054, "RW");

      i2c_reg_9 = i2c_reg_9_reg::type_id::create("i2c_reg_9");
      i2c_reg_9.configure(this);
      i2c_reg_9.build();
      axi_map.add_reg(i2c_reg_9, 'h074, "RW");
      apb_map.add_reg(i2c_reg_9, 'h074, "RW");
      ahb_map.add_reg(i2c_reg_9, 'h074, "RW");

      i2c_reg_8 = i2c_reg_8_reg::type_id::create("i2c_reg_8");
      i2c_reg_8.configure(this);
      i2c_reg_8.build();
      axi_map.add_reg(i2c_reg_8, 'h070, "RW");
      apb_map.add_reg(i2c_reg_8, 'h070, "RW");
      ahb_map.add_reg(i2c_reg_8, 'h070, "RW");

      spi_reg_1 = spi_reg_1_reg::type_id::create("spi_reg_1");
      spi_reg_1.configure(this);
      spi_reg_1.build();
      axi_map.add_reg(spi_reg_1, 'h02C, "RW");
      apb_map.add_reg(spi_reg_1, 'h02C, "RW");
      ahb_map.add_reg(spi_reg_1, 'h02C, "RW");

      spi_reg_3 = spi_reg_3_reg::type_id::create("spi_reg_3");
      spi_reg_3.configure(this);
      spi_reg_3.build();
      axi_map.add_reg(spi_reg_3, 'h034, "RW");
      apb_map.add_reg(spi_reg_3, 'h034, "RW");
      ahb_map.add_reg(spi_reg_3, 'h034, "RW");

      spi_reg_2 = spi_reg_2_reg::type_id::create("spi_reg_2");
      spi_reg_2.configure(this);
      spi_reg_2.build();
      axi_map.add_reg(spi_reg_2, 'h030, "RW");
      apb_map.add_reg(spi_reg_2, 'h030, "RW");
      ahb_map.add_reg(spi_reg_2, 'h030, "RW");

      spi_reg_5 = spi_reg_5_reg::type_id::create("spi_reg_5");
      spi_reg_5.configure(this);
      spi_reg_5.build();
      axi_map.add_reg(spi_reg_5, 'h03C, "RW");
      apb_map.add_reg(spi_reg_5, 'h03C, "RW");
      ahb_map.add_reg(spi_reg_5, 'h03C, "RW");

      spi_reg_4 = spi_reg_4_reg::type_id::create("spi_reg_4");
      spi_reg_4.configure(this);
      spi_reg_4.build();
      axi_map.add_reg(spi_reg_4, 'h038, "RW");
      apb_map.add_reg(spi_reg_4, 'h038, "RW");
      ahb_map.add_reg(spi_reg_4, 'h038, "RW");

      spi_reg_7 = spi_reg_7_reg::type_id::create("spi_reg_7");
      spi_reg_7.configure(this);
      spi_reg_7.build();
      axi_map.add_reg(spi_reg_7, 'h044, "RW");
      apb_map.add_reg(spi_reg_7, 'h044, "RW");
      ahb_map.add_reg(spi_reg_7, 'h044, "RW");

      spi_reg_6 = spi_reg_6_reg::type_id::create("spi_reg_6");
      spi_reg_6.configure(this);
      spi_reg_6.build();
      axi_map.add_reg(spi_reg_6, 'h040, "RW");
      apb_map.add_reg(spi_reg_6, 'h040, "RW");
      ahb_map.add_reg(spi_reg_6, 'h040, "RW");

      spi_reg_9 = spi_reg_9_reg::type_id::create("spi_reg_9");
      spi_reg_9.configure(this);
      spi_reg_9.build();
      axi_map.add_reg(spi_reg_9, 'h04C, "RW");
      apb_map.add_reg(spi_reg_9, 'h04C, "RW");
      ahb_map.add_reg(spi_reg_9, 'h04C, "RW");

      spi_reg_8 = spi_reg_8_reg::type_id::create("spi_reg_8");
      spi_reg_8.configure(this);
      spi_reg_8.build();
      axi_map.add_reg(spi_reg_8, 'h048, "RW");
      apb_map.add_reg(spi_reg_8, 'h048, "RW");
      ahb_map.add_reg(spi_reg_8, 'h048, "RW");

      uart_reg_10 = uart_reg_10_reg::type_id::create("uart_reg_10");
      uart_reg_10.configure(this);
      uart_reg_10.build();
      axi_map.add_reg(uart_reg_10, 'h028, "RW");
      apb_map.add_reg(uart_reg_10, 'h028, "RW");
      ahb_map.add_reg(uart_reg_10, 'h028, "RW");

      gpio_reg_10 = gpio_reg_10_reg::type_id::create("gpio_reg_10");
      gpio_reg_10.configure(this);
      gpio_reg_10.build();
      axi_map.add_reg(gpio_reg_10, 'h0A0, "RW");
      apb_map.add_reg(gpio_reg_10, 'h0A0, "RW");
      ahb_map.add_reg(gpio_reg_10, 'h0A0, "RW");

      pwm_reg_10 = pwm_reg_10_reg::type_id::create("pwm_reg_10");
      pwm_reg_10.configure(this);
      pwm_reg_10.build();
      axi_map.add_reg(pwm_reg_10, 'h0F0, "RW");
      apb_map.add_reg(pwm_reg_10, 'h0F0, "RW");
      ahb_map.add_reg(pwm_reg_10, 'h0F0, "RW");

      pwm_reg_7 = pwm_reg_7_reg::type_id::create("pwm_reg_7");
      pwm_reg_7.configure(this);
      pwm_reg_7.build();
      axi_map.add_reg(pwm_reg_7, 'h0E4, "RW");
      apb_map.add_reg(pwm_reg_7, 'h0E4, "RW");
      ahb_map.add_reg(pwm_reg_7, 'h0E4, "RW");
        
      axi_map.set_auto_predict(1);
      apb_map.set_auto_predict(1);
      ahb_map.set_auto_predict(1);
      lock_model();
    endfunction
  endclass
endpackage
