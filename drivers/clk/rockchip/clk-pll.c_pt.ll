; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_clk_pll = type { %struct.clk_hw, %struct.clk_mux, ptr, %struct.notifier_block, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rockchip_clk_provider = type { ptr, %struct.clk_onecell_data, ptr, ptr, %struct.spinlock }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.41 }
%union.anon.41 = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i32, i32, i32 }

@rockchip_clk_register_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: needs two parent clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_clk_register_pll\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/rockchip/clk-pll.c\00", [33 x i8] zeroinitializer }, align 32
@rockchip_clk_register_pll._entry_ptr = internal global ptr @rockchip_clk_register_pll._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_%s\00", [25 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: could not allocate rate table for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_clk_norate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_enable, ptr @rockchip_rk3036_pll_disable, ptr @rockchip_rk3036_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_enable, ptr @rockchip_rk3036_pll_disable, ptr @rockchip_rk3036_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_recalc_rate, ptr @rockchip_pll_round_rate, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3036_pll_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_rk3066_pll_clk_norate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_enable, ptr @rockchip_rk3066_pll_disable, ptr @rockchip_rk3066_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_rk3066_pll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_enable, ptr @rockchip_rk3066_pll_disable, ptr @rockchip_rk3066_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_recalc_rate, ptr @rockchip_pll_round_rate, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3066_pll_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_clk_norate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_enable, ptr @rockchip_rk3399_pll_disable, ptr @rockchip_rk3399_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_enable, ptr @rockchip_rk3399_pll_disable, ptr @rockchip_rk3399_pll_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_recalc_rate, ptr @rockchip_pll_round_rate, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_rk3399_pll_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_clk_register_pll._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: Unknown pll type for pll clk %s\0A\00", [57 x i8] zeroinitializer }, align 32
@rockchip_clk_register_pll._entry_ptr.7 = internal global ptr @rockchip_clk_register_pll._entry.5, section ".printk_index", align 4
@rockchip_clk_register_pll._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: failed to register pll clock %s : %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@rockchip_clk_register_pll._entry_ptr.10 = internal global ptr @rockchip_clk_register_pll._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rockchip_rk3036_pll_wait_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: timeout waiting for pll to lock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_rk3036_pll_wait_lock\00", [34 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_wait_lock._entry_ptr = internal global ptr @rockchip_rk3036_pll_wait_lock._entry, section ".printk_index", align 4
@rockchip_rk3036_pll_set_rate.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_rockchip\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_rk3036_pll_set_rate\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: changing %s to %lu with a parent rate of %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Invalid rate : %lu for pll clk %s\0A\00", [55 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_set_rate._entry_ptr = internal global ptr @rockchip_rk3036_pll_set_rate._entry, section ".printk_index", align 4
@rockchip_rk3036_pll_set_params.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rockchip_rk3036_pll_set_params\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"%s: rate settings for %lu fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014%s: pll update unsuccessful, trying to restore old params\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_set_params._entry_ptr = internal global ptr @rockchip_rk3036_pll_set_params._entry, section ".printk_index", align 4
@rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_rk3036_pll_init\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: pll %s@%lu: Hz\0A\00", [44 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"old - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"new - fbdiv: %d, postdiv1: %d, refdiv: %d, postdiv2: %d, dsmpd: %d, frac: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: parent of %s not available\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_rk3036_pll_init._entry_ptr = internal global ptr @rockchip_rk3036_pll_init._entry, section ".printk_index", align 4
@rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.2, ptr @.str.25, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: pll %s: rate params do not match rate table, adjusting\0A\00", [36 x i8] zeroinitializer }, align 32
@rockchip_pll_wait_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_pll_wait_lock\00", [41 x i8] zeroinitializer }, align 32
@rockchip_pll_wait_lock._entry_ptr = internal global ptr @rockchip_pll_wait_lock._entry, section ".printk_index", align 4
@rockchip_rk3066_pll_recalc_rate.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rockchip_rk3066_pll_recalc_rate\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: pll %s is bypassed\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_rk3066_pll_set_rate.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.29, ptr @.str.2, ptr @.str.15, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_rk3066_pll_set_rate\00", [35 x i8] zeroinitializer }, align 32
@rockchip_rk3066_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.29, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rockchip_rk3066_pll_set_rate._entry_ptr = internal global ptr @rockchip_rk3066_pll_set_rate._entry, section ".printk_index", align 4
@rockchip_rk3066_pll_set_params.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rockchip_rk3066_pll_set_params\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: rate settings for %lu (nr, no, nf): (%d, %d, %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_rk3066_pll_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.30, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rockchip_rk3066_pll_set_params._entry_ptr = internal global ptr @rockchip_rk3066_pll_set_params._entry, section ".printk_index", align 4
@rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_rk3066_pll_init\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: pll %s@%lu: nr (%d:%d); no (%d:%d); nf(%d:%d), nb(%d:%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.32, ptr @.str.2, ptr @.str.25, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rockchip_rk3399_pll_wait_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.34, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_rk3399_pll_wait_lock\00", [34 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_wait_lock._entry_ptr = internal global ptr @rockchip_rk3399_pll_wait_lock._entry, section ".printk_index", align 4
@rockchip_rk3399_pll_set_rate.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.2, ptr @.str.15, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_rk3399_pll_set_rate\00", [35 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.35, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_set_rate._entry_ptr = internal global ptr @rockchip_rk3399_pll_set_rate._entry, section ".printk_index", align 4
@rockchip_rk3399_pll_set_params.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.36, ptr @.str.2, ptr @.str.18, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rockchip_rk3399_pll_set_params\00", [33 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.36, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_set_params._entry_ptr = internal global ptr @rockchip_rk3399_pll_set_params._entry, section ".printk_index", align 4
@rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.37, ptr @.str.2, ptr @.str.21, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_rk3399_pll_init\00", [39 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.37, ptr @.str.2, ptr @.str.22, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.37, ptr @.str.2, ptr @.str.23, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rockchip_rk3399_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.37, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rockchip_rk3399_pll_init._entry_ptr = internal global ptr @rockchip_rk3399_pll_init._entry, section ".printk_index", align 4
@rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.37, ptr @.str.2, ptr @.str.25, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 866, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 871, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 935, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [35 x i8] c"rockchip_rk3036_pll_clk_norate_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 344, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"rockchip_rk3036_pll_clk_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 351, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [35 x i8] c"rockchip_rk3066_pll_clk_norate_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 563, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"rockchip_rk3066_pll_clk_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 570, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [35 x i8] c"rockchip_rk3399_pll_clk_norate_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 828, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"rockchip_rk3399_pll_clk_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 835, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 961, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 976, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 134, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 254, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 260, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 200, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 237, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 315, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 317, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 320, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 331, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 336, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 95, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 410, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 489, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 495, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 434, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 472, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 550, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 614, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 738, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 744, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 682, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 721, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 799, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private constant [34 x i8] c"../drivers/clk/rockchip/clk-pll.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 815, i32 4 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @rockchip_clk_register_pll._entry, ptr @rockchip_clk_register_pll._entry.5, ptr @rockchip_clk_register_pll._entry.8, ptr @rockchip_clk_register_pll._entry_ptr, ptr @rockchip_clk_register_pll._entry_ptr.10, ptr @rockchip_clk_register_pll._entry_ptr.7, ptr @rockchip_pll_wait_lock._entry, ptr @rockchip_pll_wait_lock._entry_ptr, ptr @rockchip_rk3036_pll_init._entry, ptr @rockchip_rk3036_pll_init._entry_ptr, ptr @rockchip_rk3036_pll_set_params._entry, ptr @rockchip_rk3036_pll_set_params._entry_ptr, ptr @rockchip_rk3036_pll_set_rate._entry, ptr @rockchip_rk3036_pll_set_rate._entry_ptr, ptr @rockchip_rk3036_pll_wait_lock._entry, ptr @rockchip_rk3036_pll_wait_lock._entry_ptr, ptr @rockchip_rk3066_pll_set_params._entry, ptr @rockchip_rk3066_pll_set_params._entry_ptr, ptr @rockchip_rk3066_pll_set_rate._entry, ptr @rockchip_rk3066_pll_set_rate._entry_ptr, ptr @rockchip_rk3399_pll_init._entry, ptr @rockchip_rk3399_pll_init._entry_ptr, ptr @rockchip_rk3399_pll_set_params._entry, ptr @rockchip_rk3399_pll_set_params._entry_ptr, ptr @rockchip_rk3399_pll_set_rate._entry, ptr @rockchip_rk3399_pll_set_rate._entry_ptr, ptr @rockchip_rk3399_pll_wait_lock._entry, ptr @rockchip_rk3399_pll_wait_lock._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rockchip_rk3036_pll_clk_norate_ops, ptr @rockchip_rk3036_pll_clk_ops, ptr @rockchip_rk3066_pll_clk_norate_ops, ptr @rockchip_rk3066_pll_clk_ops, ptr @rockchip_rk3399_pll_clk_norate_ops, ptr @rockchip_rk3399_pll_clk_ops, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3036_pll_clk_norate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3036_pll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3066_pll_clk_norate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3066_pll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3399_pll_clk_norate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3399_pll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_pll._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_pll._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3036_pll_wait_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3036_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3036_pll_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3036_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pll_wait_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3066_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3066_pll_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3399_pll_wait_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3399_pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3399_pll_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3399_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_pll(ptr noundef %ctx, i32 noundef %pll_type, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef %con_offset, i32 noundef %grf_lock_offset, i32 noundef %lock_shift, i32 noundef %mode_offset, i32 noundef %mode_shift, ptr noundef %rate_table, i32 noundef %flags, i8 noundef zeroext %clk_pll_flags) local_unnamed_addr #0 align 64 {
entry:
  %pll_parents = alloca [3 x ptr], align 4
  %init = alloca %struct.clk_init_data, align 4
  %pll_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pll_parents) #8
  %0 = getelementptr inbounds [3 x ptr], ptr %pll_parents, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %pll_parents, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %2 = getelementptr inbounds i8, ptr %init, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pll_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pll_type)
  %cmp.not = icmp eq i32 %pll_type, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_parents)
  %cmp1.not = icmp eq i8 %num_parents, 2
  %or.cond = or i1 %cmp.not, %cmp1.not
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_parents)
  %cmp7.not = icmp ne i8 %num_parents, 1
  %4 = and i1 %cmp.not, %cmp7.not
  %or.cond238 = or i1 %4, %or.cond.not
  %5 = call ptr @memset(ptr %pll_name, i32 255, i32 20)
  br i1 %or.cond238, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pll_name, i32 noundef 20, ptr noundef nonnull @.str.3, ptr noundef %name)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %pll_mux_ops = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %pll_mux_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @clk_mux_ops, ptr %pll_mux_ops, align 4
  %pll_mux15 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %mode_offset
  %reg = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %reg, align 8
  %conv16 = trunc i32 %mode_shift to i8
  %shift = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv16, ptr %shift, align 4
  %mask = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 3
  br i1 %cmp.not, label %if.end21.thread, label %if.end21

