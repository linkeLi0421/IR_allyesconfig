; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.div_nmp = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.utmi_clk_param = type { i32, i8, i8, i8, i8 }
%struct.tegra_clk_pll = type { %struct.clk_hw, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pdiv_map = type { i8, i8 }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32, i32, i8, i8, i16 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_pll_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr @tegra_clk_pll_restore_context, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_plle_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_plle_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_plle_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pll_e_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 16, i8 6, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@tegra_clk_pllu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pllu_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/tegra/clk-pll.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"parent clk %s of %s must be registered first\0A\00", [50 x i8] zeroinitializer }, align 32
@tegra_clk_pllxc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_ramp_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllxc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_pllre_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pllre_recalc_rate, ptr @clk_pllre_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllre_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_pllc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pllc_enable, ptr @clk_pllc_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_ramp_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_plle_tegra114_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_plle_tegra114_enable, ptr @clk_plle_tegra114_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_clk_pllu_tegra114_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pllu_tegra114_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s is on but IDDQ set\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_clk_pllss_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr @clk_pll_is_enabled, ptr null, ptr null, ptr @tegra_clk_pll_restore_context, ptr @clk_pll_recalc_rate, ptr @clk_pll_ramp_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllxc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@clk_pll_wait_for_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Timed out waiting for pll %s lock\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_pll_wait_for_lock\00", [42 x i8] zeroinitializer }, align 32
@clk_pll_wait_for_lock._entry_ptr = internal global ptr @clk_pll_wait_for_lock._entry, section ".printk_index", align 4
@clk_pll_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Clock %s has unknown fixed frequency\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_pll_recalc_rate\00", [44 x i8] zeroinitializer }, align 32
@clk_pll_recalc_rate._entry_ptr = internal global ptr @clk_pll_recalc_rate._entry, section ".printk_index", align 4
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Clock %s has invalid pdiv value : 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@clk_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Can not change %s fixed rate %lu to %lu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_pll_set_rate\00", [47 x i8] zeroinitializer }, align 32
@clk_pll_set_rate._entry_ptr = internal global ptr @clk_pll_set_rate._entry, section ".printk_index", align 4
@clk_pll_set_rate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Failed to set %s rate %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@clk_pll_set_rate._entry_ptr.12 = internal global ptr @clk_pll_set_rate._entry.10, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@clk_plle_training._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: timeout waiting for PLLE\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_plle_training\00", [46 x i8] zeroinitializer }, align 32
@clk_plle_training._entry_ptr = internal global ptr @clk_plle_training._entry, section ".printk_index", align 4
@default_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 3, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_calc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s Unexpected reference rate %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"_calc_rate\00", [21 x i8] zeroinitializer }, align 32
@_calc_rate._entry_ptr = internal global ptr @_calc_rate._entry, section ".printk_index", align 4
@clk_pllu_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: failed to get OSC clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_pllu_enable\00", [16 x i8] zeroinitializer }, align 32
@clk_pllu_enable._entry_ptr = internal global ptr @clk_pllu_enable._entry, section ".printk_index", align 4
@utmi_parameters = internal constant { [6 x %struct.utmi_clk_param], [48 x i8] } { [6 x %struct.utmi_clk_param] [%struct.utmi_clk_param { i32 13000000, i8 2, i8 51, i8 5, i8 127 }, %struct.utmi_clk_param { i32 19200000, i8 3, i8 75, i8 6, i8 -69 }, %struct.utmi_clk_param { i32 12000000, i8 2, i8 47, i8 4, i8 118 }, %struct.utmi_clk_param { i32 26000000, i8 4, i8 102, i8 9, i8 -2 }, %struct.utmi_clk_param { i32 16800000, i8 3, i8 65, i8 10, i8 -92 }, %struct.utmi_clk_param { i32 38400000, i8 0, i8 0, i8 6, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@clk_pllu_enable._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: unexpected input rate %lu Hz\0A\00", [60 x i8] zeroinitializer }, align 32
@clk_pllu_enable._entry_ptr.21 = internal global ptr @clk_pllu_enable._entry.19, section ".printk_index", align 4
@_setup_dynamic_ramp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Unexpected reference rate %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_setup_dynamic_ramp\00", [44 x i8] zeroinitializer }, align 32
@_setup_dynamic_ramp._entry_ptr = internal global ptr @_setup_dynamic_ramp._entry, section ".printk_index", align 4
@_pllcx_update_dynamic_coef._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.24, ptr @.str, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_pllcx_update_dynamic_coef\00", [37 x i8] zeroinitializer }, align 32
@_pllcx_update_dynamic_coef._entry_ptr = internal global ptr @_pllcx_update_dynamic_coef._entry, section ".printk_index", align 4
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pll_e enabled with unsupported parent %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pllp_out0\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_re_vco\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@clk_pllu_tegra114_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.29, ptr @.str, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_pllu_tegra114_enable\00", [39 x i8] zeroinitializer }, align 32
@clk_pllu_tegra114_enable._entry_ptr = internal global ptr @clk_pllu_tegra114_enable._entry, section ".printk_index", align 4
@clk_pllu_tegra114_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.29, ptr @.str, i32 1776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_pllu_tegra114_enable._entry_ptr.31 = internal global ptr @clk_pllu_tegra114_enable._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 13000000, i64 16800000, i64 19200000, i64 26000000]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 13000000, i64 16800000, i64 19200000, i64 26000000]
@__sancov_gen_cov_switch_values.34 = internal global [9 x i64] [i64 7, i64 32, i64 9600000, i64 12000000, i64 13000000, i64 16800000, i64 19200000, i64 26000000, i64 28800000]
@__sancov_gen_cov_switch_values.35 = internal global [8 x i64] [i64 6, i64 32, i64 12000000, i64 13000000, i64 16800000, i64 19200000, i64 26000000, i64 38400000]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 13000000, i64 16800000, i64 19200000, i64 26000000]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 12000000, i64 13000000, i64 16800000, i64 19200000, i64 26000000, i64 38400000]
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"tegra_clk_pll_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1055, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"tegra_clk_plle_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1065, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"pll_e_nmp\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1942, i32 23 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"tegra_clk_pllu_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1193, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2055, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"tegra_clk_pllxc_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2001, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"tegra_clk_pllre_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2019, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"tegra_clk_pllc_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2010, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"tegra_clk_plle_tegra114_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2028, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"tegra_clk_pllu_tegra114_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2035, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2388, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"tegra_clk_pllss_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2319, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 319, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 883, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 897, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 811, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 821, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 946, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"default_nmp\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 267, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 584, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1128, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"utmi_parameters\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1088, i32 36 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1152, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1290, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1472, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1858, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1744, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1751, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private constant [31 x i8] c"../drivers/clk/tegra/clk-pll.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1775, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @_calc_rate._entry, ptr @_calc_rate._entry_ptr, ptr @_pllcx_update_dynamic_coef._entry, ptr @_pllcx_update_dynamic_coef._entry_ptr, ptr @_setup_dynamic_ramp._entry, ptr @_setup_dynamic_ramp._entry_ptr, ptr @clk_pll_recalc_rate._entry, ptr @clk_pll_recalc_rate._entry_ptr, ptr @clk_pll_set_rate._entry, ptr @clk_pll_set_rate._entry.10, ptr @clk_pll_set_rate._entry_ptr, ptr @clk_pll_set_rate._entry_ptr.12, ptr @clk_pll_wait_for_lock._entry, ptr @clk_pll_wait_for_lock._entry_ptr, ptr @clk_plle_training._entry, ptr @clk_plle_training._entry_ptr, ptr @clk_pllu_enable._entry, ptr @clk_pllu_enable._entry.19, ptr @clk_pllu_enable._entry_ptr, ptr @clk_pllu_enable._entry_ptr.21, ptr @clk_pllu_tegra114_enable._entry, ptr @clk_pllu_tegra114_enable._entry.30, ptr @clk_pllu_tegra114_enable._entry_ptr, ptr @clk_pllu_tegra114_enable._entry_ptr.31, ptr @tegra_clk_pll_ops, ptr @tegra_clk_plle_ops, ptr @pll_e_nmp, ptr @tegra_clk_pllu_ops, ptr @.str, ptr @.str.1, ptr @tegra_clk_pllxc_ops, ptr @tegra_clk_pllre_ops, ptr @tegra_clk_pllc_ops, ptr @tegra_clk_plle_tegra114_ops, ptr @tegra_clk_pllu_tegra114_ops, ptr @.str.2, ptr @tegra_clk_pllss_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @default_nmp, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @utmi_parameters, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_plle_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pllu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pllxc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pllre_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pllc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_plle_tegra114_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pllu_tegra114_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_pllss_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_wait_for_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_set_rate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_plle_training._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_calc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllu_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utmi_parameters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllu_enable._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_setup_dynamic_ramp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pllcx_update_dynamic_coef._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllu_tegra114_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pllu_tegra114_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_pll_wait_for_lock(ptr noundef %pll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 4
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false7.i, label %if.end.i

cond.false7.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %6(i32 noundef %5) #10
  br label %clk_pll_wait_for_lock.exit

if.end.i:                                         ; preds = %entry
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 1
  %7 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_base.i, align 4
  %and13.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 7
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i, ptr %misc_reg.i
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %8, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2451.i = icmp sgt i32 %13, 0
  br i1 %cmp2451.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %and25.i = and i32 %15, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %11)
  %cmp26.i = icmp eq i32 %and25.i, %11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %16(i32 noundef 10737400) #10
  br label %clk_pll_wait_for_lock.exit

if.end28.i:                                       ; preds = %for.body.i
  tail call void %16(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %17 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %20
  br i1 %cmp24.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.do.end.i_crit_edge

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end28.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %pll) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %clk_pll_wait_for_lock.exit

clk_pll_wait_for_lock.exit:                       ; preds = %do.end.i, %if.then27.i, %cond.false7.i
  %retval.0.i = phi i32 [ 0, %if.then27.i ], [ -1, %do.end.i ], [ 0, %cond.false7.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_pll_p_div_to_hw(ptr nocapture noundef readonly %pll, i8 noundef zeroext %p_div) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 4
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry._p_div_to_hw.exit_crit_edge, label %while.cond.preheader.i

entry._p_div_to_hw.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %_p_div_to_hw.exit

while.cond.preheader.i:                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not15.i = icmp eq i8 %5, 0
  br i1 %tobool1.not15.i, label %while.cond.preheader.i._p_div_to_hw.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i._p_div_to_hw.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_p_div_to_hw.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %6 = phi i8 [ %10, %if.end.i.while.body.i_crit_edge ], [ %5, %while.cond.preheader.i.while.body.i_crit_edge ]
  %p_tohw.016.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %3, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %p_div)
  %cmp.not.i = icmp ult i8 %6, %p_div
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw_val.i = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.016.i, i32 0, i32 1
  %7 = ptrtoint ptr %hw_val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_val.i, align 1
  %conv6.i = zext i8 %8 to i32
  br label %_p_div_to_hw.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.i, align 1
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %if.end.i._p_div_to_hw.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i._p_div_to_hw.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_p_div_to_hw.exit

_p_div_to_hw.exit:                                ; preds = %if.end.i._p_div_to_hw.exit_crit_edge, %if.then5.i, %while.cond.preheader.i._p_div_to_hw.exit_crit_edge, %entry._p_div_to_hw.exit_crit_edge
  %retval.0.i = phi i32 [ %conv6.i, %if.then5.i ], [ -22, %entry._p_div_to_hw.exit_crit_edge ], [ -22, %while.cond.preheader.i._p_div_to_hw.exit_crit_edge ], [ -22, %if.end.i._p_div_to_hw.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

entry.clk_pll_is_enabled.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %entry
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %7 = and i32 %6, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %8 = icmp eq i32 %7, 524288
  br i1 %8, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %entry.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_base.i, align 4
  %11 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %clk_pll_is_enabled.exit.if.end_crit_edge, label %clk_pll_is_enabled.exit.cleanup_crit_edge

clk_pll_is_enabled.exit.cleanup_crit_edge:        ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

clk_pll_is_enabled.exit.if.end_crit_edge:         ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %clk_pll_is_enabled.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  %tobool1.not = icmp eq ptr %18, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %do.body3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %18) #10
  br label %if.end10

if.end10:                                         ; preds = %do.body3, %if.end.if.end10_crit_edge
  %flags.0 = phi i32 [ %call7, %do.body3 ], [ 0, %if.end.if.end10_crit_edge ]
  tail call fastcc void @_clk_pll_enable(ptr noundef %hw)
  %19 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params.i, align 4
  %flags.i27 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i27, align 4
  %and.i28 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %cond.false7.i, label %if.end.i32

cond.false7.i:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 29
  %23 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #10
  br label %clk_pll_wait_for_lock.exit

if.end.i32:                                       ; preds = %if.end10
  %clk_base.i30 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %clk_base.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_base.i30, align 4
  %and13.i = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 7
  %base_reg.i31 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i31, ptr %misc_reg.i
  %28 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %27, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 9
  %29 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 29
  %31 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2451.i = icmp sgt i32 %32, 0
  br i1 %cmp2451.i, label %if.end.i32.for.body.i_crit_edge, label %if.end.i32.do.end.i_crit_edge

if.end.i32.do.end.i_crit_edge:                    ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i32.for.body.i_crit_edge:                  ; preds = %if.end.i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end.i32.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %if.end.i32.for.body.i_crit_edge ]
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %and25.i = and i32 %34, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %30)
  %cmp26.i = icmp eq i32 %and25.i, %30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %35(i32 noundef 10737400) #10
  br label %clk_pll_wait_for_lock.exit

if.end28.i:                                       ; preds = %for.body.i
  tail call void %35(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %36 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %37, i32 0, i32 29
  %38 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %39
  br i1 %cmp24.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.do.end.i_crit_edge

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end28.i.do.end.i_crit_edge, %if.end.i32.do.end.i_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %clk_pll_wait_for_lock.exit

clk_pll_wait_for_lock.exit:                       ; preds = %do.end.i, %if.then27.i, %cond.false7.i
  %retval.0.i33 = phi i32 [ 0, %if.then27.i ], [ -1, %do.end.i ], [ 0, %cond.false7.i ]
  %40 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %params.i, align 4
  %defaults_set.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %41, i32 0, i32 31
  %42 = ptrtoint ptr %defaults_set.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %defaults_set.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i35 = icmp eq i8 %43, 0
  br i1 %tobool.not.i35, label %clk_pll_wait_for_lock.exit.pll_clk_start_ss.exit_crit_edge, label %land.lhs.true.i36

clk_pll_wait_for_lock.exit.pll_clk_start_ss.exit_crit_edge: ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_start_ss.exit

land.lhs.true.i36:                                ; preds = %clk_pll_wait_for_lock.exit
  %ssc_ctrl_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %41, i32 0, i32 19
  %44 = ptrtoint ptr %ssc_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ssc_ctrl_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool2.not.i = icmp eq i32 %45, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i36.pll_clk_start_ss.exit_crit_edge, label %if.then.i38

land.lhs.true.i36.pll_clk_start_ss.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_start_ss.exit

if.then.i38:                                      ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base.i37 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %46 = ptrtoint ptr %clk_base.i37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_base.i37, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %45
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  %50 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %params.i, align 4
  %ssc_ctrl_en_mask.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %ssc_ctrl_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ssc_ctrl_en_mask.i, align 4
  %or.i = or i32 %53, %49
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %55 = ptrtoint ptr %clk_base.i37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_base.i37, align 4
  %ssc_ctrl_reg8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 19
  %57 = ptrtoint ptr %ssc_ctrl_reg8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ssc_ctrl_reg8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %56, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %54) #10, !srcloc !102
  br label %pll_clk_start_ss.exit

pll_clk_start_ss.exit:                            ; preds = %if.then.i38, %land.lhs.true.i36.pll_clk_start_ss.exit_crit_edge, %clk_pll_wait_for_lock.exit.pll_clk_start_ss.exit_crit_edge
  %59 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lock, align 4
  %tobool13.not = icmp eq ptr %60, null
  br i1 %tobool13.not, label %pll_clk_start_ss.exit.cleanup_crit_edge, label %if.then14

pll_clk_start_ss.exit.cleanup_crit_edge:          ; preds = %pll_clk_start_ss.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %pll_clk_start_ss.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %60, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %pll_clk_start_ss.exit.cleanup_crit_edge, %clk_pll_is_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %clk_pll_is_enabled.exit.cleanup_crit_edge ], [ %retval.0.i33, %if.then14 ], [ %retval.0.i33, %pll_clk_start_ss.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params.i, align 4
  %defaults_set.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %defaults_set.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %defaults_set.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.pll_clk_stop_ss.exit_crit_edge, label %land.lhs.true.i

if.end.pll_clk_stop_ss.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit

land.lhs.true.i:                                  ; preds = %if.end
  %ssc_ctrl_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %ssc_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssc_ctrl_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.pll_clk_stop_ss.exit_crit_edge, label %if.then.i

land.lhs.true.i.pll_clk_stop_ss.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %12 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params.i, align 4
  %ssc_ctrl_en_mask.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %ssc_ctrl_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssc_ctrl_en_mask.i, align 4
  %neg.i = xor i32 %15, -1
  %and.i = and i32 %11, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %17 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_base.i, align 4
  %ssc_ctrl_reg8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 19
  %19 = ptrtoint ptr %ssc_ctrl_reg8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ssc_ctrl_reg8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %16) #10, !srcloc !102
  br label %pll_clk_stop_ss.exit

pll_clk_stop_ss.exit:                             ; preds = %if.then.i, %land.lhs.true.i.pll_clk_stop_ss.exit_crit_edge, %if.end.pll_clk_stop_ss.exit_crit_edge
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw)
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 4
  %tobool8.not = icmp eq ptr %22, null
  br i1 %tobool8.not, label %pll_clk_stop_ss.exit.if.end11_crit_edge, label %if.then9

pll_clk_stop_ss.exit.if.end11_crit_edge:          ; preds = %pll_clk_stop_ss.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %pll_clk_stop_ss.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %22, i32 noundef %flags.0) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %pll_clk_stop_ss.exit.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pmc.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %pmc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmc.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %7 = and i32 %6, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %8 = icmp eq i32 %7, 524288
  br i1 %8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_base, align 4
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg, align 4
  %add.ptr2 = getelementptr i8, ptr %10, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !100
  %16 = lshr i32 %15, 6
  %.lobit = and i32 %16, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %.lobit, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_clk_pll_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #10
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #10
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #10
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

entry.clk_pll_is_enabled.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %entry
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %7 = and i32 %6, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %8 = icmp eq i32 %7, 524288
  br i1 %8, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %entry.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_base.i, align 4
  %11 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %clk_pll_is_enabled.exit.if.end_crit_edge, label %clk_pll_is_enabled.exit.cleanup_crit_edge

clk_pll_is_enabled.exit.cleanup_crit_edge:        ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

clk_pll_is_enabled.exit.if.end_crit_edge:         ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %clk_pll_is_enabled.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %17 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params.i, align 4
  %set_defaults = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 41
  %19 = ptrtoint ptr %set_defaults to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_defaults, align 4
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %20(ptr noundef %hw) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @clk_pll_set_rate(ptr noundef %hw, i32 noundef %call2, i32 noundef %call1)
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call10 = tail call i32 @__clk_get_enable_count(ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %lock.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %23 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock.i, align 4
  %tobool.not.i27 = icmp eq ptr %24, null
  br i1 %tobool.not.i27, label %if.then12.if.end.i28_crit_edge, label %do.body1.i

if.then12.if.end.i28_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i28

do.body1.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %24) #10
  br label %if.end.i28

if.end.i28:                                       ; preds = %do.body1.i, %if.then12.if.end.i28_crit_edge
  %flags.0.i = phi i32 [ %call4.i, %do.body1.i ], [ 0, %if.then12.if.end.i28_crit_edge ]
  %25 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params.i, align 4
  %defaults_set.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %26, i32 0, i32 31
  %27 = ptrtoint ptr %defaults_set.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %defaults_set.i.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %if.end.i28.pll_clk_stop_ss.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i28.pll_clk_stop_ss.exit.i_crit_edge:      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i28
  %ssc_ctrl_reg.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %26, i32 0, i32 19
  %29 = ptrtoint ptr %ssc_ctrl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ssc_ctrl_reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.pll_clk_stop_ss.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.pll_clk_stop_ss.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %clk_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_base.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %32, i32 %30
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #10, !srcloc !100
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %params.i, align 4
  %ssc_ctrl_en_mask.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 20
  %37 = ptrtoint ptr %ssc_ctrl_en_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ssc_ctrl_en_mask.i.i, align 4
  %neg.i.i = xor i32 %38, -1
  %and.i.i = and i32 %34, %neg.i.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  %40 = ptrtoint ptr %clk_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_base.i.i, align 4
  %ssc_ctrl_reg8.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 19
  %42 = ptrtoint ptr %ssc_ctrl_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ssc_ctrl_reg8.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %39) #10, !srcloc !102
  br label %pll_clk_stop_ss.exit.i

pll_clk_stop_ss.exit.i:                           ; preds = %if.then.i.i, %land.lhs.true.i.i.pll_clk_stop_ss.exit.i_crit_edge, %if.end.i28.pll_clk_stop_ss.exit.i_crit_edge
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw) #10
  %44 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lock.i, align 4
  %tobool8.not.i = icmp eq ptr %45, null
  br i1 %tobool8.not.i, label %pll_clk_stop_ss.exit.i.cleanup_crit_edge, label %if.then9.i

pll_clk_stop_ss.exit.i.cleanup_crit_edge:         ; preds = %pll_clk_stop_ss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.i:                                       ; preds = %pll_clk_stop_ss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %45, i32 noundef %flags.0.i) #10
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @clk_pll_enable(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9.i, %pll_clk_stop_ss.exit.i.cleanup_crit_edge, %clk_pll_is_enabled.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %conv = zext i32 %parent_rate to i64
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  %4 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_base, align 4
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_reg, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !100
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool5.not = icmp sgt i32 %11, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = and i32 %15, 4192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %16)
  %17 = icmp eq i32 %16, 64
  %and16 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond380 = select i1 %17, i1 %tobool17.not, i1 false
  br i1 %or.cond380, label %if.then18, label %if.end35

if.then18:                                        ; preds = %if.end
  %fixed_rate = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 35
  %18 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fixed_rate, align 4
  %freq_table.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 34
  %20 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %freq_table.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not72.i = icmp eq i32 %23, 0
  br i1 %cmp.not72.i, label %if.then18.do.end_crit_edge, label %if.then18.for.body.i_crit_edge

if.then18.for.body.i_crit_edge:                   ; preds = %if.then18
  br label %for.body.i

if.then18.do.end_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then18.for.body.i_crit_edge
  %24 = phi i32 [ %28, %for.inc.i.for.body.i_crit_edge ], [ %23, %if.then18.for.body.i_crit_edge ]
  %sel.073.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %21, %if.then18.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %parent_rate)
  %cmp2.i = icmp eq i32 %24, %parent_rate
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %output_rate.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 1
  %25 = ptrtoint ptr %output_rate.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %output_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %19)
  %cmp3.i = icmp eq i32 %26, %19
  br i1 %cmp3.i, label %if.end7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end7.i:                                        ; preds = %land.lhs.true.i
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 32
  %29 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  %p14.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 4
  %31 = ptrtoint ptr %p14.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %p14.i, align 4
  br i1 %tobool.not.i, label %if.end7.i.cleanup_crit_edge, label %while.cond.preheader.i.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader.i.i:                         ; preds = %if.end7.i
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.not15.i.i = icmp eq i8 %34, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i.do.end_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.do.end_crit_edge:        ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %35 = phi i8 [ %37, %if.end.i.i.while.body.i.i_crit_edge ], [ %34, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %p_tohw.016.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %30, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %32)
  %cmp.not.i.i = icmp ult i8 %35, %32
  br i1 %cmp.not.i.i, label %if.end.i.i, label %while.body.i.i.cleanup_crit_edge

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 1
  %36 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool1.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.do.end_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.i.i.do.end_crit_edge, %while.cond.preheader.i.i.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %if.then18.do.end_crit_edge
  %call24 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call24) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-pll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 885, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

if.end35:                                         ; preds = %if.end
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %cfg)
  %38 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %params, align 4
  %flags37 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %39, i32 0, i32 26
  %40 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags37, align 4
  %and38 = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else, label %if.end35.if.end69_crit_edge

if.end35.if.end69_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.else:                                          ; preds = %if.end35
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %2, align 4
  %pdiv_tohw.i382 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %39, i32 0, i32 32
  %44 = ptrtoint ptr %pdiv_tohw.i382 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdiv_tohw.i382, align 4
  %tobool.not.i383 = icmp eq ptr %45, null
  br i1 %tobool.not.i383, label %_hw_to_p_div.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.else
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool1.not17.i = icmp eq i8 %47, 0
  br i1 %tobool1.not17.i, label %while.cond.preheader.i.do.end51_crit_edge, label %while.body.i.preheader

while.cond.preheader.i.do.end51_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  %hw_val.i431 = getelementptr inbounds %struct.pdiv_map, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %hw_val.i431 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hw_val.i431, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %43)
  %cmp.i432 = icmp eq i8 %49, %43
  br i1 %cmp.i432, label %while.body.i.preheader._hw_to_p_div.exit.thread403_crit_edge, label %while.body.i.preheader.while.cond.i_crit_edge

while.body.i.preheader.while.cond.i_crit_edge:    ; preds = %while.body.i.preheader
  br label %while.cond.i

while.body.i.preheader._hw_to_p_div.exit.thread403_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %_hw_to_p_div.exit.thread403

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.body.i.preheader.while.cond.i_crit_edge
  %p_tohw.018.i433 = phi ptr [ %incdec.ptr.i384, %while.body.i.while.cond.i_crit_edge ], [ %45, %while.body.i.preheader.while.cond.i_crit_edge ]
  %incdec.ptr.i384 = getelementptr %struct.pdiv_map, ptr %p_tohw.018.i433, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i384 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i384, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i = icmp eq i8 %51, 0
  br i1 %tobool1.not.i, label %while.cond.i.do.end51_crit_edge, label %while.body.i

while.cond.i.do.end51_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

while.body.i:                                     ; preds = %while.cond.i
  %hw_val.i = getelementptr %struct.pdiv_map, ptr %p_tohw.018.i433, i32 1, i32 1
  %52 = ptrtoint ptr %hw_val.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hw_val.i, align 1
  %cmp.i = icmp eq i8 %53, %43
  br i1 %cmp.i, label %while.body.i._hw_to_p_div.exit.thread403_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i._hw_to_p_div.exit.thread403_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_hw_to_p_div.exit.thread403

_hw_to_p_div.exit.thread403:                      ; preds = %while.body.i._hw_to_p_div.exit.thread403_crit_edge, %while.body.i.preheader._hw_to_p_div.exit.thread403_crit_edge
  %.lcssa = phi i8 [ %47, %while.body.i.preheader._hw_to_p_div.exit.thread403_crit_edge ], [ %51, %while.body.i._hw_to_p_div.exit.thread403_crit_edge ]
  %conv6.i = zext i8 %.lcssa to i32
  br label %if.end69

_hw_to_p_div.exit:                                ; preds = %if.else
  %conv8.i = zext i8 %43 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %43)
  %cmp = icmp eq i8 %43, 31
  br i1 %cmp, label %_hw_to_p_div.exit.do.end51_crit_edge, label %_hw_to_p_div.exit.if.end69_crit_edge

