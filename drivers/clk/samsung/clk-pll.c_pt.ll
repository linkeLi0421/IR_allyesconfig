; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_clk_pll = type { %struct.clk_hw, ptr, ptr, i16, i16, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_pll__167_76_samsung_pll_disable_early_timeout3 = internal global ptr @samsung_pll_disable_early_timeout, section ".initcall3.init", align 4
@pll_early_timeout = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_samsung_clk_register_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: could not allocate pll clk %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_samsung_clk_register_pll\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/samsung/clk-pll.c\00", [34 x i8] zeroinitializer }, align 32
@_samsung_clk_register_pll._entry_ptr = internal global ptr @_samsung_clk_register_pll._entry, section ".printk_index", align 4
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: could not allocate rate table for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@samsung_pll2126_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2126_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll3000_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3000_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll35xx_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll35xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll35xx_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll35xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll35xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll0822x_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0822x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll0822x_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0822x_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll0822x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll45xx_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll45xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll45xx_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll45xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll45xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll36xx_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll36xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll36xx_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll36xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll36xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll0831x_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0831x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll0831x_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0831x_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll0831x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll6552_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll6552_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll6553_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll6553_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll46xx_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll46xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll46xx_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll46xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll46xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_s3c2410_mpll_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_s3c2410_mpll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_s3c2410_upll_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_upll_enable, ptr @samsung_s3c2410_upll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_s3c2410_upll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_upll_enable, ptr @samsung_s3c2410_upll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_s3c2440_mpll_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2440_mpll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_s3c2440_mpll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2440_mpll_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll2550x_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2550x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll2550xx_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2550xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll2550xx_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2550xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll2550xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll2650x_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll2650x_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650x_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll2650x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll2650xx_clk_min_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@samsung_pll2650xx_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll2650xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@_samsung_clk_register_pll._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: Unknown pll type for pll clk %s\0A\00", [57 x i8] zeroinitializer }, align 32
@_samsung_clk_register_pll._entry_ptr.6 = internal global ptr @_samsung_clk_register_pll._entry.4, section ".printk_index", align 4
@_samsung_clk_register_pll._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to register pll clock %s : %d\0A\00", [52 x i8] zeroinitializer }, align 32
@_samsung_clk_register_pll._entry_ptr.9 = internal global ptr @_samsung_clk_register_pll._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@timekeeping_suspended = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@samsung_pll_lock_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Could not lock PLL %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung_pll_lock_wait\00", [42 x i8] zeroinitializer }, align 32
@samsung_pll_lock_wait._entry_ptr = internal global ptr @samsung_pll_lock_wait._entry, section ".printk_index", align 4
@samsung_pll35xx_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Invalid rate : %lu for pll clk %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_pll35xx_set_rate\00", [39 x i8] zeroinitializer }, align 32
@samsung_pll35xx_set_rate._entry_ptr = internal global ptr @samsung_pll35xx_set_rate._entry, section ".printk_index", align 4
@samsung_pll0822x_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_pll0822x_set_rate\00", [38 x i8] zeroinitializer }, align 32
@samsung_pll0822x_set_rate._entry_ptr = internal global ptr @samsung_pll0822x_set_rate._entry, section ".printk_index", align 4
@samsung_pll45xx_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.15, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_pll45xx_set_rate\00", [39 x i8] zeroinitializer }, align 32
@samsung_pll45xx_set_rate._entry_ptr = internal global ptr @samsung_pll45xx_set_rate._entry, section ".printk_index", align 4
@samsung_pll36xx_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.16, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_pll36xx_set_rate\00", [39 x i8] zeroinitializer }, align 32
@samsung_pll36xx_set_rate._entry_ptr = internal global ptr @samsung_pll36xx_set_rate._entry, section ".printk_index", align 4
@samsung_pll0831x_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_pll0831x_set_rate\00", [38 x i8] zeroinitializer }, align 32
@samsung_pll0831x_set_rate._entry_ptr = internal global ptr @samsung_pll0831x_set_rate._entry, section ".printk_index", align 4
@samsung_pll46xx_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.18, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_pll46xx_set_rate\00", [39 x i8] zeroinitializer }, align 32
@samsung_pll46xx_set_rate._entry_ptr = internal global ptr @samsung_pll46xx_set_rate._entry, section ".printk_index", align 4
@samsung_s3c2410_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"samsung_s3c2410_pll_set_rate\00", [35 x i8] zeroinitializer }, align 32
@samsung_s3c2410_pll_set_rate._entry_ptr = internal global ptr @samsung_s3c2410_pll_set_rate._entry, section ".printk_index", align 4
@samsung_pll2550xx_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.20, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung_pll2550xx_set_rate\00", [37 x i8] zeroinitializer }, align 32
@samsung_pll2550xx_set_rate._entry_ptr = internal global ptr @samsung_pll2550xx_set_rate._entry, section ".printk_index", align 4
@samsung_pll2650x_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.21, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_pll2650x_set_rate\00", [38 x i8] zeroinitializer }, align 32
@samsung_pll2650x_set_rate._entry_ptr = internal global ptr @samsung_pll2650x_set_rate._entry, section ".printk_index", align 4
@samsung_pll2650xx_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.22, ptr @.str.2, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung_pll2650xx_set_rate\00", [37 x i8] zeroinitializer }, align 32
@samsung_pll2650xx_set_rate._entry_ptr = internal global ptr @samsung_pll2650xx_set_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [31 x i64] [i64 29, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"pll_early_timeout\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1434, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1454, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"samsung_pll2126_clk_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 167, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"samsung_pll3000_clk_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 200, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"samsung_pll35xx_clk_min_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 302, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"samsung_pll35xx_clk_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 294, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [29 x i8] c"samsung_pll0822x_clk_min_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 497, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"samsung_pll0822x_clk_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 489, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"samsung_pll45xx_clk_min_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 716, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"samsung_pll45xx_clk_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 710, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"samsung_pll36xx_clk_min_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 414, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"samsung_pll36xx_clk_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 406, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant [29 x i8] c"samsung_pll0831x_clk_min_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 594, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [25 x i8] c"samsung_pll0831x_clk_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 586, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"samsung_pll6552_clk_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 901, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"samsung_pll6553_clk_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 939, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant [28 x i8] c"samsung_pll46xx_clk_min_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 861, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"samsung_pll46xx_clk_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 855, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant [33 x i8] c"samsung_s3c2410_mpll_clk_min_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1064, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant [29 x i8] c"samsung_s3c2410_mpll_clk_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1082, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant [33 x i8] c"samsung_s3c2410_upll_clk_min_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1070, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"samsung_s3c2410_upll_clk_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1090, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant [33 x i8] c"samsung_s3c2440_mpll_clk_min_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1076, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant [29 x i8] c"samsung_s3c2440_mpll_clk_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1098, i32 29 }
@___asan_gen_.106 = private unnamed_addr constant [25 x i8] c"samsung_pll2550x_clk_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1140, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"samsung_pll2550xx_clk_min_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1237, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"samsung_pll2550xx_clk_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1231, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [29 x i8] c"samsung_pll2650x_clk_min_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1329, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"samsung_pll2650x_clk_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1323, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"samsung_pll2650xx_clk_min_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1420, i32 29 }
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"samsung_pll2650xx_clk_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1414, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1572, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1583, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 111, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 258, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 461, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 660, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 367, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 550, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 797, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1002, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1198, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1293, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [33 x i8] c"../drivers/clk/samsung/clk-pll.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1383, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__initcall__kmod_clk_pll__167_76_samsung_pll_disable_early_timeout3, ptr @_samsung_clk_register_pll._entry, ptr @_samsung_clk_register_pll._entry.4, ptr @_samsung_clk_register_pll._entry.7, ptr @_samsung_clk_register_pll._entry_ptr, ptr @_samsung_clk_register_pll._entry_ptr.6, ptr @_samsung_clk_register_pll._entry_ptr.9, ptr @samsung_pll0822x_set_rate._entry, ptr @samsung_pll0822x_set_rate._entry_ptr, ptr @samsung_pll0831x_set_rate._entry, ptr @samsung_pll0831x_set_rate._entry_ptr, ptr @samsung_pll2550xx_set_rate._entry, ptr @samsung_pll2550xx_set_rate._entry_ptr, ptr @samsung_pll2650x_set_rate._entry, ptr @samsung_pll2650x_set_rate._entry_ptr, ptr @samsung_pll2650xx_set_rate._entry, ptr @samsung_pll2650xx_set_rate._entry_ptr, ptr @samsung_pll35xx_set_rate._entry, ptr @samsung_pll35xx_set_rate._entry_ptr, ptr @samsung_pll36xx_set_rate._entry, ptr @samsung_pll36xx_set_rate._entry_ptr, ptr @samsung_pll45xx_set_rate._entry, ptr @samsung_pll45xx_set_rate._entry_ptr, ptr @samsung_pll46xx_set_rate._entry, ptr @samsung_pll46xx_set_rate._entry_ptr, ptr @samsung_pll_lock_wait._entry, ptr @samsung_pll_lock_wait._entry_ptr, ptr @samsung_s3c2410_pll_set_rate._entry, ptr @samsung_s3c2410_pll_set_rate._entry_ptr, ptr @pll_early_timeout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @samsung_pll2126_clk_ops, ptr @samsung_pll3000_clk_ops, ptr @samsung_pll35xx_clk_min_ops, ptr @samsung_pll35xx_clk_ops, ptr @samsung_pll0822x_clk_min_ops, ptr @samsung_pll0822x_clk_ops, ptr @samsung_pll45xx_clk_min_ops, ptr @samsung_pll45xx_clk_ops, ptr @samsung_pll36xx_clk_min_ops, ptr @samsung_pll36xx_clk_ops, ptr @samsung_pll0831x_clk_min_ops, ptr @samsung_pll0831x_clk_ops, ptr @samsung_pll6552_clk_ops, ptr @samsung_pll6553_clk_ops, ptr @samsung_pll46xx_clk_min_ops, ptr @samsung_pll46xx_clk_ops, ptr @samsung_s3c2410_mpll_clk_min_ops, ptr @samsung_s3c2410_mpll_clk_ops, ptr @samsung_s3c2410_upll_clk_min_ops, ptr @samsung_s3c2410_upll_clk_ops, ptr @samsung_s3c2440_mpll_clk_min_ops, ptr @samsung_s3c2440_mpll_clk_ops, ptr @samsung_pll2550x_clk_ops, ptr @samsung_pll2550xx_clk_min_ops, ptr @samsung_pll2550xx_clk_ops, ptr @samsung_pll2650x_clk_min_ops, ptr @samsung_pll2650x_clk_ops, ptr @samsung_pll2650xx_clk_min_ops, ptr @samsung_pll2650xx_clk_ops, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_early_timeout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_samsung_clk_register_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2126_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll3000_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll35xx_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll35xx_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll0822x_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll0822x_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll45xx_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll45xx_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll36xx_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll36xx_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll0831x_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll0831x_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll6552_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll6553_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll46xx_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll46xx_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s3c2410_mpll_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s3c2410_mpll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s3c2410_upll_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s3c2410_upll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s3c2440_mpll_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s3c2440_mpll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2550x_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2550xx_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2550xx_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2650x_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2650x_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2650xx_clk_min_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2650xx_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_samsung_clk_register_pll._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_samsung_clk_register_pll._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll_lock_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll35xx_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll0822x_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll45xx_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll36xx_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll0831x_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll46xx_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s3c2410_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2550xx_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2650x_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pll2650xx_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @samsung_pll_disable_early_timeout() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pll_early_timeout, align 1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_pll(ptr noundef %ctx, ptr noundef %pll_list, i32 noundef %nr_pll, ptr noundef %base) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pll)
  %cmp3.not = icmp eq i32 %nr_pll, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.samsung_pll_clock, ptr %pll_list, i32 %cnt.04
  tail call fastcc void @_samsung_clk_register_pll(ptr noundef %ctx, ptr noundef %arrayidx, ptr noundef %base) #12
  %inc = add nuw i32 %cnt.04, 1
  %exitcond.not = icmp eq i32 %inc, %nr_pll
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_samsung_clk_register_pll(ptr noundef %ctx, ptr noundef %pll_clk, ptr noundef %base) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = getelementptr inbounds i8, ptr %init, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  %name = getelementptr inbounds %struct.samsung_pll_clock, ptr %pll_clk, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %init, align 4
  %flags = getelementptr inbounds %struct.samsung_pll_clock, ptr %pll_clk, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %flags4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags4, align 4
  %parent_name = getelementptr inbounds %struct.samsung_pll_clock, ptr %pll_clk, i32 0, i32 2
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %rate_table = getelementptr inbounds %struct.samsung_pll_clock, ptr %pll_clk, i32 0, i32 7
  %11 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rate_table, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.if.end41_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %len.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %if.end.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.samsung_pll_rate_table, ptr %12, i32 %len.0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %14, 0
  %inc = add i32 %len.0, 1
  br i1 %cmp.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %rate_count = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %rate_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len.0, ptr %rate_count, align 4
  %mul = mul i32 %len.0, 36
  %call10 = tail call ptr @kmemdup(ptr noundef nonnull %12, i32 noundef %mul, i32 noundef 3264) #9
  %rate_table11 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %rate_table11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call10, ptr %rate_table11, align 8
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %do.end26, label %for.end.if.end41_crit_edge, !prof !133

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1456, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %18) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end26, %for.end.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %type = getelementptr inbounds %struct.samsung_pll_clock, ptr %pll_clk, i32 0, i32 6
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end155 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb42
    i32 2, label %if.end41.sw.bb44_crit_edge
    i32 4, label %if.end41.sw.bb44_crit_edge229
    i32 23, label %if.end41.sw.bb44_crit_edge230
    i32 24, label %if.end41.sw.bb44_crit_edge231
    i32 25, label %if.end41.sw.bb44_crit_edge232
    i32 22, label %if.end41.sw.bb51_crit_edge
    i32 27, label %if.end41.sw.bb51_crit_edge233
    i32 6, label %sw.bb61
    i32 7, label %if.end41.sw.bb63_crit_edge
    i32 8, label %if.end41.sw.bb63_crit_edge234
    i32 3, label %if.end41.sw.bb71_crit_edge
    i32 5, label %if.end41.sw.bb71_crit_edge235
    i32 28, label %sw.bb81
    i32 12, label %if.end41.sw.bb91_crit_edge
    i32 13, label %if.end41.sw.bb91_crit_edge236
    i32 14, label %sw.bb93
    i32 9, label %if.end41.sw.bb95_crit_edge
    i32 10, label %if.end41.sw.bb95_crit_edge237
    i32 11, label %if.end41.sw.bb95_crit_edge238
    i32 26, label %if.end41.sw.bb95_crit_edge239
    i32 15, label %sw.bb103
    i32 16, label %sw.bb111
    i32 17, label %sw.bb119
    i32 18, label %sw.bb127
    i32 19, label %sw.bb129
    i32 20, label %sw.bb137
    i32 21, label %sw.bb145
  ]

