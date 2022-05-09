; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/apll.c_pt.bc'
source_filename = "../drivers/clk/ti/apll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_dra7_apll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-apll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_dra7_apll_setup }, section "__clk_of_table", align 4
@__of_table_omap2_apll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-apll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_omap2_apll_setup }, section "__clk_of_table", align 4
@apll_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @dra7_apll_enable, ptr @dra7_apll_disable, ptr @dra7_apll_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dra7_init_apll_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@of_dra7_apll_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: dra7 apll %pOFn must have parent(s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_dra7_apll_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/clk/ti/apll.c\00", [42 x i8] zeroinitializer }, align 32
@of_dra7_apll_setup._entry_ptr = internal global ptr @of_dra7_apll_setup._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dra7_apll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: clock: %s failed transition to '%s'\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dra7_apll_enable\00", [47 x i8] zeroinitializer }, align 32
@dra7_apll_enable._entry_ptr = internal global ptr @dra7_apll_enable._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bypassed\00", [23 x i8] zeroinitializer }, align 32
@dra7_apll_enable.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"clock: %s transition to '%s' in %d loops\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: clock: %s transition to '%s' in %d loops\0A\00", [50 x i8] zeroinitializer }, align 32
@omap_clk_register_apll.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_clk_register_apll\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clk-ref for %pOFn not ready, retry\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: clk-ref for %pOFn not ready, retry\0A\00", [56 x i8] zeroinitializer }, align 32
@omap_clk_register_apll.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clk-bypass for %pOFn not ready, retry\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: clk-bypass for %pOFn not ready, retry\0A\00", [53 x i8] zeroinitializer }, align 32
@omap2_apll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_apll_enable, ptr @omap2_apll_disable, ptr @omap2_apll_is_enabled, ptr null, ptr null, ptr null, ptr @omap2_apll_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap2_apll_hwops = internal constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap2_apll_allow_idle, ptr @omap2_apll_deny_idle }, [16 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: %pOFn must have one parent\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_omap2_apll_setup\00", [44 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry_ptr = internal global ptr @of_omap2_apll_setup._entry, section ".printk_index", align 4
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,clock-frequency\00", [45 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: %pOFn missing clock-frequency\0A\00", [59 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry_ptr.20 = internal global ptr @of_omap2_apll_setup._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,bit-shift\00", [19 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: %pOFn missing bit-shift\0A\00", [33 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry_ptr.24 = internal global ptr @of_omap2_apll_setup._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,idlest-shift\00", [16 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: %pOFn missing idlest-shift\0A\00", [62 x i8] zeroinitializer }, align 32
@of_omap2_apll_setup._entry_ptr.28 = internal global ptr @of_omap2_apll_setup._entry.26, section ".printk_index", align 4
@omap2_apll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: %s failed to transition to locked\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap2_apll_enable\00", [46 x i8] zeroinitializer }, align 32
@omap2_apll_enable._entry_ptr = internal global ptr @omap2_apll_enable._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"apll_ck_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 129, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 206, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 81, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 85, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 147, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 159, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"omap2_apll_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 309, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"omap2_apll_hwops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 340, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 370, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 377, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 378, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 383, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 384, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 392, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 393, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [25 x i8] c"../drivers/clk/ti/apll.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 289, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__of_table_dra7_apll_clock, ptr @__of_table_omap2_apll_clock, ptr @dra7_apll_enable._entry, ptr @dra7_apll_enable._entry_ptr, ptr @of_dra7_apll_setup._entry, ptr @of_dra7_apll_setup._entry_ptr, ptr @of_omap2_apll_setup._entry, ptr @of_omap2_apll_setup._entry.18, ptr @of_omap2_apll_setup._entry.22, ptr @of_omap2_apll_setup._entry.26, ptr @of_omap2_apll_setup._entry_ptr, ptr @of_omap2_apll_setup._entry_ptr.20, ptr @of_omap2_apll_setup._entry_ptr.24, ptr @of_omap2_apll_setup._entry_ptr.28, ptr @omap2_apll_enable._entry, ptr @omap2_apll_enable._entry_ptr, ptr @apll_ck_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @omap2_apll_ops, ptr @omap2_apll_hwops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dra7_apll_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_apll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_apll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_apll_hwops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_omap2_apll_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_omap2_apll_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_omap2_apll_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_omap2_apll_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_apll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_dra7_apll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 76) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i.i66, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i.i67, null
  %or.cond65 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond65, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i66, i32 0, i32 8
  %3 = ptrtoint ptr %dpll_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %dpll_data, align 4
  %init6 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i66, i32 0, i32 2
  %4 = ptrtoint ptr %init6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i67, ptr %init6, align 8
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %7 = ptrtoint ptr %call7.i.i67 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call7.i.i67, align 8
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i67, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @apll_ck_ops, ptr %ops, align 4
  %call8 = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #9
  %conv = trunc i32 %call8 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i67, i32 0, i32 5
  %9 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num_parents, align 4
  %conv10 = and i32 %call8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp = icmp eq i32 %conv10, 0
  br i1 %cmp, label %do.end, label %if.end7.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %node) #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %10 = shl nuw nsw i32 %conv10, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #14
  %tobool18.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool18.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end20

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_parents, align 4
  %conv22 = zext i8 %12 to i32
  %call23 = tail call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %call8.i.i, i32 noundef %conv22) #9
  %parent_names24 = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i67, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %parent_names24, align 8
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 5
  %call25 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef %control_reg) #9
  %idlest_reg = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 18
  %call26 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 1, ptr noundef %idlest_reg) #9
  %or = or i32 %call26, %call25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool27.not = icmp eq i32 %or, 0
  br i1 %tobool27.not, label %if.end29, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %idlest_mask = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 21
  %14 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %idlest_mask, align 4
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %enable_mask, align 8
  tail call void @omap_clk_register_apll(ptr noundef nonnull %call7.i.i66, ptr noundef %node) #15
  br label %cleanup31

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %parent_names.0 = phi ptr [ null, %do.end ], [ %call8.i.i, %if.end20.cleanup_crit_edge ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  tail call void @kfree(ptr noundef %parent_names.0) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  tail call void @kfree(ptr noundef %call7.i.i66) #9
  tail call void @kfree(ptr noundef %call7.i.i67) #9
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup, %if.end29
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_omap2_apll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %parent_name = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #9
  %0 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 76) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i110 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i.i109, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i.i110, null
  %or.cond108 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond108, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i109, i32 0, i32 8
  %5 = ptrtoint ptr %dpll_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %dpll_data, align 4
  %init6 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i109, i32 0, i32 2
  %6 = ptrtoint ptr %init6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i110, ptr %init6, align 8
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i110, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @omap2_apll_ops, ptr %ops, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %10 = ptrtoint ptr %call7.i.i110 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call7.i.i110, align 8
  %ops8 = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i109, i32 0, i32 11
  %11 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @omap2_apll_hwops, ptr %ops8, align 8
  %call9 = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #9
  %conv = trunc i32 %call9 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i110, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %num_parents, align 4
  %conv11 = and i32 %call9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv11)
  %cmp.not = icmp eq i32 %conv11, 1
  br i1 %cmp.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %node) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #9
  %13 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %parent_name, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i110, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name, ptr %parent_names, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.17, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool18.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, ptr noundef %node) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %fixed_rate = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i109, i32 0, i32 2
  %17 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fixed_rate, align 4
  %call.i.i111 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.21, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i111)
  %tobool27.not = icmp sgt i32 %call.i.i111, -1
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16, ptr noundef %node) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %conv35 = trunc i32 %19 to i8
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i109, i32 0, i32 5
  %20 = ptrtoint ptr %enable_bit to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv35, ptr %enable_bit, align 4
  %shl = shl i32 3, %19
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %enable_mask, align 8
  %autoidle_mask = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %autoidle_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %autoidle_mask, align 4
  %call.i.i112 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.25, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i112)
  %tobool38.not = icmp sgt i32 %call.i.i112, -1
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.16, ptr noundef %node) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %shl46 = shl nuw i32 1, %24
  %idlest_mask = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 21
  %25 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl46, ptr %idlest_mask, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 5
  %call47 = call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef %control_reg) #9
  %autoidle_reg = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 17
  %call48 = call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 1, ptr noundef %autoidle_reg) #9
  %or = or i32 %call48, %call47
  %idlest_reg = getelementptr inbounds %struct.dpll_data, ptr %call7.i.i, i32 0, i32 18
  %call49 = call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 2, ptr noundef %idlest_reg) #9
  %or50 = or i32 %or, %call49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or50)
  %tobool51.not = icmp eq i32 %or50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node, align 4
  %call56 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %call7.i.i109, ptr noundef %27) #9
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end53.cleanup_crit_edge, label %if.then58

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call56) #9
  call void @kfree(ptr noundef nonnull %call7.i.i110) #9
  br label %cleanup61