_hw_to_p_div.exit.if.end69_crit_edge:             ; preds = %_hw_to_p_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

_hw_to_p_div.exit.do.end51_crit_edge:             ; preds = %_hw_to_p_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end51:                                         ; preds = %_hw_to_p_div.exit.do.end51_crit_edge, %while.cond.i.do.end51_crit_edge, %while.cond.preheader.i.do.end51_crit_edge
  %call52 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %2, align 4
  %conv54 = zext i8 %55 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 898, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call52, i32 noundef %conv54) #10
  br label %if.end69

if.end69:                                         ; preds = %do.end51, %_hw_to_p_div.exit.if.end69_crit_edge, %_hw_to_p_div.exit.thread403, %if.end35.if.end69_crit_edge
  %pdiv.0 = phi i32 [ 1, %do.end51 ], [ %shl.i, %_hw_to_p_div.exit.if.end69_crit_edge ], [ 1, %if.end35.if.end69_crit_edge ], [ %conv6.i, %_hw_to_p_div.exit.thread403 ]
  %56 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %params, align 4
  %set_gain = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %57, i32 0, i32 38
  %58 = ptrtoint ptr %set_gain to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_gain, align 4
  %tobool71.not = icmp eq ptr %59, null
  br i1 %tobool71.not, label %if.end69.if.end75_crit_edge, label %if.then72

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void %59(ptr noundef nonnull %cfg) #10
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end69.if.end75_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %1, align 4
  %mul = mul i32 %61, %pdiv.0
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %0, align 4
  %conv76 = zext i32 %63 to i64
  %mul77 = mul nuw i64 %conv76, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul77)
  %cmp254 = icmp ult i64 %mul77, 4294967296
  br i1 %cmp254, label %if.then262, label %if.else268, !prof !104

if.then262:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %conv263 = trunc i64 %mul77 to i32
  %div266 = udiv i32 %conv263, %mul
  br label %cleanup

if.else268:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %64 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %mul77) #14, !srcloc !105
  %asmresult1.i = extractvalue { i64, i64 } %64, 1
  %extract.t426 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else268, %if.then262, %while.body.i.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %entry.cleanup_crit_edge ], [ %div266, %if.then262 ], [ %extract.t426, %if.else268 ], [ %19, %if.end7.i.cleanup_crit_edge ], [ %19, %while.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 1
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %1 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %5, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %fixed_rate = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fixed_rate, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %8 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prate, align 4
  %freq_table.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 34
  %10 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %freq_table.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not72.i = icmp eq i32 %13, 0
  br i1 %cmp.not72.i, label %if.end7.land.lhs.true_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %14 = phi i32 [ %18, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.end7.for.body.i_crit_edge ]
  %sel.073.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %if.end7.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp2.i = icmp eq i32 %14, %9
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %output_rate.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 1
  %15 = ptrtoint ptr %output_rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %output_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %rate)
  %cmp3.i = icmp eq i32 %16, %rate
  br i1 %cmp3.i, label %if.end7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %for.inc.i.land.lhs.true_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.land.lhs.true_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end7.i:                                        ; preds = %land.lhs.true.i
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 32
  %19 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  %p14.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 4
  %21 = ptrtoint ptr %p14.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %p14.i, align 4
  br i1 %tobool.not.i, label %if.end7.i._get_table_rate.exit_crit_edge, label %while.cond.preheader.i.i

if.end7.i._get_table_rate.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_get_table_rate.exit

while.cond.preheader.i.i:                         ; preds = %if.end7.i
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not15.i.i = icmp eq i8 %24, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i.land.lhs.true_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.land.lhs.true_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %25 = phi i8 [ %27, %if.end.i.i.while.body.i.i_crit_edge ], [ %24, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %p_tohw.016.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %20, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %22)
  %cmp.not.i.i = icmp ult i8 %25, %22
  br i1 %cmp.not.i.i, label %if.end.i.i, label %while.body.i.i._get_table_rate.exit_crit_edge

while.body.i.i._get_table_rate.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_get_table_rate.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool1.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.land.lhs.true_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.land.lhs.true_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

_get_table_rate.exit:                             ; preds = %while.body.i.i._get_table_rate.exit_crit_edge, %if.end7.i._get_table_rate.exit_crit_edge
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %9, ptr %cfg, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rate, ptr %0, align 4
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end.i.i.land.lhs.true_crit_edge, %while.cond.preheader.i.i.land.lhs.true_crit_edge, %for.inc.i.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge
  %calc_rate = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 39
  %30 = ptrtoint ptr %calc_rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %calc_rate, align 4
  %call11 = call i32 %31(ptr noundef %hw, ptr noundef nonnull %cfg, i32 noundef %rate, i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %_get_table_rate.exit
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge, %if.end, %if.then5
  %retval.0 = phi i32 [ %call, %if.then5 ], [ %7, %if.end ], [ %33, %if.end14 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  %old_cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 5
  %5 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 6
  %6 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %old_cfg) #10
  %7 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 3
  %9 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 4
  %10 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 6
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %11 = call ptr @memset(ptr %old_cfg, i32 255, i32 20)
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params, align 4
  %flags1 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1, align 4
  %and = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %fixed_rate = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 35
  %16 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fixed_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %rate)
  %cmp.not = icmp eq i32 %17, %rate
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params, align 4
  %fixed_rate6 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 35
  %20 = ptrtoint ptr %fixed_rate6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fixed_rate6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %call, i32 noundef %21, i32 noundef %rate) #13
  br label %cleanup

if.end8:                                          ; preds = %entry
  %freq_table.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 34
  %22 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %freq_table.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not72.i = icmp eq i32 %25, 0
  br i1 %cmp.not72.i, label %if.end8.land.lhs.true_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.land.lhs.true_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %26 = phi i32 [ %30, %for.inc.i.for.body.i_crit_edge ], [ %25, %if.end8.for.body.i_crit_edge ]
  %sel.073.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %23, %if.end8.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %parent_rate)
  %cmp2.i = icmp eq i32 %26, %parent_rate
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %output_rate.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 1
  %27 = ptrtoint ptr %output_rate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %output_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %rate)
  %cmp3.i = icmp eq i32 %28, %rate
  br i1 %cmp3.i, label %if.end7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %for.inc.i.land.lhs.true_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.land.lhs.true_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end7.i:                                        ; preds = %land.lhs.true.i
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 32
  %31 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  %p14.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 4
  %33 = ptrtoint ptr %p14.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %p14.i, align 4
  br i1 %tobool.not.i, label %cond.false21.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.end7.i
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.not15.i.i = icmp eq i8 %36, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i.land.lhs.true_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.land.lhs.true_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %37 = phi i8 [ %39, %if.end.i.i.while.body.i.i_crit_edge ], [ %36, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %p_tohw.016.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %32, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %34)
  %cmp.not.i.i = icmp ult i8 %37, %34
  br i1 %cmp.not.i.i, label %if.end.i.i, label %_p_div_to_hw.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 1
  %38 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool1.not.i.i = icmp eq i8 %39, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.land.lhs.true_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.land.lhs.true_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

_p_div_to_hw.exit.i:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw_val.i.i = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %hw_val.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hw_val.i.i, align 1
  %conv6.i.i = zext i8 %41 to i32
  br label %_get_table_rate.exit

cond.false21.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv23.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i = icmp eq i8 %34, 0
  %42 = tail call i32 @llvm.ctlz.i32(i32 %conv23.i, i1 true) #10, !range !106
  %sub.i.op.i.i = xor i32 %42, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  br label %_get_table_rate.exit

_get_table_rate.exit:                             ; preds = %cond.false21.i, %_p_div_to_hw.exit.i
  %p.0.i = phi i32 [ %conv6.i.i, %_p_div_to_hw.exit.i ], [ %sub.i.i, %cond.false21.i ]
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %parent_rate, ptr %cfg, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %rate, ptr %0, align 4
  %m.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 3
  %45 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %m.i, align 4
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %2, align 4
  %n.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 2
  %48 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n.i, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %1, align 4
  %conv34.i = trunc i32 %p.0.i to i8
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv34.i, ptr %3, align 4
  %cpcon.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 5
  %52 = ptrtoint ptr %cpcon.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cpcon.i, align 1
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %4, align 1
  %sdm_data.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 6
  %55 = ptrtoint ptr %sdm_data.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sdm_data.i, align 2
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %5, align 2
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end.i.i.land.lhs.true_crit_edge, %while.cond.preheader.i.i.land.lhs.true_crit_edge, %for.inc.i.land.lhs.true_crit_edge, %if.end8.land.lhs.true_crit_edge
  %calc_rate = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 39
  %58 = ptrtoint ptr %calc_rate to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %calc_rate, align 4
  %call12 = call i32 %59(ptr noundef %hw, ptr noundef nonnull %cfg, i32 noundef %rate, i32 noundef %parent_rate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end42_crit_edge, label %do.end17

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.end17:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %call19, i32 noundef %rate) #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 823, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %_get_table_rate.exit
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %60 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lock, align 4
  %tobool43.not = icmp eq ptr %61, null
  br i1 %tobool43.not, label %if.end42.if.end56_crit_edge, label %do.body46

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.body46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %61) #10
  br label %if.end56

if.end56:                                         ; preds = %do.body46, %if.end42.if.end56_crit_edge
  %flags.0 = phi i32 [ %call51, %do.body46 ], [ 0, %if.end42.if.end56_crit_edge ]
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %old_cfg)
  %62 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %params, align 4
  %flags58 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %63, i32 0, i32 26
  %64 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags58, align 4
  %and59 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end56.if.end63_crit_edge, label %if.then61

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %9, align 4
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %3, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end56.if.end63_crit_edge
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %8, align 4
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp65.not = icmp eq i32 %70, %72
  br i1 %cmp65.not, label %lor.lhs.false, label %if.end63.if.then83_crit_edge

if.end63.if.then83_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

lor.lhs.false:                                    ; preds = %if.end63
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %7, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp68.not = icmp eq i32 %74, %76
  br i1 %cmp68.not, label %lor.lhs.false70, label %lor.lhs.false.if.then83_crit_edge

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

lor.lhs.false70:                                  ; preds = %lor.lhs.false
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %9, align 4
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %80)
  %cmp75.not = icmp eq i8 %78, %80
  br i1 %cmp75.not, label %lor.lhs.false77, label %lor.lhs.false70.if.then83_crit_edge

lor.lhs.false70.if.then83_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

lor.lhs.false77:                                  ; preds = %lor.lhs.false70
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %10, align 2
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %cmp81.not = icmp eq i16 %82, %84
  br i1 %cmp81.not, label %lor.lhs.false77.if.end85_crit_edge, label %lor.lhs.false77.if.then83_crit_edge

lor.lhs.false77.if.then83_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

lor.lhs.false77.if.end85_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then83:                                        ; preds = %lor.lhs.false77.if.then83_crit_edge, %lor.lhs.false70.if.then83_crit_edge, %lor.lhs.false.if.then83_crit_edge, %if.end63.if.then83_crit_edge
  %call84 = call fastcc i32 @_program_pll(ptr noundef %hw, ptr noundef nonnull %cfg, i32 noundef %rate)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %lor.lhs.false77.if.end85_crit_edge
  %ret.0 = phi i32 [ %call84, %if.then83 ], [ 0, %lor.lhs.false77.if.end85_crit_edge ]
  %85 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lock, align 4
  %tobool87.not = icmp eq ptr %86, null
  br i1 %tobool87.not, label %if.end85.cleanup_crit_edge, label %if.then88

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %86, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.end85.cleanup_crit_edge, %do.end17, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ 0, %if.then.cleanup_crit_edge ], [ %ret.0, %if.then88 ], [ %ret.0, %if.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %old_cfg) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_plle_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

entry.clk_pll_is_enabled.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %entry
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %7 = and i32 %6, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %8 = icmp eq i32 %7, 524288
  br i1 %8, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %entry.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_base.i, align 4
  %11 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %clk_pll_is_enabled.exit.if.end_crit_edge, label %clk_pll_is_enabled.exit.cleanup_crit_edge

clk_pll_is_enabled.exit.cleanup_crit_edge:        ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

clk_pll_is_enabled.exit.if.end_crit_edge:         ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %clk_pll_is_enabled.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %call1 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #10
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef %call1) #10
  %17 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params.i, align 4
  %fixed_rate = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 35
  %19 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fixed_rate, align 4
  %freq_table.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 34
  %21 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %freq_table.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not72.i = icmp eq i32 %24, 0
  br i1 %cmp.not72.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %25 = phi i32 [ %29, %for.inc.i.for.body.i_crit_edge ], [ %24, %if.end.for.body.i_crit_edge ]
  %sel.073.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %22, %if.end.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %call2)
  %cmp2.i = icmp eq i32 %25, %call2
  br i1 %cmp2.i, label %land.lhs.true.i195, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i195:                               ; preds = %for.body.i
  %output_rate.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 1
  %26 = ptrtoint ptr %output_rate.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %output_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %20)
  %cmp3.i = icmp eq i32 %27, %20
  br i1 %cmp3.i, label %if.end7.i, label %land.lhs.true.i195.for.inc.i_crit_edge

land.lhs.true.i195.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i195.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 1
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %land.lhs.true.i195
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 32
  %30 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i196 = icmp eq ptr %31, null
  %p14.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 4
  %32 = ptrtoint ptr %p14.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %p14.i, align 4
  br i1 %tobool.not.i196, label %cond.false21.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.end7.i
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not15.i.i = icmp eq i8 %35, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i.cleanup_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.cleanup_crit_edge:       ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %36 = phi i8 [ %38, %if.end.i.i.while.body.i.i_crit_edge ], [ %35, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %p_tohw.016.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %31, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %33)
  %cmp.not.i.i = icmp ult i8 %36, %33
  br i1 %cmp.not.i.i, label %if.end.i.i, label %_p_div_to_hw.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 1
  %37 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool1.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

_p_div_to_hw.exit.i:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw_val.i.i = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %hw_val.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hw_val.i.i, align 1
  %conv6.i.i = zext i8 %40 to i32
  br label %if.end6

cond.false21.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv23.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i = icmp eq i8 %33, 0
  %41 = tail call i32 @llvm.ctlz.i32(i32 %conv23.i, i1 true) #10, !range !106
  %sub.i.op.i.i = xor i32 %41, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  br label %if.end6

if.end6:                                          ; preds = %cond.false21.i, %_p_div_to_hw.exit.i
  %p.0.i = phi i32 [ %conv6.i.i, %_p_div_to_hw.exit.i ], [ %sub.i.i, %cond.false21.i ]
  %m.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 3
  %42 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m.i, align 4
  %n.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 2
  %44 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n.i, align 4
  %cpcon.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 5
  %46 = ptrtoint ptr %cpcon.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cpcon.i, align 1
  %lock.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %48 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lock.i, align 4
  %tobool.not.i198 = icmp eq ptr %49, null
  br i1 %tobool.not.i198, label %if.end6.if.end.i199_crit_edge, label %do.body1.i

if.end6.if.end.i199_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i199

do.body1.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %49) #10
  br label %if.end.i199

if.end.i199:                                      ; preds = %do.body1.i, %if.end6.if.end.i199_crit_edge
  %flags.0.i = phi i32 [ %call4.i, %do.body1.i ], [ 0, %if.end6.if.end.i199_crit_edge ]
  %50 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %params.i, align 4
  %defaults_set.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 31
  %52 = ptrtoint ptr %defaults_set.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %defaults_set.i.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i, label %if.end.i199.pll_clk_stop_ss.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i199.pll_clk_stop_ss.exit.i_crit_edge:     ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i199
  %ssc_ctrl_reg.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 19
  %54 = ptrtoint ptr %ssc_ctrl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ssc_ctrl_reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool2.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.pll_clk_stop_ss.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.pll_clk_stop_ss.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %56 = ptrtoint ptr %clk_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk_base.i.i, align 4
  %add.ptr.i.i200 = getelementptr i8, ptr %57, i32 %55
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i200) #10, !srcloc !100
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %60 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %params.i, align 4
  %ssc_ctrl_en_mask.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %ssc_ctrl_en_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ssc_ctrl_en_mask.i.i, align 4
  %neg.i.i = xor i32 %63, -1
  %and.i.i = and i32 %59, %neg.i.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  %65 = ptrtoint ptr %clk_base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk_base.i.i, align 4
  %ssc_ctrl_reg8.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %61, i32 0, i32 19
  %67 = ptrtoint ptr %ssc_ctrl_reg8.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ssc_ctrl_reg8.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %64) #10, !srcloc !102
  br label %pll_clk_stop_ss.exit.i

pll_clk_stop_ss.exit.i:                           ; preds = %if.then.i.i, %land.lhs.true.i.i.pll_clk_stop_ss.exit.i_crit_edge, %if.end.i199.pll_clk_stop_ss.exit.i_crit_edge
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw) #10
  %69 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock.i, align 4
  %tobool8.not.i = icmp eq ptr %70, null
  br i1 %tobool8.not.i, label %pll_clk_stop_ss.exit.i.clk_pll_disable.exit_crit_edge, label %if.then9.i

pll_clk_stop_ss.exit.i.clk_pll_disable.exit_crit_edge: ; preds = %pll_clk_stop_ss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_disable.exit

if.then9.i:                                       ; preds = %pll_clk_stop_ss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %70, i32 noundef %flags.0.i) #10
  br label %clk_pll_disable.exit

clk_pll_disable.exit:                             ; preds = %if.then9.i, %pll_clk_stop_ss.exit.i.clk_pll_disable.exit_crit_edge
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %71 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clk_base, align 4
  %73 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %params.i, align 4
  %misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %misc_reg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %misc_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %72, i32 %76
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !100
  %78 = and i32 %77, -201523200
  %79 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk_base, align 4
  %81 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %params.i, align 4
  %misc_reg13 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %misc_reg13 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %misc_reg13, align 4
  %add.ptr14 = getelementptr i8, ptr %80, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %78) #10, !srcloc !102
  %85 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk_base, align 4
  %87 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %params.i, align 4
  %misc_reg18 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %misc_reg18 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %misc_reg18, align 4
  %add.ptr19 = getelementptr i8, ptr %86, i32 %90
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !100
  %92 = and i32 %91, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool23.not = icmp eq i32 %92, 0
  br i1 %tobool23.not, label %if.then24, label %clk_pll_disable.exit.if.end29_crit_edge

clk_pll_disable.exit.if.end29_crit_edge:          ; preds = %clk_pll_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then24:                                        ; preds = %clk_pll_disable.exit
  %pmc.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %93 = ptrtoint ptr %pmc.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pmc.i, align 4
  %tobool.not.i201 = icmp eq ptr %94, null
  br i1 %tobool.not.i201, label %if.then24.cleanup_crit_edge, label %if.end.i204

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i204:                                      ; preds = %if.then24
  %add.ptr.i = getelementptr i8, ptr %94, i32 428
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  %96 = or i32 %95, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  tail call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %pmc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pmc.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %98, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %96) #10, !srcloc !102
  %99 = ptrtoint ptr %pmc.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pmc.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %100, i32 428
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #10, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  %102 = or i32 %101, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !110
  tail call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %pmc.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pmc.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %104, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %102) #10, !srcloc !102
  %105 = ptrtoint ptr %pmc.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pmc.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %106, i32 428
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  %108 = and i32 %107, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  tail call void @arm_heavy_mb() #10
  %109 = ptrtoint ptr %pmc.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pmc.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %110, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %108) #10, !srcloc !102
  %111 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clk_base, align 4
  %113 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %params.i, align 4
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %misc_reg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %misc_reg.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %112, i32 %116
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #10, !srcloc !100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %118, 10
  %119 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clk_base, align 4
  %121 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %params.i, align 4
  %misc_reg3870.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %misc_reg3870.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %misc_reg3870.i, align 4
  %add.ptr3971.i = getelementptr i8, ptr %120, i32 %124
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3971.i) #10, !srcloc !100
  %126 = and i32 %125, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool43.not72.i = icmp eq i32 %126, 0
  br i1 %tobool43.not72.i, label %if.end.i204.if.end45.i_crit_edge, label %if.end.i204.if.end29_crit_edge

if.end.i204.if.end29_crit_edge:                   ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end.i204.if.end45.i_crit_edge:                 ; preds = %if.end.i204
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end52.i.if.end45.i_crit_edge, %if.end.i204.if.end45.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %sub.i205 = sub i32 %add.i, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i205)
  %cmp.i = icmp slt i32 %sub.i205, 0
  br i1 %cmp.i, label %do.end49.i, label %if.end52.i

do.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end52.i:                                       ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 64424400) #10
  %129 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk_base, align 4
  %131 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %params.i, align 4
  %misc_reg38.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %132, i32 0, i32 7
  %133 = ptrtoint ptr %misc_reg38.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %misc_reg38.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %130, i32 %134
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #10, !srcloc !100
  %136 = and i32 %135, 8388608
  %tobool43.not.i = icmp eq i32 %136, 0
  br i1 %tobool43.not.i, label %if.end52.i.if.end45.i_crit_edge, label %if.end52.i.if.end29_crit_edge

if.end52.i.if.end29_crit_edge:                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end52.i.if.end45.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.end29:                                         ; preds = %if.end52.i.if.end29_crit_edge, %if.end.i204.if.end29_crit_edge, %clk_pll_disable.exit.if.end29_crit_edge
  %137 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %params.i, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %138, i32 0, i32 26
  %139 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags, align 4
  %and31 = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end96_crit_edge, label %if.then33

if.end29.if.end96_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then33:                                        ; preds = %if.end29
  %141 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clk_base, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %138, i32 0, i32 6
  %143 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %base_reg, align 4
  %add.ptr37 = getelementptr i8, ptr %142, i32 %144
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !100
  %146 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %params.i, align 4
  %flags41 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %147, i32 0, i32 26
  %148 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags41, align 4
  %and42 = and i32 %149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %cond.false, label %if.then33.cond.end_crit_edge

if.then33.cond.end_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %147, i32 0, i32 33
  %150 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %div_nmp, align 4
  %divp_width = getelementptr inbounds %struct.div_nmp, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %divp_width to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %divp_width, align 1
  %conv = zext i8 %153 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then33.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.false ], [ 1, %if.then33.cond.end_crit_edge ]
  %div_nmp46 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %147, i32 0, i32 33
  %154 = ptrtoint ptr %div_nmp46 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %div_nmp46, align 4
  %divp_shift = getelementptr inbounds %struct.div_nmp, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %divp_shift to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %divp_shift, align 1
  %conv47 = zext i8 %157 to i32
  %shl48 = shl i32 %cond, %conv47
  %divn_width = getelementptr inbounds %struct.div_nmp, ptr %155, i32 0, i32 1
  %158 = ptrtoint ptr %divn_width to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %divn_width, align 1
  %conv51 = zext i8 %159 to i32
  %notmask192 = shl nsw i32 -1, %conv51
  %sub53 = xor i32 %notmask192, -1
  %160 = ptrtoint ptr %155 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %155, align 1
  %conv56 = zext i8 %161 to i32
  %shl57 = shl i32 %sub53, %conv56
  %or = or i32 %shl57, %shl48
  %divm_width = getelementptr inbounds %struct.div_nmp, ptr %155, i32 0, i32 3
  %162 = ptrtoint ptr %divm_width to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %divm_width, align 1
  %conv60 = zext i8 %163 to i32
  %notmask193 = shl nsw i32 -1, %conv60
  %sub62 = xor i32 %notmask193, -1
  %divm_shift = getelementptr inbounds %struct.div_nmp, ptr %155, i32 0, i32 2
  %164 = ptrtoint ptr %divm_shift to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %divm_shift, align 1
  %conv65 = zext i8 %165 to i32
  %shl66 = shl i32 %sub62, %conv65
  %or67 = or i32 %or, %shl66
  %neg = xor i32 %or67, -1
  %166 = and i32 %145, -16
  %167 = call i32 @llvm.bswap.i32(i32 %166)
  %and69 = and i32 %167, %neg
  %shl74 = shl i32 %43, %conv65
  %shl80 = shl i32 %45, %conv56
  %conv82 = and i32 %p.0.i, 255
  %shl87 = shl i32 %conv82, %conv47
  %conv89 = zext i8 %47 to i32
  %shl90 = shl nuw i32 %conv89, 24
  %or75 = or i32 %shl87, %shl90
  %or81 = or i32 %or75, %shl80
  %or88 = or i32 %or81, %shl74
  %or91 = or i32 %or88, %and69
  %168 = tail call i32 @llvm.bswap.i32(i32 %or91)
  %169 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %clk_base, align 4
  %base_reg94 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %147, i32 0, i32 6
  %171 = ptrtoint ptr %base_reg94 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %base_reg94, align 4
  %add.ptr95 = getelementptr i8, ptr %170, i32 %172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %168) #10, !srcloc !102
  br label %if.end96

if.end96:                                         ; preds = %cond.end, %if.end29.if.end96_crit_edge
  %173 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %clk_base, align 4
  %175 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %params.i, align 4
  %misc_reg100 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %176, i32 0, i32 7
  %177 = ptrtoint ptr %misc_reg100 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %misc_reg100, align 4
  %add.ptr101 = getelementptr i8, ptr %174, i32 %178
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #10, !srcloc !100
  %180 = or i32 %179, 132864
  %181 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %clk_base, align 4
  %183 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %params.i, align 4
  %misc_reg108 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %184, i32 0, i32 7
  %185 = ptrtoint ptr %misc_reg108 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %misc_reg108, align 4
  %add.ptr109 = getelementptr i8, ptr %182, i32 %186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %180) #10, !srcloc !102
  %187 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %clk_base, align 4
  %add.ptr112 = getelementptr i8, ptr %188, i32 104
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #10, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  %190 = and i32 %189, 14811328
  %191 = or i32 %190, 1835008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %192 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %clk_base, align 4
  %add.ptr119 = getelementptr i8, ptr %193, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %191) #10, !srcloc !102
  %194 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %clk_base, align 4
  %196 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %params.i, align 4
  %base_reg123 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %base_reg123 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %base_reg123, align 4
  %add.ptr124 = getelementptr i8, ptr %195, i32 %199
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #10, !srcloc !100
  %201 = or i32 %200, 192
  %202 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %clk_base, align 4
  %204 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %params.i, align 4
  %base_reg130 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %205, i32 0, i32 6
  %206 = ptrtoint ptr %base_reg130 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %base_reg130, align 4
  %add.ptr131 = getelementptr i8, ptr %203, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %201) #10, !srcloc !102
  %208 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %params.i, align 4
  %flags.i208 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %209, i32 0, i32 26
  %210 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %flags.i208, align 4
  %and.i209 = and i32 %211, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool.not.i210 = icmp eq i32 %and.i209, 0
  br i1 %tobool.not.i210, label %cond.false7.i, label %if.end.i217

cond.false7.i:                                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %209, i32 0, i32 29
  %212 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %213) #10
  br label %cleanup

if.end.i217:                                      ; preds = %if.end96
  %215 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %clk_base, align 4
  %and13.i = and i32 %211, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i215 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %209, i32 0, i32 7
  %base_reg.i216 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %209, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i216, ptr %misc_reg.i215
  %217 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %216, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %209, i32 0, i32 9
  %218 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %209, i32 0, i32 29
  %220 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp2451.i = icmp sgt i32 %221, 0
  br i1 %cmp2451.i, label %if.end.i217.for.body.i218_crit_edge, label %if.end.i217.do.end.i_crit_edge