if.end21.thread:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mask, align 8
  %flags22230 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %flags22230 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %flags22230, align 1
  %lock231 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %ctx, i32 0, i32 4
  %lock23232 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %lock23232 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock231, ptr %lock23232, align 8
  %init24233 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %init24233 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init24233, align 4
  br label %if.then36

if.end21:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %mask, align 8
  %flags22 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %flags22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %flags22, align 1
  %lock = getelementptr inbounds %struct.rockchip_clk_provider, ptr %ctx, i32 0, i32 4
  %lock23 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %lock23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lock, ptr %lock23, align 8
  %init24 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %init24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init, ptr %init24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %pll_type)
  %switch = icmp ult i32 %pll_type, 4
  br i1 %switch, label %if.end21.if.then36_crit_edge, label %if.end21.if.end40_crit_edge

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end21.if.then36_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.then36:                                        ; preds = %if.end21.if.then36_crit_edge, %if.end21.thread
  %lock237 = phi ptr [ %lock231, %if.end21.thread ], [ %lock, %if.end21.if.then36_crit_edge ]
  %flags22235 = phi ptr [ %flags22230, %if.end21.thread ], [ %flags22, %if.end21.if.then36_crit_edge ]
  %20 = ptrtoint ptr %flags22235 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %flags22235, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end21.if.end40_crit_edge
  %lock236 = phi ptr [ %lock, %if.end21.if.end40_crit_edge ], [ %lock237, %if.then36 ]
  %21 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_names, align 4
  %23 = ptrtoint ptr %pll_parents to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %pll_parents, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pll_name, ptr %0, align 4
  %arrayidx44 = getelementptr ptr, ptr %parent_names, i32 1
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx44, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %1, align 4
  %28 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %name, ptr %init, align 4
  %flags47 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %29 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %flags47, align 4
  %30 = ptrtoint ptr %pll_mux_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pll_mux_ops, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ops, align 4
  %parent_names50 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %33 = ptrtoint ptr %parent_names50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pll_parents, ptr %parent_names50, align 4
  %spec.select = select i1 %cmp.not, i8 2, i8 3
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select, ptr %34, align 4
  %call59 = call ptr @clk_register(ptr noundef null, ptr noundef %pll_mux15) #8
  %cmp.i = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end40.err_mux_crit_edge, label %if.end62

if.end40.err_mux_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mux

if.end62:                                         ; preds = %if.end40
  %36 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pll_name, ptr %init, align 4
  %or65 = or i32 %flags, 8
  %37 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or65, ptr %flags47, align 4
  %38 = ptrtoint ptr %parent_names50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %parent_names, ptr %parent_names50, align 4
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %34, align 4
  %tobool70.not = icmp eq ptr %rate_table, null
  br i1 %tobool70.not, label %if.end62.if.end106_crit_edge, label %if.end62.for.cond_crit_edge

if.end62.for.cond_crit_edge:                      ; preds = %if.end62
  br label %for.cond

if.end62.if.end106_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end62.for.cond_crit_edge
  %len.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %if.end62.for.cond_crit_edge ]
  %arrayidx72 = getelementptr %struct.rockchip_pll_rate_table, ptr %rate_table, i32 %len.0
  %40 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx72, align 4
  %cmp73.not = icmp eq i32 %41, 0
  %inc = add i32 %len.0, 1
  br i1 %cmp73.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %rate_count = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %rate_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %len.0, ptr %rate_count, align 4
  %mul = mul i32 %len.0, 28
  %call76 = call ptr @kmemdup(ptr noundef nonnull %rate_table, i32 noundef %mul, i32 noundef 3264) #8
  %rate_table77 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 9
  %43 = ptrtoint ptr %rate_table77 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call76, ptr %rate_table77, align 8
  %tobool79.not = icmp eq ptr %call76, null
  br i1 %tobool79.not, label %do.end92, label %for.end.if.end106_crit_edge, !prof !133

for.end.if.end106_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

do.end92:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 937, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %name) #8
  br label %if.end106

if.end106:                                        ; preds = %do.end92, %for.end.if.end106_crit_edge, %if.end62.if.end106_crit_edge
  %44 = zext i32 %pll_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pll_type, label %do.end135 [
    i32 0, label %if.end106.sw.bb_crit_edge
    i32 2, label %if.end106.sw.bb_crit_edge239
    i32 1, label %sw.bb114
    i32 3, label %sw.bb125
  ]

if.end106.sw.bb_crit_edge239:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end106.sw.bb_crit_edge:                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end106.sw.bb_crit_edge, %if.end106.sw.bb_crit_edge239
  %rate_table107 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %rate_table107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rate_table107, align 8
  %tobool108.not = icmp eq ptr %46, null
  br i1 %tobool108.not, label %if.then109, label %if.else111

if.then109:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @rockchip_rk3036_pll_clk_norate_ops, ptr %ops, align 4
  br label %sw.epilog

if.else111:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @rockchip_rk3036_pll_clk_ops, ptr %ops, align 4
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.end106
  %rate_table115 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %rate_table115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rate_table115, align 8
  %tobool116.not = icmp eq ptr %50, null
  br i1 %tobool116.not, label %sw.bb114.if.then120_crit_edge, label %lor.lhs.false117

sw.bb114.if.then120_crit_edge:                    ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

lor.lhs.false117:                                 ; preds = %sw.bb114
  %grf = getelementptr inbounds %struct.rockchip_clk_provider, ptr %ctx, i32 0, i32 3
  %51 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %grf, align 4
  %cmp.i228 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %lor.lhs.false117.if.then120_crit_edge, label %if.else122

lor.lhs.false117.if.then120_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

if.then120:                                       ; preds = %lor.lhs.false117.if.then120_crit_edge, %sw.bb114.if.then120_crit_edge
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rockchip_rk3066_pll_clk_norate_ops, ptr %ops, align 4
  br label %sw.epilog

if.else122:                                       ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @rockchip_rk3066_pll_clk_ops, ptr %ops, align 4
  br label %sw.epilog

sw.bb125:                                         ; preds = %if.end106
  %rate_table126 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %rate_table126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rate_table126, align 8
  %tobool127.not = icmp eq ptr %56, null
  br i1 %tobool127.not, label %if.then128, label %if.else130

