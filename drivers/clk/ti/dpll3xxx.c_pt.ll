; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/dpll3xxx.c_pt.bc'
source_filename = "../drivers/clk/ti/dpll3xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap3_dpll5_settings = type { i32, i32, i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/ti/dpll3xxx.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.omap3_noncore_dpll_enable = private unnamed_addr constant [26 x i8] c"omap3_noncore_dpll_enable\00", align 1
@omap3_noncore_dpll_set_rate.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll3xxx\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"omap3_noncore_dpll_set_rate\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %s: set rate: locking rate to %lu.\0A\00", [56 x i8] zeroinitializer }, align 32
@clkhwops_omap3_dpll = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap3_dpll_allow_idle, ptr @omap3_dpll_deny_idle }, [16 x i8] zeroinitializer }, align 32
@omap3_dpll4_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013clock: DPLL4 cannot change rate due to silicon 'Limitation 2.5' on 3430ES1.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap3_dpll4_set_rate\00", [43 x i8] zeroinitializer }, align 32
@omap3_dpll4_set_rate._entry_ptr = internal global ptr @omap3_dpll4_set_rate._entry, section ".printk_index", align 4
@omap3_dpll4_set_rate_and_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"omap3_dpll4_set_rate_and_parent\00", [32 x i8] zeroinitializer }, align 32
@omap3_dpll4_set_rate_and_parent._entry_ptr = internal global ptr @omap3_dpll4_set_rate_and_parent._entry, section ".printk_index", align 4
@_omap3_noncore_dpll_bypass.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_omap3_noncore_dpll_bypass\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"clock: configuring DPLL %s for low-power bypass\0A\00", [47 x i8] zeroinitializer }, align 32
@_omap3_noncore_dpll_lock.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_omap3_noncore_dpll_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock: locking DPLL %s\0A\00", [40 x i8] zeroinitializer }, align 32
@_omap3_noncore_dpll_stop.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_omap3_noncore_dpll_stop\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clock: stopping DPLL %s\0A\00", [39 x i8] zeroinitializer }, align 32
@_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str, ptr @.str.15, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_omap3_dpll_compute_freqsel\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clock: fint is %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str, ptr @.str.16, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clock: unknown freqsel setting for %d\0A\00", [57 x i8] zeroinitializer }, align 32
@omap3_noncore_dpll_ssc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014clock: SSC modulation frequency of DPLL %s greater than %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omap3_noncore_dpll_ssc_program\00", [33 x i8] zeroinitializer }, align 32
@omap3_noncore_dpll_ssc_program._entry_ptr = internal global ptr @omap3_noncore_dpll_ssc_program._entry, section ".printk_index", align 4
@omap3_noncore_dpll_ssc_program._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014clock: SSC multiplier of DPLL %s is out of range\0A\00", [44 x i8] zeroinitializer }, align 32
@omap3_noncore_dpll_ssc_program._entry_ptr.21 = internal global ptr @omap3_noncore_dpll_ssc_program._entry.19, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_omap3_wait_dpll_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013clock: %s failed transition to '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_omap3_wait_dpll_status\00", [40 x i8] zeroinitializer }, align 32
@_omap3_wait_dpll_status._entry_ptr = internal global ptr @_omap3_wait_dpll_status._entry, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bypassed\00", [23 x i8] zeroinitializer }, align 32
@_omap3_wait_dpll_status.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.23, ptr @.str, ptr @.str.26, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"clock: %s transition to '%s' in %d loops\0A\00", [54 x i8] zeroinitializer }, align 32
@omap3_dpll5_apply_errata.precomputed = internal constant { [5 x %struct.omap3_dpll5_settings], [36 x i8] } { [5 x %struct.omap3_dpll5_settings] [%struct.omap3_dpll5_settings { i32 12000000, i32 80, i32 1 }, %struct.omap3_dpll5_settings { i32 13000000, i32 443, i32 6 }, %struct.omap3_dpll5_settings { i32 19200000, i32 50, i32 1 }, %struct.omap3_dpll5_settings { i32 26000000, i32 443, i32 12 }, %struct.omap3_dpll5_settings { i32 38400000, i32 25, i32 1 }], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 13000000, i64 19200000, i64 26000000, i64 38400000]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 536, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 674, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"clkhwops_omap3_dpll\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 994, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1019, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1042, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 192, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 145, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 223, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 100, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 123, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 322, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 361, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 80, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 83, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"precomputed\00", align 1
@___asan_gen_.121 = private constant [29 x i8] c"../drivers/clk/ti/dpll3xxx.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1058, i32 43 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @_omap3_wait_dpll_status._entry, ptr @_omap3_wait_dpll_status._entry_ptr, ptr @omap3_dpll4_set_rate._entry, ptr @omap3_dpll4_set_rate._entry_ptr, ptr @omap3_dpll4_set_rate_and_parent._entry, ptr @omap3_dpll4_set_rate_and_parent._entry_ptr, ptr @omap3_noncore_dpll_ssc_program._entry, ptr @omap3_noncore_dpll_ssc_program._entry.19, ptr @omap3_noncore_dpll_ssc_program._entry_ptr, ptr @omap3_noncore_dpll_ssc_program._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @clkhwops_omap3_dpll, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @omap3_dpll5_apply_errata.precomputed], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_omap3_dpll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_dpll4_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_dpll4_set_rate_and_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_noncore_dpll_ssc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_noncore_dpll_ssc_program._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap3_wait_dpll_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_dpll5_apply_errata.precomputed to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll_recalc(ptr noundef %hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_get_dpll_rate(ptr noundef %hw) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_get_dpll_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_enable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkdm, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end27_crit_edge, label %if.then2

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_enable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %clkdm_clk_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm_clk_enable, align 4
  %clk4 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %clk4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk4, align 4
  %call = tail call i32 %6(ptr noundef nonnull %3, ptr noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then2.if.end27_crit_edge, label %do.end

if.then2.if.end27_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  %clkdm_name = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 9
  %9 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkdm_name, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 539, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap3_noncore_dpll_enable, ptr noundef %call12, ptr noundef %10, i32 noundef %call) #4
  br label %cleanup

if.end27:                                         ; preds = %if.then2.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %call28 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #4
  %call29 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #4
  %clk_bypass = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_bypass, align 4
  %call30 = tail call i32 @clk_hw_get_rate(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %call30)
  %cmp = icmp eq i32 %call29, %call30
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end27
  %13 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_bypass, align 4
  %cmp34.not = icmp eq ptr %call28, %14
  br i1 %cmp34.not, label %if.then31.if.end56_crit_edge, label %do.end50, !prof !69

if.then31.if.end56_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

do.end50:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #4
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.then31.if.end56_crit_edge
  %call64 = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef %hw)
  br label %cleanup

if.else:                                          ; preds = %if.end27
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_ref, align 4
  %cmp66.not = icmp eq ptr %call28, %16
  br i1 %cmp66.not, label %if.else.if.end88_crit_edge, label %do.end82, !prof !69

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

do.end82:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 550, i32 noundef 9, ptr noundef null) #4
  br label %if.end88

if.end88:                                         ; preds = %do.end82, %if.else.if.end88_crit_edge
  %call96 = tail call fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.end56, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call64, %if.end56 ], [ %call96, %if.end88 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef %clk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %modes = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %modes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modes, align 4
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap3_noncore_dpll_bypass.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap3_noncore_dpll_bypass, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !70

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @clk_hw_get_name(ptr noundef %clk) #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap3_noncore_dpll_bypass.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.9, ptr noundef %call5) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %tobool.not.i = icmp eq ptr %clk, null
  br i1 %tobool.not.i, label %do.end.omap3_dpll_autoidle_read.exit_crit_edge, label %lor.lhs.false.i

do.end.omap3_dpll_autoidle_read.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_dpll_autoidle_read.exit

lor.lhs.false.i:                                  ; preds = %do.end
  %5 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge, label %if.end.i

lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_dpll_autoidle_read.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %autoidle_mask.i = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autoidle_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %if.end.i.omap3_dpll_autoidle_read.exit_crit_edge, label %if.end5.i

if.end.i.omap3_dpll_autoidle_read.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_dpll_autoidle_read.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %autoidle_reg.i = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 17
  %call.i = tail call i32 %11(ptr noundef %autoidle_reg.i) #4
  %12 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %autoidle_mask.i, align 4
  %and.i = and i32 %13, %call.i
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 false) #4, !range !71
  %shr.i = lshr i32 %and.i, %14
  %phi.cast = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.cast)
  %phi.cmp = icmp eq i8 %phi.cast, 0
  br label %omap3_dpll_autoidle_read.exit

omap3_dpll_autoidle_read.exit:                    ; preds = %if.end5.i, %if.end.i.omap3_dpll_autoidle_read.exit_crit_edge, %lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge, %do.end.omap3_dpll_autoidle_read.exit_crit_edge
  %retval.0.i19 = phi i1 [ %phi.cmp, %if.end5.i ], [ false, %lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge ], [ false, %do.end.omap3_dpll_autoidle_read.exit_crit_edge ], [ false, %if.end.i.omap3_dpll_autoidle_read.exit_crit_edge ]
  %15 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %16, i32 0, i32 5
  %call.i21 = tail call i32 %19(ptr noundef %control_reg.i) #4
  %enable_mask.i = getelementptr inbounds %struct.dpll_data, ptr %16, i32 0, i32 6
  %20 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable_mask.i, align 4
  %neg.i = xor i32 %21, -1
  %and.i22 = and i32 %call.i21, %neg.i
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #4, !range !71
  %shl.i = shl i32 5, %22
  %or.i = or i32 %shl.i, %and.i22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %23 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_writel.i, align 4
  tail call void %25(i32 noundef %or.i, ptr noundef %control_reg.i) #4
  %call9 = tail call fastcc i32 @_omap3_wait_dpll_status(ptr noundef %clk, i8 noundef zeroext 0)
  %brmerge = or i1 %tobool.not.i, %retval.0.i19
  br i1 %brmerge, label %omap3_dpll_autoidle_read.exit.cleanup_crit_edge, label %lor.lhs.false.i26

omap3_dpll_autoidle_read.exit.cleanup_crit_edge:  ; preds = %omap3_dpll_autoidle_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i26:                                ; preds = %omap3_dpll_autoidle_read.exit
  %26 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i25 = icmp eq ptr %27, null
  br i1 %tobool1.not.i25, label %lor.lhs.false.i26.cleanup_crit_edge, label %if.end.i29

