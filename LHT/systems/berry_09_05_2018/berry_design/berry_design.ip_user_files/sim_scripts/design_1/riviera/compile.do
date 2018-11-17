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
vlib riviera/xlconstant_v1_1_3
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_1_4
vlib riviera/lib_fifo_v1_0_8
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_15
vlib riviera/axi_sg_v4_1_6
vlib riviera/axi_dma_v7_1_14
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_15
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_13
vlib riviera/axi_data_fifo_v2_1_12
vlib riviera/axi_crossbar_v2_1_14
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v1_1_14
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
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_1_4 riviera/fifo_generator_v13_1_4
vmap lib_fifo_v1_0_8 riviera/lib_fifo_v1_0_8
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_15 riviera/axi_datamover_v5_1_15
vmap axi_sg_v4_1_6 riviera/axi_sg_v4_1_6
vmap axi_dma_v7_1_14 riviera/axi_dma_v7_1_14
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_15 riviera/axi_gpio_v2_0_15
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_13 riviera/axi_register_slice_v2_1_13
vmap axi_data_fifo_v2_1_12 riviera/axi_data_fifo_v2_1_12
vmap axi_crossbar_v2_1_14 riviera/axi_crossbar_v2_1_14
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_14 riviera/axis_data_fifo_v1_1_14
vmap axi_protocol_converter_v2_1_13 riviera/axi_protocol_converter_v2_1_13

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0  -sv2k12 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_14  -sv2k12 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/a1b2/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_2  -sv2k12 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl/axi_vip_v1_0_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1  -sv2k12 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/45df/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_8 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_15 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/43a6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_6 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/ddc9/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_14 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/bb0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_15 -93 \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/cb07/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_12  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_14  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/f582/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_14  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/101c/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_1/sim/design_1_axis_data_fifo_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_first_demux_0_1/sim/design_1_first_demux_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_1_0/sim/design_1_axis_data_fifo_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_fifo_dma_synchro_0_0/sim/design_1_fifo_dma_synchro_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_13  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/f0ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../berry_design.srcs/sources_1/bd/design_1/ipshared/acf8/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/hdl/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