if.then128:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @rockchip_rk3399_pll_clk_norate_ops, ptr %ops, align 4
  br label %sw.epilog

if.else130:                                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rockchip_rk3399_pll_clk_ops, ptr %ops, align 4
  br label %sw.epilog

do.end135:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, ptr noundef %name) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end135, %if.else130, %if.then128, %if.else122, %if.then120, %if.else111, %if.then109
  %init139 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %init139 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %init, ptr %init139, align 8
  %type = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %pll_type, ptr %type, align 8
  %61 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx, align 4
  %add.ptr141 = getelementptr i8, ptr %62, i32 %con_offset
  %reg_base142 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %reg_base142 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr141, ptr %reg_base142, align 4
  %lock_offset = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %lock_offset to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %grf_lock_offset, ptr %lock_offset, align 8
  %lock_shift143 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %lock_shift143 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %lock_shift, ptr %lock_shift143, align 4
  %flags144 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 8
  %66 = ptrtoint ptr %flags144 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %clk_pll_flags, ptr %flags144, align 4
  %lock146 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 11
  %67 = ptrtoint ptr %lock146 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %lock236, ptr %lock146, align 8
  %ctx147 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %call7.i.i, i32 0, i32 12
  %68 = ptrtoint ptr %ctx147 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %ctx, ptr %ctx147, align 4
  %call149 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  %cmp.i229 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %do.end154, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end154:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %call149 to i32
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %69) #11
  call void @clk_unregister(ptr noundef %call59) #8
  br label %err_mux

err_mux:                                          ; preds = %do.end154, %if.end40.err_mux_crit_edge
  %mux_clk.0 = phi ptr [ %call59, %if.end40.err_mux_crit_edge ], [ %call149, %do.end154 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_mux, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %mux_clk.0, %err_mux ], [ %call59, %sw.epilog.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pll_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pll_parents) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 32) #8, !srcloc !135
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %and.i = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #8
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr18.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !136
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.then15.i, %for.cond.i.for.end.i_crit_edge
  %pllcon.0.i = phi i32 [ %9, %if.then15.i ], [ %5, %for.cond.i.for.end.i_crit_edge ]
  %and26.i = and i32 %pllcon.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.end32.i, label %for.end.i.rockchip_rk3036_pll_wait_lock.exit_crit_edge

for.end.i.rockchip_rk3036_pll_wait_lock.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rockchip_rk3036_pll_wait_lock.exit

do.end32.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #11
  br label %rockchip_rk3036_pll_wait_lock.exit

rockchip_rk3036_pll_wait_lock.exit:               ; preds = %do.end32.i, %for.end.i.rockchip_rk3036_pll_wait_lock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_rk3036_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 2097184) #8, !srcloc !135
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %3 = lshr i32 %2, 21
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %prate to i64
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !136
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %and.i = and i32 %3, 4095
  %shr1.i = lshr i32 %3, 12
  %and2.i = and i32 %shr1.i, 7
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !136
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %and9.i = and i32 %7, 63
  %shr10.i = lshr i32 %7, 6
  %and11.i = and i32 %shr10.i, 7
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #8, !srcloc !136
  %11 = and i32 %10, -256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %conv1 = zext i32 %and.i to i64
  %mul = mul nuw nsw i64 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp169 = icmp ult i64 %mul, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !139

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174 = trunc i64 %mul to i32
  %div177 = udiv i32 %conv174, %and9.i
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and9.i, i64 %mul) #13, !srcloc !140
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %rate64.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %14 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp185 = icmp eq i32 %14, 0
  br i1 %cmp185, label %if.end410, label %if.end183.if.else614_crit_edge

if.end183.if.else614_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else614

if.end410:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  %mul188 = mul i32 %12, %prate
  %div404 = udiv i32 %mul188, %and9.i
  %15 = lshr i32 %div404, 24
  %shr412 = zext i32 %15 to i64
  %add413 = add i64 %rate64.0, %shr412
  br label %if.else614

if.else614:                                       ; preds = %if.end410, %if.end183.if.else614_crit_edge
  %rate64.1 = phi i64 [ %add413, %if.end410 ], [ %rate64.0, %if.end183.if.else614_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate64.1)
  %cmp616 = icmp ult i64 %rate64.1, 4294967296
  br i1 %cmp616, label %if.then624, label %if.else630, !prof !139

if.then624:                                       ; preds = %if.else614
  call void @__sanitizer_cov_trace_pc() #10
  %conv625 = trunc i64 %rate64.1 to i32
  %div628 = udiv i32 %conv625, %and2.i
  %conv629 = zext i32 %div628 to i64
  br label %if.else835

if.else630:                                       ; preds = %if.else614
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and2.i, i64 %rate64.1) #13, !srcloc !140
  %asmresult1.i1236 = extractvalue { i64, i64 } %16, 1
  br label %if.else835

if.else835:                                       ; preds = %if.else630, %if.then624
  %rate64.2 = phi i64 [ %conv629, %if.then624 ], [ %asmresult1.i1236, %if.else630 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate64.2)
  %cmp837 = icmp ult i64 %rate64.2, 4294967296
  br i1 %cmp837, label %if.then845, label %if.else851, !prof !139

if.then845:                                       ; preds = %if.else835
  call void @__sanitizer_cov_trace_pc() #10
  %conv846 = trunc i64 %rate64.2 to i32
  %div849 = udiv i32 %conv846, %and11.i
  br label %if.end855

if.else851:                                       ; preds = %if.else835
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and11.i, i64 %rate64.2) #13, !srcloc !140
  %asmresult1.i1261 = extractvalue { i64, i64 } %17, 1
  %extract.t1365 = trunc i64 %asmresult1.i1261 to i32
  br label %if.end855

if.end855:                                        ; preds = %if.else851, %if.then845
  %rate64.3.off0 = phi i32 [ %div849, %if.then845 ], [ %extract.t1365, %if.else851 ]
  ret i32 %rate64.3.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %drate, ptr nocapture noundef readnone %prate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %rate_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1, align 4
  %rate_count = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %rate_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rockchip_pll_rate_table, ptr %1, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp2.not = icmp ugt i32 %5, %drate
  br i1 %cmp2.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add i32 %3, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx5 = getelementptr %struct.rockchip_pll_rate_table, ptr %1, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %for.end ], [ %5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3036_pll_set_rate.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3036_pll_set_rate, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call4 = tail call ptr @__clk_get_name(ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3036_pll_set_rate.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %call4, i32 noundef %drate, i32 noundef %prate) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rate_table1.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 10
  %4 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %do.end.do.end10_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end10_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_pll_rate_table, ptr %3, i32 %i.012.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %drate)
  %cmp3.i = icmp eq i32 %7, %drate
  br i1 %cmp3.i, label %rockchip_get_pll_settings.exit, label %for.cond.i

rockchip_get_pll_settings.exit:                   ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %rockchip_get_pll_settings.exit.do.end10_crit_edge, label %if.end15

rockchip_get_pll_settings.exit.do.end10_crit_edge: ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end10:                                         ; preds = %rockchip_get_pll_settings.exit.do.end10_crit_edge, %for.cond.i.do.end10_crit_edge, %do.end.do.end10_crit_edge
  %clk12 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk12, align 4
  %call13 = tail call ptr @__clk_get_name(ptr noundef %9) #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %drate, ptr noundef %call13) #11
  br label %cleanup

if.end15:                                         ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %hw, ptr noundef nonnull %arrayidx.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end10
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -22, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3036_pll_init(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup113_crit_edge, label %if.end

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.end:                                           ; preds = %entry
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #8
  %rate_table1.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 9
  %3 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 10
  %5 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11.not.i = icmp eq i32 %6, 0
  br i1 %cmp11.not.i, label %if.end.cleanup113_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup113_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.cleanup113_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.cleanup113_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call)
  %cmp3.i = icmp eq i32 %8, %call
  br i1 %cmp3.i, label %rockchip_get_pll_settings.exit, label %for.cond.i

rockchip_get_pll_settings.exit:                   ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool2.not, label %rockchip_get_pll_settings.exit.cleanup113_crit_edge, label %if.end4

