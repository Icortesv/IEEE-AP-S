onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L xil_common_vip_v1_0_0 -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_11 -L xlconstant_v1_1_3 -L lib_pkg_v1_0_2 -L fifo_generator_v13_1_4 -L lib_fifo_v1_0_8 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_15 -L axi_sg_v4_1_6 -L axi_dma_v7_1_14 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_15 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_13 -L axi_data_fifo_v2_1_12 -L axi_crossbar_v2_1_14 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v1_1_14 -L axi_protocol_converter_v2_1_13 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
