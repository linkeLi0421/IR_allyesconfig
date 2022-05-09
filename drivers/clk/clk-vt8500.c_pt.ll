; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-vt8500.c_pt.bc'
source_filename = "../drivers/clk/clk-vt8500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_device = type { %struct.clk_hw, ptr, i32, ptr, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_pll = type { %struct.clk_hw, ptr, ptr, i32 }

@__of_table_vt8500_device = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-device-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vtwm_device_clk_init }, section "__clk_of_table", align 4
@__of_table_vt8500_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_pll_init }, section "__clk_of_table", align 4
@__of_table_wm8650_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8650-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8650_pll_init }, section "__clk_of_table", align 4
@__of_table_wm8750_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8750-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8750_pll_init }, section "__clk_of_table", align 4
@__of_table_wm8850_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8850-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8850_pll_init }, section "__clk_of_table", align 4
@pmc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/clk-vt8500.c\00", [39 x i8] zeroinitializer }, align 32
@_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable-reg\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable-bit\00", [21 x i8] zeroinitializer }, align 32
@vtwm_device_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: enable-bit property required for gated clock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vtwm_device_clk_init\00", [43 x i8] zeroinitializer }, align 32
@vtwm_device_clk_init._entry_ptr = internal global ptr @vtwm_device_clk_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"divisor-reg\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"divisor-mask\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@vt8500_gated_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @vt8500_dclk_enable, ptr @vt8500_dclk_disable, ptr @vt8500_dclk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vt8500_divisor_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt8500_dclk_recalc_rate, ptr @vt8500_dclk_round_rate, ptr null, ptr null, ptr null, ptr @vt8500_dclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vt8500_gated_divisor_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @vt8500_dclk_enable, ptr @vt8500_dclk_disable, ptr @vt8500_dclk_is_enabled, ptr null, ptr null, ptr null, ptr @vt8500_dclk_recalc_rate, ptr @vt8500_dclk_round_rate, ptr null, ptr null, ptr null, ptr @vt8500_dclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vtwm_device_clk_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Invalid clock description in device tree\0A\00", [48 x i8] zeroinitializer }, align 32
@vtwm_device_clk_init._entry_ptr.10 = internal global ptr @vtwm_device_clk_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"via,vt8500-pmc\00", [17 x i8] zeroinitializer }, align 32
@vtwm_set_pmc_base._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s:of_iomap(pmc) failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vtwm_set_pmc_base\00", [46 x i8] zeroinitializer }, align 32
@vtwm_set_pmc_base._entry_ptr = internal global ptr @vtwm_set_pmc_base._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_lock\00", [26 x i8] zeroinitializer }, align 32
@vt8500_dclk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: invalid divisor for clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vt8500_dclk_set_rate\00", [43 x i8] zeroinitializer }, align 32
@vt8500_dclk_set_rate._entry_ptr = internal global ptr @vt8500_dclk_set_rate._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@vtwm_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vtwm_pll_recalc_rate, ptr @vtwm_pll_round_rate, ptr null, ptr null, ptr null, ptr @vtwm_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vt8500_find_pll_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: requested rate out of range\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vt8500_find_pll_bits\00", [43 x i8] zeroinitializer }, align 32
@vt8500_find_pll_bits._entry_ptr = internal global ptr @vt8500_find_pll_bits._entry, section ".printk_index", align 4
@vt8500_find_pll_bits._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: requested rate %lu, found rate %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@vt8500_find_pll_bits._entry_ptr.22 = internal global ptr @vt8500_find_pll_bits._entry.20, section ".printk_index", align 4
@wm8650_find_pll_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: rate error is %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm8650_find_pll_bits\00", [43 x i8] zeroinitializer }, align 32
@wm8650_find_pll_bits._entry_ptr = internal global ptr @wm8650_find_pll_bits._entry, section ".printk_index", align 4
@wm8750_find_pll_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: impossible rate %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm8750_find_pll_bits\00", [43 x i8] zeroinitializer }, align 32
@wm8750_find_pll_bits._entry_ptr = internal global ptr @wm8750_find_pll_bits._entry, section ".printk_index", align 4
@wm8750_find_pll_bits._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.26, ptr @.str, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wm8750_find_pll_bits._entry_ptr.28 = internal global ptr @wm8750_find_pll_bits._entry.27, section ".printk_index", align 4
@wm8750_get_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014%s: PLL recommended input frequency 10..200Mhz (requested %d Mhz)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8750_get_filter\00", [46 x i8] zeroinitializer }, align 32
@wm8750_get_filter._entry_ptr = internal global ptr @wm8750_get_filter._entry, section ".printk_index", align 4
@wm8850_find_pll_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.31, ptr @.str, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm8850_find_pll_bits\00", [43 x i8] zeroinitializer }, align 32
@wm8850_find_pll_bits._entry_ptr = internal global ptr @wm8850_find_pll_bits._entry, section ".printk_index", align 4
@wm8850_find_pll_bits._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.31, ptr @.str, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wm8850_find_pll_bits._entry_ptr.33 = internal global ptr @wm8850_find_pll_bits._entry.32, section ".printk_index", align 4
@vtwm_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid pll type\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vtwm_pll_set_rate\00", [46 x i8] zeroinitializer }, align 32
@vtwm_pll_set_rate._entry_ptr = internal global ptr @vtwm_pll_set_rate._entry, section ".printk_index", align 4
@switch.table.vtwm_device_clk_init = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @vt8500_gated_clk_ops, ptr @vt8500_divisor_clk_ops, ptr @vt8500_gated_divisor_clk_ops], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"pmc_base\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 48, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 238, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"_lock\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 243, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 246, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 248, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 255, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 264, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 268, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"vt8500_gated_clk_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 198, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"vt8500_divisor_clk_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 204, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [29 x i8] c"vt8500_gated_divisor_clk_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 210, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 281, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 53, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 62, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 18, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 182, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 686, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [13 x i8] c"vtwm_pll_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 667, i32 29 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 357, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 372, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 420, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 487, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 492, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 431, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 535, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 540, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [28 x i8] c"../drivers/clk/clk-vt8500.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 579, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [34 x i8] c"switch.table.vtwm_device_clk_init\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__of_table_vt8500_device, ptr @__of_table_vt8500_pll, ptr @__of_table_wm8650_pll, ptr @__of_table_wm8750_pll, ptr @__of_table_wm8850_pll, ptr @vt8500_dclk_set_rate._entry, ptr @vt8500_dclk_set_rate._entry_ptr, ptr @vt8500_find_pll_bits._entry, ptr @vt8500_find_pll_bits._entry.20, ptr @vt8500_find_pll_bits._entry_ptr, ptr @vt8500_find_pll_bits._entry_ptr.22, ptr @vtwm_device_clk_init._entry, ptr @vtwm_device_clk_init._entry.8, ptr @vtwm_device_clk_init._entry_ptr, ptr @vtwm_device_clk_init._entry_ptr.10, ptr @vtwm_pll_set_rate._entry, ptr @vtwm_pll_set_rate._entry_ptr, ptr @vtwm_set_pmc_base._entry, ptr @vtwm_set_pmc_base._entry_ptr, ptr @wm8650_find_pll_bits._entry, ptr @wm8650_find_pll_bits._entry_ptr, ptr @wm8750_find_pll_bits._entry, ptr @wm8750_find_pll_bits._entry.27, ptr @wm8750_find_pll_bits._entry_ptr, ptr @wm8750_find_pll_bits._entry_ptr.28, ptr @wm8750_get_filter._entry, ptr @wm8750_get_filter._entry_ptr, ptr @wm8850_find_pll_bits._entry, ptr @wm8850_find_pll_bits._entry.32, ptr @wm8850_find_pll_bits._entry_ptr, ptr @wm8850_find_pll_bits._entry_ptr.33, ptr @pmc_base, ptr @.str, ptr @_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vt8500_gated_clk_ops, ptr @vt8500_divisor_clk_ops, ptr @vt8500_gated_divisor_clk_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @vtwm_pll_ops, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @switch.table.vtwm_device_clk_init], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtwm_device_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_gated_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_divisor_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_gated_divisor_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtwm_device_clk_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtwm_set_pmc_base._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_dclk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtwm_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_find_pll_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_find_pll_bits._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8650_find_pll_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8750_find_pll_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8750_find_pll_bits._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8750_get_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8850_find_pll_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8850_find_pll_bits._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtwm_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vtwm_device_clk_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vtwm_device_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %en_reg = alloca i32, align 4
  %div_reg = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %parent_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en_reg) #8
  %0 = ptrtoint ptr %en_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %en_reg, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_reg) #8
  %1 = ptrtoint ptr %div_reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %div_reg, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %4 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #8
  %5 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %6 = call ptr @memset(ptr %init, i32 255, i32 28)
  %7 = load ptr, ptr @pmc_base, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vtwm_set_pmc_base() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #12
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !107

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.clk_device, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @_lock, ptr %lock, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %en_reg, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool28.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end40_crit_edge

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then29:                                        ; preds = %if.end26
  %10 = load ptr, ptr @pmc_base, align 4
  %11 = ptrtoint ptr %en_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %en_reg, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  %en_reg30 = getelementptr inbounds %struct.clk_device, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %en_reg30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %en_reg30, align 4
  %en_bit = getelementptr inbounds %struct.clk_device, ptr %call7.i.i, i32 0, i32 4
  %call.i.i136 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.2, ptr noundef %en_bit, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i136)
  %tobool32.not = icmp sgt i32 %call.i.i136, -1
  br i1 %tobool32.not, label %if.then29.if.end40_crit_edge, label %do.end36

if.then29.if.end40_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end40:                                         ; preds = %if.then29.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  %clk_init_flags.0 = phi i32 [ 0, %if.end26.if.end40_crit_edge ], [ 1, %if.then29.if.end40_crit_edge ]
  %call.i.i137 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef nonnull %div_reg, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i137)
  %tobool42.not = icmp sgt i32 %call.i.i137, -1
  br i1 %tobool42.not, label %if.then43, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load ptr, ptr @pmc_base, align 4
  %15 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %div_reg, align 4
  %add.ptr44 = getelementptr i8, ptr %14, i32 %16
  %div_reg45 = getelementptr inbounds %struct.clk_device, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %div_reg45 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr44, ptr %div_reg45, align 4
  %div_mask = getelementptr inbounds %struct.clk_device, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %div_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 31, ptr %div_mask, align 8
  %call.i.i138 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef %div_mask, i32 noundef 1, i32 noundef 0) #8
  %or48 = or i32 %clk_init_flags.0, 2
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end40.if.end49_crit_edge
  %clk_init_flags.1 = phi i32 [ %clk_init_flags.0, %if.end40.if.end49_crit_edge ], [ %or48, %if.then43 ]
  %call50 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.7, ptr noundef nonnull %clk_name) #8
  %switch.tableidx = add nsw i32 %clk_init_flags.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 3
  br i1 %19, label %switch.lookup, label %do.end57

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end49
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.vtwm_device_clk_init, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %ops54 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %21 = ptrtoint ptr %ops54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %switch.load, ptr %ops54, align 4
  %22 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_name, align 4
  %24 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %init, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags, align 4
  %call61 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #8
  %26 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call61, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %27 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %28 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %num_parents, align 4
  %init63 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %init63 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %init, ptr %init63, align 8
  %call65 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool67.not = icmp eq i32 %call65, 0
  br i1 %tobool67.not, label %if.end99, label %do.end83, !prof !108

do.end83:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef null) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end99:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %call100 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call7.i.i) #8
  %30 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_name, align 4
  %call101 = call i32 @clk_hw_register_clkdev(ptr noundef nonnull %call7.i.i, ptr noundef %31, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end83, %do.end57, %do.end36, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_reg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en_reg) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_pll_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %node, i32 noundef 0) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8650_pll_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %node, i32 noundef 1) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8750_pll_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %node, i32 noundef 2) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8850_pll_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %node, i32 noundef 3) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vtwm_set_pmc_base() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @ioremap(i32 noundef -669843456, i32 noundef 4096) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %call2, %if.else ], [ %call1, %if.then ]
  store ptr %storemerge, ptr @pmc_base, align 4
  tail call void @of_node_put(ptr noundef %call) #8
  %0 = load ptr, ptr @pmc_base, align 4
  %tobool3.not = icmp eq ptr %0, null
  br i1 %tobool3.not, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_enable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %en_reg = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %en_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %en_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !109
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %en_bit = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %en_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %en_bit, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %en_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %en_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !112
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_dclk_disable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %en_reg = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %en_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %en_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !109
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %en_bit = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %en_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %en_bit, align 4
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %en_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %en_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !112
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %en_reg = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %en_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %en_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !109
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %en_bit = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %en_bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_bit, align 4
  %6 = lshr i32 %3, %5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div_reg = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !109
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %div_mask = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_mask, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %5)
  %cmp = icmp ne i32 %5, 63
  %and4 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  %and5 = shl i32 %and, 6
  %mul = and i32 %and5, 1984
  %div.0 = select i1 %or.cond, i32 %and, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.0)
  %cmp6 = icmp eq i32 %div.0, 0
  %add = add i32 %5, 1
  %spec.select = select i1 %cmp6, i32 %add, i32 %div.0
  %div10 = udiv i32 %parent_rate, %spec.select
  ret i32 %div10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt8500_dclk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %div = udiv i32 %1, %rate
  %mul = mul i32 %div, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %1)
  %cmp1 = icmp ult i32 %mul, %1
  %inc = zext i1 %cmp1 to i32
  %spec.select = add i32 %div, %inc
  %div_mask = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp4 = icmp eq i32 %3, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select)
  %cmp5 = icmp ugt i32 %spec.select, 31
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  %4 = add i32 %spec.select, 64
  %mul8 = and i32 %4, -64
  %divisor.1 = select i1 %or.cond, i32 %mul8, i32 %spec.select
  %div10 = udiv i32 %1, %divisor.1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div10, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %parent_rate, %rate
  %div_mask = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %div_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %div_mask, align 4
  %add = add i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add)
  %cmp1 = icmp eq i32 %div, %add
  %spec.store.select = select i1 %cmp1, i32 0, i32 %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp5 = icmp eq i32 %1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.store.select)
  %cmp6 = icmp ugt i32 %spec.store.select, 31
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false
  %div842 = lshr i32 %spec.store.select, 6
  %add9 = add nuw nsw i32 %div842, 32
  %divisor.0 = select i1 %or.cond, i32 %add9, i32 %spec.store.select
  call void @__sanitizer_cov_trace_cmp4(i32 %divisor.0, i32 %1)
  %cmp12 = icmp ugt i32 %divisor.0, %1
  br i1 %cmp12, label %do.end, label %do.body17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #13
  br label %cleanup