rockchip_get_pll_settings.exit.cleanup113_crit_edge: ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.end4:                                          ; preds = %rockchip_get_pll_settings.exit
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !136
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %and.i = and i32 %12, 4095
  %shr1.i = lshr i32 %12, 12
  %and2.i = and i32 %shr1.i, 7
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !136
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %and9.i = and i32 %16, 63
  %shr10.i = lshr i32 %16, 6
  %and11.i = and i32 %shr10.i, 7
  %shr12.i = lshr i32 %16, 12
  %and13.i = and i32 %shr12.i, 1
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #8, !srcloc !136
  %20 = and i32 %19, -256
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3036_pll_init, %if.then10)) #8
          to label %do.body13 [label %if.then10], !srcloc !141

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %call11 = tail call ptr @__clk_get_name(ptr noundef %23) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug169, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %call11, i32 noundef %call) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3036_pll_init, %if.then25)) #8
          to label %do.body29 [label %if.then25], !srcloc !141

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.22, i32 noundef %and.i, i32 noundef %and2.i, i32 noundef %and9.i, i32 noundef %and11.i, i32 noundef %and13.i, i32 noundef %21) #8
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3036_pll_init, %if.then41)) #8
          to label %do.end50 [label %if.then41], !srcloc !141

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %24 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %postdiv143 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %postdiv143 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %postdiv143, align 4
  %refdiv44 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %refdiv44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %refdiv44, align 4
  %postdiv245 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %postdiv245 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %postdiv245, align 4
  %dsmpd46 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %dsmpd46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dsmpd46, align 4
  %frac47 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %frac47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frac47, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.23, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then41, %do.body29
  %37 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %and.i)
  %cmp.not = icmp eq i32 %39, %and.i
  br i1 %cmp.not, label %lor.lhs.false, label %do.end50.if.then80_crit_edge

do.end50.if.then80_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false:                                    ; preds = %do.end50
  %postdiv154 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %postdiv154 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %postdiv154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and2.i)
  %cmp56.not = icmp eq i32 %41, %and2.i
  br i1 %cmp56.not, label %lor.lhs.false58, label %lor.lhs.false.if.then80_crit_edge

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false58:                                  ; preds = %lor.lhs.false
  %refdiv59 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %refdiv59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %refdiv59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %and9.i)
  %cmp61.not = icmp eq i32 %43, %and9.i
  br i1 %cmp61.not, label %lor.lhs.false63, label %lor.lhs.false58.if.then80_crit_edge

lor.lhs.false58.if.then80_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false63:                                  ; preds = %lor.lhs.false58
  %postdiv264 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %postdiv264 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %postdiv264, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and11.i)
  %cmp66.not = icmp eq i32 %45, %and11.i
  br i1 %cmp66.not, label %lor.lhs.false68, label %lor.lhs.false63.if.then80_crit_edge

lor.lhs.false63.if.then80_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false68:                                  ; preds = %lor.lhs.false63
  %dsmpd69 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %dsmpd69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dsmpd69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %and13.i)
  %cmp71.not = icmp eq i32 %47, %and13.i
  br i1 %cmp71.not, label %lor.lhs.false73, label %lor.lhs.false68.if.then80_crit_edge

lor.lhs.false68.if.then80_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false73:                                  ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool75.not = icmp eq i32 %and13.i, 0
  br i1 %tobool75.not, label %land.lhs.true, label %lor.lhs.false73.cleanup113_crit_edge

lor.lhs.false73.cleanup113_crit_edge:             ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

land.lhs.true:                                    ; preds = %lor.lhs.false73
  %frac76 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 5
  %48 = ptrtoint ptr %frac76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frac76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %21)
  %cmp78.not = icmp eq i32 %49, %21
  br i1 %cmp78.not, label %land.lhs.true.cleanup113_crit_edge, label %land.lhs.true.if.then80_crit_edge

land.lhs.true.if.then80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

land.lhs.true.cleanup113_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.then80:                                        ; preds = %land.lhs.true.if.then80_crit_edge, %lor.lhs.false68.if.then80_crit_edge, %lor.lhs.false63.if.then80_crit_edge, %lor.lhs.false58.if.then80_crit_edge, %lor.lhs.false.if.then80_crit_edge, %do.end50.if.then80_crit_edge
  %clk81 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %50 = ptrtoint ptr %clk81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk81, align 4
  %call82 = tail call ptr @clk_get_parent(ptr noundef %51) #8
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %do.end87, label %do.body93

do.end87:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %clk81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk81, align 4
  %call90 = tail call ptr @__clk_get_name(ptr noundef %53) #8
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, ptr noundef %call90) #11
  br label %cleanup113

do.body93:                                        ; preds = %if.then80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3036_pll_init, %if.then105)) #8
          to label %do.end110 [label %if.then105], !srcloc !141

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %clk81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk81, align 4
  %call107 = tail call ptr @__clk_get_name(ptr noundef %55) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, ptr noundef %call107) #8
  br label %do.end110

do.end110:                                        ; preds = %if.then105, %do.body93
  %call111 = tail call fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %hw, ptr noundef nonnull %arrayidx.i)
  br label %cleanup113

cleanup113:                                       ; preds = %do.end110, %do.end87, %land.lhs.true.cleanup113_crit_edge, %lor.lhs.false73.cleanup113_crit_edge, %rockchip_get_pll_settings.exit.cleanup113_crit_edge, %for.cond.i.cleanup113_crit_edge, %if.end.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %pll, ptr nocapture noundef readonly %rate) unnamed_addr #0 align 64 {
entry:
  %cur = alloca %struct.rockchip_pll_rate_table, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_mux_ops1 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %pll_mux_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_mux_ops1, align 4
  %pll_mux2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cur) #8
  %2 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3036_pll_set_params.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3036_pll_set_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %10 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %postdiv1 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %postdiv1, align 4
  %refdiv = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %refdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refdiv, align 4
  %postdiv2 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %postdiv2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %postdiv2, align 4
  %dsmpd = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %dsmpd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dsmpd, align 4
  %frac = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %frac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frac, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3036_pll_set_params.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %9, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 4
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !136
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %and.i = and i32 %26, 4095
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i, ptr %2, align 4
  %shr1.i = lshr i32 %26, 12
  %and2.i = and i32 %shr1.i, 7
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and2.i, ptr %3, align 4
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !136
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %and9.i = and i32 %32, 63
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and9.i, ptr %4, align 4
  %shr10.i = lshr i32 %32, 6
  %and11.i = and i32 %shr10.i, 7
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and11.i, ptr %5, align 4
  %shr12.i = lshr i32 %32, 12
  %and13.i = and i32 %shr12.i, 1
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and13.i, ptr %6, align 4
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #8, !srcloc !136
  %39 = and i32 %38, -256
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %7, align 4
  %42 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cur, align 4
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 14
  %43 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_parent, align 4
  %call7 = tail call zeroext i8 %44(ptr noundef %pll_mux2) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call7)
  %cmp = icmp eq i8 %call7, 1
  br i1 %cmp, label %if.then9, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %45 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_parent, align 4
  %call11 = tail call i32 %46(ptr noundef %pll_mux2, i8 noundef zeroext 0) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge
  %47 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %postdiv114 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %postdiv114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %postdiv114, align 4
  %shl15 = shl i32 %51, 12
  %or16 = or i32 %49, %shl15
  %or17 = or i32 %or16, 2147418112
  %52 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #8, !srcloc !135
  %refdiv18 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 2
  %55 = ptrtoint ptr %refdiv18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %refdiv18, align 4
  %postdiv221 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 3
  %57 = ptrtoint ptr %postdiv221 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %postdiv221, align 4
  %shl22 = shl i32 %58, 6
  %dsmpd25 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 4
  %59 = ptrtoint ptr %dsmpd25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dsmpd25, align 4
  %shl26 = shl i32 %60, 12
  %or23 = or i32 %56, %shl22
  %or27 = or i32 %or23, %shl26
  %or28 = or i32 %or27, 301924352
  %61 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %62 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_base.i, align 4
  %add.ptr30 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %61) #8, !srcloc !135
  %64 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i, align 4
  %add.ptr32 = getelementptr i8, ptr %65, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !136
  %67 = shl i32 %66, 24
  %frac35 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 5
  %68 = ptrtoint ptr %frac35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %frac35, align 4
  %or37 = or i32 %67, %69
  %70 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %71 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base.i, align 4
  %add.ptr39 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %70) #8, !srcloc !135
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end12
  %73 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %74, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  %and.i84 = and i32 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #8
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %78, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !136
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.then15.i, %for.cond.i.for.end.i_crit_edge
  %pllcon.0.i = phi i32 [ %80, %if.then15.i ], [ %76, %for.cond.i.for.end.i_crit_edge ]
  %and26.i = and i32 %pllcon.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.end45, label %for.end.i.if.end49_crit_edge

for.end.i.if.end49_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end45:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #11
  %call48 = call fastcc i32 @rockchip_rk3036_pll_set_params(ptr noundef %pll, ptr noundef nonnull %cur)
  br label %if.end49

