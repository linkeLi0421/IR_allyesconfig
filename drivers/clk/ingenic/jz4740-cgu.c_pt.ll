; ModuleID = '/llk/IR_all_yes/drivers/clk/ingenic/jz4740-cgu.c_pt.bc'
source_filename = "../drivers/clk/ingenic/jz4740-cgu.c"
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

@__of_table_jz4740_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-cgu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@cgu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jz4740_cgu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to initialise CGU\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jz4740_cgu_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/ingenic/jz4740-cgu.c\00", [63 x i8] zeroinitializer }, align 32
@jz4740_cgu_init._entry_ptr = internal global ptr @jz4740_cgu_init._entry, section ".printk_index", align 4
@jz4740_cgu_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to register CGU Clocks\0A\00", [59 x i8] zeroinitializer }, align 32
@jz4740_cgu_init._entry_ptr.5 = internal global ptr @jz4740_cgu_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@pll_od_encoding = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\FF\03", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll half\00", [23 x i8] zeroinitializer }, align 32
@jz4740_cgu_pll_half_div_table = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\02\01", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cclk\00", [27 x i8] zeroinitializer }, align 32
@jz4740_cgu_cpccr_div_table = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01\02\03\04\06\08\0C\10\18 ", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_pclk\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uhc\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udc\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipu\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aic\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcu\00", [28 x i8] zeroinitializer }, align 32
@jz4740_cgu_clocks = internal constant { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }>, [348 x i8] } { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }> <{ %struct.ingenic_cgu_clk_info { ptr @.str.6, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.7, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.8, i32 2, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 16, i32 1, ptr @pll_od_encoding, i8 23, i8 9, i8 2, i8 18, i8 5, i8 2, i8 16, i8 2, i8 4, i32 16, i8 9, i8 8, i8 10, ptr null } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.9, i32 32, [4 x i32] [i32 2, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 21, i8 1, i8 1, i8 -1, i8 -1, i8 -1, i8 0, ptr @jz4740_cgu_pll_half_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.10, i32 32, [4 x i32] [i32 2, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 0, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4740_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.11, i32 32, [4 x i32] [i32 2, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 4, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4740_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.12, i32 32, [4 x i32] [i32 2, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 8, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4740_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.13, i32 32, [4 x i32] [i32 2, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 12, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4740_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.14, i32 36, [4 x i32] [i32 3, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 10, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 16, i8 1, i8 5, i8 22, i8 -1, i8 -1, i8 0, ptr @jz4740_cgu_cpccr_div_table }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.15, i32 32, [4 x i32] [i32 3, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 100, i8 0, i8 1, i8 11, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.16, i32 44, [4 x i32] [i32 0, i32 3, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 6, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 0, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 96, i8 0, i8 1, i8 9, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.17, i32 44, [4 x i32] [i32 0, i32 2, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 4, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 116, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 116, i8 0, i8 1, i8 4, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.18, i32 36, [4 x i32] [i32 3, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 7, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 104, i8 0, i8 1, i8 5, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.19, i32 36, [4 x i32] [i32 3, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 14, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 108, i8 0, i8 1, i8 4, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.20, i32 44, [4 x i32] [i32 0, i32 3, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 36, i8 6, i8 1, i16 0 }, %struct.ingenic_cgu_mux_info { i32 0, i8 29, i8 1 }, %struct.ingenic_cgu_div_info { i32 0, i8 23, i8 1, i8 6, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.21, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 0, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.22, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 15, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.23, i32 4, [4 x i32] [i32 6, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 12, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.24, i32 4, [4 x i32] [i32 6, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 13, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.25, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 8, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.26, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 3, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.27, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 5, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.28, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 1, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } } }>, [348 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"cgu\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 48, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 251, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 257, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 66, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 67, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 70, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"pll_od_encoding\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 50, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 95, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"jz4740_cgu_pll_half_div_table\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 58, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 104, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"jz4740_cgu_cpccr_div_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 54, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 113, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 122, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 131, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 140, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 150, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 156, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 164, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 172, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 179, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 186, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 196, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 202, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 208, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 214, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 220, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 226, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 232, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 238, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"jz4740_cgu_clocks\00", align 1
@___asan_gen_.130 = private constant [36 x i8] c"../drivers/clk/ingenic/jz4740-cgu.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 62, i32 42 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__of_table_jz4740_cgu, ptr @jz4740_cgu_init._entry, ptr @jz4740_cgu_init._entry.3, ptr @jz4740_cgu_init._entry_ptr, ptr @jz4740_cgu_init._entry_ptr.5, ptr @cgu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pll_od_encoding, ptr @.str.9, ptr @jz4740_cgu_pll_half_div_table, ptr @.str.10, ptr @jz4740_cgu_cpccr_div_table, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @jz4740_cgu_clocks], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_cgu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_cgu_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_od_encoding to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_cgu_pll_half_div_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_cgu_cpccr_div_table to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_cgu_clocks to i32), i32 1380, i32 1728, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #3
  tail call fastcc void @jz4740_cgu_init(ptr noundef %np) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jz4740_cgu_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ingenic_cgu_new(ptr noundef nonnull @jz4740_cgu_clocks, i32 noundef 23, ptr noundef %np) #3
  store ptr %call, ptr @cgu, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ingenic_cgu_register_clocks(ptr noundef nonnull %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %0 = load ptr, ptr @cgu, align 4
  tail call void @ingenic_cgu_register_syscore_ops(ptr noundef %0) #3
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__of_table_jz4740_cgu, !1, !"__of_table_jz4740_cgu", i1 false, i1 false}
!1 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 261, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 251, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jz4740_cgu_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jz4740_cgu_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 257, i32 3}
!10 = !{ptr @jz4740_cgu_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @jz4740_cgu_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 66, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 67, i32 23}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 70, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 95, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 104, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 113, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 122, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 131, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 140, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 150, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 156, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 164, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 172, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 179, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 186, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 196, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 202, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 208, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 214, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 220, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 226, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 232, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 238, i32 3}
!58 = !{ptr @jz4740_cgu_clocks, !59, !"jz4740_cgu_clocks", i1 false, i1 false}
!59 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 62, i32 42}
!60 = !{ptr @pll_od_encoding, !61, !"pll_od_encoding", i1 false, i1 false}
!61 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 50, i32 17}
!62 = !{ptr @jz4740_cgu_pll_half_div_table, !63, !"jz4740_cgu_pll_half_div_table", i1 false, i1 false}
!63 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 58, i32 17}
!64 = !{ptr @jz4740_cgu_cpccr_div_table, !65, !"jz4740_cgu_cpccr_div_table", i1 false, i1 false}
!65 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 54, i32 17}
!66 = !{ptr @cgu, !67, !"cgu", i1 false, i1 false}
!67 = !{!"../drivers/clk/ingenic/jz4740-cgu.c", i32 48, i32 28}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
