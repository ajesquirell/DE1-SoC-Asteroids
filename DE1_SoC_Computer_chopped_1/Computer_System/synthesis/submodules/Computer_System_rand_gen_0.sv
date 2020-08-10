// (C) 2001-2018 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


module Computer_System_rand_gen_0 (
        input  wire        start,          //     call.valid
		output wire        busy,           //         .stall
		input  wire        clock,          //    clock.clk
		output wire [31:0] rand_num_data,  // rand_num.data
		input  wire        rand_num_ready, //         .ready
		output wire        rand_num_valid, //         .valid
		input  wire        resetn,         //    reset.reset_n
		output wire        done,           //   return.valid
		input  wire        stall           //         .stall
	);

	altera_rand_gen_fn_internal altera_rand_gen_fn_inst (
		.clock          (clock),          //    clock.clk
		.resetn         (resetn),         //    reset.reset_n
		.rand_num_data  (rand_num_data),  // rand_num.data
		.rand_num_ready (rand_num_ready), //         .ready
		.rand_num_valid (rand_num_valid), //         .valid
		.start          (start),          //     call.valid
		.busy           (busy),           //         .stall
		.done           (done),           //   return.valid
		.stall          (stall)           //         .stall
	);


endmodule