if.end49:                                         ; preds = %do.end45, %for.end.i.if.end49_crit_edge
  %cond.i88 = phi i32 [ -110, %do.end45 ], [ 0, %for.end.i.if.end49_crit_edge ]
  br i1 %cmp, label %if.then51, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %set_parent52 = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %set_parent52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_parent52, align 4
  %call54 = tail call i32 %82(ptr noundef %pll_mux2, i8 noundef zeroext 1) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end49.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cur) #8
  ret i32 %cond.i88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 512) #8, !srcloc !135
  %call = tail call fastcc i32 @rockchip_pll_wait_lock(ptr noundef %hw)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_rk3066_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 33554944) #8, !srcloc !135
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %3 = lshr i32 %2, 25
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_recalc_rate(ptr noundef %hw, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !136
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3066_pll_recalc_rate.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3066_pll_recalc_rate, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !141

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3066_pll_recalc_rate.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, ptr noundef %call9) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %conv = zext i32 %prate to i64
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !136
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %shr.i = lshr i32 %7, 8
  %and.i = and i32 %shr.i, 63
  %add.i = add nuw nsw i32 %and.i, 1
  %and2.i = and i32 %7, 15
  %add3.i = add nuw nsw i32 %and2.i, 1
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !136
  %11 = and i32 %10, -14745600
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %add11.i = add nuw nsw i32 %12, 1
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %add.ptr14.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !136
  %conv11 = zext i32 %add11.i to i64
  %mul = mul nuw nsw i64 %conv11, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp184 = icmp ult i64 %mul, 4294967296
  br i1 %cmp184, label %if.then192, label %if.else198, !prof !139

if.then192:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %conv193 = trunc i64 %mul to i32
  %div196 = udiv i32 %conv193, %add.i
  %conv197 = zext i32 %div196 to i64
  br label %if.else403

if.else198:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %mul) #13, !srcloc !140
  %asmresult1.i = extractvalue { i64, i64 } %16, 1
  br label %if.else403

if.else403:                                       ; preds = %if.else198, %if.then192
  %rate64.0 = phi i64 [ %conv197, %if.then192 ], [ %asmresult1.i, %if.else198 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate64.0)
  %cmp405 = icmp ult i64 %rate64.0, 4294967296
  br i1 %cmp405, label %if.then413, label %if.else419, !prof !139

if.then413:                                       ; preds = %if.else403
  call void @__sanitizer_cov_trace_pc() #10
  %conv414 = trunc i64 %rate64.0 to i32
  %div417 = udiv i32 %conv414, %add3.i
  br label %cleanup

if.else419:                                       ; preds = %if.else403
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add3.i, i64 %rate64.0) #13, !srcloc !140
  %asmresult1.i620 = extractvalue { i64, i64 } %17, 1
  %extract.t670 = trunc i64 %asmresult1.i620 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else419, %if.then413, %if.then8, %do.body
  %retval.0 = phi i32 [ %prate, %if.then8 ], [ %prate, %do.body ], [ %div417, %if.then413 ], [ %extract.t670, %if.else419 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pll_wait_lock(ptr nocapture noundef readonly %pll) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 12
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %grf1 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %grf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !145
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000
  %lock_offset = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 5
  %lock_shift = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %5 = ptrtoint ptr %lock_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lock_offset, align 4
  %call9 = call i32 @regmap_read(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.do.end36_crit_edge

for.cond.do.end36_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

lor.lhs.false:                                    ; preds = %for.cond
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %lock_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lock_shift, align 4
  %shl = shl nuw i32 1, %10
  %and = and i32 %shl, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @ktime_get() #8
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %lock_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lock_offset, align 4
  %call19 = call i32 @regmap_read(ptr noundef %3, i32 noundef %12, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end36_crit_edge

for.end.do.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = ptrtoint ptr %lock_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lock_shift, align 4
  %shl26 = shl nuw i32 1, %16
  %and27 = and i32 %shl26, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.rhs.do.end36_crit_edge, label %lor.rhs.if.end39_crit_edge

lor.rhs.if.end39_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

lor.rhs.do.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %lor.rhs.do.end36_crit_edge, %for.end.do.end36_crit_edge, %for.cond.do.end36_crit_edge
  %tobool24.not56.ph = phi i32 [ %call19, %for.end.do.end36_crit_edge ], [ -110, %lor.rhs.do.end36_crit_edge ], [ %call9, %for.cond.do.end36_crit_edge ]
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.26) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %lor.rhs.if.end39_crit_edge
  %tobool24.not5670 = phi i32 [ %tobool24.not56.ph, %do.end36 ], [ 0, %lor.rhs.if.end39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %tobool24.not5670
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3066_pll_set_rate.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3066_pll_set_rate, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3066_pll_set_rate.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.29, ptr noundef %call4, i32 noundef %drate, i32 noundef %prate) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rate_table1.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %do.end.do.end10_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.do.end10_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %drate)
  %cmp3.i = icmp eq i32 %5, %drate
  br i1 %cmp3.i, label %rockchip_get_pll_settings.exit, label %for.cond.i

rockchip_get_pll_settings.exit:                   ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %rockchip_get_pll_settings.exit.do.end10_crit_edge, label %if.end14

rockchip_get_pll_settings.exit.do.end10_crit_edge: ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end10:                                         ; preds = %rockchip_get_pll_settings.exit.do.end10_crit_edge, %for.cond.i.do.end10_crit_edge, %do.end.do.end10_crit_edge
  %call12 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.29, i32 noundef %drate, ptr noundef %call12) #11
  br label %cleanup

if.end14:                                         ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %hw, ptr noundef nonnull %arrayidx.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ -22, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3066_pll_init(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #8
  %rate_table1.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 9
  %3 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 10
  %5 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11.not.i = icmp eq i32 %6, 0
  br i1 %cmp11.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call)
  %cmp3.i = icmp eq i32 %8, %call
  br i1 %cmp3.i, label %rockchip_get_pll_settings.exit, label %for.cond.i

rockchip_get_pll_settings.exit:                   ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool2.not, label %rockchip_get_pll_settings.exit.cleanup_crit_edge, label %if.end4

rockchip_get_pll_settings.exit.cleanup_crit_edge: ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %rockchip_get_pll_settings.exit
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !136
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %shr.i = lshr i32 %12, 8
  %and.i = and i32 %shr.i, 63
  %add.i = add nuw nsw i32 %and.i, 1
  %and2.i = and i32 %12, 15
  %add3.i = add nuw nsw i32 %and2.i, 1
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !136
  %16 = and i32 %15, -14745600
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %add11.i = add nuw nsw i32 %17, 1
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !136
  %21 = and i32 %20, -15794176
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %add19.i = add nuw nsw i32 %22, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3066_pll_init, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !141

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %23 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %no = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %no to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %no, align 4
  %nf = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nf, align 4
  %nb = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nb, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, ptr noundef %call11, i32 noundef %call, i32 noundef %25, i32 noundef %add.i, i32 noundef %27, i32 noundef %add3.i, i32 noundef %29, i32 noundef %add11.i, i32 noundef %31, i32 noundef %add19.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end4
  %32 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add.i)
  %cmp.not = icmp eq i32 %34, %add.i
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.do.body35_crit_edge

do.end.do.body35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

lor.lhs.false:                                    ; preds = %do.end
  %no20 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %no20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %no20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add3.i)
  %cmp22.not = icmp eq i32 %36, %add3.i
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false.do.body35_crit_edge

lor.lhs.false.do.body35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %nf25 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %nf25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nf25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add11.i)
  %cmp27.not = icmp eq i32 %38, %add11.i
  br i1 %cmp27.not, label %lor.lhs.false29, label %lor.lhs.false24.do.body35_crit_edge

lor.lhs.false24.do.body35_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %nb30 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %nb30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nb30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add19.i)
  %cmp32.not = icmp eq i32 %40, %add19.i
  br i1 %cmp32.not, label %lor.lhs.false29.cleanup_crit_edge, label %lor.lhs.false29.do.body35_crit_edge

lor.lhs.false29.do.body35_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body35:                                        ; preds = %lor.lhs.false29.do.body35_crit_edge, %lor.lhs.false24.do.body35_crit_edge, %lor.lhs.false.do.body35_crit_edge, %do.end.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3066_pll_init, %if.then47)) #8
          to label %do.end51 [label %if.then47], !srcloc !141

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug177, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.32, ptr noundef %call48) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body35
  %call52 = tail call fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %hw, ptr noundef nonnull %arrayidx.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %lor.lhs.false29.cleanup_crit_edge, %rockchip_get_pll_settings.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %pll, ptr nocapture noundef readonly %rate) unnamed_addr #0 align 64 {