cleanup:                                          ; preds = %if.end53.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end42, %do.end31, %do.end22, %do.end, %entry.cleanup_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #9
  call void @kfree(ptr noundef %call7.i.i109) #9
  call void @kfree(ptr noundef %call7.i.i110) #9
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup, %if.then58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_clk_register_apll(ptr noundef %user, ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %user, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %init2 = getelementptr inbounds %struct.clk_hw, ptr %user, i32 0, i32 2
  %2 = ptrtoint ptr %init2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init2, align 4
  %call = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_clk_register_apll.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_clk_register_apll, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !75

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_clk_register_apll.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %node) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call9 = tail call i32 @ti_clk_retry_init(ptr noundef %node, ptr noundef %user, ptr noundef nonnull @omap_clk_register_apll) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end.cleanup48_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.cleanup48_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end13:                                         ; preds = %entry
  %call14 = tail call ptr @__clk_get_hw(ptr noundef %call) #9
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %clk_ref, align 4
  %call15 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 1) #9
  %cmp.i78 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %do.body18, label %if.end38

do.body18:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_clk_register_apll.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_clk_register_apll, %if.then30)) #9
          to label %do.end33 [label %if.then30], !srcloc !75

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_clk_register_apll.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef %node) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body18
  %call34 = tail call i32 @ti_clk_retry_init(ptr noundef %node, ptr noundef %user, ptr noundef nonnull @omap_clk_register_apll) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end33.cleanup48_crit_edge, label %do.end33.cleanup_crit_edge

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end33.cleanup48_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end38:                                         ; preds = %if.end13
  %call39 = tail call ptr @__clk_get_hw(ptr noundef %call15) #9
  %clk_bypass = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call39, ptr %clk_bypass, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %call41 = tail call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef %user, ptr noundef %7) #9
  %cmp.i79 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.end38.cleanup_crit_edge, label %if.then43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call41) #9
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_names, align 4
  br label %cleanup48.sink.split

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %10 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dpll_data, align 4
  tail call void @kfree(ptr noundef %11) #9
  %parent_names47 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %parent_names47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_names47, align 4
  tail call void @kfree(ptr noundef %13) #9
  br label %cleanup48.sink.split