do.body17:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %4 = load ptr, ptr @pmc_base, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %6 = and i32 %5, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not6.i = icmp eq i32 %6, 0
  br i1 %tobool.not6.i, label %do.body17.vt8500_pmc_wait_busy.exit_crit_edge, label %do.body17.do.end.i_crit_edge

do.body17.do.end.i_crit_edge:                     ; preds = %do.body17
  br label %do.end.i

do.body17.vt8500_pmc_wait_busy.exit_crit_edge:    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body17.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !119
  %7 = load ptr, ptr @pmc_base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %9 = and i32 %8, 402653184
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end.i.vt8500_pmc_wait_busy.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.vt8500_pmc_wait_busy.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit

vt8500_pmc_wait_busy.exit:                        ; preds = %do.end.i.vt8500_pmc_wait_busy.exit_crit_edge, %do.body17.vt8500_pmc_wait_busy.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %divisor.0)
  %div_reg = getelementptr inbounds %struct.clk_device, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %div_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !112
  %13 = load ptr, ptr @pmc_base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %15 = and i32 %14, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not6.i43 = icmp eq i32 %15, 0
  br i1 %tobool.not6.i43, label %vt8500_pmc_wait_busy.exit.vt8500_pmc_wait_busy.exit46_crit_edge, label %vt8500_pmc_wait_busy.exit.do.end.i45_crit_edge

vt8500_pmc_wait_busy.exit.do.end.i45_crit_edge:   ; preds = %vt8500_pmc_wait_busy.exit
  br label %do.end.i45

vt8500_pmc_wait_busy.exit.vt8500_pmc_wait_busy.exit46_crit_edge: ; preds = %vt8500_pmc_wait_busy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit46

do.end.i45:                                       ; preds = %do.end.i45.do.end.i45_crit_edge, %vt8500_pmc_wait_busy.exit.do.end.i45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !119
  %16 = load ptr, ptr @pmc_base, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %18 = and i32 %17, 402653184
  %tobool.not.i44 = icmp eq i32 %18, 0
  br i1 %tobool.not.i44, label %do.end.i45.vt8500_pmc_wait_busy.exit46_crit_edge, label %do.end.i45.do.end.i45_crit_edge

do.end.i45.do.end.i45_crit_edge:                  ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i45

do.end.i45.vt8500_pmc_wait_busy.exit46_crit_edge: ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit46

vt8500_pmc_wait_busy.exit46:                      ; preds = %do.end.i45.vt8500_pmc_wait_busy.exit46_crit_edge, %vt8500_pmc_wait_busy.exit.vt8500_pmc_wait_busy.exit46_crit_edge
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call21) #8
  br label %cleanup

cleanup:                                          ; preds = %vt8500_pmc_wait_busy.exit46, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %vt8500_pmc_wait_busy.exit46 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vtwm_pll_clk_init(ptr noundef %node, i32 noundef %pll_type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %reg = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %parent_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %3 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %4 = getelementptr inbounds i8, ptr %init, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  %6 = load ptr, ptr @pmc_base, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vtwm_set_pmc_base() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.17, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool1.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool1.not, label %if.end25, label %do.end, !prof !108

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 24) #12
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %do.end46, label %if.end62, !prof !107

do.end46:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 691, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end25
  %8 = load ptr, ptr @pmc_base, align 4
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  %reg63 = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg63 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %reg63, align 4
  %lock = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @_lock, ptr %lock, align 8
  %type = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pll_type, ptr %type, align 4
  %call64 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.7, ptr noundef nonnull %clk_name) #8
  %14 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_name, align 4
  %16 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vtwm_pll_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags, align 4
  %call66 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #8
  %19 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call66, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %20 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %num_parents, align 4
  %init68 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %init68 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %init, ptr %init68, align 8
  %call71 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool73.not = icmp eq i32 %call71, 0
  br i1 %tobool73.not, label %if.end105, label %do.end89, !prof !108

do.end89:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 711, i32 noundef 9, ptr noundef null) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end105:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call106 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call7.i.i) #8
  %23 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_name, align 4
  %call107 = call i32 @clk_hw_register_clkdev(ptr noundef nonnull %call7.i.i, ptr noundef %24, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end89, %do.end46, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtwm_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !109
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %type = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb13
    i32 3, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = shl i32 %3, 1
  %shl = and i32 %and, 62
  %mul = mul i32 %shl, %parent_rate
  %and3 = lshr i32 %3, 8
  %and3.lobit = and i32 %and3, 1
  %7 = xor i32 %and3.lobit, 1
  %div55 = lshr i32 %mul, %7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and5 = and i32 %3, 1023
  %mul6 = mul i32 %and5, %parent_rate
  %shr = lshr i32 %3, 10
  %and7 = and i32 %shr, 7
  %shr8 = lshr i32 %3, 13
  %and9 = and i32 %shr8, 3
  %mul11 = shl nuw nsw i32 %and7, %and9
  %div12 = udiv i32 %mul6, %mul11
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr14 = lshr i32 %3, 16
  %and15 = and i32 %shr14, 255
  %add = add nuw nsw i32 %and15, 1
  %mul16 = mul i32 %add, %parent_rate
  %shr17 = lshr i32 %3, 8
  %and18 = and i32 %shr17, 1
  %add19 = add nuw nsw i32 %and18, 1
  %and20 = and i32 %3, 7
  %mul22 = shl nuw nsw i32 %add19, %and20
  %div23 = udiv i32 %mul16, %mul22
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = lshr i32 %3, 15
  %add27 = and i32 %8, 254
  %mul28 = add nuw nsw i32 %add27, 2
  %mul29 = mul i32 %mul28, %parent_rate
  %shr30 = lshr i32 %3, 8
  %and31 = and i32 %shr30, 1
  %add32 = add nuw nsw i32 %and31, 1
  %and33 = and i32 %3, 3
  %mul35 = shl nuw nsw i32 %add32, %and33
  %div36 = udiv i32 %mul29, %mul35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb13, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %pll_freq.0 = phi i32 [ %div36, %sw.bb24 ], [ %div23, %sw.bb13 ], [ %div12, %sw.bb4 ], [ %div55, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %pll_freq.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtwm_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #5 align 64 {
entry:
  %filter = alloca i32, align 4
  %mul = alloca i32, align 4
  %div1 = alloca i32, align 4
  %div2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mul) #8
  %0 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mul, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div1) #8
  %1 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %div1, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div2) #8
  %2 = ptrtoint ptr %div2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %div2, align 4, !annotation !106
  %type = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb10
    i32 3, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prate, align 4
  %mul.i = shl i32 %7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp.i = icmp ugt i32 %mul.i, %rate
  %mul1.i = mul i32 %7, 62
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %rate)
  %cmp2.i = icmp ult i32 %mul1.i, %rate
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %vt8500_find_pll_bits.exit, label %if.end.i

if.end.i:                                         ; preds = %sw.bb
  %mul3.i = mul i32 %7, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %rate)
  %cmp4.not.i = icmp ult i32 %mul3.i, %rate
  %..i = select i1 %cmp4.not.i, i32 1, i32 2
  %8 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %..i, ptr %div1, align 4
  %not.cmp4.not.i = xor i1 %cmp4.not.i, true
  %9 = zext i1 %not.cmp4.not.i to i32
  %div34.i = lshr i32 %7, %9
  %div7.i = udiv i32 %rate, %div34.i
  %10 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div7.i, ptr %mul, align 4
  %mul9.i = mul i32 %div7.i, %div34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9.i, i32 %rate)
  %cmp10.not.i = icmp eq i32 %mul9.i, %rate
  br i1 %cmp10.not.i, label %if.end.i.if.then_crit_edge, label %do.end14.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %rate, i32 noundef %mul9.i) #13
  br label %if.then

vt8500_find_pll_bits.exit:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %sw.epilog

if.then:                                          ; preds = %do.end14.i, %if.end.i.if.then_crit_edge
  %11 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prate, align 4
  %13 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %div1, align 4
  %div = udiv i32 %12, %14
  %15 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mul, align 4
  %mul1 = mul i32 %16, %div
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %17 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %19 = add i32 %rate, -600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -562500001, i32 %19)
  %20 = icmp ult i32 %19, -562500001
  %21 = or i1 %20, %tobool.not.i
  br i1 %21, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i56

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i56:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000001, i32 %rate)
  %cmp3.i = icmp ult i32 %rate, 75000001
  br i1 %cmp3.i, label %if.end.i56.cond.end9.i_crit_edge, label %cond.false.i

if.end.i56.cond.end9.i_crit_edge:                 ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9.i

cond.false.i:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000001, i32 %rate)
  %cmp4.i = icmp ult i32 %rate, 150000001
  br i1 %cmp4.i, label %cond.false.i.cond.end9.i_crit_edge, label %cond.false6.i

cond.false.i.cond.end9.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9.i

cond.false6.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000001, i32 %rate)
  %cmp7.i = icmp ult i32 %rate, 300000001
  %cond.i = zext i1 %cmp7.i to i32
  br label %cond.end9.i

cond.end9.i:                                      ; preds = %cond.false6.i, %cond.false.i.cond.end9.i_crit_edge, %if.end.i56.cond.end9.i_crit_edge
  %cond10.i = phi i32 [ 3, %if.end.i56.cond.end9.i_crit_edge ], [ %cond.i, %cond.false6.i ], [ 2, %cond.false.i.cond.end9.i_crit_edge ]
  %22 = ptrtoint ptr %div2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond10.i, ptr %div2, align 4
  %mul.i57 = mul nuw i32 %rate, 5
  %mul12.i = shl i32 %mul.i57, %cond10.i
  %mul12.i.frozen = freeze i32 %mul12.i
  %.frozen = freeze i32 %18
  %div.i = udiv i32 %mul12.i.frozen, %.frozen
  %23 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %mul12.i.frozen, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp15.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp15.i, label %cond.end9.i.if.then5.loopexit_crit_edge, label %for.inc.i

cond.end9.i.if.then5.loopexit_crit_edge:          ; preds = %cond.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.loopexit

for.inc.i:                                        ; preds = %cond.end9.i
  %mul.i57.1 = shl nuw i32 %rate, 2
  %mul12.i.1 = shl i32 %mul.i57.1, %cond10.i
  %mul12.i.1.frozen = freeze i32 %mul12.i.1
  %.frozen74 = freeze i32 %18
  %div.i.1 = udiv i32 %mul12.i.1.frozen, %.frozen74
  %24 = mul i32 %div.i.1, %.frozen74
  %rem.i.1.decomposed = sub i32 %mul12.i.1.frozen, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.1.decomposed, i32 %rem.i.decomposed)
  %cmp13.i.1 = icmp ult i32 %rem.i.1.decomposed, %rem.i.decomposed
  br i1 %cmp13.i.1, label %if.then14.i.1, label %for.inc.i.for.inc.i.1_crit_edge

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then14.i.1:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1.decomposed)
  %cmp15.i.1 = icmp eq i32 %rem.i.1.decomposed, 0
  br i1 %cmp15.i.1, label %if.then14.i.1.if.then5.loopexit_crit_edge, label %if.then14.i.1.for.inc.i.1_crit_edge

if.then14.i.1.for.inc.i.1_crit_edge:              ; preds = %if.then14.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then14.i.1.if.then5.loopexit_crit_edge:        ; preds = %if.then14.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.loopexit

for.inc.i.1:                                      ; preds = %if.then14.i.1.for.inc.i.1_crit_edge, %for.inc.i.for.inc.i.1_crit_edge
  %div.i71.1 = phi i32 [ %div.i, %for.inc.i.for.inc.i.1_crit_edge ], [ %div.i.1, %if.then14.i.1.for.inc.i.1_crit_edge ]
  %min_err.1.i.1 = phi i32 [ %rem.i.decomposed, %for.inc.i.for.inc.i.1_crit_edge ], [ %rem.i.1.decomposed, %if.then14.i.1.for.inc.i.1_crit_edge ]
  %mul.i57.2 = mul nuw nsw i32 %rate, 3
  %mul12.i.2 = shl i32 %mul.i57.2, %cond10.i
  %mul12.i.2.frozen = freeze i32 %mul12.i.2
  %.frozen75 = freeze i32 %18
  %div.i.2 = udiv i32 %mul12.i.2.frozen, %.frozen75
  %25 = mul i32 %div.i.2, %.frozen75
  %rem.i.2.decomposed = sub i32 %mul12.i.2.frozen, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.2.decomposed, i32 %min_err.1.i.1)
  %cmp13.i.2 = icmp ult i32 %rem.i.2.decomposed, %min_err.1.i.1
  br i1 %cmp13.i.2, label %if.then14.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then14.i.2:                                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.2.decomposed)
  %cmp15.i.2 = icmp eq i32 %rem.i.2.decomposed, 0
  br i1 %cmp15.i.2, label %if.then14.i.2.if.then5.loopexit_crit_edge, label %if.then14.i.2.for.inc.i.2_crit_edge

if.then14.i.2.for.inc.i.2_crit_edge:              ; preds = %if.then14.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then14.i.2.if.then5.loopexit_crit_edge:        ; preds = %if.then14.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.loopexit