if.end41.sw.bb95_crit_edge239:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end41.sw.bb95_crit_edge238:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end41.sw.bb95_crit_edge237:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end41.sw.bb95_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

if.end41.sw.bb91_crit_edge236:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb91

if.end41.sw.bb91_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb91

if.end41.sw.bb71_crit_edge235:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71

if.end41.sw.bb71_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71

if.end41.sw.bb63_crit_edge234:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb63

if.end41.sw.bb63_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb63

if.end41.sw.bb51_crit_edge233:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb51

if.end41.sw.bb51_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb51

if.end41.sw.bb44_crit_edge232:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end41.sw.bb44_crit_edge231:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end41.sw.bb44_crit_edge230:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end41.sw.bb44_crit_edge229:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end41.sw.bb44_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @samsung_pll2126_clk_ops, ptr %ops, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %ops43 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %23 = ptrtoint ptr %ops43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @samsung_pll3000_clk_ops, ptr %ops43, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end41.sw.bb44_crit_edge, %if.end41.sw.bb44_crit_edge229, %if.end41.sw.bb44_crit_edge230, %if.end41.sw.bb44_crit_edge231, %if.end41.sw.bb44_crit_edge232
  %enable_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %enable_offs to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 31, ptr %enable_offs, align 4
  %lock_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %lock_offs to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 29, ptr %lock_offs, align 2
  %rate_table45 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %rate_table45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rate_table45, align 8
  %tobool46.not = icmp eq ptr %27, null
  %ops48 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool46.not, label %if.then47, label %if.else

if.then47:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %ops48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @samsung_pll35xx_clk_min_ops, ptr %ops48, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %ops48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @samsung_pll35xx_clk_ops, ptr %ops48, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end41.sw.bb51_crit_edge, %if.end41.sw.bb51_crit_edge233
  %enable_offs52 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %enable_offs52 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 31, ptr %enable_offs52, align 4
  %lock_offs53 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %lock_offs53 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 29, ptr %lock_offs53, align 2
  %rate_table54 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %rate_table54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rate_table54, align 8
  %tobool55.not = icmp eq ptr %33, null
  %ops57 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool55.not, label %if.then56, label %if.else58

if.then56:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ops57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @samsung_pll0822x_clk_min_ops, ptr %ops57, align 4
  br label %sw.epilog

if.else58:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ops57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @samsung_pll0822x_clk_ops, ptr %ops57, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %ops62 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %36 = ptrtoint ptr %ops62 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @samsung_pll45xx_clk_min_ops, ptr %ops62, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end41.sw.bb63_crit_edge, %if.end41.sw.bb63_crit_edge234
  %rate_table64 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %rate_table64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rate_table64, align 8
  %tobool65.not = icmp eq ptr %38, null
  %ops67 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool65.not, label %if.then66, label %if.else68