cleanup48.sink.split:                             ; preds = %cleanup, %if.then43
  %.sink = phi ptr [ %3, %cleanup ], [ %9, %if.then43 ]
  %user.sink = phi ptr [ %user, %cleanup ], [ %3, %if.then43 ]
  tail call void @kfree(ptr noundef %.sink) #9
  tail call void @kfree(ptr noundef %user.sink) #9
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup48.sink.split, %do.end33.cleanup48_crit_edge, %do.end.cleanup48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7_apll_enable(ptr noundef %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %idlest_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idlest_mask, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #9, !range !76
  %shl = shl nuw i32 1, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %5 = load ptr, ptr @ti_clk_ll_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %idlest_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 18
  %call4 = tail call i32 %7(ptr noundef %idlest_reg) #9
  %8 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idlest_mask, align 4
  %and = and i32 %9, %call4
  %conv6 = and i32 %shl, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv6)
  %cmp = icmp eq i32 %and, %conv6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %10 = load ptr, ptr @ti_clk_ll_ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call11 = tail call i32 %12(ptr noundef %control_reg) #9
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_mask, align 4
  %neg = xor i32 %14, -1
  %and12 = and i32 %call11, %neg
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #9, !range !76
  %shl15 = shl nuw i32 1, %15
  %or = or i32 %shl15, %and12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %16 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_writel, align 4
  tail call void %18(i32 noundef %or, ptr noundef %control_reg) #9
  %19 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idlest_mask, align 4
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 false) #9, !range !76
  %shl20 = shl i32 %shl, %21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %22 = load ptr, ptr @ti_clk_ll_ops, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call2489 = tail call i32 %24(ptr noundef %idlest_reg) #9
  %25 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idlest_mask, align 4
  %and2690 = and i32 %26, %call2489
  %conv27 = and i32 %shl20, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and2690, i32 %conv27)
  %cmp2891 = icmp eq i32 %and2690, %conv27
  br i1 %cmp2891, label %if.end9.do.body43_crit_edge, label %if.end9.if.end35_crit_edge

