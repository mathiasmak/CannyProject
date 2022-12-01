-makelib ies/xil_defaultlib -sv \
  "D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_sim_netlist.vhdl" \
  "../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/0d75/hdl/vhdl/testFlow.vhd" \
  "../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/0d75/hdl/vhdl/testFlow_AXILiteS_s_axi.vhd" \
  "../../../bd/design_1/ip/design_1_testFlow_0_0/sim/design_1_testFlow_0_0.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_11 \
  "../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
  "../../../bd/design_1/hdl/design_1.vhd" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_sim_netlist.vhdl" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