if.end.i217.do.end.i_crit_edge:                   ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i217.for.body.i218_crit_edge:              ; preds = %if.end.i217
  br label %for.body.i218

for.body.i218:                                    ; preds = %if.end28.i.for.body.i218_crit_edge, %if.end.i217.for.body.i218_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i218_crit_edge ], [ 0, %if.end.i217.for.body.i218_crit_edge ]
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #10
  %and25.i = and i32 %223, %219
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %219)
  %cmp26.i = icmp eq i32 %and25.i, %219
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %224(i32 noundef 10737400) #10
  br label %cleanup

if.end28.i:                                       ; preds = %for.body.i218
  tail call void %224(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %225 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %226, i32 0, i32 29
  %227 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %228
  br i1 %cmp24.i, label %if.end28.i.for.body.i218_crit_edge, label %if.end28.i.do.end.i_crit_edge

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end28.i.for.body.i218_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i218

do.end.i:                                         ; preds = %if.end28.i.do.end.i_crit_edge, %if.end.i217.do.end.i_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then27.i, %cond.false7.i, %do.end49.i, %if.then24.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %while.cond.preheader.i.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %clk_pll_is_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %clk_pll_is_enabled.exit.cleanup_crit_edge ], [ -16, %do.end49.i ], [ -38, %if.then24.cleanup_crit_edge ], [ 0, %cond.false7.i ], [ 0, %if.then27.i ], [ 0, %do.end.i ], [ -22, %while.cond.preheader.i.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_plle_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_base, align 4
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_reg, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !100
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %conv = zext i32 %parent_rate to i64
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %div_nmp, align 4
  %divp_shift = getelementptr inbounds %struct.div_nmp, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %divp_shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %divp_shift, align 1
  %conv4 = zext i8 %13 to i32
  %shr = lshr i32 %7, %conv4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 26
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %divp_width = getelementptr inbounds %struct.div_nmp, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %divp_width to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %divp_width, align 1
  %conv8 = zext i8 %17 to i32
  %notmask = shl nsw i32 -1, %conv8
  %sub = xor i32 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.false ], [ 1, %entry.cond.end_crit_edge ]
  %and9 = and i32 %cond, %shr
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %11, align 1
  %conv12 = zext i8 %19 to i32
  %shr13 = lshr i32 %7, %conv12
  %divn_width = getelementptr inbounds %struct.div_nmp, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %divn_width to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %divn_width, align 1
  %conv16 = zext i8 %21 to i32
  %notmask316 = shl nsw i32 -1, %conv16
  %sub18 = xor i32 %notmask316, -1
  %and19 = and i32 %shr13, %sub18
  %divm_shift = getelementptr inbounds %struct.div_nmp, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %divm_shift to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %divm_shift, align 1
  %conv22 = zext i8 %23 to i32
  %shr23 = lshr i32 %7, %conv22
  %divm_width = getelementptr inbounds %struct.div_nmp, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %divm_width to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %divm_width, align 1
  %conv26 = zext i8 %25 to i32
  %notmask317 = shl nsw i32 -1, %conv26
  %sub28 = xor i32 %notmask317, -1
  %and29 = and i32 %shr23, %sub28
  %mul = mul i32 %and29, %and9
  %conv30 = zext i32 %and19 to i64
  %mul31 = mul nuw i64 %conv30, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul31)
  %cmp209 = icmp ult i64 %mul31, 4294967296
  br i1 %cmp209, label %if.then213, label %if.else219, !prof !104

if.then213:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv214 = trunc i64 %mul31 to i32
  %div217 = udiv i32 %conv214, %mul
  br label %if.end223

if.else219:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %mul31) #14, !srcloc !105
  %asmresult1.i = extractvalue { i64, i64 } %26, 1
  %extract.t346 = trunc i64 %asmresult1.i to i32
  br label %if.end223

if.end223:                                        ; preds = %if.else219, %if.then213
  %rate.0.off0 = phi i32 [ %div217, %if.then213 ], [ %extract.t346, %if.else219 ]
  ret i32 %rate.0.off0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tegra_pll_get_fixed_mdiv(ptr nocapture noundef readonly %hw, i32 noundef %input_rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cf_min.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cf_min.i, align 4
  %div.i = udiv i32 %input_rate, %5
  %mdiv_default.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %mdiv_default.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mdiv_default.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not.i = icmp eq i16 %7, 0
  %conv2.i = and i32 %div.i, 65535
  %conv5.i = zext i16 %7 to i32
  %8 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv5.i) #10
  %cond12.i = select i1 %tobool1.not.i, i32 %conv2.i, i32 %8
  br label %_pll_fixed_mdiv.exit

if.end.i:                                         ; preds = %entry
  %mdiv_default13.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 36
  %9 = ptrtoint ptr %mdiv_default13.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mdiv_default13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool14.not.i = icmp eq i16 %10, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = zext i16 %10 to i32
  br label %_pll_fixed_mdiv.exit

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %cf_max.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cf_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %input_rate)
  %cmp19.i = icmp ult i32 %12, %input_rate
  %..i = select i1 %cmp19.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit

_pll_fixed_mdiv.exit:                             ; preds = %if.end18.i, %if.then15.i, %if.then.i
  %retval.0.i = phi i32 [ %cond12.i, %if.then.i ], [ %conv17.i, %if.then15.i ], [ %..i, %if.end18.i ]
  %conv = trunc i32 %retval.0.i to i16
  ret i16 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pll(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %or = or i32 %1, 512
  store i32 %or, ptr %flags1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pmc, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %7 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_tegra_init_pll.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %10 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %11 = getelementptr inbounds i8, ptr %init.i, i32 12
  %12 = call ptr @memset(ptr %11, i32 255, i32 12)
  %13 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %14 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_clk_pll_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i14 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i14, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %16 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %17 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i, label %if.then.i, label %if.end.if.end15.i_crit_edge

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 26
  %22 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %24 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i, %if.end.if.end15.i_crit_edge
  %25 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %26, i32 0, i32 41
  %27 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %28, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %28(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i16 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %if.then6, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %_tegra_init_pll.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then6 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_plle(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %or = or i32 %1, 512
  store i32 %or, ptr %flags1, align 4
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %2 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_nmp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %div_nmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pll_e_nmp, ptr %div_nmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pmc, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock4.i, align 4
  %10 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %div_nmp, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %div_nmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_nmp, ptr %div_nmp, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end6

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %_tegra_init_pll.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %13 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %14 = getelementptr inbounds i8, ptr %init.i, i32 12
  %15 = call ptr @memset(ptr %14, i32 255, i32 12)
  %16 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %17 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tegra_clk_plle_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %18 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i19 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i19, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %21 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %22, i32 0, i32 39
  %23 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %24, null
  br i1 %tobool6.not.i, label %if.then.i, label %if.end6.if.end15.i_crit_edge

if.end6.if.end15.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %22, i32 0, i32 26
  %25 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %27 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i, %if.end6.if.end15.i_crit_edge
  %28 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %29, i32 0, i32 41
  %30 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %31, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %31(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i21 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then9, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %_tegra_init_pll.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then9 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllu(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %or = or i32 %1, 16
  store i32 %or, ptr %flags1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %7 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_tegra_init_pll.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %10 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %11 = getelementptr inbounds i8, ptr %init.i, i32 12
  %12 = call ptr @memset(ptr %11, i32 255, i32 12)
  %13 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %14 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_clk_pllu_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i14 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i14, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %16 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %17 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i, label %if.then.i, label %if.end.if.end15.i_crit_edge

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 26
  %22 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %24 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i, %if.end.if.end15.i_crit_edge
  %25 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %26, i32 0, i32 41
  %27 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %28, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %28(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i16 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %if.then6, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %_tegra_init_pll.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then6 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllxc(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_lookup(ptr noundef %parent_name) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2056, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %parent_name, ptr noundef %name) #10
  br label %cleanup94

if.end18:                                         ; preds = %entry
  %pdiv_tohw = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 32
  %0 = ptrtoint ptr %pdiv_tohw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdiv_tohw, align 4
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %if.end18.cleanup94_crit_edge, label %if.end22

if.end18.cleanup94_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @clk_get_rate(ptr noundef nonnull %call) #10
  %vco_min = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 4
  %2 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vco_min, align 4
  %add.i = add i32 %call23, -1
  %sub.i = add i32 %add.i, %3
  %4 = urem i32 %sub.i, %call23
  %mul.i = sub i32 %sub.i, %4
  store i32 %mul.i, ptr %vco_min, align 4
  %adjust_vco = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 40
  %5 = ptrtoint ptr %adjust_vco to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adjust_vco, align 4
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %if.end22.if.end31_crit_edge, label %if.then27

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 %6(ptr noundef %pll_params, i32 noundef %call23) #10
  %7 = ptrtoint ptr %vco_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call29, ptr %vco_min, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end22.if.end31_crit_edge
  %set_defaults = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 41
  %8 = ptrtoint ptr %set_defaults to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_defaults, align 4
  %tobool32.not = icmp eq ptr %9, null
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.end84_crit_edge

if.end31.if.end84_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then33:                                        ; preds = %if.end31
  %10 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call23, label %cleanup [
    i32 12000000, label %if.then33.if.end38_crit_edge
    i32 13000000, label %if.then33.if.end38_crit_edge147
    i32 26000000, label %if.then33.if.end38_crit_edge148
    i32 16800000, label %sw.bb1.i
    i32 19200000, label %sw.bb2.i
  ]

if.then33.if.end38_crit_edge148:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33.if.end38_crit_edge147:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

sw.bb1.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

sw.bb2.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38:                                         ; preds = %sw.bb2.i, %sw.bb1.i, %if.then33.if.end38_crit_edge, %if.then33.if.end38_crit_edge147, %if.then33.if.end38_crit_edge148
  %step_a.0.i = phi i32 [ 18, %sw.bb2.i ], [ 26, %sw.bb1.i ], [ 43, %if.then33.if.end38_crit_edge ], [ 43, %if.then33.if.end38_crit_edge147 ], [ 43, %if.then33.if.end38_crit_edge148 ]
  %step_b.0.i = phi i32 [ 8, %sw.bb2.i ], [ 9, %sw.bb1.i ], [ 11, %if.then33.if.end38_crit_edge ], [ 11, %if.then33.if.end38_crit_edge147 ], [ 11, %if.then33.if.end38_crit_edge148 ]
  %stepa_shift.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 27
  %11 = ptrtoint ptr %stepa_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stepa_shift.i, align 4
  %shl.i = shl i32 %step_a.0.i, %12
  %stepb_shift.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 28
  %13 = ptrtoint ptr %stepb_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stepb_shift.i, align 4
  %shl21.i = shl i32 %step_b.0.i, %14
  %or.i = or i32 %shl21.i, %shl.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %dyn_ramp_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 22
  %16 = ptrtoint ptr %dyn_ramp_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dyn_ramp_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %clk_base, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #10, !srcloc !102
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 6
  %18 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %clk_base, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !100
  %iddq_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 11
  %21 = ptrtoint ptr %iddq_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iddq_reg, align 4
  %add.ptr42 = getelementptr i8, ptr %clk_base, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !100
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool45.not = icmp eq i32 %25, 0
  %iddq_bit_idx79 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 12
  %26 = ptrtoint ptr %iddq_bit_idx79 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iddq_bit_idx79, align 4
  %shl80 = shl nuw i32 1, %27
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end38
  %and48 = and i32 %shl80, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then46.if.end84_crit_edge, label %do.end65, !prof !104

if.then46.if.end84_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end65:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2086, i32 noundef 9, ptr noundef null) #10
  br label %if.end84

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %shl80, %24
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %iddq_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iddq_reg, align 4
  %add.ptr82 = getelementptr i8, ptr %clk_base, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %28) #10, !srcloc !102
  br label %if.end84

cleanup:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call23) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1292, i32 noundef 9, ptr noundef null) #10
  br label %cleanup94

if.end84:                                         ; preds = %if.else, %do.end65, %if.then46.if.end84_crit_edge, %if.end31.if.end84_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end84.cleanup94_crit_edge, label %if.end.i

if.end84.cleanup94_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.end.i:                                         ; preds = %if.end84
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pmc, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %36 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %37, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup94_crit_edge, label %if.end89

_tegra_init_pll.exit.cleanup94_crit_edge:         ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.end89:                                         ; preds = %_tegra_init_pll.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %39 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %40 = getelementptr inbounds i8, ptr %init.i, i32 12
  %41 = call ptr @memset(ptr %40, i32 255, i32 12)
  %42 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %43 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @tegra_clk_pllxc_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %44 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i134 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i134, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %45 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %46 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %47 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %48, i32 0, i32 39
  %49 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %50, null
  br i1 %tobool6.not.i, label %if.then.i, label %if.end89.if.end15.i_crit_edge

if.end89.if.end15.i_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %48, i32 0, i32 26
  %51 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %53 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i, %if.end89.if.end15.i_crit_edge
  %54 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %55, i32 0, i32 41
  %56 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %57, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %57(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i136 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i137 = icmp ugt ptr %call.i136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then92, label %_tegra_clk_register_pll.exit.cleanup94_crit_edge

_tegra_clk_register_pll.exit.cleanup94_crit_edge: ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.then92:                                        ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup94

cleanup94:                                        ; preds = %if.then92, %_tegra_clk_register_pll.exit.cleanup94_crit_edge, %_tegra_init_pll.exit.cleanup94_crit_edge, %if.end84.cleanup94_crit_edge, %cleanup, %if.end18.cleanup94_crit_edge, %do.end
  %retval.1 = phi ptr [ inttoptr (i32 -22 to ptr), %cleanup ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call.i136, %if.then92 ], [ %call.i136, %_tegra_clk_register_pll.exit.cleanup94_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end18.cleanup94_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup94_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end84.cleanup94_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllre(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_min = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 4
  %0 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vco_min, align 4
  %add.i = add i32 %parent_rate, -1
  %sub.i = add i32 %add.i, %1
  %2 = urem i32 %sub.i, %parent_rate
  %mul.i = sub i32 %sub.i, %2
  store i32 %mul.i, ptr %vco_min, align 4
  %adjust_vco = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 40
  %3 = ptrtoint ptr %adjust_vco to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adjust_vco, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 %4(ptr noundef %pll_params, i32 noundef %parent_rate) #10
  %5 = ptrtoint ptr %vco_min to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %vco_min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pmc, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %11 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end9

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %_tegra_init_pll.exit
  %14 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_base2.i, align 4
  %16 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params.i, align 8
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !100
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %iddq_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 11
  %22 = ptrtoint ptr %iddq_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iddq_reg, align 4
  %add.ptr15 = getelementptr i8, ptr %clk_base, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !100
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %iddq_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 12
  %26 = ptrtoint ptr %iddq_bit_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iddq_bit_idx, align 4
  %shl = shl nuw i32 1, %27
  %and18 = and i32 %shl, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then13.if.end54_crit_edge, label %do.end, !prof !104

if.then13.if.end54_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2131, i32 noundef 9, ptr noundef null) #10
  br label %if.end54

if.else:                                          ; preds = %if.end9
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i105 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i105, label %if.end.i106, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 2
  %30 = ptrtoint ptr %cf_min.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cf_min.i, align 4
  %div.i = udiv i32 %parent_rate, %31
  %mdiv_default.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 36
  %32 = ptrtoint ptr %mdiv_default.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mdiv_default.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool1.not.i = icmp eq i16 %33, 0
  %conv2.i = and i32 %div.i, 65535
  %conv5.i = zext i16 %33 to i32
  %34 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv5.i) #10
  %cond12.i = select i1 %tobool1.not.i, i32 %conv2.i, i32 %34
  br label %_pll_fixed_mdiv.exit

if.end.i106:                                      ; preds = %if.else
  %mdiv_default13.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 36
  %35 = ptrtoint ptr %mdiv_default13.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mdiv_default13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool14.not.i = icmp eq i16 %36, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = zext i16 %36 to i32
  br label %_pll_fixed_mdiv.exit

if.end18.i:                                       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 3
  %37 = ptrtoint ptr %cf_max.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cf_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %parent_rate)
  %cmp19.i = icmp ult i32 %38, %parent_rate
  %..i = select i1 %cmp19.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit

_pll_fixed_mdiv.exit:                             ; preds = %if.end18.i, %if.then15.i, %if.then.i
  %retval.0.i107 = phi i32 [ %cond12.i, %if.then.i ], [ %conv17.i, %if.then15.i ], [ %..i, %if.end18.i ]
  %39 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %params.i, align 8
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %div_nmp, align 4
  %divm_shift = getelementptr inbounds %struct.div_nmp, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %divm_shift to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %divm_shift, align 1
  %conv = zext i8 %44 to i32
  %shl44 = shl i32 %retval.0.i107, %conv
  %45 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vco_min, align 4
  %div = udiv i32 %46, %parent_rate
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %42, align 1
  %conv48 = zext i8 %48 to i32
  %shl49 = shl i32 %div, %conv48
  %or = or i32 %shl49, %shl44
  %49 = tail call i32 @llvm.bswap.i32(i32 %or)
  %50 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_base2.i, align 4
  %base_reg52 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %40, i32 0, i32 6
  %52 = ptrtoint ptr %base_reg52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base_reg52, align 4
  %add.ptr53 = getelementptr i8, ptr %51, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %49) #10, !srcloc !102
  br label %if.end54

if.end54:                                         ; preds = %_pll_fixed_mdiv.exit, %do.end, %if.then13.if.end54_crit_edge
  %54 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk_base2.i, align 4
  %56 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %params.i, align 8
  %misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %misc_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %misc_reg, align 4
  %add.ptr58 = getelementptr i8, ptr %55, i32 %59
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #10, !srcloc !100
  %61 = and i32 %60, -33
  %62 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk_base2.i, align 4
  %64 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %params.i, align 8
  %misc_reg64 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %misc_reg64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %misc_reg64, align 4
  %add.ptr65 = getelementptr i8, ptr %63, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %61) #10, !srcloc !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %68 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %69 = getelementptr inbounds i8, ptr %init.i, i32 12
  %70 = call ptr @memset(ptr %69, i32 255, i32 12)
  %71 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %72 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @tegra_clk_pllre_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %73 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i108 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i108, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %74 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %75 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %76 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %77, i32 0, i32 39
  %78 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %79, null
  br i1 %tobool6.not.i, label %if.then.i111, label %if.end54.if.end15.i_crit_edge

if.end54.if.end15.i_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i111:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %77, i32 0, i32 26
  %80 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags8.i, align 4
  %and.i110 = and i32 %81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool9.not.i = icmp eq i32 %and.i110, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %82 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i111, %if.end54.if.end15.i_crit_edge
  %83 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %84, i32 0, i32 41
  %85 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %86, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %86(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i112 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then68, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68:                                        ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %_tegra_init_pll.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then68 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllm(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdiv_tohw = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 32
  %0 = ptrtoint ptr %pdiv_tohw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdiv_tohw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__clk_lookup(ptr noundef %parent_name) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2171, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %parent_name, ptr noundef %name) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call23 = tail call i32 @clk_get_rate(ptr noundef nonnull %call1) #10
  %vco_min = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 4
  %2 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vco_min, align 4
  %add.i = add i32 %call23, -1
  %sub.i = add i32 %add.i, %3
  %4 = urem i32 %sub.i, %call23
  %mul.i = sub i32 %sub.i, %4
  store i32 %mul.i, ptr %vco_min, align 4
  %adjust_vco = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 40
  %5 = ptrtoint ptr %adjust_vco to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adjust_vco, align 4
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %if.end22.if.end31_crit_edge, label %if.then27

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 %6(ptr noundef %pll_params, i32 noundef %call23) #10
  %7 = ptrtoint ptr %vco_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call29, ptr %vco_min, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end22.if.end31_crit_edge
  %flags32 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %8 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags32, align 4
  %or34 = or i32 %9, 544
  store i32 %or34, ptr %flags32, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end31.cleanup_crit_edge, label %if.end.i

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end31
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pmc, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %15 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end39

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %_tegra_init_pll.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %18 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %19 = getelementptr inbounds i8, ptr %init.i, i32 12
  %20 = call ptr @memset(ptr %19, i32 255, i32 12)
  %21 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %22 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tegra_clk_pll_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %23 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i66 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i66, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %24 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %25 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %26 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %27, i32 0, i32 39
  %28 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %29, null
  br i1 %tobool6.not.i, label %if.then.i, label %if.end39.if.end15.i_crit_edge

if.end39.if.end15.i_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %27, i32 0, i32 26
  %30 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %32 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i, %if.end39.if.end15.i_crit_edge
  %33 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %34, i32 0, i32 41
  %35 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %36, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %36(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i68 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then42, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %_tegra_init_pll.exit.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call.i, %if.then42 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end31.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllc(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdiv_tohw = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 32
  %0 = ptrtoint ptr %pdiv_tohw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdiv_tohw, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %2 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %4 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %tobool.not = icmp eq ptr %1, null
  %5 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__clk_lookup(ptr noundef %parent_name) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2215, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %parent_name, ptr noundef %name) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call23 = tail call i32 @clk_get_rate(ptr noundef nonnull %call1) #10
  %vco_min = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 4
  %6 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vco_min, align 4
  %add.i = add i32 %call23, -1
  %sub.i = add i32 %add.i, %7
  %8 = urem i32 %sub.i, %call23
  %mul.i = sub i32 %sub.i, %8
  store i32 %mul.i, ptr %vco_min, align 4
  %flags26 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %9 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags26, align 4
  %or = or i32 %10, 512
  store i32 %or, ptr %flags26, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.cleanup_crit_edge, label %if.end.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pmc, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %16 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end31

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %_tegra_init_pll.exit
  %19 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags26, align 4
  %and.i = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i133 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i133, label %if.end.i134, label %if.then.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 2
  %21 = ptrtoint ptr %cf_min.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cf_min.i, align 4
  %div.i = udiv i32 %call23, %22
  %mdiv_default.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 36
  %23 = ptrtoint ptr %mdiv_default.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mdiv_default.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool1.not.i = icmp eq i16 %24, 0
  %conv2.i = and i32 %div.i, 65535
  %conv5.i = zext i16 %24 to i32
  %25 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv5.i) #10
  %cond12.i = select i1 %tobool1.not.i, i32 %conv2.i, i32 %25
  br label %_pll_fixed_mdiv.exit

if.end.i134:                                      ; preds = %if.end31
  %mdiv_default13.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 36
  %26 = ptrtoint ptr %mdiv_default13.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mdiv_default13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool14.not.i = icmp eq i16 %27, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = zext i16 %27 to i32
  br label %_pll_fixed_mdiv.exit

if.end18.i:                                       ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 3
  %28 = ptrtoint ptr %cf_max.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cf_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %call23)
  %cmp19.i = icmp ult i32 %29, %call23
  %..i = select i1 %cmp19.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit

_pll_fixed_mdiv.exit:                             ; preds = %if.end18.i, %if.then15.i, %if.then.i
  %retval.0.i135 = phi i32 [ %cond12.i, %if.then.i ], [ %conv17.i, %if.then15.i ], [ %..i, %if.end18.i ]
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i135, ptr %3, align 4
  %31 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vco_min, align 4
  %mul = mul i32 %32, %retval.0.i135
  %div = udiv i32 %mul, %call23
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %2, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end39, %_pll_fixed_mdiv.exit
  %p_tohw.0 = phi ptr [ %1, %_pll_fixed_mdiv.exit ], [ %incdec.ptr, %if.end39 ]
  %34 = ptrtoint ptr %p_tohw.0 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %p_tohw.0, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %35, label %if.end39 [
    i8 0, label %do.end55
    i8 2, label %if.end70
  ]

if.end39:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr %struct.pdiv_map, ptr %p_tohw.0, i32 1
  br label %while.cond

do.end55:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2249, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end70:                                         ; preds = %while.cond
  %hw_val = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.0, i32 0, i32 1
  %37 = ptrtoint ptr %hw_val to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hw_val, align 1
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %4, align 4
  %40 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_base2.i, align 4
  %42 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %params.i, align 8
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !102
  call fastcc void @_update_pll_mnp(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %cfg)
  %46 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_base2.i, align 4
  %48 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %params.i, align 8
  %misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %misc_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %misc_reg, align 4
  %add.ptr74 = getelementptr i8, ptr %47, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 1349542996) #10, !srcloc !102
  %52 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk_base2.i, align 4
  %ext_misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 23
  %54 = ptrtoint ptr %ext_misc_reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ext_misc_reg, align 4
  %add.ptr76 = getelementptr i8, ptr %53, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 136514816) #10, !srcloc !102
  %56 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk_base2.i, align 4
  %arrayidx79 = getelementptr %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 23, i32 1
  %58 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx79, align 4
  %add.ptr80 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 1188144) #10, !srcloc !102
  %60 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk_base2.i, align 4
  %arrayidx83 = getelementptr %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 23, i32 2
  %62 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx83, align 4
  %add.ptr84 = getelementptr i8, ptr %61, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 131072) #10, !srcloc !102
  %64 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call23, label %do.end.i [
    i32 12000000, label %if.end70.sw.epilog.i_crit_edge
    i32 13000000, label %if.end70.sw.bb1.i_crit_edge
    i32 26000000, label %if.end70.sw.bb1.i_crit_edge154
    i32 16800000, label %sw.bb2.i
    i32 19200000, label %sw.bb3.i
  ]

if.end70.sw.bb1.i_crit_edge154:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end70.sw.bb1.i_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end70.sw.epilog.i_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end70.sw.bb1.i_crit_edge, %if.end70.sw.bb1.i_crit_edge154
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, i32 noundef %call23) #13
  br label %_pllcx_update_dynamic_coef.exit

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end70.sw.epilog.i_crit_edge
  %n_threshold.0.i = phi i32 [ 48, %sw.bb3.i ], [ 55, %sw.bb2.i ], [ 71, %sw.bb1.i ], [ 70, %if.end70.sw.epilog.i_crit_edge ]
  %65 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk_base2.i, align 4
  %67 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %params.i, align 8
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %misc_reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %misc_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %66, i32 %70
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %72 = and i32 %71, -61
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %n_threshold.0.i, i32 %div)
  %cmp.not.i = icmp ult i32 %n_threshold.0.i, %div
  %cond.i = select i1 %cmp.not.i, i32 671088640, i32 335544320
  %or.i = or i32 %73, %cond.i
  %74 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %75 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk_base2.i, align 4
  %77 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %params.i, align 8
  %misc_reg8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %misc_reg8.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %misc_reg8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %76, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %74) #10, !srcloc !102
  br label %_pllcx_update_dynamic_coef.exit

_pllcx_update_dynamic_coef.exit:                  ; preds = %sw.epilog.i, %do.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %81 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %82 = getelementptr inbounds i8, ptr %init.i, i32 12
  %83 = call ptr @memset(ptr %82, i32 255, i32 12)
  %84 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %85 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tegra_clk_pllc_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %86 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i138 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i138, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %87 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %88 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %89 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 39
  %91 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %92, null
  br i1 %tobool6.not.i, label %if.then.i141, label %_pllcx_update_dynamic_coef.exit.if.end15.i_crit_edge