for.inc.i.2:                                      ; preds = %if.then14.i.2.for.inc.i.2_crit_edge, %for.inc.i.1.for.inc.i.2_crit_edge
  %div.i71.2 = phi i32 [ %div.i71.1, %for.inc.i.1.for.inc.i.2_crit_edge ], [ %div.i.2, %if.then14.i.2.for.inc.i.2_crit_edge ]
  %min_err.1.i.2 = phi i32 [ %min_err.1.i.1, %for.inc.i.1.for.inc.i.2_crit_edge ], [ %rem.i.2.decomposed, %if.then14.i.2.for.inc.i.2_crit_edge ]
  %26 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div.i71.2, ptr %mul, align 4
  %27 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %div1, align 4
  %28 = add i32 %div.i71.2, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1021, i32 %28)
  %29 = icmp ult i32 %28, -1021
  br i1 %29, label %for.inc.i.2.sw.epilog_crit_edge, label %do.end.i59

for.inc.i.2.sw.epilog_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i59:                                       ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %min_err.1.i.2) #13
  br label %if.then5

if.then5.loopexit:                                ; preds = %if.then14.i.2.if.then5.loopexit_crit_edge, %if.then14.i.1.if.then5.loopexit_crit_edge, %cond.end9.i.if.then5.loopexit_crit_edge
  %storemerge47.i.lcssa = phi i32 [ 5, %cond.end9.i.if.then5.loopexit_crit_edge ], [ 4, %if.then14.i.1.if.then5.loopexit_crit_edge ], [ 3, %if.then14.i.2.if.then5.loopexit_crit_edge ]
  %div.i.lcssa = phi i32 [ %div.i, %cond.end9.i.if.then5.loopexit_crit_edge ], [ %div.i.1, %if.then14.i.1.if.then5.loopexit_crit_edge ], [ %div.i.2, %if.then14.i.2.if.then5.loopexit_crit_edge ]
  %30 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div.i.lcssa, ptr %mul, align 4
  %31 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge47.i.lcssa, ptr %div1, align 4
  br label %if.then5

if.then5:                                         ; preds = %if.then5.loopexit, %do.end.i59
  %32 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prate, align 4
  %34 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mul, align 4
  %mul6 = mul i32 %35, %33
  %36 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %div1, align 4
  %38 = ptrtoint ptr %div2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %div2, align 4
  %mul7 = shl i32 %37, %39
  %div8 = udiv i32 %mul6, %mul7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %40 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prate, align 4
  %call11 = call fastcc i32 @wm8750_find_pll_bits(i32 noundef %rate, i32 noundef %41, ptr noundef nonnull %filter, ptr noundef nonnull %mul, ptr noundef nonnull %div1, ptr noundef nonnull %div2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %prate, align 4
  %44 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mul, align 4
  %add = add i32 %45, 1
  %mul14 = mul i32 %add, %43
  %46 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %div1, align 4
  %add15 = add i32 %47, 1
  %48 = ptrtoint ptr %div2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %div2, align 4
  %mul17 = shl i32 %add15, %49
  %div18 = udiv i32 %mul14, %mul17
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %50 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prate, align 4
  %call21 = call fastcc i32 @wm8850_find_pll_bits(i32 noundef %rate, i32 noundef %51, ptr noundef nonnull %mul, ptr noundef nonnull %div1, ptr noundef nonnull %div2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prate, align 4
  %54 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mul, align 4
  %add24 = shl i32 %55, 1
  %mul25 = add i32 %add24, 2
  %mul26 = mul i32 %mul25, %53
  %56 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %div1, align 4
  %add27 = add i32 %57, 1
  %58 = ptrtoint ptr %div2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %div2, align 4
  %mul29 = shl i32 %add27, %59
  %div30 = udiv i32 %mul26, %mul29
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then23, %sw.bb20.sw.epilog_crit_edge, %if.then13, %sw.bb10.sw.epilog_crit_edge, %if.then5, %for.inc.i.2.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %if.then, %vt8500_find_pll_bits.exit, %entry.sw.epilog_crit_edge
  %60 = phi i32 [ %div30, %if.then23 ], [ %div18, %if.then13 ], [ %div8, %if.then5 ], [ %mul1, %if.then ], [ -22, %for.inc.i.2.sw.epilog_crit_edge ], [ -22, %sw.bb2.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ -22, %vt8500_find_pll_bits.exit ], [ %call11, %sw.bb10.sw.epilog_crit_edge ], [ %call21, %sw.bb20.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mul) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #8
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtwm_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  %filter = alloca i32, align 4
  %mul = alloca i32, align 4
  %div1 = alloca i32, align 4
  %div2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #8
  %0 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %filter, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mul) #8
  %1 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mul, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div1) #8
  %2 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %div1, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div2) #8
  %3 = ptrtoint ptr %div2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %div2, align 4, !annotation !106
  %type = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb10
    i32 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  %mul.i = shl i32 %parent_rate, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp.i = icmp ugt i32 %mul.i, %rate
  %mul1.i = mul i32 %parent_rate, 62
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %rate)
  %cmp2.i = icmp ult i32 %mul1.i, %rate
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %vt8500_find_pll_bits.exit, label %if.end.i

if.end.i:                                         ; preds = %sw.bb
  %mul3.i = mul i32 %parent_rate, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.i, i32 %rate)
  %cmp4.not.i = icmp ult i32 %mul3.i, %rate
  %..i = select i1 %cmp4.not.i, i32 1, i32 2
  %7 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %..i, ptr %div1, align 4
  %not.cmp4.not.i = xor i1 %cmp4.not.i, true
  %8 = zext i1 %not.cmp4.not.i to i32
  %div34.i = lshr i32 %parent_rate, %8
  %div7.i = udiv i32 %rate, %div34.i
  %9 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div7.i, ptr %mul, align 4
  %mul9.i = mul i32 %div7.i, %div34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9.i, i32 %rate)
  %cmp10.not.i = icmp eq i32 %mul9.i, %rate
  br i1 %cmp10.not.i, label %if.end.i.if.then_crit_edge, label %do.end14.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %rate, i32 noundef %mul9.i) #13
  br label %if.then

vt8500_find_pll_bits.exit:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.then:                                          ; preds = %do.end14.i, %if.end.i.if.then_crit_edge
  %10 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  %cond = select i1 %cmp, i32 0, i32 256
  %12 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mul, align 4
  %shr = lshr i32 %13, 1
  %and = and i32 %shr, 31
  %or = or i32 %and, %cond
  br label %do.body39

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool.not.i = icmp eq i32 %parent_rate, 0
  %14 = add i32 %rate, -600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -562500001, i32 %14)
  %15 = icmp ult i32 %14, -562500001
  %16 = or i1 %15, %tobool.not.i
  br i1 %16, label %sw.bb1.cleanup_crit_edge, label %if.end.i74

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i74:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000001, i32 %rate)
  %cmp3.i = icmp ult i32 %rate, 75000001
  br i1 %cmp3.i, label %if.end.i74.cond.end9.i_crit_edge, label %cond.false.i

if.end.i74.cond.end9.i_crit_edge:                 ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9.i

cond.false.i:                                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000001, i32 %rate)
  %cmp4.i = icmp ult i32 %rate, 150000001
  br i1 %cmp4.i, label %cond.false.i.cond.end9.i_crit_edge, label %cond.false6.i

cond.false.i.cond.end9.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9.i

cond.false6.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000001, i32 %rate)
  %cmp7.i = icmp ult i32 %rate, 300000001
  %cond.i = zext i1 %cmp7.i to i32
  br label %cond.end9.i

cond.end9.i:                                      ; preds = %cond.false6.i, %cond.false.i.cond.end9.i_crit_edge, %if.end.i74.cond.end9.i_crit_edge
  %cond10.i = phi i32 [ 3, %if.end.i74.cond.end9.i_crit_edge ], [ %cond.i, %cond.false6.i ], [ 2, %cond.false.i.cond.end9.i_crit_edge ]
  %17 = ptrtoint ptr %div2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond10.i, ptr %div2, align 4
  %mul.i75 = mul nuw i32 %rate, 5
  %mul12.i = shl i32 %mul.i75, %cond10.i
  %mul12.i.frozen = freeze i32 %mul12.i
  %div.i = udiv i32 %mul12.i.frozen, %parent_rate
  %18 = mul i32 %div.i, %parent_rate
  %rem.i.decomposed = sub i32 %mul12.i.frozen, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp15.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp15.i, label %cond.end9.i.if.then4.loopexit_crit_edge, label %for.inc.i

cond.end9.i.if.then4.loopexit_crit_edge:          ; preds = %cond.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.loopexit

for.inc.i:                                        ; preds = %cond.end9.i
  %mul.i75.1 = shl nuw i32 %rate, 2
  %mul12.i.1 = shl i32 %mul.i75.1, %cond10.i
  %mul12.i.1.frozen = freeze i32 %mul12.i.1
  %div.i.1 = udiv i32 %mul12.i.1.frozen, %parent_rate
  %19 = mul i32 %div.i.1, %parent_rate
  %rem.i.1.decomposed = sub i32 %mul12.i.1.frozen, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.1.decomposed, i32 %rem.i.decomposed)
  %cmp13.i.1 = icmp ult i32 %rem.i.1.decomposed, %rem.i.decomposed
  br i1 %cmp13.i.1, label %if.then14.i.1, label %for.inc.i.for.inc.i.1_crit_edge

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then14.i.1:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1.decomposed)
  %cmp15.i.1 = icmp eq i32 %rem.i.1.decomposed, 0
  br i1 %cmp15.i.1, label %if.then14.i.1.if.then4.loopexit_crit_edge, label %if.then14.i.1.for.inc.i.1_crit_edge

if.then14.i.1.for.inc.i.1_crit_edge:              ; preds = %if.then14.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

if.then14.i.1.if.then4.loopexit_crit_edge:        ; preds = %if.then14.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.loopexit

for.inc.i.1:                                      ; preds = %if.then14.i.1.for.inc.i.1_crit_edge, %for.inc.i.for.inc.i.1_crit_edge
  %div.i95.1 = phi i32 [ %div.i, %for.inc.i.for.inc.i.1_crit_edge ], [ %div.i.1, %if.then14.i.1.for.inc.i.1_crit_edge ]
  %min_err.1.i.1 = phi i32 [ %rem.i.decomposed, %for.inc.i.for.inc.i.1_crit_edge ], [ %rem.i.1.decomposed, %if.then14.i.1.for.inc.i.1_crit_edge ]
  %mul.i75.2 = mul nuw nsw i32 %rate, 3
  %mul12.i.2 = shl i32 %mul.i75.2, %cond10.i
  %mul12.i.2.frozen = freeze i32 %mul12.i.2
  %div.i.2 = udiv i32 %mul12.i.2.frozen, %parent_rate
  %20 = mul i32 %div.i.2, %parent_rate
  %rem.i.2.decomposed = sub i32 %mul12.i.2.frozen, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.2.decomposed, i32 %min_err.1.i.1)
  %cmp13.i.2 = icmp ult i32 %rem.i.2.decomposed, %min_err.1.i.1
  br i1 %cmp13.i.2, label %if.then14.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then14.i.2:                                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.2.decomposed)
  %cmp15.i.2 = icmp eq i32 %rem.i.2.decomposed, 0
  br i1 %cmp15.i.2, label %if.then14.i.2.if.then4.loopexit_crit_edge, label %if.then14.i.2.for.inc.i.2_crit_edge

if.then14.i.2.for.inc.i.2_crit_edge:              ; preds = %if.then14.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

if.then14.i.2.if.then4.loopexit_crit_edge:        ; preds = %if.then14.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.loopexit

for.inc.i.2:                                      ; preds = %if.then14.i.2.for.inc.i.2_crit_edge, %for.inc.i.1.for.inc.i.2_crit_edge
  %div.i95.2 = phi i32 [ %div.i95.1, %for.inc.i.1.for.inc.i.2_crit_edge ], [ %div.i.2, %if.then14.i.2.for.inc.i.2_crit_edge ]
  %min_err.1.i.2 = phi i32 [ %min_err.1.i.1, %for.inc.i.1.for.inc.i.2_crit_edge ], [ %rem.i.2.decomposed, %if.then14.i.2.for.inc.i.2_crit_edge ]
  %21 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.i95.2, ptr %mul, align 4
  %22 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %div1, align 4
  %23 = add i32 %div.i95.2, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1021, i32 %23)
  %24 = icmp ult i32 %23, -1021
  br i1 %24, label %for.inc.i.2.cleanup_crit_edge, label %do.end.i77

for.inc.i.2.cleanup_crit_edge:                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i77:                                       ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %min_err.1.i.2) #13
  br label %if.then4

if.then4.loopexit:                                ; preds = %if.then14.i.2.if.then4.loopexit_crit_edge, %if.then14.i.1.if.then4.loopexit_crit_edge, %cond.end9.i.if.then4.loopexit_crit_edge
  %storemerge47.i.lcssa = phi i32 [ 5, %cond.end9.i.if.then4.loopexit_crit_edge ], [ 4, %if.then14.i.1.if.then4.loopexit_crit_edge ], [ 3, %if.then14.i.2.if.then4.loopexit_crit_edge ]
  %div.i.lcssa = phi i32 [ %div.i, %cond.end9.i.if.then4.loopexit_crit_edge ], [ %div.i.1, %if.then14.i.1.if.then4.loopexit_crit_edge ], [ %div.i.2, %if.then14.i.2.if.then4.loopexit_crit_edge ]
  %25 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i.lcssa, ptr %mul, align 4
  %26 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge47.i.lcssa, ptr %div1, align 4
  br label %if.then4

