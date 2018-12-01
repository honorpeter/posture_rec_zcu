vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/fifo_generator_v13_2_2

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap fifo_generator_v13_2_2 modelsim_lib/msim/fifo_generator_v13_2_2

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xil_defaultlib -L xilinx_vip "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/SDx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L zynq_ultra_ps_e_vip_v1_0_2 -L xil_defaultlib -L xilinx_vip "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" \
"D:/SDx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/SDx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/SDx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/SDx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/SDx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../ip/combine2data_fifo/sim/combine2data_fifo.v" \

vlog -work xil_defaultlib \
"glbl.v"

