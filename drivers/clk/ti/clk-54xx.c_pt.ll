; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clk-54xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-54xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }
%struct.omap_clkctrl_div_data = type { ptr, i32, i32 }

@omap5_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_dsp_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_abe_clkctrl_regs = internal constant [12 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @omap5_aess_bit_data, i16 32, ptr @.str.22, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.23, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap5_dmic_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr @omap5_mcbsp1_bit_data, i16 32, ptr @.str.25, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr @omap5_mcbsp2_bit_data, i16 32, ptr @.str.26, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr @omap5_mcbsp3_bit_data, i16 32, ptr @.str.27, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap5_timer5_bit_data, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr @omap5_timer6_bit_data, i16 32, ptr @.str.29, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @omap5_timer7_bit_data, i16 32, ptr @.str.30, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @omap5_timer8_bit_data, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3main1_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3main2_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_ipu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.42, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_dma_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_emif_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 64, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l4cfg_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 0, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 0, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3instr_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l4per_clkctrl_regs = internal constant [33 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr @omap5_timer10_bit_data, i16 32, ptr @.str.45, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @omap5_timer11_bit_data, i16 32, ptr @.str.46, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap5_timer2_bit_data, i16 32, ptr @.str.47, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @omap5_timer3_bit_data, i16 32, ptr @.str.48, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr @omap5_timer4_bit_data, i16 32, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr @omap5_timer9_bit_data, i16 32, ptr @.str.50, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr @omap5_gpio2_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap5_gpio3_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr @omap5_gpio4_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @omap5_gpio5_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @omap5_gpio6_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 144, ptr null, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr null, i16 0, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 224, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 232, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 240, ptr @omap5_gpio7_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 248, ptr @omap5_gpio8_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 256, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 264, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 320, ptr null, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 328, ptr null, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 336, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 344, ptr null, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l4_secure_clkctrl_regs = internal constant [8 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 320, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 64, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 320, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_iva_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.54, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.54, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_dss_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap5_dss_core_bit_data, i16 32, ptr @.str.55, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap5_gpu_core_bit_data, i16 32, ptr @.str.57, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3init_clkctrl_regs = internal constant [9 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr @omap5_mmc1_bit_data, i16 32, ptr @.str.60, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @omap5_mmc2_bit_data, i16 32, ptr @.str.61, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr @omap5_usb_host_hs_bit_data, i16 32, ptr @.str.62, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap5_usb_tll_hs_bit_data, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr @omap5_sata_bit_data, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 200, ptr null, i16 64, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr @omap5_usb_otg_ss_bit_data, i16 64, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_wkupaon_clkctrl_regs = internal constant [7 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.73, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap5_gpio1_bit_data, i16 64, ptr @.str.73, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @omap5_timer1_bit_data, i16 32, ptr @.str.74, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 0, ptr @.str.73, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_clkctrl_data = dso_local local_unnamed_addr constant [18 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1241531168, ptr @omap5_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241531424, ptr @omap5_dsp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241531680, ptr @omap5_abe_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548576, ptr @omap5_l3main1_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548832, ptr @omap5_l3main2_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549088, ptr @omap5_ipu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549344, ptr @omap5_dma_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549600, ptr @omap5_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550112, ptr @omap5_l4cfg_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550368, ptr @omap5_l3instr_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550880, ptr @omap5_l4per_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551264, ptr @omap5_l4_secure_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551392, ptr @omap5_iva_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551904, ptr @omap5_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552160, ptr @omap5_gpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552416, ptr @omap5_l3init_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1256225056, ptr @omap5_wkupaon_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@omap54xx_clks = internal global { [55 x %struct.ti_dt_clk], [412 x i8] } { [55 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.75, ptr null, ptr null }, ptr @.str.1 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.76, ptr null, ptr null }, ptr @.str.53 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.77, ptr null, ptr null }, ptr @.str.78 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.79, ptr null, ptr null }, ptr @.str.80 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.81, ptr null, ptr null }, ptr @.str.82 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.83, ptr null, ptr null }, ptr @.str.84 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.85, ptr null, ptr null }, ptr @.str.86 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.87, ptr null, ptr null }, ptr @.str.88 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.89, ptr null, ptr null }, ptr @.str.90 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.91, ptr null, ptr null }, ptr @.str.92 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.93, ptr null, ptr null }, ptr @.str.94 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.95, ptr null, ptr null }, ptr @.str.96 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.97, ptr null, ptr null }, ptr @.str.98 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.99, ptr null, ptr null }, ptr @.str.100 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.101, ptr null, ptr null }, ptr @.str.102 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.103, ptr null, ptr null }, ptr @.str.104 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.105, ptr null, ptr null }, ptr @.str.106 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.107, ptr null, ptr null }, ptr @.str.108 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.109, ptr null, ptr null }, ptr @.str.110 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.111, ptr null, ptr null }, ptr @.str.112 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.113, ptr null, ptr null }, ptr @.str.114 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.115, ptr null, ptr null }, ptr @.str.116 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.117, ptr null, ptr null }, ptr @.str.118 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.119, ptr null, ptr null }, ptr @.str.120 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.121, ptr null, ptr null }, ptr @.str.122 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.123, ptr null, ptr null }, ptr @.str.124 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.125, ptr null, ptr null }, ptr @.str.126 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.127, ptr null, ptr null }, ptr @.str.128 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.129, ptr null, ptr null }, ptr @.str.130 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.131, ptr null, ptr null }, ptr @.str.132 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.133, ptr null, ptr null }, ptr @.str.134 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.135, ptr null, ptr null }, ptr @.str.136 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.137, ptr null, ptr null }, ptr @.str.138 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.139, ptr null, ptr null }, ptr @.str.140 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.141, ptr null, ptr null }, ptr @.str.142 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.143, ptr null, ptr null }, ptr @.str.144 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.145, ptr null, ptr null }, ptr @.str.146 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.147, ptr null, ptr null }, ptr @.str.148 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.149, ptr null, ptr null }, ptr @.str.150 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.151, ptr null, ptr null }, ptr @.str.152 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.153, ptr null, ptr null }, ptr @.str.154 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.155, ptr null, ptr null }, ptr @.str.156 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.157, ptr null, ptr null }, ptr @.str.158 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.159, ptr null, ptr null }, ptr @.str.160 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.161, ptr null, ptr null }, ptr @.str.162 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.163, ptr null, ptr null }, ptr @.str.164 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.165, ptr null, ptr null }, ptr @.str.166 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.167, ptr null, ptr null }, ptr @.str.168 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.169, ptr null, ptr null }, ptr @.str.170 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.171, ptr null, ptr null }, ptr @.str.172 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.173, ptr null, ptr null }, ptr @.str.174 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.175, ptr null, ptr null }, ptr @.str.176 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.177, ptr null, ptr null }, ptr @.str.178 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.179, ptr null, ptr null }, ptr @.str.180 }, %struct.ti_dt_clk zeroinitializer], [412 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abe_dpll_clk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_32k_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"abe_dpll_bypass_clk_mux\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll_abe_ck\00", [20 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to configure ABE DPLL!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap5xxx_dt_clk_init\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/ti/clk-54xx.c\00", [38 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry_ptr = internal global ptr @omap5xxx_dt_clk_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpll_abe_m2x2_ck\00", [47 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to configure ABE m2x2 DPLL!\0A\00", [54 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry_ptr.10 = internal global ptr @omap5xxx_dt_clk_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll_usb_ck\00", [20 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to configure USB DPLL!\0A\00", [59 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry_ptr.14 = internal global ptr @omap5xxx_dt_clk_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpll_usb_m2_ck\00", [17 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to set USB_DPLL M2 OUT\0A\00", [59 x i8] zeroinitializer }, align 32
@omap5xxx_dt_clk_init._entry_ptr.18 = internal global ptr @omap5xxx_dt_clk_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpll_mpu_m2_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpll_iva_h11x2_ck\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"abe_iclk\00", [23 x i8] zeroinitializer }, align 32
@omap5_aess_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @omap5_aess_fclk_parents, ptr @omap5_aess_fclk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0008:24\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pad_clks_ck\00", [20 x i8] zeroinitializer }, align 32
@omap5_dmic_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_dmic_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0018:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_mcbsp1_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mcbsp1_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0028:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_mcbsp2_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mcbsp2_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0030:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_mcbsp3_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mcbsp3_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0038:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_timer5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0048:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_timer6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0050:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_timer7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0058:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_timer8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0060:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_aess_fclk_parents = internal constant [2 x ptr] [ptr @.str.32, ptr null], section ".init.rodata", align 4
@omap5_aess_fclk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"abe_clk\00", [24 x i8] zeroinitializer }, align 32
@omap5_dmic_gfclk_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.23, ptr @.str.34, ptr null], section ".init.rodata", align 4
@omap5_dmic_sync_mux_ck_parents = internal constant [4 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null], section ".init.rodata", align 4
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0018:26\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slimbus_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"abe_24m_fclk\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dss_syc_gfclk_div\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"func_24m_clk\00", [19 x i8] zeroinitializer }, align 32
@omap5_mcbsp1_gfclk_parents = internal constant [4 x ptr] [ptr @.str.38, ptr @.str.23, ptr @.str.34, ptr null], section ".init.rodata", align 4
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0028:26\00", [45 x i8] zeroinitializer }, align 32
@omap5_mcbsp2_gfclk_parents = internal constant [4 x ptr] [ptr @.str.39, ptr @.str.23, ptr @.str.34, ptr null], section ".init.rodata", align 4
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0030:26\00", [45 x i8] zeroinitializer }, align 32
@omap5_mcbsp3_gfclk_parents = internal constant [4 x ptr] [ptr @.str.40, ptr @.str.23, ptr @.str.34, ptr null], section ".init.rodata", align 4
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abe_cm:clk:0038:26\00", [45 x i8] zeroinitializer }, align 32
@omap5_timer5_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.36, ptr @.str.1, ptr null], section ".init.rodata", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l3_iclk_div\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpll_core_h22x2_ck\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpll_core_h11x2_ck\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4_root_clk_div\00", [16 x i8] zeroinitializer }, align 32
@omap5_timer10_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4per_cm:clk:0008:24\00", [43 x i8] zeroinitializer }, align 32
@omap5_timer11_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4per_cm:clk:0010:24\00", [43 x i8] zeroinitializer }, align 32
@omap5_timer2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4per_cm:clk:0018:24\00", [43 x i8] zeroinitializer }, align 32
@omap5_timer3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4per_cm:clk:0020:24\00", [43 x i8] zeroinitializer }, align 32
@omap5_timer4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4per_cm:clk:0028:24\00", [43 x i8] zeroinitializer }, align 32
@omap5_timer9_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4per_cm:clk:0030:24\00", [43 x i8] zeroinitializer }, align 32
@omap5_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"func_96m_fclk\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"func_48m_fclk\00", [18 x i8] zeroinitializer }, align 32
@omap5_gpio7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_timer10_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.53, ptr @.str.1, ptr null], section ".init.rodata", align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_clkin\00", [22 x i8] zeroinitializer }, align 32
@omap5_gpio2_dbclk_parents = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpll_iva_h12x2_ck\00", [46 x i8] zeroinitializer }, align 32
@omap5_dss_core_bit_data = internal constant [5 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_dss_dss_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap5_dss_48mhz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap5_dss_sys_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dss_cm:clk:0000:8\00", [46 x i8] zeroinitializer }, align 32
@omap5_dss_dss_clk_parents = internal constant [2 x ptr] [ptr @.str.56, ptr null], section ".init.rodata", align 4
@omap5_dss_48mhz_clk_parents = internal constant [2 x ptr] [ptr @.str.52, ptr null], section ".init.rodata", align 4
@omap5_dss_sys_clk_parents = internal constant [2 x ptr] [ptr @.str.36, ptr null], section ".init.rodata", align 4
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpll_per_h12x2_ck\00", [46 x i8] zeroinitializer }, align 32
@omap5_gpu_core_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_gpu_core_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 1, ptr @omap5_gpu_hyd_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 2, ptr @omap5_gpu_sys_clk_parents, ptr @omap5_gpu_sys_clk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpu_cm:clk:0000:24\00", [45 x i8] zeroinitializer }, align 32
@omap5_gpu_core_mux_parents = internal constant [3 x ptr] [ptr @.str.58, ptr @.str.59, ptr null], section ".init.rodata", align 4
@omap5_gpu_hyd_mux_parents = internal constant [3 x ptr] [ptr @.str.58, ptr @.str.59, ptr null], section ".init.rodata", align 4
@omap5_gpu_sys_clk_parents = internal constant [2 x ptr] [ptr @.str.53, ptr null], section ".init.rodata", align 4
@omap5_gpu_sys_clk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpll_core_h14x2_ck\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpll_per_h14x2_ck\00", [46 x i8] zeroinitializer }, align 32
@omap5_mmc1_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mmc1_fclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @omap5_mmc1_fclk_parents, ptr @omap5_mmc1_fclk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l3init_cm:clk:0008:25\00", [42 x i8] zeroinitializer }, align 32
@omap5_mmc2_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mmc1_fclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @omap5_mmc2_fclk_parents, ptr @omap5_mmc2_fclk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l3init_cm:clk:0010:25\00", [42 x i8] zeroinitializer }, align 32
@omap5_usb_host_hs_bit_data = internal constant [12 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 6, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 7, i8 5, ptr @omap5_usb_host_hs_hsic480m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_usb_host_hs_utmi_p1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap5_usb_host_hs_utmi_p2_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 12, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 13, i8 5, ptr @omap5_usb_host_hs_hsic480m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 14, i8 5, ptr @omap5_usb_host_hs_hsic480m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_utmi_p1_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 1, ptr @omap5_utmi_p2_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l3init_60m_fclk\00", [16 x i8] zeroinitializer }, align 32
@omap5_usb_tll_hs_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_sata_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_sata_ref_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_usb_otg_ss_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_usb_otg_ss_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpll_core_h13x2_ck\00", [45 x i8] zeroinitializer }, align 32
@omap5_mmc1_fclk_mux_parents = internal constant [3 x ptr] [ptr @.str.64, ptr @.str.65, ptr null], section ".init.rodata", align 4
@omap5_mmc1_fclk_parents = internal constant [2 x ptr] [ptr @.str.66, ptr null], section ".init.rodata", align 4
@omap5_mmc1_fclk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"func_128m_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpll_per_m2x2_ck\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l3init_cm:clk:0008:24\00", [42 x i8] zeroinitializer }, align 32
@omap5_mmc2_fclk_parents = internal constant [2 x ptr] [ptr @.str.67, ptr null], section ".init.rodata", align 4
@omap5_mmc2_fclk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l3init_cm:clk:0010:24\00", [42 x i8] zeroinitializer }, align 32
@omap5_usb_host_hs_hsic60m_p3_clk_parents = internal constant [2 x ptr] [ptr @.str.62, ptr null], section ".init.rodata", align 4
@omap5_usb_host_hs_hsic480m_p3_clk_parents = internal constant [2 x ptr] [ptr @.str.15, ptr null], section ".init.rodata", align 4
@omap5_usb_host_hs_utmi_p1_clk_parents = internal constant [2 x ptr] [ptr @.str.68, ptr null], section ".init.rodata", align 4
@omap5_usb_host_hs_utmi_p2_clk_parents = internal constant [2 x ptr] [ptr @.str.69, ptr null], section ".init.rodata", align 4
@omap5_utmi_p1_gfclk_parents = internal constant [3 x ptr] [ptr @.str.62, ptr @.str.70, ptr null], section ".init.rodata", align 4
@omap5_utmi_p2_gfclk_parents = internal constant [3 x ptr] [ptr @.str.62, ptr @.str.71, ptr null], section ".init.rodata", align 4
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l3init_cm:clk:0038:24\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"l3init_cm:clk:0038:25\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xclk60mhsp1_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xclk60mhsp2_ck\00", [17 x i8] zeroinitializer }, align 32
@omap5_sata_ref_clk_parents = internal constant [2 x ptr] [ptr @.str.53, ptr null], section ".init.rodata", align 4
@omap5_usb_otg_ss_refclk960m_parents = internal constant [2 x ptr] [ptr @.str.72, ptr null], section ".init.rodata", align 4
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpll_usb_clkdcoldo\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wkupaon_iclk_mux\00", [47 x i8] zeroinitializer }, align 32
@omap5_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_timer1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wkupaon_cm:clk:0020:24\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_32k_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_clkin_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic_gfclk\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0018:24\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmic_sync_mux_ck\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0018:26\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dss_32khz_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dss_cm:0000:11\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dss_48mhz_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dss_cm:0000:9\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dss_dss_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dss_cm:0000:8\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dss_sys_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dss_cm:0000:10\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio1_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wkupaon_cm:0018:8\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio2_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4per_cm:0040:8\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio3_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4per_cm:0048:8\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio4_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4per_cm:0050:8\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio5_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4per_cm:0058:8\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio6_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4per_cm:0060:8\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio7_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4per_cm:00f0:8\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio8_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4per_cm:00f8:8\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcbsp1_gfclk\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0028:24\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcbsp1_sync_mux_ck\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0028:26\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcbsp2_gfclk\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0030:24\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcbsp2_sync_mux_ck\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0030:26\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcbsp3_gfclk\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0038:24\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcbsp3_sync_mux_ck\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0038:26\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc1_32khz_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0008:8\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc1_fclk\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0008:25\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc1_fclk_mux\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0008:24\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc2_fclk\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0010:25\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc2_fclk_mux\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0010:24\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sata_ref_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0068:8\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timer10_gfclk_mux\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l4per_cm:0008:24\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timer11_gfclk_mux\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l4per_cm:0010:24\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer1_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wkupaon_cm:0020:24\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer2_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l4per_cm:0018:24\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer3_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l4per_cm:0020:24\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer4_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l4per_cm:0028:24\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer5_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0048:24\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer6_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0050:24\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer7_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0058:24\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer8_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abe_cm:0060:24\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer9_gfclk_mux\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l4per_cm:0030:24\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_host_hs_hsic480m_p1_clk\00", [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0038:13\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_host_hs_hsic480m_p2_clk\00", [36 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0038:14\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_host_hs_hsic480m_p3_clk\00", [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0038:7\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_host_hs_hsic60m_p1_clk\00", [37 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0038:11\00", [46 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_host_hs_hsic60m_p2_clk\00", [37 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0038:12\00", [46 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_host_hs_hsic60m_p3_clk\00", [37 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0038:6\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_host_hs_utmi_p1_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0038:8\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_host_hs_utmi_p2_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0038:9\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_host_hs_utmi_p3_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0038:10\00", [46 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_otg_ss_refclk960m\00", [42 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:00d0:8\00", [47 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_tll_hs_usb_ch0_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0048:8\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_tll_hs_usb_ch1_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"l3init_cm:0048:9\00", [47 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_tll_hs_usb_ch2_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0048:10\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"utmi_p1_gfclk\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0038:24\00", [46 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"utmi_p2_gfclk\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3init_cm:0038:25\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"omap54xx_clks\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 549, i32 25 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 618, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 619, i32 33 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 627, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 631, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 635, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 637, i32 31 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 641, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 643, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 646, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 648, i32 31 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 651, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 29, i32 32 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 34, i32 63 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 138, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 139, i32 58 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 140, i32 44 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 141, i32 58 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 142, i32 62 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 143, i32 62 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 144, i32 62 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 145, i32 62 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 146, i32 62 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 147, i32 62 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 148, i32 62 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 39, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 53, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 55, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 60, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 61, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 62, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 73, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 86, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 99, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 153, i32 38 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 165, i32 63 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 176, i32 44 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 182, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 271, i32 64 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 272, i32 64 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 273, i32 62 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 274, i32 62 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 275, i32 62 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 276, i32 62 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 282, i32 43 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 287, i32 45 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 195, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 319, i32 42 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 348, i32 66 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 325, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 381, i32 61 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 353, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 354, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 497, i32 58 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 498, i32 58 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 499, i32 72 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 504, i32 70 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 386, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 387, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 392, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 408, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 433, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 438, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 444, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 450, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 487, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 519, i32 36 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 522, i32 62 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 550, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 551, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 552, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 553, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 554, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 555, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 556, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 557, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 558, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 559, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 560, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 561, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 562, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 563, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 564, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 565, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 566, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 567, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 568, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 569, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 570, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 571, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 572, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 573, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 574, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 575, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 576, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 577, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 578, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 579, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 580, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 581, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 582, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 583, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 584, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 585, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 586, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 587, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 588, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 589, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 590, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 591, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 592, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 593, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 594, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 595, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 596, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 597, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 598, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 599, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 600, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 601, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 602, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.719 = private constant [29 x i8] c"../drivers/clk/ti/clk-54xx.c\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 603, i32 2 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @omap5xxx_dt_clk_init._entry, ptr @omap5xxx_dt_clk_init._entry.12, ptr @omap5xxx_dt_clk_init._entry.16, ptr @omap5xxx_dt_clk_init._entry.8, ptr @omap5xxx_dt_clk_init._entry_ptr, ptr @omap5xxx_dt_clk_init._entry_ptr.10, ptr @omap5xxx_dt_clk_init._entry_ptr.14, ptr @omap5xxx_dt_clk_init._entry_ptr.18, ptr @omap54xx_clks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap54xx_clks to i32), i32 1540, i32 1952, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5xxx_dt_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5xxx_dt_clk_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5xxx_dt_clk_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5xxx_dt_clk_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap5xxx_dt_clk_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @omap54xx_clks) #3
  %call = tail call i32 @omap2_clk_disable_autoidle_all() #3
  tail call void @ti_clk_add_aliases() #3
  %call1 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #3
  %call2 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.1) #3
  %call3 = tail call i32 @clk_set_parent(ptr noundef %call1, ptr noundef %call2) #3
  %call4 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call658 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #3
  br label %if.end14

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @clk_set_parent(ptr noundef %call4, ptr noundef %call2) #3
  %call6 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.end10:                                         ; preds = %if.end
  %call9 = tail call i32 @clk_set_rate(ptr noundef %call6, i32 noundef 98304000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end14.thread, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.end14.thread:                                  ; preds = %if.end10
  %call1568 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.7) #3
  %call18 = tail call i32 @clk_set_rate(ptr noundef %call1568, i32 noundef 196608000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end14.thread.if.end27_crit_edge, label %if.end14.thread.do.end24_crit_edge

if.end14.thread.do.end24_crit_edge:               ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end24

if.end14.thread.if.end27_crit_edge:               ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.end14:                                         ; preds = %if.end10.if.end14_crit_edge, %if.end.if.end14_crit_edge, %if.end.thread
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %call15 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.7) #3
  br label %do.end24

do.end24:                                         ; preds = %if.end14, %if.end14.thread.do.end24_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) #6
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end14.thread.if.end27_crit_edge
  %call28 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.11) #3
  %call29 = tail call i32 @clk_set_rate(ptr noundef %call28, i32 noundef 960000000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.if.end37_crit_edge, label %do.end34

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #6
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.end27.if.end37_crit_edge
  %call38 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.15) #3
  %call39 = tail call i32 @clk_set_rate(ptr noundef %call38, i32 noundef 480000000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end37.if.end47_crit_edge, label %do.end44

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5) #6
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.end37.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !341, !343, !344, !346, !347, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370, !371, !373, !374, !376, !377, !379, !380, !382, !383, !385, !386, !388, !389, !391, !392, !394, !395, !397, !398, !400, !401, !403, !404, !406, !407, !409, !410, !412, !413, !415, !416, !418, !419, !421, !422, !424, !425, !427, !428, !430, !431, !433, !434, !436, !437, !439, !440, !442, !443, !445, !446, !448, !449, !451, !452, !454, !455, !457, !458, !460, !461, !463, !464}
!llvm.module.flags = !{!466, !467, !468, !469, !470, !471, !472, !473}
!llvm.ident = !{!474}

