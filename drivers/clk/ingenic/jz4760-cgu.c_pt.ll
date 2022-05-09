; ModuleID = '/llk/IR_all_yes/drivers/clk/ingenic/jz4760-cgu.c_pt.bc'
source_filename = "../drivers/clk/ingenic/jz4760-cgu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ingenic_cgu_clk_info = type { ptr, i32, [4 x i32], %union.anon.41 }
%union.anon.41 = type { %struct.ingenic_cgu_pll_info }
%struct.ingenic_cgu_pll_info = type { i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr }
%struct.anon.42 = type { %struct.ingenic_cgu_gate_info, %struct.ingenic_cgu_mux_info, %struct.ingenic_cgu_div_info, %struct.ingenic_cgu_fixdiv_info }
%struct.ingenic_cgu_gate_info = type { i32, i8, i8, i16 }
%struct.ingenic_cgu_mux_info = type { i32, i8, i8 }
%struct.ingenic_cgu_div_info = type { i32, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.ingenic_cgu_fixdiv_info = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@__of_table_jz4760_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-cgu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_jz4760b_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760b-cgu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760b_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@jz4760_cgu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to initialise CGU\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jz4760_cgu_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/ingenic/jz4760-cgu.c\00", [63 x i8] zeroinitializer }, align 32
@jz4760_cgu_init._entry_ptr = internal global ptr @jz4760_cgu_init._entry, section ".printk_index", align 4
@jz4760_cgu_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to register CGU Clocks\0A\00", [59 x i8] zeroinitializer }, align 32
@jz4760_cgu_init._entry_ptr.5 = internal global ptr @jz4760_cgu_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll0\00", [27 x i8] zeroinitializer }, align 32
@pll_od_encoding = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\FF\02\FF\FF\FF\03", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll0_half\00", [22 x i8] zeroinitializer }, align 32
@jz4760_cgu_pll_half_div_table = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\02\01", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cclk\00", [27 x i8] zeroinitializer }, align 32
@jz4760_cgu_cpccr_div_table = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\02\03\04\06\08", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"h2clk\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmc0\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmc1\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmc2\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cim\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uhc\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gps\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi0\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi1\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi2\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipu\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aic\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uhc_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext/512\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lpclk_div\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tve\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lpclk\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdma\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bdma\00", [27 x i8] zeroinitializer }, align 32
@jz4760_cgu_clocks = internal constant { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.anon.42 } }, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }>, [696 x i8] } { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.anon.42 } }, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }> <{ %struct.ingenic_cgu_clk_info { ptr @.str.6, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.7, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.8, i32 2, [4 x i32] zeroinitializer, %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 16, i32 1, ptr @pll_od_encoding, i8 23, i8 8, i8 0, i8 18, i8 4, i8 0, i8 16, i8 2, i8 8, i32 16, i8 9, i8 8, i8 10, ptr @jz4760_cgu_calc_m_n_od } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.9, i32 32, [4 x i32] [i32 2, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 21, i8 1, i8 1, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4760_cgu_pll_half_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, %struct.ingenic_cgu_clk_info { ptr @.str.10, i32 2, [4 x i32] zeroinitializer, %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 48, i32 1, ptr @pll_od_encoding, i8 23, i8 8, i8 0, i8 18, i8 4, i8 0, i8 16, i8 2, i8 8, i32 0, i8 -1, i8 7, i8 6, ptr @jz4760_cgu_calc_m_n_od } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.11, i32 32, [4 x i32] [i32 2, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 0, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4760_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.12, i32 32, [4 x i32] [i32 2, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 4, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4760_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.13, i32 32, [4 x i32] [i32 2, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 24, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4760_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.14, i32 32, [4 x i32] [i32 2, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 16, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4760_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.15, i32 32, [4 x i32] [i32 2, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 12, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4760_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.16, i32 32, [4 x i32] [i32 2, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 8, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4760_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.17, i32 40, [4 x i32] [i32 0, i32 3, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 104, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 104, i8 0, i8 1, i8 6, i8 -1, i8 -1, i8 -1, i8 1, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.18, i32 4, [4 x i32] [i32 11, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 3, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.19, i32 4, [4 x i32] [i32 11, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 11, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.20, i32 4, [4 x i32] [i32 11, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 12, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.21, i32 36, [4 x i32] [i32 3, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 26, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 124, i8 0, i8 1, i8 8, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.22, i32 44, [4 x i32] [i32 3, i32 4, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 24, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 108, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 108, i8 0, i8 1, i8 4, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.23, i32 44, [4 x i32] [i32 3, i32 4, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 9, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 136, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 136, i8 0, i8 1, i8 3, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.24, i32 44, [4 x i32] [i32 3, i32 4, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 22, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 128, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 128, i8 0, i8 1, i8 4, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.25, i32 40, [4 x i32] [i32 0, i32 3, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 116, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 116, i8 0, i8 1, i8 6, i8 -1, i8 -1, i8 -1, i8 1, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.26, i32 44, [4 x i32] [i32 0, i32 -1, i32 3, i32 4], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 8, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 132, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 132, i8 0, i8 1, i8 9, i8 -1, i8 -1, i8 -1, i8 1, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.27, i32 40, [4 x i32] [i32 0, i32 -1, i32 3, i32 4], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 96, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 96, i8 0, i8 1, i8 9, i8 -1, i8 -1, i8 -1, i8 1, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.28, i32 44, [4 x i32] [i32 0, i32 -1, i32 3, i32 4], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 2, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 80, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 80, i8 0, i8 1, i8 8, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.29, i32 4, [4 x i32] [i32 19, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 4, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.30, i32 4, [4 x i32] [i32 19, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 19, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.31, i32 4, [4 x i32] [i32 19, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 20, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.32, i32 4, [4 x i32] [i32 8, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 21, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.33, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 5, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.34, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 6, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.35, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 15, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.36, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 16, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.37, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 17, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.38, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 18, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.39, i32 4, [4 x i32] [i32 6, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 29, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.40, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 14, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.41, i32 4, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 8, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.42, i32 4, [4 x i32] [i32 6, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 4, i8 30, i8 0, i16 150 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.43, i32 4, [4 x i32] [i32 16, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 36, i8 5, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.44, i32 4, [4 x i32] [i32 22, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 36, i8 7, i8 1, i16 50 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.45, i32 64, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info { i32 512 } } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.46, i32 8, [4 x i32] [i32 39, i32 1, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 36, i8 2, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.47, i32 40, [4 x i32] [i32 3, i32 4, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 100, i8 29, i8 1 }, %struct.ingenic_cgu_div_info { i32 100, i8 0, i8 1, i8 11, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.48, i32 12, [4 x i32] [i32 41, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 27, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 100, i8 31, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.49, i32 12, [4 x i32] [i32 41, i32 42, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 28, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 100, i8 30, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.50, i32 4, [4 x i32] [i32 6, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 25, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.51, i32 4, [4 x i32] [i32 6, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 0, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } } }>, [696 x i8] zeroinitializer }, align 32
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 423, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 429, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 89, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 90, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 95, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"pll_od_encoding\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 44, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 196, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [30 x i8] c"jz4760_cgu_pll_half_div_table\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 52, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 120, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 145, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"jz4760_cgu_cpccr_div_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 48, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 153, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 161, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 169, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 177, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 185, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 274, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 377, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 382, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 387, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 288, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 207, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 214, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 239, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 280, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 249, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 257, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 264, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 297, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 302, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 307, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 312, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 327, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 332, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 337, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 342, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 347, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 352, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 357, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 362, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 367, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 372, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 392, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 397, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 404, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 409, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 221, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 227, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 233, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 317, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 322, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [18 x i8] c"jz4760_cgu_clocks\00", align 1
@___asan_gen_.219 = private constant [36 x i8] c"../drivers/clk/ingenic/jz4760-cgu.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 85, i32 42 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__of_table_jz4760_cgu, ptr @__of_table_jz4760b_cgu, ptr @jz4760_cgu_init._entry, ptr @jz4760_cgu_init._entry.3, ptr @jz4760_cgu_init._entry_ptr, ptr @jz4760_cgu_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pll_od_encoding, ptr @.str.9, ptr @jz4760_cgu_pll_half_div_table, ptr @.str.10, ptr @.str.11, ptr @jz4760_cgu_cpccr_div_table, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @jz4760_cgu_clocks], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_cgu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_cgu_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_od_encoding to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_cgu_pll_half_div_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_cgu_cpccr_div_table to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_cgu_clocks to i32), i32 2760, i32 3456, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4760_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #5
  tail call fastcc void @jz4760_cgu_init(ptr noundef %np) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4760b_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #5
  tail call fastcc void @jz4760_cgu_init(ptr noundef %np) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jz4760_cgu_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ingenic_cgu_new(ptr noundef nonnull @jz4760_cgu_clocks, i32 noundef 46, ptr noundef %np) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ingenic_cgu_register_clocks(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  tail call void @ingenic_cgu_register_syscore_ops(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ingenic_cgu_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ingenic_cgu_register_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ingenic_cgu_register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4760_cgu_calc_m_n_od(ptr nocapture noundef readonly %pll_info, i32 noundef %rate, i32 noundef %parent_rate, ptr nocapture noundef writeonly %pm, ptr nocapture noundef writeonly %pn, ptr nocapture noundef writeonly %pod) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_bits = getelementptr inbounds %struct.ingenic_cgu_pll_info, ptr %pll_info, i32 0, i32 4
  %0 = ptrtoint ptr %m_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %m_bits, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %sub = add i32 %shl, -2
  %div = udiv i32 %parent_rate, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999999, i32 %parent_rate)
  %cmp = icmp ugt i32 %parent_rate, 2999999
  %div. = select i1 %cmp, i32 %div, i32 2
  %n_bits = getelementptr inbounds %struct.ingenic_cgu_pll_info, ptr %pll_info, i32 0, i32 7
  %2 = ptrtoint ptr %n_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %n_bits, align 4
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw i32 1, %conv2
  %4 = tail call i32 @llvm.umin.i32(i32 %div., i32 %shl3)
  %div11 = udiv i32 %rate, 1000000
  %mul.1 = shl nuw nsw i32 %div11, 1
  %mul.2 = shl nuw nsw i32 %div11, 2
  %mul.3 = shl nuw nsw i32 %div11, 3
  %mul.4 = shl nuw nsw i32 %div11, 4
  br label %for.cond

for.cond:                                         ; preds = %do.end.for.cond_crit_edge, %entry
  %n.0 = phi i32 [ %4, %entry ], [ %shr, %do.end.for.cond_crit_edge ]
  %mul13 = mul nuw nsw i32 %div11, %n.0
  %div15 = udiv i32 %mul13, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div15, i32 %sub)
  %cmp16 = icmp ugt i32 %div15, %sub
  %and = and i32 %div15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %or.cond.not = or i1 %cmp16, %tobool.not
  br i1 %or.cond.not, label %do.body.1, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body.1:                                        ; preds = %for.cond
  %mul13.1 = mul nuw nsw i32 %mul.1, %n.0
  %div15.1 = udiv i32 %mul13.1, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.1, i32 %sub)
  %cmp16.1 = icmp ugt i32 %div15.1, %sub
  %and.1 = and i32 %div15.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp ne i32 %and.1, 0
  %or.cond.not.1 = or i1 %cmp16.1, %tobool.not.1
  br i1 %or.cond.not.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  %mul13.2 = mul nuw nsw i32 %mul.2, %n.0
  %div15.2 = udiv i32 %mul13.2, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.2, i32 %sub)
  %cmp16.2 = icmp ugt i32 %div15.2, %sub
  %and.2 = and i32 %div15.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp ne i32 %and.2, 0
  %or.cond.not.2 = or i1 %cmp16.2, %tobool.not.2
  br i1 %or.cond.not.2, label %do.body.3, label %do.body.2.do.end_crit_edge

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  %mul13.3 = mul nuw nsw i32 %mul.3, %n.0
  %div15.3 = udiv i32 %mul13.3, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.3, i32 %sub)
  %cmp16.3 = icmp ugt i32 %div15.3, %sub
  %and.3 = and i32 %div15.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp ne i32 %and.3, 0
  %or.cond.not.3 = or i1 %cmp16.3, %tobool.not.3
  br i1 %or.cond.not.3, label %do.body.4, label %do.body.3.do.end_crit_edge

do.body.3.do.end_crit_edge:                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body.4:                                        ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #7
  %mul13.4 = mul nuw nsw i32 %mul.4, %n.0
  %div15.4 = udiv i32 %mul13.4, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.4, i32 %sub)
  %cmp16.4 = icmp ugt i32 %div15.4, %sub
  br label %do.end

do.end:                                           ; preds = %do.body.4, %do.body.3.do.end_crit_edge, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %for.cond.do.end_crit_edge
  %inc.lcssa = phi i32 [ 0, %for.cond.do.end_crit_edge ], [ 1, %do.body.1.do.end_crit_edge ], [ 2, %do.body.2.do.end_crit_edge ], [ 3, %do.body.3.do.end_crit_edge ], [ 4, %do.body.4 ]
  %div15.lcssa = phi i32 [ %div15, %for.cond.do.end_crit_edge ], [ %div15.1, %do.body.1.do.end_crit_edge ], [ %div15.2, %do.body.2.do.end_crit_edge ], [ %div15.3, %do.body.3.do.end_crit_edge ], [ %div15.4, %do.body.4 ]
  %cmp16.lcssa = phi i1 [ %cmp16, %for.cond.do.end_crit_edge ], [ %cmp16.1, %do.body.1.do.end_crit_edge ], [ %cmp16.2, %do.body.2.do.end_crit_edge ], [ %cmp16.3, %do.body.3.do.end_crit_edge ], [ %cmp16.4, %do.body.4 ]
  %cmp18.lcssa = phi i1 [ false, %for.cond.do.end_crit_edge ], [ false, %do.body.1.do.end_crit_edge ], [ false, %do.body.2.do.end_crit_edge ], [ false, %do.body.3.do.end_crit_edge ], [ true, %do.body.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div15.lcssa)
  %cmp22 = icmp ult i32 %div15.lcssa, 4
  %or.cond46 = select i1 %cmp18.lcssa, i1 true, i1 %cmp22
  %or.cond47 = select i1 %or.cond46, i1 true, i1 %cmp16.lcssa
  %shr = lshr i32 %n.0, 1
  br i1 %or.cond47, label %do.end.for.cond_crit_edge, label %for.end

do.end.for.cond_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl12 = shl nuw nsw i32 1, %inc.lcssa
  %5 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div15.lcssa, ptr %pm, align 4
  %6 = ptrtoint ptr %pn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %n.0, ptr %pn, align 4
  %7 = ptrtoint ptr %pod to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl12, ptr %pod, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__of_table_jz4760_cgu, !1, !"__of_table_jz4760_cgu", i1 false, i1 false}
!1 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 435, i32 1}
!2 = !{ptr @__of_table_jz4760b_cgu, !3, !"__of_table_jz4760b_cgu", i1 false, i1 false}
!3 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 438, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 423, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @jz4760_cgu_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @jz4760_cgu_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 429, i32 3}
!12 = !{ptr @jz4760_cgu_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @jz4760_cgu_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 89, i32 23}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 90, i32 26}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 95, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 196, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 120, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 145, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 153, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 161, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 169, i32 3}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 177, i32 3}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 185, i32 3}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 274, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 377, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 382, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 387, i32 3}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 288, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 207, i32 3}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 214, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 239, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 280, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 249, i32 3}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 257, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 264, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 297, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 302, i32 3}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 307, i32 3}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 312, i32 3}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 327, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 332, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 337, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 342, i32 3}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 347, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 352, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 357, i32 3}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 362, i32 3}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 367, i32 3}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 372, i32 3}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 392, i32 3}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 397, i32 3}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 404, i32 3}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 409, i32 3}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 221, i32 3}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 227, i32 3}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 233, i32 3}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 317, i32 3}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 322, i32 3}
!106 = !{ptr @jz4760_cgu_clocks, !107, !"jz4760_cgu_clocks", i1 false, i1 false}
!107 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 85, i32 42}
!108 = !{ptr @pll_od_encoding, !109, !"pll_od_encoding", i1 false, i1 false}
!109 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 44, i32 17}
!110 = !{ptr @jz4760_cgu_pll_half_div_table, !111, !"jz4760_cgu_pll_half_div_table", i1 false, i1 false}
!111 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 52, i32 17}
!112 = !{ptr @jz4760_cgu_cpccr_div_table, !113, !"jz4760_cgu_cpccr_div_table", i1 false, i1 false}
!113 = !{!"../drivers/clk/ingenic/jz4760-cgu.c", i32 48, i32 17}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