if.then66:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ops67 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @samsung_pll45xx_clk_min_ops, ptr %ops67, align 4
  br label %sw.epilog

if.else68:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %ops67 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @samsung_pll45xx_clk_ops, ptr %ops67, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end41.sw.bb71_crit_edge, %if.end41.sw.bb71_crit_edge235
  %enable_offs72 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %enable_offs72 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 31, ptr %enable_offs72, align 4
  %lock_offs73 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %lock_offs73 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 29, ptr %lock_offs73, align 2
  %rate_table74 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %rate_table74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rate_table74, align 8
  %tobool75.not = icmp eq ptr %44, null
  %ops77 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool75.not, label %if.then76, label %if.else78

if.then76:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ops77 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @samsung_pll36xx_clk_min_ops, ptr %ops77, align 4
  br label %sw.epilog

if.else78:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %ops77 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @samsung_pll36xx_clk_ops, ptr %ops77, align 4
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end41
  %enable_offs82 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %enable_offs82 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 31, ptr %enable_offs82, align 4
  %lock_offs83 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %lock_offs83 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 29, ptr %lock_offs83, align 2
  %rate_table84 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %rate_table84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rate_table84, align 8
  %tobool85.not = icmp eq ptr %50, null
  %ops87 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool85.not, label %if.then86, label %if.else88

if.then86:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %ops87 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @samsung_pll0831x_clk_min_ops, ptr %ops87, align 4
  br label %sw.epilog

if.else88:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %ops87 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @samsung_pll0831x_clk_ops, ptr %ops87, align 4
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end41.sw.bb91_crit_edge, %if.end41.sw.bb91_crit_edge236
  %ops92 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %53 = ptrtoint ptr %ops92 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @samsung_pll6552_clk_ops, ptr %ops92, align 4
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %ops94 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %54 = ptrtoint ptr %ops94 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @samsung_pll6553_clk_ops, ptr %ops94, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end41.sw.bb95_crit_edge, %if.end41.sw.bb95_crit_edge237, %if.end41.sw.bb95_crit_edge238, %if.end41.sw.bb95_crit_edge239
  %rate_table96 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %rate_table96 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rate_table96, align 8
  %tobool97.not = icmp eq ptr %56, null
  %ops99 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool97.not, label %if.then98, label %if.else100

if.then98:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %ops99 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @samsung_pll46xx_clk_min_ops, ptr %ops99, align 4
  br label %sw.epilog

if.else100:                                       ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ops99 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @samsung_pll46xx_clk_ops, ptr %ops99, align 4
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end41
  %rate_table104 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %rate_table104 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rate_table104, align 8
  %tobool105.not = icmp eq ptr %60, null
  %ops107 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool105.not, label %if.then106, label %if.else108

if.then106:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %ops107 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @samsung_s3c2410_mpll_clk_min_ops, ptr %ops107, align 4
  br label %sw.epilog

if.else108:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %ops107 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @samsung_s3c2410_mpll_clk_ops, ptr %ops107, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end41
  %rate_table112 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %63 = ptrtoint ptr %rate_table112 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rate_table112, align 8
  %tobool113.not = icmp eq ptr %64, null
  %ops115 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool113.not, label %if.then114, label %if.else116

if.then114:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %ops115 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @samsung_s3c2410_upll_clk_min_ops, ptr %ops115, align 4
  br label %sw.epilog

if.else116:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %ops115 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @samsung_s3c2410_upll_clk_ops, ptr %ops115, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end41
  %rate_table120 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %67 = ptrtoint ptr %rate_table120 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rate_table120, align 8
  %tobool121.not = icmp eq ptr %68, null
  %ops123 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool121.not, label %if.then122, label %if.else124

if.then122:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %ops123 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @samsung_s3c2440_mpll_clk_min_ops, ptr %ops123, align 4
  br label %sw.epilog

if.else124:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %ops123 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @samsung_s3c2440_mpll_clk_ops, ptr %ops123, align 4
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %ops128 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %71 = ptrtoint ptr %ops128 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @samsung_pll2550x_clk_ops, ptr %ops128, align 4
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end41
  %rate_table130 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %rate_table130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rate_table130, align 8
  %tobool131.not = icmp eq ptr %73, null
  %ops133 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool131.not, label %if.then132, label %if.else134

if.then132:                                       ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %ops133 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @samsung_pll2550xx_clk_min_ops, ptr %ops133, align 4
  br label %sw.epilog

if.else134:                                       ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %ops133 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @samsung_pll2550xx_clk_ops, ptr %ops133, align 4
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end41
  %rate_table138 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %rate_table138 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rate_table138, align 8
  %tobool139.not = icmp eq ptr %77, null
  %ops141 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool139.not, label %if.then140, label %if.else142

if.then140:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %ops141 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @samsung_pll2650x_clk_min_ops, ptr %ops141, align 4
  br label %sw.epilog

if.else142:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %ops141 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @samsung_pll2650x_clk_ops, ptr %ops141, align 4
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end41
  %rate_table146 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %rate_table146 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rate_table146, align 8
  %tobool147.not = icmp eq ptr %81, null
  %ops149 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  br i1 %tobool147.not, label %if.then148, label %if.else150

if.then148:                                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %ops149 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @samsung_pll2650xx_clk_min_ops, ptr %ops149, align 4
  br label %sw.epilog

if.else150:                                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %ops149 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @samsung_pll2650xx_clk_ops, ptr %ops149, align 4
  br label %sw.epilog

do.end155:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name, align 4
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, ptr noundef %85) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end155, %if.else150, %if.then148, %if.else142, %if.then140, %if.else134, %if.then132, %sw.bb127, %if.else124, %if.then122, %if.else116, %if.then114, %if.else108, %if.then106, %if.else100, %if.then98, %sw.bb93, %sw.bb91, %if.else88, %if.then86, %if.else78, %if.then76, %if.else68, %if.then66, %sw.bb61, %if.else58, %if.then56, %if.else, %if.then47, %sw.bb42, %sw.bb
  %init159 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %init159 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %init, ptr %init159, align 8
  %87 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %type, align 4
  %type161 = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 5
  %89 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %type161, align 8
  %lock_offset = getelementptr inbounds %struct.samsung_pll_clock, ptr %pll_clk, i32 0, i32 5
  %90 = ptrtoint ptr %lock_offset to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lock_offset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %91
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %lock_reg to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr, ptr %lock_reg, align 4
  %con_offset = getelementptr inbounds %struct.samsung_pll_clock, ptr %pll_clk, i32 0, i32 4
  %93 = ptrtoint ptr %con_offset to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %con_offset, align 4
  %add.ptr162 = getelementptr i8, ptr %base, i32 %94
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %call7.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %con_reg to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr162, ptr %con_reg, align 8
  %dev = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 1
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  %call164 = call i32 @clk_hw_register(ptr noundef %97, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end173, label %do.end169

do.end169:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name, align 4
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef %99, i32 noundef %call164) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end173:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %pll_clk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pll_clk, align 4
  call void @samsung_clk_add_lookup(ptr noundef %ctx, ptr noundef nonnull %call7.i.i, i32 noundef %101) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end173, %do.end169, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_add_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2126_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 63
  %and5 = and i32 %3, 3
  %add = add nuw nsw i32 %and, 8
  %conv6 = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv6, %conv
  %add7 = add nuw nsw i32 %and3, 2
  %shl = shl nuw nsw i32 %add7, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp180 = icmp ult i64 %mul, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !135

if.then184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv185 = trunc i64 %mul to i32
  %div188 = udiv i32 %conv185, %shl
  br label %if.end194

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t307 = trunc i64 %asmresult1.i to i32
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %fvco.0.off0 = phi i32 [ %div188, %if.then184 ], [ %extract.t307, %if.else190 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll3000_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 3
  %and5 = and i32 %3, 3
  %4 = lshr i32 %3, 15
  %add = and i32 %4, 510
  %mul = add nuw nsw i32 %add, 16
  %conv6 = zext i32 %mul to i64
  %mul7 = mul nuw nsw i64 %conv6, %conv
  %shl = shl nuw nsw i32 %and3, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul7)
  %cmp180 = icmp ult i64 %mul7, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !135