if.then4:                                         ; preds = %if.then4.loopexit, %do.end.i77
  %27 = ptrtoint ptr %div2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %div2, align 4
  %shl = shl i32 %28, 13
  %29 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %div1, align 4
  %shl5 = shl i32 %30, 10
  %or6 = or i32 %shl5, %shl
  %31 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mul, align 4
  %and7 = and i32 %32, 1023
  %or8 = or i32 %or6, %and7
  br label %do.body39

sw.bb10:                                          ; preds = %entry
  %call11 = call fastcc i32 @wm8750_find_pll_bits(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef nonnull %filter, ptr noundef nonnull %mul, ptr noundef nonnull %div1, ptr noundef nonnull %div2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %filter, align 4
  %shl14 = shl i32 %34, 24
  %35 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mul, align 4
  %sub = shl i32 %36, 16
  %shl15 = add i32 %sub, -65536
  %or16 = or i32 %shl15, %shl14
  %37 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %div1, align 4
  %sub17 = shl i32 %38, 8
  %shl18 = add i32 %sub17, -256
  %39 = ptrtoint ptr %div2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %div2, align 4
  %or19 = or i32 %or16, %40
  %or20 = or i32 %or19, %shl18
  br label %do.body39

sw.bb22:                                          ; preds = %entry
  %call23 = call fastcc i32 @wm8850_find_pll_bits(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef nonnull %mul, ptr noundef nonnull %div1, ptr noundef nonnull %div2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mul, align 4
  %43 = shl i32 %42, 15
  %44 = add i32 %43, -65536
  %shl27 = and i32 %44, -65536
  %45 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %div1, align 4
  %sub28 = shl i32 %46, 8
  %shl29 = add i32 %sub28, -256
  %47 = ptrtoint ptr %div2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %div2, align 4
  %or30 = or i32 %shl29, %48
  %or31 = or i32 %or30, %shl27
  br label %do.body39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #13
  br label %cleanup

do.body39:                                        ; preds = %if.then25, %if.then13, %if.then4, %if.then
  %pll_val.0 = phi i32 [ %or31, %if.then25 ], [ %or20, %if.then13 ], [ %or8, %if.then4 ], [ %or, %if.then ]
  %lock = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 2
  %49 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lock, align 4
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #8
  %51 = load ptr, ptr @pmc_base, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %53 = and i32 %52, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not6.i = icmp eq i32 %53, 0
  br i1 %tobool.not6.i, label %do.body39.vt8500_pmc_wait_busy.exit_crit_edge, label %do.body39.do.end.i80_crit_edge

do.body39.do.end.i80_crit_edge:                   ; preds = %do.body39
  br label %do.end.i80

do.body39.vt8500_pmc_wait_busy.exit_crit_edge:    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit

do.end.i80:                                       ; preds = %do.end.i80.do.end.i80_crit_edge, %do.body39.do.end.i80_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !119
  %54 = load ptr, ptr @pmc_base, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %56 = and i32 %55, 402653184
  %tobool.not.i79 = icmp eq i32 %56, 0
  br i1 %tobool.not.i79, label %do.end.i80.vt8500_pmc_wait_busy.exit_crit_edge, label %do.end.i80.do.end.i80_crit_edge

do.end.i80.do.end.i80_crit_edge:                  ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i80

do.end.i80.vt8500_pmc_wait_busy.exit_crit_edge:   ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit

vt8500_pmc_wait_busy.exit:                        ; preds = %do.end.i80.vt8500_pmc_wait_busy.exit_crit_edge, %do.body39.vt8500_pmc_wait_busy.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %pll_val.0)
  %reg = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #8, !srcloc !112
  %60 = load ptr, ptr @pmc_base, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %62 = and i32 %61, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not6.i81 = icmp eq i32 %62, 0
  br i1 %tobool.not6.i81, label %vt8500_pmc_wait_busy.exit.vt8500_pmc_wait_busy.exit84_crit_edge, label %vt8500_pmc_wait_busy.exit.do.end.i83_crit_edge

vt8500_pmc_wait_busy.exit.do.end.i83_crit_edge:   ; preds = %vt8500_pmc_wait_busy.exit
  br label %do.end.i83

vt8500_pmc_wait_busy.exit.vt8500_pmc_wait_busy.exit84_crit_edge: ; preds = %vt8500_pmc_wait_busy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit84

do.end.i83:                                       ; preds = %do.end.i83.do.end.i83_crit_edge, %vt8500_pmc_wait_busy.exit.do.end.i83_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !119
  %63 = load ptr, ptr @pmc_base, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %65 = and i32 %64, 402653184
  %tobool.not.i82 = icmp eq i32 %65, 0
  br i1 %tobool.not.i82, label %do.end.i83.vt8500_pmc_wait_busy.exit84_crit_edge, label %do.end.i83.do.end.i83_crit_edge

do.end.i83.do.end.i83_crit_edge:                  ; preds = %do.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i83

do.end.i83.vt8500_pmc_wait_busy.exit84_crit_edge: ; preds = %do.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %vt8500_pmc_wait_busy.exit84

vt8500_pmc_wait_busy.exit84:                      ; preds = %do.end.i83.vt8500_pmc_wait_busy.exit84_crit_edge, %vt8500_pmc_wait_busy.exit.vt8500_pmc_wait_busy.exit84_crit_edge
  %66 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %call43) #8
  br label %cleanup

cleanup:                                          ; preds = %vt8500_pmc_wait_busy.exit84, %do.end, %sw.bb22.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %for.inc.i.2.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %vt8500_find_pll_bits.exit
  %retval.0 = phi i32 [ 0, %vt8500_pmc_wait_busy.exit84 ], [ -22, %for.inc.i.2.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %vt8500_find_pll_bits.exit ], [ %call11, %sw.bb10.cleanup_crit_edge ], [ %call23, %sw.bb22.cleanup_crit_edge ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mul) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8750_find_pll_bits(i32 noundef %rate, i32 noundef %parent_rate, ptr nocapture noundef writeonly %filter, ptr nocapture noundef writeonly %multiplier, ptr nocapture noundef %divisor1, ptr nocapture noundef writeonly %divisor2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc17.for.cond4.preheader_crit_edge, %entry
  %best_err.176 = phi i32 [ -1, %entry ], [ %best_err.3, %for.inc17.for.cond4.preheader_crit_edge ]
  %div2.075 = phi i32 [ 7, %entry ], [ %dec, %for.inc17.for.cond4.preheader_crit_edge ]
  %0 = add i32 %div2.075, 1
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.cond4.preheader
  %mul.074 = phi i32 [ 0, %for.cond4.preheader ], [ %add, %for.inc.for.body6_crit_edge ]
  %best_err.273 = phi i32 [ %best_err.176, %for.cond4.preheader ], [ %best_err.3, %for.inc.for.body6_crit_edge ]
  %add = add nuw nsw i32 %mul.074, 1
  %mul7 = mul i32 %add, %parent_rate
  %div88 = lshr i32 %mul7, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %div88, i32 %rate)
  %cmp10 = icmp ugt i32 %div88, %rate
  br i1 %cmp10, label %for.body6.for.inc_crit_edge, label %if.end

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %sub = sub i32 %rate, %div88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp eq i32 %sub, 0
  br i1 %cmp11, label %if.end.if.then12_crit_edge, label %if.end13

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.end.1.7.if.then12_crit_edge, %if.end.1.6.if.then12_crit_edge, %if.end.1.5.if.then12_crit_edge, %if.end.1.4.if.then12_crit_edge, %if.end.1.3.if.then12_crit_edge, %if.end.1.2.if.then12_crit_edge, %if.end.1.1.if.then12_crit_edge, %if.end.1.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %div1.077.lcssa82 = phi i32 [ 0, %if.end.1.7.if.then12_crit_edge ], [ 0, %if.end.1.6.if.then12_crit_edge ], [ 0, %if.end.1.5.if.then12_crit_edge ], [ 0, %if.end.1.4.if.then12_crit_edge ], [ 0, %if.end.1.3.if.then12_crit_edge ], [ 0, %if.end.1.2.if.then12_crit_edge ], [ 0, %if.end.1.1.if.then12_crit_edge ], [ 0, %if.end.1.if.then12_crit_edge ], [ 1, %if.end.if.then12_crit_edge ]
  %add8.lcssa81 = phi i16 [ 1, %if.end.1.7.if.then12_crit_edge ], [ 1, %if.end.1.6.if.then12_crit_edge ], [ 1, %if.end.1.5.if.then12_crit_edge ], [ 1, %if.end.1.4.if.then12_crit_edge ], [ 1, %if.end.1.3.if.then12_crit_edge ], [ 1, %if.end.1.2.if.then12_crit_edge ], [ 1, %if.end.1.1.if.then12_crit_edge ], [ 1, %if.end.1.if.then12_crit_edge ], [ 2, %if.end.if.then12_crit_edge ]
  %div2.075.lcssa80 = phi i32 [ 7, %if.end.1.if.then12_crit_edge ], [ 6, %if.end.1.1.if.then12_crit_edge ], [ 5, %if.end.1.2.if.then12_crit_edge ], [ 4, %if.end.1.3.if.then12_crit_edge ], [ 3, %if.end.1.4.if.then12_crit_edge ], [ 2, %if.end.1.5.if.then12_crit_edge ], [ 1, %if.end.1.6.if.then12_crit_edge ], [ 0, %if.end.1.7.if.then12_crit_edge ], [ %div2.075, %if.end.if.then12_crit_edge ]
  %mul.074.lcssa = phi i32 [ %mul.074.1, %if.end.1.if.then12_crit_edge ], [ %mul.074.1.1, %if.end.1.1.if.then12_crit_edge ], [ %mul.074.1.2, %if.end.1.2.if.then12_crit_edge ], [ %mul.074.1.3, %if.end.1.3.if.then12_crit_edge ], [ %mul.074.1.4, %if.end.1.4.if.then12_crit_edge ], [ %mul.074.1.5, %if.end.1.5.if.then12_crit_edge ], [ %mul.074.1.6, %if.end.1.6.if.then12_crit_edge ], [ %mul.074.1.7, %if.end.1.7.if.then12_crit_edge ], [ %mul.074, %if.end.if.then12_crit_edge ]
  %div.i = udiv i32 %parent_rate, 1000000
  %div1.i.lhs.trunc = trunc i32 %div.i to i16
  %div1.i90 = udiv i16 %div1.i.lhs.trunc, %add8.lcssa81
  %div1.i.zext = zext i16 %div1.i90 to i32
  %1 = add nsw i32 %div1.i.zext, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -191, i32 %1)
  %2 = icmp ult i32 %1, -191
  br i1 %2, label %do.end.i, label %if.then12.if.end.i_crit_edge

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %div1.i.zext) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then12.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 165, i16 %div1.i90)
  %cmp3.i = icmp ugt i16 %div1.i90, 165
  br i1 %cmp3.i, label %if.end.i.wm8750_get_filter.exit_crit_edge, label %if.else.i

if.end.i.wm8750_get_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8750_get_filter.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 103, i16 %div1.i90)
  %cmp5.i = icmp ugt i16 %div1.i90, 103
  br i1 %cmp5.i, label %if.else.i.wm8750_get_filter.exit_crit_edge, label %if.else7.i

if.else.i.wm8750_get_filter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8750_get_filter.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %div1.i90)
  %cmp8.i = icmp ugt i16 %div1.i90, 64
  br i1 %cmp8.i, label %if.else7.i.wm8750_get_filter.exit_crit_edge, label %if.else10.i

if.else7.i.wm8750_get_filter.exit_crit_edge:      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8750_get_filter.exit

if.else10.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %div1.i90)
  %cmp11.i = icmp ugt i16 %div1.i90, 41
  br i1 %cmp11.i, label %if.else10.i.wm8750_get_filter.exit_crit_edge, label %if.else13.i

if.else10.i.wm8750_get_filter.exit_crit_edge:     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8750_get_filter.exit

if.else13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %div1.i90)
  %cmp14.i = icmp ugt i16 %div1.i90, 25
  br i1 %cmp14.i, label %if.else13.i.wm8750_get_filter.exit_crit_edge, label %if.else16.i

if.else13.i.wm8750_get_filter.exit_crit_edge:     ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8750_get_filter.exit

if.else16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %div1.i90)
  %cmp17.i = icmp ugt i16 %div1.i90, 15
  br i1 %cmp17.i, label %if.else16.i.wm8750_get_filter.exit_crit_edge, label %if.else19.i

if.else16.i.wm8750_get_filter.exit_crit_edge:     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8750_get_filter.exit

if.else19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %div1.i90)
  %cmp20.i = icmp ugt i16 %div1.i90, 9
  %..i = zext i1 %cmp20.i to i32
  br label %wm8750_get_filter.exit

