vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_infrastructure_v1_1_0
vlib msim/xil_common_vip_v1_0_0
vlib msim/smartconnect_v1_0
vlib msim/axi_protocol_checker_v1_1_14
vlib msim/axi_vip_v1_0_2
vlib msim/axi_vip_v1_0_1
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_11
vlib msim/xbip_utils_v3_0_7
vlib msim/axi_utils_v2_0_3
vlib msim/xbip_pipe_v3_0_3
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_dsp48_addsub_v3_0_3
vlib msim/xbip_dsp48_multadd_v3_0_3
vlib msim/xbip_bram18k_v3_0_3
vlib msim/mult_gen_v12_0_12
vlib msim/floating_point_v7_1_4
vlib msim/generic_baseblocks_v2_1_0
vlib msim/fifo_generator_v13_1_4
vlib msim/axi_data_fifo_v2_1_12
vlib msim/axi_register_slice_v2_1_13
vlib msim/axi_protocol_converter_v2_1_13

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 msim/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_14 msim/axi_protocol_checker_v1_1_14
vmap axi_vip_v1_0_2 msim/axi_vip_v1_0_2
vmap axi_vip_v1_0_1 msim/axi_vip_v1_0_1
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap axi_utils_v2_0_3 msim/axi_utils_v2_0_3
vmap xbip_pipe_v3_0_3 msim/xbip_pipe_v3_0_3
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_3 msim/xbip_dsp48_addsub_v3_0_3
vmap xbip_dsp48_multadd_v3_0_3 msim/xbip_dsp48_multadd_v3_0_3
vmap xbip_bram18k_v3_0_3 msim/xbip_bram18k_v3_0_3
vmap mult_gen_v12_0_12 msim/mult_gen_v12_0_12
vmap floating_point_v7_1_4 msim/floating_point_v7_1_4
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_12 msim/axi_data_fifo_v2_1_12
vmap axi_register_slice_v2_1_13 msim/axi_register_slice_v2_1_13
vmap axi_protocol_converter_v2_1_13 msim/axi_protocol_converter_v2_1_13

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"D:/Uni/VIVADO/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_14 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/a1b2/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl/axi_vip_v1_0_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/3d01/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_3 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/43f5/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_3 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/779d/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_3 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/403d/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_12 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/f0ab/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_4 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/4a02/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_AXILiteS_s_axi.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_dadd_64bkb.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_dmul_64cud.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/vhdl/greyScale_sitodp_dEe.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/ip/greyScale_ap_dadd_3_full_dsp_64.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/ip/greyScale_ap_dmul_4_max_dsp_64.vhd" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1130/hdl/ip/greyScale_ap_sitodp_4_no_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_greyScale_0_0/sim/design_1_greyScale_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_12 -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13 -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_13 -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/f0ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../cannyproject.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