entry:
  %cur = alloca %struct.rockchip_pll_rate_table, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_mux_ops1 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %pll_mux_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_mux_ops1, align 4
  %pll_mux2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cur) #8
  %2 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %cur, i32 20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 -1, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3066_pll_set_params.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3066_pll_set_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %10 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %no = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %no, align 4
  %nf = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nf, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3066_pll_set_params.__UNIQUE_ID_ddebug174, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %9, i32 noundef %12, i32 noundef %14, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 4
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !136
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %shr.i = lshr i32 %20, 8
  %and.i = and i32 %shr.i, 63
  %add.i = add nuw nsw i32 %and.i, 1
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %2, align 4
  %and2.i = and i32 %20, 15
  %add3.i = add nuw nsw i32 %and2.i, 1
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add3.i, ptr %4, align 4
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !136
  %26 = and i32 %25, -14745600
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %add11.i = add nuw nsw i32 %27, 1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add11.i, ptr %3, align 4
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !136
  %32 = and i32 %31, -15794176
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %add19.i = add nuw nsw i32 %33, 1
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add19.i, ptr %5, align 4
  %35 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cur, align 4
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_parent, align 4
  %call7 = tail call zeroext i8 %37(ptr noundef %pll_mux2) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call7)
  %cmp = icmp eq i8 %call7, 1
  br i1 %cmp, label %if.then9, label %do.end.do.body13_crit_edge

do.end.do.body13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_parent, align 4
  %call11 = tail call i32 %39(ptr noundef %pll_mux2, i8 noundef zeroext 0) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then9, %do.end.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536879104) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %42 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %sub = shl i32 %44, 8
  %shl = add i32 %sub, -256
  %no20 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %no20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %no20, align 4
  %sub21 = add i32 %46, -1
  %or23 = or i32 %sub21, %shl
  %or24 = or i32 %or23, 1057947648
  %47 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %48 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !135
  %nf27 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %nf27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nf27, align 4
  %sub28 = add i32 %51, -1
  %or30 = or i32 %sub28, 536805376
  %52 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 4
  %add.ptr32 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %52) #8, !srcloc !135
  %nb = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nb, align 4
  %sub33 = add i32 %56, -1
  %or35 = or i32 %sub33, 268369920
  %57 = tail call i32 @llvm.bswap.i32(i32 %or35)
  %58 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base.i, align 4
  %add.ptr37 = getelementptr i8, ptr %59, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %57) #8, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i, align 4
  %add.ptr42 = getelementptr i8, ptr %61, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 8192) #8, !srcloc !135
  %62 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %42, align 4
  %mul = mul i32 %63, 500
  %div = udiv i32 %mul, 24
  %add = add nuw nsw i32 %div, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %add) #8
  %call62 = tail call fastcc i32 @rockchip_pll_wait_lock(ptr noundef %pll)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.body13.if.end71_crit_edge, label %do.end67

do.body13.if.end71_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end67:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30) #11
  %call70 = call fastcc i32 @rockchip_rk3066_pll_set_params(ptr noundef %pll, ptr noundef nonnull %cur)
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %do.body13.if.end71_crit_edge
  br i1 %cmp, label %if.then73, label %if.end71.if.end77_crit_edge

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %set_parent74 = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %65 = ptrtoint ptr %set_parent74 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_parent74, align 4
  %call76 = tail call i32 %66(ptr noundef %pll_mux2, i8 noundef zeroext 1) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end71.if.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cur) #8
  ret i32 %call62
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 256) #8, !srcloc !135
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %.mask.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.rockchip_rk3399_pll_wait_lock.exit_crit_edge

for.cond.i.rockchip_rk3399_pll_wait_lock.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rockchip_rk3399_pll_wait_lock.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #8
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr18.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !136
  %.mask45.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask45.i)
  %tobool27.not.inv.not.i = icmp eq i32 %.mask45.i, 0
  br i1 %tobool27.not.inv.not.i, label %do.end32.i, label %for.end.i.rockchip_rk3399_pll_wait_lock.exit_crit_edge

for.end.i.rockchip_rk3399_pll_wait_lock.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rockchip_rk3399_pll_wait_lock.exit

do.end32.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34) #11
  br label %rockchip_rk3399_pll_wait_lock.exit

rockchip_rk3399_pll_wait_lock.exit:               ; preds = %do.end32.i, %for.end.i.rockchip_rk3399_pll_wait_lock.exit_crit_edge, %for.cond.i.rockchip_rk3399_pll_wait_lock.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_rk3399_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777472) #8, !srcloc !135
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %3 = lshr i32 %2, 24
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %prate to i64
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !136
  %3 = and i32 %2, -15794176
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !136
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %and7.i = and i32 %8, 63
  %shr8.i = lshr i32 %8, 8
  %and9.i = and i32 %shr8.i, 7
  %shr10.i = lshr i32 %8, 12
  %and11.i = and i32 %shr10.i, 7
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !136
  %12 = and i32 %11, -256
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #8, !srcloc !136
  %conv1 = zext i32 %4 to i64
  %mul = mul nuw nsw i64 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp169 = icmp ult i64 %mul, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !139

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174 = trunc i64 %mul to i32
  %div177 = udiv i32 %conv174, %and7.i
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and7.i, i64 %mul) #13, !srcloc !140
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %rate64.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %18 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp185 = icmp eq i32 %18, 0
  br i1 %cmp185, label %if.end410, label %if.end183.if.else614_crit_edge

if.end183.if.else614_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else614

if.end410:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  %mul188 = mul i32 %13, %prate
  %div404 = udiv i32 %mul188, %and7.i
  %19 = lshr i32 %div404, 24
  %shr412 = zext i32 %19 to i64
  %add413 = add i64 %rate64.0, %shr412
  br label %if.else614

if.else614:                                       ; preds = %if.end410, %if.end183.if.else614_crit_edge
  %rate64.1 = phi i64 [ %add413, %if.end410 ], [ %rate64.0, %if.end183.if.else614_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate64.1)
  %cmp616 = icmp ult i64 %rate64.1, 4294967296
  br i1 %cmp616, label %if.then624, label %if.else630, !prof !139

if.then624:                                       ; preds = %if.else614
  call void @__sanitizer_cov_trace_pc() #10
  %conv625 = trunc i64 %rate64.1 to i32
  %div628 = udiv i32 %conv625, %and9.i
  %conv629 = zext i32 %div628 to i64
  br label %if.else835

if.else630:                                       ; preds = %if.else614
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and9.i, i64 %rate64.1) #13, !srcloc !140
  %asmresult1.i1235 = extractvalue { i64, i64 } %20, 1
  br label %if.else835

if.else835:                                       ; preds = %if.else630, %if.then624
  %rate64.2 = phi i64 [ %conv629, %if.then624 ], [ %asmresult1.i1235, %if.else630 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate64.2)
  %cmp837 = icmp ult i64 %rate64.2, 4294967296
  br i1 %cmp837, label %if.then845, label %if.else851, !prof !139

if.then845:                                       ; preds = %if.else835
  call void @__sanitizer_cov_trace_pc() #10
  %conv846 = trunc i64 %rate64.2 to i32
  %div849 = udiv i32 %conv846, %and11.i
  br label %if.end855

if.else851:                                       ; preds = %if.else835
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and11.i, i64 %rate64.2) #13, !srcloc !140
  %asmresult1.i1260 = extractvalue { i64, i64 } %21, 1
  %extract.t1364 = trunc i64 %asmresult1.i1260 to i32
  br label %if.end855

if.end855:                                        ; preds = %if.else851, %if.then845
  %rate64.3.off0 = phi i32 [ %div849, %if.then845 ], [ %extract.t1364, %if.else851 ]
  ret i32 %rate64.3.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_set_rate(ptr noundef %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3399_pll_set_rate.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3399_pll_set_rate, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call4 = tail call ptr @__clk_get_name(ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3399_pll_set_rate.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.35, ptr noundef %call4, i32 noundef %drate, i32 noundef %prate) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rate_table1.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 10
  %4 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %do.end.do.end10_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end10_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_pll_rate_table, ptr %3, i32 %i.012.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %drate)
  %cmp3.i = icmp eq i32 %7, %drate
  br i1 %cmp3.i, label %rockchip_get_pll_settings.exit, label %for.cond.i

rockchip_get_pll_settings.exit:                   ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool6.not, label %rockchip_get_pll_settings.exit.do.end10_crit_edge, label %if.end15