lor.lhs.false.i26.cleanup_crit_edge:              ; preds = %lor.lhs.false.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i29:                                       ; preds = %lor.lhs.false.i26
  %autoidle_mask.i27 = getelementptr inbounds %struct.dpll_data, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %autoidle_mask.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %autoidle_mask.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i28 = icmp eq i32 %29, 0
  br i1 %tobool3.not.i28, label %if.end.i29.cleanup_crit_edge, label %if.end5.i37

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i37:                                      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %autoidle_reg.i30 = getelementptr inbounds %struct.dpll_data, ptr %27, i32 0, i32 17
  %call.i31 = tail call i32 %32(ptr noundef %autoidle_reg.i30) #4
  %33 = ptrtoint ptr %autoidle_mask.i27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %autoidle_mask.i27, align 4
  %neg.i32 = xor i32 %34, -1
  %and.i33 = and i32 %call.i31, %neg.i32
  %35 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #4, !range !71
  %shl.i34 = shl nuw i32 1, %35
  %or.i35 = or i32 %shl.i34, %and.i33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %36 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i36 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %clk_writel.i36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_writel.i36, align 4
  tail call void %38(i32 noundef %or.i35, ptr noundef %autoidle_reg.i30) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i37, %if.end.i29.cleanup_crit_edge, %lor.lhs.false.i26.cleanup_crit_edge, %omap3_dpll_autoidle_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call9, %omap3_dpll_autoidle_read.exit.cleanup_crit_edge ], [ %call9, %lor.lhs.false.i26.cleanup_crit_edge ], [ %call9, %if.end.i29.cleanup_crit_edge ], [ %call9, %if.end5.i37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef %clk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap3_noncore_dpll_lock.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap3_noncore_dpll_lock, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %clk) #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap3_noncore_dpll_lock.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.11, ptr noundef %call3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %idlest_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idlest_mask, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #4, !range !71
  %shl = shl nuw i32 1, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %idlest_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 18
  %call6 = tail call i32 %7(ptr noundef %idlest_reg) #4
  %8 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idlest_mask, align 4
  %and = and i32 %9, %call6
  %conv8 = and i32 %shl, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv8)
  %cmp = icmp eq i32 %and, %conv8
  br i1 %cmp, label %do.end.done_crit_edge, label %if.end11

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end11:                                         ; preds = %do.end
  %tobool.not.i = icmp eq ptr %clk, null
  br i1 %tobool.not.i, label %if.end11.if.end16_crit_edge, label %lor.lhs.false.i

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

lor.lhs.false.i:                                  ; preds = %if.end11
  %10 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end16_crit_edge, label %if.end.i

lor.lhs.false.i.if.end16_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end.i:                                         ; preds = %lor.lhs.false.i
  %autoidle_mask.i = getelementptr inbounds %struct.dpll_data, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %autoidle_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %if.end.i.lor.lhs.false.i35_crit_edge, label %omap3_dpll_autoidle_read.exit

if.end.i.lor.lhs.false.i35_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i35

omap3_dpll_autoidle_read.exit:                    ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %14 = load ptr, ptr @ti_clk_ll_ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %autoidle_reg.i = getelementptr inbounds %struct.dpll_data, ptr %11, i32 0, i32 17
  %call.i = tail call i32 %16(ptr noundef %autoidle_reg.i) #4
  %17 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %autoidle_mask.i, align 4
  %and.i = and i32 %18, %call.i
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 false) #4, !range !71
  %shr.i = lshr i32 %and.i, %19
  %conv13 = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv13)
  %tobool14.not = icmp eq i8 %conv13, 0
  br i1 %tobool14.not, label %omap3_dpll_autoidle_read.exit.if.end16_crit_edge, label %omap3_dpll_autoidle_read.exit.lor.lhs.false.i35_crit_edge

omap3_dpll_autoidle_read.exit.lor.lhs.false.i35_crit_edge: ; preds = %omap3_dpll_autoidle_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i35

omap3_dpll_autoidle_read.exit.if.end16_crit_edge: ; preds = %omap3_dpll_autoidle_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

lor.lhs.false.i35:                                ; preds = %omap3_dpll_autoidle_read.exit.lor.lhs.false.i35_crit_edge, %if.end.i.lor.lhs.false.i35_crit_edge
  %20 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i34 = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i34, label %lor.lhs.false.i35.if.end16_crit_edge, label %if.end.i38

lor.lhs.false.i35.if.end16_crit_edge:             ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end.i38:                                       ; preds = %lor.lhs.false.i35
  %autoidle_mask.i36 = getelementptr inbounds %struct.dpll_data, ptr %.pr, i32 0, i32 19
  %21 = ptrtoint ptr %autoidle_mask.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %autoidle_mask.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i37 = icmp eq i32 %22, 0
  br i1 %tobool3.not.i37, label %if.end.i38.if.end16_crit_edge, label %if.end5.i42

if.end.i38.if.end16_crit_edge:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end5.i42:                                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %23 = load ptr, ptr @ti_clk_ll_ops, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %autoidle_reg.i39 = getelementptr inbounds %struct.dpll_data, ptr %.pr, i32 0, i32 17
  %call.i40 = tail call i32 %25(ptr noundef %autoidle_reg.i39) #4
  %26 = ptrtoint ptr %autoidle_mask.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %autoidle_mask.i36, align 4
  %neg.i = xor i32 %27, -1
  %and.i41 = and i32 %call.i40, %neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %28 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk_writel.i, align 4
  tail call void %30(i32 noundef %and.i41, ptr noundef %autoidle_reg.i39) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end5.i42, %if.end.i38.if.end16_crit_edge, %lor.lhs.false.i35.if.end16_crit_edge, %omap3_dpll_autoidle_read.exit.if.end16_crit_edge, %lor.lhs.false.i.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %tobool14.not68 = phi i1 [ true, %omap3_dpll_autoidle_read.exit.if.end16_crit_edge ], [ false, %lor.lhs.false.i35.if.end16_crit_edge ], [ false, %if.end.i38.if.end16_crit_edge ], [ false, %if.end5.i42 ], [ false, %if.end11.if.end16_crit_edge ], [ false, %lor.lhs.false.i.if.end16_crit_edge ]
  %31 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %33 = load ptr, ptr @ti_clk_ll_ops, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %32, i32 0, i32 5
  %call.i44 = tail call i32 %35(ptr noundef %control_reg.i) #4
  %enable_mask.i = getelementptr inbounds %struct.dpll_data, ptr %32, i32 0, i32 6
  %36 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enable_mask.i, align 4
  %neg.i45 = xor i32 %37, -1
  %and.i46 = and i32 %call.i44, %neg.i45
  %38 = tail call i32 @llvm.cttz.i32(i32 %37, i1 false) #4, !range !71
  %shl.i = shl i32 7, %38
  %or.i = or i32 %shl.i, %and.i46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %39 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i47 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %clk_writel.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_writel.i47, align 4
  tail call void %41(i32 noundef %or.i, ptr noundef %control_reg.i) #4
  %call17 = tail call fastcc i32 @_omap3_wait_dpll_status(ptr noundef %clk, i8 noundef zeroext 1)
  %brmerge = or i1 %tobool.not.i, %tobool14.not68
  br i1 %brmerge, label %if.end16.done_crit_edge, label %lor.lhs.false.i51

if.end16.done_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

lor.lhs.false.i51:                                ; preds = %if.end16
  %42 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i50 = icmp eq ptr %43, null
  br i1 %tobool1.not.i50, label %lor.lhs.false.i51.done_crit_edge, label %if.end.i54

lor.lhs.false.i51.done_crit_edge:                 ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end.i54:                                       ; preds = %lor.lhs.false.i51
  %autoidle_mask.i52 = getelementptr inbounds %struct.dpll_data, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %autoidle_mask.i52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %autoidle_mask.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i53 = icmp eq i32 %45, 0
  br i1 %tobool3.not.i53, label %if.end.i54.done_crit_edge, label %if.end5.i62

if.end.i54.done_crit_edge:                        ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end5.i62:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %46 = load ptr, ptr @ti_clk_ll_ops, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %autoidle_reg.i55 = getelementptr inbounds %struct.dpll_data, ptr %43, i32 0, i32 17
  %call.i56 = tail call i32 %48(ptr noundef %autoidle_reg.i55) #4
  %49 = ptrtoint ptr %autoidle_mask.i52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %autoidle_mask.i52, align 4
  %neg.i57 = xor i32 %50, -1
  %and.i58 = and i32 %call.i56, %neg.i57
  %51 = tail call i32 @llvm.cttz.i32(i32 %50, i1 false) #4, !range !71
  %shl.i59 = shl nuw i32 1, %51
  %or.i60 = or i32 %shl.i59, %and.i58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %52 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i61 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %clk_writel.i61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_writel.i61, align 4
  tail call void %54(i32 noundef %or.i60, ptr noundef %autoidle_reg.i55) #4
  br label %done

