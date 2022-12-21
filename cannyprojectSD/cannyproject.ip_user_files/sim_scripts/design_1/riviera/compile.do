vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/xil_common_vip_v1_0_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v1_1_14
vlib riviera/axi_vip_v1_0_2
vlib riviera/axi_vip_v1_0_1
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_11
vlib riviera/xbip_utils_v3_0_7
vlib riviera/axi_utils_v2_0_3
vlib riviera/xbip_pipe_v3_0_3
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_3
vlib riviera/xbip_dsp48_multadd_v3_0_3
vlib riviera/xbip_bram18k_v3_0_3
vlib riviera/mult_gen_v12_0_12
vlib riviera/floating_point_v7_1_4
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_1_4
vlib riviera/axi_data_fifo_v2_1_12
vlib riviera/axi_register_slice_v2_1_13
vlib riviera/axi_protocol_converter_v2_1_13

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 riviera/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_14 riviera/axi_protocol_checker_v1_1_14
vmap axi_vip_v1_0_2 riviera/axi_vip_v1_0_2
vmap axi_vip_v1_0_1 riviera/axi_vip_v1_0_1
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 riviera/proc_sys_reset_v5_0_11
vmap xbip_utils_v3_0_7 riviera/xbip_utils_v3_0_7
vmap axi_utils_v2_0_3 riviera/axi_utils_v2_0_3
vmap xbip_pipe_v3_0_3 riviera/xbip_pipe_v3_0_3
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_3 riviera/xbip_dsp48_addsub_v3_0_3
vmap xbip_dsp48_multadd_v3_0_3 riviera/xbip_dsp48_multadd_v3_0_3
vmap xbip_bram18k_v3_0_3 riviera/xbip_bram18k_v3_0_3
vmap mult_gen_v12_0_12 riviera/mult_gen_v12_0_12
vmap floating_point_v7_1_4 riviera/floating_point_v7_1_4
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_4 riviera/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_12 riviera/axi_data_fifo_v2_1_12
vmap axi_register_slice_v2_1_13 riviera/axi_register_slice_v2_1_13
vmap axi_protocol_converter_v2_1_13 riviera/axi_protocol_converter_v2_1_13

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0  -sv2k12 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_14  -sv2k12 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/a1b2/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_2  -sv2k12 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl/axi_vip_v1_0_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1  -sv2k12 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

vcom -work xbip_utils_v3_0_7 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/3d01/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_3 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/43f5/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_3 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/779d/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_3 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/403d/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_12 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/f0ab/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_4 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/4a02/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_AXILiteS_s_axi.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_dadd_64bkb.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_dmul_64cud.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_sitodp_dEe.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/ip/greyScale_ap_dadd_3_full_dsp_64.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/ip/greyScale_ap_dmul_4_max_dsp_64.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/ip/greyScale_ap_sitodp_4_no_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_greyScale_0_0/sim/design_1_greyScale_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_12  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_13  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/f0ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