wm8750_get_filter.exit:                           ; preds = %if.else19.i, %if.else16.i.wm8750_get_filter.exit_crit_edge, %if.else13.i.wm8750_get_filter.exit_crit_edge, %if.else10.i.wm8750_get_filter.exit_crit_edge, %if.else7.i.wm8750_get_filter.exit_crit_edge, %if.else.i.wm8750_get_filter.exit_crit_edge, %if.end.i.wm8750_get_filter.exit_crit_edge
  %retval.0.i = phi i32 [ 7, %if.end.i.wm8750_get_filter.exit_crit_edge ], [ 6, %if.else.i.wm8750_get_filter.exit_crit_edge ], [ 5, %if.else7.i.wm8750_get_filter.exit_crit_edge ], [ 4, %if.else10.i.wm8750_get_filter.exit_crit_edge ], [ 3, %if.else13.i.wm8750_get_filter.exit_crit_edge ], [ 2, %if.else16.i.wm8750_get_filter.exit_crit_edge ], [ %..i, %if.else19.i ]
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %retval.0.i, ptr %filter, align 4
  %4 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul.074.lcssa, ptr %multiplier, align 4
  %5 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div1.077.lcssa82, ptr %divisor1, align 4
  %6 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div2.075.lcssa80, ptr %divisor2, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %best_err.273)
  %cmp14 = icmp ult i32 %sub, %best_err.273
  br i1 %cmp14, label %if.then15, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.074, ptr %multiplier, align 4
  %8 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %divisor1, align 4
  %9 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div2.075, ptr %divisor2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end13.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %best_err.3 = phi i32 [ %best_err.273, %for.body6.for.inc_crit_edge ], [ %sub, %if.then15 ], [ %best_err.273, %if.end13.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %add, 256
  br i1 %exitcond.not, label %for.inc17, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc17:                                        ; preds = %for.inc
  %dec = add nsw i32 %div2.075, -1
  %cmp2 = icmp sgt i32 %div2.075, 0
  br i1 %cmp2, label %for.inc17.for.cond4.preheader_crit_edge, label %for.inc17.for.body6.1_crit_edge

for.inc17.for.body6.1_crit_edge:                  ; preds = %for.inc17
  br label %for.body6.1

for.inc17.for.cond4.preheader_crit_edge:          ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader

for.body6.1:                                      ; preds = %for.inc.1.for.body6.1_crit_edge, %for.inc17.for.body6.1_crit_edge
  %mul.074.1 = phi i32 [ %add.1, %for.inc.1.for.body6.1_crit_edge ], [ 0, %for.inc17.for.body6.1_crit_edge ]
  %best_err.273.1 = phi i32 [ %best_err.3.1, %for.inc.1.for.body6.1_crit_edge ], [ %best_err.3, %for.inc17.for.body6.1_crit_edge ]
  %add.1 = add nuw nsw i32 %mul.074.1, 1
  %mul7.1 = mul i32 %add.1, %parent_rate
  %div.189 = lshr i32 %mul7.1, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %div.189, i32 %rate)
  %cmp10.1 = icmp ugt i32 %div.189, %rate
  br i1 %cmp10.1, label %for.body6.1.for.inc.1_crit_edge, label %if.end.1

for.body6.1.for.inc.1_crit_edge:                  ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.body6.1
  %sub.1 = sub i32 %rate, %div.189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp11.1 = icmp eq i32 %sub.1, 0
  br i1 %cmp11.1, label %if.end.1.if.then12_crit_edge, label %if.end13.1

if.end.1.if.then12_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %best_err.273.1)
  %cmp14.1 = icmp ult i32 %sub.1, %best_err.273.1
  br i1 %cmp14.1, label %if.then15.1, label %if.end13.1.for.inc.1_crit_edge

if.end13.1.for.inc.1_crit_edge:                   ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then15.1:                                      ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.074.1, ptr %multiplier, align 4
  %11 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %divisor1, align 4
  %12 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %divisor2, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then15.1, %if.end13.1.for.inc.1_crit_edge, %for.body6.1.for.inc.1_crit_edge
  %best_err.3.1 = phi i32 [ %best_err.273.1, %for.body6.1.for.inc.1_crit_edge ], [ %sub.1, %if.then15.1 ], [ %best_err.273.1, %if.end13.1.for.inc.1_crit_edge ]
  %exitcond.1.not = icmp eq i32 %add.1, 256
  br i1 %exitcond.1.not, label %for.inc.1.for.body6.1.1_crit_edge, label %for.inc.1.for.body6.1_crit_edge

for.inc.1.for.body6.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1

for.inc.1.for.body6.1.1_crit_edge:                ; preds = %for.inc.1
  br label %for.body6.1.1

for.body6.1.1:                                    ; preds = %for.inc.1.1.for.body6.1.1_crit_edge, %for.inc.1.for.body6.1.1_crit_edge
  %mul.074.1.1 = phi i32 [ %add.1.1, %for.inc.1.1.for.body6.1.1_crit_edge ], [ 0, %for.inc.1.for.body6.1.1_crit_edge ]
  %best_err.273.1.1 = phi i32 [ %best_err.3.1.1, %for.inc.1.1.for.body6.1.1_crit_edge ], [ %best_err.3.1, %for.inc.1.for.body6.1.1_crit_edge ]
  %add.1.1 = add nuw nsw i32 %mul.074.1.1, 1
  %mul7.1.1 = mul i32 %add.1.1, %parent_rate
  %div.189.1 = lshr i32 %mul7.1.1, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div.189.1, i32 %rate)
  %cmp10.1.1 = icmp ugt i32 %div.189.1, %rate
  br i1 %cmp10.1.1, label %for.body6.1.1.for.inc.1.1_crit_edge, label %if.end.1.1

for.body6.1.1.for.inc.1.1_crit_edge:              ; preds = %for.body6.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.1

if.end.1.1:                                       ; preds = %for.body6.1.1
  %sub.1.1 = sub i32 %rate, %div.189.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.1)
  %cmp11.1.1 = icmp eq i32 %sub.1.1, 0
  br i1 %cmp11.1.1, label %if.end.1.1.if.then12_crit_edge, label %if.end13.1.1

if.end.1.1.if.then12_crit_edge:                   ; preds = %if.end.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1.1:                                     ; preds = %if.end.1.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.1, i32 %best_err.273.1.1)
  %cmp14.1.1 = icmp ult i32 %sub.1.1, %best_err.273.1.1
  br i1 %cmp14.1.1, label %if.then15.1.1, label %if.end13.1.1.for.inc.1.1_crit_edge

if.end13.1.1.for.inc.1.1_crit_edge:               ; preds = %if.end13.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.1

if.then15.1.1:                                    ; preds = %if.end13.1.1
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.074.1.1, ptr %multiplier, align 4
  %14 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %divisor1, align 4
  %15 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %divisor2, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %if.then15.1.1, %if.end13.1.1.for.inc.1.1_crit_edge, %for.body6.1.1.for.inc.1.1_crit_edge
  %best_err.3.1.1 = phi i32 [ %best_err.273.1.1, %for.body6.1.1.for.inc.1.1_crit_edge ], [ %sub.1.1, %if.then15.1.1 ], [ %best_err.273.1.1, %if.end13.1.1.for.inc.1.1_crit_edge ]
  %exitcond.1.not.1 = icmp eq i32 %add.1.1, 256
  br i1 %exitcond.1.not.1, label %for.inc.1.1.for.body6.1.2_crit_edge, label %for.inc.1.1.for.body6.1.1_crit_edge

for.inc.1.1.for.body6.1.1_crit_edge:              ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.1

for.inc.1.1.for.body6.1.2_crit_edge:              ; preds = %for.inc.1.1
  br label %for.body6.1.2

for.body6.1.2:                                    ; preds = %for.inc.1.2.for.body6.1.2_crit_edge, %for.inc.1.1.for.body6.1.2_crit_edge
  %mul.074.1.2 = phi i32 [ %add.1.2, %for.inc.1.2.for.body6.1.2_crit_edge ], [ 0, %for.inc.1.1.for.body6.1.2_crit_edge ]
  %best_err.273.1.2 = phi i32 [ %best_err.3.1.2, %for.inc.1.2.for.body6.1.2_crit_edge ], [ %best_err.3.1.1, %for.inc.1.1.for.body6.1.2_crit_edge ]
  %add.1.2 = add nuw nsw i32 %mul.074.1.2, 1
  %mul7.1.2 = mul i32 %add.1.2, %parent_rate
  %div.189.2 = lshr i32 %mul7.1.2, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div.189.2, i32 %rate)
  %cmp10.1.2 = icmp ugt i32 %div.189.2, %rate
  br i1 %cmp10.1.2, label %for.body6.1.2.for.inc.1.2_crit_edge, label %if.end.1.2

for.body6.1.2.for.inc.1.2_crit_edge:              ; preds = %for.body6.1.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.2

if.end.1.2:                                       ; preds = %for.body6.1.2
  %sub.1.2 = sub i32 %rate, %div.189.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.2)
  %cmp11.1.2 = icmp eq i32 %sub.1.2, 0
  br i1 %cmp11.1.2, label %if.end.1.2.if.then12_crit_edge, label %if.end13.1.2

if.end.1.2.if.then12_crit_edge:                   ; preds = %if.end.1.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1.2:                                     ; preds = %if.end.1.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.2, i32 %best_err.273.1.2)
  %cmp14.1.2 = icmp ult i32 %sub.1.2, %best_err.273.1.2
  br i1 %cmp14.1.2, label %if.then15.1.2, label %if.end13.1.2.for.inc.1.2_crit_edge

if.end13.1.2.for.inc.1.2_crit_edge:               ; preds = %if.end13.1.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.2

if.then15.1.2:                                    ; preds = %if.end13.1.2
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul.074.1.2, ptr %multiplier, align 4
  %17 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %divisor1, align 4
  %18 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %divisor2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %if.then15.1.2, %if.end13.1.2.for.inc.1.2_crit_edge, %for.body6.1.2.for.inc.1.2_crit_edge
  %best_err.3.1.2 = phi i32 [ %best_err.273.1.2, %for.body6.1.2.for.inc.1.2_crit_edge ], [ %sub.1.2, %if.then15.1.2 ], [ %best_err.273.1.2, %if.end13.1.2.for.inc.1.2_crit_edge ]
  %exitcond.1.not.2 = icmp eq i32 %add.1.2, 256
  br i1 %exitcond.1.not.2, label %for.inc.1.2.for.body6.1.3_crit_edge, label %for.inc.1.2.for.body6.1.2_crit_edge

for.inc.1.2.for.body6.1.2_crit_edge:              ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.2

for.inc.1.2.for.body6.1.3_crit_edge:              ; preds = %for.inc.1.2
  br label %for.body6.1.3

for.body6.1.3:                                    ; preds = %for.inc.1.3.for.body6.1.3_crit_edge, %for.inc.1.2.for.body6.1.3_crit_edge
  %mul.074.1.3 = phi i32 [ %add.1.3, %for.inc.1.3.for.body6.1.3_crit_edge ], [ 0, %for.inc.1.2.for.body6.1.3_crit_edge ]
  %best_err.273.1.3 = phi i32 [ %best_err.3.1.3, %for.inc.1.3.for.body6.1.3_crit_edge ], [ %best_err.3.1.2, %for.inc.1.2.for.body6.1.3_crit_edge ]
  %add.1.3 = add nuw nsw i32 %mul.074.1.3, 1
  %mul7.1.3 = mul i32 %add.1.3, %parent_rate
  %div.189.3 = lshr i32 %mul7.1.3, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.189.3, i32 %rate)
  %cmp10.1.3 = icmp ugt i32 %div.189.3, %rate
  br i1 %cmp10.1.3, label %for.body6.1.3.for.inc.1.3_crit_edge, label %if.end.1.3

for.body6.1.3.for.inc.1.3_crit_edge:              ; preds = %for.body6.1.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.3

if.end.1.3:                                       ; preds = %for.body6.1.3
  %sub.1.3 = sub i32 %rate, %div.189.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.3)
  %cmp11.1.3 = icmp eq i32 %sub.1.3, 0
  br i1 %cmp11.1.3, label %if.end.1.3.if.then12_crit_edge, label %if.end13.1.3

if.end.1.3.if.then12_crit_edge:                   ; preds = %if.end.1.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1.3:                                     ; preds = %if.end.1.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.3, i32 %best_err.273.1.3)
  %cmp14.1.3 = icmp ult i32 %sub.1.3, %best_err.273.1.3
  br i1 %cmp14.1.3, label %if.then15.1.3, label %if.end13.1.3.for.inc.1.3_crit_edge

if.end13.1.3.for.inc.1.3_crit_edge:               ; preds = %if.end13.1.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.3

if.then15.1.3:                                    ; preds = %if.end13.1.3
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.074.1.3, ptr %multiplier, align 4
  %20 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %divisor1, align 4
  %21 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %divisor2, align 4
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %if.then15.1.3, %if.end13.1.3.for.inc.1.3_crit_edge, %for.body6.1.3.for.inc.1.3_crit_edge
  %best_err.3.1.3 = phi i32 [ %best_err.273.1.3, %for.body6.1.3.for.inc.1.3_crit_edge ], [ %sub.1.3, %if.then15.1.3 ], [ %best_err.273.1.3, %if.end13.1.3.for.inc.1.3_crit_edge ]
  %exitcond.1.not.3 = icmp eq i32 %add.1.3, 256
  br i1 %exitcond.1.not.3, label %for.inc.1.3.for.body6.1.4_crit_edge, label %for.inc.1.3.for.body6.1.3_crit_edge

for.inc.1.3.for.body6.1.3_crit_edge:              ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.3

for.inc.1.3.for.body6.1.4_crit_edge:              ; preds = %for.inc.1.3
  br label %for.body6.1.4

for.body6.1.4:                                    ; preds = %for.inc.1.4.for.body6.1.4_crit_edge, %for.inc.1.3.for.body6.1.4_crit_edge
  %mul.074.1.4 = phi i32 [ %add.1.4, %for.inc.1.4.for.body6.1.4_crit_edge ], [ 0, %for.inc.1.3.for.body6.1.4_crit_edge ]
  %best_err.273.1.4 = phi i32 [ %best_err.3.1.4, %for.inc.1.4.for.body6.1.4_crit_edge ], [ %best_err.3.1.3, %for.inc.1.3.for.body6.1.4_crit_edge ]
  %add.1.4 = add nuw nsw i32 %mul.074.1.4, 1
  %mul7.1.4 = mul i32 %add.1.4, %parent_rate
  %div.189.4 = lshr i32 %mul7.1.4, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.189.4, i32 %rate)
  %cmp10.1.4 = icmp ugt i32 %div.189.4, %rate
  br i1 %cmp10.1.4, label %for.body6.1.4.for.inc.1.4_crit_edge, label %if.end.1.4

for.body6.1.4.for.inc.1.4_crit_edge:              ; preds = %for.body6.1.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.4

if.end.1.4:                                       ; preds = %for.body6.1.4
  %sub.1.4 = sub i32 %rate, %div.189.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.4)
  %cmp11.1.4 = icmp eq i32 %sub.1.4, 0
  br i1 %cmp11.1.4, label %if.end.1.4.if.then12_crit_edge, label %if.end13.1.4