done:                                             ; preds = %if.end5.i62, %if.end.i54.done_crit_edge, %lor.lhs.false.i51.done_crit_edge, %if.end16.done_crit_edge, %do.end.done_crit_edge
  %r.0 = phi i32 [ 0, %do.end.done_crit_edge ], [ %call17, %if.end16.done_crit_edge ], [ %call17, %lor.lhs.false.i51.done_crit_edge ], [ %call17, %if.end.i54.done_crit_edge ], [ %call17, %if.end5.i62 ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_noncore_dpll_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_omap3_noncore_dpll_stop(ptr noundef %hw)
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_disable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %clkdm_clk_disable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkdm_clk_disable, align 4
  %clk2 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk2, align 4
  %call3 = tail call i32 %4(ptr noundef nonnull %1, ptr noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_omap3_noncore_dpll_stop(ptr noundef %clk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %modes = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %modes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modes, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap3_noncore_dpll_stop.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap3_noncore_dpll_stop, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !70

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @clk_hw_get_name(ptr noundef %clk) #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap3_noncore_dpll_stop.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.13, ptr noundef %call5) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %tobool.not.i = icmp eq ptr %clk, null
  br i1 %tobool.not.i, label %do.end.omap3_dpll_autoidle_read.exit_crit_edge, label %lor.lhs.false.i

do.end.omap3_dpll_autoidle_read.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_dpll_autoidle_read.exit

lor.lhs.false.i:                                  ; preds = %do.end
  %5 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge, label %if.end.i

lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_dpll_autoidle_read.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %autoidle_mask.i = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autoidle_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %if.end.i.omap3_dpll_autoidle_read.exit_crit_edge, label %if.end5.i

if.end.i.omap3_dpll_autoidle_read.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_dpll_autoidle_read.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %autoidle_reg.i = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 17
  %call.i = tail call i32 %11(ptr noundef %autoidle_reg.i) #4
  %12 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %autoidle_mask.i, align 4
  %and.i = and i32 %13, %call.i
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 false) #4, !range !71
  %shr.i = lshr i32 %and.i, %14
  %phi.cast = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.cast)
  %phi.cmp = icmp eq i8 %phi.cast, 0
  br label %omap3_dpll_autoidle_read.exit

omap3_dpll_autoidle_read.exit:                    ; preds = %if.end5.i, %if.end.i.omap3_dpll_autoidle_read.exit_crit_edge, %lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge, %do.end.omap3_dpll_autoidle_read.exit_crit_edge
  %retval.0.i1 = phi i1 [ %phi.cmp, %if.end5.i ], [ false, %lor.lhs.false.i.omap3_dpll_autoidle_read.exit_crit_edge ], [ false, %do.end.omap3_dpll_autoidle_read.exit_crit_edge ], [ false, %if.end.i.omap3_dpll_autoidle_read.exit_crit_edge ]
  %15 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %16, i32 0, i32 5
  %call.i3 = tail call i32 %19(ptr noundef %control_reg.i) #4
  %enable_mask.i = getelementptr inbounds %struct.dpll_data, ptr %16, i32 0, i32 6
  %20 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable_mask.i, align 4
  %neg.i = xor i32 %21, -1
  %and.i4 = and i32 %call.i3, %neg.i
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #4, !range !71
  %shl.i = shl nuw i32 1, %22
  %or.i = or i32 %shl.i, %and.i4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %23 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_writel.i, align 4
  tail call void %25(i32 noundef %or.i, ptr noundef %control_reg.i) #4
  %brmerge = or i1 %tobool.not.i, %retval.0.i1
  br i1 %brmerge, label %omap3_dpll_autoidle_read.exit.cleanup_crit_edge, label %lor.lhs.false.i8

omap3_dpll_autoidle_read.exit.cleanup_crit_edge:  ; preds = %omap3_dpll_autoidle_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i8:                                 ; preds = %omap3_dpll_autoidle_read.exit
  %26 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i7 = icmp eq ptr %27, null
  br i1 %tobool1.not.i7, label %lor.lhs.false.i8.cleanup_crit_edge, label %if.end.i11

lor.lhs.false.i8.cleanup_crit_edge:               ; preds = %lor.lhs.false.i8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i11:                                       ; preds = %lor.lhs.false.i8
  %autoidle_mask.i9 = getelementptr inbounds %struct.dpll_data, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %autoidle_mask.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %autoidle_mask.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i10 = icmp eq i32 %29, 0
  br i1 %tobool3.not.i10, label %if.end.i11.cleanup_crit_edge, label %if.end5.i19

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i19:                                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %30 = load ptr, ptr @ti_clk_ll_ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %autoidle_reg.i12 = getelementptr inbounds %struct.dpll_data, ptr %27, i32 0, i32 17
  %call.i13 = tail call i32 %32(ptr noundef %autoidle_reg.i12) #4
  %33 = ptrtoint ptr %autoidle_mask.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %autoidle_mask.i9, align 4
  %neg.i14 = xor i32 %34, -1
  %and.i15 = and i32 %call.i13, %neg.i14
  %35 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #4, !range !71
  %shl.i16 = shl nuw i32 1, %35
  %or.i17 = or i32 %shl.i16, %and.i15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %36 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i18 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %clk_writel.i18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_writel.i18, align 4
  tail call void %38(i32 noundef %or.i17, ptr noundef %autoidle_reg.i12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i19, %if.end.i11.cleanup_crit_edge, %lor.lhs.false.i8.cleanup_crit_edge, %omap3_dpll_autoidle_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_determine_rate(ptr noundef %hw, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpll_data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %clk_bypass = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_bypass, align 4
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %5) #4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp = icmp eq i32 %call, %7
  br i1 %cmp, label %land.lhs.true, label %if.end3.if.else_crit_edge

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %modes = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %modes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %modes, align 4
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end3.if.else_crit_edge
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %call9 = tail call i32 @omap2_dpll_round_rate(ptr noundef %hw, i32 noundef %7, ptr noundef %best_parent_rate) #4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %req, align 4
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %land.lhs.true.if.end12_crit_edge
  %clk_ref.sink = phi ptr [ %clk_ref, %if.else ], [ %clk_bypass, %land.lhs.true.if.end12_crit_edge ]
  %12 = ptrtoint ptr %clk_ref.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_ref.sink, align 4
  %best_parent_hw11 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %best_parent_hw11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %best_parent_hw11, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 4
  %best_parent_rate14 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %best_parent_rate14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %best_parent_rate14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dpll_round_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_set_parent(ptr noundef %hw, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool1.not = icmp eq i8 %index, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef nonnull %hw)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef nonnull %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then2 ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool1.not = icmp eq i32 %rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %hw) #4
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ref, align 4
  %cmp.not = icmp eq ptr %call, %3
  br i1 %cmp.not, label %if.end6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %last_rounded_rate = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %last_rounded_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_rounded_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = tail call ptr @ti_clk_get_features() #4
  %6 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call10, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end9.do.body39_crit_edge, label %if.then12

if.end9.do.body39_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

if.then12:                                        ; preds = %if.end9
  %last_rounded_n = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %last_rounded_n, align 2
  %call13 = tail call fastcc zeroext i16 @_omap3_dpll_compute_freqsel(ptr noundef nonnull %hw, i8 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call13)
  %tobool14.not = icmp eq i16 %call13, 0
  br i1 %tobool14.not, label %do.end, label %if.then12.do.body39_crit_edge, !prof !72

if.then12.do.body39_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 671, i32 noundef 9, ptr noundef null) #4
  br label %do.body39

do.body39:                                        ; preds = %do.end, %if.then12.do.body39_crit_edge, %if.end9.do.body39_crit_edge
  %freqsel.0 = phi i16 [ 0, %if.end9.do.body39_crit_edge ], [ 0, %do.end ], [ %call13, %if.then12.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3_noncore_dpll_set_rate.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap3_noncore_dpll_set_rate, %if.then49)) #4
          to label %do.end53 [label %if.then49], !srcloc !70

if.then49:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call ptr @clk_hw_get_name(ptr noundef nonnull %hw) #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap3_noncore_dpll_set_rate.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %call50, i32 noundef %rate) #4
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body39
  tail call fastcc void @omap3_noncore_dpll_program(ptr noundef nonnull %hw, i16 noundef zeroext %freqsel.0)
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end53 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @_omap3_dpll_compute_freqsel(ptr nocapture noundef readonly %clk, i8 noundef zeroext %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ref, align 4
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %3) #4
  %conv = zext i8 %n to i32
  %div = udiv i32 %call, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap3_dpll_compute_freqsel, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.15, i32 noundef %div) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = add i32 %div, -750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 250001, i32 %4)
  %5 = icmp ult i32 %4, 250001
  br i1 %5, label %do.end.if.end97_crit_edge, label %if.else

do.end.if.end97_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else:                                          ; preds = %do.end
  %6 = add i32 %div, -1000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %6)
  %7 = icmp ult i32 %6, 250000
  br i1 %7, label %if.else.if.end97_crit_edge, label %if.else14

if.else.if.end97_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else14:                                        ; preds = %if.else
  %8 = add i32 %div, -1250001
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %8)
  %9 = icmp ult i32 %8, 250000
  br i1 %9, label %if.else14.if.end97_crit_edge, label %if.else21

if.else14.if.end97_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else21:                                        ; preds = %if.else14
  %10 = add i32 %div, -1500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %10)
  %11 = icmp ult i32 %10, 250000
  br i1 %11, label %if.else21.if.end97_crit_edge, label %if.else28

if.else21.if.end97_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else28:                                        ; preds = %if.else21
  %12 = add i32 %div, -1750001
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000, i32 %12)
  %13 = icmp ult i32 %12, 350000
  br i1 %13, label %if.else28.if.end97_crit_edge, label %if.else35

if.else28.if.end97_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else35:                                        ; preds = %if.else28
  %14 = add i32 %div, -7500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %14)
  %15 = icmp ult i32 %14, 2500000
  br i1 %15, label %if.else35.if.end97_crit_edge, label %if.else42

if.else35.if.end97_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else42:                                        ; preds = %if.else35
  %16 = add i32 %div, -10000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %16)
  %17 = icmp ult i32 %16, 2500000
  br i1 %17, label %if.else42.if.end97_crit_edge, label %if.else49

if.else42.if.end97_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else49:                                        ; preds = %if.else42
  %18 = add i32 %div, -12500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %18)
  %19 = icmp ult i32 %18, 2500000
  br i1 %19, label %if.else49.if.end97_crit_edge, label %if.else56

if.else49.if.end97_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else56:                                        ; preds = %if.else49
  %20 = add i32 %div, -15000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %20)
  %21 = icmp ult i32 %20, 2500000
  br i1 %21, label %if.else56.if.end97_crit_edge, label %if.else63

if.else56.if.end97_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

if.else63:                                        ; preds = %if.else56
  %22 = add i32 %div, -17500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500000, i32 %22)
  %23 = icmp ult i32 %22, 3500000
  br i1 %23, label %if.else63.if.end97_crit_edge, label %do.body71

if.else63.if.end97_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

do.body71:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap3_dpll_compute_freqsel, %if.then83)) #4
          to label %if.end97 [label %if.then83], !srcloc !70

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.16, i32 noundef %conv) #4
  br label %if.end97

