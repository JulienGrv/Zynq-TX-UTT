onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -pli "/opt/Xilinx/Vivado/2016.1/lib/lnx64.o/libxil_vsim.so" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L processing_system7_bfm_v2_0_5 -L lib_pkg_v1_0_2 -L fifo_generator_v13_1_0 -L lib_fifo_v1_0_4 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_10 -L axi_sg_v4_1_2 -L axi_dma_v7_1_9 -L proc_sys_reset_v5_0_9 -L xbip_utils_v3_0_6 -L axi_utils_v2_0_2 -L xbip_pipe_v3_0_2 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_2 -L xbip_dsp48_multadd_v3_0_2 -L xbip_bram18k_v3_0_2 -L mult_gen_v12_0_11 -L floating_point_v7_1_2 -L axis_infrastructure_v1_1_0 -L axis_broadcaster_v1_1_8 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_8 -L axi_data_fifo_v2_1_7 -L axi_crossbar_v2_1_9 -L blk_mem_gen_v8_3_2 -L axi_bram_ctrl_v4_0_7 -L axi_lite_ipif_v3_0_3 -L axi_timer_v2_0_10 -L axi_protocol_converter_v2_1_8 -L axi_clock_converter_v2_1_7 -L axi_dwidth_converter_v2_1_8 -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

endsim

quit -force