_pllcx_update_dynamic_coef.exit.if.end15.i_crit_edge: ; preds = %_pllcx_update_dynamic_coef.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i141:                                     ; preds = %_pllcx_update_dynamic_coef.exit
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 26
  %93 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags8.i, align 4
  %and.i140 = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool9.not.i = icmp eq i32 %and.i140, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %95 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i141, %_pllcx_update_dynamic_coef.exit.if.end15.i_crit_edge
  %96 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %97, i32 0, i32 41
  %98 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %99, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %99(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i142 = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i143 = icmp ugt ptr %call.i142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then89, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then89:                                        ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %do.end55, %_tegra_init_pll.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end55 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call.i142, %if.then89 ], [ %call.i142, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_update_pll_mnp(ptr nocapture noundef readonly %pll, ptr nocapture noundef readonly %cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 4
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 4
  %div_nmp2 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %div_nmp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_nmp2, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %pmc = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 2
  %6 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmc, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 248
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !100
  %9 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pmc, align 4
  %pmc_divp_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %pmc_divp_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmc_divp_reg, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !100
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params1, align 4
  %flags11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags11, align 4
  %and12 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %div_nmp15 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %17, i32 0, i32 33
  %20 = ptrtoint ptr %div_nmp15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %div_nmp15, align 4
  %divp_width = getelementptr inbounds %struct.div_nmp, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %divp_width to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %divp_width, align 1
  %conv = zext i8 %23 to i32
  %notmask185 = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask185, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.false ], [ 1, %if.then.cond.end_crit_edge ]
  %override_divp_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %override_divp_shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %override_divp_shift, align 1
  %conv16 = zext i8 %25 to i32
  %shl17 = shl i32 %cond, %conv16
  %neg = xor i32 %shl17, -1
  %and18 = and i32 %15, %neg
  %p = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %p, align 4
  %conv19 = zext i8 %27 to i32
  %shl22 = shl i32 %conv19, %conv16
  %or = or i32 %and18, %shl22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pmc, align 4
  %31 = ptrtoint ptr %pmc_divp_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pmc_divp_reg, align 4
  %add.ptr25 = getelementptr i8, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %28) #10, !srcloc !102
  %33 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pmc, align 4
  %pmc_divnm_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 24
  %35 = ptrtoint ptr %pmc_divnm_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pmc_divnm_reg, align 4
  %add.ptr28 = getelementptr i8, ptr %34, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !100
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %params1, align 4
  %div_nmp32 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %div_nmp32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %div_nmp32, align 4
  %divm_width = getelementptr inbounds %struct.div_nmp, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %divm_width to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %divm_width, align 1
  %conv33 = zext i8 %44 to i32
  %notmask186 = shl nsw i32 -1, %conv33
  %sub35 = xor i32 %notmask186, -1
  %override_divm_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 7
  %45 = ptrtoint ptr %override_divm_shift to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %override_divm_shift, align 1
  %conv36 = zext i8 %46 to i32
  %shl37 = shl i32 %sub35, %conv36
  %divn_width = getelementptr inbounds %struct.div_nmp, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %divn_width to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %divn_width, align 1
  %conv40 = zext i8 %48 to i32
  %notmask187 = shl nsw i32 -1, %conv40
  %sub42 = xor i32 %notmask187, -1
  %override_divn_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 6
  %49 = ptrtoint ptr %override_divn_shift to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %override_divn_shift, align 1
  %conv43 = zext i8 %50 to i32
  %shl44 = shl i32 %sub42, %conv43
  %or45 = or i32 %shl44, %shl37
  %neg46 = xor i32 %or45, -1
  %and47 = and i32 %38, %neg46
  %m = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %51 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %m, align 4
  %shl50 = shl i32 %52, %conv36
  %n = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %53 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n, align 4
  %shl53 = shl i32 %54, %conv43
  %or54 = or i32 %shl53, %shl50
  %or55 = or i32 %or54, %and47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %56 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pmc, align 4
  %58 = ptrtoint ptr %pmc_divnm_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pmc_divnm_reg, align 4
  %add.ptr61 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %55) #10, !srcloc !102
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 1
  %60 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk_base, align 4
  %62 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %params1, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_reg, align 4
  %add.ptr64 = getelementptr i8, ptr %61, i32 %65
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #10, !srcloc !100
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %params1, align 4
  %div_nmp68 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %div_nmp68 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %div_nmp68, align 4
  %divm_width69 = getelementptr inbounds %struct.div_nmp, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %divm_width69 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %divm_width69, align 1
  %conv70 = zext i8 %73 to i32
  %notmask = shl nsw i32 -1, %conv70
  %sub72 = xor i32 %notmask, -1
  %divm_shift = getelementptr inbounds %struct.div_nmp, ptr %71, i32 0, i32 2
  %74 = ptrtoint ptr %divm_shift to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %divm_shift, align 1
  %conv75 = zext i8 %75 to i32
  %shl76 = shl i32 %sub72, %conv75
  %divn_width79 = getelementptr inbounds %struct.div_nmp, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %divn_width79 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %divn_width79, align 1
  %conv80 = zext i8 %77 to i32
  %notmask183 = shl nsw i32 -1, %conv80
  %sub82 = xor i32 %notmask183, -1
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %71, align 1
  %conv85 = zext i8 %79 to i32
  %shl86 = shl i32 %sub82, %conv85
  %or87 = or i32 %shl86, %shl76
  %flags89 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 26
  %80 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags89, align 4
  %and90 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %cond.false93, label %if.else.cond.end100_crit_edge

if.else.cond.end100_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end100

cond.false93:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %divp_width96 = getelementptr inbounds %struct.div_nmp, ptr %71, i32 0, i32 5
  %82 = ptrtoint ptr %divp_width96 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %divp_width96, align 1
  %conv97 = zext i8 %83 to i32
  %notmask184 = shl nsw i32 -1, %conv97
  %sub99 = xor i32 %notmask184, -1
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false93, %if.else.cond.end100_crit_edge
  %cond101 = phi i32 [ %sub99, %cond.false93 ], [ 1, %if.else.cond.end100_crit_edge ]
  %divp_shift = getelementptr inbounds %struct.div_nmp, ptr %71, i32 0, i32 4
  %84 = ptrtoint ptr %divp_shift to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %divp_shift, align 1
  %conv104 = zext i8 %85 to i32
  %shl105 = shl i32 %cond101, %conv104
  %or106 = or i32 %or87, %shl105
  %neg107 = xor i32 %or106, -1
  %and108 = and i32 %67, %neg107
  %m109 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %86 = ptrtoint ptr %m109 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %m109, align 4
  %shl114 = shl i32 %87, %conv75
  %n115 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %88 = ptrtoint ptr %n115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n115, align 4
  %shl120 = shl i32 %89, %conv85
  %or121 = or i32 %shl120, %shl114
  %p122 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %90 = ptrtoint ptr %p122 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %p122, align 4
  %conv123 = zext i8 %91 to i32
  %shl128 = shl i32 %conv123, %conv104
  %or129 = or i32 %or121, %and108
  %or130 = or i32 %or129, %shl128
  %92 = tail call i32 @llvm.bswap.i32(i32 %or130)
  %93 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk_base, align 4
  %base_reg133 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %69, i32 0, i32 6
  %95 = ptrtoint ptr %base_reg133 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %base_reg133, align 4
  %add.ptr134 = getelementptr i8, ptr %94, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %92) #10, !srcloc !102
  %97 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %params1, align 4
  %sdm_din_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %98, i32 0, i32 15
  %99 = ptrtoint ptr %sdm_din_reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sdm_din_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i, label %cond.end100.if.end_crit_edge, label %if.end.i

cond.end100.if.end_crit_edge:                     ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %cond.end100
  %sdm_data.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 6
  %101 = ptrtoint ptr %sdm_data.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %sdm_data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool1.not.i = icmp eq i16 %102, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then2.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %104, i32 %100
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !100
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  %107 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %params1, align 4
  %sdm_din_mask.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %108, i32 0, i32 16
  %109 = ptrtoint ptr %sdm_din_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sdm_din_mask.i, align 4
  %neg.i = xor i32 %110, -1
  %and.i = and i32 %106, %neg.i
  %111 = ptrtoint ptr %sdm_data.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %sdm_data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %112)
  %cmp.i = icmp eq i16 %112, -1
  %narrow.i = select i1 %cmp.i, i16 0, i16 %112
  %spec.select.i = sext i16 %narrow.i to i32
  %and14.i = and i32 %110, %spec.select.i
  %or.i = or i32 %and14.i, %and.i
  %113 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %114 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk_base, align 4
  %sdm_din_reg17.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %108, i32 0, i32 15
  %116 = ptrtoint ptr %sdm_din_reg17.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sdm_din_reg17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %115, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %113) #10, !srcloc !102
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then2.i, %if.end.i.if.end19.i_crit_edge
  %118 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clk_base, align 4
  %120 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %params1, align 4
  %sdm_ctrl_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %121, i32 0, i32 17
  %122 = ptrtoint ptr %sdm_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sdm_ctrl_reg.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %119, i32 %123
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #10, !srcloc !100
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #10
  %126 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %params1, align 4
  %sdm_ctrl_en_mask.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %127, i32 0, i32 18
  %128 = ptrtoint ptr %sdm_ctrl_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sdm_ctrl_en_mask.i, align 4
  %and27.i = and i32 %129, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %130 = ptrtoint ptr %sdm_data.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %sdm_data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp31.i = icmp eq i16 %131, 0
  %cmp31.not.i = xor i1 %cmp31.i, true
  %brmerge.i = select i1 %cmp31.not.i, i1 true, i1 %tobool28.not.i
  %neg38.i = xor i32 %129, -1
  %and39.i = select i1 %brmerge.i, i32 -1, i32 %neg38.i
  %val.0.i = and i32 %and39.i, %125
  %tobool28.not.not.i = xor i1 %tobool28.not.i, true
  %brmerge81.i = select i1 %cmp31.i, i1 true, i1 %tobool28.not.not.i
  %or50.i = or i32 %129, %125
  %spec.select82.i = select i1 %brmerge81.i, i32 %val.0.i, i32 %or50.i
  %132 = tail call i32 @llvm.bswap.i32(i32 %spec.select82.i) #10
  %133 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %clk_base, align 4
  %sdm_ctrl_reg54.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %127, i32 0, i32 17
  %135 = ptrtoint ptr %sdm_ctrl_reg54.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sdm_ctrl_reg54.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %134, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %132) #10, !srcloc !102
  br label %if.end

if.end:                                           ; preds = %if.end19.i, %cond.end100.if.end_crit_edge, %cond.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_plle_tegra114(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %5 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_tegra_init_pll.exit
  %8 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_base2.i, align 4
  %10 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params.i, align 8
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %15 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_base2.i, align 4
  %17 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params.i, align 8
  %aux_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %aux_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aux_reg.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !100
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %23 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i14 = icmp eq i32 %23, 0
  br i1 %tobool.not.i14, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %24 = and i32 %22, 268435460
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %if.then.i._clk_plle_tegra_init_parent.exit_crit_edge, label %do.end.i

if.then.i._clk_plle_tegra_init_parent.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_clk_plle_tegra_init_parent.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and9.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond.i = select i1 %tobool10.not.i, ptr @.str.27, ptr @.str.26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1860, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond.i) #10
  br label %_clk_plle_tegra_init_parent.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and32.i = and i32 %22, -268435461
  %26 = tail call i32 @llvm.bswap.i32(i32 %and32.i) #10
  %27 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_base2.i, align 4
  %29 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %params.i, align 8
  %aux_reg35.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %aux_reg35.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %aux_reg35.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %26) #10, !srcloc !102
  %33 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_base2.i, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #10
  br label %_clk_plle_tegra_init_parent.exit

_clk_plle_tegra_init_parent.exit:                 ; preds = %if.else.i, %do.end.i, %if.then.i._clk_plle_tegra_init_parent.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %37 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %38 = getelementptr inbounds i8, ptr %init.i, i32 12
  %39 = call ptr @memset(ptr %38, i32 255, i32 12)
  %40 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %41 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @tegra_clk_plle_tegra114_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %42 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i15 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i15, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %43 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %44 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %45 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %46, i32 0, i32 39
  %47 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %48, null
  br i1 %tobool6.not.i, label %if.then.i17, label %_clk_plle_tegra_init_parent.exit.if.end15.i_crit_edge

_clk_plle_tegra_init_parent.exit.if.end15.i_crit_edge: ; preds = %_clk_plle_tegra_init_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i17:                                      ; preds = %_clk_plle_tegra_init_parent.exit
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %46, i32 0, i32 26
  %49 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %51 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i17, %_clk_plle_tegra_init_parent.exit.if.end15.i_crit_edge
  %52 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %53, i32 0, i32 41
  %54 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %55, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %55(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i18 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.then5, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %_tegra_init_pll.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then5 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllu_tegra114(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %or = or i32 %1, 16
  store i32 %or, ptr %flags1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock, ptr %lock4.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %7 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %div_nmp.i, align 4
  %tobool5.not.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @default_nmp, ptr %div_nmp.i, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_tegra_init_pll.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %10 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %11 = getelementptr inbounds i8, ptr %init.i, i32 12
  %12 = call ptr @memset(ptr %11, i32 255, i32 12)
  %13 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %14 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_clk_pllu_tegra114_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i14 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i14, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %16 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %17 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i, label %if.then.i, label %if.end.if.end15.i_crit_edge

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 26
  %22 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %24 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i, %if.end.if.end15.i_crit_edge
  %25 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %26, i32 0, i32 41
  %27 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %28, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %28(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i16 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %if.then6, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %_tegra_init_pll.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then6 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pllss(ptr noundef %name, ptr noundef %parent_name, ptr noundef %clk_base, i32 noundef %flags, ptr noundef %pll_params, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 33
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  %4 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %div_nmp, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__clk_lookup(ptr noundef %parent_name) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2347, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %parent_name, ptr noundef %name) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.cleanup_crit_edge, label %if.end.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %clk_base2.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %clk_base, ptr %clk_base2.i, align 4
  %pmc3.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pmc3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pmc3.i, align 8
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pll_params, ptr %params.i, align 8
  %lock4.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %lock4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lock, ptr %lock4.i, align 4
  %11 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %div_nmp, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i._tegra_init_pll.exit_crit_edge

if.end.i._tegra_init_pll.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_init_pll.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %div_nmp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_nmp, ptr %div_nmp, align 4
  br label %_tegra_init_pll.exit

_tegra_init_pll.exit:                             ; preds = %if.then6.i, %if.end.i._tegra_init_pll.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_tegra_init_pll.exit.cleanup_crit_edge, label %if.end27

_tegra_init_pll.exit.cleanup_crit_edge:           ; preds = %_tegra_init_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %_tegra_init_pll.exit
  %14 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_base2.i, align 4
  %16 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params.i, align 8
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !100
  %21 = and i32 %20, -7
  %22 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_base2.i, align 4
  %24 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params.i, align 8
  %base_reg33 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %base_reg33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_reg33, align 4
  %add.ptr34 = getelementptr i8, ptr %23, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %21) #10, !srcloc !102
  %call35 = tail call i32 @clk_get_rate(ptr noundef nonnull %call1) #10
  %vco_min = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 4
  %28 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vco_min, align 4
  %add.i = add i32 %call35, -1
  %sub.i = add i32 %add.i, %29
  %30 = urem i32 %sub.i, %call35
  %mul.i = sub i32 %sub.i, %30
  store i32 %mul.i, ptr %vco_min, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 26
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i182 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i182, label %if.end.i183, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 2
  %33 = ptrtoint ptr %cf_min.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cf_min.i, align 4
  %div.i = udiv i32 %call35, %34
  %mdiv_default.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 36
  %35 = ptrtoint ptr %mdiv_default.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mdiv_default.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool1.not.i = icmp eq i16 %36, 0
  %conv2.i = and i32 %div.i, 65535
  %conv5.i = zext i16 %36 to i32
  %37 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv5.i) #10
  %cond12.i = select i1 %tobool1.not.i, i32 %conv2.i, i32 %37
  br label %_pll_fixed_mdiv.exit

if.end.i183:                                      ; preds = %if.end27
  %mdiv_default13.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 36
  %38 = ptrtoint ptr %mdiv_default13.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mdiv_default13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool14.not.i = icmp eq i16 %39, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = zext i16 %39 to i32
  br label %_pll_fixed_mdiv.exit

if.end18.i:                                       ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 3
  %40 = ptrtoint ptr %cf_max.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cf_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %call35)
  %cmp19.i = icmp ult i32 %41, %call35
  %..i = select i1 %cmp19.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit

_pll_fixed_mdiv.exit:                             ; preds = %if.end18.i, %if.then15.i, %if.then.i
  %retval.0.i184 = phi i32 [ %cond12.i, %if.then.i ], [ %conv17.i, %if.then15.i ], [ %..i, %if.end18.i ]
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i184, ptr %1, align 4
  %mul = mul i32 %retval.0.i184, %mul.i
  %div = udiv i32 %mul, %call35
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div, ptr %0, align 4
  %pdiv_tohw = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 32
  %44 = ptrtoint ptr %pdiv_tohw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdiv_tohw, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %_pll_fixed_mdiv.exit
  %i.0 = phi i32 [ 0, %_pll_fixed_mdiv.exit ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.pdiv_map, ptr %45, i32 %i.0
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  %tobool41.not = icmp eq i8 %47, 0
  %inc = add i32 %i.0, 1
  br i1 %tobool41.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool42.not = icmp eq i32 %i.0, 0
  br i1 %tobool42.not, label %if.then43, label %if.end45

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end45:                                         ; preds = %for.end
  %sub = add i32 %i.0, -1
  %hw_val = getelementptr %struct.pdiv_map, ptr %45, i32 %sub, i32 1
  %48 = ptrtoint ptr %hw_val to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hw_val, align 1
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %2, align 4
  call fastcc void @_update_pll_mnp(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %cfg)
  %51 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_base2.i, align 4
  %53 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %params.i, align 8
  %misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %misc_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %misc_reg, align 4
  %add.ptr50 = getelementptr i8, ptr %52, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #10, !srcloc !102
  %57 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_base2.i, align 4
  %ext_misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 23
  %59 = ptrtoint ptr %ext_misc_reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ext_misc_reg, align 4
  %add.ptr53 = getelementptr i8, ptr %58, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 16) #10, !srcloc !102
  %61 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk_base2.i, align 4
  %arrayidx56 = getelementptr %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 23, i32 1
  %63 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx56, align 4
  %add.ptr57 = getelementptr i8, ptr %62, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #10, !srcloc !102
  %65 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk_base2.i, align 4
  %arrayidx60 = getelementptr %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 23, i32 2
  %67 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #10, !srcloc !102
  %69 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk_base2.i, align 4
  %71 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %params.i, align 8
  %base_reg65 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %base_reg65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base_reg65, align 4
  %add.ptr66 = getelementptr i8, ptr %70, i32 %74
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #10, !srcloc !100
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %iddq_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 11
  %77 = ptrtoint ptr %iddq_reg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iddq_reg, align 4
  %add.ptr70 = getelementptr i8, ptr %clk_base, i32 %78
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !100
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %and73 = and i32 %76, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %iddq_bit_idx107 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %pll_params, i32 0, i32 12
  %81 = ptrtoint ptr %iddq_bit_idx107 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iddq_bit_idx107, align 4
  %shl108 = shl nuw i32 1, %82
  br i1 %tobool74.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.end45
  %and76 = and i32 %shl108, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then75.if.end111_crit_edge, label %do.end91

if.then75.if.end111_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.end91:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2388, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %name) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %shl108, %80
  %83 = tail call i32 @llvm.bswap.i32(i32 %or)
  %84 = ptrtoint ptr %iddq_reg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %iddq_reg, align 4
  %add.ptr110 = getelementptr i8, ptr %clk_base, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %83) #10, !srcloc !102
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then75.if.end111_crit_edge
  %and112 = and i32 %76, -16777217
  %86 = tail call i32 @llvm.bswap.i32(i32 %and112)
  %87 = ptrtoint ptr %clk_base2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk_base2.i, align 4
  %89 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %params.i, align 8
  %base_reg115 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %base_reg115 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %base_reg115, align 4
  %add.ptr116 = getelementptr i8, ptr %88, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %86) #10, !srcloc !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %93 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %parent_name, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %94 = getelementptr inbounds i8, ptr %init.i, i32 12
  %95 = call ptr @memset(ptr %94, i32 255, i32 12)
  %96 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %name, ptr %init.i, align 4
  %ops2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %97 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @tegra_clk_pllss_ops, ptr %ops2.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %98 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %flags, ptr %flags3.i, align 4
  %tobool.not.i185 = icmp eq ptr %parent_name, null
  %parent_name.addr..i = select i1 %tobool.not.i185, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %99 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %parent_name, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %100 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %101 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %params.i, align 8
  %calc_rate.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %102, i32 0, i32 39
  %103 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %calc_rate.i, align 4
  %tobool6.not.i = icmp eq ptr %104, null
  br i1 %tobool6.not.i, label %if.then.i188, label %if.end111.if.end15.i_crit_edge

if.end111.if.end15.i_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i188:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %flags8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %102, i32 0, i32 26
  %105 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags8.i, align 4
  %and.i187 = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool9.not.i = icmp eq i32 %and.i187, 0
  %_calc_rate._calc_dynamic_ramp_rate.i = select i1 %tobool9.not.i, ptr @_calc_rate, ptr @_calc_dynamic_ramp_rate
  %107 = ptrtoint ptr %calc_rate.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %_calc_rate._calc_dynamic_ramp_rate.i, ptr %calc_rate.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i188, %if.end111.if.end15.i_crit_edge
  %108 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %params.i, align 8
  %set_defaults.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %109, i32 0, i32 41
  %110 = ptrtoint ptr %set_defaults.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %set_defaults.i, align 4
  %tobool17.not.i = icmp eq ptr %111, null
  br i1 %tobool17.not.i, label %if.end15.i._tegra_clk_register_pll.exit_crit_edge, label %if.then18.i

if.end15.i._tegra_clk_register_pll.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tegra_clk_register_pll.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %111(ptr noundef nonnull %call7.i.i.i) #10
  br label %_tegra_clk_register_pll.exit

_tegra_clk_register_pll.exit:                     ; preds = %if.then18.i, %if.end15.i._tegra_clk_register_pll.exit_crit_edge
  %init22.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %init.i, ptr %init22.i, align 8
  %call.i = call ptr @tegra_clk_dev_register(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i189 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then119, label %_tegra_clk_register_pll.exit.cleanup_crit_edge

_tegra_clk_register_pll.exit.cleanup_crit_edge:   ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then119:                                       ; preds = %_tegra_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %_tegra_clk_register_pll.exit.cleanup_crit_edge, %do.end91, %if.then43, %_tegra_init_pll.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end91 ], [ inttoptr (i32 -22 to ptr), %if.then43 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call.i, %if.then119 ], [ %call.i, %_tegra_clk_register_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i.i, %_tegra_init_pll.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_clk_pll_enable(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %iddq_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %iddq_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iddq_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !100
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %iddq_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %iddq_bit_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iddq_bit_idx, align 4
  %shl = shl nuw i32 1, %11
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_base, align 4
  %iddq_reg8 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 11
  %15 = ptrtoint ptr %iddq_reg8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iddq_reg8, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params, align 4
  %reset_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %reset_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reset_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not = icmp eq i32 %21, 0
  br i1 %tobool11.not, label %if.end.if.end28_crit_edge, label %if.then12

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base14 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %clk_base14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_base14, align 4
  %add.ptr17 = getelementptr i8, ptr %23, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !100
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %params, align 4
  %reset_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %reset_bit_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reset_bit_idx, align 4
  %shl21 = shl nuw i32 1, %29
  %neg22 = xor i32 %shl21, -1
  %and23 = and i32 %25, %neg22
  %30 = tail call i32 @llvm.bswap.i32(i32 %and23)
  %31 = ptrtoint ptr %clk_base14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_base14, align 4
  %reset_reg26 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %27, i32 0, i32 13
  %33 = ptrtoint ptr %reset_reg26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reset_reg26, align 4
  %add.ptr27 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %30) #10, !srcloc !102
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %if.end.if.end28_crit_edge
  %35 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %params, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %39 = and i32 %38, 1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %39)
  %.not.i = icmp eq i32 %39, 1025
  br i1 %.not.i, label %if.end6.i, label %if.end28.clk_pll_enable_lock.exit_crit_edge

if.end28.clk_pll_enable_lock.exit_crit_edge:      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_enable_lock.exit

if.end6.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %40 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_base.i, align 4
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 7
  %42 = ptrtoint ptr %misc_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %misc_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %46 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %params, align 4
  %lock_enable_bit_idx.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %lock_enable_bit_idx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lock_enable_bit_idx.i, align 4
  %shl.i = shl nuw i32 1, %49
  %or.i = or i32 %shl.i, %45
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %51 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_base.i, align 4
  %misc_reg11.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %47, i32 0, i32 7
  %53 = ptrtoint ptr %misc_reg11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %misc_reg11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %50) #10, !srcloc !102
  br label %clk_pll_enable_lock.exit

clk_pll_enable_lock.exit:                         ; preds = %if.end6.i, %if.end28.clk_pll_enable_lock.exit_crit_edge
  %clk_base30 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %55 = ptrtoint ptr %clk_base30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_base30, align 4
  %57 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %params, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_reg, align 4
  %add.ptr32 = getelementptr i8, ptr %56, i32 %60
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #10, !srcloc !100
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %params, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %64, i32 0, i32 26
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and36 = and i32 %66, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %and39 = and i32 %62, 1073741823
  %spec.select = select i1 %tobool37.not, i32 %62, i32 %and39
  %or = or i32 %spec.select, 1073741824
  %67 = tail call i32 @llvm.bswap.i32(i32 %or)
  %68 = ptrtoint ptr %clk_base30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk_base30, align 4
  %base_reg43 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %64, i32 0, i32 6
  %70 = ptrtoint ptr %base_reg43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_reg43, align 4
  %add.ptr44 = getelementptr i8, ptr %69, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %67) #10, !srcloc !102
  %72 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %params, align 4
  %flags46 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %73, i32 0, i32 26
  %74 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags46, align 4
  %and47 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %clk_pll_enable_lock.exit.if.end57_crit_edge, label %if.then49