if.end97:                                         ; preds = %if.then83, %do.body71, %if.else63.if.end97_crit_edge, %if.else56.if.end97_crit_edge, %if.else49.if.end97_crit_edge, %if.else42.if.end97_crit_edge, %if.else35.if.end97_crit_edge, %if.else28.if.end97_crit_edge, %if.else21.if.end97_crit_edge, %if.else14.if.end97_crit_edge, %if.else.if.end97_crit_edge, %do.end.if.end97_crit_edge
  %f.0 = phi i16 [ 0, %if.then83 ], [ 3, %do.end.if.end97_crit_edge ], [ 4, %if.else.if.end97_crit_edge ], [ 5, %if.else14.if.end97_crit_edge ], [ 6, %if.else21.if.end97_crit_edge ], [ 7, %if.else28.if.end97_crit_edge ], [ 11, %if.else35.if.end97_crit_edge ], [ 12, %if.else42.if.end97_crit_edge ], [ 13, %if.else49.if.end97_crit_edge ], [ 14, %if.else56.if.end97_crit_edge ], [ 15, %if.else63.if.end97_crit_edge ], [ 0, %do.body71 ]
  ret i16 %f.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_noncore_dpll_program(ptr noundef %clk, i16 noundef zeroext %freqsel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %call = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef %clk)
  %call1 = tail call ptr @ti_clk_get_features() #4
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call2 = tail call i32 %6(ptr noundef %control_reg) #4
  %freqsel_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %freqsel_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freqsel_mask, align 4
  %neg = xor i32 %8, -1
  %and3 = and i32 %call2, %neg
  %conv = zext i16 %freqsel to i32
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #4, !range !71
  %shl = shl i32 %conv, %9
  %or = or i32 %shl, %and3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_writel, align 4
  tail call void %12(i32 noundef %or, ptr noundef %control_reg) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %13 = load ptr, ptr @ti_clk_ll_ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call8 = tail call i32 %15(ptr noundef %1) #4
  %dcc_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %dcc_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dcc_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %if.end.if.end19_crit_edge, label %if.then10

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then10:                                        ; preds = %if.end
  %last_rounded_rate = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %last_rounded_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_rounded_rate, align 4
  %dcc_rate = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 25
  %20 = ptrtoint ptr %dcc_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dcc_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not = icmp ult i32 %19, %21
  br i1 %cmp.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %or14 = or i32 %17, %call8
  br label %if.end19

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %neg16 = xor i32 %17, -1
  %and17 = and i32 %call8, %neg16
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12, %if.end.if.end19_crit_edge
  %v.0 = phi i32 [ %or14, %if.then12 ], [ %and17, %if.else ], [ %call8, %if.end.if.end19_crit_edge ]
  %mult_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mult_mask, align 4
  %div1_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %div1_mask, align 4
  %or20 = or i32 %25, %23
  %neg21 = xor i32 %or20, -1
  %and22 = and i32 %v.0, %neg21
  %last_rounded_m = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %last_rounded_m to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %last_rounded_m, align 4
  %conv23 = zext i16 %27 to i32
  %28 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #4, !range !71
  %shl26 = shl i32 %conv23, %28
  %or27 = or i32 %shl26, %and22
  %last_rounded_n = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %last_rounded_n, align 2
  %conv28 = zext i8 %30 to i32
  %sub = add nsw i32 %conv28, -1
  %31 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #4, !range !71
  %shl31 = shl i32 %sub, %31
  %or32 = or i32 %or27, %shl31
  %dco_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 22
  %32 = ptrtoint ptr %dco_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dco_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool33.not = icmp eq i32 %33, 0
  br i1 %tobool33.not, label %if.end19.if.end45_crit_edge, label %if.then34

if.end19.if.end45_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %clk) #4
  %call1.i = tail call i32 @clk_hw_get_rate(ptr noundef %call.i) #4
  %div.i = udiv i32 %call1.i, %conv28
  %mul.i = mul i32 %div.i, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 1000000000
  %34 = ptrtoint ptr %dco_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dco_mask, align 4
  %neg38 = xor i32 %35, -1
  %and39 = and i32 %or32, %neg38
  %conv40 = select i1 %cmp.i, i32 2, i32 4
  %36 = tail call i32 @llvm.cttz.i32(i32 %35, i1 false) #4, !range !71
  %shl43 = shl i32 %conv40, %36
  %or44 = or i32 %shl43, %and39
  br label %if.end45

if.end45:                                         ; preds = %if.then34, %if.end19.if.end45_crit_edge
  %v.1 = phi i32 [ %or44, %if.then34 ], [ %or32, %if.end19.if.end45_crit_edge ]
  %sddiv_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 23
  %37 = ptrtoint ptr %sddiv_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sddiv_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool46.not = icmp eq i32 %38, 0
  br i1 %tobool46.not, label %if.end45.if.end58_crit_edge, label %if.then47

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %last_rounded_m to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %last_rounded_m, align 4
  %41 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %last_rounded_n, align 2
  %call.i1 = tail call ptr @clk_hw_get_parent(ptr noundef %clk) #4
  %call1.i2 = tail call i32 @clk_hw_get_rate(ptr noundef %call.i1) #4
  %div.i3 = udiv i32 %call1.i2, 100000
  %conv.i4 = zext i16 %40 to i32
  %mul.i5 = mul nuw i32 %div.i3, %conv.i4
  %conv2.i6 = zext i8 %42 to i32
  %mul3.i = mul nuw nsw i32 %conv2.i6, 250
  %mul.i5.frozen = freeze i32 %mul.i5
  %mul3.i.frozen = freeze i32 %mul3.i
  %div8.i = udiv i32 %mul.i5.frozen, %mul3.i.frozen
  %43 = mul i32 %div8.i, %mul3.i.frozen
  %rem.i.decomposed = sub i32 %mul.i5.frozen, %43
  %div10.i = udiv i32 %div8.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %44 = mul i32 %div10.i, 10
  %rem9.i.decomposed = sub i32 %div8.i, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9.i.decomposed)
  %tobool11.not.i = icmp ne i32 %rem9.i.decomposed, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool11.not.i
  %inc.i = zext i1 %or.cond.i to i32
  %sd.0.i = add nuw nsw i32 %div10.i, %inc.i
  %45 = ptrtoint ptr %sddiv_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sddiv_mask, align 4
  %neg51 = xor i32 %46, -1
  %and52 = and i32 %v.1, %neg51
  %conv53 = and i32 %sd.0.i, 255
  %47 = tail call i32 @llvm.cttz.i32(i32 %46, i1 false) #4, !range !71
  %shl56 = shl i32 %conv53, %47
  %or57 = or i32 %shl56, %and52
  br label %if.end58

if.end58:                                         ; preds = %if.then47, %if.end45.if.end58_crit_edge
  %v.2 = phi i32 [ %or57, %if.then47 ], [ %v.1, %if.end45.if.end58_crit_edge ]
  %call59 = tail call ptr @ti_clk_get_features() #4
  %48 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call59, align 4
  %and61 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end58.if.end71_crit_edge, label %if.then64

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then64:                                        ; preds = %if.end58
  %tobool.not.i7 = icmp eq ptr %clk, null
  br i1 %tobool.not.i7, label %if.then64.if.end71_crit_edge, label %lor.lhs.false.i

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

lor.lhs.false.i:                                  ; preds = %if.then64
  %50 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i = icmp eq ptr %51, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end71_crit_edge, label %if.end.i

lor.lhs.false.i.if.end71_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.end.i:                                         ; preds = %lor.lhs.false.i
  %autoidle_mask.i = getelementptr inbounds %struct.dpll_data, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %autoidle_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool3.not.i = icmp eq i32 %53, 0
  br i1 %tobool3.not.i, label %if.end.i.lor.lhs.false.i12_crit_edge, label %omap3_dpll_autoidle_read.exit

if.end.i.lor.lhs.false.i12_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i12

omap3_dpll_autoidle_read.exit:                    ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %54 = load ptr, ptr @ti_clk_ll_ops, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %autoidle_reg.i = getelementptr inbounds %struct.dpll_data, ptr %51, i32 0, i32 17
  %call.i8 = tail call i32 %56(ptr noundef %autoidle_reg.i) #4
  %57 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %autoidle_mask.i, align 4
  %and.i = and i32 %58, %call.i8
  %59 = tail call i32 @llvm.cttz.i32(i32 %58, i1 false) #4, !range !71
  %shr.i = lshr i32 %and.i, %59
  %conv66 = trunc i32 %shr.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv66)
  %tobool67.not = icmp eq i8 %conv66, 0
  br i1 %tobool67.not, label %omap3_dpll_autoidle_read.exit.if.end71_crit_edge, label %omap3_dpll_autoidle_read.exit.lor.lhs.false.i12_crit_edge

omap3_dpll_autoidle_read.exit.lor.lhs.false.i12_crit_edge: ; preds = %omap3_dpll_autoidle_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i12

omap3_dpll_autoidle_read.exit.if.end71_crit_edge: ; preds = %omap3_dpll_autoidle_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

lor.lhs.false.i12:                                ; preds = %omap3_dpll_autoidle_read.exit.lor.lhs.false.i12_crit_edge, %if.end.i.lor.lhs.false.i12_crit_edge
  %60 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr70 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i11 = icmp eq ptr %.pr70, null
  br i1 %tobool1.not.i11, label %lor.lhs.false.i12.if.end71_crit_edge, label %if.end.i15

lor.lhs.false.i12.if.end71_crit_edge:             ; preds = %lor.lhs.false.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.end.i15:                                       ; preds = %lor.lhs.false.i12
  %autoidle_mask.i13 = getelementptr inbounds %struct.dpll_data, ptr %.pr70, i32 0, i32 19
  %61 = ptrtoint ptr %autoidle_mask.i13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %autoidle_mask.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool3.not.i14 = icmp eq i32 %62, 0
  br i1 %tobool3.not.i14, label %if.end.i15.lor.lhs.false.i23_crit_edge, label %if.end5.i19

if.end.i15.lor.lhs.false.i23_crit_edge:           ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i23

if.end5.i19:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %63 = load ptr, ptr @ti_clk_ll_ops, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %autoidle_reg.i16 = getelementptr inbounds %struct.dpll_data, ptr %.pr70, i32 0, i32 17
  %call.i17 = tail call i32 %65(ptr noundef %autoidle_reg.i16) #4
  %66 = ptrtoint ptr %autoidle_mask.i13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %autoidle_mask.i13, align 4
  %neg.i = xor i32 %67, -1
  %and.i18 = and i32 %call.i17, %neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %68 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk_writel.i, align 4
  tail call void %70(i32 noundef %and.i18, ptr noundef %autoidle_reg.i16) #4
  br label %lor.lhs.false.i23

lor.lhs.false.i23:                                ; preds = %if.end5.i19, %if.end.i15.lor.lhs.false.i23_crit_edge
  %71 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i22 = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i22, label %lor.lhs.false.i23.if.end71_crit_edge, label %if.end.i26

