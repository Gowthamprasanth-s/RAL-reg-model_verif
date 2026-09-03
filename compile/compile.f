+incdir+$TB_PATH
+incdir+$TB_PATH/AXI_lite
+incdir+$TB_PATH/AHB_lite
+incdir+$TB_PATH/APB
+incdir+$TB_PATH/RST_AGENT
+incdir+$TB_PATH/CLK_AGENT
+incdir+$TB_PATH/RAL
+incdir+$TB_PATH/V_SQR

#RTL
$RTL_PATH/amba_slaves.sv  
$RTL_PATH/universal_reg_controller.sv

#UVM_TB
$TB_PATH/CLK_AGENT/clk_inf.sv
$TB_PATH/AXI_lite/AXI_lite_inf.sv
$TB_PATH/AHB_lite/AHB_lite_inf.sv  
$TB_PATH/APB/APB_inf.sv
$TB_PATH/RAL/urc_reg_pkg.sv
$TB_PATH/ral_package.sv 
$TB_PATH/RAL_TOP.sv