if.end9.if.end35_crit_edge:                       ; preds = %if.end9
  br label %if.end35

if.end9.do.body43_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.end35:                                         ; preds = %if.end35.if.end35_crit_edge, %if.end9.if.end35_crit_edge
  %i.092 = phi i32 [ %inc, %if.end35.if.end35_crit_edge ], [ 0, %if.end9.if.end35_crit_edge ]
  %inc = add nuw nsw i32 %i.092, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %28 = load ptr, ptr @ti_clk_ll_ops, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call24 = tail call i32 %30(ptr noundef %idlest_reg) #9
  %31 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idlest_mask, align 4
  %and26 = and i32 %32, %call24
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %conv27)
  %cmp28 = icmp eq i32 %and26, %conv27
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %i.092)
  %cmp32 = icmp ugt i32 %i.092, 999999
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp32
  br i1 %or.cond, label %while.end, label %if.end35.if.end35_crit_edge

if.end35.if.end35_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

while.end:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %cmp36 = icmp eq i32 %inc, 1000000
  br i1 %cmp36, label %do.end, label %while.end.do.body43_crit_edge

while.end.do.body43_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv27)
  %tobool41.not = icmp eq i32 %conv27, 0
  %cond = select i1 %tobool41.not, ptr @.str.6, ptr @.str.5
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call, ptr noundef nonnull %cond) #13
  br label %cleanup