lor.lhs.false.i23.if.end71_crit_edge:             ; preds = %lor.lhs.false.i23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.end.i26:                                       ; preds = %lor.lhs.false.i23
  %autoidle_mask.i24 = getelementptr inbounds %struct.dpll_data, ptr %.pr, i32 0, i32 19
  %72 = ptrtoint ptr %autoidle_mask.i24 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %autoidle_mask.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool3.not.i25 = icmp eq i32 %73, 0
  br i1 %tobool3.not.i25, label %if.end.i26.if.end71_crit_edge, label %if.end5.i31

if.end.i26.if.end71_crit_edge:                    ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.end5.i31:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %74 = load ptr, ptr @ti_clk_ll_ops, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %autoidle_reg.i27 = getelementptr inbounds %struct.dpll_data, ptr %.pr, i32 0, i32 17
  %call.i28 = tail call i32 %76(ptr noundef %autoidle_reg.i27) #4
  br label %if.end71

if.end71:                                         ; preds = %if.end5.i31, %if.end.i26.if.end71_crit_edge, %lor.lhs.false.i23.if.end71_crit_edge, %lor.lhs.false.i12.if.end71_crit_edge, %omap3_dpll_autoidle_read.exit.if.end71_crit_edge, %lor.lhs.false.i.if.end71_crit_edge, %if.then64.if.end71_crit_edge, %if.end58.if.end71_crit_edge
  %tobool116.not = phi i1 [ true, %omap3_dpll_autoidle_read.exit.if.end71_crit_edge ], [ true, %if.end58.if.end71_crit_edge ], [ false, %if.then64.if.end71_crit_edge ], [ false, %lor.lhs.false.i23.if.end71_crit_edge ], [ false, %if.end.i26.if.end71_crit_edge ], [ false, %if.end5.i31 ], [ false, %lor.lhs.false.i12.if.end71_crit_edge ], [ false, %lor.lhs.false.i.if.end71_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %77 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel72 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %clk_writel72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk_writel72, align 4
  tail call void %79(i32 noundef %v.2, ptr noundef %1) #4
  %m4xen_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 27
  %80 = ptrtoint ptr %m4xen_mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %m4xen_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool74.not = icmp eq i32 %81, 0
  br i1 %tobool74.not, label %lor.lhs.false, label %if.end71.if.then76_crit_edge

if.end71.if.then76_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then76

lor.lhs.false:                                    ; preds = %if.end71
  %lpmode_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 26
  %82 = ptrtoint ptr %lpmode_mask to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lpmode_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool75.not = icmp eq i32 %83, 0
  br i1 %tobool75.not, label %lor.lhs.false.if.end108_crit_edge, label %lor.lhs.false.if.then76_crit_edge

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then76

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then76:                                        ; preds = %lor.lhs.false.if.then76_crit_edge, %if.end71.if.then76_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %84 = load ptr, ptr @ti_clk_ll_ops, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %control_reg78 = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call79 = tail call i32 %86(ptr noundef %control_reg78) #4
  %87 = ptrtoint ptr %m4xen_mask to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %m4xen_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool81.not = icmp eq i32 %88, 0
  br i1 %tobool81.not, label %if.then76.if.end92_crit_edge, label %if.then82

if.then76.if.end92_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then82:                                        ; preds = %if.then76
  %last_rounded_m4xen = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 9
  %89 = ptrtoint ptr %last_rounded_m4xen to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %last_rounded_m4xen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool83.not = icmp eq i8 %90, 0
  br i1 %tobool83.not, label %if.else87, label %if.then84

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #6
  %or86 = or i32 %88, %call79
  br label %if.end92

if.else87:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #6
  %neg89 = xor i32 %88, -1
  %and90 = and i32 %call79, %neg89
  br label %if.end92

if.end92:                                         ; preds = %if.else87, %if.then84, %if.then76.if.end92_crit_edge
  %v.3 = phi i32 [ %or86, %if.then84 ], [ %and90, %if.else87 ], [ %call79, %if.then76.if.end92_crit_edge ]
  %lpmode_mask93 = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 26
  %91 = ptrtoint ptr %lpmode_mask93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lpmode_mask93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool94.not = icmp eq i32 %92, 0
  br i1 %tobool94.not, label %if.end92.if.end105_crit_edge, label %if.then95

if.end92.if.end105_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.then95:                                        ; preds = %if.end92
  %last_rounded_lpmode = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 10
  %93 = ptrtoint ptr %last_rounded_lpmode to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %last_rounded_lpmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool96.not = icmp eq i8 %94, 0
  br i1 %tobool96.not, label %if.else100, label %if.then97

if.then97:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #6
  %or99 = or i32 %92, %v.3
  br label %if.end105

if.else100:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #6
  %neg102 = xor i32 %92, -1
  %and103 = and i32 %v.3, %neg102
  br label %if.end105

if.end105:                                        ; preds = %if.else100, %if.then97, %if.end92.if.end105_crit_edge
  %v.4 = phi i32 [ %or99, %if.then97 ], [ %and103, %if.else100 ], [ %v.3, %if.end92.if.end105_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %95 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel106 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %clk_writel106 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk_writel106, align 4
  tail call void %97(i32 noundef %v.4, ptr noundef %control_reg78) #4
  br label %if.end108

if.end108:                                        ; preds = %if.end105, %lor.lhs.false.if.end108_crit_edge
  %ssc_enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 37
  %98 = ptrtoint ptr %ssc_enable_mask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ssc_enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool109.not = icmp eq i32 %99, 0
  br i1 %tobool109.not, label %if.end108.if.end111_crit_edge, label %if.then110

if.end108.if.end111_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then110:                                       ; preds = %if.end108
  %100 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %102 = load ptr, ptr @ti_clk_ll_ops, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 5
  %call.i35 = tail call i32 %104(ptr noundef %control_reg.i) #4
  %ssc_modfreq.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 39
  %105 = ptrtoint ptr %ssc_modfreq.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ssc_modfreq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i36 = icmp eq i32 %106, 0
  br i1 %tobool.not.i36, label %if.then110.if.else115.i_crit_edge, label %land.lhs.true.i

if.then110.if.else115.i_crit_edge:                ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else115.i

land.lhs.true.i:                                  ; preds = %if.then110
  %ssc_deltam.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 40
  %107 = ptrtoint ptr %ssc_deltam.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ssc_deltam.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool1.not.i37 = icmp eq i32 %108, 0
  br i1 %tobool1.not.i37, label %land.lhs.true.i.if.else115.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else115.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else115.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %ssc_enable_mask.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 37
  %109 = ptrtoint ptr %ssc_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ssc_enable_mask.i, align 4
  %or.i = or i32 %110, %call.i35
  %ssc_downspread.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 41
  %111 = ptrtoint ptr %ssc_downspread.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ssc_downspread.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool2.not.i = icmp eq i8 %112, 0
  %ssc_downspread_mask5.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 38
  %113 = ptrtoint ptr %ssc_downspread_mask5.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ssc_downspread_mask5.i, align 4
  %or4.i = or i32 %114, %or.i
  %neg.i38 = xor i32 %114, -1
  %and.i39 = and i32 %or.i, %neg.i38
  %ctrl.0.i = select i1 %tobool2.not.i, i32 %and.i39, i32 %or4.i
  %clk_ref.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 4
  %115 = ptrtoint ptr %clk_ref.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %clk_ref.i, align 4
  %call6.i = tail call i32 @clk_hw_get_rate(ptr noundef %116) #4
  %last_rounded_n.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 12
  %117 = ptrtoint ptr %last_rounded_n.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %last_rounded_n.i, align 2
  %conv.i40 = zext i8 %118 to i32
  %div.i41 = udiv i32 %call6.i, %conv.i40
  %119 = ptrtoint ptr %ssc_modfreq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ssc_modfreq.i, align 4
  %mul.i42 = shl i32 %120, 2
  %div8.i43 = udiv i32 %div.i41, %mul.i42
  %div10.i44 = udiv i32 %call6.i, 70
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %div10.i44)
  %cmp.i45 = icmp ugt i32 %120, %div10.i44
  br i1 %cmp.i45, label %do.end.i, label %if.then.i.if.end17.i_crit_edge

if.then.i.if.end17.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %clk13.i = getelementptr inbounds %struct.clk_hw, ptr %clk, i32 0, i32 1
  %121 = ptrtoint ptr %clk13.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %clk13.i, align 4
  %call14.i = tail call ptr @__clk_get_name(ptr noundef %122) #4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %call14.i, i32 noundef %div10.i44) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %if.then.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %div8.i43)
  %cmp18193.i = icmp ugt i32 %div8.i43, 127
  br i1 %cmp18193.i, label %while.body.i, label %if.end17.i.while.end.i_crit_edge

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i:                                     ; preds = %if.end17.i
  %div22190.i = lshr i32 %div8.i43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div8.i43)
  %cmp18.i = icmp ugt i32 %div8.i43, 255
  br i1 %cmp18.i, label %while.body.i.1, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %div22190.i.1 = lshr i32 %div8.i43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div8.i43)
  %cmp18.i.1 = icmp ugt i32 %div8.i43, 511
  br i1 %cmp18.i.1, label %while.body.i.2, label %while.body.i.1.while.end.i_crit_edge

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %div22190.i.2 = lshr i32 %div8.i43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %div8.i43)
  %cmp18.i.2 = icmp ugt i32 %div8.i43, 1023
  br i1 %cmp18.i.2, label %while.body.i.3, label %while.body.i.2.while.end.i_crit_edge

while.body.i.2.while.end.i_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  %div22190.i.3 = lshr i32 %div8.i43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %div8.i43)
  %cmp18.i.3 = icmp ugt i32 %div8.i43, 2047
  br i1 %cmp18.i.3, label %while.body.i.4, label %while.body.i.3.while.end.i_crit_edge

while.body.i.3.while.end.i_crit_edge:             ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.4:                                   ; preds = %while.body.i.3
  %div22190.i.4 = lshr i32 %div8.i43, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div8.i43)
  %cmp18.i.4 = icmp ugt i32 %div8.i43, 4095
  br i1 %cmp18.i.4, label %while.body.i.5, label %while.body.i.4.while.end.i_crit_edge

