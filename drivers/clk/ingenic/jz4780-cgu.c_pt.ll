; ModuleID = '/llk/IR_all_yes/drivers/clk/ingenic/jz4780-cgu.c_pt.bc'
source_filename = "../drivers/clk/ingenic/jz4780-cgu.c"
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
%struct.ingenic_clk = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_jz4780_cgu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-cgu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_cgu_of_clk_init_driver }, section "__clk_of_table", align 4
@cgu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jz4780_cgu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to initialise CGU\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jz4780_cgu_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/ingenic/jz4780-cgu.c\00", [63 x i8] zeroinitializer }, align 32
@jz4780_cgu_init._entry_ptr = internal global ptr @jz4780_cgu_init._entry, section ".printk_index", align 4
@jz4780_cgu_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to register CGU Clocks\0A\00", [59 x i8] zeroinitializer }, align 32
@jz4780_cgu_init._entry_ptr.5 = internal global ptr @jz4780_cgu_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@pll_od_encoding = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"epll\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vpll\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"otg_phy\00", [24 x i8] zeroinitializer }, align 32
@jz4780_otg_phy_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @jz4780_otg_phy_enable, ptr @jz4780_otg_phy_disable, ptr @jz4780_otg_phy_is_enabled, ptr null, ptr null, ptr null, ptr @jz4780_otg_phy_recalc_rate, ptr @jz4780_otg_phy_round_rate, ptr null, ptr null, ptr null, ptr @jz4780_otg_phy_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sclk_a\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpumux\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2cache\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahb0\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahb2_apb_mux\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahb2\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddr\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcd0pixclk\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcd1pixclk\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msc_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msc0\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msc1\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msc2\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uhc\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssi\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cim_mclk\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bch\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nemc\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otg0\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi0\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb0\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb1\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scc\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aic\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tssi0\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"owi\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kbc\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sadc\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi1\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi2\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pdma\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gps\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb2\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cim\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tve\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipu\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ddr0\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ddr1\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb3\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tssi1\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"compress\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aic1\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpvlc\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otg1\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ahb_mon\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb4\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"des\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x2d\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"core1\00", [26 x i8] zeroinitializer }, align 32
@jz4780_core1_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @jz4780_core1_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exclk_div512\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_ercs\00", [23 x i8] zeroinitializer }, align 32
@jz4780_cgu_clocks = internal constant { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }>, [1132 x i8] } { <{ %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } }, { ptr, i32, [4 x i32], { %struct.anon.42 } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } }> <{ %struct.ingenic_cgu_clk_info { ptr @.str.6, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.7, i32 1, [4 x i32] zeroinitializer, %union.anon.41 zeroinitializer }, %struct.ingenic_cgu_clk_info { ptr @.str.8, i32 2, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 16, i32 1, ptr @pll_od_encoding, i8 19, i8 13, i8 1, i8 13, i8 6, i8 1, i8 9, i8 4, i8 16, i32 16, i8 1, i8 0, i8 6, ptr null } } }, %struct.ingenic_cgu_clk_info { ptr @.str.9, i32 2, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 20, i32 1, ptr @pll_od_encoding, i8 19, i8 13, i8 1, i8 13, i8 6, i8 1, i8 9, i8 4, i8 16, i32 20, i8 1, i8 0, i8 6, ptr null } } }, %struct.ingenic_cgu_clk_info { ptr @.str.10, i32 2, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 24, i32 1, ptr @pll_od_encoding, i8 19, i8 13, i8 1, i8 13, i8 6, i8 1, i8 9, i8 4, i8 16, i32 24, i8 1, i8 0, i8 6, ptr null } } }, %struct.ingenic_cgu_clk_info { ptr @.str.11, i32 2, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], %union.anon.41 { %struct.ingenic_cgu_pll_info { i32 28, i32 1, ptr @pll_od_encoding, i8 19, i8 13, i8 1, i8 13, i8 6, i8 1, i8 9, i8 4, i8 16, i32 28, i8 1, i8 0, i8 6, ptr null } } }, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } } { ptr @.str.12, i32 128, [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1], { %struct.ingenic_cgu_custom_info, [32 x i8] } { %struct.ingenic_cgu_custom_info { ptr @jz4780_otg_phy_ops }, [32 x i8] undef } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.13, i32 8, [4 x i32] [i32 -1, i32 2, i32 0, i32 1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 30, i8 2 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.14, i32 8, [4 x i32] [i32 -1, i32 7, i32 3, i32 4], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 28, i8 2 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.15, i32 32, [4 x i32] [i32 8, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 0, i8 1, i8 4, i8 22, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.16, i32 32, [4 x i32] [i32 8, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 4, i8 1, i8 4, i8 -1, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.17, i32 40, [4 x i32] [i32 -1, i32 7, i32 3, i32 4], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 26, i8 2 }, %struct.ingenic_cgu_div_info { i32 0, i8 8, i8 1, i8 4, i8 21, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.18, i32 8, [4 x i32] [i32 -1, i32 7, i32 3, i32 1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 0, i8 24, i8 2 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.19, i32 32, [4 x i32] [i32 12, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 12, i8 1, i8 4, i8 20, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.20, i32 32, [4 x i32] [i32 12, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 0, i8 16, i8 1, i8 4, i8 20, i8 -1, i8 -1, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.21, i32 40, [4 x i32] [i32 -1, i32 7, i32 3, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 44, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 44, i8 0, i8 1, i8 4, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.22, i32 44, [4 x i32] [i32 7, i32 3, i32 4, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 2, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 48, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 48, i8 0, i8 1, i8 4, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.23, i32 40, [4 x i32] [i32 7, i32 4, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 96, i8 30, i8 1 }, %struct.ingenic_cgu_div_info { i32 96, i8 0, i8 1, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.24, i32 8, [4 x i32] [i32 0, i32 17, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 96, i8 31, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.25, i32 40, [4 x i32] [i32 7, i32 3, i32 5, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 84, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 84, i8 0, i8 1, i8 8, i8 28, i8 27, i8 26, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.26, i32 40, [4 x i32] [i32 7, i32 3, i32 5, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 100, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 100, i8 0, i8 1, i8 8, i8 28, i8 27, i8 26, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.27, i32 8, [4 x i32] [i32 -1, i32 7, i32 3, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 104, i8 30, i8 2 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.28, i32 36, [4 x i32] [i32 21, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 3, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 104, i8 0, i8 2, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.29, i32 36, [4 x i32] [i32 21, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 11, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 164, i8 0, i8 2, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.30, i32 36, [4 x i32] [i32 21, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 12, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info { i32 168, i8 0, i8 2, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.31, i32 44, [4 x i32] [i32 7, i32 3, i32 4, i32 6], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 24, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 108, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 108, i8 0, i8 1, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.32, i32 40, [4 x i32] [i32 7, i32 3, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 116, i8 30, i8 1 }, %struct.ingenic_cgu_div_info { i32 116, i8 0, i8 1, i8 8, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.33, i32 8, [4 x i32] [i32 0, i32 26, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 116, i8 31, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.34, i32 40, [4 x i32] [i32 7, i32 3, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 124, i8 31, i8 1 }, %struct.ingenic_cgu_div_info { i32 124, i8 0, i8 1, i8 8, i8 30, i8 29, i8 28, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.35, i32 40, [4 x i32] [i32 7, i32 3, i32 4, i32 5], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 132, i8 29, i8 2 }, %struct.ingenic_cgu_div_info { i32 132, i8 0, i8 1, i8 8, i8 28, i8 27, i8 26, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.36, i32 12, [4 x i32] [i32 0, i32 29, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 3, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 132, i8 31, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.37, i32 44, [4 x i32] [i32 -1, i32 7, i32 3, i32 4], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 4, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 136, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 136, i8 0, i8 1, i8 4, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.38, i32 44, [4 x i32] [i32 7, i32 3, i32 5, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 9, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 140, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 140, i8 0, i8 1, i8 8, i8 29, i8 28, i8 26, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.39, i32 44, [4 x i32] [i32 -1, i32 7, i32 3, i32 4], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 1, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info { i32 172, i8 30, i8 2 }, %struct.ingenic_cgu_div_info { i32 172, i8 0, i8 1, i8 4, i8 29, i8 28, i8 27, i8 0, ptr null }, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.40, i32 4, [4 x i32] [i32 13, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 0, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.41, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 2, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.42, i32 4, [4 x i32] [i32 27, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 4, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.43, i32 4, [4 x i32] [i32 14, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 5, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.44, i32 4, [4 x i32] [i32 14, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 6, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.45, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 7, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.46, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 8, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.47, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 9, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.48, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 10, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.49, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 13, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.50, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 14, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.51, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 15, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.52, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 16, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.53, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 17, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.54, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 18, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.55, i32 4, [4 x i32] [i32 27, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 19, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.56, i32 4, [4 x i32] [i32 27, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 20, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.57, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 21, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.58, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 22, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.59, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 23, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.60, i32 4, [4 x i32] [i32 14, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 24, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.61, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 26, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.62, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 28, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.63, i32 4, [4 x i32] [i32 56, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 27, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.64, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 29, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.65, i32 4, [4 x i32] [i32 15, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 30, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.66, i32 4, [4 x i32] [i32 15, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 32, i8 31, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.67, i32 4, [4 x i32] [i32 14, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 0, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.68, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 1, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.69, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 5, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.70, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 6, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.71, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 7, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.72, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 8, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.73, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 10, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.74, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 11, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.75, i32 4, [4 x i32] [i32 14, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 12, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.76, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 13, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.77, i32 4, [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info { i32 40, i8 14, i8 0, i16 0 }, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } }, { ptr, i32, [4 x i32], { %struct.ingenic_cgu_custom_info, [32 x i8] } } { ptr @.str.78, i32 128, [4 x i32] [i32 9, i32 -1, i32 -1, i32 -1], { %struct.ingenic_cgu_custom_info, [32 x i8] } { %struct.ingenic_cgu_custom_info { ptr @jz4780_core1_ops }, [32 x i8] undef } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.79, i32 64, [4 x i32] zeroinitializer, { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info zeroinitializer, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info { i32 512 } } } }, { ptr, i32, [4 x i32], { %struct.anon.42 } } { ptr @.str.80, i32 12, [4 x i32] [i32 73, i32 1, i32 0, i32 0], { %struct.anon.42 } { %struct.anon.42 { %struct.ingenic_cgu_gate_info zeroinitializer, %struct.ingenic_cgu_mux_info { i32 36, i8 2, i8 1 }, %struct.ingenic_cgu_div_info zeroinitializer, %struct.ingenic_cgu_fixdiv_info zeroinitializer } } } }>, [1132 x i8] zeroinitializer }, align 32
@jz4780_core1_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Wait for power up core1 timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jz4780_core1_enable\00", [44 x i8] zeroinitializer }, align 32
@jz4780_core1_enable._entry_ptr = internal global ptr @jz4780_core1_enable._entry, section ".printk_index", align 4
@switch.table.jz4780_otg_phy_recalc_rate = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12000000, i32 24000000, i32 48000000, i32 19200000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 12000000, i64 19200000, i64 24000000, i64 48000000]
@___asan_gen_.84 = private unnamed_addr constant [4 x i8] c"cgu\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 103, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 781, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 787, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 268, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 269, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 293, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"pll_od_encoding\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 259, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 299, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 305, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 311, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 321, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"jz4780_otg_phy_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 213, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 329, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 336, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 343, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 349, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 355, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 363, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 370, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 376, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 382, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 389, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 398, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 405, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 411, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 419, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 427, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 433, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 440, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 447, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 454, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 463, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 470, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 476, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 483, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 491, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 498, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 507, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 516, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 539, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 545, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 551, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 557, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 563, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 569, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 575, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 581, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 587, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 593, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 599, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 605, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 611, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 617, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 623, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 629, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 635, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 641, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 647, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 653, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 659, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 665, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 671, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 677, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 683, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 689, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 695, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 701, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 707, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 713, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 719, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 725, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 731, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 737, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 743, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 749, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 755, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 761, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 767, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"jz4780_core1_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 255, i32 29 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 525, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 531, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [18 x i8] c"jz4780_cgu_clocks\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 264, i32 42 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [36 x i8] c"../drivers/clk/ingenic/jz4780-cgu.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 248, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [40 x i8] c"switch.table.jz4780_otg_phy_recalc_rate\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__of_table_jz4780_cgu, ptr @jz4780_cgu_init._entry, ptr @jz4780_cgu_init._entry.3, ptr @jz4780_cgu_init._entry_ptr, ptr @jz4780_cgu_init._entry_ptr.5, ptr @jz4780_core1_enable._entry, ptr @jz4780_core1_enable._entry_ptr, ptr @cgu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pll_od_encoding, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @jz4780_otg_phy_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @jz4780_core1_ops, ptr @.str.79, ptr @.str.80, ptr @jz4780_cgu_clocks, ptr @.str.82, ptr @.str.83, ptr @switch.table.jz4780_otg_phy_recalc_rate], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_cgu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_cgu_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_od_encoding to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_otg_phy_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_core1_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_cgu_clocks to i32), i32 4500, i32 5632, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_core1_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.jz4780_otg_phy_recalc_rate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_cgu_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  tail call fastcc void @jz4780_cgu_init(ptr noundef %np) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jz4780_cgu_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ingenic_cgu_new(ptr noundef nonnull @jz4780_cgu_clocks, i32 noundef 75, ptr noundef %np) #6
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
define internal i32 @jz4780_otg_phy_enable(ptr nocapture noundef readnone %hw) #3 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  %4 = or i32 %3, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  %6 = and i32 %5, -12289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #6, !srcloc !189
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_otg_phy_disable(ptr nocapture noundef readnone %hw) #3 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  %4 = and i32 %3, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %6 = or i32 %5, 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #6, !srcloc !189
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_otg_phy_is_enabled(ptr nocapture noundef readnone %hw) #3 align 64 {
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
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  %7 = lshr i32 %6, 12
  %.lobit = and i32 %7, 1
  %8 = xor i32 %.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %8, %land.rhs ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_otg_phy_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cgu, align 4
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 72
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  %and = and i32 %3, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.jz4780_otg_phy_recalc_rate, i32 0, i32 %and
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jz4780_otg_phy_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %req_rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15600000, i32 %req_rate)
  %cmp = icmp ult i32 %req_rate, 15600000
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21600000, i32 %req_rate)
  %cmp1 = icmp ult i32 %req_rate, 21600000
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36000000, i32 %req_rate)
  %cmp4 = icmp ult i32 %req_rate, 36000000
  %. = select i1 %cmp4, i32 24000000, i32 48000000
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 12000000, %entry.return_crit_edge ], [ 19200000, %if.end.return_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_otg_phy_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %req_rate, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %req_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %req_rate, label %entry.cleanup_crit_edge [
    i32 12000000, label %entry.do.body4_crit_edge
    i32 19200000, label %sw.bb1
    i32 24000000, label %sw.bb2
    i32 48000000, label %sw.bb3
  ]

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.body4:                                         ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.do.body4_crit_edge
  %div_bits.0 = phi i32 [ 33554432, %sw.bb3 ], [ 16777216, %sw.bb2 ], [ 50331648, %sw.bb1 ], [ 0, %entry.do.body4_crit_edge ]
  %1 = load ptr, ptr @cgu, align 4
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = load ptr, ptr @cgu, align 4
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %6 = and i32 %5, -4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or = or i32 %7, %div_bits.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = load ptr, ptr @cgu, align 4
  %base14 = getelementptr inbounds %struct.ingenic_cgu, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base14, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %8) #6, !srcloc !189
  %12 = load ptr, ptr @cgu, align 4
  %lock16 = getelementptr inbounds %struct.ingenic_cgu, ptr %12, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body4 ], [ -22, %entry.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_core1_enable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cgu1 = getelementptr inbounds %struct.ingenic_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cgu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgu1, align 4
  %lock = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base = getelementptr inbounds %struct.ingenic_cgu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %5 = and i32 %4, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %5) #6, !srcloc !189
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  %11 = and i32 %10, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %11) #6, !srcloc !189
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  %call31 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call31, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 246) #6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr47106 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47106) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not108 = icmp eq i32 %17, 0
  br i1 %tobool.not108, label %entry.cleanup_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then69.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call55 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call55, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call55, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then69

if.then69:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  %21 = and i32 %20, 8
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then69.cleanup_crit_edge, label %if.then69.land.lhs.true_crit_edge

if.then69.land.lhs.true_crit_edge:                ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr63 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #6, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool73.not = icmp eq i32 %25, 0
  br i1 %tobool73.not, label %for.end.cleanup_crit_edge, label %do.end79

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %for.end.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end79 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__of_table_jz4780_cgu, !1, !"__of_table_jz4780_cgu", i1 false, i1 false}
!1 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 793, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 781, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jz4780_cgu_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jz4780_cgu_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 787, i32 3}
!10 = !{ptr @jz4780_cgu_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @jz4780_cgu_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 268, i32 25}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 269, i32 25}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 293, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 299, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 305, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 311, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 321, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 329, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 336, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 343, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 349, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 355, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 363, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 370, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 376, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 382, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 389, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 398, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 405, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 411, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 419, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 427, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 433, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 440, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 447, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 454, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 463, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 470, i32 3}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 476, i32 3}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 483, i32 3}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 491, i32 3}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 498, i32 3}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 507, i32 3}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 516, i32 3}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 539, i32 3}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 545, i32 3}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 551, i32 3}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 557, i32 3}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 563, i32 3}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 569, i32 3}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 575, i32 3}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 581, i32 3}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 587, i32 3}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 593, i32 3}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 599, i32 3}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 605, i32 3}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 611, i32 3}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 617, i32 3}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 623, i32 3}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 629, i32 3}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 635, i32 3}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 641, i32 3}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 647, i32 3}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 653, i32 3}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 659, i32 3}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 665, i32 3}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 671, i32 3}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 677, i32 3}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 683, i32 3}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 689, i32 3}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 695, i32 3}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 701, i32 3}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 707, i32 3}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 713, i32 3}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 719, i32 3}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 725, i32 3}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 731, i32 3}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 737, i32 3}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 743, i32 3}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 749, i32 3}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 755, i32 3}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 761, i32 3}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 767, i32 3}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 525, i32 3}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 531, i32 3}
!162 = !{ptr @jz4780_cgu_clocks, !163, !"jz4780_cgu_clocks", i1 false, i1 false}
!163 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 264, i32 42}
!164 = !{ptr @pll_od_encoding, !165, !"pll_od_encoding", i1 false, i1 false}
!165 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 259, i32 17}
!166 = !{ptr @jz4780_otg_phy_ops, !167, !"jz4780_otg_phy_ops", i1 false, i1 false}
!167 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 213, i32 29}
!168 = !{ptr @jz4780_core1_ops, !169, !"jz4780_core1_ops", i1 false, i1 false}
!169 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 255, i32 29}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 248, i32 3}
!172 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @jz4780_core1_enable._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @jz4780_core1_enable._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @cgu, !176, !"cgu", i1 false, i1 false}
!176 = !{!"../drivers/clk/ingenic/jz4780-cgu.c", i32 103, i32 28}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 2152148982}
!187 = !{i64 4568021}
!188 = !{i64 2152149901}
!189 = !{i64 4567603}
!190 = !{i64 2152151079}
!191 = !{i64 2152152078}
!192 = !{i64 2152153170}
!193 = !{i64 2152154093}
!194 = !{i64 2152155269}
!195 = !{i64 2152156260}
!196 = !{i64 2152156794}
!197 = !{i64 2152157334}
!198 = !{i64 2152157876}
!199 = !{i64 2152146360}
!200 = !{i64 2152147526}
!201 = !{i64 2152147784}
!202 = !{i64 2152159972}
!203 = !{i64 2152160274}
!204 = !{i64 2152160935}
!205 = !{i64 2152161240}
!206 = !{i64 2152163179}
!207 = !{i64 2152163661}