if.then184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv185 = trunc i64 %mul7 to i32
  %div188 = udiv i32 %conv185, %shl
  br label %if.end194

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul7) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t305 = trunc i64 %asmresult1.i to i32
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %fvco.0.off0 = phi i32 [ %div188, %if.then184 ], [ %extract.t305, %if.else190 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll35xx_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 1023
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 63
  %and5 = and i32 %3, 7
  %conv6 = zext i32 %and to i64
  %mul = mul nuw nsw i64 %conv6, %conv
  %shl = shl nuw nsw i32 %and3, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp178 = icmp ult i64 %mul, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !135

if.then182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv183 = trunc i64 %mul to i32
  %div186 = udiv i32 %conv183, %shl
  br label %if.end192

if.else188:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t303 = trunc i64 %asmresult1.i to i32
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then182
  %fvco.0.off0 = phi i32 [ %div186, %if.then182 ], [ %extract.t303, %if.else188 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll3xxx_enable(ptr noundef %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %enable_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %enable_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %enable_offs, align 4
  %conv = zext i16 %5 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !137
  %lock_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %lock_offs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %lock_offs, align 2
  %conv4 = zext i16 %10 to i32
  %shl5 = shl nuw i32 1, %conv4
  %call6 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef %shl5)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_pll3xxx_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %enable_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %enable_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %enable_offs, align 4
  %conv = zext i16 %5 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !137
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %drate, ptr nocapture noundef readnone %prate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1 = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1, align 4
  %rate_count = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp2.not = icmp ugt i32 %5, %drate
  br i1 %cmp2.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = add i32 %3, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx5 = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %for.end ], [ %5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll35xx_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %drate, ptr noundef %call3) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shr.i = lshr i32 %9, 16
  %and.i = and i32 %shr.i, 1023
  %mdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %10 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and.i)
  %cmp.not.i = icmp eq i32 %11, %and.i
  br i1 %cmp.not.i, label %samsung_pll35xx_mp_change.exit, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

samsung_pll35xx_mp_change.exit:                   ; preds = %if.end
  %shr1.i = lshr i32 %9, 8
  %and2.i = and i32 %shr1.i, 63
  %pdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and2.i)
  %cmp3.i53.not = icmp eq i32 %13, %and2.i
  br i1 %cmp3.i53.not, label %if.then8, label %samsung_pll35xx_mp_change.exit.if.end10_crit_edge

samsung_pll35xx_mp_change.exit.if.end10_crit_edge: ; preds = %samsung_pll35xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %samsung_pll35xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %9, -8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %14 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdiv, align 4
  %or = or i32 %15, %and
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !137
  br label %cleanup

if.end10:                                         ; preds = %samsung_pll35xx_mp_change.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %19 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdiv, align 4
  %mul = mul i32 %20, 270
  %21 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !137
  %and11 = and i32 %9, -67059464
  %24 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mdiv.i, align 4
  %shl12 = shl i32 %25, 16
  %26 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdiv, align 4
  %shl14 = shl i32 %27, 8
  %sdiv16 = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %28 = ptrtoint ptr %sdiv16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sdiv16, align 4
  %or15 = or i32 %shl12, %and11
  %or18 = or i32 %or15, %shl14
  %or19 = or i32 %or18, %29
  %30 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %31 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !137
  %enable_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 3
  %33 = ptrtoint ptr %enable_offs to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %enable_offs, align 4
  %conv = zext i16 %34 to i32
  %shl21 = shl nuw i32 1, %conv
  %and22 = and i32 %shl21, %or19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end10.cleanup_crit_edge, label %if.then24

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %lock_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 4
  %35 = ptrtoint ptr %lock_offs to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %lock_offs, align 2
  %conv25 = zext i16 %36 to i32
  %shl26 = shl nuw i32 1, %conv25
  %call27 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef %shl26)
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end10.cleanup_crit_edge, %if.then8, %do.end
  %retval.0 = phi i32 [ %call27, %if.then24 ], [ 0, %if.then8 ], [ -22, %do.end ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pll_lock_wait(ptr noundef %pll, i32 noundef %reg_mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pll_early_timeout, align 1
  br i1 %.b, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @timekeeping_suspended to i32))
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %pll, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %if.then
  %dec69 = phi i32 [ 999999, %if.then ], [ %dec, %do.end.while.body_crit_edge ]
  %1 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %con_reg, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !134
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = and i32 %4, %reg_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !139
  %dec = add nsw i32 %dec69, -1
  %cmp.not = icmp eq i32 %dec69, 0
  br i1 %cmp.not, label %do.end.do.end45_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end.do.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.else:                                          ; preds = %lor.lhs.false
  %call10 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call10, 20000000
  %con_reg13 = getelementptr inbounds %struct.samsung_clk_pll, ptr %pll, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.else
  %5 = ptrtoint ptr %con_reg13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %con_reg13, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !134
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and16 = and i32 %8, %reg_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond
  %call21 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %con_reg13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con_reg13, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !134
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %.pre = and i32 %12, %reg_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %phi.cmp, label %for.end.do.end45_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.do.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.end45:                                         ; preds = %for.end.do.end45_crit_edge, %do.end.do.end45_crit_edge
  %call47 = tail call ptr @clk_hw_get_name(ptr noundef %pll) #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %call47) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end45 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll0822x_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 1023
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 63
  %and5 = and i32 %3, 7
  %conv6 = zext i32 %and to i64
  %mul = mul nuw nsw i64 %conv6, %conv
  %shl = shl nuw nsw i32 %and3, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp178 = icmp ult i64 %mul, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !135

if.then182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv183 = trunc i64 %mul to i32
  %div186 = udiv i32 %conv183, %shl
  br label %if.end192

if.else188:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t303 = trunc i64 %asmresult1.i to i32
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then182
  %fvco.0.off0 = phi i32 [ %div186, %if.then182 ], [ %extract.t303, %if.else188 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll0822x_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef %drate, ptr noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = and i32 %8, -121634564
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %mdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %11 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdiv, align 4
  %shl = shl i32 %12, 16
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %13 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdiv, align 4
  %shl6 = shl i32 %14, 8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %15 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sdiv, align 4
  %or = or i32 %10, %shl
  %or8 = or i32 %or, %shl6
  %or9 = or i32 %or8, %16
  %mul = mul i32 %14, 150
  %17 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !137
  %20 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %21 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #9, !srcloc !137
  %enable_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 3
  %23 = ptrtoint ptr %enable_offs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %enable_offs, align 4
  %conv = zext i16 %24 to i32
  %shl12 = shl nuw i32 1, %conv
  %and13 = and i32 %shl12, %or9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 4
  %25 = ptrtoint ptr %lock_offs to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %lock_offs, align 2
  %conv16 = zext i16 %26 to i32
  %shl17 = shl nuw i32 1, %conv16
  %call18 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef %shl17)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call18, %if.then15 ], [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll45xx_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 1023
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 63
  %and5 = and i32 %3, 7
  %type = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp eq i32 %5, 8
  %sub = sext i1 %cmp to i32
  %spec.select = add nsw i32 %and5, %sub
  %conv7 = zext i32 %and to i64
  %mul = mul nuw nsw i64 %conv7, %conv
  %shl = shl nuw nsw i32 %and3, %spec.select
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp183 = icmp ult i64 %mul, 4294967296
  br i1 %cmp183, label %if.then187, label %if.else193, !prof !135

if.then187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv188 = trunc i64 %mul to i32
  %div191 = udiv i32 %conv188, %shl
  br label %if.end197

if.else193:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  %extract.t309 = trunc i64 %asmresult1.i to i32
  br label %if.end197

if.end197:                                        ; preds = %if.else193, %if.then187
  %fvco.0.off0 = phi i32 [ %div191, %if.then187 ], [ %extract.t309, %if.else193 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll45xx_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15, i32 noundef %drate, ptr noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %con_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !134
  %13 = lshr i32 %12, 24
  %shr.i = lshr i32 %9, 16
  %and.i = and i32 %shr.i, 1023
  %and4.i = and i32 %13, 31
  %mdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %14 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %15)
  %cmp.not.i = icmp eq i32 %and.i, %15
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false.i:                                  ; preds = %if.end
  %shr1.i = lshr i32 %9, 8
  %and2.i = and i32 %shr1.i, 63
  %pdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %16 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %17)
  %cmp5.not.i = icmp eq i32 %and2.i, %17
  br i1 %cmp5.not.i, label %samsung_pll45xx_mp_change.exit, label %lor.lhs.false.i.if.end14_crit_edge

lor.lhs.false.i.if.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

samsung_pll45xx_mp_change.exit:                   ; preds = %lor.lhs.false.i
  %afc.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 5
  %18 = ptrtoint ptr %afc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %afc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %19)
  %cmp6.i.not = icmp eq i32 %and4.i, %19
  br i1 %cmp6.i.not, label %if.then12, label %samsung_pll45xx_mp_change.exit.if.end14_crit_edge

samsung_pll45xx_mp_change.exit.if.end14_crit_edge: ; preds = %samsung_pll45xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %samsung_pll45xx_mp_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %9, -8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %20 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sdiv, align 4
  %or = or i32 %21, %and
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !137
  br label %cleanup