while.body.i.4.while.end.i_crit_edge:             ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.5:                                   ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  %div22190.i.5 = lshr i32 %div8.i43, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %div8.i43)
  %cmp18.i.5 = icmp ugt i32 %div8.i43, 8191
  %div22190.i.6 = lshr i32 %div8.i43, 7
  %spec.select = select i1 %cmp18.i.5, i32 7, i32 6
  %spec.select72 = select i1 %cmp18.i.5, i32 %div22190.i.6, i32 %div22190.i.5
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.5, %while.body.i.4.while.end.i_crit_edge, %while.body.i.3.while.end.i_crit_edge, %while.body.i.2.while.end.i_crit_edge, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.end17.i.while.end.i_crit_edge
  %exponent.0.lcssa.i = phi i32 [ 0, %if.end17.i.while.end.i_crit_edge ], [ 1, %while.body.i.while.end.i_crit_edge ], [ 2, %while.body.i.1.while.end.i_crit_edge ], [ 3, %while.body.i.2.while.end.i_crit_edge ], [ 4, %while.body.i.3.while.end.i_crit_edge ], [ 5, %while.body.i.4.while.end.i_crit_edge ], [ %spec.select, %while.body.i.5 ]
  %mantissa.0.lcssa.i = phi i32 [ %div8.i43, %if.end17.i.while.end.i_crit_edge ], [ %div22190.i, %while.body.i.while.end.i_crit_edge ], [ %div22190.i.1, %while.body.i.1.while.end.i_crit_edge ], [ %div22190.i.2, %while.body.i.2.while.end.i_crit_edge ], [ %div22190.i.3, %while.body.i.3.while.end.i_crit_edge ], [ %div22190.i.4, %while.body.i.4.while.end.i_crit_edge ], [ %spec.select72, %while.body.i.5 ]
  %123 = tail call i32 @llvm.umin.i32(i32 %mantissa.0.lcssa.i, i32 127) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %124 = load ptr, ptr @ti_clk_ll_ops, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %ssc_modfreq_reg.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 32
  %call28.i = tail call i32 %126(ptr noundef %ssc_modfreq_reg.i) #4
  %ssc_modfreq_mant_mask.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 35
  %127 = ptrtoint ptr %ssc_modfreq_mant_mask.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ssc_modfreq_mant_mask.i, align 4
  %ssc_modfreq_exp_mask.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 36
  %129 = ptrtoint ptr %ssc_modfreq_exp_mask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ssc_modfreq_exp_mask.i, align 4
  %or29.i = or i32 %130, %128
  %neg30.i = xor i32 %or29.i, -1
  %and31.i = and i32 %call28.i, %neg30.i
  %131 = tail call i32 @llvm.cttz.i32(i32 %128, i1 false) #4, !range !71
  %shl.i = shl i32 %123, %131
  %or34.i = or i32 %and31.i, %shl.i
  %132 = tail call i32 @llvm.cttz.i32(i32 %130, i1 false) #4, !range !71
  %shl37.i = shl i32 %exponent.0.lcssa.i, %132
  %or38.i = or i32 %or34.i, %shl37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %133 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i48 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %clk_writel.i48 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %clk_writel.i48, align 4
  tail call void %135(i32 noundef %or38.i, ptr noundef %ssc_modfreq_reg.i) #4
  %last_rounded_m.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 8
  %136 = ptrtoint ptr %last_rounded_m.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %last_rounded_m.i, align 4
  %conv40.i = zext i16 %137 to i32
  %138 = ptrtoint ptr %ssc_deltam.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ssc_deltam.i, align 4
  %mul42.i = mul i32 %139, %conv40.i
  %140 = ptrtoint ptr %ssc_downspread.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ssc_downspread.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool45.not.i = icmp eq i8 %141, 0
  %spec.select.v.i = select i1 %tobool45.not.i, i32 10, i32 20
  %spec.select.i = udiv i32 %mul42.i, %spec.select.v.i
  %ssc_deltam_int_mask.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 33
  %142 = ptrtoint ptr %ssc_deltam_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ssc_deltam_int_mask.i, align 4
  %144 = tail call i32 @llvm.cttz.i32(i32 %143, i1 false) #4, !range !71
  %shl50.i = shl i32 %spec.select.i, %144
  %div51.i = udiv i32 %shl50.i, 100
  %div52.i = udiv i32 %div51.i, %div8.i43
  %145 = tail call i32 @llvm.umin.i32(i32 %div52.i, i32 1048575) #4
  %and58.i = and i32 %145, %143
  %shr.i49 = lshr i32 %and58.i, %144
  %ssc_deltam_frac_mask.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 34
  %146 = ptrtoint ptr %ssc_deltam_frac_mask.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ssc_deltam_frac_mask.i, align 4
  %and61.i = and i32 %145, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp ne i32 %and61.i, 0
  %inc64.i = zext i1 %tobool62.not.i to i32
  %deltam_ceil.0.i = add nuw nsw i32 %shr.i49, %inc64.i
  br i1 %tobool45.not.i, label %while.end.i.lor.lhs.false79.i_crit_edge, label %land.lhs.true69.i

while.end.i.lor.lhs.false79.i_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false79.i

land.lhs.true69.i:                                ; preds = %while.end.i
  %mul72.neg.i = mul nsw i32 %deltam_ceil.0.i, -2
  %sub.i = add nsw i32 %mul72.neg.i, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp73.i = icmp ult i32 %sub.i, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 2045, i16 %137)
  %cmp77.i = icmp ugt i16 %137, 2045
  %or.cond191.i = select i1 %cmp73.i, i1 true, i1 %cmp77.i
  br i1 %or.cond191.i, label %land.lhs.true69.i.do.end93.i_crit_edge, label %land.lhs.true69.i.lor.lhs.false79.i_crit_edge

land.lhs.true69.i.lor.lhs.false79.i_crit_edge:    ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false79.i

land.lhs.true69.i.do.end93.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end93.i

lor.lhs.false79.i:                                ; preds = %land.lhs.true69.i.lor.lhs.false79.i_crit_edge, %while.end.i.lor.lhs.false79.i_crit_edge
  %sub82.i = sub nsw i32 %conv40.i, %deltam_ceil.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub82.i)
  %cmp83.i = icmp ult i32 %sub82.i, 20
  %add.i = add nuw nsw i32 %deltam_ceil.0.i, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %add.i)
  %cmp88.i = icmp ugt i32 %add.i, 2045
  %or.cond192.i = or i1 %cmp83.i, %cmp88.i
  br i1 %or.cond192.i, label %lor.lhs.false79.i.do.end93.i_crit_edge, label %lor.lhs.false79.i.if.end99.i_crit_edge

lor.lhs.false79.i.if.end99.i_crit_edge:           ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99.i

lor.lhs.false79.i.do.end93.i_crit_edge:           ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end93.i

do.end93.i:                                       ; preds = %lor.lhs.false79.i.do.end93.i_crit_edge, %land.lhs.true69.i.do.end93.i_crit_edge
  %clk96.i = getelementptr inbounds %struct.clk_hw, ptr %clk, i32 0, i32 1
  %148 = ptrtoint ptr %clk96.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clk96.i, align 4
  %call97.i = tail call ptr @__clk_get_name(ptr noundef %149) #4
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %call97.i) #7
  br label %if.end99.i

if.end99.i:                                       ; preds = %do.end93.i, %lor.lhs.false79.i.if.end99.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %150 = load ptr, ptr @ti_clk_ll_ops, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %ssc_deltam_reg.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 31
  %call101.i = tail call i32 %152(ptr noundef %ssc_deltam_reg.i) #4
  %153 = ptrtoint ptr %ssc_deltam_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ssc_deltam_int_mask.i, align 4
  %155 = ptrtoint ptr %ssc_deltam_frac_mask.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ssc_deltam_frac_mask.i, align 4
  %or104.i = or i32 %156, %154
  %neg105.i = xor i32 %or104.i, -1
  %and106.i = and i32 %call101.i, %neg105.i
  %157 = tail call i32 @llvm.cttz.i32(i32 %or104.i, i1 false) #4, !range !71
  %shl111.i = shl i32 %145, %157
  %or112.i = or i32 %shl111.i, %and106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %158 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel113.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %clk_writel113.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %clk_writel113.i, align 4
  tail call void %160(i32 noundef %or112.i, ptr noundef %ssc_deltam_reg.i) #4
  br label %omap3_noncore_dpll_ssc_program.exit

if.else115.i:                                     ; preds = %land.lhs.true.i.if.else115.i_crit_edge, %if.then110.if.else115.i_crit_edge
  %ssc_enable_mask116.i = getelementptr inbounds %struct.dpll_data, ptr %101, i32 0, i32 37
  %161 = ptrtoint ptr %ssc_enable_mask116.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ssc_enable_mask116.i, align 4
  %neg117.i = xor i32 %162, -1
  %and118.i = and i32 %call.i35, %neg117.i
  br label %omap3_noncore_dpll_ssc_program.exit