clk_pll_enable_lock.exit.if.end57_crit_edge:      ; preds = %clk_pll_enable_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then49:                                        ; preds = %clk_pll_enable_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pmc = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %76 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pmc, align 4
  %add.ptr51 = getelementptr i8, ptr %77, i32 248
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #10, !srcloc !100
  %79 = or i32 %78, 1048576
  %80 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pmc, align 4
  %add.ptr56 = getelementptr i8, ptr %81, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %79) #10, !srcloc !102
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %clk_pll_enable_lock.exit.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_clk_pll_disable(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_base, align 4
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_reg, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !100
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %7, 1073741823
  %spec.select = select i1 %tobool.not, i32 %7, i32 %and4
  %and5 = and i32 %spec.select, -1073741825
  %12 = tail call i32 @llvm.bswap.i32(i32 %and5)
  %13 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_base, align 4
  %base_reg8 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %base_reg8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_reg8, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #10, !srcloc !102
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params, align 4
  %flags11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags11, align 4
  %and12 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %entry.if.end22_crit_edge, label %if.then14

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pmc = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %21 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pmc, align 4
  %add.ptr16 = getelementptr i8, ptr %22, i32 248
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10, !srcloc !100
  %24 = and i32 %23, -1048577
  %25 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmc, align 4
  %add.ptr21 = getelementptr i8, ptr %26, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %24) #10, !srcloc !102
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %entry.if.end22_crit_edge
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %params, align 4
  %reset_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %reset_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reset_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool24.not = icmp eq i32 %30, 0
  br i1 %tobool24.not, label %if.end22.if.end38_crit_edge, label %if.then25

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_base, align 4
  %add.ptr30 = getelementptr i8, ptr %32, i32 %30
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !100
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %params, align 4
  %reset_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %reset_bit_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reset_bit_idx, align 4
  %shl = shl nuw i32 1, %38
  %or = or i32 %shl, %34
  %39 = tail call i32 @llvm.bswap.i32(i32 %or)
  %40 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_base, align 4
  %reset_reg36 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %36, i32 0, i32 13
  %42 = ptrtoint ptr %reset_reg36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reset_reg36, align 4
  %add.ptr37 = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %39) #10, !srcloc !102
  br label %if.end38

if.end38:                                         ; preds = %if.then25, %if.end22.if.end38_crit_edge
  %44 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %params, align 4
  %iddq_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %iddq_reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iddq_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool40.not = icmp eq i32 %47, 0
  br i1 %tobool40.not, label %if.end38.if.end56_crit_edge, label %if.then41

if.end38.if.end56_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk_base, align 4
  %add.ptr46 = getelementptr i8, ptr %49, i32 %47
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #10, !srcloc !100
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %params, align 4
  %iddq_bit_idx = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %iddq_bit_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iddq_bit_idx, align 4
  %shl50 = shl nuw i32 1, %55
  %or51 = or i32 %shl50, %51
  %56 = tail call i32 @llvm.bswap.i32(i32 %or51)
  %57 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_base, align 4
  %iddq_reg54 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %53, i32 0, i32 11
  %59 = ptrtoint ptr %iddq_reg54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iddq_reg54, align 4
  %add.ptr55 = getelementptr i8, ptr %58, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %56) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 429496) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then41, %if.end38.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_get_pll_mnp(ptr nocapture noundef readonly %pll, ptr nocapture noundef writeonly %cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 4
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 4
  %div_nmp2 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %div_nmp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_nmp2, align 4
  %4 = call ptr @memset(ptr %cfg, i32 0, i32 20)
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %pmc = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 2
  %7 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmc, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 248
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !100
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmc, align 4
  %pmc_divp_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %pmc_divp_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pmc_divp_reg, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !100
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %override_divp_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %override_divp_shift to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %override_divp_shift, align 1
  %conv = zext i8 %18 to i32
  %shr = lshr i32 %16, %conv
  %19 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params1, align 4
  %flags11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags11, align 4
  %and12 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %div_nmp15 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 33
  %23 = ptrtoint ptr %div_nmp15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %div_nmp15, align 4
  %divp_width = getelementptr inbounds %struct.div_nmp, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %divp_width to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %divp_width, align 1
  %conv16 = zext i8 %26 to i32
  %notmask158 = shl nsw i32 -1, %conv16
  %sub = xor i32 %notmask158, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.false ], [ 1, %if.then.cond.end_crit_edge ]
  %and17 = and i32 %cond, %shr
  %conv18 = trunc i32 %and17 to i8
  %p = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %27 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv18, ptr %p, align 4
  %28 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pmc, align 4
  %pmc_divnm_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 24
  %30 = ptrtoint ptr %pmc_divnm_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmc_divnm_reg, align 4
  %add.ptr21 = getelementptr i8, ptr %29, i32 %31
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !100
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %override_divm_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %override_divm_shift to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %override_divm_shift, align 1
  %conv24 = zext i8 %35 to i32
  %shr25 = lshr i32 %33, %conv24
  %36 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params1, align 4
  %div_nmp27 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %div_nmp27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %div_nmp27, align 4
  %divm_width = getelementptr inbounds %struct.div_nmp, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %divm_width to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %divm_width, align 1
  %conv28 = zext i8 %41 to i32
  %notmask159 = shl nsw i32 -1, %conv28
  %sub30 = xor i32 %notmask159, -1
  %and31 = and i32 %shr25, %sub30
  %m = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %42 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and31, ptr %m, align 4
  %override_divn_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 6
  %43 = ptrtoint ptr %override_divn_shift to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %override_divn_shift, align 1
  %conv32 = zext i8 %44 to i32
  %shr33 = lshr i32 %33, %conv32
  %45 = load ptr, ptr %params1, align 4
  %div_nmp35 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %div_nmp35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %div_nmp35, align 4
  %divn_width = getelementptr inbounds %struct.div_nmp, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %divn_width to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %divn_width, align 1
  %conv36 = zext i8 %49 to i32
  %notmask160 = shl nsw i32 -1, %conv36
  %sub38 = xor i32 %notmask160, -1
  %and39 = and i32 %shr33, %sub38
  %n = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %50 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and39, ptr %n, align 4
  br label %if.end113

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %pll, i32 0, i32 1
  %51 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_base, align 4
  %53 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %params1, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_reg, align 4
  %add.ptr42 = getelementptr i8, ptr %52, i32 %56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !100
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %divm_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 2
  %59 = ptrtoint ptr %divm_shift to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %divm_shift, align 1
  %conv45 = zext i8 %60 to i32
  %shr46 = lshr i32 %58, %conv45
  %61 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %params1, align 4
  %div_nmp48 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %div_nmp48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %div_nmp48, align 4
  %divm_width49 = getelementptr inbounds %struct.div_nmp, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %divm_width49 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %divm_width49, align 1
  %conv50 = zext i8 %66 to i32
  %notmask = shl nsw i32 -1, %conv50
  %sub52 = xor i32 %notmask, -1
  %and53 = and i32 %shr46, %sub52
  %m54 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %67 = ptrtoint ptr %m54 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and53, ptr %m54, align 4
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %3, align 1
  %conv55 = zext i8 %69 to i32
  %shr56 = lshr i32 %58, %conv55
  %70 = load ptr, ptr %params1, align 4
  %div_nmp58 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %70, i32 0, i32 33
  %71 = ptrtoint ptr %div_nmp58 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %div_nmp58, align 4
  %divn_width59 = getelementptr inbounds %struct.div_nmp, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %divn_width59 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %divn_width59, align 1
  %conv60 = zext i8 %74 to i32
  %notmask156 = shl nsw i32 -1, %conv60
  %sub62 = xor i32 %notmask156, -1
  %and63 = and i32 %shr56, %sub62
  %n64 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %75 = ptrtoint ptr %n64 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and63, ptr %n64, align 4
  %divp_shift = getelementptr inbounds %struct.div_nmp, ptr %3, i32 0, i32 4
  %76 = ptrtoint ptr %divp_shift to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %divp_shift, align 1
  %conv65 = zext i8 %77 to i32
  %shr66 = lshr i32 %58, %conv65
  %78 = load ptr, ptr %params1, align 4
  %flags68 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %78, i32 0, i32 26
  %79 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags68, align 4
  %and69 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %cond.false72, label %if.else.cond.end79_crit_edge

if.else.cond.end79_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end79

cond.false72:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %div_nmp74 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %78, i32 0, i32 33
  %81 = ptrtoint ptr %div_nmp74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %div_nmp74, align 4
  %divp_width75 = getelementptr inbounds %struct.div_nmp, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %divp_width75 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %divp_width75, align 1
  %conv76 = zext i8 %84 to i32
  %notmask157 = shl nsw i32 -1, %conv76
  %sub78 = xor i32 %notmask157, -1
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false72, %if.else.cond.end79_crit_edge
  %cond80 = phi i32 [ %sub78, %cond.false72 ], [ 1, %if.else.cond.end79_crit_edge ]
  %and81 = and i32 %cond80, %shr66
  %conv82 = trunc i32 %and81 to i8
  %p83 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %85 = ptrtoint ptr %p83 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv82, ptr %p83, align 4
  %86 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %params1, align 4
  %sdm_din_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %sdm_din_reg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sdm_din_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool85.not = icmp eq i32 %89, 0
  br i1 %tobool85.not, label %cond.end79.if.end113_crit_edge, label %if.then86

cond.end79.if.end113_crit_edge:                   ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then86:                                        ; preds = %cond.end79
  %sdm_ctrl_en_mask = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %87, i32 0, i32 18
  %90 = ptrtoint ptr %sdm_ctrl_en_mask to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sdm_ctrl_en_mask, align 4
  %92 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk_base, align 4
  %sdm_ctrl_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %87, i32 0, i32 17
  %94 = ptrtoint ptr %sdm_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sdm_ctrl_reg, align 4
  %add.ptr91 = getelementptr i8, ptr %93, i32 %95
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #10, !srcloc !100
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %and94 = and i32 %97, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.then86.if.end113_crit_edge, label %if.then96

if.then86.if.end113_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then96:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk_base, align 4
  %100 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %params1, align 4
  %sdm_din_reg100 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %101, i32 0, i32 15
  %102 = ptrtoint ptr %sdm_din_reg100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sdm_din_reg100, align 4
  %add.ptr101 = getelementptr i8, ptr %99, i32 %103
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #10, !srcloc !100
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %106 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %params1, align 4
  %sdm_din_mask = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %sdm_din_mask to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sdm_din_mask, align 4
  %and105 = and i32 %109, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  %110 = trunc i32 %and105 to i16
  %conv111 = select i1 %tobool106.not, i16 -1, i16 %110
  %sdm_data = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 6
  %111 = ptrtoint ptr %sdm_data to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv111, ptr %sdm_data, align 2
  br label %if.end113

if.end113:                                        ; preds = %if.then96, %if.then86.if.end113_crit_edge, %cond.end79.if.end113_crit_edge, %cond.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_program_pll(ptr noundef %hw, ptr noundef %cfg, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %old_cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %old_cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 3
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 4
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %2 = call ptr @memset(ptr %old_cfg, i32 255, i32 20)
  %3 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

entry.clk_pll_is_enabled.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %entry
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 248
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %10 = and i32 %9, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %10)
  %11 = icmp eq i32 %10, 524288
  br i1 %11, label %land.lhs.true.i.if.end52_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.end52_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %entry.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_base.i, align 4
  %14 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %clk_pll_is_enabled.exit.if.end52_crit_edge, label %land.lhs.true

clk_pll_is_enabled.exit.if.end52_crit_edge:       ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true:                                    ; preds = %clk_pll_is_enabled.exit
  %20 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params.i, align 4
  %pre_rate_change = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %21, i32 0, i32 43
  %22 = ptrtoint ptr %pre_rate_change to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pre_rate_change, align 4
  %tobool1.not = icmp eq ptr %23, null
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true32_crit_edge, label %if.then

land.lhs.true.land.lhs.true32_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true32

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 %23() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.land.lhs.true32_crit_edge, label %do.end, !prof !104

if.then.land.lhs.true32_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true32

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 762, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

land.lhs.true32:                                  ; preds = %if.then.land.lhs.true32_crit_edge, %land.lhs.true.land.lhs.true32_crit_edge
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %old_cfg)
  %24 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params.i, align 4
  %defaults_set = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %defaults_set to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %defaults_set, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not = icmp eq i8 %27, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.then54_crit_edge, label %land.lhs.true35

land.lhs.true32.if.then54_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %dyn_ramp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %25, i32 0, i32 42
  %28 = ptrtoint ptr %dyn_ramp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dyn_ramp, align 4
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %land.lhs.true35.if.then54_crit_edge, label %land.lhs.true38

land.lhs.true35.if.then54_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %m = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %30 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp = icmp eq i32 %31, %33
  br i1 %cmp, label %land.lhs.true40, label %land.lhs.true38.if.then54_crit_edge

land.lhs.true38.if.then54_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %p = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %34 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %p, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp43 = icmp eq i8 %35, %37
  br i1 %cmp43, label %if.then45, label %land.lhs.true40.if.then54_crit_edge

land.lhs.true40.if.then54_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then45:                                        ; preds = %land.lhs.true40
  %call48 = tail call i32 %29(ptr noundef %hw, ptr noundef %cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then45.land.lhs.true75_crit_edge, label %if.then45.if.then54_crit_edge

if.then45.if.then54_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then45.land.lhs.true75_crit_edge:              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true75

if.end52:                                         ; preds = %clk_pll_is_enabled.exit.if.end52_crit_edge, %land.lhs.true.i.if.end52_crit_edge
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %old_cfg)
  br label %if.end55

if.then54:                                        ; preds = %if.then45.if.then54_crit_edge, %land.lhs.true40.if.then54_crit_edge, %land.lhs.true38.if.then54_crit_edge, %land.lhs.true35.if.then54_crit_edge, %land.lhs.true32.if.then54_crit_edge
  %ret.1.ph = phi i32 [ 0, %land.lhs.true32.if.then54_crit_edge ], [ 0, %land.lhs.true35.if.then54_crit_edge ], [ 0, %land.lhs.true38.if.then54_crit_edge ], [ 0, %land.lhs.true40.if.then54_crit_edge ], [ %call48, %if.then45.if.then54_crit_edge ]
  %38 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %params.i, align 4
  %defaults_set.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %39, i32 0, i32 31
  %40 = ptrtoint ptr %defaults_set.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %defaults_set.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i123 = icmp eq i8 %41, 0
  br i1 %tobool.not.i123, label %if.then54.pll_clk_stop_ss.exit_crit_edge, label %land.lhs.true.i124

if.then54.pll_clk_stop_ss.exit_crit_edge:         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit

land.lhs.true.i124:                               ; preds = %if.then54
  %ssc_ctrl_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %39, i32 0, i32 19
  %42 = ptrtoint ptr %ssc_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ssc_ctrl_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool2.not.i = icmp eq i32 %43, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i124.pll_clk_stop_ss.exit_crit_edge, label %if.then.i

land.lhs.true.i124.pll_clk_stop_ss.exit_crit_edge: ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %pll_clk_stop_ss.exit

if.then.i:                                        ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 %43
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %48 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %params.i, align 4
  %ssc_ctrl_en_mask.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %ssc_ctrl_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ssc_ctrl_en_mask.i, align 4
  %neg.i = xor i32 %51, -1
  %and.i126 = and i32 %47, %neg.i
  %52 = tail call i32 @llvm.bswap.i32(i32 %and.i126) #10
  %53 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_base.i, align 4
  %ssc_ctrl_reg8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %49, i32 0, i32 19
  %55 = ptrtoint ptr %ssc_ctrl_reg8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ssc_ctrl_reg8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %54, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %52) #10, !srcloc !102
  br label %pll_clk_stop_ss.exit

pll_clk_stop_ss.exit:                             ; preds = %if.then.i, %land.lhs.true.i124.pll_clk_stop_ss.exit_crit_edge, %if.then54.pll_clk_stop_ss.exit_crit_edge
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw)
  br label %if.end55

if.end55:                                         ; preds = %pll_clk_stop_ss.exit, %if.end52
  %ret.1169 = phi i32 [ %ret.1.ph, %pll_clk_stop_ss.exit ], [ 0, %if.end52 ]
  %tobool.not161167 = phi i1 [ false, %pll_clk_stop_ss.exit ], [ true, %if.end52 ]
  %57 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %params.i, align 4
  %defaults_set57 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 31
  %59 = ptrtoint ptr %defaults_set57 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %defaults_set57, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool58.not = icmp eq i8 %60, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  %set_defaults = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 41
  %61 = ptrtoint ptr %set_defaults to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_defaults, align 4
  %tobool61.not = icmp eq ptr %62, null
  br i1 %tobool61.not, label %land.lhs.true59.if.end65_crit_edge, label %if.then62

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %62(ptr noundef %hw) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  tail call fastcc void @_update_pll_mnp(ptr noundef %hw, ptr noundef %cfg)
  %63 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %params.i, align 4
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %64, i32 0, i32 26
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %if.end65.if.end69_crit_edge, label %if.then68

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  %clk_base.i128 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %67 = ptrtoint ptr %clk_base.i128 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk_base.i128, align 4
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %64, i32 0, i32 7
  %69 = ptrtoint ptr %misc_reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %misc_reg.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %68, i32 %70
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #10, !srcloc !100
  %72 = and i32 %71, -983041
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  %cpcon.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 5
  %74 = ptrtoint ptr %cpcon.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cpcon.i, align 1
  %conv.i = zext i8 %75 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %shl.i, %73
  %76 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %params.i, align 4
  %flags.i131 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %77, i32 0, i32 26
  %78 = ptrtoint ptr %flags.i131 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i131, align 4
  %and2.i = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i132 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i132, label %if.else.i, label %if.then.i133

if.then.i133:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i32 %or.i, -241
  %n.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %80 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %81)
  %cmp.i = icmp ugt i32 %81, 599
  %or6.i = or i32 %and3.i, 16
  %spec.select.i = select i1 %cmp.i, i32 %or6.i, i32 %and3.i
  br label %_update_pll_cpcon.exit

if.else.i:                                        ; preds = %if.then68
  %and9.i = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i._update_pll_cpcon.exit_crit_edge, label %if.then11.i

if.else.i._update_pll_cpcon.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_update_pll_cpcon.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %and12.i = and i32 %or.i, -1048577
  %vco_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %77, i32 0, i32 5
  %82 = ptrtoint ptr %vco_max.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vco_max.i, align 4
  %shr.i = lshr i32 %83, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %rate)
  %cmp14.not.i = icmp ugt i32 %shr.i, %rate
  %masksel.i = select i1 %cmp14.not.i, i32 0, i32 1048576
  %spec.select38.i = or i32 %masksel.i, %and12.i
  br label %_update_pll_cpcon.exit

_update_pll_cpcon.exit:                           ; preds = %if.then11.i, %if.else.i._update_pll_cpcon.exit_crit_edge, %if.then.i133
  %val.0.i = phi i32 [ %or.i, %if.else.i._update_pll_cpcon.exit_crit_edge ], [ %spec.select.i, %if.then.i133 ], [ %spec.select38.i, %if.then11.i ]
  %84 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #10
  %85 = ptrtoint ptr %clk_base.i128 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk_base.i128, align 4
  %misc_reg23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %77, i32 0, i32 7
  %87 = ptrtoint ptr %misc_reg23.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %misc_reg23.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %86, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %84) #10, !srcloc !102
  br label %if.end69

if.end69:                                         ; preds = %_update_pll_cpcon.exit, %if.end65.if.end69_crit_edge
  br i1 %tobool.not161167, label %if.end69.cleanup_crit_edge, label %if.then71

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then71:                                        ; preds = %if.end69
  tail call fastcc void @_clk_pll_enable(ptr noundef %hw)
  %89 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %params.i, align 4
  %flags.i135 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 26
  %91 = ptrtoint ptr %flags.i135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i135, align 4
  %and.i136 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.not.i137 = icmp eq i32 %and.i136, 0
  br i1 %tobool.not.i137, label %cond.false7.i, label %if.end.i143

cond.false7.i:                                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 29
  %93 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #10
  br label %clk_pll_wait_for_lock.exit

if.end.i143:                                      ; preds = %if.then71
  %clk_base.i140 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %96 = ptrtoint ptr %clk_base.i140 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk_base.i140, align 4
  %and13.i = and i32 %92, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i141 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 7
  %base_reg.i142 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i142, ptr %misc_reg.i141
  %98 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %97, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 9
  %99 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 29
  %101 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp2451.i = icmp sgt i32 %102, 0
  br i1 %cmp2451.i, label %if.end.i143.for.body.i_crit_edge, label %if.end.i143.do.end.i_crit_edge

if.end.i143.do.end.i_crit_edge:                   ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i143.for.body.i_crit_edge:                 ; preds = %if.end.i143
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end.i143.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %if.end.i143.for.body.i_crit_edge ]
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  %and25.i = and i32 %104, %100
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %100)
  %cmp26.i = icmp eq i32 %and25.i, %100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %105(i32 noundef 10737400) #10
  br label %clk_pll_wait_for_lock.exit

if.end28.i:                                       ; preds = %for.body.i
  tail call void %105(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %106 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %107, i32 0, i32 29
  %108 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %109
  br i1 %cmp24.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.do.end.i_crit_edge

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end28.i.do.end.i_crit_edge, %if.end.i143.do.end.i_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %clk_pll_wait_for_lock.exit

clk_pll_wait_for_lock.exit:                       ; preds = %do.end.i, %if.then27.i, %cond.false7.i
  %retval.0.i144 = phi i32 [ 0, %if.then27.i ], [ -1, %do.end.i ], [ 0, %cond.false7.i ]
  %110 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %params.i, align 4
  %defaults_set.i146 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %111, i32 0, i32 31
  %112 = ptrtoint ptr %defaults_set.i146 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %defaults_set.i146, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i147 = icmp eq i8 %113, 0
  br i1 %tobool.not.i147, label %clk_pll_wait_for_lock.exit.land.lhs.true75_crit_edge, label %land.lhs.true.i150

clk_pll_wait_for_lock.exit.land.lhs.true75_crit_edge: ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true75

land.lhs.true.i150:                               ; preds = %clk_pll_wait_for_lock.exit
  %ssc_ctrl_reg.i148 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %111, i32 0, i32 19
  %114 = ptrtoint ptr %ssc_ctrl_reg.i148 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ssc_ctrl_reg.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool2.not.i149 = icmp eq i32 %115, 0
  br i1 %tobool2.not.i149, label %land.lhs.true.i150.land.lhs.true75_crit_edge, label %if.then.i157

land.lhs.true.i150.land.lhs.true75_crit_edge:     ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true75

if.then.i157:                                     ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #12
  %clk_base.i151 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %116 = ptrtoint ptr %clk_base.i151 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk_base.i151, align 4
  %add.ptr.i152 = getelementptr i8, ptr %117, i32 %115
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #10, !srcloc !100
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  %120 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %params.i, align 4
  %ssc_ctrl_en_mask.i153 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %121, i32 0, i32 20
  %122 = ptrtoint ptr %ssc_ctrl_en_mask.i153 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ssc_ctrl_en_mask.i153, align 4
  %or.i154 = or i32 %123, %119
  %124 = tail call i32 @llvm.bswap.i32(i32 %or.i154) #10
  %125 = ptrtoint ptr %clk_base.i151 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %clk_base.i151, align 4
  %ssc_ctrl_reg8.i155 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %121, i32 0, i32 19
  %127 = ptrtoint ptr %ssc_ctrl_reg8.i155 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ssc_ctrl_reg8.i155, align 4
  %add.ptr9.i156 = getelementptr i8, ptr %126, i32 %128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i156, i32 %124) #10, !srcloc !102
  br label %land.lhs.true75

land.lhs.true75:                                  ; preds = %if.then.i157, %land.lhs.true.i150.land.lhs.true75_crit_edge, %clk_pll_wait_for_lock.exit.land.lhs.true75_crit_edge, %if.then45.land.lhs.true75_crit_edge
  %ret.2175 = phi i32 [ %retval.0.i144, %if.then.i157 ], [ 0, %if.then45.land.lhs.true75_crit_edge ], [ %retval.0.i144, %land.lhs.true.i150.land.lhs.true75_crit_edge ], [ %retval.0.i144, %clk_pll_wait_for_lock.exit.land.lhs.true75_crit_edge ]
  %129 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %params.i, align 4
  %post_rate_change = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %130, i32 0, i32 44
  %131 = ptrtoint ptr %post_rate_change to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %post_rate_change, align 4
  %tobool77.not = icmp eq ptr %132, null
  br i1 %tobool77.not, label %land.lhs.true75.cleanup_crit_edge, label %if.then78

land.lhs.true75.cleanup_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then78:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %132() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %land.lhs.true75.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %ret.2175, %if.then78 ], [ %ret.2175, %land.lhs.true75.cleanup_crit_edge ], [ %ret.1169, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %old_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_calc_dynamic_ramp_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %cfg, i32 noundef %rate, i32 noundef %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %vco_min = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vco_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vco_min, align 4
  %add = add i32 %rate, -1
  %sub = add i32 %add, %3
  %div = udiv i32 %sub, %rate
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cf_min.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cf_min.i, align 4
  %div.i = udiv i32 %parent_rate, %7
  %mdiv_default.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %mdiv_default.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mdiv_default.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool1.not.i = icmp eq i16 %9, 0
  %conv2.i = and i32 %div.i, 65535
  %conv5.i = zext i16 %9 to i32
  %10 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv5.i) #10
  %cond12.i = select i1 %tobool1.not.i, i32 %conv2.i, i32 %10
  br label %_pll_fixed_mdiv.exit

if.end.i:                                         ; preds = %if.end
  %mdiv_default13.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %mdiv_default13.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mdiv_default13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not.i = icmp eq i16 %12, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = zext i16 %12 to i32
  br label %_pll_fixed_mdiv.exit

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %cf_max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cf_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %parent_rate)
  %cmp19.i = icmp ult i32 %14, %parent_rate
  %..i = select i1 %cmp19.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit

_pll_fixed_mdiv.exit:                             ; preds = %if.end18.i, %if.then15.i, %if.then.i
  %retval.0.i = phi i32 [ %cond12.i, %if.then.i ], [ %conv17.i, %if.then15.i ], [ %..i, %if.end18.i ]
  %m = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %15 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %m, align 4
  %mul = mul i32 %div, %rate
  %output_rate = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 1
  %16 = ptrtoint ptr %output_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %output_rate, align 4
  %mul4 = mul i32 %retval.0.i, %mul
  %div5 = udiv i32 %mul4, %parent_rate
  %n = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %17 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div5, ptr %n, align 4
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %parent_rate, ptr %cfg, align 4
  %conv = trunc i32 %div to i8
  %19 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params, align 4
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i46 = icmp eq ptr %22, null
  br i1 %tobool.not.i46, label %_pll_fixed_mdiv.exit.cleanup_crit_edge, label %while.cond.preheader.i

_pll_fixed_mdiv.exit.cleanup_crit_edge:           ; preds = %_pll_fixed_mdiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader.i:                           ; preds = %_pll_fixed_mdiv.exit
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not15.i = icmp eq i8 %24, 0
  br i1 %tobool1.not15.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i48.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %25 = phi i8 [ %27, %if.end.i48.while.body.i_crit_edge ], [ %24, %while.cond.preheader.i.while.body.i_crit_edge ]
  %p_tohw.016.i = phi ptr [ %incdec.ptr.i, %if.end.i48.while.body.i_crit_edge ], [ %22, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %conv)
  %cmp.not.i = icmp ult i8 %25, %conv
  br i1 %cmp.not.i, label %if.end.i48, label %_p_div_to_hw.exit

if.end.i48:                                       ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i, align 1
  %tobool1.not.i47 = icmp eq i8 %27, 0
  br i1 %tobool1.not.i47, label %if.end.i48.cleanup_crit_edge, label %if.end.i48.while.body.i_crit_edge

if.end.i48.while.body.i_crit_edge:                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i48.cleanup_crit_edge:                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