if.end14:                                         ; preds = %samsung_pll45xx_mp_change.exit.if.end14_crit_edge, %lor.lhs.false.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %and15 = and i32 %9, -67059464
  %shl16 = shl i32 %15, 16
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %25 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdiv, align 4
  %shl17 = shl i32 %26, 8
  %sdiv19 = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %27 = ptrtoint ptr %sdiv19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdiv19, align 4
  %or18 = or i32 %shl16, %and15
  %or21 = or i32 %or18, %shl17
  %or22 = or i32 %or21, %28
  %29 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %con_reg, align 4
  %add.ptr25 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !134
  %32 = and i32 %31, -520093697
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %afc = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 5
  %34 = ptrtoint ptr %afc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %afc, align 4
  %or30 = or i32 %33, %35
  %type = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 5
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %37, label %if.end14.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb32
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pdiv, align 4
  %mul = mul i32 %40, 400
  %41 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %42 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #9, !srcloc !137
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pdiv, align 4
  %mul34 = mul i32 %45, 240
  %46 = tail call i32 @llvm.bswap.i32(i32 %mul34)
  %lock_reg35 = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %47 = ptrtoint ptr %lock_reg35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lock_reg35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !137
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb, %if.end14.sw.epilog_crit_edge
  %49 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %50 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %con_reg, align 4
  %add.ptr37 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %49) #9, !srcloc !137
  %52 = tail call i32 @llvm.bswap.i32(i32 %or22)
  %53 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !137
  %call39 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef 536870912)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then12, %do.end
  %retval.0 = phi i32 [ %call39, %sw.epilog ], [ 0, %if.then12 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll36xx_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_reg, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !134
  %and = and i32 %3, 33488896
  %shr7 = lshr i32 %3, 8
  %and8 = and i32 %shr7, 63
  %and10 = and i32 %3, 7
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sext = shl nuw i32 %8, 16
  %conv13 = ashr exact i32 %sext, 16
  %add = add nsw i32 %conv13, %and
  %conv14 = zext i32 %add to i64
  %mul = mul nuw i64 %conv14, %conv
  %shl15 = shl nuw nsw i32 %and8, %and10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp188 = icmp ult i64 %mul, 4294967296
  br i1 %cmp188, label %if.then192, label %if.else198, !prof !135

if.then192:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv193 = trunc i64 %mul to i32
  %div196 = udiv i32 %conv193, %shl15
  %9 = lshr i32 %div196, 16
  br label %if.end202

if.else198:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl15, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract316 = lshr i64 %asmresult1.i, 16
  %extract.t317 = trunc i64 %extract316 to i32
  br label %if.end202

if.end202:                                        ; preds = %if.else198, %if.then192
  %fvco.0.off16 = phi i32 [ %9, %if.then192 ], [ %extract.t317, %if.else198 ]
  ret i32 %fvco.0.off16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll36xx_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, i32 noundef %drate, ptr noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %con_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !134
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shr.i = lshr i32 %9, 16
  %and.i = and i32 %shr.i, 511
  %and4.i = and i32 %13, 65535
  %mdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %14 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and.i)
  %cmp.not.i = icmp eq i32 %15, %and.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false.i:                                  ; preds = %if.end
  %shr1.i = lshr i32 %9, 8
  %and2.i = and i32 %shr1.i, 63
  %pdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %16 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and2.i)
  %cmp5.not.i = icmp eq i32 %17, %and2.i
  br i1 %cmp5.not.i, label %samsung_pll36xx_mpk_change.exit, label %lor.lhs.false.i.if.end14_crit_edge

lor.lhs.false.i.if.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

samsung_pll36xx_mpk_change.exit:                  ; preds = %lor.lhs.false.i
  %kdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 4
  %18 = ptrtoint ptr %kdiv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and4.i)
  %cmp6.i.not = icmp eq i32 %19, %and4.i
  br i1 %cmp6.i.not, label %if.then12, label %samsung_pll36xx_mpk_change.exit.if.end14_crit_edge

samsung_pll36xx_mpk_change.exit.if.end14_crit_edge: ; preds = %samsung_pll36xx_mpk_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %samsung_pll36xx_mpk_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %9, -8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %20 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sdiv, align 4
  %or = or i32 %21, %and
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !137
  br label %cleanup

if.end14:                                         ; preds = %samsung_pll36xx_mpk_change.exit.if.end14_crit_edge, %lor.lhs.false.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %25 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdiv, align 4
  %mul = mul i32 %26, 3000
  %27 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %28 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !137
  %and15 = and i32 %9, -33505032
  %30 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mdiv.i, align 4
  %shl16 = shl i32 %31, 16
  %32 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pdiv, align 4
  %shl18 = shl i32 %33, 8
  %sdiv20 = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %34 = ptrtoint ptr %sdiv20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sdiv20, align 4
  %or19 = or i32 %shl16, %and15
  %or22 = or i32 %or19, %shl18
  %or23 = or i32 %or22, %35
  %36 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %37 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !137
  %and25 = and i32 %13, -65536
  %kdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 4
  %39 = ptrtoint ptr %kdiv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %kdiv, align 4
  %or27 = or i32 %40, %and25
  %41 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %42 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %con_reg, align 4
  %add.ptr29 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %41) #9, !srcloc !137
  %enable_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 3
  %44 = ptrtoint ptr %enable_offs to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %enable_offs, align 4
  %conv = zext i16 %45 to i32
  %shl30 = shl nuw i32 1, %conv
  %and31 = and i32 %shl30, %or23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end14.cleanup_crit_edge, label %if.then33

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %lock_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 4
  %46 = ptrtoint ptr %lock_offs to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %lock_offs, align 2
  %conv34 = zext i16 %47 to i32
  %shl35 = shl nuw i32 1, %conv34
  %call36 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef %shl35)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end14.cleanup_crit_edge, %if.then12, %do.end
  %retval.0 = phi i32 [ %call36, %if.then33 ], [ 0, %if.then12 ], [ -22, %do.end ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll0831x_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_reg, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !134
  %and = and i32 %3, 33488896
  %shr7 = lshr i32 %3, 8
  %and8 = and i32 %shr7, 63
  %and10 = and i32 %3, 7
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sext = shl nuw i32 %8, 16
  %conv14 = ashr exact i32 %sext, 16
  %add = add nsw i32 %conv14, %and
  %conv15 = zext i32 %add to i64
  %mul = mul nuw i64 %conv15, %conv
  %shl16 = shl nuw nsw i32 %and8, %and10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp189 = icmp ult i64 %mul, 4294967296
  br i1 %cmp189, label %if.then193, label %if.else199, !prof !135

if.then193:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv194 = trunc i64 %mul to i32
  %div197 = udiv i32 %conv194, %shl16
  %9 = lshr i32 %div197, 16
  br label %if.end203

if.else199:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl16, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract317 = lshr i64 %asmresult1.i, 16
  %extract.t318 = trunc i64 %extract317 to i32
  br label %if.end203

if.end203:                                        ; preds = %if.else199, %if.then193
  %fvco.0.off16 = phi i32 [ %9, %if.then193 ], [ %extract.t318, %if.else199 ]
  ret i32 %fvco.0.off16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll0831x_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, i32 noundef %drate, ptr noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !134
  %12 = and i32 %8, -121634562
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %mdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %14 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdiv, align 4
  %shl = shl i32 %15, 16
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %16 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdiv, align 4
  %shl11 = shl i32 %17, 8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %18 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sdiv, align 4
  %or = or i32 %shl, %13
  %or13 = or i32 %or, %shl11
  %or14 = or i32 %or13, %19
  %20 = and i32 %11, 65535
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %kdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 4
  %22 = ptrtoint ptr %kdiv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kdiv, align 4
  %conv16 = and i32 %23, 65535
  %or18 = or i32 %conv16, %21
  %mul = mul i32 %17, 500
  %24 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %25 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !137
  %27 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %28 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !137
  %30 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %31 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %con_reg, align 4
  %add.ptr22 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %30) #9, !srcloc !137
  %enable_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 3
  %33 = ptrtoint ptr %enable_offs to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %enable_offs, align 4
  %conv23 = zext i16 %34 to i32
  %shl24 = shl nuw i32 1, %conv23
  %and25 = and i32 %shl24, %or14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.then27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock_offs = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 4
  %35 = ptrtoint ptr %lock_offs to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %lock_offs, align 2
  %conv28 = zext i16 %36 to i32
  %shl29 = shl nuw i32 1, %conv28
  %call30 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef %shl29)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call30, %if.then27 ], [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll6552_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %type = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %5)
  %cmp = icmp eq i32 %5, 13
  %pdiv.0.in.v = select i1 %cmp, i32 5, i32 8
  %pdiv.0.in = lshr i32 %3, %pdiv.0.in.v
  %mdiv.0.in.v = select i1 %cmp, i32 14, i32 16
  %mdiv.0.in = lshr i32 %3, %mdiv.0.in.v
  %mdiv.0 = and i32 %mdiv.0.in, 1023
  %pdiv.0 = and i32 %pdiv.0.in, 63
  %and10 = and i32 %3, 7
  %conv11 = zext i32 %mdiv.0 to i64
  %mul = mul nuw nsw i64 %conv11, %conv
  %shl = shl nuw nsw i32 %pdiv.0, %and10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp187 = icmp ult i64 %mul, 4294967296
  br i1 %cmp187, label %if.then191, label %if.else197, !prof !135

