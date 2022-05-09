; ModuleID = '/llk/IR_all_yes/drivers/clk/ingenic/x1000-cgu.c_pt.bc'
source_filename = "../drivers/clk/ingenic/x1000-cgu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ingenic_cgu_clk_info = type { ptr, i32, [4 x i32], %union.anon.41 }
%union.anon.41 = type { %struct.ingenic_cgu_pll_info }
%struct.ingenic_cgu_pll_info = type { i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr }
%struct.ingenic_cgu_custom_info = type { ptr }
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
%struct.ingenic_cgu = type { ptr, ptr, ptr, %struct.clk_onecell_data, %struct.spinlock }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }

@__of_table_x1000_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-cgu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @x1000_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@cgu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@x1000_cgu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to initialise CGU\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"x1000_cgu_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/ingenic/x1000-cgu.c\00", [32 x i8] zeroinitializer }, align 32
@x1000_cgu_init._entry_ptr = internal global ptr @x1000_cgu_init._entry, section ".printk_index", align 4
@x1000_cgu_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to register CGU Clocks\0A\00", [59 x i8] zeroinitializer }, align 32
@x1000_cgu_init._entry_ptr.5 = internal global ptr @x1000_cgu_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@pll_od_encoding = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\FF\02\FF\FF\FF\03", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"otg_phy\00", [24 x i8] zeroinitializer }, align 32
@x1000_otg_phy_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @x1000_usb_phy_enable, ptr @x1000_usb_phy_disable, ptr @x1000_usb_phy_is_enabled, ptr null, ptr null, ptr null, ptr @x1000_otg_phy_recalc_rate, ptr @x1000_otg_phy_round_rate, ptr null, ptr null, ptr null, ptr @x1000_otg_phy_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sclk_a\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2cache\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahb0\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahb2_apb_mux\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahb2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddr\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msc_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msc0\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msc1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otg\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi_pll_div2\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"efuse\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcu\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssi\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ost\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pdma\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exclk_div512\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_ercs\00", [23 x i8] zeroinitializer }, align 32
@x1000_cgu_clocks = internal constant { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }>, [568 x i8] } { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }> <{ %struct.ingenic_cgu_clk_info { ptr @.str.6, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.7, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.8, i32 2, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 16, i32 1, ptr @pll_od_encoding, i8 24, i8 7, i8 1, i8 18, i8 5, i8 1, i8 16, i8 2, i8 8, i32 16, i8 9, i8 8, i8 10, ptr null } } }, %struct.ingenic_cgu_clk_info { ptr @.str.9, i32 2, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 20, i32 1, ptr @pll_od_encoding, i8 24, i8 7, i8 1, i8 18, i8 5, i8 1, i8 16, i8 2, i8 8, i32 20, i8 6, i8 7, i8 0, ptr null } } }, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } } { ptr @.str.10, i32 128, [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1], { %struct.ingenic_cgu_custom_info, [32 x i8] } { %struct.ingenic_cgu_custom_info { ptr @x1000_otg_phy_ops }, [32 x i8] undef } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.11, i32 8, [4 x i32] [i32 -1, i32 0, i32 2, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 30, i8 2 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.12, i32 8, [4 x i32] [i32 -1, i32 5, i32 3, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 28, i8 2 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.13, i32 36, [4 x i32] [i32 6, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 30, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 0, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.14, i32 32, [4 x i32] [i32 6, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 4, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.15, i32 40, [4 x i32] [i32 -1, i32 5, i32 3, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 26, i8 2 }, %struct.ingenic_cgu_div_info { i32 0, i8 8, i8 1, i8 4, i8 21, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.16, i32 8, [4 x i32] [i32 -1, i32 5, i32 3, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 24, i8 2 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.17, i32 32, [4 x i32] [i32 10, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 12, i8 1, i8 4, i8 20, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.18, i32 36, [4 x i32] [i32 10, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 28, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 16, i8 1, i8 4, i8 20, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.19, i32 44, [4 x i32] [i32 -1, i32 5, i32 3, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 31, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 44, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 44, i8 0, i8 1, i8 4, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.20, i32 44, [4 x i32] [i32 5, i32 3, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 25, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 84, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 84, i8 0, i8 1, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.21, i32 44, [4 x i32] [i32 5, i32 3, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 23, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 100, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 100, i8 0, i8 1, i8 8, i8 28, i8 27, i8 26, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.22, i32 8, [4 x i32] [i32 5, i32 3, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 104, i8 31, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.23, i32 36, [4 x i32] [i32 16, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 4, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 104, i8 0, i8 2, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.24, i32 36, [4 x i32] [i32 16, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 5, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 164, i8 0, i8 2, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.25, i32 44, [4 x i32] [i32 0, i32 -1, i32 2, i32 3], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 3, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 80, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 80, i8 0, i8 1, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.26, i32 40, [4 x i32] [i32 5, i32 3, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 116, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 116, i8 0, i8 1, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.27, i32 64, [4 x i32] [i32 20, i32 0, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info { i32 2 } } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.28, i32 8, [4 x i32] [i32 0, i32 21, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 116, i8 30, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.29, i32 4, [4 x i32] [i32 11, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 0, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.30, i32 4, [4 x i32] [i32 11, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 1, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.31, i32 4, [4 x i32] [i32 20, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 2, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.32, i32 4, [4 x i32] [i32 12, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 7, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.33, i32 4, [4 x i32] [i32 12, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 8, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.34, i32 4, [4 x i32] [i32 12, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 9, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.35, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 14, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.36, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 15, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.37, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 16, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.38, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 18, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.39, i32 4, [4 x i32] [i32 22, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 19, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.40, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 20, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.41, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 21, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.42, i32 64, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info { i32 512 } } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.43, i32 12, [4 x i32] [i32 36, i32 1, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 27, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 36, i8 2, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } } }>, [568 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 12000000, i64 24000000, i64 48000000]
@___asan_gen_.46 = private unnamed_addr constant [4 x i8] c"cgu\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 61, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 464, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 470, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 179, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 180, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 185, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"pll_od_encoding\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 171, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 208, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 233, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"x1000_otg_phy_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 161, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 241, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 247, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 253, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 260, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 266, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 273, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 279, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 285, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 292, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 300, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 308, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 316, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 322, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 329, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 336, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 345, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 352, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 358, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 379, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 385, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 391, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 397, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 403, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 409, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 415, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 421, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 427, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 433, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 439, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 445, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 451, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 364, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 370, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"x1000_cgu_clocks\00", align 1
@___asan_gen_.188 = private constant [35 x i8] c"../drivers/clk/ingenic/x1000-cgu.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 175, i32 42 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__of_table_x1000_cgu, ptr @x1000_cgu_init._entry, ptr @x1000_cgu_init._entry.3, ptr @x1000_cgu_init._entry_ptr, ptr @x1000_cgu_init._entry_ptr.5, ptr @cgu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pll_od_encoding, ptr @.str.9, ptr @.str.10, ptr @x1000_otg_phy_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @x1000_cgu_clocks], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_cgu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_cgu_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_od_encoding to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_otg_phy_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x1000_cgu_clocks to i32), i32 2280, i32 2848, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @x1000_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  tail call fastcc void @x1000_cgu_init(ptr noundef %np) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @x1000_cgu_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ingenic_cgu_new(ptr noundef nonnull @x1000_cgu_clocks, i32 noundef 38, ptr noundef %np) #6
  store ptr %call, ptr @cgu, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ingenic_cgu_register_clocks(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @cgu, align 4
  tail call void @ingenic_cgu_register_syscore_ops(ptr noundef %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1000_usb_phy_enable(ptr nocapture noundef readnone %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cgu, align 4
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 36
  %add.ptr2 = getelementptr i8, ptr %2, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %4 = or i32 %3, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %6 = and i32 %5, -12289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #6, !srcloc !108
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x1000_usb_phy_disable(ptr nocapture noundef readnone %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cgu, align 4
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 36
  %add.ptr2 = getelementptr i8, ptr %2, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %4 = and i32 %3, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %6 = or i32 %5, 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #6, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1000_usb_phy_is_enabled(ptr nocapture noundef readnone %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cgu, align 4
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 36
  %add.ptr2 = getelementptr i8, ptr %2, i32 60
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %7 = lshr i32 %6, 12
  %.lobit = and i32 %7, 1
  %8 = xor i32 %.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %8, %land.rhs ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1000_otg_phy_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cgu, align 4
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 72
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !106
  %4 = shl i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %and = and i32 %4, 50331648
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.epilog [
    i32 0, label %entry.cleanup_crit_edge
    i32 16777216, label %sw.bb2
    i32 33554432, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %sw.epilog ], [ 48000000, %sw.bb3 ], [ 24000000, %sw.bb2 ], [ 12000000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @x1000_otg_phy_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %req_rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000000, i32 %req_rate)
  %cmp = icmp ult i32 %req_rate, 18000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 36000000, i32 %req_rate)
  %cmp1 = icmp ult i32 %req_rate, 36000000
  %. = select i1 %cmp1, i32 24000000, i32 48000000
  %retval.0 = select i1 %cmp, i32 12000000, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x1000_otg_phy_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %req_rate, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %req_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %req_rate, label %entry.cleanup_crit_edge [
    i32 12000000, label %entry.do.body3_crit_edge
    i32 24000000, label %sw.bb1
    i32 48000000, label %sw.bb2
  ]

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

do.body3:                                         ; preds = %sw.bb2, %sw.bb1, %entry.do.body3_crit_edge
  %div_bits.0 = phi i32 [ 33554432, %sw.bb2 ], [ 16777216, %sw.bb1 ], [ 0, %entry.do.body3_crit_edge ]
  %1 = load ptr, ptr @cgu, align 4
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = load ptr, ptr @cgu, align 4
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %6 = and i32 %5, -4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or = or i32 %7, %div_bits.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = load ptr, ptr @cgu, align 4
  %base13 = getelementptr inbounds %struct.ingenic_cgu, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base13, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %8) #6, !srcloc !108
  %12 = load ptr, ptr @cgu, align 4
  %lock15 = getelementptr inbounds %struct.ingenic_cgu, ptr %12, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__of_table_x1000_cgu, !1, !"__of_table_x1000_cgu", i1 false, i1 false}
!1 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 480, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 464, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @x1000_cgu_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @x1000_cgu_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 470, i32 3}
!10 = !{ptr @x1000_cgu_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @x1000_cgu_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 179, i32 24}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 180, i32 24}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 185, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 208, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 233, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 241, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 247, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 253, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 260, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 266, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 273, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 279, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 285, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 292, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 300, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 308, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 316, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 322, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 329, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 336, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 345, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 352, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 358, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 379, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 385, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 391, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 397, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 403, i32 3}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 409, i32 3}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 415, i32 3}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 421, i32 3}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 427, i32 3}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 433, i32 3}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 439, i32 3}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 445, i32 3}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 451, i32 3}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 364, i32 3}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 370, i32 3}
!88 = !{ptr @x1000_cgu_clocks, !89, !"x1000_cgu_clocks", i1 false, i1 false}
!89 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 175, i32 42}
!90 = !{ptr @pll_od_encoding, !91, !"pll_od_encoding", i1 false, i1 false}
!91 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 171, i32 17}
!92 = !{ptr @x1000_otg_phy_ops, !93, !"x1000_otg_phy_ops", i1 false, i1 false}
!93 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 161, i32 29}
!94 = !{ptr @cgu, !95, !"cgu", i1 false, i1 false}
!95 = !{!"../drivers/clk/ingenic/x1000-cgu.c", i32 61, i32 28}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 2152131896}
!106 = !{i64 4559877}
!107 = !{i64 2152132815}
!108 = !{i64 4559459}
!109 = !{i64 2152133993}
!110 = !{i64 2152134992}
!111 = !{i64 2152136084}
!112 = !{i64 2152137007}
!113 = !{i64 2152138183}
!114 = !{i64 2152139174}
!115 = !{i64 2152139708}
!116 = !{i64 2152140248}
!117 = !{i64 2152140790}
!118 = !{i64 2152129346}
!119 = !{i64 2152130440}
!120 = !{i64 2152130698}