_p_div_to_hw.exit:                                ; preds = %while.body.i
  %hw_val.i = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.016.i, i32 0, i32 1
  %28 = ptrtoint ptr %hw_val.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hw_val.i, align 1
  %p11 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %30 = ptrtoint ptr %p11 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %p11, align 4
  %31 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %params, align 4
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %div_nmp, align 4
  %divn_width = getelementptr inbounds %struct.div_nmp, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %divn_width to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %divn_width, align 1
  %conv14 = zext i8 %36 to i32
  %.highbits = lshr i32 %div5, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits)
  %cmp16.not = icmp eq i32 %.highbits, 0
  br i1 %cmp16.not, label %lor.lhs.false, label %_p_div_to_hw.exit.cleanup_crit_edge

_p_div_to_hw.exit.cleanup_crit_edge:              ; preds = %_p_div_to_hw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %_p_div_to_hw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vco_max = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %32, i32 0, i32 5
  %37 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %38)
  %cmp20 = icmp ugt i32 %mul, %38
  %spec.select = select i1 %cmp20, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %_p_div_to_hw.exit.cleanup_crit_edge, %if.end.i48.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %_pll_fixed_mdiv.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %_p_div_to_hw.exit.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ -22, %_pll_fixed_mdiv.exit.cleanup_crit_edge ], [ -22, %while.cond.preheader.i.cleanup_crit_edge ], [ -22, %if.end.i48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_calc_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %cfg, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %parent_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %parent_rate, label %do.end [
    i32 12000000, label %if.end.sw.bb_crit_edge
    i32 26000000, label %if.end.sw.bb_crit_edge139
    i32 13000000, label %sw.bb1
    i32 16800000, label %if.end.sw.bb4_crit_edge
    i32 19200000, label %if.end.sw.bb4_crit_edge140
    i32 9600000, label %if.end.sw.bb7_crit_edge
    i32 28800000, label %if.end.sw.bb7_crit_edge141
  ]

if.end.sw.bb7_crit_edge141:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end.sw.bb4_crit_edge140:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb_crit_edge139:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge139
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000001, i32 %rate)
  %cmp = icmp ult i32 %rate, 1000000001
  %cond = select i1 %cmp, i32 1000000, i32 2000000
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000001, i32 %rate)
  %cmp2 = icmp ult i32 %rate, 1000000001
  %cond3 = select i1 %cmp2, i32 1000000, i32 2600000
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge140
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000001, i32 %rate)
  %cmp5 = icmp ult i32 %rate, 1200000001
  %cond6 = select i1 %cmp5, i32 1200000, i32 2400000
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge141
  %div = udiv i32 %parent_rate, 1000000
  %div8 = udiv i32 %parent_rate, %div
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %parent_rate) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-pll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #10, !srcloc !118
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %cfreq.0 = phi i32 [ %div8, %sw.bb7 ], [ %cond6, %sw.bb4 ], [ %cond3, %sw.bb1 ], [ %cond, %sw.bb ]
  %output_rate = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 1
  %mul = mul i32 %cfreq.0, 200
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp17129 = icmp ugt i32 %mul, %rate
  br i1 %cmp17129, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %p_div.0131 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %storemerge130 = phi i32 [ %shl, %for.body.for.body_crit_edge ], [ %rate, %sw.epilog.for.body_crit_edge ]
  %inc = add i32 %p_div.0131, 1
  %shl = shl i32 %storemerge130, 1
  %cmp17 = icmp ult i32 %shl, %mul
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %storemerge.lcssa128 = phi i32 [ %rate, %sw.epilog.for.end_crit_edge ], [ %shl, %for.body.for.end_crit_edge ]
  %p_div.0.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %1 = ptrtoint ptr %output_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge.lcssa128, ptr %output_rate, align 4
  %div19 = udiv i32 %parent_rate, %cfreq.0
  %m = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div19, ptr %m, align 4
  %div21 = udiv i32 %storemerge.lcssa128, %cfreq.0
  %n = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div21, ptr %n, align 4
  %cpcon = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 5
  %4 = ptrtoint ptr %cpcon to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %cpcon, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cfreq.0, i32 %parent_rate)
  %cmp23 = icmp ugt i32 %cfreq.0, %parent_rate
  br i1 %cmp23, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %params, align 4
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %div_nmp, align 4
  %divm_width = getelementptr inbounds %struct.div_nmp, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %divm_width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %divm_width, align 1
  %conv = zext i8 %10 to i32
  %.highbits = lshr i32 %div19, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits)
  %cmp26.not = icmp eq i32 %.highbits, 0
  br i1 %cmp26.not, label %lor.lhs.false28, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %divn_width = getelementptr inbounds %struct.div_nmp, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %divn_width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %divn_width, align 1
  %conv32 = zext i8 %12 to i32
  %.highbits124 = lshr i32 %div21, %conv32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits124)
  %cmp35.not = icmp eq i32 %.highbits124, 0
  br i1 %cmp35.not, label %lor.lhs.false37, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false37:                                  ; preds = %lor.lhs.false28
  %shl38 = shl nuw i32 1, %p_div.0.lcssa
  %flags = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 26
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %cond.false, label %lor.lhs.false37.cond.end_crit_edge

lor.lhs.false37.cond.end_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  %divp_width = getelementptr inbounds %struct.div_nmp, ptr %8, i32 0, i32 5
  %15 = ptrtoint ptr %divp_width to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %divp_width, align 1
  %conv43 = zext i8 %16 to i32
  %notmask = shl nsw i32 -1, %conv43
  %sub45 = xor i32 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.lhs.false37.cond.end_crit_edge
  %cond46 = phi i32 [ %sub45, %cond.false ], [ 1, %lor.lhs.false37.cond.end_crit_edge ]
  %shl47 = shl nuw i32 1, %cond46
  call void @__sanitizer_cov_trace_cmp4(i32 %shl38, i32 %shl47)
  %cmp48 = icmp sgt i32 %shl38, %shl47
  br i1 %cmp48, label %cond.end.cleanup_crit_edge, label %lor.lhs.false50

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false50:                                  ; preds = %cond.end
  %vco_max = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %6, i32 0, i32 5
  %17 = ptrtoint ptr %vco_max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vco_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa128, i32 %18)
  %cmp53 = icmp ugt i32 %storemerge.lcssa128, %18
  br i1 %cmp53, label %lor.lhs.false50.cleanup_crit_edge, label %if.end56

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false50
  %add = add i32 %parent_rate, -1
  %sub59 = add i32 %add, %div19
  %div61 = udiv i32 %sub59, %div19
  %mul62 = mul i32 %div61, %div21
  %shr = lshr i32 %mul62, %p_div.0.lcssa
  %19 = ptrtoint ptr %output_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %output_rate, align 4
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params, align 4
  %pdiv_tohw = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %21, i32 0, i32 32
  %22 = ptrtoint ptr %pdiv_tohw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdiv_tohw, align 4
  %tobool66.not = icmp eq ptr %23, null
  br i1 %tobool66.not, label %if.else76, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end56
  %conv69 = trunc i32 %shl38 to i8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.not15.i = icmp eq i8 %25, 0
  br i1 %tobool1.not15.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %26 = phi i8 [ %28, %if.end.i.while.body.i_crit_edge ], [ %25, %while.cond.preheader.i.while.body.i_crit_edge ]
  %p_tohw.016.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %23, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %conv69)
  %cmp.not.i = icmp ult i8 %26, %conv69
  br i1 %cmp.not.i, label %if.end.i, label %_p_div_to_hw.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.i, align 1
  %tobool1.not.i = icmp eq i8 %28, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

_p_div_to_hw.exit:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw_val.i = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.016.i, i32 0, i32 1
  %29 = ptrtoint ptr %hw_val.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hw_val.i, align 1
  br label %cleanup.sink.split

if.else76:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %conv77 = trunc i32 %p_div.0.lcssa to i8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else76, %_p_div_to_hw.exit
  %.sink = phi i8 [ %30, %_p_div_to_hw.exit ], [ %conv77, %if.else76 ]
  %p = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %31 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %lor.lhs.false50.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false50.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %lor.lhs.false28.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %while.cond.preheader.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_dev_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllu_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #10
  %call1 = tail call ptr @clk_hw_get_parent(ptr noundef %call) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call1) #10
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %do.body8

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end17

if.end17:                                         ; preds = %do.body8, %if.end.if.end17_crit_edge
  %flags.0 = phi i32 [ %call12, %do.body8 ], [ 0, %if.end.if.end17_crit_edge ]
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

if.end17.clk_pll_is_enabled.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %if.end17
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 248
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %9 = and i32 %8, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %9)
  %10 = icmp eq i32 %9, 524288
  br i1 %10, label %land.lhs.true.i.if.then20_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.then20_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %if.end17.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_base.i, align 4
  %13 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %clk_pll_is_enabled.exit.if.then20_crit_edge, label %clk_pll_is_enabled.exit.if.end21_crit_edge

clk_pll_is_enabled.exit.if.end21_crit_edge:       ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

clk_pll_is_enabled.exit.if.then20_crit_edge:      ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %clk_pll_is_enabled.exit.if.then20_crit_edge, %land.lhs.true.i.if.then20_crit_edge
  tail call fastcc void @_clk_pll_enable(ptr noundef %hw)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %clk_pll_is_enabled.exit.if.end21_crit_edge
  %19 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params.i, align 4
  %flags.i144 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %flags.i144 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i144, align 4
  %and.i145 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i146 = icmp eq i32 %and.i145, 0
  br i1 %tobool.not.i146, label %cond.false7.i, label %if.end.i149

cond.false7.i:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 29
  %23 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #10
  br label %clk_pll_wait_for_lock.exit

if.end.i149:                                      ; preds = %if.end21
  %clk_base.i147 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %clk_base.i147 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_base.i147, align 4
  %and13.i = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 7
  %base_reg.i148 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i148, ptr %misc_reg.i
  %28 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %27, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 9
  %29 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 29
  %31 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2451.i = icmp sgt i32 %32, 0
  br i1 %cmp2451.i, label %if.end.i149.for.body.i_crit_edge, label %if.end.i149.clk_pll_wait_for_lock.exit.thread_crit_edge

if.end.i149.clk_pll_wait_for_lock.exit.thread_crit_edge: ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_wait_for_lock.exit.thread

if.end.i149.for.body.i_crit_edge:                 ; preds = %if.end.i149
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end.i149.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %if.end.i149.for.body.i_crit_edge ]
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %and25.i = and i32 %34, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %30)
  %cmp26.i = icmp eq i32 %and25.i, %30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %35(i32 noundef 10737400) #10
  br label %clk_pll_wait_for_lock.exit

if.end28.i:                                       ; preds = %for.body.i
  tail call void %35(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %36 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %37, i32 0, i32 29
  %38 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %39
  br i1 %cmp24.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.clk_pll_wait_for_lock.exit.thread_crit_edge

if.end28.i.clk_pll_wait_for_lock.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_wait_for_lock.exit.thread

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

clk_pll_wait_for_lock.exit.thread:                ; preds = %if.end28.i.clk_pll_wait_for_lock.exit.thread_crit_edge, %if.end.i149.clk_pll_wait_for_lock.exit.thread_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %out

clk_pll_wait_for_lock.exit:                       ; preds = %if.then27.i, %cond.false7.i
  %40 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call4, label %do.end38 [
    i32 13000000, label %clk_pll_wait_for_lock.exit.if.end41_crit_edge
    i32 19200000, label %if.end41.fold.split
    i32 12000000, label %if.end41.fold.split164
    i32 26000000, label %if.end41.fold.split165
    i32 16800000, label %if.end41.fold.split166
    i32 38400000, label %if.end41.fold.split167
  ]

clk_pll_wait_for_lock.exit.if.end41_crit_edge:    ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end38:                                         ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %call4) #13
  br label %out

if.end41.fold.split:                              ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split164:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split165:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split166:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split167:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.end41.fold.split167, %if.end41.fold.split166, %if.end41.fold.split165, %if.end41.fold.split164, %if.end41.fold.split, %clk_pll_wait_for_lock.exit.if.end41_crit_edge
  %i.0159.lcssa = phi i32 [ 0, %clk_pll_wait_for_lock.exit.if.end41_crit_edge ], [ 1, %if.end41.fold.split ], [ 2, %if.end41.fold.split164 ], [ 3, %if.end41.fold.split165 ], [ 4, %if.end41.fold.split166 ], [ 5, %if.end41.fold.split167 ]
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %41 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_base, align 4
  %43 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params.i, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_reg, align 4
  %add.ptr43 = getelementptr i8, ptr %42, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #10, !srcloc !100
  %48 = and i32 %47, -2
  %49 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk_base, align 4
  %51 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %params.i, align 4
  %base_reg48 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %base_reg48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_reg48, align 4
  %add.ptr49 = getelementptr i8, ptr %50, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %48) #10, !srcloc !102
  %55 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_base, align 4
  %add.ptr52 = getelementptr i8, ptr %56, i32 1160
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #10, !srcloc !100
  %stable_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0159.lcssa, i32 2
  %58 = ptrtoint ptr %stable_count to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %stable_count, align 1
  %conv56 = zext i8 %59 to i32
  %shl = shl nuw nsw i32 %conv56, 6
  %active_delay_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0159.lcssa, i32 3
  %60 = ptrtoint ptr %active_delay_count to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %active_delay_count, align 2
  %62 = and i8 %61, 63
  %and60 = zext i8 %62 to i32
  %shl61 = shl nuw nsw i32 %and60, 18
  %63 = and i32 %57, 704643327
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %and58.masked.masked.masked = or i32 %shl, %64
  %and65 = or i32 %shl61, %and58.masked.masked.masked
  %65 = tail call i32 @llvm.bswap.i32(i32 %and65)
  %66 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk_base, align 4
  %add.ptr67 = getelementptr i8, ptr %67, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %65) #10, !srcloc !102
  %68 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk_base, align 4
  %add.ptr70 = getelementptr i8, ptr %69, i32 1156
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !100
  %enable_delay_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0159.lcssa, i32 1
  %71 = ptrtoint ptr %enable_delay_count to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %enable_delay_count, align 4
  %and75 = zext i8 %72 to i32
  %shl76 = shl i32 %and75, 27
  %xtal_freq_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0159.lcssa, i32 4
  %73 = ptrtoint ptr %xtal_freq_count to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %xtal_freq_count, align 1
  %conv79 = zext i8 %74 to i32
  %75 = and i32 %70, 10550791
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %and78.masked.masked.masked = or i32 %shl76, %76
  %and85 = or i32 %and78.masked.masked.masked, %conv79
  %77 = tail call i32 @llvm.bswap.i32(i32 %and85)
  %78 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk_base, align 4
  %add.ptr87 = getelementptr i8, ptr %79, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %77) #10, !srcloc !102
  br label %out

out:                                              ; preds = %if.end41, %do.end38, %clk_pll_wait_for_lock.exit.thread
  %ret.0 = phi i32 [ 0, %if.end41 ], [ -22, %do.end38 ], [ -1, %clk_pll_wait_for_lock.exit.thread ]
  %80 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lock, align 4
  %tobool89.not = icmp eq ptr %81, null
  br i1 %tobool89.not, label %out.cleanup_crit_edge, label %if.then90

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then90:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %81, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %out.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %if.then90 ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_ramp_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %2 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  %3 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prate, align 4
  %conv = zext i32 %4 to i64
  %call = call fastcc i32 @_pll_ramp_calc_pll(ptr noundef %hw, ptr noundef nonnull %cfg, i32 noundef %rate, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params.i, align 4
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %_hw_to_p_div.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not17.i = icmp eq i8 %13, 0
  br i1 %tobool1.not17.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.body.i.preheader

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  %hw_val.i330 = getelementptr inbounds %struct.pdiv_map, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %hw_val.i330 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hw_val.i330, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %7)
  %cmp.i331 = icmp eq i8 %15, %7
  br i1 %cmp.i331, label %while.body.i.preheader._hw_to_p_div.exit.thread304_crit_edge, label %while.body.i.preheader.while.cond.i_crit_edge

while.body.i.preheader.while.cond.i_crit_edge:    ; preds = %while.body.i.preheader
  br label %while.cond.i

while.body.i.preheader._hw_to_p_div.exit.thread304_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %_hw_to_p_div.exit.thread304

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.body.i.preheader.while.cond.i_crit_edge
  %p_tohw.018.i332 = phi ptr [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ], [ %11, %while.body.i.preheader.while.cond.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.pdiv_map, ptr %p_tohw.018.i332, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %hw_val.i = getelementptr %struct.pdiv_map, ptr %p_tohw.018.i332, i32 1, i32 1
  %18 = ptrtoint ptr %hw_val.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hw_val.i, align 1
  %cmp.i = icmp eq i8 %19, %7
  br i1 %cmp.i, label %while.body.i._hw_to_p_div.exit.thread304_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i._hw_to_p_div.exit.thread304_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_hw_to_p_div.exit.thread304

_hw_to_p_div.exit.thread304:                      ; preds = %while.body.i._hw_to_p_div.exit.thread304_crit_edge, %while.body.i.preheader._hw_to_p_div.exit.thread304_crit_edge
  %.lcssa = phi i8 [ %13, %while.body.i.preheader._hw_to_p_div.exit.thread304_crit_edge ], [ %17, %while.body.i._hw_to_p_div.exit.thread304_crit_edge ]
  %conv6.i = zext i8 %.lcssa to i32
  br label %if.end6

_hw_to_p_div.exit:                                ; preds = %if.end
  %conv8.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %7)
  %cmp3 = icmp eq i8 %7, 31
  br i1 %cmp3, label %_hw_to_p_div.exit.cleanup_crit_edge, label %_hw_to_p_div.exit.if.end6_crit_edge

_hw_to_p_div.exit.if.end6_crit_edge:              ; preds = %_hw_to_p_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

_hw_to_p_div.exit.cleanup_crit_edge:              ; preds = %_hw_to_p_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %_hw_to_p_div.exit.if.end6_crit_edge, %_hw_to_p_div.exit.thread304
  %retval.0.i307 = phi i32 [ %conv6.i, %_hw_to_p_div.exit.thread304 ], [ %shl.i, %_hw_to_p_div.exit.if.end6_crit_edge ]
  %set_gain = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %9, i32 0, i32 38
  %20 = ptrtoint ptr %set_gain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_gain, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then7

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void %21(ptr noundef nonnull %cfg) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end6.if.end10_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %conv11 = zext i32 %23 to i64
  %mul = mul nuw i64 %conv11, %conv
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %mul12 = mul i32 %25, %retval.0.i307
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp185 = icmp ult i64 %mul, 4294967296
  br i1 %cmp185, label %if.then189, label %if.else195, !prof !104

if.then189:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv190 = trunc i64 %mul to i32
  %div193 = udiv i32 %conv190, %mul12
  br label %cleanup

if.else195:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul12, i64 %mul) #14, !srcloc !105
  %asmresult1.i = extractvalue { i64, i64 } %26, 1
  %extract.t327 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else195, %if.then189, %_hw_to_p_div.exit.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %shl.i, %_hw_to_p_div.exit.cleanup_crit_edge ], [ -22, %while.cond.preheader.i.cleanup_crit_edge ], [ %div193, %if.then189 ], [ %extract.t327, %if.else195 ], [ -22, %while.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllxc_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  %old_cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %old_cfg) #10
  %4 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 4
  %7 = call ptr @memset(ptr %old_cfg, i32 255, i32 20)
  %call = call fastcc i32 @_pll_ramp_calc_pll(ptr noundef %hw, ptr noundef nonnull %cfg, i32 noundef %rate, i32 noundef %parent_rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.body2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %9) #10
  br label %if.end10

if.end10:                                         ; preds = %do.body2, %if.end.if.end10_crit_edge
  %flags.0 = phi i32 [ %call7, %do.body2 ], [ 0, %if.end.if.end10_crit_edge ]
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %old_cfg)
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 4
  %flags11 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags11, align 4
  %and = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %6, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %2, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp17.not = icmp eq i32 %18, %20
  br i1 %cmp17.not, label %lor.lhs.false, label %if.end15.if.then29_crit_edge

if.end15.if.then29_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end15
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %4, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp20.not = icmp eq i32 %22, %24
  br i1 %cmp20.not, label %lor.lhs.false22, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp27.not = icmp eq i8 %26, %28
  br i1 %cmp27.not, label %lor.lhs.false22.if.end31_crit_edge, label %lor.lhs.false22.if.then29_crit_edge

lor.lhs.false22.if.then29_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.lhs.false22.if.end31_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %lor.lhs.false22.if.then29_crit_edge, %lor.lhs.false.if.then29_crit_edge, %if.end15.if.then29_crit_edge
  %call30 = call fastcc i32 @_program_pll(ptr noundef %hw, ptr noundef nonnull %cfg, i32 noundef %rate)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %lor.lhs.false22.if.end31_crit_edge
  %ret.0 = phi i32 [ %call30, %if.then29 ], [ %call, %lor.lhs.false22.if.end31_crit_edge ]
  %29 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock, align 4
  %tobool33.not = icmp eq ptr %30, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %30, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %if.then34 ], [ %ret.0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %old_cfg) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_pll_ramp_calc_pll(ptr nocapture noundef readonly %hw, ptr nocapture noundef %cfg, i32 noundef %rate, i32 noundef %parent_rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %freq_table.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_table.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not72.i = icmp eq i32 %5, 0
  br i1 %cmp.not72.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %6 = phi i32 [ %10, %for.inc.i.for.body.i_crit_edge ], [ %5, %entry.for.body.i_crit_edge ]
  %sel.073.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %parent_rate)
  %cmp2.i = icmp eq i32 %6, %parent_rate
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %output_rate.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 1
  %7 = ptrtoint ptr %output_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %rate)
  %cmp3.i = icmp eq i32 %8, %rate
  br i1 %cmp3.i, label %if.end7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end7.i:                                        ; preds = %land.lhs.true.i
  %output_rate.i.le = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 1
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %p14.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 4
  %13 = ptrtoint ptr %p14.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %p14.i, align 4
  br i1 %tobool.not.i, label %cond.false21.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.end7.i
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not15.i.i = icmp eq i8 %16, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i.if.then_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.if.then_crit_edge:       ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %17 = phi i8 [ %19, %if.end.i.i.while.body.i.i_crit_edge ], [ %16, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %p_tohw.016.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %12, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %14)
  %cmp.not.i.i = icmp ult i8 %17, %14
  br i1 %cmp.not.i.i, label %if.end.i.i, label %_p_div_to_hw.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool1.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.then_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

_p_div_to_hw.exit.i:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw_val.i.i = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %hw_val.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hw_val.i.i, align 1
  %conv6.i.i = zext i8 %21 to i32
  br label %if.else

cond.false21.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv23.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i.i = icmp eq i8 %14, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %conv23.i, i1 true) #10, !range !106
  %sub.i.op.i.i = xor i32 %22, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  br label %if.else

if.then:                                          ; preds = %if.end.i.i.if.then_crit_edge, %while.cond.preheader.i.i.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i39 = icmp eq i32 %rate, 0
  br i1 %tobool.not.i39, label %if.then.if.end22_crit_edge, label %if.end.i

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end.i:                                         ; preds = %if.then
  %23 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %params.i, align 4
  %vco_min.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %vco_min.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vco_min.i, align 4
  %add.i = add i32 %rate, -1
  %sub.i41 = add i32 %add.i, %26
  %div.i = udiv i32 %sub.i41, %rate
  %flags.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %24, i32 0, i32 26
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i43, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %cf_min.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cf_min.i.i, align 4
  %div.i.i = udiv i32 %parent_rate, %30
  %mdiv_default.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %24, i32 0, i32 36
  %31 = ptrtoint ptr %mdiv_default.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mdiv_default.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool1.not.i.i42 = icmp eq i16 %32, 0
  %conv2.i.i = and i32 %div.i.i, 65535
  %conv5.i.i = zext i16 %32 to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %conv2.i.i, i32 %conv5.i.i) #10
  %cond12.i.i = select i1 %tobool1.not.i.i42, i32 %conv2.i.i, i32 %33
  br label %_pll_fixed_mdiv.exit.i

if.end.i.i43:                                     ; preds = %if.end.i
  %mdiv_default13.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %24, i32 0, i32 36
  %34 = ptrtoint ptr %mdiv_default13.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mdiv_default13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool14.not.i.i = icmp eq i16 %35, 0
  br i1 %tobool14.not.i.i, label %if.end18.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i.i = zext i16 %35 to i32
  br label %_pll_fixed_mdiv.exit.i

if.end18.i.i:                                     ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %24, i32 0, i32 3
  %36 = ptrtoint ptr %cf_max.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cf_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %parent_rate)
  %cmp19.i.i = icmp ult i32 %37, %parent_rate
  %..i.i = select i1 %cmp19.i.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit.i

_pll_fixed_mdiv.exit.i:                           ; preds = %if.end18.i.i, %if.then15.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %cond12.i.i, %if.then.i.i ], [ %conv17.i.i, %if.then15.i.i ], [ %..i.i, %if.end18.i.i ]
  %m.i44 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %38 = ptrtoint ptr %m.i44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i.i, ptr %m.i44, align 4
  %mul.i = mul i32 %div.i, %rate
  %output_rate.i45 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 1
  %39 = ptrtoint ptr %output_rate.i45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul.i, ptr %output_rate.i45, align 4
  %mul4.i = mul i32 %retval.0.i.i, %mul.i
  %div5.i = udiv i32 %mul4.i, %parent_rate
  %n.i46 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %40 = ptrtoint ptr %n.i46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div5.i, ptr %n.i46, align 4
  %41 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %parent_rate, ptr %cfg, align 4
  %conv.i = trunc i32 %div.i to i8
  %42 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %params.i, align 4
  %pdiv_tohw.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %43, i32 0, i32 32
  %44 = ptrtoint ptr %pdiv_tohw.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdiv_tohw.i.i, align 4
  %tobool.not.i46.i = icmp eq ptr %45, null
  br i1 %tobool.not.i46.i, label %_pll_fixed_mdiv.exit.i.if.end22_crit_edge, label %while.cond.preheader.i.i48

_pll_fixed_mdiv.exit.i.if.end22_crit_edge:        ; preds = %_pll_fixed_mdiv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

while.cond.preheader.i.i48:                       ; preds = %_pll_fixed_mdiv.exit.i
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool1.not15.i.i47 = icmp eq i8 %47, 0
  br i1 %tobool1.not15.i.i47, label %while.cond.preheader.i.i48.if.end22_crit_edge, label %while.cond.preheader.i.i48.while.body.i.i51_crit_edge

while.cond.preheader.i.i48.while.body.i.i51_crit_edge: ; preds = %while.cond.preheader.i.i48
  br label %while.body.i.i51

while.cond.preheader.i.i48.if.end22_crit_edge:    ; preds = %while.cond.preheader.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

while.body.i.i51:                                 ; preds = %if.end.i48.i.while.body.i.i51_crit_edge, %while.cond.preheader.i.i48.while.body.i.i51_crit_edge
  %48 = phi i8 [ %50, %if.end.i48.i.while.body.i.i51_crit_edge ], [ %47, %while.cond.preheader.i.i48.while.body.i.i51_crit_edge ]
  %p_tohw.016.i.i49 = phi ptr [ %incdec.ptr.i.i52, %if.end.i48.i.while.body.i.i51_crit_edge ], [ %45, %while.cond.preheader.i.i48.while.body.i.i51_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %conv.i)
  %cmp.not.i.i50 = icmp ult i8 %48, %conv.i
  br i1 %cmp.not.i.i50, label %if.end.i48.i, label %_p_div_to_hw.exit.i54