if.end.1.4.if.then12_crit_edge:                   ; preds = %if.end.1.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1.4:                                     ; preds = %if.end.1.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.4, i32 %best_err.273.1.4)
  %cmp14.1.4 = icmp ult i32 %sub.1.4, %best_err.273.1.4
  br i1 %cmp14.1.4, label %if.then15.1.4, label %if.end13.1.4.for.inc.1.4_crit_edge

if.end13.1.4.for.inc.1.4_crit_edge:               ; preds = %if.end13.1.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.4

if.then15.1.4:                                    ; preds = %if.end13.1.4
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.074.1.4, ptr %multiplier, align 4
  %23 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %divisor1, align 4
  %24 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %divisor2, align 4
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %if.then15.1.4, %if.end13.1.4.for.inc.1.4_crit_edge, %for.body6.1.4.for.inc.1.4_crit_edge
  %best_err.3.1.4 = phi i32 [ %best_err.273.1.4, %for.body6.1.4.for.inc.1.4_crit_edge ], [ %sub.1.4, %if.then15.1.4 ], [ %best_err.273.1.4, %if.end13.1.4.for.inc.1.4_crit_edge ]
  %exitcond.1.not.4 = icmp eq i32 %add.1.4, 256
  br i1 %exitcond.1.not.4, label %for.inc.1.4.for.body6.1.5_crit_edge, label %for.inc.1.4.for.body6.1.4_crit_edge

for.inc.1.4.for.body6.1.4_crit_edge:              ; preds = %for.inc.1.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.4

for.inc.1.4.for.body6.1.5_crit_edge:              ; preds = %for.inc.1.4
  br label %for.body6.1.5

for.body6.1.5:                                    ; preds = %for.inc.1.5.for.body6.1.5_crit_edge, %for.inc.1.4.for.body6.1.5_crit_edge
  %mul.074.1.5 = phi i32 [ %add.1.5, %for.inc.1.5.for.body6.1.5_crit_edge ], [ 0, %for.inc.1.4.for.body6.1.5_crit_edge ]
  %best_err.273.1.5 = phi i32 [ %best_err.3.1.5, %for.inc.1.5.for.body6.1.5_crit_edge ], [ %best_err.3.1.4, %for.inc.1.4.for.body6.1.5_crit_edge ]
  %add.1.5 = add nuw nsw i32 %mul.074.1.5, 1
  %mul7.1.5 = mul i32 %add.1.5, %parent_rate
  %div.189.5 = lshr i32 %mul7.1.5, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.189.5, i32 %rate)
  %cmp10.1.5 = icmp ugt i32 %div.189.5, %rate
  br i1 %cmp10.1.5, label %for.body6.1.5.for.inc.1.5_crit_edge, label %if.end.1.5

for.body6.1.5.for.inc.1.5_crit_edge:              ; preds = %for.body6.1.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.5

if.end.1.5:                                       ; preds = %for.body6.1.5
  %sub.1.5 = sub i32 %rate, %div.189.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.5)
  %cmp11.1.5 = icmp eq i32 %sub.1.5, 0
  br i1 %cmp11.1.5, label %if.end.1.5.if.then12_crit_edge, label %if.end13.1.5

if.end.1.5.if.then12_crit_edge:                   ; preds = %if.end.1.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1.5:                                     ; preds = %if.end.1.5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.5, i32 %best_err.273.1.5)
  %cmp14.1.5 = icmp ult i32 %sub.1.5, %best_err.273.1.5
  br i1 %cmp14.1.5, label %if.then15.1.5, label %if.end13.1.5.for.inc.1.5_crit_edge

if.end13.1.5.for.inc.1.5_crit_edge:               ; preds = %if.end13.1.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.5

if.then15.1.5:                                    ; preds = %if.end13.1.5
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.074.1.5, ptr %multiplier, align 4
  %26 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %divisor1, align 4
  %27 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %divisor2, align 4
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %if.then15.1.5, %if.end13.1.5.for.inc.1.5_crit_edge, %for.body6.1.5.for.inc.1.5_crit_edge
  %best_err.3.1.5 = phi i32 [ %best_err.273.1.5, %for.body6.1.5.for.inc.1.5_crit_edge ], [ %sub.1.5, %if.then15.1.5 ], [ %best_err.273.1.5, %if.end13.1.5.for.inc.1.5_crit_edge ]
  %exitcond.1.not.5 = icmp eq i32 %add.1.5, 256
  br i1 %exitcond.1.not.5, label %for.inc.1.5.for.body6.1.6_crit_edge, label %for.inc.1.5.for.body6.1.5_crit_edge

for.inc.1.5.for.body6.1.5_crit_edge:              ; preds = %for.inc.1.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.5

for.inc.1.5.for.body6.1.6_crit_edge:              ; preds = %for.inc.1.5
  br label %for.body6.1.6

for.body6.1.6:                                    ; preds = %for.inc.1.6.for.body6.1.6_crit_edge, %for.inc.1.5.for.body6.1.6_crit_edge
  %mul.074.1.6 = phi i32 [ %add.1.6, %for.inc.1.6.for.body6.1.6_crit_edge ], [ 0, %for.inc.1.5.for.body6.1.6_crit_edge ]
  %best_err.273.1.6 = phi i32 [ %best_err.3.1.6, %for.inc.1.6.for.body6.1.6_crit_edge ], [ %best_err.3.1.5, %for.inc.1.5.for.body6.1.6_crit_edge ]
  %add.1.6 = add nuw nsw i32 %mul.074.1.6, 1
  %mul7.1.6 = mul i32 %add.1.6, %parent_rate
  %div.189.6 = lshr i32 %mul7.1.6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.189.6, i32 %rate)
  %cmp10.1.6 = icmp ugt i32 %div.189.6, %rate
  br i1 %cmp10.1.6, label %for.body6.1.6.for.inc.1.6_crit_edge, label %if.end.1.6

for.body6.1.6.for.inc.1.6_crit_edge:              ; preds = %for.body6.1.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.6

if.end.1.6:                                       ; preds = %for.body6.1.6
  %sub.1.6 = sub i32 %rate, %div.189.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.6)
  %cmp11.1.6 = icmp eq i32 %sub.1.6, 0
  br i1 %cmp11.1.6, label %if.end.1.6.if.then12_crit_edge, label %if.end13.1.6

if.end.1.6.if.then12_crit_edge:                   ; preds = %if.end.1.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1.6:                                     ; preds = %if.end.1.6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.6, i32 %best_err.273.1.6)
  %cmp14.1.6 = icmp ult i32 %sub.1.6, %best_err.273.1.6
  br i1 %cmp14.1.6, label %if.then15.1.6, label %if.end13.1.6.for.inc.1.6_crit_edge

if.end13.1.6.for.inc.1.6_crit_edge:               ; preds = %if.end13.1.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.6

if.then15.1.6:                                    ; preds = %if.end13.1.6
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.074.1.6, ptr %multiplier, align 4
  %29 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %divisor1, align 4
  %30 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %divisor2, align 4
  br label %for.inc.1.6

for.inc.1.6:                                      ; preds = %if.then15.1.6, %if.end13.1.6.for.inc.1.6_crit_edge, %for.body6.1.6.for.inc.1.6_crit_edge
  %best_err.3.1.6 = phi i32 [ %best_err.273.1.6, %for.body6.1.6.for.inc.1.6_crit_edge ], [ %sub.1.6, %if.then15.1.6 ], [ %best_err.273.1.6, %if.end13.1.6.for.inc.1.6_crit_edge ]
  %exitcond.1.not.6 = icmp eq i32 %add.1.6, 256
  br i1 %exitcond.1.not.6, label %for.inc.1.6.for.body6.1.7_crit_edge, label %for.inc.1.6.for.body6.1.6_crit_edge

for.inc.1.6.for.body6.1.6_crit_edge:              ; preds = %for.inc.1.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.6

for.inc.1.6.for.body6.1.7_crit_edge:              ; preds = %for.inc.1.6
  br label %for.body6.1.7

for.body6.1.7:                                    ; preds = %for.inc.1.7.for.body6.1.7_crit_edge, %for.inc.1.6.for.body6.1.7_crit_edge
  %mul.074.1.7 = phi i32 [ %add.1.7, %for.inc.1.7.for.body6.1.7_crit_edge ], [ 0, %for.inc.1.6.for.body6.1.7_crit_edge ]
  %best_err.273.1.7 = phi i32 [ %best_err.3.1.7, %for.inc.1.7.for.body6.1.7_crit_edge ], [ %best_err.3.1.6, %for.inc.1.6.for.body6.1.7_crit_edge ]
  %add.1.7 = add nuw nsw i32 %mul.074.1.7, 1
  %mul7.1.7 = mul i32 %add.1.7, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul7.1.7, i32 %rate)
  %cmp10.1.7 = icmp ugt i32 %mul7.1.7, %rate
  br i1 %cmp10.1.7, label %for.body6.1.7.for.inc.1.7_crit_edge, label %if.end.1.7

for.body6.1.7.for.inc.1.7_crit_edge:              ; preds = %for.body6.1.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.7

if.end.1.7:                                       ; preds = %for.body6.1.7
  %sub.1.7 = sub i32 %rate, %mul7.1.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.7)
  %cmp11.1.7 = icmp eq i32 %sub.1.7, 0
  br i1 %cmp11.1.7, label %if.end.1.7.if.then12_crit_edge, label %if.end13.1.7

if.end.1.7.if.then12_crit_edge:                   ; preds = %if.end.1.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end13.1.7:                                     ; preds = %if.end.1.7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.7, i32 %best_err.273.1.7)
  %cmp14.1.7 = icmp ult i32 %sub.1.7, %best_err.273.1.7
  br i1 %cmp14.1.7, label %if.then15.1.7, label %if.end13.1.7.for.inc.1.7_crit_edge

if.end13.1.7.for.inc.1.7_crit_edge:               ; preds = %if.end13.1.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.7

if.then15.1.7:                                    ; preds = %if.end13.1.7
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.074.1.7, ptr %multiplier, align 4
  %32 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %divisor1, align 4
  %33 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %divisor2, align 4
  br label %for.inc.1.7

for.inc.1.7:                                      ; preds = %if.then15.1.7, %if.end13.1.7.for.inc.1.7_crit_edge, %for.body6.1.7.for.inc.1.7_crit_edge
  %best_err.3.1.7 = phi i32 [ %best_err.273.1.7, %for.body6.1.7.for.inc.1.7_crit_edge ], [ %sub.1.7, %if.then15.1.7 ], [ %best_err.273.1.7, %if.end13.1.7.for.inc.1.7_crit_edge ]
  %exitcond.1.not.7 = icmp eq i32 %add.1.7, 256
  br i1 %exitcond.1.not.7, label %for.inc17.1.7, label %for.inc.1.7.for.body6.1.7_crit_edge

for.inc.1.7.for.body6.1.7_crit_edge:              ; preds = %for.inc.1.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.7

for.inc17.1.7:                                    ; preds = %for.inc.1.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_err.3.1.7)
  %cmp22 = icmp eq i32 %best_err.3.1.7, -1
  br i1 %cmp22, label %do.end, label %do.end28

do.end:                                           ; preds = %for.inc17.1.7
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %rate) #13
  br label %cleanup