if.then191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv192 = trunc i64 %mul to i32
  %div195 = udiv i32 %conv192, %shl
  br label %if.end201

if.else197:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  %extract.t315 = trunc i64 %asmresult1.i to i32
  br label %if.end201

if.end201:                                        ; preds = %if.else197, %if.then191
  %fvco.0.off0 = phi i32 [ %div195, %if.then191 ], [ %extract.t315, %if.else197 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll6553_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_reg, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !134
  %and = and i32 %3, 16711680
  %shr7 = lshr i32 %3, 8
  %and8 = and i32 %shr7, 63
  %and10 = and i32 %3, 7
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add = or i32 %8, %and
  %conv13 = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv13, %conv
  %shl14 = shl nuw nsw i32 %and8, %and10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp187 = icmp ult i64 %mul, 4294967296
  br i1 %cmp187, label %if.then191, label %if.else197, !prof !135

if.then191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv192 = trunc i64 %mul to i32
  %div195 = udiv i32 %conv192, %shl14
  %9 = lshr i32 %div195, 16
  br label %if.end201

if.else197:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl14, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract315 = lshr i64 %asmresult1.i, 16
  %extract.t316 = trunc i64 %extract315 to i32
  br label %if.end201

if.end201:                                        ; preds = %if.else197, %if.then191
  %fvco.0.off16 = phi i32 [ %9, %if.then191 ], [ %extract.t316, %if.else197 ]
  ret i32 %fvco.0.off16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll46xx_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_reg, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !134
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %shr = lshr i32 %3, 16
  %type = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %9)
  %cmp = icmp eq i32 %9, 26
  %cond = select i1 %cmp, i32 1023, i32 511
  %and = and i32 %cond, %shr
  %shr8 = lshr i32 %3, 8
  %and9 = and i32 %shr8, 63
  %and11 = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp13 = icmp eq i32 %9, 11
  %cond17.v = select i1 %cmp13, i32 4095, i32 65535
  %cond17 = and i32 %cond17.v, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp19 = icmp eq i32 %9, 9
  %10 = or i1 %cmp19, %cmp
  %cond24 = select i1 %10, i32 16, i32 10
  %shl = shl nuw nsw i32 %and, %cond24
  %add = add nuw nsw i32 %shl, %cond17
  %conv25 = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv25, %conv
  %shl26 = shl nuw nsw i32 %and9, %and11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp204 = icmp ult i64 %mul, 4294967296
  br i1 %cmp204, label %if.then208, label %if.else214, !prof !135

if.then208:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv209 = trunc i64 %mul to i32
  %div212 = udiv i32 %conv209, %shl26
  %conv213 = zext i32 %div212 to i64
  br label %if.end218

if.else214:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl26, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  br label %if.end218

if.end218:                                        ; preds = %if.else214, %if.then208
  %fvco.0 = phi i64 [ %conv213, %if.then208 ], [ %asmresult1.i, %if.else214 ]
  %sh_prom220 = zext i32 %cond24 to i64
  %shr221 = lshr i64 %fvco.0, %sh_prom220
  %conv222 = trunc i64 %shr221 to i32
  ret i32 %conv222
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll46xx_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.18, i32 noundef %drate, ptr noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %con_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !134
  %shr.i = lshr i32 %9, 16
  %and.i = and i32 %shr.i, 511
  %13 = and i32 %12, -65536
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %mdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %15 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %16)
  %cmp.not.i = icmp eq i32 %and.i, %16
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false.i:                                  ; preds = %if.end
  %shr1.i = lshr i32 %9, 8
  %and2.i = and i32 %shr1.i, 63
  %pdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %17 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %18)
  %cmp5.not.i = icmp eq i32 %and2.i, %18
  br i1 %cmp5.not.i, label %samsung_pll46xx_mpk_change.exit, label %lor.lhs.false.i.if.end14_crit_edge

lor.lhs.false.i.if.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

samsung_pll46xx_mpk_change.exit:                  ; preds = %lor.lhs.false.i
  %kdiv.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 4
  %19 = ptrtoint ptr %kdiv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kdiv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %20)
  %cmp6.i.not = icmp eq i32 %14, %20
  br i1 %cmp6.i.not, label %if.then12, label %samsung_pll46xx_mpk_change.exit.if.end14_crit_edge

samsung_pll46xx_mpk_change.exit.if.end14_crit_edge: ; preds = %samsung_pll46xx_mpk_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %samsung_pll46xx_mpk_change.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %9, -8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %21 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdiv, align 4
  %or = or i32 %22, %and
  %23 = tail call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !137
  br label %cleanup

if.end14:                                         ; preds = %samsung_pll46xx_mpk_change.exit.if.end14_crit_edge, %lor.lhs.false.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %26 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdiv, align 4
  %mul = mul i32 %27, 3000
  %28 = tail call i32 @llvm.umin.i32(i32 %mul, i32 65535)
  %type = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 5
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %30)
  %cmp17 = icmp eq i32 %30, 26
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %and19 = and i32 %9, -67059464
  br label %if.end23

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %and20 = and i32 %9, -167722760
  %vsel = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 8
  %31 = ptrtoint ptr %vsel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vsel, align 4
  %shl21 = shl i32 %32, 27
  %or22 = or i32 %shl21, %and20
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %con0.0 = phi i32 [ %and19, %if.then18 ], [ %or22, %if.else ]
  %shl24 = shl i32 %16, 16
  %shl26 = shl i32 %27, 8
  %or27 = or i32 %shl26, %shl24
  %sdiv28 = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %33 = ptrtoint ptr %sdiv28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sdiv28, align 4
  %or30 = or i32 %or27, %con0.0
  %or31 = or i32 %or30, %34
  %35 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %con_reg, align 4
  %add.ptr34 = getelementptr i8, ptr %36, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !134
  %38 = and i32 %37, 49376
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %kdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 4
  %40 = ptrtoint ptr %kdiv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %kdiv, align 4
  %mfr = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 6
  %42 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mfr, align 4
  %shl39 = shl i32 %43, 16
  %mrr = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 7
  %44 = ptrtoint ptr %mrr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mrr, align 4
  %shl41 = shl i32 %45, 24
  %or40 = or i32 %39, %41
  %or42 = or i32 %or40, %shl39
  %or43 = or i32 %or42, %shl41
  %46 = tail call i32 @llvm.bswap.i32(i32 %28)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %47 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !137
  %49 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %50 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !137
  %52 = tail call i32 @llvm.bswap.i32(i32 %or43)
  %53 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %con_reg, align 4
  %add.ptr46 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %52) #9, !srcloc !137
  %call47 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef 536870912)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then12, %do.end
  %retval.0 = phi i32 [ %call47, %if.end23 ], [ 0, %if.then12 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_mpll_enable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_reg.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %and.i = and i32 %3, -33
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %5 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr5.c1.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.c1.i, i32 %4) #9, !srcloc !137
  %and8.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %entry.samsung_s3c2410_pll_enable.exit_crit_edge, label %if.then10.i

entry.samsung_s3c2410_pll_enable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %samsung_s3c2410_pll_enable.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 64424400) #9
  br label %samsung_s3c2410_pll_enable.exit

samsung_s3c2410_pll_enable.exit:                  ; preds = %if.then10.i, %entry.samsung_s3c2410_pll_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_s3c2410_mpll_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_reg.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !134
  %3 = or i32 %2, 536870912
  %4 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr5.c.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.c.i, i32 %3) #9, !srcloc !137
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 12
  %and = and i32 %shr, 255
  %shr2 = lshr i32 %3, 4
  %and3 = and i32 %shr2, 31
  %and5 = and i32 %3, 3
  %add = add nuw nsw i32 %and, 8
  %conv6 = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv6, %conv
  %add7 = add nuw nsw i32 %and3, 2
  %shl = shl nuw nsw i32 %add7, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp180 = icmp ult i64 %mul, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !135

if.then184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv185 = trunc i64 %mul to i32
  %div188 = udiv i32 %conv185, %shl
  br label %if.end194

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t307 = trunc i64 %asmresult1.i to i32
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %fvco.0.off0 = phi i32 [ %div188, %if.then184 ], [ %extract.t307, %if.else190 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_pll_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19, i32 noundef %drate, ptr noundef %call3) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = and i32 %8, 202305791
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %mdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %11 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdiv, align 4
  %shl = shl i32 %12, 12
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %13 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdiv, align 4
  %shl7 = shl i32 %14, 4
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %15 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sdiv, align 4
  %or = or i32 %10, %shl
  %or9 = or i32 %or, %shl7
  %or10 = or i32 %or9, %16
  %17 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %18 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 64424400) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_upll_enable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_reg.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %and.i = and i32 %3, -129
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %5 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr5.c1.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.c1.i, i32 %4) #9, !srcloc !137
  %and8.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %entry.samsung_s3c2410_pll_enable.exit_crit_edge, label %if.then10.i

entry.samsung_s3c2410_pll_enable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %samsung_s3c2410_pll_enable.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 64424400) #9
  br label %samsung_s3c2410_pll_enable.exit

