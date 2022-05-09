; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clk-3xxx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-3xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }

@clkhwops_omap3430es2_iclk_ssi_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_ssi_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, [16 x i8] zeroinitializer }, align 32
@clkhwops_omap3430es2_dss_usbhost_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_dss_usbhost_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@clkhwops_omap3430es2_iclk_dss_usbhost_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_dss_usbhost_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, [16 x i8] zeroinitializer }, align 32
@clkhwops_omap3430es2_iclk_hsotgusb_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_hsotgusb_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, [16 x i8] zeroinitializer }, align 32
@clkhwops_am35xx_ipss_module_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @am35xx_clk_find_idlest, ptr @am35xx_clk_find_companion, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@clkhwops_am35xx_ipss_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @am35xx_clk_ipss_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll5_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll5_m2_ck\00", [20 x i8] zeroinitializer }, align 32
@omap3xxx_clks = internal global { [3 x %struct.ti_dt_clk], [44 x i8] } { [3 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.8, ptr null, ptr null }, ptr @.str.9 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.10, ptr null, ptr null }, ptr @.str.11 }, %struct.ti_dt_clk zeroinitializer], [44 x i8] zeroinitializer }, align 32
@am35xx_clks = internal global { [5 x %struct.ti_dt_clk], [52 x i8] } { [5 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr null }, ptr @.str.13 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.14, ptr null, ptr null }, ptr @.str.15 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.16, ptr null, ptr null }, ptr @.str.17 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.18, ptr null, ptr null }, ptr @.str.19 }, %struct.ti_dt_clk zeroinitializer], [52 x i8] zeroinitializer }, align 32
@omap36xx_am35xx_omap3430es2plus_clks = internal global { [3 x %struct.ti_dt_clk], [44 x i8] } { [3 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.20, ptr null, ptr null }, ptr @.str.21 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.22, ptr null, ptr null }, ptr @.str.23 }, %struct.ti_dt_clk zeroinitializer], [44 x i8] zeroinitializer }, align 32
@omap3430es1_clks = internal global { [7 x %struct.ti_dt_clk], [60 x i8] } { [7 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.24, ptr null, ptr null }, ptr @.str.25 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.26, ptr null, ptr null }, ptr @.str.27 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr null }, ptr @.str.28 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.29, ptr null, ptr null }, ptr @.str.30 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.20, ptr null, ptr null }, ptr @.str.31 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.22, ptr null, ptr null }, ptr @.str.32 }, %struct.ti_dt_clk zeroinitializer], [60 x i8] zeroinitializer }, align 32
@omap36xx_omap3430es2plus_clks = internal global { [5 x %struct.ti_dt_clk], [52 x i8] } { [5 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.24, ptr null, ptr null }, ptr @.str.33 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.26, ptr null, ptr null }, ptr @.str.34 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr null }, ptr @.str.35 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.29, ptr null, ptr null }, ptr @.str.36 }, %struct.ti_dt_clk zeroinitializer], [52 x i8] zeroinitializer }, align 32
@enable_init_clks = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39], [20 x i8] zeroinitializer }, align 32
@omap3xxx_dt_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016Clocking rate (Crystal/Core/MPU): %ld.%01ld/%ld/%ld MHz\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap3xxx_dt_clk_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/ti/clk-3xxx.c\00", [38 x i8] zeroinitializer }, align 32
@omap3xxx_dt_clk_init._entry_ptr = internal global ptr @omap3xxx_dt_clk_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"osc_sys_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"core_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_fck\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_32k_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap_32k_fck\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_sys_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sys_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hsotgusb_ick\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hsotgusb_ick_am35xx\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hsotgusb_fck\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hsotgusb_fck_am35xx\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_ick\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uart4_ick_am35xx\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_fck\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uart4_fck_am35xx\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dss1_alwon_fck\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dss1_alwon_fck_3430es2\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dss_ick\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dss_ick_3430es2\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssi_ssr_fck\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssi_ssr_fck_3430es1\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssi_sst_fck\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssi_sst_fck_3430es1\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hsotgusb_ick_3430es1\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_ick\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssi_ick_3430es1\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dss1_alwon_fck_3430es1\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dss_ick_3430es1\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssi_ssr_fck_3430es2\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssi_sst_fck_3430es2\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hsotgusb_ick_3430es2\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssi_ick_3430es2\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdrc_ick\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmc_fck\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omapctrl_ick\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.40 = private unnamed_addr constant [35 x i8] c"clkhwops_omap3430es2_iclk_ssi_wait\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 66, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [38 x i8] c"clkhwops_omap3430es2_dss_usbhost_wait\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 101, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [43 x i8] c"clkhwops_omap3430es2_iclk_dss_usbhost_wait\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 106, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [40 x i8] c"clkhwops_omap3430es2_iclk_hsotgusb_wait\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 137, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [33 x i8] c"clkhwops_am35xx_ipss_module_wait\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 190, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"clkhwops_am35xx_ipss_wait\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 219, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 295, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 300, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"omap3xxx_clks\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 226, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"am35xx_clks\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 256, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant [37 x i8] c"omap36xx_am35xx_omap3430es2plus_clks\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 250, i32 25 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"omap3430es1_clks\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 240, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"omap36xx_omap3430es2plus_clks\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 232, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"enable_init_clks\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 264, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 336, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 227, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 228, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 257, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 258, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 259, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 260, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 251, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 252, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 241, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 242, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 243, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 244, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 245, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 246, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 233, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 234, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 235, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 236, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 265, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 266, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [29 x i8] c"../drivers/clk/ti/clk-3xxx.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 267, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @omap3xxx_dt_clk_init._entry, ptr @omap3xxx_dt_clk_init._entry_ptr, ptr @clkhwops_omap3430es2_iclk_ssi_wait, ptr @clkhwops_omap3430es2_dss_usbhost_wait, ptr @clkhwops_omap3430es2_iclk_dss_usbhost_wait, ptr @clkhwops_omap3430es2_iclk_hsotgusb_wait, ptr @clkhwops_am35xx_ipss_module_wait, ptr @clkhwops_am35xx_ipss_wait, ptr @.str, ptr @.str.1, ptr @omap3xxx_clks, ptr @am35xx_clks, ptr @omap36xx_am35xx_omap3430es2plus_clks, ptr @omap3430es1_clks, ptr @omap36xx_omap3430es2plus_clks, ptr @enable_init_clks, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_omap3430es2_iclk_ssi_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_omap3430es2_dss_usbhost_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_omap3430es2_iclk_dss_usbhost_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_omap3430es2_iclk_hsotgusb_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_am35xx_ipss_module_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_am35xx_ipss_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35xx_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_am35xx_omap3430es2plus_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3430es1_clks to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_omap3430es2plus_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_init_clks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_dt_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap3430es2_clk_ssi_find_idlest(ptr nocapture noundef readonly %clk, ptr nocapture noundef %idlest_reg, ptr nocapture noundef writeonly %idlest_bit, ptr nocapture noundef writeonly %idlest_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %idlest_reg, align 4
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %3 = lshr i64 %1, 16
  %4 = trunc i64 %3 to i16
  %5 = and i16 %4, -241
  %6 = or i16 %5, 32
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %offset, align 4
  %8 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %idlest_bit, align 1
  %9 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %idlest_val, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_dflt_find_companion(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clkt_iclk_allow_idle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clkt_iclk_deny_idle(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap3430es2_clk_dss_usbhost_find_idlest(ptr nocapture noundef readonly %clk, ptr nocapture noundef %idlest_reg, ptr nocapture noundef writeonly %idlest_bit, ptr nocapture noundef writeonly %idlest_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %idlest_reg, align 4
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %3 = lshr i64 %1, 16
  %4 = trunc i64 %3 to i16
  %5 = and i16 %4, -241
  %6 = or i16 %5, 32
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %offset, align 4
  %8 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %idlest_bit, align 1
  %9 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %idlest_val, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap3430es2_clk_hsotgusb_find_idlest(ptr nocapture noundef readonly %clk, ptr nocapture noundef %idlest_reg, ptr nocapture noundef writeonly %idlest_bit, ptr nocapture noundef writeonly %idlest_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %idlest_reg, align 4
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %3 = lshr i64 %1, 16
  %4 = trunc i64 %3 to i16
  %5 = and i16 %4, -241
  %6 = or i16 %5, 32
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %offset, align 4
  %8 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %idlest_bit, align 1
  %9 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %idlest_val, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @am35xx_clk_find_idlest(ptr nocapture noundef readonly %clk, ptr nocapture noundef writeonly %idlest_reg, ptr nocapture noundef writeonly %idlest_bit, ptr nocapture noundef writeonly %idlest_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %idlest_reg, align 4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 5
  %3 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_bit, align 4
  %add = add i8 %4, 4
  %5 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %add, ptr %idlest_bit, align 1
  %6 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %idlest_val, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @am35xx_clk_find_companion(ptr nocapture noundef readonly %clk, ptr nocapture noundef writeonly %other_reg, ptr nocapture noundef writeonly %other_bit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %other_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %other_reg, align 4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 5
  %3 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_bit, align 4
  %5 = and i8 %4, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %storemerge.v = select i1 %tobool.not, i8 -8, i8 8
  %storemerge = add i8 %storemerge.v, %4
  %6 = ptrtoint ptr %other_bit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge, ptr %other_bit, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @am35xx_clk_ipss_find_idlest(ptr nocapture noundef readonly %clk, ptr nocapture noundef %idlest_reg, ptr nocapture noundef writeonly %idlest_bit, ptr nocapture noundef writeonly %idlest_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %idlest_reg, align 4
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %3 = lshr i64 %1, 16
  %4 = trunc i64 %3 to i16
  %5 = and i16 %4, -241
  %6 = or i16 %5, 32
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %offset, align 4
  %8 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %idlest_bit, align 1
  %9 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %idlest_val, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_clk_lock_dpll5() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %call, i32 noundef 960000000) #4
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %call3 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.1) #4
  %call.i10 = tail call i32 @clk_prepare(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i14, label %clk_prepare_enable.exit.clk_prepare_enable.exit16_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit16_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit16

if.end.i14:                                       ; preds = %clk_prepare_enable.exit
  %call1.i12 = tail call i32 @clk_enable(ptr noundef %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool2.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool2.not.i13, label %if.end.i14.clk_prepare_enable.exit16_crit_edge, label %if.then3.i15

if.end.i14.clk_prepare_enable.exit16_crit_edge:   ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit16

if.then3.i15:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call3) #4
  br label %clk_prepare_enable.exit16

clk_prepare_enable.exit16:                        ; preds = %if.then3.i15, %if.end.i14.clk_prepare_enable.exit16_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit16_crit_edge
  %call5 = tail call i32 @clk_set_rate(ptr noundef %call3, i32 noundef 120000000) #4
  tail call void @clk_disable(ptr noundef %call3) #4
  tail call void @clk_unprepare(ptr noundef %call3) #4
  tail call void @clk_disable(ptr noundef %call) #4
  tail call void @clk_unprepare(ptr noundef %call) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3430_dt_clk_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @omap3xxx_dt_clk_init(i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3xxx_dt_clk_init(i32 noundef %soc_type) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %soc_type)
  %cmp3 = icmp eq i32 %soc_type, 1
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @omap3xxx_clks) #4
  %0 = zext i32 %soc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %soc_type, label %entry.if.end23_crit_edge [
    i32 0, label %if.then14.thread
    i32 3, label %entry.if.then14_crit_edge
    i32 2, label %entry.if.then14_crit_edge6
    i32 1, label %entry.if.end23.sink.split_crit_edge
  ]

entry.if.end23.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.sink.split

entry.if.then14_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then14.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @am35xx_clks) #4
  br label %if.end23.sink.split

if.then14:                                        ; preds = %entry.if.then14_crit_edge, %entry.if.then14_crit_edge6
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @omap36xx_am35xx_omap3430es2plus_clks) #4
  %1 = and i32 %soc_type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp eq i32 %1, 2
  br i1 %switch, label %if.then14.if.end23.sink.split_crit_edge, label %if.then14.if.end23_crit_edge

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then14.if.end23.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then14.if.end23.sink.split_crit_edge, %if.then14.thread, %entry.if.end23.sink.split_crit_edge
  %omap3430es1_clks.sink = phi ptr [ @omap36xx_am35xx_omap3430es2plus_clks, %if.then14.thread ], [ @omap3430es1_clks, %entry.if.end23.sink.split_crit_edge ], [ @omap36xx_omap3430es2plus_clks, %if.then14.if.end23.sink.split_crit_edge ]
  tail call void @ti_dt_clocks_register(ptr noundef nonnull %omap3430es1_clks.sink) #4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then14.if.end23_crit_edge, %entry.if.end23_crit_edge
  %call = tail call i32 @omap2_clk_disable_autoidle_all() #4
  tail call void @ti_clk_add_aliases() #4
  tail call void @omap2_clk_enable_init_clocks(ptr noundef nonnull @enable_init_clks, i8 noundef zeroext 3) #4
  %call24 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.5) #4
  %call25 = tail call i32 @clk_get_rate(ptr noundef %call24) #4
  %div = udiv i32 %call25, 1000000
  %call26 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.5) #4
  %call27 = tail call i32 @clk_get_rate(ptr noundef %call26) #4
  %div28 = udiv i32 %call27, 100000
  %rem.lhs.trunc = trunc i32 %div28 to i16
  %rem4 = urem i16 %rem.lhs.trunc, 10
  %rem.zext = zext i16 %rem4 to i32
  %call29 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.6) #4
  %call30 = tail call i32 @clk_get_rate(ptr noundef %call29) #4
  %div31 = udiv i32 %call30, 1000000
  %call32 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.7) #4
  %call33 = tail call i32 @clk_get_rate(ptr noundef %call32) #4
  %div34 = udiv i32 %call33, 1000000
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %div, i32 noundef %rem.zext, i32 noundef %div31, i32 noundef %div34) #8
  br i1 %cmp3, label %if.end23.if.end38_crit_edge, label %if.then37

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @omap3_clk_lock_dpll5() #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end23.if.end38_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3630_dt_clk_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @omap3xxx_dt_clk_init(i32 noundef 3) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @am35xx_dt_clk_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @omap3xxx_dt_clk_init(i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !50, !52, !53, !55, !57, !58, !60, !61, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @clkhwops_omap3430es2_iclk_ssi_wait, !1, !"clkhwops_omap3430es2_iclk_ssi_wait", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 66, i32 30}
!2 = !{ptr @clkhwops_omap3430es2_dss_usbhost_wait, !3, !"clkhwops_omap3430es2_dss_usbhost_wait", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 101, i32 30}
!4 = !{ptr @clkhwops_omap3430es2_iclk_dss_usbhost_wait, !5, !"clkhwops_omap3430es2_iclk_dss_usbhost_wait", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 106, i32 30}
!6 = !{ptr @clkhwops_omap3430es2_iclk_hsotgusb_wait, !7, !"clkhwops_omap3430es2_iclk_hsotgusb_wait", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 137, i32 30}
!8 = !{ptr @clkhwops_am35xx_ipss_module_wait, !9, !"clkhwops_am35xx_ipss_module_wait", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 190, i32 30}
!10 = !{ptr @clkhwops_am35xx_ipss_wait, !11, !"clkhwops_am35xx_ipss_wait", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 219, i32 30}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 295, i32 28}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 300, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 336, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @omap3xxx_dt_clk_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap3xxx_dt_clk_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 227, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 228, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @omap3xxx_clks, !32, !"omap3xxx_clks", i1 false, i1 false}
!32 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 226, i32 25}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 257, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 258, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 259, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 260, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @am35xx_clks, !46, !"am35xx_clks", i1 false, i1 false}
!46 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 256, i32 25}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 251, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 252, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @omap36xx_am35xx_omap3430es2plus_clks, !54, !"omap36xx_am35xx_omap3430es2plus_clks", i1 false, i1 false}
!54 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 250, i32 25}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 241, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 242, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 243, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 244, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 245, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 246, i32 2}
!70 = !{ptr @omap3430es1_clks, !71, !"omap3430es1_clks", i1 false, i1 false}
!71 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 240, i32 25}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 233, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 234, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 235, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 236, i32 2}
!80 = !{ptr @omap36xx_omap3430es2plus_clks, !81, !"omap36xx_omap3430es2plus_clks", i1 false, i1 false}
!81 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 232, i32 25}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 265, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 266, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 267, i32 2}
!88 = !{ptr @enable_init_clks, !89, !"enable_init_clks", i1 false, i1 false}
!89 = !{!"../drivers/clk/ti/clk-3xxx.c", i32 264, i32 20}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
