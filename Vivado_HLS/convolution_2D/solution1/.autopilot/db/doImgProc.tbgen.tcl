set C_TypeInfoList {{ 
"doImgProc" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inStream": [[], {"reference": "0"}] }, {"outStream": [[], {"reference": "1"}] }, {"kernel": [[], {"array": [ {"scalar": "char"}, [9]]}] }, {"operation": [[], {"scalar": "int"}] }],[],""], 
"1": [ "stream<ap_axis<8, 2, 5, 6> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axis<8, 2, 5, 6>", {"struct": [[],[{"D":[[], {"scalar": { "int": 8}}]},{"U":[[], {"scalar": { "int": 2}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 6}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "5"]},{ "id": [[], "7"]},{ "dest": [[], "8"]}],""]}], 
"4": [ "ap_int<8>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"6": [ "ap_uint<2>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2}}]],""]}}], 
"7": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"8": [ "ap_uint<6>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 6}}]],""]}}], 
"0": [ "stream<ap_axiu<8, 2, 5, 6> >", {"hls_type": {"stream": [[[[],"9"]],"3"]}}], 
"9": [ "ap_axiu<8, 2, 5, 6>", {"struct": [[],[{"D":[[], {"scalar": { "int": 8}}]},{"U":[[], {"scalar": { "int": 2}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 6}}]}],[{ "data": [[], "10"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "5"]},{ "id": [[], "7"]},{ "dest": [[], "8"]}],""]}], 
"10": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName doImgProc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {doImgProc}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream_V_data_V int 8 regular {axi_s 0 volatile  { inStream data } }  }
	{ inStream_V_keep_V int 1 regular {axi_s 0 volatile  { inStream keep } }  }
	{ inStream_V_strb_V int 1 regular {axi_s 0 volatile  { inStream strb } }  }
	{ inStream_V_user_V int 2 regular {axi_s 0 volatile  { inStream user } }  }
	{ inStream_V_last_V int 1 regular {axi_s 0 volatile  { inStream last } }  }
	{ inStream_V_id_V int 5 regular {axi_s 0 volatile  { inStream id } }  }
	{ inStream_V_dest_V int 6 regular {axi_s 0 volatile  { inStream dest } }  }
	{ outStream_V_data_V int 8 regular {axi_s 1 volatile  { outStream data } }  }
	{ outStream_V_keep_V int 1 regular {axi_s 1 volatile  { outStream keep } }  }
	{ outStream_V_strb_V int 1 regular {axi_s 1 volatile  { outStream strb } }  }
	{ outStream_V_user_V int 2 regular {axi_s 1 volatile  { outStream user } }  }
	{ outStream_V_last_V int 1 regular {axi_s 1 volatile  { outStream last } }  }
	{ outStream_V_id_V int 5 regular {axi_s 1 volatile  { outStream id } }  }
	{ outStream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream dest } }  }
	{ kernel int 8 regular {axi_slave 0}  }
	{ operation int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "inStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "outStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "outStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "outStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel", "interface" : "axi_slave", "bundle":"KERNEL_BUS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "kernel","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "operation", "interface" : "axi_slave", "bundle":"CRTL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "operation","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inStream_TDATA sc_in sc_lv 8 signal 0 } 
	{ inStream_TVALID sc_in sc_logic 1 invld 0 } 
	{ inStream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ inStream_TKEEP sc_in sc_lv 1 signal 1 } 
	{ inStream_TSTRB sc_in sc_lv 1 signal 2 } 
	{ inStream_TUSER sc_in sc_lv 2 signal 3 } 
	{ inStream_TLAST sc_in sc_lv 1 signal 4 } 
	{ inStream_TID sc_in sc_lv 5 signal 5 } 
	{ inStream_TDEST sc_in sc_lv 6 signal 6 } 
	{ outStream_TDATA sc_out sc_lv 8 signal 7 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ outStream_TKEEP sc_out sc_lv 1 signal 8 } 
	{ outStream_TSTRB sc_out sc_lv 1 signal 9 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 10 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 11 } 
	{ outStream_TID sc_out sc_lv 5 signal 12 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 13 } 
	{ s_axi_CRTL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CRTL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_KERNEL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_KERNEL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_KERNEL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_KERNEL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_KERNEL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_KERNEL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_KERNEL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CRTL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWADDR" },"address":[{"name":"doImgProc","role":"start","value":"0","valid_bit":"0"},{"name":"doImgProc","role":"continue","value":"0","valid_bit":"4"},{"name":"doImgProc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"operation","role":"data","value":"16"}] },
	{ "name": "s_axi_CRTL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CRTL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CRTL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CRTL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CRTL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CRTL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CRTL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARADDR" },"address":[{"name":"doImgProc","role":"start","value":"0","valid_bit":"0"},{"name":"doImgProc","role":"done","value":"0","valid_bit":"1"},{"name":"doImgProc","role":"idle","value":"0","valid_bit":"2"},{"name":"doImgProc","role":"ready","value":"0","valid_bit":"3"},{"name":"doImgProc","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CRTL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CRTL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CRTL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CRTL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CRTL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CRTL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CRTL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CRTL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CRTL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "interrupt" } },
	{ "name": "s_axi_KERNEL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "AWADDR" },"address":[{"name":"kernel","role":"data","value":"16"}] },
	{ "name": "s_axi_KERNEL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_KERNEL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_KERNEL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_KERNEL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_KERNEL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_KERNEL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_KERNEL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_KERNEL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_KERNEL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_KERNEL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_KERNEL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_KERNEL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_KERNEL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_KERNEL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_KERNEL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_KERNEL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "KERNEL_BUS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inStream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_data_V", "role": "default" }} , 
 	{ "name": "inStream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_V_data_V", "role": "default" }} , 
 	{ "name": "inStream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_keep_V", "role": "default" }} , 
 	{ "name": "inStream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_strb_V", "role": "default" }} , 
 	{ "name": "inStream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream_V_user_V", "role": "default" }} , 
 	{ "name": "inStream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_last_V", "role": "default" }} , 
 	{ "name": "inStream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inStream_V_id_V", "role": "default" }} , 
 	{ "name": "inStream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_data_V", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"], "CDFG" : "doImgProc", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "inStream_V_data_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "inStream_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "inStream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "inStream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "inStream_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "inStream_V_last_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "inStream_V_id_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "inStream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outStream_V_data_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "kernel", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "operation", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.doImgProc_CRTL_BUS_s_axi_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.doImgProc_KERNEL_BUS_s_axi_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuff_val_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuff_val_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuff_val_2_U", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2359816", "Max" : "2359816"}
	, {"Name" : "Interval", "Min" : "2359817", "Max" : "2359817"}
]}

set Spec2ImplPortList { 
	inStream_V_data_V { axis {  { inStream_TDATA in_data 0 8 }  { inStream_TVALID in_vld 0 1 } } }
	inStream_V_keep_V { axis {  { inStream_TKEEP in_data 0 1 } } }
	inStream_V_strb_V { axis {  { inStream_TSTRB in_data 0 1 } } }
	inStream_V_user_V { axis {  { inStream_TUSER in_data 0 2 } } }
	inStream_V_last_V { axis {  { inStream_TLAST in_data 0 1 } } }
	inStream_V_id_V { axis {  { inStream_TID in_data 0 5 } } }
	inStream_V_dest_V { axis {  { inStream_TREADY in_acc 1 1 }  { inStream_TDEST in_data 0 6 } } }
	outStream_V_data_V { axis {  { outStream_TDATA out_data 1 8 } } }
	outStream_V_keep_V { axis {  { outStream_TKEEP out_data 1 1 } } }
	outStream_V_strb_V { axis {  { outStream_TSTRB out_data 1 1 } } }
	outStream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	outStream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	outStream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	outStream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TREADY out_acc 0 1 }  { outStream_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