samsung_s3c2410_pll_enable.exit:                  ; preds = %if.then10.i, %entry.samsung_s3c2410_pll_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_s3c2410_upll_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_reg.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !134
  %3 = or i32 %2, -2147483648
  %4 = ptrtoint ptr %lock_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_reg.i, align 4
  %add.ptr5.c.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.c.i, i32 %3) #9, !srcloc !137
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_s3c2440_mpll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr2 = lshr i32 %3, 4
  %and3 = and i32 %shr2, 31
  %and5 = and i32 %3, 3
  %4 = lshr i32 %3, 11
  %add = and i32 %4, 510
  %mul = add nuw nsw i32 %add, 16
  %conv6 = zext i32 %mul to i64
  %mul7 = mul nuw nsw i64 %conv6, %conv
  %add8 = add nuw nsw i32 %and3, 2
  %shl = shl nuw nsw i32 %add8, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul7)
  %cmp181 = icmp ult i64 %mul7, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !135

if.then185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv186 = trunc i64 %mul7 to i32
  %div189 = udiv i32 %conv186, %shl
  br label %if.end195

if.else191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul7) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t308 = trunc i64 %asmresult1.i to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %fvco.0.off0 = phi i32 [ %div189, %if.then185 ], [ %extract.t308, %if.else191 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2550x_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %parent_rate to i64
  %shr2 = lshr i32 %3, 14
  %and3 = and i32 %shr2, 63
  %shr4 = lshr i32 %3, 4
  %and5 = and i32 %shr4, 1023
  %and7 = and i32 %3, 7
  %conv8 = zext i32 %and5 to i64
  %mul = mul nuw nsw i64 %conv8, %conv
  %shl = shl nuw nsw i32 %and3, %and7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp183 = icmp ult i64 %mul, 4294967296
  br i1 %cmp183, label %if.then187, label %if.else193, !prof !135

if.then187:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv188 = trunc i64 %mul to i32
  %div191 = udiv i32 %conv188, %shl
  br label %cleanup

if.else193:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t315 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else193, %if.then187, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %div191, %if.then187 ], [ %extract.t315, %if.else193 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2550xx_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 9
  %and = and i32 %shr, 1023
  %shr2 = lshr i32 %3, 3
  %and3 = and i32 %shr2, 63
  %and5 = and i32 %3, 7
  %conv6 = zext i32 %and to i64
  %mul = mul nuw nsw i64 %conv6, %conv
  %shl = shl nuw nsw i32 %and3, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp178 = icmp ult i64 %mul, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !135

if.then182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv183 = trunc i64 %mul to i32
  %div186 = udiv i32 %conv183, %shl
  br label %if.end192

if.else188:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t303 = trunc i64 %asmresult1.i to i32
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then182
  %fvco.0.off0 = phi i32 [ %div186, %if.then182 ], [ %extract.t303, %if.else188 ]
  ret i32 %fvco.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2550xx_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20, i32 noundef %drate, ptr noundef %call3) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %mdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %10 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdiv, align 4
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdiv, align 4
  %shr.i = lshr i32 %9, 9
  %and.i = and i32 %shr.i, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %11)
  %cmp.not.i = icmp ne i32 %and.i, %11
  %shr1.i = lshr i32 %9, 3
  %and2.i = and i32 %shr1.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %13)
  %cmp3.i46 = icmp ne i32 %and2.i, %13
  %14 = or i1 %cmp.not.i, %cmp3.i46
  br i1 %14, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %9, -8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %15 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sdiv, align 4
  %or = or i32 %16, %and
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !137
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %13, 270
  %20 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #9, !srcloc !137
  %and12 = and i32 %9, -524288
  %23 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mdiv, align 4
  %shl14 = shl i32 %24, 9
  %25 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdiv, align 4
  %shl16 = shl i32 %26, 3
  %sdiv18 = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %27 = ptrtoint ptr %sdiv18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdiv18, align 4
  %or17 = or i32 %shl14, %and12
  %or20 = or i32 %or17, %shl16
  %or21 = or i32 %or20, %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %30 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !137
  %call23 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef 2097152)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.end
  %retval.0 = phi i32 [ %call23, %if.end10 ], [ 0, %if.then8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2650x_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 33488896
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 63
  %and5 = and i32 %3, 7
  %4 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !134
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sext = shl nuw i32 %8, 16
  %conv14 = ashr exact i32 %sext, 16
  %add = add nsw i32 %conv14, %and
  %conv15 = zext i32 %add to i64
  %mul = mul nuw i64 %conv15, %conv
  %shl16 = shl nuw nsw i32 %and3, %and5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp189 = icmp ult i64 %mul, 4294967296
  br i1 %cmp189, label %if.then193, label %if.else199, !prof !135

if.then193:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv194 = trunc i64 %mul to i32
  %div197 = udiv i32 %conv194, %shl16
  %9 = lshr i32 %div197, 16
  br label %if.end203

if.else199:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl16, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract317 = lshr i64 %asmresult1.i, 16
  %extract.t318 = trunc i64 %extract317 to i32
  br label %if.end203

if.end203:                                        ; preds = %if.else199, %if.then193
  %fout.0.off16 = phi i32 [ %9, %if.then193 ], [ %extract.t318, %if.else199 ]
  ret i32 %fout.0.off16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2650x_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.21, i32 noundef %drate, ptr noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !134
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdiv, align 4
  %mul = mul i32 %13, 3000
  %14 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !137
  %17 = and i32 %8, -121634690
  %mdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %18 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdiv, align 4
  %shl = shl i32 %19, 16
  %20 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdiv, align 4
  %shl12 = shl i32 %21, 8
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %22 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sdiv, align 4
  %24 = or i32 %17, 128
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %or14 = or i32 %25, %shl
  %or15 = or i32 %or14, %shl12
  %or16 = or i32 %or15, %23
  %26 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %27 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !137
  %29 = and i32 %11, 65535
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %kdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 4
  %31 = ptrtoint ptr %kdiv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %kdiv, align 4
  %and19 = and i32 %32, 65535
  %or21 = or i32 %and19, %30
  %33 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %34 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %con_reg, align 4
  %add.ptr23 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %33) #9, !srcloc !137
  %call24 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef 536870912)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call24, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2650xx_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !134
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_reg, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !134
  %shr7 = lshr i32 %3, 3
  %and8 = and i32 %shr7, 63
  %and10 = and i32 %3, 7
  %7 = and i32 %6, -65536
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = shl i32 %3, 7
  %shl = and i32 %9, 33488896
  %sext = shl nuw i32 %8, 16
  %conv13 = ashr exact i32 %sext, 16
  %add = add nsw i32 %conv13, %shl
  %conv14 = zext i32 %add to i64
  %mul = mul nuw i64 %conv14, %conv
  %shl15 = shl nuw nsw i32 %and8, %and10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp188 = icmp ult i64 %mul, 4294967296
  br i1 %cmp188, label %if.then192, label %if.else198, !prof !135

if.then192:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv193 = trunc i64 %mul to i32
  %div196 = udiv i32 %conv193, %shl15
  %10 = lshr i32 %div196, 16
  br label %if.end202

if.else198:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl15, i64 %mul) #15, !srcloc !136
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  %extract316 = lshr i64 %asmresult1.i, 16
  %extract.t317 = trunc i64 %extract316 to i32
  br label %if.end202

if.end202:                                        ; preds = %if.else198, %if.then192
  %fvco.0.off16 = phi i32 [ %10, %if.then192 ], [ %extract.t317, %if.else198 ]
  ret i32 %fvco.0.off16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_pll2650xx_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %samsung_get_pll_settings.exit, label %for.cond.i

samsung_get_pll_settings.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %samsung_get_pll_settings.exit.do.end_crit_edge, label %if.end

samsung_get_pll_settings.exit.do.end_crit_edge:   ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %samsung_get_pll_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, i32 noundef %drate, ptr noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %samsung_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  %con_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !134
  %9 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !134
  %12 = and i32 %8, 31871
  %mdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 2
  %13 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdiv, align 4
  %shl = shl i32 %14, 9
  %pdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 1
  %15 = ptrtoint ptr %pdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdiv, align 4
  %shl11 = shl i32 %16, 3
  %sdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 3
  %17 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdiv, align 4
  %19 = or i32 %12, 32896
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %or12 = or i32 %20, %shl
  %or14 = or i32 %or12, %shl11
  %or16 = or i32 %or14, %18
  %21 = and i32 %11, 65535
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %kdiv = getelementptr %struct.samsung_pll_rate_table, ptr %1, i32 %i.012.i, i32 4
  %23 = ptrtoint ptr %kdiv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %kdiv, align 4
  %add = sub i32 0, %24
  %and18 = and i32 %add, 65535
  %or20 = or i32 %and18, %22
  %mul = mul i32 %16, 3000
  %25 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %lock_reg = getelementptr inbounds %struct.samsung_clk_pll, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %lock_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !137
  %28 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %29 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %con_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !137
  %31 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %32 = ptrtoint ptr %con_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %con_reg, align 4
  %add.ptr24 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %31) #9, !srcloc !137
  %call25 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %hw, i32 noundef 2097152)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call25, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !84, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !110, !112, !114, !115, !116, !118, !120, !122, !123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_clk_pll__167_76_samsung_pll_disable_early_timeout3, !1, !"__initcall__kmod_clk_pll__167_76_samsung_pll_disable_early_timeout3", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-pll.c", i32 76, i32 1}