do.end28:                                         ; preds = %for.inc17.1.7
  call void @__sanitizer_cov_trace_pc() #10
  %sub30 = sub i32 %rate, %best_err.3.1.7
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.26, i32 noundef %rate, i32 noundef %sub30) #13
  %34 = ptrtoint ptr %divisor1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %divisor1, align 4
  %call32 = tail call fastcc i32 @wm8750_get_filter(i32 noundef %parent_rate, i32 noundef %35)
  %36 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call32, ptr %filter, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end, %wm8750_get_filter.exit
  %retval.0 = phi i32 [ 0, %wm8750_get_filter.exit ], [ -22, %do.end ], [ 0, %do.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8850_find_pll_bits(i32 noundef %rate, i32 noundef %parent_rate, ptr nocapture noundef writeonly %multiplier, ptr nocapture noundef writeonly %divisor1, ptr nocapture noundef writeonly %divisor2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul7 = shl i32 %parent_rate, 1
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %entry
  %mul.068 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body6_crit_edge ]
  %best_err.267 = phi i32 [ -1, %entry ], [ %best_err.3, %for.inc.for.body6_crit_edge ]
  %add = add nuw nsw i32 %mul.068, 1
  %mul8 = mul i32 %mul7, %add
  %div156 = lshr i32 %mul8, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div156, i32 %rate)
  %cmp11 = icmp ugt i32 %div156, %rate
  br i1 %cmp11, label %for.body6.for.inc_crit_edge, label %if.end

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %sub = sub i32 %rate, %div156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp eq i32 %sub, 0
  br i1 %cmp12, label %if.end.if.then13_crit_edge, label %if.end14

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %if.end.3.1.if.then13_crit_edge, %if.end.2.1.if.then13_crit_edge, %if.end.1.1.if.then13_crit_edge, %if.end.1137.if.then13_crit_edge, %if.end.3.if.then13_crit_edge, %if.end.2.if.then13_crit_edge, %if.end.1.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %div1.071126 = phi i32 [ 1, %if.end.3.if.then13_crit_edge ], [ 0, %if.end.3.1.if.then13_crit_edge ], [ 1, %if.end.2.if.then13_crit_edge ], [ 0, %if.end.2.1.if.then13_crit_edge ], [ 1, %if.end.1.if.then13_crit_edge ], [ 0, %if.end.1.1.if.then13_crit_edge ], [ 1, %if.end.if.then13_crit_edge ], [ 0, %if.end.1137.if.then13_crit_edge ]
  %div2.069.lcssa74 = phi i32 [ 0, %if.end.3.1.if.then13_crit_edge ], [ 0, %if.end.3.if.then13_crit_edge ], [ 1, %if.end.2.1.if.then13_crit_edge ], [ 1, %if.end.2.if.then13_crit_edge ], [ 2, %if.end.1.1.if.then13_crit_edge ], [ 2, %if.end.1.if.then13_crit_edge ], [ 3, %if.end.1137.if.then13_crit_edge ], [ 3, %if.end.if.then13_crit_edge ]
  %mul.068.lcssa = phi i32 [ %mul.068.3, %if.end.3.if.then13_crit_edge ], [ %mul.068.3.1, %if.end.3.1.if.then13_crit_edge ], [ %mul.068.2, %if.end.2.if.then13_crit_edge ], [ %mul.068.2.1, %if.end.2.1.if.then13_crit_edge ], [ %mul.068.1, %if.end.1.if.then13_crit_edge ], [ %mul.068.1.1, %if.end.1.1.if.then13_crit_edge ], [ %mul.068, %if.end.if.then13_crit_edge ], [ %mul.068.1128, %if.end.1137.if.then13_crit_edge ]
  %0 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mul.068.lcssa, ptr %multiplier, align 4
  %1 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %div1.071126, ptr %divisor1, align 4
  %2 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div2.069.lcssa74, ptr %divisor2, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %best_err.267)
  %cmp15 = icmp ult i32 %sub, %best_err.267
  br i1 %cmp15, label %if.then16, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul.068, ptr %multiplier, align 4
  %4 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %divisor1, align 4
  %5 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %divisor2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end14.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %best_err.3 = phi i32 [ %best_err.267, %for.body6.for.inc_crit_edge ], [ %sub, %if.then16 ], [ %best_err.267, %if.end14.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %add, 128
  br i1 %exitcond.not, label %for.inc.for.body6.1_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc.for.body6.1_crit_edge:                    ; preds = %for.inc
  br label %for.body6.1

for.body6.1:                                      ; preds = %for.inc.1.for.body6.1_crit_edge, %for.inc.for.body6.1_crit_edge
  %mul.068.1 = phi i32 [ %add.1, %for.inc.1.for.body6.1_crit_edge ], [ 0, %for.inc.for.body6.1_crit_edge ]
  %best_err.267.1 = phi i32 [ %best_err.3.1, %for.inc.1.for.body6.1_crit_edge ], [ %best_err.3, %for.inc.for.body6.1_crit_edge ]
  %add.1 = add nuw nsw i32 %mul.068.1, 1
  %mul8.1 = mul i32 %mul7, %add.1
  %div.1157 = lshr i32 %mul8.1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1157, i32 %rate)
  %cmp11.1 = icmp ugt i32 %div.1157, %rate
  br i1 %cmp11.1, label %for.body6.1.for.inc.1_crit_edge, label %if.end.1

for.body6.1.for.inc.1_crit_edge:                  ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.body6.1
  %sub.1 = sub i32 %rate, %div.1157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp12.1 = icmp eq i32 %sub.1, 0
  br i1 %cmp12.1, label %if.end.1.if.then13_crit_edge, label %if.end14.1

if.end.1.if.then13_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end14.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %best_err.267.1)
  %cmp15.1 = icmp ult i32 %sub.1, %best_err.267.1
  br i1 %cmp15.1, label %if.then16.1, label %if.end14.1.for.inc.1_crit_edge

if.end14.1.for.inc.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then16.1:                                      ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul.068.1, ptr %multiplier, align 4
  %7 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %divisor1, align 4
  %8 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %divisor2, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then16.1, %if.end14.1.for.inc.1_crit_edge, %for.body6.1.for.inc.1_crit_edge
  %best_err.3.1 = phi i32 [ %best_err.267.1, %for.body6.1.for.inc.1_crit_edge ], [ %sub.1, %if.then16.1 ], [ %best_err.267.1, %if.end14.1.for.inc.1_crit_edge ]
  %exitcond.1.not = icmp eq i32 %add.1, 128
  br i1 %exitcond.1.not, label %for.inc.1.for.body6.2_crit_edge, label %for.inc.1.for.body6.1_crit_edge

for.inc.1.for.body6.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1

for.inc.1.for.body6.2_crit_edge:                  ; preds = %for.inc.1
  br label %for.body6.2

for.body6.2:                                      ; preds = %for.inc.2.for.body6.2_crit_edge, %for.inc.1.for.body6.2_crit_edge
  %mul.068.2 = phi i32 [ %add.2, %for.inc.2.for.body6.2_crit_edge ], [ 0, %for.inc.1.for.body6.2_crit_edge ]
  %best_err.267.2 = phi i32 [ %best_err.3.2, %for.inc.2.for.body6.2_crit_edge ], [ %best_err.3.1, %for.inc.1.for.body6.2_crit_edge ]
  %add.2 = add nuw nsw i32 %mul.068.2, 1
  %mul8.2 = mul i32 %mul7, %add.2
  %div.2158 = lshr i32 %mul8.2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2158, i32 %rate)
  %cmp11.2 = icmp ugt i32 %div.2158, %rate
  br i1 %cmp11.2, label %for.body6.2.for.inc.2_crit_edge, label %if.end.2

for.body6.2.for.inc.2_crit_edge:                  ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.2:                                         ; preds = %for.body6.2
  %sub.2 = sub i32 %rate, %div.2158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2)
  %cmp12.2 = icmp eq i32 %sub.2, 0
  br i1 %cmp12.2, label %if.end.2.if.then13_crit_edge, label %if.end14.2

if.end.2.if.then13_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end14.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %best_err.267.2)
  %cmp15.2 = icmp ult i32 %sub.2, %best_err.267.2
  br i1 %cmp15.2, label %if.then16.2, label %if.end14.2.for.inc.2_crit_edge

if.end14.2.for.inc.2_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then16.2:                                      ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.068.2, ptr %multiplier, align 4
  %10 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %divisor1, align 4
  %11 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %divisor2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then16.2, %if.end14.2.for.inc.2_crit_edge, %for.body6.2.for.inc.2_crit_edge
  %best_err.3.2 = phi i32 [ %best_err.267.2, %for.body6.2.for.inc.2_crit_edge ], [ %sub.2, %if.then16.2 ], [ %best_err.267.2, %if.end14.2.for.inc.2_crit_edge ]
  %exitcond.2.not = icmp eq i32 %add.2, 128
  br i1 %exitcond.2.not, label %for.inc.2.for.body6.3_crit_edge, label %for.inc.2.for.body6.2_crit_edge

for.inc.2.for.body6.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.2

for.inc.2.for.body6.3_crit_edge:                  ; preds = %for.inc.2
  br label %for.body6.3

for.body6.3:                                      ; preds = %for.inc.3.for.body6.3_crit_edge, %for.inc.2.for.body6.3_crit_edge
  %mul.068.3 = phi i32 [ %add.3, %for.inc.3.for.body6.3_crit_edge ], [ 0, %for.inc.2.for.body6.3_crit_edge ]
  %best_err.267.3 = phi i32 [ %best_err.3.3, %for.inc.3.for.body6.3_crit_edge ], [ %best_err.3.2, %for.inc.2.for.body6.3_crit_edge ]
  %add.3 = add nuw nsw i32 %mul.068.3, 1
  %mul8.3 = mul i32 %mul7, %add.3
  %div.3159 = lshr exact i32 %mul8.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3159, i32 %rate)
  %cmp11.3 = icmp ugt i32 %div.3159, %rate
  br i1 %cmp11.3, label %for.body6.3.for.inc.3_crit_edge, label %if.end.3

for.body6.3.for.inc.3_crit_edge:                  ; preds = %for.body6.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.body6.3
  %sub.3 = sub i32 %rate, %div.3159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.3)
  %cmp12.3 = icmp eq i32 %sub.3, 0
  br i1 %cmp12.3, label %if.end.3.if.then13_crit_edge, label %if.end14.3

if.end.3.if.then13_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end14.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3, i32 %best_err.267.3)
  %cmp15.3 = icmp ult i32 %sub.3, %best_err.267.3
  br i1 %cmp15.3, label %if.then16.3, label %if.end14.3.for.inc.3_crit_edge

if.end14.3.for.inc.3_crit_edge:                   ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then16.3:                                      ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.068.3, ptr %multiplier, align 4
  %13 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %divisor1, align 4
  %14 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %divisor2, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then16.3, %if.end14.3.for.inc.3_crit_edge, %for.body6.3.for.inc.3_crit_edge
  %best_err.3.3 = phi i32 [ %best_err.267.3, %for.body6.3.for.inc.3_crit_edge ], [ %sub.3, %if.then16.3 ], [ %best_err.267.3, %if.end14.3.for.inc.3_crit_edge ]
  %exitcond.3.not = icmp eq i32 %add.3, 128
  br i1 %exitcond.3.not, label %for.inc.3.for.body6.1134_crit_edge, label %for.inc.3.for.body6.3_crit_edge

for.inc.3.for.body6.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.3

for.inc.3.for.body6.1134_crit_edge:               ; preds = %for.inc.3
  br label %for.body6.1134

for.body6.1134:                                   ; preds = %for.inc.1142.for.body6.1134_crit_edge, %for.inc.3.for.body6.1134_crit_edge
  %mul.068.1128 = phi i32 [ %add.1130, %for.inc.1142.for.body6.1134_crit_edge ], [ 0, %for.inc.3.for.body6.1134_crit_edge ]
  %best_err.267.1129 = phi i32 [ %best_err.3.1141, %for.inc.1142.for.body6.1134_crit_edge ], [ %best_err.3.3, %for.inc.3.for.body6.1134_crit_edge ]
  %add.1130 = add nuw nsw i32 %mul.068.1128, 1
  %mul8.1131 = mul i32 %mul7, %add.1130
  %div.1132160 = lshr i32 %mul8.1131, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1132160, i32 %rate)
  %cmp11.1133 = icmp ugt i32 %div.1132160, %rate
  br i1 %cmp11.1133, label %for.body6.1134.for.inc.1142_crit_edge, label %if.end.1137

for.body6.1134.for.inc.1142_crit_edge:            ; preds = %for.body6.1134
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1142

if.end.1137:                                      ; preds = %for.body6.1134
  %sub.1135 = sub i32 %rate, %div.1132160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1135)
  %cmp12.1136 = icmp eq i32 %sub.1135, 0
  br i1 %cmp12.1136, label %if.end.1137.if.then13_crit_edge, label %if.end14.1139

if.end.1137.if.then13_crit_edge:                  ; preds = %if.end.1137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end14.1139:                                    ; preds = %if.end.1137
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1135, i32 %best_err.267.1129)
  %cmp15.1138 = icmp ult i32 %sub.1135, %best_err.267.1129
  br i1 %cmp15.1138, label %if.then16.1140, label %if.end14.1139.for.inc.1142_crit_edge

if.end14.1139.for.inc.1142_crit_edge:             ; preds = %if.end14.1139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1142

if.then16.1140:                                   ; preds = %if.end14.1139
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.068.1128, ptr %multiplier, align 4
  %16 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %divisor1, align 4
  %17 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %divisor2, align 4
  br label %for.inc.1142

for.inc.1142:                                     ; preds = %if.then16.1140, %if.end14.1139.for.inc.1142_crit_edge, %for.body6.1134.for.inc.1142_crit_edge
  %best_err.3.1141 = phi i32 [ %best_err.267.1129, %for.body6.1134.for.inc.1142_crit_edge ], [ %sub.1135, %if.then16.1140 ], [ %best_err.267.1129, %if.end14.1139.for.inc.1142_crit_edge ]
  %exitcond.not.1 = icmp eq i32 %add.1130, 128
  br i1 %exitcond.not.1, label %for.inc.1142.for.body6.1.1_crit_edge, label %for.inc.1142.for.body6.1134_crit_edge

for.inc.1142.for.body6.1134_crit_edge:            ; preds = %for.inc.1142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1134

for.inc.1142.for.body6.1.1_crit_edge:             ; preds = %for.inc.1142
  br label %for.body6.1.1

for.body6.1.1:                                    ; preds = %for.inc.1.1.for.body6.1.1_crit_edge, %for.inc.1142.for.body6.1.1_crit_edge
  %mul.068.1.1 = phi i32 [ %add.1.1, %for.inc.1.1.for.body6.1.1_crit_edge ], [ 0, %for.inc.1142.for.body6.1.1_crit_edge ]
  %best_err.267.1.1 = phi i32 [ %best_err.3.1.1, %for.inc.1.1.for.body6.1.1_crit_edge ], [ %best_err.3.1141, %for.inc.1142.for.body6.1.1_crit_edge ]
  %add.1.1 = add nuw nsw i32 %mul.068.1.1, 1
  %mul8.1.1 = mul i32 %mul7, %add.1.1
  %div.1.1161 = lshr i32 %mul8.1.1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1.1161, i32 %rate)
  %cmp11.1.1 = icmp ugt i32 %div.1.1161, %rate
  br i1 %cmp11.1.1, label %for.body6.1.1.for.inc.1.1_crit_edge, label %if.end.1.1

for.body6.1.1.for.inc.1.1_crit_edge:              ; preds = %for.body6.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.1

if.end.1.1:                                       ; preds = %for.body6.1.1
  %sub.1.1 = sub i32 %rate, %div.1.1161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.1)
  %cmp12.1.1 = icmp eq i32 %sub.1.1, 0
  br i1 %cmp12.1.1, label %if.end.1.1.if.then13_crit_edge, label %if.end14.1.1

if.end.1.1.if.then13_crit_edge:                   ; preds = %if.end.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end14.1.1:                                     ; preds = %if.end.1.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.1, i32 %best_err.267.1.1)
  %cmp15.1.1 = icmp ult i32 %sub.1.1, %best_err.267.1.1
  br i1 %cmp15.1.1, label %if.then16.1.1, label %if.end14.1.1.for.inc.1.1_crit_edge