!0 = !{ptr @omap5_clkctrl_data, !1, !"omap5_clkctrl_data", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clk-54xx.c", i32 528, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clk-54xx.c", i32 618, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clk-54xx.c", i32 619, i32 33}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clk-54xx.c", i32 627, i32 35}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/clk-54xx.c", i32 631, i32 31}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clk-54xx.c", i32 635, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap5xxx_dt_clk_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap5xxx_dt_clk_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clk-54xx.c", i32 637, i32 31}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/clk-54xx.c", i32 641, i32 3}
!20 = !{ptr @omap5xxx_dt_clk_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap5xxx_dt_clk_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/clk-54xx.c", i32 643, i32 31}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/clk-54xx.c", i32 646, i32 3}
!26 = !{ptr @omap5xxx_dt_clk_init._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap5xxx_dt_clk_init._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/clk-54xx.c", i32 648, i32 31}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/clk-54xx.c", i32 651, i32 3}
!32 = !{ptr @omap5xxx_dt_clk_init._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap5xxx_dt_clk_init._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ti/clk-54xx.c", i32 29, i32 32}
!36 = !{ptr @omap5_mpu_clkctrl_regs, !37, !"omap5_mpu_clkctrl_regs", i1 false, i1 false}
!37 = !{!"../drivers/clk/ti/clk-54xx.c", i32 28, i32 43}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/clk-54xx.c", i32 34, i32 63}
!40 = !{ptr @omap5_dsp_clkctrl_regs, !41, !"omap5_dsp_clkctrl_regs", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/clk-54xx.c", i32 33, i32 43}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/clk-54xx.c", i32 138, i32 35}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/clk-54xx.c", i32 139, i32 58}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/clk-54xx.c", i32 140, i32 44}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/clk-54xx.c", i32 141, i32 58}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/clk-54xx.c", i32 142, i32 62}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ti/clk-54xx.c", i32 143, i32 62}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ti/clk-54xx.c", i32 144, i32 62}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ti/clk-54xx.c", i32 145, i32 62}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ti/clk-54xx.c", i32 146, i32 62}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/ti/clk-54xx.c", i32 147, i32 62}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ti/clk-54xx.c", i32 148, i32 62}
!64 = !{ptr @omap5_abe_clkctrl_regs, !65, !"omap5_abe_clkctrl_regs", i1 false, i1 false}
!65 = !{!"../drivers/clk/ti/clk-54xx.c", i32 137, i32 43}
!66 = !{ptr @omap5_aess_bit_data, !67, !"omap5_aess_bit_data", i1 false, i1 false}
!67 = !{!"../drivers/clk/ti/clk-54xx.c", i32 47, i32 43}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ti/clk-54xx.c", i32 39, i32 2}
!70 = !{ptr @omap5_aess_fclk_parents, !71, !"omap5_aess_fclk_parents", i1 false, i1 false}
!71 = !{!"../drivers/clk/ti/clk-54xx.c", i32 38, i32 27}
!72 = !{ptr @omap5_aess_fclk_data, !73, !"omap5_aess_fclk_data", i1 false, i1 false}
!73 = !{!"../drivers/clk/ti/clk-54xx.c", i32 43, i32 43}
!74 = !{ptr @omap5_dmic_bit_data, !75, !"omap5_dmic_bit_data", i1 false, i1 false}
!75 = !{!"../drivers/clk/ti/clk-54xx.c", i32 66, i32 43}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/ti/clk-54xx.c", i32 53, i32 2}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ti/clk-54xx.c", i32 55, i32 2}
!80 = !{ptr @omap5_dmic_gfclk_parents, !81, !"omap5_dmic_gfclk_parents", i1 false, i1 false}
!81 = !{!"../drivers/clk/ti/clk-54xx.c", i32 52, i32 27}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ti/clk-54xx.c", i32 60, i32 2}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ti/clk-54xx.c", i32 61, i32 2}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ti/clk-54xx.c", i32 62, i32 2}
!88 = !{ptr @omap5_dmic_sync_mux_ck_parents, !89, !"omap5_dmic_sync_mux_ck_parents", i1 false, i1 false}
!89 = !{!"../drivers/clk/ti/clk-54xx.c", i32 59, i32 27}
!90 = !{ptr @omap5_mcbsp1_bit_data, !91, !"omap5_mcbsp1_bit_data", i1 false, i1 false}
!91 = !{!"../drivers/clk/ti/clk-54xx.c", i32 79, i32 43}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/ti/clk-54xx.c", i32 73, i32 2}
!94 = !{ptr @omap5_mcbsp1_gfclk_parents, !95, !"omap5_mcbsp1_gfclk_parents", i1 false, i1 false}
!95 = !{!"../drivers/clk/ti/clk-54xx.c", i32 72, i32 27}
!96 = !{ptr @omap5_mcbsp2_bit_data, !97, !"omap5_mcbsp2_bit_data", i1 false, i1 false}
!97 = !{!"../drivers/clk/ti/clk-54xx.c", i32 92, i32 43}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/ti/clk-54xx.c", i32 86, i32 2}
!100 = !{ptr @omap5_mcbsp2_gfclk_parents, !101, !"omap5_mcbsp2_gfclk_parents", i1 false, i1 false}
!101 = !{!"../drivers/clk/ti/clk-54xx.c", i32 85, i32 27}
!102 = !{ptr @omap5_mcbsp3_bit_data, !103, !"omap5_mcbsp3_bit_data", i1 false, i1 false}
!103 = !{!"../drivers/clk/ti/clk-54xx.c", i32 105, i32 43}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/ti/clk-54xx.c", i32 99, i32 2}
!106 = !{ptr @omap5_mcbsp3_gfclk_parents, !107, !"omap5_mcbsp3_gfclk_parents", i1 false, i1 false}
!107 = !{!"../drivers/clk/ti/clk-54xx.c", i32 98, i32 27}
!108 = !{ptr @omap5_timer5_bit_data, !109, !"omap5_timer5_bit_data", i1 false, i1 false}
!109 = !{!"../drivers/clk/ti/clk-54xx.c", i32 117, i32 43}
!110 = !{ptr @omap5_timer5_gfclk_mux_parents, !111, !"omap5_timer5_gfclk_mux_parents", i1 false, i1 false}
!111 = !{!"../drivers/clk/ti/clk-54xx.c", i32 111, i32 27}
!112 = !{ptr @omap5_timer6_bit_data, !113, !"omap5_timer6_bit_data", i1 false, i1 false}
!113 = !{!"../drivers/clk/ti/clk-54xx.c", i32 122, i32 43}
!114 = !{ptr @omap5_timer7_bit_data, !115, !"omap5_timer7_bit_data", i1 false, i1 false}
!115 = !{!"../drivers/clk/ti/clk-54xx.c", i32 127, i32 43}
!116 = !{ptr @omap5_timer8_bit_data, !117, !"omap5_timer8_bit_data", i1 false, i1 false}
!117 = !{!"../drivers/clk/ti/clk-54xx.c", i32 132, i32 43}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/ti/clk-54xx.c", i32 153, i32 38}
!120 = !{ptr @omap5_l3main1_clkctrl_regs, !121, !"omap5_l3main1_clkctrl_regs", i1 false, i1 false}
!121 = !{!"../drivers/clk/ti/clk-54xx.c", i32 152, i32 43}
!122 = !{ptr @omap5_l3main2_clkctrl_regs, !123, !"omap5_l3main2_clkctrl_regs", i1 false, i1 false}
!123 = !{!"../drivers/clk/ti/clk-54xx.c", i32 157, i32 43}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/ti/clk-54xx.c", i32 165, i32 63}
!126 = !{ptr @omap5_ipu_clkctrl_regs, !127, !"omap5_ipu_clkctrl_regs", i1 false, i1 false}
!127 = !{!"../drivers/clk/ti/clk-54xx.c", i32 164, i32 43}
!128 = !{ptr @omap5_dma_clkctrl_regs, !129, !"omap5_dma_clkctrl_regs", i1 false, i1 false}
!129 = !{!"../drivers/clk/ti/clk-54xx.c", i32 169, i32 43}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/ti/clk-54xx.c", i32 176, i32 44}
!132 = !{ptr @omap5_emif_clkctrl_regs, !133, !"omap5_emif_clkctrl_regs", i1 false, i1 false}
!133 = !{!"../drivers/clk/ti/clk-54xx.c", i32 174, i32 43}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/ti/clk-54xx.c", i32 182, i32 35}
!136 = !{ptr @omap5_l4cfg_clkctrl_regs, !137, !"omap5_l4cfg_clkctrl_regs", i1 false, i1 false}
!137 = !{!"../drivers/clk/ti/clk-54xx.c", i32 181, i32 43}
!138 = !{ptr @omap5_l3instr_clkctrl_regs, !139, !"omap5_l3instr_clkctrl_regs", i1 false, i1 false}
!139 = !{!"../drivers/clk/ti/clk-54xx.c", i32 188, i32 43}
!140 = !{ptr @.str.45, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/ti/clk-54xx.c", i32 271, i32 64}
!142 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/ti/clk-54xx.c", i32 272, i32 64}
!144 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/ti/clk-54xx.c", i32 273, i32 62}
!146 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/ti/clk-54xx.c", i32 274, i32 62}
!148 = !{ptr @.str.49, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/ti/clk-54xx.c", i32 275, i32 62}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/ti/clk-54xx.c", i32 276, i32 62}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/ti/clk-54xx.c", i32 282, i32 43}
!154 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/ti/clk-54xx.c", i32 287, i32 45}
!156 = !{ptr @omap5_l4per_clkctrl_regs, !157, !"omap5_l4per_clkctrl_regs", i1 false, i1 false}
!157 = !{!"../drivers/clk/ti/clk-54xx.c", i32 270, i32 43}
!158 = !{ptr @omap5_timer10_bit_data, !159, !"omap5_timer10_bit_data", i1 false, i1 false}
!159 = !{!"../drivers/clk/ti/clk-54xx.c", i32 200, i32 43}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/ti/clk-54xx.c", i32 195, i32 2}
!162 = !{ptr @omap5_timer10_gfclk_mux_parents, !163, !"omap5_timer10_gfclk_mux_parents", i1 false, i1 false}
!163 = !{!"../drivers/clk/ti/clk-54xx.c", i32 194, i32 27}
!164 = !{ptr @omap5_timer11_bit_data, !165, !"omap5_timer11_bit_data", i1 false, i1 false}
!165 = !{!"../drivers/clk/ti/clk-54xx.c", i32 205, i32 43}
!166 = !{ptr @omap5_timer2_bit_data, !167, !"omap5_timer2_bit_data", i1 false, i1 false}
!167 = !{!"../drivers/clk/ti/clk-54xx.c", i32 210, i32 43}
!168 = !{ptr @omap5_timer3_bit_data, !169, !"omap5_timer3_bit_data", i1 false, i1 false}
!169 = !{!"../drivers/clk/ti/clk-54xx.c", i32 215, i32 43}
!170 = !{ptr @omap5_timer4_bit_data, !171, !"omap5_timer4_bit_data", i1 false, i1 false}
!171 = !{!"../drivers/clk/ti/clk-54xx.c", i32 220, i32 43}
!172 = !{ptr @omap5_timer9_bit_data, !173, !"omap5_timer9_bit_data", i1 false, i1 false}
!173 = !{!"../drivers/clk/ti/clk-54xx.c", i32 225, i32 43}
!174 = !{ptr @omap5_gpio2_bit_data, !175, !"omap5_gpio2_bit_data", i1 false, i1 false}
!175 = !{!"../drivers/clk/ti/clk-54xx.c", i32 235, i32 43}
!176 = !{ptr @omap5_gpio2_dbclk_parents, !177, !"omap5_gpio2_dbclk_parents", i1 false, i1 false}
!177 = !{!"../drivers/clk/ti/clk-54xx.c", i32 230, i32 27}
!178 = !{ptr @omap5_gpio3_bit_data, !179, !"omap5_gpio3_bit_data", i1 false, i1 false}
!179 = !{!"../drivers/clk/ti/clk-54xx.c", i32 240, i32 43}
!180 = !{ptr @omap5_gpio4_bit_data, !181, !"omap5_gpio4_bit_data", i1 false, i1 false}
!181 = !{!"../drivers/clk/ti/clk-54xx.c", i32 245, i32 43}
!182 = !{ptr @omap5_gpio5_bit_data, !183, !"omap5_gpio5_bit_data", i1 false, i1 false}
!183 = !{!"../drivers/clk/ti/clk-54xx.c", i32 250, i32 43}
!184 = !{ptr @omap5_gpio6_bit_data, !185, !"omap5_gpio6_bit_data", i1 false, i1 false}
!185 = !{!"../drivers/clk/ti/clk-54xx.c", i32 255, i32 43}
!186 = !{ptr @omap5_gpio7_bit_data, !187, !"omap5_gpio7_bit_data", i1 false, i1 false}
!187 = !{!"../drivers/clk/ti/clk-54xx.c", i32 260, i32 43}
!188 = !{ptr @omap5_gpio8_bit_data, !189, !"omap5_gpio8_bit_data", i1 false, i1 false}
!189 = !{!"../drivers/clk/ti/clk-54xx.c", i32 265, i32 43}
!190 = !{ptr @omap5_l4_secure_clkctrl_regs, !191, !"omap5_l4_secure_clkctrl_regs", i1 false, i1 false}
!191 = !{!"../drivers/clk/ti/clk-54xx.c", i32 307, i32 23}
!192 = !{ptr @.str.54, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/ti/clk-54xx.c", i32 319, i32 42}
!194 = !{ptr @omap5_iva_clkctrl_regs, !195, !"omap5_iva_clkctrl_regs", i1 false, i1 false}
!195 = !{!"../drivers/clk/ti/clk-54xx.c", i32 318, i32 43}
!196 = !{ptr @.str.55, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/ti/clk-54xx.c", i32 348, i32 66}
!198 = !{ptr @omap5_dss_clkctrl_regs, !199, !"omap5_dss_clkctrl_regs", i1 false, i1 false}
!199 = !{!"../drivers/clk/ti/clk-54xx.c", i32 347, i32 43}
!200 = !{ptr @omap5_dss_core_bit_data, !201, !"omap5_dss_core_bit_data", i1 false, i1 false}
!201 = !{!"../drivers/clk/ti/clk-54xx.c", i32 339, i32 43}
!202 = !{ptr @.str.56, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/ti/clk-54xx.c", i32 325, i32 2}
!204 = !{ptr @omap5_dss_dss_clk_parents, !205, !"omap5_dss_dss_clk_parents", i1 false, i1 false}
!205 = !{!"../drivers/clk/ti/clk-54xx.c", i32 324, i32 27}
!206 = !{ptr @omap5_dss_48mhz_clk_parents, !207, !"omap5_dss_48mhz_clk_parents", i1 false, i1 false}
!207 = !{!"../drivers/clk/ti/clk-54xx.c", i32 329, i32 27}
!208 = !{ptr @omap5_dss_sys_clk_parents, !209, !"omap5_dss_sys_clk_parents", i1 false, i1 false}
!209 = !{!"../drivers/clk/ti/clk-54xx.c", i32 334, i32 27}
!210 = !{ptr @.str.57, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/ti/clk-54xx.c", i32 381, i32 61}
!212 = !{ptr @omap5_gpu_clkctrl_regs, !213, !"omap5_gpu_clkctrl_regs", i1 false, i1 false}
!213 = !{!"../drivers/clk/ti/clk-54xx.c", i32 380, i32 43}
!214 = !{ptr @omap5_gpu_core_bit_data, !215, !"omap5_gpu_core_bit_data", i1 false, i1 false}
!215 = !{!"../drivers/clk/ti/clk-54xx.c", i32 373, i32 43}
!216 = !{ptr @.str.58, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/ti/clk-54xx.c", i32 353, i32 2}
!218 = !{ptr @.str.59, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/ti/clk-54xx.c", i32 354, i32 2}
!220 = !{ptr @omap5_gpu_core_mux_parents, !221, !"omap5_gpu_core_mux_parents", i1 false, i1 false}
!221 = !{!"../drivers/clk/ti/clk-54xx.c", i32 352, i32 27}
!222 = !{ptr @omap5_gpu_hyd_mux_parents, !223, !"omap5_gpu_hyd_mux_parents", i1 false, i1 false}
!223 = !{!"../drivers/clk/ti/clk-54xx.c", i32 358, i32 27}
!224 = !{ptr @omap5_gpu_sys_clk_parents, !225, !"omap5_gpu_sys_clk_parents", i1 false, i1 false}
!225 = !{!"../drivers/clk/ti/clk-54xx.c", i32 364, i32 27}
!226 = !{ptr @omap5_gpu_sys_clk_data, !227, !"omap5_gpu_sys_clk_data", i1 false, i1 false}
!227 = !{!"../drivers/clk/ti/clk-54xx.c", i32 369, i32 43}
!228 = !{ptr @.str.60, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/ti/clk-54xx.c", i32 497, i32 58}
!230 = !{ptr @.str.61, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/ti/clk-54xx.c", i32 498, i32 58}
!232 = !{ptr @.str.62, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/ti/clk-54xx.c", i32 499, i32 72}
!234 = !{ptr @.str.63, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/ti/clk-54xx.c", i32 504, i32 70}
!236 = !{ptr @omap5_l3init_clkctrl_regs, !237, !"omap5_l3init_clkctrl_regs", i1 false, i1 false}
!237 = !{!"../drivers/clk/ti/clk-54xx.c", i32 496, i32 43}
!238 = !{ptr @omap5_mmc1_bit_data, !239, !"omap5_mmc1_bit_data", i1 false, i1 false}
!239 = !{!"../drivers/clk/ti/clk-54xx.c", i32 400, i32 43}
!240 = !{ptr @.str.64, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/ti/clk-54xx.c", i32 386, i32 2}
!242 = !{ptr @.str.65, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/ti/clk-54xx.c", i32 387, i32 2}
!244 = !{ptr @omap5_mmc1_fclk_mux_parents, !245, !"omap5_mmc1_fclk_mux_parents", i1 false, i1 false}
!245 = !{!"../drivers/clk/ti/clk-54xx.c", i32 385, i32 27}
!246 = !{ptr @.str.66, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/ti/clk-54xx.c", i32 392, i32 2}
!248 = !{ptr @omap5_mmc1_fclk_parents, !249, !"omap5_mmc1_fclk_parents", i1 false, i1 false}
!249 = !{!"../drivers/clk/ti/clk-54xx.c", i32 391, i32 27}
!250 = !{ptr @omap5_mmc1_fclk_data, !251, !"omap5_mmc1_fclk_data", i1 false, i1 false}
!251 = !{!"../drivers/clk/ti/clk-54xx.c", i32 396, i32 43}
!252 = !{ptr @omap5_mmc2_bit_data, !253, !"omap5_mmc2_bit_data", i1 false, i1 false}
!253 = !{!"../drivers/clk/ti/clk-54xx.c", i32 416, i32 43}
!254 = !{ptr @.str.67, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/ti/clk-54xx.c", i32 408, i32 2}
!256 = !{ptr @omap5_mmc2_fclk_parents, !257, !"omap5_mmc2_fclk_parents", i1 false, i1 false}
!257 = !{!"../drivers/clk/ti/clk-54xx.c", i32 407, i32 27}
!258 = !{ptr @omap5_mmc2_fclk_data, !259, !"omap5_mmc2_fclk_data", i1 false, i1 false}
!259 = !{!"../drivers/clk/ti/clk-54xx.c", i32 412, i32 43}
!260 = !{ptr @omap5_usb_host_hs_bit_data, !261, !"omap5_usb_host_hs_bit_data", i1 false, i1 false}
!261 = !{!"../drivers/clk/ti/clk-54xx.c", i32 454, i32 43}
!262 = !{ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, !263, !"omap5_usb_host_hs_hsic60m_p3_clk_parents", i1 false, i1 false}
!263 = !{!"../drivers/clk/ti/clk-54xx.c", i32 422, i32 27}
!264 = !{ptr @omap5_usb_host_hs_hsic480m_p3_clk_parents, !265, !"omap5_usb_host_hs_hsic480m_p3_clk_parents", i1 false, i1 false}
!265 = !{!"../drivers/clk/ti/clk-54xx.c", i32 427, i32 27}
!266 = !{ptr @.str.68, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/ti/clk-54xx.c", i32 433, i32 2}
!268 = !{ptr @omap5_usb_host_hs_utmi_p1_clk_parents, !269, !"omap5_usb_host_hs_utmi_p1_clk_parents", i1 false, i1 false}
!269 = !{!"../drivers/clk/ti/clk-54xx.c", i32 432, i32 27}
!270 = !{ptr @.str.69, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/ti/clk-54xx.c", i32 438, i32 2}
!272 = !{ptr @omap5_usb_host_hs_utmi_p2_clk_parents, !273, !"omap5_usb_host_hs_utmi_p2_clk_parents", i1 false, i1 false}
!273 = !{!"../drivers/clk/ti/clk-54xx.c", i32 437, i32 27}
!274 = !{ptr @.str.70, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/ti/clk-54xx.c", i32 444, i32 2}
!276 = !{ptr @omap5_utmi_p1_gfclk_parents, !277, !"omap5_utmi_p1_gfclk_parents", i1 false, i1 false}
!277 = !{!"../drivers/clk/ti/clk-54xx.c", i32 442, i32 27}
!278 = !{ptr @.str.71, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/ti/clk-54xx.c", i32 450, i32 2}
!280 = !{ptr @omap5_utmi_p2_gfclk_parents, !281, !"omap5_utmi_p2_gfclk_parents", i1 false, i1 false}
!281 = !{!"../drivers/clk/ti/clk-54xx.c", i32 448, i32 27}
!282 = !{ptr @omap5_usb_tll_hs_bit_data, !283, !"omap5_usb_tll_hs_bit_data", i1 false, i1 false}
!283 = !{!"../drivers/clk/ti/clk-54xx.c", i32 469, i32 43}
!284 = !{ptr @omap5_sata_bit_data, !285, !"omap5_sata_bit_data", i1 false, i1 false}
!285 = !{!"../drivers/clk/ti/clk-54xx.c", i32 481, i32 43}
!286 = !{ptr @omap5_sata_ref_clk_parents, !287, !"omap5_sata_ref_clk_parents", i1 false, i1 false}
!287 = !{!"../drivers/clk/ti/clk-54xx.c", i32 476, i32 27}
!288 = !{ptr @omap5_usb_otg_ss_bit_data, !289, !"omap5_usb_otg_ss_bit_data", i1 false, i1 false}
!289 = !{!"../drivers/clk/ti/clk-54xx.c", i32 491, i32 43}
!290 = !{ptr @.str.72, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/ti/clk-54xx.c", i32 487, i32 2}
!292 = !{ptr @omap5_usb_otg_ss_refclk960m_parents, !293, !"omap5_usb_otg_ss_refclk960m_parents", i1 false, i1 false}
!293 = !{!"../drivers/clk/ti/clk-54xx.c", i32 486, i32 27}
!294 = !{ptr @.str.73, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/ti/clk-54xx.c", i32 519, i32 36}
!296 = !{ptr @.str.74, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/ti/clk-54xx.c", i32 522, i32 62}
!298 = !{ptr @omap5_wkupaon_clkctrl_regs, !299, !"omap5_wkupaon_clkctrl_regs", i1 false, i1 false}
!299 = !{!"../drivers/clk/ti/clk-54xx.c", i32 518, i32 43}
!300 = !{ptr @omap5_gpio1_bit_data, !301, !"omap5_gpio1_bit_data", i1 false, i1 false}
!301 = !{!"../drivers/clk/ti/clk-54xx.c", i32 508, i32 43}
!302 = !{ptr @omap5_timer1_bit_data, !303, !"omap5_timer1_bit_data", i1 false, i1 false}
!303 = !{!"../drivers/clk/ti/clk-54xx.c", i32 513, i32 43}
!304 = !{ptr @.str.75, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/ti/clk-54xx.c", i32 550, i32 2}
!306 = !{ptr @.str.76, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/ti/clk-54xx.c", i32 551, i32 2}
!308 = !{ptr @.str.77, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/ti/clk-54xx.c", i32 552, i32 2}
!310 = !{ptr @.str.78, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.79, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/ti/clk-54xx.c", i32 553, i32 2}
!313 = !{ptr @.str.80, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.81, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/ti/clk-54xx.c", i32 554, i32 2}
!316 = !{ptr @.str.82, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.83, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/ti/clk-54xx.c", i32 555, i32 2}
!319 = !{ptr @.str.84, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.85, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/ti/clk-54xx.c", i32 556, i32 2}
!322 = !{ptr @.str.86, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.87, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/ti/clk-54xx.c", i32 557, i32 2}
!325 = !{ptr @.str.88, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.89, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/ti/clk-54xx.c", i32 558, i32 2}
!328 = !{ptr @.str.90, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.91, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/ti/clk-54xx.c", i32 559, i32 2}
!331 = !{ptr @.str.92, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.93, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/ti/clk-54xx.c", i32 560, i32 2}
!334 = !{ptr @.str.94, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.95, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/ti/clk-54xx.c", i32 561, i32 2}
!337 = !{ptr @.str.96, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.97, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/ti/clk-54xx.c", i32 562, i32 2}
!340 = !{ptr @.str.98, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.99, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/ti/clk-54xx.c", i32 563, i32 2}
!343 = !{ptr @.str.100, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.101, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/ti/clk-54xx.c", i32 564, i32 2}
!346 = !{ptr @.str.102, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.103, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/ti/clk-54xx.c", i32 565, i32 2}
!349 = !{ptr @.str.104, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.105, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/ti/clk-54xx.c", i32 566, i32 2}
!352 = !{ptr @.str.106, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.107, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/ti/clk-54xx.c", i32 567, i32 2}
!355 = !{ptr @.str.108, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.109, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/ti/clk-54xx.c", i32 568, i32 2}
!358 = !{ptr @.str.110, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.111, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/clk/ti/clk-54xx.c", i32 569, i32 2}
!361 = !{ptr @.str.112, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.113, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/ti/clk-54xx.c", i32 570, i32 2}
!364 = !{ptr @.str.114, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.115, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/ti/clk-54xx.c", i32 571, i32 2}
!367 = !{ptr @.str.116, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.117, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/ti/clk-54xx.c", i32 572, i32 2}
!370 = !{ptr @.str.118, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.119, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/ti/clk-54xx.c", i32 573, i32 2}
!373 = !{ptr @.str.120, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.121, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/ti/clk-54xx.c", i32 574, i32 2}
!376 = !{ptr @.str.122, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.123, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/ti/clk-54xx.c", i32 575, i32 2}
!379 = !{ptr @.str.124, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.125, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/ti/clk-54xx.c", i32 576, i32 2}
!382 = !{ptr @.str.126, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.127, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/ti/clk-54xx.c", i32 577, i32 2}
!385 = !{ptr @.str.128, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.129, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/ti/clk-54xx.c", i32 578, i32 2}
!388 = !{ptr @.str.130, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.131, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/clk/ti/clk-54xx.c", i32 579, i32 2}
!391 = !{ptr @.str.132, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.133, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/ti/clk-54xx.c", i32 580, i32 2}
!394 = !{ptr @.str.134, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.135, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/ti/clk-54xx.c", i32 581, i32 2}
!397 = !{ptr @.str.136, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.137, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/ti/clk-54xx.c", i32 582, i32 2}
!400 = !{ptr @.str.138, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.139, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/clk/ti/clk-54xx.c", i32 583, i32 2}
!403 = !{ptr @.str.140, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.141, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/ti/clk-54xx.c", i32 584, i32 2}
!406 = !{ptr @.str.142, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @.str.143, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/clk/ti/clk-54xx.c", i32 585, i32 2}
!409 = !{ptr @.str.144, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.145, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/ti/clk-54xx.c", i32 586, i32 2}
!412 = !{ptr @.str.146, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.147, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/clk/ti/clk-54xx.c", i32 587, i32 2}
!415 = !{ptr @.str.148, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.149, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/ti/clk-54xx.c", i32 588, i32 2}
!418 = !{ptr @.str.150, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.151, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/clk/ti/clk-54xx.c", i32 589, i32 2}
!421 = !{ptr @.str.152, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.153, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/ti/clk-54xx.c", i32 590, i32 2}
!424 = !{ptr @.str.154, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.155, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/clk/ti/clk-54xx.c", i32 591, i32 2}
!427 = !{ptr @.str.156, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.157, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/ti/clk-54xx.c", i32 592, i32 2}
!430 = !{ptr @.str.158, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.159, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/clk/ti/clk-54xx.c", i32 593, i32 2}
!433 = !{ptr @.str.160, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.161, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/ti/clk-54xx.c", i32 594, i32 2}
!436 = !{ptr @.str.162, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.163, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/clk/ti/clk-54xx.c", i32 595, i32 2}
!439 = !{ptr @.str.164, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.165, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/ti/clk-54xx.c", i32 596, i32 2}
!442 = !{ptr @.str.166, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @.str.167, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/clk/ti/clk-54xx.c", i32 597, i32 2}
!445 = !{ptr @.str.168, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.169, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/ti/clk-54xx.c", i32 598, i32 2}
!448 = !{ptr @.str.170, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @.str.171, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/clk/ti/clk-54xx.c", i32 599, i32 2}
!451 = !{ptr @.str.172, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.173, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/ti/clk-54xx.c", i32 600, i32 2}
!454 = !{ptr @.str.174, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.175, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/clk/ti/clk-54xx.c", i32 601, i32 2}
!457 = !{ptr @.str.176, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @.str.177, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/ti/clk-54xx.c", i32 602, i32 2}
!460 = !{ptr @.str.178, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.179, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/clk/ti/clk-54xx.c", i32 603, i32 2}
!463 = !{ptr @.str.180, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @omap54xx_clks, !465, !"omap54xx_clks", i1 false, i1 false}
!465 = !{!"../drivers/clk/ti/clk-54xx.c", i32 549, i32 25}
!466 = !{i32 1, !"wchar_size", i32 2}
!467 = !{i32 1, !"min_enum_size", i32 4}
!468 = !{i32 8, !"branch-target-enforcement", i32 0}
!469 = !{i32 8, !"sign-return-address", i32 0}
!470 = !{i32 8, !"sign-return-address-all", i32 0}
!471 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!472 = !{i32 7, !"uwtable", i32 1}
!473 = !{i32 7, !"frame-pointer", i32 2}
!474 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