do.body43:                                        ; preds = %while.end.do.body43_crit_edge, %if.end9.do.body43_crit_edge
  %i.0.lcssa96 = phi i32 [ %inc, %while.end.do.body43_crit_edge ], [ 0, %if.end9.do.body43_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dra7_apll_enable.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dra7_apll_enable, %if.then49)) #9
          to label %cleanup [label %if.then49], !srcloc !75

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv27)
  %tobool51.not = icmp eq i32 %conv27, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dra7_apll_enable.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %call, ptr noundef nonnull %cond52, i32 noundef %i.0.lcssa96) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body43, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %do.end ], [ 0, %if.then49 ], [ 0, %do.body43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dra7_apll_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call2 = tail call i32 %4(ptr noundef %control_reg) #9
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %call2, %neg
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #9, !range !76
  %shl5 = shl i32 2, %7
  %or = or i32 %shl5, %and
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_writel, align 4
  tail call void %10(i32 noundef %or, ptr noundef %control_reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dra7_apll_is_enabled(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call i32 %4(ptr noundef %control_reg) #9
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %and = and i32 %6, %call
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #9, !range !76
  %shr = lshr i32 %and, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp = icmp ne i32 %shr, 2
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dra7_init_apll_parent(ptr nocapture noundef readnone %hw) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_apll_enable(ptr noundef %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call i32 %4(ptr noundef %control_reg) #9
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %call, %neg
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #9, !range !76
  %shl = shl i32 3, %7
  %or = or i32 %shl, %and
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_writel, align 4
  tail call void %10(i32 noundef %or, ptr noundef %control_reg) #9
  %idlest_reg = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %11 = load ptr, ptr @ti_clk_ll_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call530 = tail call i32 %13(ptr noundef %idlest_reg) #9
  %idlest_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idlest_mask, align 4
  %and631 = and i32 %15, %call530
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and631)
  %tobool.not32.not = icmp eq i32 %and631, 0
  br i1 %tobool.not32.not, label %entry.if.end8_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.end8_crit_edge:                          ; preds = %entry
  br label %if.end8

if.end8:                                          ; preds = %if.end8.if.end8_crit_edge, %entry.if.end8_crit_edge
  %i.033 = phi i32 [ %inc, %if.end8.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %inc = add nuw nsw i32 %i.033, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call5 = tail call i32 %19(ptr noundef %idlest_reg) #9
  %20 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idlest_mask, align 4
  %and6 = and i32 %21, %call5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp ne i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %i.033)
  %cmp = icmp ugt i32 %i.033, 999999
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %while.end, label %if.end8.if.end8_crit_edge

if.end8.if.end8_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

while.end:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 1000000
  br i1 %phi.cmp, label %do.end, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %call13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_apll_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call i32 %4(ptr noundef %control_reg) #9
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %call, %neg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %7 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_writel, align 4
  tail call void %9(i32 noundef %and, ptr noundef %control_reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_apll_is_enabled(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call i32 %4(ptr noundef %control_reg) #9
  %enable_mask = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %and = and i32 %6, %call
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #9, !range !76
  %shr = lshr i32 %and, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp = icmp eq i32 %shr, 3
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_apll_recalc(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data.i = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  %call.i = tail call i32 %4(ptr noundef %control_reg.i) #9
  %enable_mask.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask.i, align 4
  %and.i = and i32 %6, %call.i
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #9, !range !76
  %shr.i = lshr i32 %and.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp.i.not = icmp eq i32 %shr.i, 3
  br i1 %cmp.i.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fixed_rate = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fixed_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_apll_allow_idle(ptr nocapture noundef readonly %clk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data.i = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %autoidle_reg.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 17
  %call.i = tail call i32 %4(ptr noundef %autoidle_reg.i) #9
  %autoidle_mask.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %autoidle_mask.i, align 4
  %neg.i = xor i32 %6, -1
  %and.i = and i32 %call.i, %neg.i
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #9, !range !76
  %shl.i = shl i32 3, %7
  %or.i = or i32 %shl.i, %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_writel.i, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  tail call void %10(i32 noundef %or.i, ptr noundef %control_reg.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_apll_deny_idle(ptr nocapture noundef readonly %clk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data.i = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %autoidle_reg.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 17
  %call.i = tail call i32 %4(ptr noundef %autoidle_reg.i) #9
  %autoidle_mask.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %autoidle_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %autoidle_mask.i, align 4
  %neg.i = xor i32 %6, -1
  %and.i = and i32 %call.i, %neg.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %7 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_writel.i, align 4
  %control_reg.i = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 5
  tail call void %9(i32 noundef %and.i, ptr noundef %control_reg.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__of_table_dra7_apll_clock, !1, !"__of_table_dra7_apll_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/apll.c", i32 236, i32 1}
!2 = !{ptr @__of_table_omap2_apll_clock, !3, !"__of_table_omap2_apll_clock", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/apll.c", i32 417, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/apll.c", i32 206, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_dra7_apll_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_dra7_apll_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @apll_ck_ops, !11, !"apll_ck_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/apll.c", i32 129, i32 29}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/apll.c", i32 81, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dra7_apll_enable._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @dra7_apll_enable._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/ti/apll.c", i32 85, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dra7_apll_enable.__UNIQUE_ID_ddebug181, !20, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!23 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/apll.c", i32 147, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @omap_clk_register_apll.__UNIQUE_ID_ddebug182, !25, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!28 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/ti/apll.c", i32 159, i32 3}
!31 = !{ptr @omap_clk_register_apll.__UNIQUE_ID_ddebug183, !30, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/ti/apll.c", i32 370, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @of_omap2_apll_setup._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @of_omap2_apll_setup._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/apll.c", i32 377, i32 33}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/apll.c", i32 378, i32 3}
!42 = !{ptr @of_omap2_apll_setup._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @of_omap2_apll_setup._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/apll.c", i32 383, i32 33}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/apll.c", i32 384, i32 3}
!48 = !{ptr @of_omap2_apll_setup._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @of_omap2_apll_setup._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/apll.c", i32 392, i32 33}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/ti/apll.c", i32 393, i32 3}
!54 = !{ptr @of_omap2_apll_setup._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @of_omap2_apll_setup._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @omap2_apll_ops, !57, !"omap2_apll_ops", i1 false, i1 false}
!57 = !{!"../drivers/clk/ti/apll.c", i32 309, i32 29}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ti/apll.c", i32 289, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @omap2_apll_enable._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @omap2_apll_enable._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @omap2_apll_hwops, !64, !"omap2_apll_hwops", i1 false, i1 false}
!64 = !{!"../drivers/clk/ti/apll.c", i32 340, i32 37}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2148729607, i64 2148729612, i64 2148729625, i64 2148729669, i64 2148729703, i64 2148729724}
!76 = !{i32 0, i32 33}