rockchip_get_pll_settings.exit.do.end10_crit_edge: ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end10:                                         ; preds = %rockchip_get_pll_settings.exit.do.end10_crit_edge, %for.cond.i.do.end10_crit_edge, %do.end.do.end10_crit_edge
  %clk12 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk12, align 4
  %call13 = tail call ptr @__clk_get_name(ptr noundef %9) #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.35, i32 noundef %drate, ptr noundef %call13) #11
  br label %cleanup

if.end15:                                         ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %hw, ptr noundef nonnull %arrayidx.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end10
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -22, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_rk3399_pll_init(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup113_crit_edge, label %if.end

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.end:                                           ; preds = %entry
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #8
  %rate_table1.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 9
  %3 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 10
  %5 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11.not.i = icmp eq i32 %6, 0
  br i1 %cmp11.not.i, label %if.end.cleanup113_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup113_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.cleanup113_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.cleanup113_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call)
  %cmp3.i = icmp eq i32 %8, %call
  br i1 %cmp3.i, label %rockchip_get_pll_settings.exit, label %for.cond.i

rockchip_get_pll_settings.exit:                   ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool2.not, label %rockchip_get_pll_settings.exit.cleanup113_crit_edge, label %if.end4

rockchip_get_pll_settings.exit.cleanup113_crit_edge: ; preds = %rockchip_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.end4:                                          ; preds = %rockchip_get_pll_settings.exit
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !136
  %12 = and i32 %11, -15794176
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !136
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %and7.i = and i32 %17, 63
  %shr8.i = lshr i32 %17, 8
  %and9.i = and i32 %shr8.i, 7
  %shr10.i = lshr i32 %17, 12
  %and11.i = and i32 %shr10.i, 7
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !136
  %21 = and i32 %20, -256
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #8, !srcloc !136
  %26 = lshr i32 %25, 27
  %and25.i = and i32 %26, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3399_pll_init, %if.then10)) #8
          to label %do.body13 [label %if.then10], !srcloc !141

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %call11 = tail call ptr @__clk_get_name(ptr noundef %28) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.37, ptr noundef %call11, i32 noundef %call) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3399_pll_init, %if.then25)) #8
          to label %do.body29 [label %if.then25], !srcloc !141

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.22, i32 noundef %13, i32 noundef %and9.i, i32 noundef %and7.i, i32 noundef %and11.i, i32 noundef %and25.i, i32 noundef %22) #8
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3399_pll_init, %if.then41)) #8
          to label %do.end50 [label %if.then41], !srcloc !141

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %29 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %postdiv143 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %postdiv143 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %postdiv143, align 4
  %refdiv44 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %refdiv44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %refdiv44, align 4
  %postdiv245 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %postdiv245 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %postdiv245, align 4
  %dsmpd46 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %dsmpd46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dsmpd46, align 4
  %frac47 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 5
  %40 = ptrtoint ptr %frac47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frac47, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.23, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then41, %do.body29
  %42 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %13)
  %cmp.not = icmp eq i32 %44, %13
  br i1 %cmp.not, label %lor.lhs.false, label %do.end50.if.then80_crit_edge

do.end50.if.then80_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false:                                    ; preds = %do.end50
  %postdiv154 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %postdiv154 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %postdiv154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %and9.i)
  %cmp56.not = icmp eq i32 %46, %and9.i
  br i1 %cmp56.not, label %lor.lhs.false58, label %lor.lhs.false.if.then80_crit_edge

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false58:                                  ; preds = %lor.lhs.false
  %refdiv59 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %refdiv59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %refdiv59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %and7.i)
  %cmp61.not = icmp eq i32 %48, %and7.i
  br i1 %cmp61.not, label %lor.lhs.false63, label %lor.lhs.false58.if.then80_crit_edge

lor.lhs.false58.if.then80_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false63:                                  ; preds = %lor.lhs.false58
  %postdiv264 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 3
  %49 = ptrtoint ptr %postdiv264 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %postdiv264, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %and11.i)
  %cmp66.not = icmp eq i32 %50, %and11.i
  br i1 %cmp66.not, label %lor.lhs.false68, label %lor.lhs.false63.if.then80_crit_edge

lor.lhs.false63.if.then80_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false68:                                  ; preds = %lor.lhs.false63
  %dsmpd69 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 4
  %51 = ptrtoint ptr %dsmpd69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dsmpd69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %and25.i)
  %cmp71.not = icmp eq i32 %52, %and25.i
  br i1 %cmp71.not, label %lor.lhs.false73, label %lor.lhs.false68.if.then80_crit_edge

lor.lhs.false68.if.then80_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

lor.lhs.false73:                                  ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool75.not = icmp eq i32 %and25.i, 0
  br i1 %tobool75.not, label %land.lhs.true, label %lor.lhs.false73.cleanup113_crit_edge

lor.lhs.false73.cleanup113_crit_edge:             ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

land.lhs.true:                                    ; preds = %lor.lhs.false73
  %frac76 = getelementptr %struct.rockchip_pll_rate_table, ptr %4, i32 %i.012.i, i32 1, i32 0, i32 5
  %53 = ptrtoint ptr %frac76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frac76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %22)
  %cmp78.not = icmp eq i32 %54, %22
  br i1 %cmp78.not, label %land.lhs.true.cleanup113_crit_edge, label %land.lhs.true.if.then80_crit_edge

land.lhs.true.if.then80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

land.lhs.true.cleanup113_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.then80:                                        ; preds = %land.lhs.true.if.then80_crit_edge, %lor.lhs.false68.if.then80_crit_edge, %lor.lhs.false63.if.then80_crit_edge, %lor.lhs.false58.if.then80_crit_edge, %lor.lhs.false.if.then80_crit_edge, %do.end50.if.then80_crit_edge
  %clk81 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %55 = ptrtoint ptr %clk81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk81, align 4
  %call82 = tail call ptr @clk_get_parent(ptr noundef %56) #8
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %do.end87, label %do.body93

do.end87:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %clk81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk81, align 4
  %call90 = tail call ptr @__clk_get_name(ptr noundef %58) #8
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.37, ptr noundef %call90) #11
  br label %cleanup113

do.body93:                                        ; preds = %if.then80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3399_pll_init, %if.then105)) #8
          to label %do.end110 [label %if.then105], !srcloc !141

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %clk81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk81, align 4
  %call107 = tail call ptr @__clk_get_name(ptr noundef %60) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.37, ptr noundef %call107) #8
  br label %do.end110

do.end110:                                        ; preds = %if.then105, %do.body93
  %call111 = tail call fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %hw, ptr noundef nonnull %arrayidx.i)
  br label %cleanup113

cleanup113:                                       ; preds = %do.end110, %do.end87, %land.lhs.true.cleanup113_crit_edge, %lor.lhs.false73.cleanup113_crit_edge, %rockchip_get_pll_settings.exit.cleanup113_crit_edge, %for.cond.i.cleanup113_crit_edge, %if.end.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %pll, ptr nocapture noundef readonly %rate) unnamed_addr #0 align 64 {
entry:
  %cur = alloca %struct.rockchip_pll_rate_table, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_mux_ops1 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %pll_mux_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_mux_ops1, align 4
  %pll_mux2 = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cur) #8
  %2 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %cur, i32 0, i32 1, i32 0, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_rk3399_pll_set_params.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_rk3399_pll_set_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %10 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %postdiv1 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %postdiv1, align 4
  %refdiv = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %refdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refdiv, align 4
  %postdiv2 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %postdiv2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %postdiv2, align 4
  %dsmpd = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %dsmpd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dsmpd, align 4
  %frac = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %frac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frac, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_rk3399_pll_set_params.__UNIQUE_ID_ddebug178, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.36, i32 noundef %9, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_base.i = getelementptr inbounds %struct.rockchip_clk_pll, ptr %pll, i32 0, i32 4
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !136
  %26 = and i32 %25, -15794176
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %2, align 4
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !136
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %and7.i = and i32 %32, 63
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and7.i, ptr %4, align 4
  %shr8.i = lshr i32 %32, 8
  %and9.i = and i32 %shr8.i, 7
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and9.i, ptr %3, align 4
  %shr10.i = lshr i32 %32, 12
  %and11.i = and i32 %shr10.i, 7
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and11.i, ptr %5, align 4
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !136
  %39 = and i32 %38, -256
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %7, align 4
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %43, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #8, !srcloc !136
  %45 = lshr i32 %44, 27
  %and25.i = and i32 %45, 1
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and25.i, ptr %6, align 4
  %47 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %cur, align 4
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 14
  %48 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_parent, align 4
  %call7 = tail call zeroext i8 %49(ptr noundef %pll_mux2) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call7)
  %cmp = icmp eq i8 %call7, 1
  br i1 %cmp, label %if.then9, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %50 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_parent, align 4
  %call11 = tail call i32 %51(ptr noundef %pll_mux2, i8 noundef zeroext 0) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge
  %52 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %or = or i32 %54, 268369920
  %55 = tail call i32 @llvm.bswap.i32(i32 %or)
  %56 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !135
  %refdiv14 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %refdiv14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %refdiv14, align 4
  %postdiv117 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %postdiv117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %postdiv117, align 4
  %shl18 = shl i32 %61, 8
  %postdiv221 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 3
  %62 = ptrtoint ptr %postdiv221 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %postdiv221, align 4
  %shl22 = shl i32 %63, 12
  %or19 = or i32 %59, %shl18
  %or23 = or i32 %or19, %shl22
  %or24 = or i32 %or23, 2000617472
  %64 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %65 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i, align 4
  %add.ptr26 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %64) #8, !srcloc !135
  %67 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base.i, align 4
  %add.ptr28 = getelementptr i8, ptr %68, i32 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !136
  %70 = shl i32 %69, 24
  %frac31 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 5
  %71 = ptrtoint ptr %frac31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %frac31, align 4
  %or33 = or i32 %70, %72
  %73 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %74 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_base.i, align 4
  %add.ptr35 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %73) #8, !srcloc !135
  %dsmpd36 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate, i32 0, i32 1, i32 0, i32 4
  %76 = ptrtoint ptr %dsmpd36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dsmpd36, align 4
  %shl37 = shl i32 %77, 3
  %or38 = or i32 %shl37, 524288
  %78 = tail call i32 @llvm.bswap.i32(i32 %or38)
  %79 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_base.i, align 4
  %add.ptr40 = getelementptr i8, ptr %80, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %78) #8, !srcloc !135
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end12
  %81 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 8
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %.mask.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.if.end50_crit_edge

