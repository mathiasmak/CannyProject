vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_11

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 activehdl/proc_sys_reset_v5_0_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_sim_netlist.vhdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/0d75/hdl/vhdl/testFlow.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/0d75/hdl/vhdl/testFlow_AXILiteS_s_axi.vhd" \
"../../../bd/design_1/ip/design_1_testFlow_0_0/sim/design_1_testFlow_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \
"../../../bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"