if.end.i48.i:                                     ; preds = %while.body.i.i51
  %incdec.ptr.i.i52 = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i.i49, i32 1
  %49 = ptrtoint ptr %incdec.ptr.i.i52 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr.i.i52, align 1
  %tobool1.not.i47.i = icmp eq i8 %50, 0
  br i1 %tobool1.not.i47.i, label %if.end.i48.i.if.end22_crit_edge, label %if.end.i48.i.while.body.i.i51_crit_edge

if.end.i48.i.while.body.i.i51_crit_edge:          ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i51

if.end.i48.i.if.end22_crit_edge:                  ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

_p_div_to_hw.exit.i54:                            ; preds = %while.body.i.i51
  %hw_val.i.i53 = getelementptr inbounds %struct.pdiv_map, ptr %p_tohw.016.i.i49, i32 0, i32 1
  %51 = ptrtoint ptr %hw_val.i.i53 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hw_val.i.i53, align 1
  %p11.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %53 = ptrtoint ptr %p11.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %p11.i, align 4
  %54 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %params.i, align 4
  %div_nmp.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %div_nmp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %div_nmp.i, align 4
  %divn_width.i = getelementptr inbounds %struct.div_nmp, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %divn_width.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %divn_width.i, align 1
  %conv14.i = zext i8 %59 to i32
  %.highbits.i = lshr i32 %div5.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits.i)
  %cmp16.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %cmp16.not.i, label %lor.lhs.false.i, label %_p_div_to_hw.exit.i54.if.end22_crit_edge

_p_div_to_hw.exit.i54.if.end22_crit_edge:         ; preds = %_p_div_to_hw.exit.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

lor.lhs.false.i:                                  ; preds = %_p_div_to_hw.exit.i54
  call void @__sanitizer_cov_trace_pc() #12
  %vco_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %55, i32 0, i32 5
  %60 = ptrtoint ptr %vco_max.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vco_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %61)
  %cmp20.i = icmp ugt i32 %mul.i, %61
  %spec.select.i = select i1 %cmp20.i, i32 -22, i32 0
  br label %if.end22

if.else:                                          ; preds = %cond.false21.i, %_p_div_to_hw.exit.i
  %p.0.i = phi i32 [ %conv6.i.i, %_p_div_to_hw.exit.i ], [ %sub.i.i, %cond.false21.i ]
  %62 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %parent_rate, ptr %cfg, align 4
  %63 = ptrtoint ptr %output_rate.i.le to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %output_rate.i.le, align 4
  %output_rate31.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 1
  %65 = ptrtoint ptr %output_rate31.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %output_rate31.i, align 4
  %m.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 3
  %66 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %m.i, align 4
  %m32.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %68 = ptrtoint ptr %m32.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %m32.i, align 4
  %n.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 2
  %69 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n.i, align 4
  %n33.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %71 = ptrtoint ptr %n33.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %n33.i, align 4
  %conv34.i = trunc i32 %p.0.i to i8
  %p35.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %72 = ptrtoint ptr %p35.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv34.i, ptr %p35.i, align 4
  %cpcon.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 5
  %73 = ptrtoint ptr %cpcon.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %cpcon.i, align 1
  %cpcon36.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 5
  %75 = ptrtoint ptr %cpcon36.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %cpcon36.i, align 1
  %sdm_data.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 6
  %76 = ptrtoint ptr %sdm_data.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %sdm_data.i, align 2
  %sdm_data37.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 6
  %78 = ptrtoint ptr %sdm_data37.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %sdm_data37.i, align 2
  %79 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %80, i32 0, i32 26
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %82, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i56 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i56, label %if.end.i58, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %cf_min.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cf_min.i, align 4
  %div.i57 = udiv i32 %parent_rate, %84
  %mdiv_default.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %80, i32 0, i32 36
  %85 = ptrtoint ptr %mdiv_default.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %mdiv_default.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool1.not.i = icmp eq i16 %86, 0
  %conv2.i = and i32 %div.i57, 65535
  %conv5.i = zext i16 %86 to i32
  %87 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv5.i) #10
  %cond12.i = select i1 %tobool1.not.i, i32 %conv2.i, i32 %87
  br label %_pll_fixed_mdiv.exit

if.end.i58:                                       ; preds = %if.else
  %mdiv_default13.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %80, i32 0, i32 36
  %88 = ptrtoint ptr %mdiv_default13.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mdiv_default13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool14.not.i = icmp eq i16 %89, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = zext i16 %89 to i32
  br label %_pll_fixed_mdiv.exit

if.end18.i:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %80, i32 0, i32 3
  %90 = ptrtoint ptr %cf_max.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cf_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %parent_rate)
  %cmp19.i = icmp ult i32 %91, %parent_rate
  %..i = select i1 %cmp19.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit

_pll_fixed_mdiv.exit:                             ; preds = %if.end18.i, %if.then15.i, %if.then.i
  %retval.0.i59 = phi i32 [ %cond12.i, %if.then.i ], [ %conv17.i, %if.then15.i ], [ %..i, %if.end18.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %retval.0.i59)
  %cmp3.not = icmp eq i32 %67, %retval.0.i59
  br i1 %cmp3.not, label %_pll_fixed_mdiv.exit.if.end22_crit_edge, label %do.end

_pll_fixed_mdiv.exit.if.end22_crit_edge:          ; preds = %_pll_fixed_mdiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end:                                           ; preds = %_pll_fixed_mdiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1315, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end22:                                         ; preds = %_pll_fixed_mdiv.exit.if.end22_crit_edge, %lor.lhs.false.i, %_p_div_to_hw.exit.i54.if.end22_crit_edge, %if.end.i48.i.if.end22_crit_edge, %while.cond.preheader.i.i48.if.end22_crit_edge, %_pll_fixed_mdiv.exit.i.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %err.0 = phi i32 [ 0, %_pll_fixed_mdiv.exit.if.end22_crit_edge ], [ -22, %if.then.if.end22_crit_edge ], [ -22, %_p_div_to_hw.exit.i54.if.end22_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ], [ -22, %_pll_fixed_mdiv.exit.i.if.end22_crit_edge ], [ -22, %while.cond.preheader.i.i48.if.end22_crit_edge ], [ -22, %if.end.i48.i.if.end22_crit_edge ]
  %p = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %92 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %p, align 4
  %conv = zext i8 %93 to i32
  %94 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %params.i, align 4
  %max_p = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %95, i32 0, i32 30
  %96 = ptrtoint ptr %max_p to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %conv)
  %cmp24 = icmp slt i32 %97, %conv
  %spec.select = select i1 %cmp24, i32 -22, i32 %err.0
  br label %out

out:                                              ; preds = %if.end22, %do.end
  %err.1 = phi i32 [ -22, %do.end ], [ %spec.select, %if.end22 ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllre_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %conv = zext i32 %parent_rate to i64
  %2 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %cfg)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %conv1 = zext i32 %4 to i64
  %mul = mul nuw i64 %conv1, %conv
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp169 = icmp ult i64 %mul, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !104

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv174 = trunc i64 %mul to i32
  %div177 = udiv i32 %conv174, %6
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %mul) #14, !srcloc !105
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %extract.t293 = trunc i64 %asmresult1.i to i32
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %rate.0.off0 = phi i32 [ %div177, %if.then173 ], [ %extract.t293, %if.else179 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %rate.0.off0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllre_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %conv.i = zext i32 %1 to i64
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cf_min.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cf_min.i.i, align 4
  %div.i.i = udiv i32 %1, %7
  %mdiv_default.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 36
  %8 = ptrtoint ptr %mdiv_default.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mdiv_default.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool1.not.i.i = icmp eq i16 %9, 0
  %conv2.i.i = and i32 %div.i.i, 65535
  %conv5.i.i = zext i16 %9 to i32
  %10 = tail call i32 @llvm.umin.i32(i32 %conv2.i.i, i32 %conv5.i.i) #10
  %cond12.i.i = select i1 %tobool1.not.i.i, i32 %conv2.i.i, i32 %10
  br label %_pll_fixed_mdiv.exit.i

if.end.i.i:                                       ; preds = %entry
  %mdiv_default13.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 36
  %11 = ptrtoint ptr %mdiv_default13.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mdiv_default13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool14.not.i.i, label %if.end18.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i.i = zext i16 %12 to i32
  br label %_pll_fixed_mdiv.exit.i

if.end18.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %cf_max.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cf_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp19.i.i = icmp ult i32 %14, %1
  %..i.i = select i1 %cmp19.i.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit.i

_pll_fixed_mdiv.exit.i:                           ; preds = %if.end18.i.i, %if.then15.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %cond12.i.i, %if.then.i.i ], [ %conv17.i.i, %if.then15.i.i ], [ %..i.i, %if.end18.i.i ]
  %mul.i = mul i32 %retval.0.i.i, %rate
  %div.i = udiv i32 %mul.i, %1
  %conv3.mask.i = and i32 %div.i, 65535
  %conv4.i = zext i32 %conv3.mask.i to i64
  %mul5.i = mul nuw nsw i64 %conv4.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul5.i)
  %cmp175.i = icmp ult i64 %mul5.i, 4294967296
  br i1 %cmp175.i, label %if.then179.i, label %if.else185.i, !prof !104

if.then179.i:                                     ; preds = %_pll_fixed_mdiv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv180.i = trunc i64 %mul5.i to i32
  %div183.i = udiv i32 %conv180.i, %retval.0.i.i
  br label %_pllre_calc_rate.exit

if.else185.i:                                     ; preds = %_pll_fixed_mdiv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval.0.i.i, i64 %mul5.i) #14, !srcloc !105
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  %extract.t316.i = trunc i64 %asmresult1.i.i to i32
  br label %_pllre_calc_rate.exit

_pllre_calc_rate.exit:                            ; preds = %if.else185.i, %if.then179.i
  %output_rate.0.off0.i = phi i32 [ %div183.i, %if.then179.i ], [ %extract.t316.i, %if.else185.i ]
  ret i32 %output_rate.0.off0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllre_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  %old_cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %old_cfg) #10
  %4 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 4
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %7 = call ptr @memset(ptr %old_cfg, i32 255, i32 20)
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %9) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %conv.i = zext i32 %parent_rate to i64
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cf_min.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %cf_min.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cf_min.i.i, align 4
  %div.i.i = udiv i32 %parent_rate, %15
  %mdiv_default.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %11, i32 0, i32 36
  %16 = ptrtoint ptr %mdiv_default.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mdiv_default.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool1.not.i.i = icmp eq i16 %17, 0
  %conv2.i.i = and i32 %div.i.i, 65535
  %conv5.i.i = zext i16 %17 to i32
  %18 = tail call i32 @llvm.umin.i32(i32 %conv2.i.i, i32 %conv5.i.i) #10
  %cond12.i.i = select i1 %tobool1.not.i.i, i32 %conv2.i.i, i32 %18
  br label %_pll_fixed_mdiv.exit.i

if.end.i.i:                                       ; preds = %if.end
  %mdiv_default13.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %11, i32 0, i32 36
  %19 = ptrtoint ptr %mdiv_default13.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mdiv_default13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool14.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool14.not.i.i, label %if.end18.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i.i = zext i16 %20 to i32
  br label %_pll_fixed_mdiv.exit.i

if.end18.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cf_max.i.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %cf_max.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cf_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %parent_rate)
  %cmp19.i.i = icmp ult i32 %22, %parent_rate
  %..i.i = select i1 %cmp19.i.i, i32 2, i32 1
  br label %_pll_fixed_mdiv.exit.i

_pll_fixed_mdiv.exit.i:                           ; preds = %if.end18.i.i, %if.then15.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %cond12.i.i, %if.then.i.i ], [ %conv17.i.i, %if.then15.i.i ], [ %..i.i, %if.end18.i.i ]
  %mul.i = mul i32 %retval.0.i.i, %rate
  %div.i = udiv i32 %mul.i, %parent_rate
  %conv3.mask.i = and i32 %div.i, 65535
  %conv4.i = zext i32 %conv3.mask.i to i64
  %mul5.i = mul nuw nsw i64 %conv4.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul5.i)
  %cmp175.i = icmp ult i64 %mul5.i, 4294967296
  br i1 %cmp175.i, label %_pll_fixed_mdiv.exit.i._pllre_calc_rate.exit_crit_edge, label %if.else185.i, !prof !104

_pll_fixed_mdiv.exit.i._pllre_calc_rate.exit_crit_edge: ; preds = %_pll_fixed_mdiv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_pllre_calc_rate.exit

if.else185.i:                                     ; preds = %_pll_fixed_mdiv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval.0.i.i, i64 %mul5.i) #14, !srcloc !105
  br label %_pllre_calc_rate.exit

_pllre_calc_rate.exit:                            ; preds = %if.else185.i, %_pll_fixed_mdiv.exit.i._pllre_calc_rate.exit_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.i, ptr %1, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv3.mask.i, ptr %0, align 4
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %old_cfg)
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %2, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %30)
  %cmp10.not = icmp eq i32 %retval.0.i.i, %30
  br i1 %cmp10.not, label %lor.lhs.false, label %_pllre_calc_rate.exit.if.then15_crit_edge

_pllre_calc_rate.exit.if.then15_crit_edge:        ; preds = %_pllre_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

lor.lhs.false:                                    ; preds = %_pllre_calc_rate.exit
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.mask.i, i32 %32)
  %cmp13.not = icmp eq i32 %conv3.mask.i, %32
  br i1 %cmp13.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %_pllre_calc_rate.exit.if.then15_crit_edge
  %33 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i42 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i42, label %if.then15.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

if.then15.clk_pll_is_enabled.exit_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %if.then15
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %37 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 248
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %40 = and i32 %39, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %40)
  %41 = icmp eq i32 %40, 524288
  br i1 %41, label %land.lhs.true.i.if.end24.critedge_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.end24.critedge_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.critedge

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %if.then15.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %42 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_base.i, align 4
  %44 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %43, i32 %47
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %49 = and i32 %48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool17.not = icmp eq i32 %49, 0
  br i1 %tobool17.not, label %clk_pll_is_enabled.exit.if.end24.critedge_crit_edge, label %if.then18

clk_pll_is_enabled.exit.if.end24.critedge_crit_edge: ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.critedge

if.then18:                                        ; preds = %clk_pll_is_enabled.exit
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw)
  call fastcc void @_update_pll_mnp(ptr noundef %hw, ptr noundef nonnull %cfg)
  tail call fastcc void @_clk_pll_enable(ptr noundef %hw)
  %50 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %params.i, align 4
  %flags.i44 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 26
  %52 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i44, align 4
  %and.i45 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %cond.false7.i, label %if.end.i52

cond.false7.i:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 29
  %54 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #10
  br label %if.end24

if.end.i52:                                       ; preds = %if.then18
  %57 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_base.i, align 4
  %and13.i = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 7
  %base_reg.i51 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i51, ptr %misc_reg.i
  %59 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %58, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 9
  %60 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %51, i32 0, i32 29
  %62 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp2451.i = icmp sgt i32 %63, 0
  br i1 %cmp2451.i, label %if.end.i52.for.body.i_crit_edge, label %if.end.i52.do.end.i_crit_edge

if.end.i52.do.end.i_crit_edge:                    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i52.for.body.i_crit_edge:                  ; preds = %if.end.i52
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end.i52.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %if.end.i52.for.body.i_crit_edge ]
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  %and25.i = and i32 %65, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %61)
  %cmp26.i = icmp eq i32 %and25.i, %61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %66(i32 noundef 10737400) #10
  br label %if.end24

if.end28.i:                                       ; preds = %for.body.i
  tail call void %66(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %67 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %68, i32 0, i32 29
  %69 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %70
  br i1 %cmp24.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.do.end.i_crit_edge

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end28.i.do.end.i_crit_edge, %if.end.i52.do.end.i_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %if.end24

if.end24.critedge:                                ; preds = %clk_pll_is_enabled.exit.if.end24.critedge_crit_edge, %land.lhs.true.i.if.end24.critedge_crit_edge
  call fastcc void @_update_pll_mnp(ptr noundef %hw, ptr noundef nonnull %cfg)
  br label %if.end24

if.end24:                                         ; preds = %if.end24.critedge, %do.end.i, %if.then27.i, %cond.false7.i, %lor.lhs.false.if.end24_crit_edge
  %ret.0 = phi i32 [ 0, %lor.lhs.false.if.end24_crit_edge ], [ 0, %if.end24.critedge ], [ 0, %if.then27.i ], [ -1, %do.end.i ], [ 0, %cond.false7.i ]
  %71 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lock, align 4
  %tobool26.not = icmp eq ptr %72, null
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %72, i32 noundef %flags.0) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %old_cfg) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllc_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

entry.clk_pll_is_enabled.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %entry
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %7 = and i32 %6, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %8 = icmp eq i32 %7, 524288
  br i1 %8, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %entry.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_base.i, align 4
  %11 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %clk_pll_is_enabled.exit.if.end_crit_edge, label %clk_pll_is_enabled.exit.cleanup_crit_edge

clk_pll_is_enabled.exit.cleanup_crit_edge:        ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

clk_pll_is_enabled.exit.if.end_crit_edge:         ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %clk_pll_is_enabled.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  %tobool1.not = icmp eq ptr %18, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %do.body3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %18) #10
  br label %if.end10

if.end10:                                         ; preds = %do.body3, %if.end.if.end10_crit_edge
  %flags.0 = phi i32 [ %call7, %do.body3 ], [ 0, %if.end.if.end10_crit_edge ]
  tail call fastcc void @_clk_pll_enable(ptr noundef %hw)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496) #10
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_base, align 4
  %22 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params.i, align 4
  %misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %misc_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %misc_reg, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !100
  %27 = and i32 %26, -65
  %28 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_base, align 4
  %30 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %params.i, align 4
  %misc_reg16 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %misc_reg16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %misc_reg16, align 4
  %add.ptr17 = getelementptr i8, ptr %29, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %27) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496) #10
  %35 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_base, align 4
  %37 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %params.i, align 4
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %misc_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %misc_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %42 = or i32 %41, 128
  %43 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk_base, align 4
  %45 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %params.i, align 4
  %misc_reg3.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %misc_reg3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %misc_reg3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %44, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %42) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 429496) #10
  %50 = and i32 %41, -129
  %51 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_base, align 4
  %53 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %params.i, align 4
  %misc_reg7.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %misc_reg7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %misc_reg7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %52, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %50) #10, !srcloc !102
  %57 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %params.i, align 4
  %flags.i42 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 26
  %59 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i42, align 4
  %and.i43 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %cond.false7.i, label %if.end.i48

cond.false7.i:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 29
  %61 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #10
  br label %clk_pll_wait_for_lock.exit

if.end.i48:                                       ; preds = %if.end10
  %64 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk_base, align 4
  %and13.i = and i32 %60, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i46 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 7
  %base_reg.i47 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i47, ptr %misc_reg.i46
  %66 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %65, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 9
  %67 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 29
  %69 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp2451.i = icmp sgt i32 %70, 0
  br i1 %cmp2451.i, label %if.end.i48.for.body.i_crit_edge, label %if.end.i48.do.end.i_crit_edge

if.end.i48.do.end.i_crit_edge:                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i48.for.body.i_crit_edge:                  ; preds = %if.end.i48
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end.i48.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %if.end.i48.for.body.i_crit_edge ]
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  %and25.i = and i32 %72, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %68)
  %cmp26.i = icmp eq i32 %and25.i, %68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %73(i32 noundef 10737400) #10
  br label %clk_pll_wait_for_lock.exit

if.end28.i:                                       ; preds = %for.body.i
  tail call void %73(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %74 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %75, i32 0, i32 29
  %76 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %77
  br i1 %cmp24.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.do.end.i_crit_edge

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end28.i.do.end.i_crit_edge, %if.end.i48.do.end.i_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %clk_pll_wait_for_lock.exit

clk_pll_wait_for_lock.exit:                       ; preds = %do.end.i, %if.then27.i, %cond.false7.i
  %retval.0.i49 = phi i32 [ 0, %if.then27.i ], [ -1, %do.end.i ], [ 0, %cond.false7.i ]
  %78 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lock, align 4
  %tobool20.not = icmp eq ptr %79, null
  br i1 %tobool20.not, label %clk_pll_wait_for_lock.exit.cleanup_crit_edge, label %if.then21

clk_pll_wait_for_lock.exit.cleanup_crit_edge:     ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %79, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %clk_pll_wait_for_lock.exit.cleanup_crit_edge, %clk_pll_is_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %clk_pll_is_enabled.exit.cleanup_crit_edge ], [ %retval.0.i49, %if.then21 ], [ %retval.0.i49, %clk_pll_wait_for_lock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pllc_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw) #10
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_base.i, align 4
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params.i, align 4
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %misc_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %misc_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #10, !srcloc !100
  %9 = or i32 %8, 64
  %10 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_base.i, align 4
  %12 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params.i, align 4
  %misc_reg5.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %misc_reg5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %misc_reg5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %9) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #10
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  %tobool8.not = icmp eq ptr %18, null
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %18, i32 noundef %flags.0) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllc_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  %old_cfg = alloca %struct.tegra_clk_pll_freq_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %cfg, i32 0, i32 4
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %old_cfg) #10
  %4 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %old_cfg, i32 0, i32 4
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %7 = call ptr @memset(ptr %old_cfg, i32 255, i32 20)
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %9) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %call7 = call fastcc i32 @_pll_ramp_calc_pll(ptr noundef %hw, ptr noundef nonnull %cfg, i32 noundef %rate, i32 noundef %parent_rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.end
  call fastcc void @_get_pll_mnp(ptr noundef %hw, ptr noundef nonnull %old_cfg)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp13.not = icmp eq i32 %11, %13
  br i1 %cmp13.not, label %if.end37, label %do.end23

do.end23:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1504, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end37:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp39 = icmp eq i32 %15, %17
  br i1 %cmp39, label %land.lhs.true, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end37
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %6, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp44 = icmp eq i8 %19, %21
  br i1 %cmp44, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end47.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

if.end47.clk_pll_is_enabled.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %if.end47
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %26 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 248
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %29 = and i32 %28, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %29)
  %30 = icmp eq i32 %29, 524288
  br i1 %30, label %land.lhs.true.i.if.end51_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.end51_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %if.end47.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_base.i, align 4
  %33 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %32, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %38 = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool49.not = icmp eq i32 %38, 0
  br i1 %tobool49.not, label %clk_pll_is_enabled.exit.if.end51_crit_edge, label %if.then50

clk_pll_is_enabled.exit.if.end51_crit_edge:       ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then50:                                        ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw) #10
  %39 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_base.i, align 4
  %41 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %params.i, align 4
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %misc_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %misc_reg.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %40, i32 %44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #10, !srcloc !100
  %46 = or i32 %45, 64
  %47 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk_base.i, align 4
  %49 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %params.i, align 4
  %misc_reg5.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %misc_reg5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %misc_reg5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %48, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %46) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 429496) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %clk_pll_is_enabled.exit.if.end51_crit_edge, %land.lhs.true.i.if.end51_crit_edge
  %tobool49.not90 = phi i1 [ false, %if.then50 ], [ true, %clk_pll_is_enabled.exit.if.end51_crit_edge ], [ true, %land.lhs.true.i.if.end51_crit_edge ]
  %54 = zext i32 %parent_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %parent_rate, label %_pllcx_update_dynamic_coef.exit.thread [
    i32 12000000, label %if.end51.if.end57_crit_edge
    i32 13000000, label %if.end51.sw.bb1.i_crit_edge
    i32 26000000, label %if.end51.sw.bb1.i_crit_edge93
    i32 16800000, label %sw.bb2.i
    i32 19200000, label %sw.bb3.i
  ]

if.end51.sw.bb1.i_crit_edge93:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end51.sw.bb1.i_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

sw.bb1.i:                                         ; preds = %if.end51.sw.bb1.i_crit_edge, %if.end51.sw.bb1.i_crit_edge93
  br label %if.end57

sw.bb2.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

sw.bb3.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

_pllcx_update_dynamic_coef.exit.thread:           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, i32 noundef %parent_rate) #13
  br label %out

if.end57:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end51.if.end57_crit_edge
  %n_threshold.0.i = phi i32 [ 48, %sw.bb3.i ], [ 55, %sw.bb2.i ], [ 71, %sw.bb1.i ], [ 70, %if.end51.if.end57_crit_edge ]
  %clk_base.i84 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %55 = ptrtoint ptr %clk_base.i84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_base.i84, align 4
  %57 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %params.i, align 4
  %misc_reg.i86 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %misc_reg.i86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %misc_reg.i86, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 %60
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !100
  %62 = and i32 %61, -61
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %n_threshold.0.i, i32 %17)
  %cmp.not.i = icmp ult i32 %n_threshold.0.i, %17
  %cond.i = select i1 %cmp.not.i, i32 671088640, i32 335544320
  %or.i = or i32 %63, %cond.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %65 = ptrtoint ptr %clk_base.i84 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk_base.i84, align 4
  %67 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %params.i, align 4
  %misc_reg8.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %misc_reg8.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %misc_reg8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %66, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %64) #10, !srcloc !102
  call fastcc void @_update_pll_mnp(ptr noundef %hw, ptr noundef nonnull %cfg)
  br i1 %tobool49.not90, label %if.end57.out_crit_edge, label %if.then59

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call i32 @clk_pllc_enable(ptr noundef %hw)
  br label %out

out:                                              ; preds = %if.then59, %if.end57.out_crit_edge, %_pllcx_update_dynamic_coef.exit.thread, %land.lhs.true.out_crit_edge, %do.end23, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end.out_crit_edge ], [ %call7, %do.end23 ], [ %call7, %land.lhs.true.out_crit_edge ], [ %call60, %if.then59 ], [ 0, %if.end57.out_crit_edge ], [ -22, %_pllcx_update_dynamic_coef.exit.thread ]
  %71 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lock, align 4
  %tobool63.not = icmp eq ptr %72, null
  br i1 %tobool63.not, label %out.if.end66_crit_edge, label %if.then64

out.if.end66_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then64:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %72, i32 noundef %flags.0) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %out.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %old_cfg) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_plle_tegra114_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #10
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #10
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %fixed_rate = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_rate, align 4
  %freq_table.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq_table.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not72.i = icmp eq i32 %7, 0
  br i1 %cmp.not72.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %8 = phi i32 [ %12, %for.inc.i.for.body.i_crit_edge ], [ %7, %entry.for.body.i_crit_edge ]
  %sel.073.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call1)
  %cmp2.i = icmp eq i32 %8, %call1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %output_rate.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 1
  %9 = ptrtoint ptr %output_rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp3.i = icmp eq i32 %10, %3
  br i1 %cmp3.i, label %if.end7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %land.lhs.true.i
  %pdiv_tohw.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %pdiv_tohw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdiv_tohw.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  %p14.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 4
  %15 = ptrtoint ptr %p14.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p14.i, align 4
  br i1 %tobool.not.i, label %if.end7.i.if.end_crit_edge, label %while.cond.preheader.i.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.preheader.i.i:                         ; preds = %if.end7.i
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not15.i.i = icmp eq i8 %18, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i.cleanup_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.cleanup_crit_edge:       ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %19 = phi i8 [ %21, %if.end.i.i.while.body.i.i_crit_edge ], [ %18, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %p_tohw.016.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %14, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %16)
  %cmp.not.i.i = icmp ult i8 %19, %16
  br i1 %cmp.not.i.i, label %if.end.i.i, label %while.body.i.i.if.end_crit_edge

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.pdiv_map, ptr %p_tohw.016.i.i, i32 1
  %20 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool1.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body.i.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge
  %m.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 3
  %22 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m.i, align 4
  %n.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 2
  %24 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n.i, align 4
  %cpcon.i = getelementptr inbounds %struct.tegra_clk_pll_freq_table, ptr %sel.073.i, i32 0, i32 5
  %26 = ptrtoint ptr %cpcon.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cpcon.i, align 1
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %28 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock, align 4
  %tobool3.not = icmp eq ptr %29, null
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %do.body5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %29) #10
  br label %if.end12