omap3_noncore_dpll_ssc_program.exit:              ; preds = %if.else115.i, %if.end99.i
  %ctrl.1.i = phi i32 [ %ctrl.0.i, %if.end99.i ], [ %and118.i, %if.else115.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %163 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel120.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %clk_writel120.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %clk_writel120.i, align 4
  tail call void %165(i32 noundef %ctrl.1.i, ptr noundef %control_reg.i) #4
  br label %if.end111

if.end111:                                        ; preds = %omap3_noncore_dpll_ssc_program.exit, %if.end108.if.end111_crit_edge
  %call112 = tail call fastcc i32 @_omap3_noncore_dpll_lock(ptr noundef %clk)
  %brmerge = or i1 %tobool62.not, %tobool116.not
  %tobool.not.i50 = icmp eq ptr %clk, null
  %or.cond = or i1 %tobool.not.i50, %brmerge
  br i1 %or.cond, label %if.end111.if.end118_crit_edge, label %lor.lhs.false.i53

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

lor.lhs.false.i53:                                ; preds = %if.end111
  %166 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dpll_data, align 4
  %tobool1.not.i52 = icmp eq ptr %167, null
  br i1 %tobool1.not.i52, label %lor.lhs.false.i53.if.end118_crit_edge, label %if.end.i56

lor.lhs.false.i53.if.end118_crit_edge:            ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

if.end.i56:                                       ; preds = %lor.lhs.false.i53
  %autoidle_mask.i54 = getelementptr inbounds %struct.dpll_data, ptr %167, i32 0, i32 19
  %168 = ptrtoint ptr %autoidle_mask.i54 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %autoidle_mask.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool3.not.i55 = icmp eq i32 %169, 0
  br i1 %tobool3.not.i55, label %if.end.i56.if.end118_crit_edge, label %if.end5.i64

if.end.i56.if.end118_crit_edge:                   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end118

if.end5.i64:                                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %170 = load ptr, ptr @ti_clk_ll_ops, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %autoidle_reg.i57 = getelementptr inbounds %struct.dpll_data, ptr %167, i32 0, i32 17
  %call.i58 = tail call i32 %172(ptr noundef %autoidle_reg.i57) #4
  %173 = ptrtoint ptr %autoidle_mask.i54 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %autoidle_mask.i54, align 4
  %neg.i59 = xor i32 %174, -1
  %and.i60 = and i32 %call.i58, %neg.i59
  %175 = tail call i32 @llvm.cttz.i32(i32 %174, i1 false) #4, !range !71
  %shl.i61 = shl nuw i32 1, %175
  %or.i62 = or i32 %shl.i61, %and.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %176 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i63 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %clk_writel.i63 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %clk_writel.i63, align 4
  tail call void %178(i32 noundef %or.i62, ptr noundef %autoidle_reg.i57) #4
  br label %if.end118

if.end118:                                        ; preds = %if.end5.i64, %if.end.i56.if.end118_crit_edge, %lor.lhs.false.i53.if.end118_crit_edge, %if.end111.if.end118_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_set_rate_and_parent(ptr noundef %hw, i32 noundef %rate, i32 %parent_rate, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool1.not = icmp eq i32 %rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool2.not = icmp eq i8 %index, 0
  br i1 %tobool2.not, label %if.else, label %omap3_noncore_dpll_set_parent.exit

omap3_noncore_dpll_set_parent.exit:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef nonnull %hw) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef nonnull %hw, i32 noundef %rate, i32 undef)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %omap3_noncore_dpll_set_parent.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %omap3_noncore_dpll_set_parent.exit ], [ %call4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_clkoutx2_recalc(ptr noundef %hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool.not = icmp eq i32 %parent_rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.i:                                        ; preds = %if.end.critedge.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %pclk.0.i = phi ptr [ %call.i, %if.end.critedge.i.do.body.i_crit_edge ], [ null, %entry.do.body.i_crit_edge ]
  %hw.addr.0.i = phi ptr [ %call.i, %if.end.critedge.i.do.body.i_crit_edge ], [ %hw, %entry.do.body.i_crit_edge ]
  br label %do.body1.i

do.body1.i:                                       ; preds = %land.rhs.i.do.body1.i_crit_edge, %do.body.i
  %hw.addr.1.i = phi ptr [ %hw.addr.0.i, %do.body.i ], [ %call.i, %land.rhs.i.do.body1.i_crit_edge ]
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw.addr.1.i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end10.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body1.i
  %call2.i = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef nonnull %call.i) #4
  br i1 %call2.i, label %if.end.critedge.i, label %land.rhs.i.do.body1.i_crit_edge

land.rhs.i.do.body1.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1.i

if.end.critedge.i:                                ; preds = %land.rhs.i
  %dpll_data.i = getelementptr inbounds %struct.clk_hw_omap, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data.i, align 4
  %tobool7.not.i = icmp eq ptr %1, null
  br i1 %tobool7.not.i, label %if.end.critedge.i.do.body.i_crit_edge, label %if.end.critedge.i.if.end3_crit_edge

if.end.critedge.i.if.end3_crit_edge:              ; preds = %if.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.end.critedge.i.do.body.i_crit_edge:            ; preds = %if.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end10.i:                                       ; preds = %do.body1.i
  %tobool11.not.i = icmp eq ptr %pclk.0.i, null
  br i1 %tobool11.not.i, label %omap3_find_clkoutx2_dpll.exit, label %do.end10.i.if.end3_crit_edge

do.end10.i.if.end3_crit_edge:                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

omap3_find_clkoutx2_dpll.exit:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 825, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %do.end10.i.if.end3_crit_edge, %if.end.critedge.i.if.end3_crit_edge
  %retval.0.i.ph = phi ptr [ %pclk.0.i, %do.end10.i.if.end3_crit_edge ], [ %call.i, %if.end.critedge.i.if.end3_crit_edge ]
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %retval.0.i.ph, i32 0, i32 8
  %2 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpll_data, align 4
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %do.end, label %if.end3.if.end20_crit_edge, !prof !72

if.end3.if.end20_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 858, i32 noundef 9, ptr noundef null) #4
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end3.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %6 = load ptr, ptr @ti_clk_ll_ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %call27 = tail call i32 %8(ptr noundef %control_reg) #4
  %9 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_mask, align 4
  %and = and i32 %10, %call27
  %11 = tail call i32 @llvm.cttz.i32(i32 %10, i1 false) #4, !range !71
  %shr = lshr i32 %and, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 7
  br i1 %cmp.not, label %lor.lhs.false, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 42
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = zext i8 %15 to i32
  %spec.select = shl i32 %parent_rate, %16
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end20.cleanup_crit_edge, %omap3_find_clkoutx2_dpll.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %omap3_find_clkoutx2_dpll.exit ], [ %parent_rate, %if.end20.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_core_dpll_save_context(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call = tail call i32 %4(ptr noundef %control_reg) #4
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %and = and i32 %6, %call
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #4, !range !71
  %shr = lshr i32 %and, %7
  %context = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 12
  %8 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp eq i32 %shr, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call5 = tail call i32 %11(ptr noundef %1) #4
  %mult_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mult_mask, align 4
  %and6 = and i32 %13, %call5
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 false) #4, !range !71
  %shr9 = lshr i32 %and6, %14
  %conv = trunc i32 %shr9 to i16
  %last_rounded_m = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %last_rounded_m to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %last_rounded_m, align 4
  %div1_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div1_mask, align 4
  %and10 = and i32 %17, %call5
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 false) #4, !range !71
  %shr13 = lshr i32 %and10, %18
  %19 = trunc i32 %shr13 to i8
  %conv14 = add i8 %19, 1
  %last_rounded_n = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv14, ptr %last_rounded_n, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_core_dpll_restore_context(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %call.i = tail call i32 %6(ptr noundef %control_reg.i) #4
  %enable_mask.i = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_mask.i, align 4
  %neg.i = xor i32 %8, -1
  %and.i = and i32 %call.i, %neg.i
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #4, !range !71
  %shl.i = shl i32 4, %9
  %or.i = or i32 %shl.i, %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_writel.i, align 4
  tail call void %12(i32 noundef %or.i, ptr noundef %control_reg.i) #4
  %call = tail call fastcc i32 @_omap3_wait_dpll_status(ptr noundef %hw, i8 noundef zeroext 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %13 = load ptr, ptr @ti_clk_ll_ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call1 = tail call i32 %15(ptr noundef %3) #4
  %mult_mask = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mult_mask, align 4
  %div1_mask = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div1_mask, align 4
  %or = or i32 %19, %17
  %neg = xor i32 %or, -1
  %and = and i32 %call1, %neg
  %last_rounded_m = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %last_rounded_m to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %last_rounded_m, align 4
  %conv = zext i16 %21 to i32
  %22 = tail call i32 @llvm.cttz.i32(i32 %17, i1 false) #4, !range !71
  %shl = shl i32 %conv, %22
  %or4 = or i32 %shl, %and
  %last_rounded_n = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 12
  %23 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %last_rounded_n, align 2
  %conv5 = zext i8 %24 to i32
  %sub = add nsw i32 %conv5, -1
  %25 = tail call i32 @llvm.cttz.i32(i32 %19, i1 false) #4, !range !71
  %shl8 = shl i32 %sub, %25
  %or9 = or i32 %or4, %shl8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %26 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_writel, align 4
  tail call void %28(i32 noundef %or9, ptr noundef %3) #4
  %29 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %31 = load ptr, ptr @ti_clk_ll_ops, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %control_reg.i32 = getelementptr inbounds %struct.dpll_data, ptr %30, i32 0, i32 5
  %call.i33 = tail call i32 %33(ptr noundef %control_reg.i32) #4
  %enable_mask.i34 = getelementptr inbounds %struct.dpll_data, ptr %30, i32 0, i32 6
  %34 = ptrtoint ptr %enable_mask.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %enable_mask.i34, align 4
  %neg.i35 = xor i32 %35, -1
  %and.i36 = and i32 %call.i33, %neg.i35
  %36 = tail call i32 @llvm.cttz.i32(i32 %35, i1 false) #4, !range !71
  %shl.i37 = shl i32 7, %36
  %or.i38 = or i32 %shl.i37, %and.i36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %37 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i39 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %clk_writel.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_writel.i39, align 4
  tail call void %39(i32 noundef %or.i38, ptr noundef %control_reg.i32) #4
  %call11 = tail call fastcc i32 @_omap3_wait_dpll_status(ptr noundef %hw, i8 noundef zeroext 1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = and i32 %1, 255
  %40 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #4, !range !71
  %shl.i46 = shl i32 %conv.i, %40
  %or.i47 = or i32 %shl.i46, %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %41 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i48 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %clk_writel.i48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_writel.i48, align 4
  tail call void %43(i32 noundef %or.i47, ptr noundef %control_reg.i) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_omap3_wait_dpll_status(ptr noundef %clk, i8 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %clk) #4
  %idlest_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idlest_mask, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #4, !range !71
  %conv = zext i8 %state to i32
  %shl = shl i32 %conv, %4
  %idlest_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call337 = tail call i32 %7(ptr noundef %idlest_reg) #4
  %8 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idlest_mask, align 4
  %and38 = and i32 %9, %call337
  %conv5 = and i32 %shl, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and38, i32 %conv5)
  %cmp.not39.not = icmp eq i32 %and38, %conv5
  br i1 %cmp.not39.not, label %entry.do.body13_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.040 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add nuw nsw i32 %i.040, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call3 = tail call i32 %13(ptr noundef %idlest_reg) #4
  %14 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idlest_mask, align 4
  %and = and i32 %15, %call3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv5)
  %cmp.not = icmp ne i32 %and, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %i.040)
  %cmp7 = icmp ult i32 %i.040, 999999
  %or.cond = select i1 %cmp.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %cmp9 = icmp eq i32 %inc, 1000000
  br i1 %cmp9, label %do.end, label %while.end.do.body13_crit_edge

while.end.do.body13_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool.not = icmp eq i32 %conv5, 0
  %cond = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %call, ptr noundef nonnull %cond) #7
  br label %if.end25