for.cond.i.if.end50_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #8
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %84 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %85, i32 8
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #8, !srcloc !136
  %.mask45.i = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask45.i)
  %tobool27.not.inv.not.i = icmp eq i32 %.mask45.i, 0
  br i1 %tobool27.not.inv.not.i, label %do.end46, label %for.end.i.if.end50_crit_edge

for.end.i.if.end50_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end46:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.34) #11
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.36) #11
  %call49 = call fastcc i32 @rockchip_rk3399_pll_set_params(ptr noundef %pll, ptr noundef nonnull %cur)
  br label %if.end50

if.end50:                                         ; preds = %do.end46, %for.end.i.if.end50_crit_edge, %for.cond.i.if.end50_crit_edge
  %cond.i89 = phi i32 [ -110, %do.end46 ], [ 0, %for.end.i.if.end50_crit_edge ], [ 0, %for.cond.i.if.end50_crit_edge ]
  br i1 %cmp, label %if.then52, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %set_parent53 = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %87 = ptrtoint ptr %set_parent53 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_parent53, align 4
  %call55 = tail call i32 %88(ptr noundef %pll_mux2, i8 noundef zeroext 1) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end50.if.end56_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cur) #8
  ret i32 %cond.i89
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !119, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 866, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rockchip_clk_register_pll._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rockchip_clk_register_pll._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 871, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 935, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 961, i32 3}
!12 = !{ptr @rockchip_clk_register_pll._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rockchip_clk_register_pll._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 976, i32 3}
!16 = !{ptr @rockchip_clk_register_pll._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rockchip_clk_register_pll._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rockchip_rk3036_pll_clk_norate_ops, !19, !"rockchip_rk3036_pll_clk_norate_ops", i1 false, i1 false}
!19 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 344, i32 29}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 134, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rockchip_rk3036_pll_wait_lock._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rockchip_rk3036_pll_wait_lock._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @rockchip_rk3036_pll_clk_ops, !26, !"rockchip_rk3036_pll_clk_ops", i1 false, i1 false}
!26 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 351, i32 29}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 254, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rockchip_rk3036_pll_set_rate.__UNIQUE_ID_ddebug168, !28, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 260, i32 3}
!34 = !{ptr @rockchip_rk3036_pll_set_rate._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rockchip_rk3036_pll_set_rate._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 200, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rockchip_rk3036_pll_set_params.__UNIQUE_ID_ddebug167, !37, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 237, i32 3}
!42 = !{ptr @rockchip_rk3036_pll_set_params._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rockchip_rk3036_pll_set_params._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 315, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug169, !45, !"__UNIQUE_ID_ddebug169", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 317, i32 2}
!50 = !{ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug170, !49, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 320, i32 2}
!53 = !{ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug171, !52, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 331, i32 4}
!56 = !{ptr @rockchip_rk3036_pll_init._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rockchip_rk3036_pll_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 336, i32 3}
!60 = !{ptr @rockchip_rk3036_pll_init.__UNIQUE_ID_ddebug172, !59, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!61 = !{ptr @rockchip_rk3066_pll_clk_norate_ops, !62, !"rockchip_rk3066_pll_clk_norate_ops", i1 false, i1 false}
!62 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 563, i32 29}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 95, i32 3}
!65 = !{ptr @rockchip_pll_wait_lock._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rockchip_pll_wait_lock._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 410, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rockchip_rk3066_pll_recalc_rate.__UNIQUE_ID_ddebug173, !68, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!71 = !{ptr @rockchip_rk3066_pll_clk_ops, !72, !"rockchip_rk3066_pll_clk_ops", i1 false, i1 false}
!72 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 570, i32 29}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 489, i32 2}
!75 = !{ptr @rockchip_rk3066_pll_set_rate.__UNIQUE_ID_ddebug175, !74, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!76 = !{ptr @rockchip_rk3066_pll_set_rate._entry, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 495, i32 3}
!78 = !{ptr @rockchip_rk3066_pll_set_rate._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 434, i32 2}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rockchip_rk3066_pll_set_params.__UNIQUE_ID_ddebug174, !80, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!83 = !{ptr @rockchip_rk3066_pll_set_params._entry, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 472, i32 3}
!85 = !{ptr @rockchip_rk3066_pll_set_params._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 550, i32 2}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug176, !87, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!90 = !{ptr @rockchip_rk3066_pll_init.__UNIQUE_ID_ddebug177, !91, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!91 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 555, i32 3}
!92 = !{ptr @rockchip_rk3399_pll_clk_norate_ops, !93, !"rockchip_rk3399_pll_clk_norate_ops", i1 false, i1 false}
!93 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 828, i32 29}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 614, i32 3}
!96 = !{ptr @rockchip_rk3399_pll_wait_lock._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rockchip_rk3399_pll_wait_lock._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @rockchip_rk3399_pll_clk_ops, !99, !"rockchip_rk3399_pll_clk_ops", i1 false, i1 false}
!99 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 835, i32 29}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 738, i32 2}
!102 = !{ptr @rockchip_rk3399_pll_set_rate.__UNIQUE_ID_ddebug179, !101, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!103 = !{ptr @rockchip_rk3399_pll_set_rate._entry, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 744, i32 3}
!105 = !{ptr @rockchip_rk3399_pll_set_rate._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 682, i32 2}
!108 = !{ptr @rockchip_rk3399_pll_set_params.__UNIQUE_ID_ddebug178, !107, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!109 = !{ptr @rockchip_rk3399_pll_set_params._entry, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 721, i32 3}
!111 = !{ptr @rockchip_rk3399_pll_set_params._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 799, i32 2}
!114 = !{ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug180, !113, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!115 = !{ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug181, !116, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!116 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 801, i32 2}
!117 = !{ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug182, !118, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!118 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 804, i32 2}
!119 = !{ptr @rockchip_rk3399_pll_init._entry, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 815, i32 4}
!121 = !{ptr @rockchip_rk3399_pll_init._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @rockchip_rk3399_pll_init.__UNIQUE_ID_ddebug183, !123, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!123 = !{!"../drivers/clk/rockchip/clk-pll.c", i32 820, i32 3}
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
!134 = !{i64 2152710614}
!135 = !{i64 4585670}
!136 = !{i64 4586088}
!137 = !{i64 2152712815}
!138 = !{i64 2152715029}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 2148001509, i64 2148001789, i64 2148002123, i64 2148002457}
!141 = !{i64 2148744244, i64 2148744249, i64 2148744262, i64 2148744306, i64 2148744340, i64 2148744361}
!142 = !{i64 2152760198}
!143 = !{i64 2152762109}
!144 = !{i64 2152764203}
!145 = !{!"auto-init"}
!146 = !{i64 2152747583}
!147 = !{i64 2152748410}
!148 = !{i64 2152750127}
!149 = !{i64 2152812955}
!150 = !{i64 2152815145}
!151 = !{i64 2152817353}