if.end12:                                         ; preds = %do.body5, %if.end.if.end12_crit_edge
  %flags.0 = phi i32 [ %call9, %do.body5 ], [ 0, %if.end.if.end12_crit_edge ]
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %30 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_base, align 4
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %params, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_reg, align 4
  %add.ptr14 = getelementptr i8, ptr %31, i32 %35
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10, !srcloc !100
  %37 = and i32 %36, -33
  %38 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_base, align 4
  %40 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %params, align 4
  %base_reg19 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %base_reg19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_reg19, align 4
  %add.ptr20 = getelementptr i8, ptr %39, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %37) #10, !srcloc !102
  %44 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk_base, align 4
  %46 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %params, align 4
  %aux_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %aux_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %aux_reg, align 4
  %add.ptr24 = getelementptr i8, ptr %45, i32 %49
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #10, !srcloc !100
  %51 = and i32 %50, -268435458
  %52 = or i32 %51, 268435456
  %53 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_base, align 4
  %55 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %params, align 4
  %aux_reg30 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %56, i32 0, i32 21
  %57 = ptrtoint ptr %aux_reg30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %aux_reg30, align 4
  %add.ptr31 = getelementptr i8, ptr %54, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %52) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #10
  %60 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk_base, align 4
  %62 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %params, align 4
  %misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %misc_reg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %misc_reg, align 4
  %add.ptr35 = getelementptr i8, ptr %61, i32 %65
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #10, !srcloc !100
  %67 = and i32 %66, -946012161
  %68 = or i32 %67, 4390912
  %69 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk_base, align 4
  %71 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %params, align 4
  %misc_reg45 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %misc_reg45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %misc_reg45, align 4
  %add.ptr46 = getelementptr i8, ptr %70, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %68) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 1073740) #10
  %76 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk_base, align 4
  %add.ptr49 = getelementptr i8, ptr %77, i32 104
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #10, !srcloc !100
  %79 = or i32 %78, 1835008
  %80 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk_base, align 4
  %add.ptr54 = getelementptr i8, ptr %81, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %79) #10, !srcloc !102
  %82 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %clk_base, align 4
  %84 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %params, align 4
  %base_reg58 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %base_reg58 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %base_reg58, align 4
  %add.ptr59 = getelementptr i8, ptr %83, i32 %87
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #10, !srcloc !100
  %89 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %params, align 4
  %flags63 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 26
  %91 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags63, align 4
  %and64 = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %cond.false, label %if.end12.cond.end_crit_edge

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %div_nmp = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 33
  %93 = ptrtoint ptr %div_nmp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %div_nmp, align 4
  %divp_width = getelementptr inbounds %struct.div_nmp, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %divp_width to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %divp_width, align 1
  %conv67 = zext i8 %96 to i32
  %notmask = shl nsw i32 -1, %conv67
  %sub = xor i32 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end12.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.false ], [ 1, %if.end12.cond.end_crit_edge ]
  %div_nmp69 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 33
  %97 = ptrtoint ptr %div_nmp69 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %div_nmp69, align 4
  %divp_shift = getelementptr inbounds %struct.div_nmp, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %divp_shift to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %divp_shift, align 1
  %conv70 = zext i8 %100 to i32
  %shl71 = shl i32 %cond, %conv70
  %divn_width = getelementptr inbounds %struct.div_nmp, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %divn_width to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %divn_width, align 1
  %conv74 = zext i8 %102 to i32
  %notmask305 = shl nsw i32 -1, %conv74
  %sub76 = xor i32 %notmask305, -1
  %103 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %98, align 1
  %conv79 = zext i8 %104 to i32
  %shl80 = shl i32 %sub76, %conv79
  %or81 = or i32 %shl80, %shl71
  %divm_width = getelementptr inbounds %struct.div_nmp, ptr %98, i32 0, i32 3
  %105 = ptrtoint ptr %divm_width to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %divm_width, align 1
  %conv84 = zext i8 %106 to i32
  %notmask306 = shl nsw i32 -1, %conv84
  %sub86 = xor i32 %notmask306, -1
  %divm_shift = getelementptr inbounds %struct.div_nmp, ptr %98, i32 0, i32 2
  %107 = ptrtoint ptr %divm_shift to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %divm_shift, align 1
  %conv89 = zext i8 %108 to i32
  %shl90 = shl i32 %sub86, %conv89
  %or91 = or i32 %or81, %shl90
  %neg = xor i32 %or91, -1
  %109 = and i32 %88, -16
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %and93 = and i32 %110, %neg
  %shl98 = shl i32 %23, %conv89
  %shl104 = shl i32 %25, %conv79
  %conv106 = zext i8 %27 to i32
  %shl107 = shl nuw i32 %conv106, 24
  %or99 = or i32 %shl104, %shl107
  %or105 = or i32 %or99, %shl98
  %or108 = or i32 %or105, %and93
  %111 = tail call i32 @llvm.bswap.i32(i32 %or108)
  %112 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk_base, align 4
  %base_reg111 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %90, i32 0, i32 6
  %114 = ptrtoint ptr %base_reg111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base_reg111, align 4
  %add.ptr112 = getelementptr i8, ptr %113, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %111) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748) #10
  tail call fastcc void @_clk_pll_enable(ptr noundef %hw)
  %117 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %params, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 26
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i308 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i308, label %cond.false7.i, label %if.end.i

cond.false7.i:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 29
  %121 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %123(i32 noundef %122) #10
  br label %if.end117

if.end.i:                                         ; preds = %cond.end
  %124 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clk_base, align 4
  %and13.i = and i32 %120, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 7
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i, ptr %misc_reg.i
  %126 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %125, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 9
  %127 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %118, i32 0, i32 29
  %129 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp2451.i = icmp sgt i32 %130, 0
  br i1 %cmp2451.i, label %if.end.i.for.body.i311_crit_edge, label %if.end.i.clk_pll_wait_for_lock.exit_crit_edge

if.end.i.clk_pll_wait_for_lock.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_wait_for_lock.exit

if.end.i.for.body.i311_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i311

for.body.i311:                                    ; preds = %if.end28.i.for.body.i311_crit_edge, %if.end.i.for.body.i311_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i311_crit_edge ], [ 0, %if.end.i.for.body.i311_crit_edge ]
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #10
  %and25.i = and i32 %132, %128
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %128)
  %cmp26.i = icmp eq i32 %and25.i, %128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i311
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %133(i32 noundef 10737400) #10
  br label %if.end117

if.end28.i:                                       ; preds = %for.body.i311
  tail call void %133(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %134 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %params, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %135, i32 0, i32 29
  %136 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %137
  br i1 %cmp24.i, label %if.end28.i.for.body.i311_crit_edge, label %if.end28.i.clk_pll_wait_for_lock.exit_crit_edge

if.end28.i.clk_pll_wait_for_lock.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_wait_for_lock.exit

if.end28.i.for.body.i311_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i311

clk_pll_wait_for_lock.exit:                       ; preds = %if.end28.i.clk_pll_wait_for_lock.exit_crit_edge, %if.end.i.clk_pll_wait_for_lock.exit_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %out

if.end117:                                        ; preds = %if.then27.i, %cond.false7.i
  %138 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %clk_base, align 4
  %add.ptr120 = getelementptr i8, ptr %139, i32 104
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #10, !srcloc !100
  %141 = and i32 %140, 4063424
  %142 = or i32 %141, 620757280
  %143 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %clk_base, align 4
  %add.ptr127 = getelementptr i8, ptr %144, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %142) #10, !srcloc !102
  %145 = and i32 %142, 623509984
  %146 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clk_base, align 4
  %add.ptr130 = getelementptr i8, ptr %147, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %145) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748) #10
  %149 = and i32 %142, 622985696
  %150 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %clk_base, align 4
  %add.ptr133 = getelementptr i8, ptr %151, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %149) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748) #10
  %153 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %clk_base, align 4
  %155 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %params, align 4
  %misc_reg137 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %156, i32 0, i32 7
  %157 = ptrtoint ptr %misc_reg137 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %misc_reg137, align 4
  %add.ptr138 = getelementptr i8, ptr %154, i32 %158
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #10, !srcloc !100
  %160 = and i32 %159, -4194305
  %161 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %clk_base, align 4
  %163 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %params, align 4
  %misc_reg144 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %164, i32 0, i32 7
  %165 = ptrtoint ptr %misc_reg144 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %misc_reg144, align 4
  %add.ptr145 = getelementptr i8, ptr %162, i32 %166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %160) #10, !srcloc !102
  %167 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %clk_base, align 4
  %169 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %params, align 4
  %aux_reg149 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %170, i32 0, i32 21
  %171 = ptrtoint ptr %aux_reg149 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %aux_reg149, align 4
  %add.ptr150 = getelementptr i8, ptr %168, i32 %172
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #10, !srcloc !100
  %174 = and i32 %173, -1476395011
  %175 = or i32 %174, 134217730
  %176 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %clk_base, align 4
  %178 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %params, align 4
  %aux_reg157 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %179, i32 0, i32 21
  %180 = ptrtoint ptr %aux_reg157 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %aux_reg157, align 4
  %add.ptr158 = getelementptr i8, ptr %177, i32 %181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %175) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %182(i32 noundef 214748) #10
  %183 = or i32 %174, 134217731
  %184 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %clk_base, align 4
  %186 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %params, align 4
  %aux_reg162 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %187, i32 0, i32 21
  %188 = ptrtoint ptr %aux_reg162 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %aux_reg162, align 4
  %add.ptr163 = getelementptr i8, ptr %185, i32 %189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %183) #10, !srcloc !102
  %190 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %clk_base, align 4
  %add.ptr166 = getelementptr i8, ptr %191, i32 1308
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #10, !srcloc !100
  %193 = and i32 %192, -1157627907
  %194 = or i32 %193, 1073741826
  %195 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %clk_base, align 4
  %add.ptr172 = getelementptr i8, ptr %196, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %194) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 214748) #10
  %198 = or i32 %193, 1073741827
  %199 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %clk_base, align 4
  %add.ptr175 = getelementptr i8, ptr %200, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %198) #10, !srcloc !102
  %201 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %clk_base, align 4
  %add.ptr178 = getelementptr i8, ptr %202, i32 1168
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #10, !srcloc !100
  %204 = and i32 %203, -83886083
  %205 = or i32 %204, 67108866
  %206 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %clk_base, align 4
  %add.ptr185 = getelementptr i8, ptr %207, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %205) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %208(i32 noundef 214748) #10
  %209 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %clk_base, align 4
  %add.ptr188 = getelementptr i8, ptr %210, i32 1168
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188) #10, !srcloc !100
  %212 = or i32 %211, 1
  %213 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %clk_base, align 4
  %add.ptr193 = getelementptr i8, ptr %214, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %212) #10, !srcloc !102
  br label %out

out:                                              ; preds = %if.end117, %clk_pll_wait_for_lock.exit
  %retval.0.i312321 = phi i32 [ -1, %clk_pll_wait_for_lock.exit ], [ 0, %if.end117 ]
  %215 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %lock, align 4
  %tobool195.not = icmp eq ptr %216, null
  br i1 %tobool195.not, label %out.cleanup_crit_edge, label %if.then196

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then196:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %216, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then196, %out.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %while.cond.preheader.i.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i312321, %if.then196 ], [ %retval.0.i312321, %out.cleanup_crit_edge ], [ -22, %while.cond.preheader.i.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_plle_tegra114_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  tail call fastcc void @_clk_pll_disable(ptr noundef %hw)
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_base, align 4
  %params = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %misc_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %misc_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %misc_reg, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !100
  %9 = or i32 %8, 6291456
  %10 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_base, align 4
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params, align 4
  %misc_reg12 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %misc_reg12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %misc_reg12, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #10
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %18, i32 noundef %flags.0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllu_tegra114_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.28) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__clk_get_hw(ptr noundef nonnull %call) #10
  %call4 = tail call i32 @clk_hw_get_rate(ptr noundef %call3) #10
  %lock = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %do.body8

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #10
  br label %if.end17

if.end17:                                         ; preds = %do.body8, %if.end.if.end17_crit_edge
  %flags.0 = phi i32 [ %call12, %do.body8 ], [ 0, %if.end.if.end17_crit_edge ]
  %params.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params.i, align 4
  %flags.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.clk_pll_is_enabled.exit_crit_edge, label %land.lhs.true.i

if.end17.clk_pll_is_enabled.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i:                                  ; preds = %if.end17
  %pmc.i.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %pmc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmc.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 248
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !100
  %9 = and i32 %8, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %9)
  %10 = icmp eq i32 %9, 524288
  br i1 %10, label %land.lhs.true.i.if.then20_crit_edge, label %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge

land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_is_enabled.exit

land.lhs.true.i.if.then20_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

clk_pll_is_enabled.exit:                          ; preds = %land.lhs.true.i.clk_pll_is_enabled.exit_crit_edge, %if.end17.clk_pll_is_enabled.exit_crit_edge
  %clk_base.i = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %clk_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_base.i, align 4
  %13 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params.i, align 4
  %base_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !100
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %clk_pll_is_enabled.exit.if.then20_crit_edge, label %clk_pll_is_enabled.exit.if.end21_crit_edge

clk_pll_is_enabled.exit.if.end21_crit_edge:       ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

clk_pll_is_enabled.exit.if.then20_crit_edge:      ; preds = %clk_pll_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %clk_pll_is_enabled.exit.if.then20_crit_edge, %land.lhs.true.i.if.then20_crit_edge
  tail call fastcc void @_clk_pll_enable(ptr noundef %hw)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %clk_pll_is_enabled.exit.if.end21_crit_edge
  %19 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params.i, align 4
  %flags.i200 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %flags.i200 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i200, align 4
  %and.i201 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %tobool.not.i202 = icmp eq i32 %and.i201, 0
  br i1 %tobool.not.i202, label %cond.false7.i, label %if.end.i205

cond.false7.i:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %lock_delay.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 29
  %23 = ptrtoint ptr %lock_delay.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lock_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #10
  br label %clk_pll_wait_for_lock.exit

if.end.i205:                                      ; preds = %if.end21
  %clk_base.i203 = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %clk_base.i203 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_base.i203, align 4
  %and13.i = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %misc_reg.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 7
  %base_reg.i204 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 6
  %.pn.in.i = select i1 %tobool14.not.i, ptr %base_reg.i204, ptr %misc_reg.i
  %28 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %lock_addr.0.i = getelementptr i8, ptr %27, i32 %.pn.i
  %lock_mask21.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 9
  %29 = ptrtoint ptr %lock_mask21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lock_mask21.i, align 4
  %lock_delay2350.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %20, i32 0, i32 29
  %31 = ptrtoint ptr %lock_delay2350.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lock_delay2350.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2451.i = icmp sgt i32 %32, 0
  br i1 %cmp2451.i, label %if.end.i205.for.body.i_crit_edge, label %if.end.i205.clk_pll_wait_for_lock.exit.thread_crit_edge

if.end.i205.clk_pll_wait_for_lock.exit.thread_crit_edge: ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_wait_for_lock.exit.thread

if.end.i205.for.body.i_crit_edge:                 ; preds = %if.end.i205
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %if.end.i205.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %if.end.i205.for.body.i_crit_edge ]
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lock_addr.0.i) #10, !srcloc !100
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %and25.i = and i32 %34, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %and25.i, i32 %30)
  %cmp26.i = icmp eq i32 %and25.i, %30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %cmp26.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %35(i32 noundef 10737400) #10
  br label %clk_pll_wait_for_lock.exit

if.end28.i:                                       ; preds = %for.body.i
  tail call void %35(i32 noundef 429496) #10
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %36 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params.i, align 4
  %lock_delay23.i = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %37, i32 0, i32 29
  %38 = ptrtoint ptr %lock_delay23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lock_delay23.i, align 4
  %cmp24.i = icmp slt i32 %inc.i, %39
  br i1 %cmp24.i, label %if.end28.i.for.body.i_crit_edge, label %if.end28.i.clk_pll_wait_for_lock.exit.thread_crit_edge

if.end28.i.clk_pll_wait_for_lock.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_pll_wait_for_lock.exit.thread

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

clk_pll_wait_for_lock.exit.thread:                ; preds = %if.end28.i.clk_pll_wait_for_lock.exit.thread_crit_edge, %if.end.i205.clk_pll_wait_for_lock.exit.thread_crit_edge
  %call30.i = tail call ptr @clk_hw_get_name(ptr noundef %hw) #10
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30.i) #13
  br label %out

clk_pll_wait_for_lock.exit:                       ; preds = %if.then27.i, %cond.false7.i
  %40 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call4, label %do.end38 [
    i32 13000000, label %clk_pll_wait_for_lock.exit.if.end41_crit_edge
    i32 19200000, label %if.end41.fold.split
    i32 12000000, label %if.end41.fold.split220
    i32 26000000, label %if.end41.fold.split221
    i32 16800000, label %if.end41.fold.split222
    i32 38400000, label %if.end41.fold.split223
  ]

clk_pll_wait_for_lock.exit.if.end41_crit_edge:    ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end38:                                         ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.29, i32 noundef %call4) #13
  br label %out

if.end41.fold.split:                              ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split220:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split221:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split222:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.fold.split223:                           ; preds = %clk_pll_wait_for_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.end41.fold.split223, %if.end41.fold.split222, %if.end41.fold.split221, %if.end41.fold.split220, %if.end41.fold.split, %clk_pll_wait_for_lock.exit.if.end41_crit_edge
  %i.0215.lcssa = phi i32 [ 0, %clk_pll_wait_for_lock.exit.if.end41_crit_edge ], [ 1, %if.end41.fold.split ], [ 2, %if.end41.fold.split220 ], [ 3, %if.end41.fold.split221 ], [ 4, %if.end41.fold.split222 ], [ 5, %if.end41.fold.split223 ]
  %clk_base = getelementptr inbounds %struct.tegra_clk_pll, ptr %hw, i32 0, i32 1
  %41 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_base, align 4
  %43 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params.i, align 4
  %base_reg = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_reg, align 4
  %add.ptr43 = getelementptr i8, ptr %42, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #10, !srcloc !100
  %48 = and i32 %47, -2
  %49 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk_base, align 4
  %51 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %params.i, align 4
  %base_reg48 = getelementptr inbounds %struct.tegra_clk_pll_params, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %base_reg48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_reg48, align 4
  %add.ptr49 = getelementptr i8, ptr %50, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %48) #10, !srcloc !102
  %55 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_base, align 4
  %add.ptr52 = getelementptr i8, ptr %56, i32 1160
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #10, !srcloc !100
  %stable_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0215.lcssa, i32 2
  %58 = ptrtoint ptr %stable_count to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %stable_count, align 1
  %conv56 = zext i8 %59 to i32
  %shl = shl nuw nsw i32 %conv56, 6
  %active_delay_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0215.lcssa, i32 3
  %60 = ptrtoint ptr %active_delay_count to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %active_delay_count, align 2
  %62 = and i8 %61, 63
  %and60 = zext i8 %62 to i32
  %shl61 = shl nuw nsw i32 %and60, 18
  %63 = and i32 %57, 704643327
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %and58.masked.masked.masked = or i32 %shl, %64
  %and65 = or i32 %shl61, %and58.masked.masked.masked
  %65 = tail call i32 @llvm.bswap.i32(i32 %and65)
  %66 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk_base, align 4
  %add.ptr67 = getelementptr i8, ptr %67, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %65) #10, !srcloc !102
  %68 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk_base, align 4
  %add.ptr70 = getelementptr i8, ptr %69, i32 1156
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !100
  %enable_delay_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0215.lcssa, i32 1
  %71 = ptrtoint ptr %enable_delay_count to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %enable_delay_count, align 4
  %and75 = zext i8 %72 to i32
  %shl76 = shl i32 %and75, 27
  %xtal_freq_count = getelementptr [6 x %struct.utmi_clk_param], ptr @utmi_parameters, i32 0, i32 %i.0215.lcssa, i32 4
  %73 = ptrtoint ptr %xtal_freq_count to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %xtal_freq_count, align 1
  %conv79 = zext i8 %74 to i32
  %75 = and i32 %70, 10550279
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %and78.masked.masked.masked.masked = or i32 %shl76, %76
  %and86 = or i32 %and78.masked.masked.masked.masked, %conv79
  %77 = tail call i32 @llvm.bswap.i32(i32 %and86)
  %78 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk_base, align 4
  %add.ptr88 = getelementptr i8, ptr %79, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %77) #10, !srcloc !102
  %80 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk_base, align 4
  %add.ptr91 = getelementptr i8, ptr %81, i32 1324
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #10, !srcloc !100
  %83 = and i32 %82, -1140850691
  %84 = or i32 %83, 1073741826
  %85 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk_base, align 4
  %add.ptr98 = getelementptr i8, ptr %86, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %84) #10, !srcloc !102
  %87 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk_base, align 4
  %add.ptr101 = getelementptr i8, ptr %88, i32 1156
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #10, !srcloc !100
  %90 = and i32 %89, -12582913
  %91 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk_base, align 4
  %add.ptr107 = getelementptr i8, ptr %92, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %90) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748) #10
  %94 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clk_base, align 4
  %add.ptr110 = getelementptr i8, ptr %95, i32 1324
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #10, !srcloc !100
  %97 = and i32 %96, -50331649
  %98 = or i32 %97, 16777216
  %99 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clk_base, align 4
  %add.ptr116 = getelementptr i8, ptr %100, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %98) #10, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748) #10
  %102 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk_base, align 4
  %add.ptr119 = getelementptr i8, ptr %103, i32 1324
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #10, !srcloc !100
  %105 = or i32 %104, 1
  %106 = ptrtoint ptr %clk_base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk_base, align 4
  %add.ptr124 = getelementptr i8, ptr %107, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %105) #10, !srcloc !102
  br label %out

out:                                              ; preds = %if.end41, %do.end38, %clk_pll_wait_for_lock.exit.thread
  %ret.0 = phi i32 [ 0, %if.end41 ], [ -22, %do.end38 ], [ -1, %clk_pll_wait_for_lock.exit.thread ]
  %108 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lock, align 4
  %tobool126.not = icmp eq ptr %109, null
  br i1 %tobool126.not, label %out.cleanup_crit_edge, label %if.then127

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then127:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %109, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %out.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %if.then127 ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !72, !74, !75, !76, !78, !80, !82, !84, !85, !86, !88, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @tegra_clk_pll_ops, !1, !"tegra_clk_pll_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1055, i32 22}
!2 = !{ptr @tegra_clk_plle_ops, !3, !"tegra_clk_plle_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1065, i32 22}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2055, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2388, i32 4}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/tegra/clk-pll.c", i32 319, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @clk_pll_wait_for_lock._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @clk_pll_wait_for_lock._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-pll.c", i32 883, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @clk_pll_recalc_rate._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @clk_pll_recalc_rate._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/tegra/clk-pll.c", i32 897, i32 4}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/tegra/clk-pll.c", i32 811, i32 4}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @clk_pll_set_rate._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @clk_pll_set_rate._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/tegra/clk-pll.c", i32 821, i32 3}
!28 = !{ptr @clk_pll_set_rate._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @clk_pll_set_rate._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/tegra/clk-pll.c", i32 946, i32 4}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @clk_plle_training._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @clk_plle_training._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @default_nmp, !36, !"default_nmp", i1 false, i1 false}
!36 = !{!"../drivers/clk/tegra/clk-pll.c", i32 267, i32 23}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/tegra/clk-pll.c", i32 584, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @_calc_rate._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @_calc_rate._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @pll_e_nmp, !43, !"pll_e_nmp", i1 false, i1 false}
!43 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1942, i32 23}
!44 = !{ptr @tegra_clk_pllu_ops, !45, !"tegra_clk_pllu_ops", i1 false, i1 false}
!45 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1193, i32 29}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1128, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @clk_pllu_enable._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @clk_pllu_enable._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1152, i32 3}
!53 = !{ptr @clk_pllu_enable._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @clk_pllu_enable._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @utmi_parameters, !56, !"utmi_parameters", i1 false, i1 false}
!56 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1088, i32 36}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1290, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @_setup_dynamic_ramp._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @_setup_dynamic_ramp._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @tegra_clk_pllxc_ops, !63, !"tegra_clk_pllxc_ops", i1 false, i1 false}
!63 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2001, i32 29}
!64 = !{ptr @tegra_clk_pllre_ops, !65, !"tegra_clk_pllre_ops", i1 false, i1 false}
!65 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2019, i32 29}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1472, i32 3}
!68 = !{ptr @_pllcx_update_dynamic_coef._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @_pllcx_update_dynamic_coef._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @tegra_clk_pllc_ops, !71, !"tegra_clk_pllc_ops", i1 false, i1 false}
!71 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2010, i32 29}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1858, i32 4}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tegra_clk_plle_tegra114_ops, !77, !"tegra_clk_plle_tegra114_ops", i1 false, i1 false}
!77 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2028, i32 29}
!78 = !{ptr @tegra_clk_pllu_tegra114_ops, !79, !"tegra_clk_pllu_tegra114_ops", i1 false, i1 false}
!79 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2035, i32 29}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1744, i32 33}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1751, i32 3}
!84 = !{ptr @clk_pllu_tegra114_enable._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @clk_pllu_tegra114_enable._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @clk_pllu_tegra114_enable._entry.30, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/clk/tegra/clk-pll.c", i32 1775, i32 3}
!88 = !{ptr @clk_pllu_tegra114_enable._entry_ptr.31, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @tegra_clk_pllss_ops, !90, !"tegra_clk_pllss_ops", i1 false, i1 false}
!90 = !{!"../drivers/clk/tegra/clk-pll.c", i32 2319, i32 29}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 4628779}
!101 = !{i8 0, i8 2}
!102 = !{i64 4628361}
!103 = !{i64 2152694565, i64 2152695057, i64 2152694602, i64 2152694658, i64 2152694692, i64 2152694716, i64 2152694757, i64 2152694778, i64 2152694806, i64 2152694840}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2148499831, i64 2148500111, i64 2148500445, i64 2148500779}
!106 = !{i32 0, i32 33}
!107 = !{i64 2152702080}
!108 = !{i64 2152702381}
!109 = !{i64 2152703043}
!110 = !{i64 2152703344}
!111 = !{i64 2152704006}
!112 = !{i64 2152704307}
!113 = !{i64 2152713959}
!114 = !{i64 2152714608}
!115 = !{i64 2152673584}
!116 = !{i64 2152674673}
!117 = !{i64 2152817180}
!118 = !{i64 2152667162, i64 2152667654, i64 2152667199, i64 2152667255, i64 2152667289, i64 2152667313, i64 2152667354, i64 2152667375, i64 2152667403, i64 2152667437}