do.body13:                                        ; preds = %while.end.do.body13_crit_edge, %entry.do.body13_crit_edge
  %i.0.lcssa44 = phi i32 [ %inc, %while.end.do.body13_crit_edge ], [ 0, %entry.do.body13_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_omap3_wait_dpll_status.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_omap3_wait_dpll_status, %if.then19)) #4
          to label %if.end25 [label %if.then19], !srcloc !70

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool21.not = icmp eq i32 %conv5, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_omap3_wait_dpll_status.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.26, ptr noundef %call, ptr noundef nonnull %cond22, i32 noundef %i.0.lcssa44) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %do.body13, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %if.then19 ], [ 0, %do.body13 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_noncore_dpll_save_context(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call = tail call i32 %4(ptr noundef %control_reg) #4
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %and = and i32 %6, %call
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #4, !range !71
  %shr = lshr i32 %and, %7
  %context = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 12
  %8 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp eq i32 %shr, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call5 = tail call i32 %11(ptr noundef %1) #4
  %mult_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mult_mask, align 4
  %and6 = and i32 %13, %call5
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 false) #4, !range !71
  %shr9 = lshr i32 %and6, %14
  %conv = trunc i32 %shr9 to i16
  %last_rounded_m = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %last_rounded_m to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %last_rounded_m, align 4
  %div1_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div1_mask, align 4
  %and10 = and i32 %17, %call5
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 false) #4, !range !71
  %shr13 = lshr i32 %and10, %18
  %19 = trunc i32 %shr13 to i8
  %conv14 = add i8 %19, 1
  %last_rounded_n = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv14, ptr %last_rounded_n, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_noncore_dpll_restore_context(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call = tail call i32 %4(ptr noundef %control_reg) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 %7(ptr noundef %1) #4
  %context = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 12
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %context, align 4
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_mask, align 4
  %and = and i32 %11, %call
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #4, !range !71
  %shr = lshr i32 %and, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr)
  %cmp = icmp eq i32 %9, %shr
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_rounded_m = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %last_rounded_m to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %last_rounded_m, align 4
  %conv = zext i16 %14 to i32
  %mult_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mult_mask, align 4
  %and5 = and i32 %16, %call2
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #4, !range !71
  %shr8 = lshr i32 %and5, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %conv)
  %cmp9 = icmp eq i32 %shr8, %conv
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %last_rounded_n = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %last_rounded_n to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %last_rounded_n, align 2
  %conv12 = zext i8 %19 to i32
  %div1_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %div1_mask, align 4
  %and13 = and i32 %21, %call2
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #4, !range !71
  %shr16 = lshr i32 %and13, %22
  %add = add i32 %shr16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv12)
  %cmp17 = icmp eq i32 %add, %conv12
  br i1 %cmp17, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end_crit_edge

land.lhs.true11.if.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true11.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp20 = icmp eq i32 %9, 7
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @omap3_noncore_dpll_program(ptr noundef %hw, i16 noundef zeroext 0)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dpll_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %25 = load ptr, ptr @ti_clk_ll_ops, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %24, i32 0, i32 5
  %call.i = tail call i32 %27(ptr noundef %control_reg.i) #4
  %enable_mask.i = getelementptr inbounds %struct.dpll_data, ptr %24, i32 0, i32 6
  %28 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enable_mask.i, align 4
  %neg.i = xor i32 %29, -1
  %and.i = and i32 %call.i, %neg.i
  %conv.i = and i32 %9, 255
  %30 = tail call i32 @llvm.cttz.i32(i32 %29, i1 false) #4, !range !71
  %shl.i = shl i32 %conv.i, %30
  %or.i = or i32 %shl.i, %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %31 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_writel.i, align 4
  tail call void %33(i32 noundef %or.i, ptr noundef %control_reg.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %land.lhs.true11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3_dpll_allow_idle(ptr noundef readonly %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %autoidle_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %autoidle_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoidle_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %autoidle_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 17
  %call = tail call i32 %6(ptr noundef %autoidle_reg) #4
  %7 = ptrtoint ptr %autoidle_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autoidle_mask, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %call, %neg
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #4, !range !71
  %shl = shl nuw i32 1, %9
  %or = or i32 %shl, %and
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_writel, align 4
  tail call void %12(i32 noundef %or, ptr noundef %autoidle_reg) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3_dpll_deny_idle(ptr noundef readonly %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %autoidle_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %autoidle_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoidle_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %autoidle_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 17
  %call = tail call i32 %6(ptr noundef %autoidle_reg) #4
  %7 = ptrtoint ptr %autoidle_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autoidle_mask, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %call, %neg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_writel, align 4
  tail call void %11(i32 noundef %and, ptr noundef %autoidle_reg) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll4_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_clk_get_features() #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 undef)
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll4_set_rate_and_parent(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_clk_get_features() #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %hw, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool1.not.i = icmp eq i32 %rate, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool2.not.i = icmp eq i8 %index, 0
  br i1 %tobool2.not.i, label %if.else.i, label %omap3_noncore_dpll_set_parent.exit.i

omap3_noncore_dpll_set_parent.exit.i:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call fastcc i32 @_omap3_noncore_dpll_bypass(ptr noundef nonnull %hw) #4
  br label %return

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef nonnull %hw, i32 noundef %rate, i32 undef) #4
  br label %return

return:                                           ; preds = %if.else.i, %omap3_noncore_dpll_set_parent.exit.i, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.return_crit_edge ], [ %call.i.i, %omap3_noncore_dpll_set_parent.exit.i ], [ %call4.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_dpll5_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 960000000, i32 %rate)
  %cmp = icmp eq i32 %rate, 960000000
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then:                                          ; preds = %entry
  %0 = zext i32 %parent_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %parent_rate, label %if.then.if.end2_crit_edge [
    i32 12000000, label %if.then.if.end4.i_crit_edge
    i32 13000000, label %if.end4.fold.split.i
    i32 19200000, label %if.end4.fold.split37.i
    i32 26000000, label %if.end4.fold.split38.i
    i32 38400000, label %if.end4.fold.split39.i
  ]

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.end4.fold.split.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.fold.split37.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.fold.split38.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.fold.split39.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.fold.split39.i, %if.end4.fold.split38.i, %if.end4.fold.split37.i, %if.end4.fold.split.i, %if.then.if.end4.i_crit_edge
  %i.035.lcssa.i = phi i32 [ 0, %if.then.if.end4.i_crit_edge ], [ 1, %if.end4.fold.split.i ], [ 2, %if.end4.fold.split37.i ], [ 3, %if.end4.fold.split38.i ], [ 4, %if.end4.fold.split39.i ]
  %dpll_data.i = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %1 = ptrtoint ptr %dpll_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dpll_data.i, align 4
  %m.i = getelementptr [5 x %struct.omap3_dpll5_settings], ptr @omap3_dpll5_apply_errata.precomputed, i32 0, i32 %i.035.lcssa.i, i32 1
  %3 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m.i, align 4
  %conv.i = trunc i32 %4 to i16
  %last_rounded_m.i = getelementptr inbounds %struct.dpll_data, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %last_rounded_m.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %last_rounded_m.i, align 4
  %n.i = getelementptr [5 x %struct.omap3_dpll5_settings], ptr @omap3_dpll5_apply_errata.precomputed, i32 0, i32 %i.035.lcssa.i, i32 2
  %6 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n.i, align 4
  %conv6.i = trunc i32 %7 to i8
  %last_rounded_n.i = getelementptr inbounds %struct.dpll_data, ptr %2, i32 0, i32 12
  %8 = ptrtoint ptr %last_rounded_n.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6.i, ptr %last_rounded_n.i, align 2
  %conv7.i = zext i32 %parent_rate to i64
  %conv9.i = zext i32 %4 to i64
  %mul.i = mul nuw nsw i64 %conv9.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !69

if.then168.i.i.i:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %7
  br label %omap3_dpll5_apply_errata.exit.thread

if.else174.i.i.i:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %mul.i) #8, !srcloc !74
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t31.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %omap3_dpll5_apply_errata.exit.thread

omap3_dpll5_apply_errata.exit.thread:             ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t31.i, %if.else174.i.i.i ]
  %last_rounded_rate.i = getelementptr inbounds %struct.dpll_data, ptr %2, i32 0, i32 7
  %10 = ptrtoint ptr %last_rounded_rate.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %last_rounded_rate.i, align 4
  tail call fastcc void @omap3_noncore_dpll_program(ptr noundef %hw, i16 noundef zeroext 0) #4
  br label %return

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call3 = tail call i32 @omap3_noncore_dpll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 undef)
  br label %return

return:                                           ; preds = %if.end2, %omap3_dpll5_apply_errata.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 0, %omap3_dpll5_apply_errata.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 536, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.omap3_noncore_dpll_enable, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 674, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @omap3_noncore_dpll_set_rate.__UNIQUE_ID_ddebug189, !5, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!9 = !{ptr @clkhwops_omap3_dpll, !10, !"clkhwops_omap3_dpll", i1 false, i1 false}
!10 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 994, i32 30}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 1019, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap3_dpll4_set_rate._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap3_dpll4_set_rate._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 1042, i32 3}
!18 = !{ptr @omap3_dpll4_set_rate_and_parent._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @omap3_dpll4_set_rate_and_parent._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 192, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @_omap3_noncore_dpll_bypass.__UNIQUE_ID_ddebug187, !21, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 145, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @_omap3_noncore_dpll_lock.__UNIQUE_ID_ddebug186, !25, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 223, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @_omap3_noncore_dpll_stop.__UNIQUE_ID_ddebug188, !29, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 100, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug184, !33, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 123, i32 3}
!38 = !{ptr @_omap3_dpll_compute_freqsel.__UNIQUE_ID_ddebug185, !37, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 322, i32 4}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @omap3_noncore_dpll_ssc_program._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @omap3_noncore_dpll_ssc_program._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 361, i32 4}
!46 = !{ptr @omap3_noncore_dpll_ssc_program._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap3_noncore_dpll_ssc_program._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 80, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @_omap3_wait_dpll_status._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @_omap3_wait_dpll_status._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 83, i32 3}
!57 = !{ptr @_omap3_wait_dpll_status.__UNIQUE_ID_ddebug183, !56, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!58 = !{ptr @omap3_dpll5_apply_errata.precomputed, !59, !"precomputed", i1 false, i1 false}
!59 = !{!"../drivers/clk/ti/dpll3xxx.c", i32 1058, i32 43}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2148719767, i64 2148719772, i64 2148719785, i64 2148719829, i64 2148719863, i64 2148719884}
!71 = !{i32 0, i32 33}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i8 0, i8 2}
!74 = !{i64 2148628486, i64 2148628766, i64 2148629100, i64 2148629434}
