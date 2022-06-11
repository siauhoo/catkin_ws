// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (COR/TOW)
//         bit 1 - ap_ready (COR/TOW)
//         bit 5 - ap_local_deadlock (COR/TOW)
//         others - reserved
// 0x100 ~
// 0x1ff : Memory 'W' (256 * 8b)
//         Word n : bit [ 7: 0] - W[4n]
//                  bit [15: 8] - W[4n+1]
//                  bit [23:16] - W[4n+2]
//                  bit [31:24] - W[4n+3]
// 0x200 ~
// 0x2ff : Memory 'A' (256 * 8b)
//         Word n : bit [ 7: 0] - A[4n]
//                  bit [15: 8] - A[4n+1]
//                  bit [23:16] - A[4n+2]
//                  bit [31:24] - A[4n+3]
// 0x300 ~
// 0x3ff : Memory 'O' (256 * 8b)
//         Word n : bit [ 7: 0] - O[4n]
//                  bit [15: 8] - O[4n+1]
//                  bit [23:16] - O[4n+2]
//                  bit [31:24] - O[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XACC_MMULT_CONTROL_ADDR_AP_CTRL 0x000
#define XACC_MMULT_CONTROL_ADDR_GIE     0x004
#define XACC_MMULT_CONTROL_ADDR_IER     0x008
#define XACC_MMULT_CONTROL_ADDR_ISR     0x00c
#define XACC_MMULT_CONTROL_ADDR_W_BASE  0x100
#define XACC_MMULT_CONTROL_ADDR_W_HIGH  0x1ff
#define XACC_MMULT_CONTROL_WIDTH_W      8
#define XACC_MMULT_CONTROL_DEPTH_W      256
#define XACC_MMULT_CONTROL_ADDR_A_BASE  0x200
#define XACC_MMULT_CONTROL_ADDR_A_HIGH  0x2ff
#define XACC_MMULT_CONTROL_WIDTH_A      8
#define XACC_MMULT_CONTROL_DEPTH_A      256
#define XACC_MMULT_CONTROL_ADDR_O_BASE  0x300
#define XACC_MMULT_CONTROL_ADDR_O_HIGH  0x3ff
#define XACC_MMULT_CONTROL_WIDTH_O      8
#define XACC_MMULT_CONTROL_DEPTH_O      256