if.end14.1.1.for.inc.1.1_crit_edge:               ; preds = %if.end14.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.1

if.then16.1.1:                                    ; preds = %if.end14.1.1
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul.068.1.1, ptr %multiplier, align 4
  %19 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %divisor1, align 4
  %20 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %divisor2, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %if.then16.1.1, %if.end14.1.1.for.inc.1.1_crit_edge, %for.body6.1.1.for.inc.1.1_crit_edge
  %best_err.3.1.1 = phi i32 [ %best_err.267.1.1, %for.body6.1.1.for.inc.1.1_crit_edge ], [ %sub.1.1, %if.then16.1.1 ], [ %best_err.267.1.1, %if.end14.1.1.for.inc.1.1_crit_edge ]
  %exitcond.1.not.1 = icmp eq i32 %add.1.1, 128
  br i1 %exitcond.1.not.1, label %for.inc.1.1.for.body6.2.1_crit_edge, label %for.inc.1.1.for.body6.1.1_crit_edge

for.inc.1.1.for.body6.1.1_crit_edge:              ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.1.1

for.inc.1.1.for.body6.2.1_crit_edge:              ; preds = %for.inc.1.1
  br label %for.body6.2.1

for.body6.2.1:                                    ; preds = %for.inc.2.1.for.body6.2.1_crit_edge, %for.inc.1.1.for.body6.2.1_crit_edge
  %mul.068.2.1 = phi i32 [ %add.2.1, %for.inc.2.1.for.body6.2.1_crit_edge ], [ 0, %for.inc.1.1.for.body6.2.1_crit_edge ]
  %best_err.267.2.1 = phi i32 [ %best_err.3.2.1, %for.inc.2.1.for.body6.2.1_crit_edge ], [ %best_err.3.1.1, %for.inc.1.1.for.body6.2.1_crit_edge ]
  %add.2.1 = add nuw nsw i32 %mul.068.2.1, 1
  %mul8.2.1 = mul i32 %mul7, %add.2.1
  %div.2.1162 = lshr exact i32 %mul8.2.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2.1162, i32 %rate)
  %cmp11.2.1 = icmp ugt i32 %div.2.1162, %rate
  br i1 %cmp11.2.1, label %for.body6.2.1.for.inc.2.1_crit_edge, label %if.end.2.1

for.body6.2.1.for.inc.2.1_crit_edge:              ; preds = %for.body6.2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.1

if.end.2.1:                                       ; preds = %for.body6.2.1
  %sub.2.1 = sub i32 %rate, %div.2.1162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2.1)
  %cmp12.2.1 = icmp eq i32 %sub.2.1, 0
  br i1 %cmp12.2.1, label %if.end.2.1.if.then13_crit_edge, label %if.end14.2.1

if.end.2.1.if.then13_crit_edge:                   ; preds = %if.end.2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end14.2.1:                                     ; preds = %if.end.2.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.1, i32 %best_err.267.2.1)
  %cmp15.2.1 = icmp ult i32 %sub.2.1, %best_err.267.2.1
  br i1 %cmp15.2.1, label %if.then16.2.1, label %if.end14.2.1.for.inc.2.1_crit_edge

if.end14.2.1.for.inc.2.1_crit_edge:               ; preds = %if.end14.2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.1

if.then16.2.1:                                    ; preds = %if.end14.2.1
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.068.2.1, ptr %multiplier, align 4
  %22 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %divisor1, align 4
  %23 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %divisor2, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %if.then16.2.1, %if.end14.2.1.for.inc.2.1_crit_edge, %for.body6.2.1.for.inc.2.1_crit_edge
  %best_err.3.2.1 = phi i32 [ %best_err.267.2.1, %for.body6.2.1.for.inc.2.1_crit_edge ], [ %sub.2.1, %if.then16.2.1 ], [ %best_err.267.2.1, %if.end14.2.1.for.inc.2.1_crit_edge ]
  %exitcond.2.not.1 = icmp eq i32 %add.2.1, 128
  br i1 %exitcond.2.not.1, label %for.inc.2.1.for.body6.3.1_crit_edge, label %for.inc.2.1.for.body6.2.1_crit_edge

for.inc.2.1.for.body6.2.1_crit_edge:              ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.2.1

for.inc.2.1.for.body6.3.1_crit_edge:              ; preds = %for.inc.2.1
  br label %for.body6.3.1

for.body6.3.1:                                    ; preds = %for.inc.3.1.for.body6.3.1_crit_edge, %for.inc.2.1.for.body6.3.1_crit_edge
  %mul.068.3.1 = phi i32 [ %add.3.1, %for.inc.3.1.for.body6.3.1_crit_edge ], [ 0, %for.inc.2.1.for.body6.3.1_crit_edge ]
  %best_err.267.3.1 = phi i32 [ %best_err.3.3.1, %for.inc.3.1.for.body6.3.1_crit_edge ], [ %best_err.3.2.1, %for.inc.2.1.for.body6.3.1_crit_edge ]
  %add.3.1 = add nuw nsw i32 %mul.068.3.1, 1
  %mul8.3.1 = mul i32 %mul7, %add.3.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.3.1, i32 %rate)
  %cmp11.3.1 = icmp ugt i32 %mul8.3.1, %rate
  br i1 %cmp11.3.1, label %for.body6.3.1.for.inc.3.1_crit_edge, label %if.end.3.1

for.body6.3.1.for.inc.3.1_crit_edge:              ; preds = %for.body6.3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.1

if.end.3.1:                                       ; preds = %for.body6.3.1
  %sub.3.1 = sub i32 %rate, %mul8.3.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.3.1)
  %cmp12.3.1 = icmp eq i32 %sub.3.1, 0
  br i1 %cmp12.3.1, label %if.end.3.1.if.then13_crit_edge, label %if.end14.3.1

if.end.3.1.if.then13_crit_edge:                   ; preds = %if.end.3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end14.3.1:                                     ; preds = %if.end.3.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3.1, i32 %best_err.267.3.1)
  %cmp15.3.1 = icmp ult i32 %sub.3.1, %best_err.267.3.1
  br i1 %cmp15.3.1, label %if.then16.3.1, label %if.end14.3.1.for.inc.3.1_crit_edge

if.end14.3.1.for.inc.3.1_crit_edge:               ; preds = %if.end14.3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.1

if.then16.3.1:                                    ; preds = %if.end14.3.1
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.068.3.1, ptr %multiplier, align 4
  %25 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %divisor1, align 4
  %26 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %divisor2, align 4
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %if.then16.3.1, %if.end14.3.1.for.inc.3.1_crit_edge, %for.body6.3.1.for.inc.3.1_crit_edge
  %best_err.3.3.1 = phi i32 [ %best_err.267.3.1, %for.body6.3.1.for.inc.3.1_crit_edge ], [ %sub.3.1, %if.then16.3.1 ], [ %best_err.267.3.1, %if.end14.3.1.for.inc.3.1_crit_edge ]
  %exitcond.3.not.1 = icmp eq i32 %add.3.1, 128
  br i1 %exitcond.3.not.1, label %for.inc18.3.1, label %for.inc.3.1.for.body6.3.1_crit_edge

for.inc.3.1.for.body6.3.1_crit_edge:              ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.3.1

for.inc18.3.1:                                    ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_err.3.3.1)
  %cmp23 = icmp eq i32 %best_err.3.3.1, -1
  br i1 %cmp23, label %do.end, label %do.end28

do.end:                                           ; preds = %for.inc18.3.1
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.31, i32 noundef %rate) #13
  br label %cleanup

do.end28:                                         ; preds = %for.inc18.3.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub30 = sub i32 %rate, %best_err.3.3.1
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.31, i32 noundef %rate, i32 noundef %sub30) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ -22, %do.end ], [ 0, %do.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8750_get_filter(i32 noundef %parent_rate, i32 noundef %divisor1) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %parent_rate, 1000000
  %add = add i32 %divisor1, 1
  %div1 = udiv i32 %div, %add
  %0 = add nsw i32 %div1, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -191, i32 %0)
  %1 = icmp ult i32 %0, -191
  br i1 %1, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %div1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %div1)
  %cmp3 = icmp ugt i32 %div1, 165
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 103, i32 %div1)
  %cmp5 = icmp ugt i32 %div1, 103
  br i1 %cmp5, label %if.else.cleanup_crit_edge, label %if.else7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div1)
  %cmp8 = icmp ugt i32 %div1, 64
  br i1 %cmp8, label %if.else7.cleanup_crit_edge, label %if.else10

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %div1)
  %cmp11 = icmp ugt i32 %div1, 41
  br i1 %cmp11, label %if.else10.cleanup_crit_edge, label %if.else13

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %div1)
  %cmp14 = icmp ugt i32 %div1, 25
  br i1 %cmp14, label %if.else13.cleanup_crit_edge, label %if.else16

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div1)
  %cmp17 = icmp ugt i32 %div1, 15
  br i1 %cmp17, label %if.else16.cleanup_crit_edge, label %if.else19

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %div1)
  %cmp20 = icmp ugt i32 %div1, 9
  %. = zext i1 %cmp20 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.else16.cleanup_crit_edge, %if.else13.cleanup_crit_edge, %if.else10.cleanup_crit_edge, %if.else7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 7, %if.end.cleanup_crit_edge ], [ 6, %if.else.cleanup_crit_edge ], [ 5, %if.else7.cleanup_crit_edge ], [ 4, %if.else10.cleanup_crit_edge ], [ 3, %if.else13.cleanup_crit_edge ], [ 2, %if.else16.cleanup_crit_edge ], [ %., %if.else19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__of_table_vt8500_device, !1, !"__of_table_vt8500_device", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-vt8500.c", i32 304, i32 1}
!2 = !{ptr @__of_table_vt8500_pll, !3, !"__of_table_vt8500_pll", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-vt8500.c", i32 726, i32 1}
!4 = !{ptr @__of_table_wm8650_pll, !5, !"__of_table_wm8650_pll", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-vt8500.c", i32 732, i32 1}
!6 = !{ptr @__of_table_wm8750_pll, !7, !"__of_table_wm8750_pll", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-vt8500.c", i32 738, i32 1}
!8 = !{ptr @__of_table_wm8850_pll, !9, !"__of_table_wm8850_pll", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-vt8500.c", i32 744, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-vt8500.c", i32 238, i32 6}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-vt8500.c", i32 243, i32 34}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-vt8500.c", i32 246, i32 35}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-vt8500.c", i32 248, i32 4}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vtwm_device_clk_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @vtwm_device_clk_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/clk-vt8500.c", i32 255, i32 34}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/clk-vt8500.c", i32 264, i32 30}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/clk-vt8500.c", i32 268, i32 32}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/clk-vt8500.c", i32 281, i32 3}
!29 = !{ptr @vtwm_device_clk_init._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vtwm_device_clk_init._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @pmc_base, !32, !"pmc_base", i1 false, i1 false}
!32 = !{!"../drivers/clk/clk-vt8500.c", i32 48, i32 22}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-vt8500.c", i32 53, i32 39}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-vt8500.c", i32 62, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vtwm_set_pmc_base._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @vtwm_set_pmc_base._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-vt8500.c", i32 18, i32 8}
!42 = !{ptr @_lock, !41, !"_lock", i1 false, i1 false}
!43 = !{ptr @vt8500_gated_clk_ops, !44, !"vt8500_gated_clk_ops", i1 false, i1 false}
!44 = !{!"../drivers/clk/clk-vt8500.c", i32 198, i32 29}
!45 = !{ptr @vt8500_divisor_clk_ops, !46, !"vt8500_divisor_clk_ops", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-vt8500.c", i32 204, i32 29}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-vt8500.c", i32 182, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vt8500_dclk_set_rate._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @vt8500_dclk_set_rate._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vt8500_gated_divisor_clk_ops, !53, !"vt8500_gated_divisor_clk_ops", i1 false, i1 false}
!53 = !{!"../drivers/clk/clk-vt8500.c", i32 210, i32 29}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-vt8500.c", i32 686, i32 34}
!56 = !{ptr @vtwm_pll_ops, !57, !"vtwm_pll_ops", i1 false, i1 false}
!57 = !{!"../drivers/clk/clk-vt8500.c", i32 667, i32 29}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/clk-vt8500.c", i32 357, i32 3}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vt8500_find_pll_bits._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @vt8500_find_pll_bits._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/clk-vt8500.c", i32 372, i32 3}
!65 = !{ptr @vt8500_find_pll_bits._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @vt8500_find_pll_bits._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-vt8500.c", i32 420, i32 2}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @wm8650_find_pll_bits._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @wm8650_find_pll_bits._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-vt8500.c", i32 487, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wm8750_find_pll_bits._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @wm8750_find_pll_bits._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @wm8750_find_pll_bits._entry.27, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/clk/clk-vt8500.c", i32 492, i32 2}
!79 = !{ptr @wm8750_find_pll_bits._entry_ptr.28, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-vt8500.c", i32 431, i32 3}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @wm8750_get_filter._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @wm8750_get_filter._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/clk-vt8500.c", i32 535, i32 3}
!87 = !{ptr @wm8850_find_pll_bits._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @wm8850_find_pll_bits._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @wm8850_find_pll_bits._entry.32, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/clk/clk-vt8500.c", i32 540, i32 2}
!91 = !{ptr @wm8850_find_pll_bits._entry_ptr.33, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-vt8500.c", i32 579, i32 3}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vtwm_pll_set_rate._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @vtwm_pll_set_rate._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 701671}
!110 = !{i64 2152544132}
!111 = !{i64 2152544430}
!112 = !{i64 701253}
!113 = !{i64 2152546590}
!114 = !{i64 2152546888}
!115 = !{i64 2152548696}
!116 = !{i64 2152550415}
!117 = !{i64 2152541871}
!118 = !{i64 2152542151}
!119 = !{i64 2152541993}
!120 = !{i64 2152554979}
!121 = !{i64 2152581343}
!122 = !{i64 2152578240}