!2 = distinct !{null, !3, !"pll_early_timeout", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk-pll.c", i32 69, i32 13}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1434, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @_samsung_clk_register_pll._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @_samsung_clk_register_pll._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1454, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1572, i32 3}
!14 = !{ptr @_samsung_clk_register_pll._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @_samsung_clk_register_pll._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1583, i32 3}
!18 = !{ptr @_samsung_clk_register_pll._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @_samsung_clk_register_pll._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @samsung_pll2126_clk_ops, !21, !"samsung_pll2126_clk_ops", i1 false, i1 false}
!21 = !{!"../drivers/clk/samsung/clk-pll.c", i32 167, i32 29}
!22 = !{ptr @samsung_pll3000_clk_ops, !23, !"samsung_pll3000_clk_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/samsung/clk-pll.c", i32 200, i32 29}
!24 = !{ptr @samsung_pll35xx_clk_min_ops, !25, !"samsung_pll35xx_clk_min_ops", i1 false, i1 false}
!25 = !{!"../drivers/clk/samsung/clk-pll.c", i32 302, i32 29}
!26 = !{ptr @samsung_pll35xx_clk_ops, !27, !"samsung_pll35xx_clk_ops", i1 false, i1 false}
!27 = !{!"../drivers/clk/samsung/clk-pll.c", i32 294, i32 29}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/samsung/clk-pll.c", i32 111, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @samsung_pll_lock_wait._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @samsung_pll_lock_wait._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/samsung/clk-pll.c", i32 258, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @samsung_pll35xx_set_rate._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @samsung_pll35xx_set_rate._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @samsung_pll0822x_clk_min_ops, !39, !"samsung_pll0822x_clk_min_ops", i1 false, i1 false}
!39 = !{!"../drivers/clk/samsung/clk-pll.c", i32 497, i32 29}
!40 = !{ptr @samsung_pll0822x_clk_ops, !41, !"samsung_pll0822x_clk_ops", i1 false, i1 false}
!41 = !{!"../drivers/clk/samsung/clk-pll.c", i32 489, i32 29}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/samsung/clk-pll.c", i32 461, i32 3}
!44 = !{ptr @samsung_pll0822x_set_rate._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @samsung_pll0822x_set_rate._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @samsung_pll45xx_clk_min_ops, !47, !"samsung_pll45xx_clk_min_ops", i1 false, i1 false}
!47 = !{!"../drivers/clk/samsung/clk-pll.c", i32 716, i32 29}
!48 = !{ptr @samsung_pll45xx_clk_ops, !49, !"samsung_pll45xx_clk_ops", i1 false, i1 false}
!49 = !{!"../drivers/clk/samsung/clk-pll.c", i32 710, i32 29}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/samsung/clk-pll.c", i32 660, i32 3}
!52 = !{ptr @samsung_pll45xx_set_rate._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @samsung_pll45xx_set_rate._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @samsung_pll36xx_clk_min_ops, !55, !"samsung_pll36xx_clk_min_ops", i1 false, i1 false}
!55 = !{!"../drivers/clk/samsung/clk-pll.c", i32 414, i32 29}
!56 = !{ptr @samsung_pll36xx_clk_ops, !57, !"samsung_pll36xx_clk_ops", i1 false, i1 false}
!57 = !{!"../drivers/clk/samsung/clk-pll.c", i32 406, i32 29}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/samsung/clk-pll.c", i32 367, i32 3}
!60 = !{ptr @samsung_pll36xx_set_rate._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @samsung_pll36xx_set_rate._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @samsung_pll0831x_clk_min_ops, !63, !"samsung_pll0831x_clk_min_ops", i1 false, i1 false}
!63 = !{!"../drivers/clk/samsung/clk-pll.c", i32 594, i32 29}
!64 = !{ptr @samsung_pll0831x_clk_ops, !65, !"samsung_pll0831x_clk_ops", i1 false, i1 false}
!65 = !{!"../drivers/clk/samsung/clk-pll.c", i32 586, i32 29}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/samsung/clk-pll.c", i32 550, i32 3}
!68 = !{ptr @samsung_pll0831x_set_rate._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @samsung_pll0831x_set_rate._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @samsung_pll6552_clk_ops, !71, !"samsung_pll6552_clk_ops", i1 false, i1 false}
!71 = !{!"../drivers/clk/samsung/clk-pll.c", i32 901, i32 29}
!72 = !{ptr @samsung_pll6553_clk_ops, !73, !"samsung_pll6553_clk_ops", i1 false, i1 false}
!73 = !{!"../drivers/clk/samsung/clk-pll.c", i32 939, i32 29}
!74 = !{ptr @samsung_pll46xx_clk_min_ops, !75, !"samsung_pll46xx_clk_min_ops", i1 false, i1 false}
!75 = !{!"../drivers/clk/samsung/clk-pll.c", i32 861, i32 29}
!76 = !{ptr @samsung_pll46xx_clk_ops, !77, !"samsung_pll46xx_clk_ops", i1 false, i1 false}
!77 = !{!"../drivers/clk/samsung/clk-pll.c", i32 855, i32 29}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/samsung/clk-pll.c", i32 797, i32 3}
!80 = !{ptr @samsung_pll46xx_set_rate._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @samsung_pll46xx_set_rate._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @samsung_s3c2410_mpll_clk_min_ops, !83, !"samsung_s3c2410_mpll_clk_min_ops", i1 false, i1 false}
!83 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1064, i32 29}
!84 = !{ptr @samsung_s3c2410_mpll_clk_ops, !85, !"samsung_s3c2410_mpll_clk_ops", i1 false, i1 false}
!85 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1082, i32 29}
!86 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1002, i32 3}
!88 = !{ptr @samsung_s3c2410_pll_set_rate._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @samsung_s3c2410_pll_set_rate._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @samsung_s3c2410_upll_clk_min_ops, !91, !"samsung_s3c2410_upll_clk_min_ops", i1 false, i1 false}
!91 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1070, i32 29}
!92 = !{ptr @samsung_s3c2410_upll_clk_ops, !93, !"samsung_s3c2410_upll_clk_ops", i1 false, i1 false}
!93 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1090, i32 29}
!94 = !{ptr @samsung_s3c2440_mpll_clk_min_ops, !95, !"samsung_s3c2440_mpll_clk_min_ops", i1 false, i1 false}
!95 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1076, i32 29}
!96 = !{ptr @samsung_s3c2440_mpll_clk_ops, !97, !"samsung_s3c2440_mpll_clk_ops", i1 false, i1 false}
!97 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1098, i32 29}
!98 = !{ptr @samsung_pll2550x_clk_ops, !99, !"samsung_pll2550x_clk_ops", i1 false, i1 false}
!99 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1140, i32 29}
!100 = !{ptr @samsung_pll2550xx_clk_min_ops, !101, !"samsung_pll2550xx_clk_min_ops", i1 false, i1 false}
!101 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1237, i32 29}
!102 = !{ptr @samsung_pll2550xx_clk_ops, !103, !"samsung_pll2550xx_clk_ops", i1 false, i1 false}
!103 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1231, i32 29}
!104 = !{ptr @.str.20, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1198, i32 3}
!106 = !{ptr @samsung_pll2550xx_set_rate._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @samsung_pll2550xx_set_rate._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @samsung_pll2650x_clk_min_ops, !109, !"samsung_pll2650x_clk_min_ops", i1 false, i1 false}
!109 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1329, i32 29}
!110 = !{ptr @samsung_pll2650x_clk_ops, !111, !"samsung_pll2650x_clk_ops", i1 false, i1 false}
!111 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1323, i32 29}
!112 = !{ptr @.str.21, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1293, i32 3}
!114 = !{ptr @samsung_pll2650x_set_rate._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @samsung_pll2650x_set_rate._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @samsung_pll2650xx_clk_min_ops, !117, !"samsung_pll2650xx_clk_min_ops", i1 false, i1 false}
!117 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1420, i32 29}
!118 = !{ptr @samsung_pll2650xx_clk_ops, !119, !"samsung_pll2650xx_clk_ops", i1 false, i1 false}
!119 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1414, i32 29}
!120 = !{ptr @.str.22, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/samsung/clk-pll.c", i32 1383, i32 3}
!122 = !{ptr @samsung_pll2650xx_set_rate._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @samsung_pll2650xx_set_rate._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i64 3027411}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 2148071728, i64 2148072008, i64 2148072342, i64 2148072676}
!137 = !{i64 3026993}
!138 = !{i64 2152576114}
!139 = !{i64 2152575956}
