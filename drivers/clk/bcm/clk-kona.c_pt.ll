; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-kona.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-kona.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon = type { i32, i32, i32, i32, i64 }
%struct.bcm_clk_div = type { %union.anon, i32 }
%union.anon = type { %struct.anon }
%struct.kona_clk = type { %struct.clk_hw, %struct.clk_init_data, ptr, i32, %union.anon.45 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.anon.45 = type { ptr }
%struct.peri_clk_data = type { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [0 x ptr] }
%struct.bcm_clk_policy = type { i32, i32 }
%struct.bcm_clk_gate = type { i32, i32, i32, i32, i32 }
%struct.bcm_clk_hyst = type { i32, i32, i32 }
%struct.bcm_clk_trig = type { i32, i32, i32 }
%struct.bcm_clk_sel = type { i32, i32, i32, i32, ptr, i8 }
%struct.ccu_data = type { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [0 x %struct.kona_clk] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ccu_policy = type { %struct.bcm_lvm_en, %struct.bcm_policy_ctl }
%struct.bcm_lvm_en = type { i32, i32 }
%struct.bcm_policy_ctl = type { i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@kona_peri_clk_ops = dso_local global { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @kona_peri_clk_enable, ptr @kona_peri_clk_disable, ptr @kona_peri_clk_is_enabled, ptr null, ptr null, ptr null, ptr @kona_peri_clk_recalc_rate, ptr null, ptr @kona_peri_clk_determine_rate, ptr @kona_peri_clk_set_parent, ptr @kona_peri_clk_get_parent, ptr @kona_peri_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to %s gate for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_gate\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/bcm/clk-kona.c\00", [37 x i8] zeroinitializer }, align 32
@clk_gate._entry_ptr = internal global ptr @clk_gate._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@__clk_gate._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 470, ptr null, ptr null }, align 1
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: invalid gate disable request (ignoring)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__clk_gate\00", [21 x i8] zeroinitializer }, align 32
@__clk_gate._entry_ptr = internal global ptr @__clk_gate._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__ccu_wait_bit._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 207, ptr null, ptr null }, align 1
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: %s/0x%04x bit %u was never %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__ccu_wait_bit\00", [17 x i8] zeroinitializer }, align 32
@__ccu_wait_bit._entry_ptr = internal global ptr @__ccu_wait_bit._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@kona_peri_clk_determine_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kona_peri_clk_set_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: gating failure for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kona_peri_clk_set_parent\00", [39 x i8] zeroinitializer }, align 32
@kona_peri_clk_set_parent._entry_ptr = internal global ptr @kona_peri_clk_set_parent._entry, section ".printk_index", align 4
@kona_peri_clk_set_parent._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: %strigger failed for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@kona_peri_clk_set_parent._entry_ptr.15 = internal global ptr @kona_peri_clk_set_parent._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pre-\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@selector_read_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: out-of-range parent selector %u (%s 0x%04x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"selector_read_index\00", [44 x i8] zeroinitializer }, align 32
@selector_read_index._entry_ptr = internal global ptr @selector_read_index._entry, section ".printk_index", align 4
@kona_peri_clk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.20, ptr @.str.2, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kona_peri_clk_set_rate\00", [41 x i8] zeroinitializer }, align 32
@kona_peri_clk_set_rate._entry_ptr = internal global ptr @kona_peri_clk_set_rate._entry, section ".printk_index", align 4
@kona_peri_clk_set_rate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: trigger failed for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@kona_peri_clk_set_rate._entry_ptr.23 = internal global ptr @kona_peri_clk_set_rate._entry.21, section ".printk_index", align 4
@__ccu_write_enable._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 163, ptr null, ptr null }, align 1
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: access already enabled for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ccu_write_enable\00", [45 x i8] zeroinitializer }, align 32
@__ccu_write_enable._entry_ptr = internal global ptr @__ccu_write_enable._entry, section ".printk_index", align 4
@__peri_clk_init._entry = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1205, ptr null, ptr null }, align 1
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: error initializing policy for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__peri_clk_init\00", [16 x i8] zeroinitializer }, align 32
@__peri_clk_init._entry_ptr = internal global ptr @__peri_clk_init._entry, section ".printk_index", align 4
@__peri_clk_init._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1209, ptr null, ptr null }, align 1
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: error initializing gate for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@__peri_clk_init._entry_ptr.30 = internal global ptr @__peri_clk_init._entry.28, section ".printk_index", align 4
@__peri_clk_init._entry.31 = internal constant %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1213, ptr null, ptr null }, align 1
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: error initializing hyst for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@__peri_clk_init._entry_ptr.33 = internal global ptr @__peri_clk_init._entry.31, section ".printk_index", align 4
@__peri_clk_init._entry.34 = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 1218, ptr null, ptr null }, align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: error initializing divider for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@__peri_clk_init._entry_ptr.36 = internal global ptr @__peri_clk_init._entry.34, section ".printk_index", align 4
@__peri_clk_init._entry.37 = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 1231, ptr null, ptr null }, align 1
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: error initializing pre-divider for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@__peri_clk_init._entry_ptr.39 = internal global ptr @__peri_clk_init._entry.37, section ".printk_index", align 4
@__peri_clk_init._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.2, i32 1237, ptr null, ptr null }, align 1
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: error initializing selector for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__peri_clk_init._entry_ptr.42 = internal global ptr @__peri_clk_init._entry.40, section ".printk_index", align 4
@policy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: unable to stop CCU %s policy engine\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"policy_init\00", [20 x i8] zeroinitializer }, align 32
@policy_init._entry_ptr = internal global ptr @policy_init._entry, section ".printk_index", align 4
@policy_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: unable to restart CCU %s policy engine\0A\00", [50 x i8] zeroinitializer }, align 32
@policy_init._entry_ptr.47 = internal global ptr @policy_init._entry.45, section ".printk_index", align 4
@__ccu_policy_engine_stop._entry = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 285, ptr null, ptr null }, align 1
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: ccu %s policy engine already stopped\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__ccu_policy_engine_stop\00", [39 x i8] zeroinitializer }, align 32
@__ccu_policy_engine_stop._entry_ptr = internal global ptr @__ccu_policy_engine_stop._entry, section ".printk_index", align 4
@__ccu_policy_engine_stop._entry.50 = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 296, ptr null, ptr null }, align 1
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: ccu %s policy engine never stopped\0A\00", [54 x i8] zeroinitializer }, align 32
@__ccu_policy_engine_stop._entry_ptr.52 = internal global ptr @__ccu_policy_engine_stop._entry.50, section ".printk_index", align 4
@__ccu_policy_engine_start._entry = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 233, ptr null, ptr null }, align 1
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: ccu %s policy engine wouldn't go idle\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__ccu_policy_engine_start\00", [38 x i8] zeroinitializer }, align 32
@__ccu_policy_engine_start._entry_ptr = internal global ptr @__ccu_policy_engine_start._entry, section ".printk_index", align 4
@__ccu_policy_engine_start._entry.55 = internal constant %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 263, ptr null, ptr null }, align 1
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: ccu %s policy engine never started\0A\00", [54 x i8] zeroinitializer }, align 32
@__ccu_policy_engine_start._entry_ptr.57 = internal global ptr @__ccu_policy_engine_start._entry.55, section ".printk_index", align 4
@__ccu_write_disable._entry = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 174, ptr null, ptr null }, align 1
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: access wasn't enabled for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__ccu_write_disable\00", [44 x i8] zeroinitializer }, align 32
@__ccu_write_disable._entry_ptr = internal global ptr @__ccu_write_disable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 4294967290, i64 4294967291]
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"kona_peri_clk_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1182, i32 16 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 512, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 469, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 206, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1106, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1110, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 861, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1171, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1175, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 162, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1204, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1209, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1213, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1217, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1230, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1236, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 325, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 348, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 284, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 295, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 232, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 262, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [30 x i8] c"../drivers/clk/bcm/clk-kona.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 173, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__ccu_policy_engine_start._entry, ptr @__ccu_policy_engine_start._entry.55, ptr @__ccu_policy_engine_start._entry_ptr, ptr @__ccu_policy_engine_start._entry_ptr.57, ptr @__ccu_policy_engine_stop._entry, ptr @__ccu_policy_engine_stop._entry.50, ptr @__ccu_policy_engine_stop._entry_ptr, ptr @__ccu_policy_engine_stop._entry_ptr.52, ptr @__ccu_wait_bit._entry, ptr @__ccu_wait_bit._entry_ptr, ptr @__ccu_write_disable._entry, ptr @__ccu_write_disable._entry_ptr, ptr @__ccu_write_enable._entry, ptr @__ccu_write_enable._entry_ptr, ptr @__clk_gate._entry, ptr @__clk_gate._entry_ptr, ptr @__peri_clk_init._entry, ptr @__peri_clk_init._entry.28, ptr @__peri_clk_init._entry.31, ptr @__peri_clk_init._entry.34, ptr @__peri_clk_init._entry.37, ptr @__peri_clk_init._entry.40, ptr @__peri_clk_init._entry_ptr, ptr @__peri_clk_init._entry_ptr.30, ptr @__peri_clk_init._entry_ptr.33, ptr @__peri_clk_init._entry_ptr.36, ptr @__peri_clk_init._entry_ptr.39, ptr @__peri_clk_init._entry_ptr.42, ptr @clk_gate._entry, ptr @clk_gate._entry_ptr, ptr @kona_peri_clk_set_parent._entry, ptr @kona_peri_clk_set_parent._entry.13, ptr @kona_peri_clk_set_parent._entry_ptr, ptr @kona_peri_clk_set_parent._entry_ptr.15, ptr @kona_peri_clk_set_rate._entry, ptr @kona_peri_clk_set_rate._entry.21, ptr @kona_peri_clk_set_rate._entry_ptr, ptr @kona_peri_clk_set_rate._entry_ptr.23, ptr @policy_init._entry, ptr @policy_init._entry.45, ptr @policy_init._entry_ptr, ptr @policy_init._entry_ptr.47, ptr @selector_read_index._entry, ptr @selector_read_index._entry_ptr, ptr @kona_peri_clk_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_peri_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_peri_clk_set_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_peri_clk_set_parent._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selector_read_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_peri_clk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_peri_clk_set_rate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @scaled_div_build(ptr nocapture noundef readonly %div, i32 noundef %div_value, i32 noundef %billionths) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div_value)
  %tobool.not = icmp eq i32 %div_value, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !119

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #7, !srcloc !120
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %billionths)
  %cmp = icmp ugt i32 %billionths, 999999999
  br i1 %cmp, label %do.body18, label %if.end223, !prof !119

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 73, 0\0A.popsection", ""() #7, !srcloc !121
  unreachable

if.end223:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %div_value to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %conv27 = zext i32 %billionths to i64
  %add = add nuw nsw i64 %mul, %conv27
  %frac_width = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 3
  %0 = ptrtoint ptr %frac_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frac_width, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %add, %sh_prom
  %add30 = add i64 %shl, 500000000
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add30, i32 0) #10, !srcloc !122
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add30, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !123
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %_tmp.0 = lshr i64 %asmresult10.i, 29
  ret i64 %_tmp.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @scaled_div_max(ptr nocapture noundef readonly %div) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bcm_clk_div, ptr %div, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div, align 8
  %conv = zext i32 %3 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %width = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %notmask = shl nsw i32 -1, %5
  %sub = xor i32 %notmask, -1
  %conv.i = zext i32 %sub to i64
  %frac_width.i = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 3
  %6 = ptrtoint ptr %frac_width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frac_width.i, align 4
  %sh_prom.i = zext i32 %7 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %add.i = add nuw i64 %shl.i, %conv.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %add.i, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %gate1 = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 1
  %ccu = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccu, align 4
  %init_data = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_data, align 4
  %call = tail call fastcc i32 @clk_gate(ptr noundef %3, ptr noundef %5, ptr noundef %gate1, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kona_peri_clk_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %gate1 = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 1
  %ccu = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccu, align 4
  %init_data = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_data, align 4
  %call = tail call fastcc i32 @clk_gate(ptr noundef %3, ptr noundef %5, ptr noundef %gate1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %gate1 = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 1
  %ccu = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccu, align 4
  %flags1.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.is_clk_gate_enabled.exit_crit_edge, label %if.end.i

entry.is_clk_gate_enabled.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_clk_gate_enabled.exit

if.end.i:                                         ; preds = %entry
  %lock.i.i = getelementptr inbounds %struct.ccu_data, ptr %3, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %6 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.__is_clk_gate_enabled.exit.i_crit_edge, label %if.end.i.i

if.end.i.__is_clk_gate_enabled.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__is_clk_gate_enabled.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %status_bit.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %status_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status_bit.i.i, align 4
  %shl.i.i = shl nuw i32 1, %9
  %10 = ptrtoint ptr %gate1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gate1, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !124
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %and1.i.i = and i32 %15, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.i = icmp ne i32 %and1.i.i, 0
  br label %__is_clk_gate_enabled.exit.i

__is_clk_gate_enabled.exit.i:                     ; preds = %if.end.i.i, %if.end.i.__is_clk_gate_enabled.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.i, %if.end.i.i ], [ true, %if.end.i.__is_clk_gate_enabled.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  br label %is_clk_gate_enabled.exit

is_clk_gate_enabled.exit:                         ; preds = %__is_clk_gate_enabled.exit.i, %entry.is_clk_gate_enabled.exit_crit_edge
  %retval.0.i = phi i1 [ %retval.0.i.i, %__is_clk_gate_enabled.exit.i ], [ true, %entry.is_clk_gate_enabled.exit_crit_edge ]
  %cond = zext i1 %retval.0.i to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %ccu = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccu, align 4
  %div = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6
  %pre_div = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.clk_recalc_rate.exit_crit_edge, label %if.end.i

entry.clk_recalc_rate.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_recalc_rate.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp.i = icmp slt i32 %parent_rate, 0
  br i1 %cmp.i, label %if.end.i.clk_recalc_rate.exit_crit_edge, label %if.end2.i

if.end.i.clk_recalc_rate.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_recalc_rate.exit

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %pre_div, null
  br i1 %tobool3.not.i, label %if.end2.i.if.else203.i_crit_edge, label %land.lhs.true.i

if.end2.i.if.else203.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else203.i

land.lhs.true.i:                                  ; preds = %if.end2.i
  %flags4.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4.i, align 8
  %and5.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.else203.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.else203.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else203.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then7.i.scale_rate.exit.i_crit_edge

if.then7.i.scale_rate.exit.i_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_rate.exit.i

if.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i = zext i32 %parent_rate to i64
  %frac_width.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %frac_width.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frac_width.i.i, align 4
  %sh_prom.i.i = zext i32 %9 to i64
  %shl.i.i = shl i64 %conv1.i.i, %sh_prom.i.i
  %extract.t.i = trunc i64 %shl.i.i to i32
  br label %scale_rate.exit.i

scale_rate.exit.i:                                ; preds = %if.end.i.i, %if.then7.i.scale_rate.exit.i_crit_edge
  %retval.0.i.off0.i = phi i32 [ %extract.t.i, %if.end.i.i ], [ %parent_rate, %if.then7.i.scale_rate.exit.i_crit_edge ]
  %and.i614.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i614.i)
  %tobool.not.i615.i = icmp eq i32 %and.i614.i, 0
  %conv1.i616.i = zext i32 %retval.0.i.off0.i to i64
  br i1 %tobool.not.i615.i, label %if.end.i620.i, label %scale_rate.exit.i.scale_rate.exit622.i_crit_edge

scale_rate.exit.i.scale_rate.exit622.i_crit_edge: ; preds = %scale_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_rate.exit622.i

if.end.i620.i:                                    ; preds = %scale_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %frac_width.i617.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %frac_width.i617.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frac_width.i617.i, align 4
  %sh_prom.i618.i = zext i32 %11 to i64
  %shl.i619.i = shl i64 %conv1.i616.i, %sh_prom.i618.i
  br label %scale_rate.exit622.i

scale_rate.exit622.i:                             ; preds = %if.end.i620.i, %scale_rate.exit.i.scale_rate.exit622.i_crit_edge
  %retval.0.i621.i = phi i64 [ %shl.i619.i, %if.end.i620.i ], [ %conv1.i616.i, %scale_rate.exit.i.scale_rate.exit622.i_crit_edge ]
  br i1 %tobool.not.i.i, label %if.end.i625.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %scale_rate.exit622.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pre_div to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pre_div, align 8
  %conv.i.i = zext i32 %13 to i64
  br label %divider_read_scaled.exit.i

if.end.i625.i:                                    ; preds = %scale_rate.exit622.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %3, i32 0, i32 1
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #7
  %14 = ptrtoint ptr %pre_div to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_div, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !124
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #7
  %shift.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shift.i.i, align 4
  %width.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width.i.i, align 8
  %notmask.i.i.i.i = shl nsw i32 -1, %23
  %sub.i.i.i.i = xor i32 %notmask.i.i.i.i, -1
  %shl1.i.i.i.i = shl i32 %sub.i.i.i.i, %21
  %and.i.i.i = and i32 %shl1.i.i.i.i, %19
  %shr.i.i.i = lshr i32 %and.i.i.i, %21
  %conv.i.i.i = zext i32 %shr.i.i.i to i64
  %frac_width.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %frac_width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frac_width.i.i.i, align 4
  %sh_prom.i.i.i = zext i32 %25 to i64
  %shl.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %add.i.i.i = add nuw i64 %shl.i.i.i, %conv.i.i.i
  br label %divider_read_scaled.exit.i

divider_read_scaled.exit.i:                       ; preds = %if.end.i625.i, %if.then.i.i
  %retval.0.i626.i = phi i64 [ %conv.i.i, %if.then.i.i ], [ %add.i.i.i, %if.end.i625.i ]
  %div10611.i = lshr i64 %retval.0.i626.i, 1
  %add.i = add i64 %div10611.i, %retval.0.i621.i
  %conv11.i = trunc i64 %retval.0.i626.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp186.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp186.i, label %if.then190.i, label %if.else196.i, !prof !126

if.then190.i:                                     ; preds = %divider_read_scaled.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv191.i = trunc i64 %add.i to i32
  %div194.i = udiv i32 %conv191.i, %conv11.i
  %conv195.i = zext i32 %div194.i to i64
  br label %if.end205.i

if.else196.i:                                     ; preds = %divider_read_scaled.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv11.i, i64 %add.i) #10, !srcloc !127
  %asmresult1.i.i = extractvalue { i64, i64 } %26, 1
  br label %if.end205.i

if.else203.i:                                     ; preds = %land.lhs.true.i.if.else203.i_crit_edge, %if.end2.i.if.else203.i_crit_edge
  %and.i629.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i629.i)
  %tobool.not.i630.i = icmp eq i32 %and.i629.i, 0
  %conv1.i631.i = zext i32 %parent_rate to i64
  br i1 %tobool.not.i630.i, label %if.end.i635.i, label %if.else203.i.if.end205.i_crit_edge

if.else203.i.if.end205.i_crit_edge:               ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205.i

if.end.i635.i:                                    ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #9
  %frac_width.i632.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %frac_width.i632.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frac_width.i632.i, align 4
  %sh_prom.i633.i = zext i32 %28 to i64
  %shl.i634.i = shl i64 %conv1.i631.i, %sh_prom.i633.i
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.end.i635.i, %if.else203.i.if.end205.i_crit_edge, %if.else196.i, %if.then190.i
  %scaled_parent_rate.0.i = phi i64 [ %conv195.i, %if.then190.i ], [ %asmresult1.i.i, %if.else196.i ], [ %shl.i634.i, %if.end.i635.i ], [ %conv1.i631.i, %if.else203.i.if.end205.i_crit_edge ]
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 8
  %and.i639.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i639.i)
  %tobool.not.i640.i = icmp eq i32 %and.i639.i, 0
  br i1 %tobool.not.i640.i, label %if.end.i658.i, label %if.then.i642.i

if.then.i642.i:                                   ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %div, align 8
  %conv.i641.i = zext i32 %32 to i64
  br label %divider_read_scaled.exit660.i

if.end.i658.i:                                    ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i643.i = getelementptr inbounds %struct.ccu_data, ptr %3, i32 0, i32 1
  %call2.i.i644.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i643.i) #7
  %33 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %div, align 8
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add.ptr.i.i645.i = getelementptr i8, ptr %36, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i645.i) #7, !srcloc !124
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i643.i, i32 noundef %call2.i.i644.i) #7
  %shift.i646.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %shift.i646.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %shift.i646.i, align 4
  %width.i647.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 2
  %41 = ptrtoint ptr %width.i647.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width.i647.i, align 8
  %notmask.i.i.i648.i = shl nsw i32 -1, %42
  %sub.i.i.i649.i = xor i32 %notmask.i.i.i648.i, -1
  %shl1.i.i.i650.i = shl i32 %sub.i.i.i649.i, %40
  %and.i.i651.i = and i32 %shl1.i.i.i650.i, %38
  %shr.i.i652.i = lshr i32 %and.i.i651.i, %40
  %conv.i.i653.i = zext i32 %shr.i.i652.i to i64
  %frac_width.i.i654.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %frac_width.i.i654.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frac_width.i.i654.i, align 4
  %sh_prom.i.i655.i = zext i32 %44 to i64
  %shl.i.i656.i = shl nuw i64 1, %sh_prom.i.i655.i
  %add.i.i657.i = add nuw i64 %shl.i.i656.i, %conv.i.i653.i
  br label %divider_read_scaled.exit660.i

divider_read_scaled.exit660.i:                    ; preds = %if.end.i658.i, %if.then.i642.i
  %retval.0.i659.i = phi i64 [ %conv.i641.i, %if.then.i642.i ], [ %add.i.i657.i, %if.end.i658.i ]
  %div209609.i = lshr i64 %retval.0.i659.i, 1
  %add210.i = add i64 %div209609.i, %scaled_parent_rate.0.i
  %conv212.i = trunc i64 %retval.0.i659.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add210.i)
  %cmp413.i = icmp ult i64 %add210.i, 4294967296
  br i1 %cmp413.i, label %if.then421.i, label %if.else427.i, !prof !126

if.then421.i:                                     ; preds = %divider_read_scaled.exit660.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv422.i = trunc i64 %add210.i to i32
  %div425.i = udiv i32 %conv422.i, %conv212.i
  br label %clk_recalc_rate.exit

if.else427.i:                                     ; preds = %divider_read_scaled.exit660.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv212.i, i64 %add210.i) #10, !srcloc !127
  %asmresult1.i668.i = extractvalue { i64, i64 } %45, 1
  %extract.t704.i = trunc i64 %asmresult1.i668.i to i32
  br label %clk_recalc_rate.exit

clk_recalc_rate.exit:                             ; preds = %if.else427.i, %if.then421.i, %if.end.i.clk_recalc_rate.exit_crit_edge, %entry.clk_recalc_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %parent_rate, %entry.clk_recalc_rate.exit_crit_edge ], [ 0, %if.end.i.clk_recalc_rate.exit_crit_edge ], [ %div425.i, %if.then421.i ], [ %extract.t704.i, %if.else427.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b146 = load i1, ptr @kona_peri_clk_determine_rate.__already_done, align 1
  br i1 %.b146, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !126

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @kona_peri_clk_determine_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1038, i32 noundef 9, ptr noundef null) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %num_parents = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_parents, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end29
  %u.i = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u.i, align 4
  %flags.i = getelementptr inbounds %struct.peri_clk_data, ptr %5, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #7
  br label %kona_peri_clk_round_rate.exit

if.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 4
  %div1.i = getelementptr inbounds %struct.peri_clk_data, ptr %5, i32 0, i32 6
  %ccu.i = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %ccu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ccu.i, align 4
  %pre_div.i = getelementptr inbounds %struct.peri_clk_data, ptr %5, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 1, i32 %9
  %12 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %best_parent_rate, align 4
  %call4.i = tail call fastcc i32 @round_rate(ptr noundef %11, ptr noundef %div1.i, ptr noundef %pre_div.i, i32 noundef %spec.select.i, i32 noundef %13, ptr noundef null) #7
  br label %kona_peri_clk_round_rate.exit

kona_peri_clk_round_rate.exit:                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp41 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp41, label %kona_peri_clk_round_rate.exit.cleanup105_crit_edge, label %kona_peri_clk_round_rate.exit.cleanup105.sink.split_crit_edge

kona_peri_clk_round_rate.exit.cleanup105.sink.split_crit_edge: ; preds = %kona_peri_clk_round_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105.sink.split

kona_peri_clk_round_rate.exit.cleanup105_crit_edge: ; preds = %kona_peri_clk_round_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end46:                                         ; preds = %if.end29
  %call47 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call48 = tail call i32 @clk_hw_get_rate(ptr noundef %call47) #7
  %u.i147 = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %14 = ptrtoint ptr %u.i147 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %u.i147, align 4
  %flags.i148 = getelementptr inbounds %struct.peri_clk_data, ptr %15, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %flags.i148 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i148, align 8
  %and.i149 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.not.i150 = icmp eq i32 %and.i149, 0
  br i1 %tobool.not.i150, label %if.then.i152, label %if.end.i159

if.then.i152:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i151 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #7
  br label %for.body.lr.ph

if.end.i159:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req, align 4
  %div1.i153 = getelementptr inbounds %struct.peri_clk_data, ptr %15, i32 0, i32 6
  %ccu.i154 = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %20 = ptrtoint ptr %ccu.i154 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ccu.i154, align 4
  %pre_div.i155 = getelementptr inbounds %struct.peri_clk_data, ptr %15, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i156 = icmp eq i32 %19, 0
  %spec.select.i157 = select i1 %tobool3.not.i156, i32 1, i32 %19
  %call4.i158 = tail call fastcc i32 @round_rate(ptr noundef %21, ptr noundef %div1.i153, ptr noundef %pre_div.i155, i32 noundef %spec.select.i157, i32 noundef %call48, ptr noundef null) #7
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.i159, %if.then.i152
  %retval.0.i160 = phi i32 [ %call4.i158, %if.end.i159 ], [ %call.i151, %if.then.i152 ]
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 4
  %sub = sub i32 %retval.0.i160, %23
  %24 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %ccu.i169 = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %best_parent_rate100 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %umax = zext i8 %3 to i32
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %best_delta.0183 = phi i32 [ %24, %for.body.lr.ph ], [ %best_delta.2, %cleanup.for.body_crit_edge ]
  %which.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %best_rate.0181 = phi i32 [ %retval.0.i160, %for.body.lr.ph ], [ %best_rate.2, %cleanup.for.body_crit_edge ]
  %call58 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %which.0182) #7
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %do.body70, label %do.end78, !prof !119

do.body70:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1062, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

do.end78:                                         ; preds = %for.body
  %cmp79 = icmp eq ptr %call58, %call47
  br i1 %cmp79, label %do.end78.cleanup_crit_edge, label %if.end82

do.end78.cleanup_crit_edge:                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end82:                                         ; preds = %do.end78
  %call83 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call58) #7
  %25 = ptrtoint ptr %u.i147 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %u.i147, align 4
  %flags.i163 = getelementptr inbounds %struct.peri_clk_data, ptr %26, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %flags.i163 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i163, align 8
  %and.i164 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.not.i165 = icmp eq i32 %and.i164, 0
  br i1 %tobool.not.i165, label %if.then.i167, label %if.end.i174

if.then.i167:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %call.i166 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #7
  br label %kona_peri_clk_round_rate.exit176

if.end.i174:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req, align 4
  %div1.i168 = getelementptr inbounds %struct.peri_clk_data, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %ccu.i169 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ccu.i169, align 4
  %pre_div.i170 = getelementptr inbounds %struct.peri_clk_data, ptr %26, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i171 = icmp eq i32 %30, 0
  %spec.select.i172 = select i1 %tobool3.not.i171, i32 1, i32 %30
  %call4.i173 = tail call fastcc i32 @round_rate(ptr noundef %32, ptr noundef %div1.i168, ptr noundef %pre_div.i170, i32 noundef %spec.select.i172, i32 noundef %call83, ptr noundef null) #7
  br label %kona_peri_clk_round_rate.exit176

kona_peri_clk_round_rate.exit176:                 ; preds = %if.end.i174, %if.then.i167
  %retval.0.i175 = phi i32 [ %call4.i173, %if.end.i174 ], [ %call.i166, %if.then.i167 ]
  %33 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %req, align 4
  %sub88 = sub i32 %retval.0.i175, %34
  %35 = tail call i32 @llvm.abs.i32(i32 %sub88, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %best_delta.0183)
  %cmp97 = icmp ult i32 %35, %best_delta.0183
  br i1 %cmp97, label %if.then99, label %kona_peri_clk_round_rate.exit176.cleanup_crit_edge

kona_peri_clk_round_rate.exit176.cleanup_crit_edge: ; preds = %kona_peri_clk_round_rate.exit176
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then99:                                        ; preds = %kona_peri_clk_round_rate.exit176
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call58, ptr %best_parent_hw, align 4
  %37 = ptrtoint ptr %best_parent_rate100 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call83, ptr %best_parent_rate100, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %kona_peri_clk_round_rate.exit176.cleanup_crit_edge, %do.end78.cleanup_crit_edge
  %best_rate.2 = phi i32 [ %best_rate.0181, %do.end78.cleanup_crit_edge ], [ %retval.0.i175, %if.then99 ], [ %best_rate.0181, %kona_peri_clk_round_rate.exit176.cleanup_crit_edge ]
  %best_delta.2 = phi i32 [ %best_delta.0183, %do.end78.cleanup_crit_edge ], [ %35, %if.then99 ], [ %best_delta.0183, %kona_peri_clk_round_rate.exit176.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %which.0182, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %cleanup.cleanup105.sink.split_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup105.sink.split_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105.sink.split

cleanup105.sink.split:                            ; preds = %cleanup.cleanup105.sink.split_crit_edge, %kona_peri_clk_round_rate.exit.cleanup105.sink.split_crit_edge
  %best_rate.2.lcssa.sink = phi i32 [ %retval.0.i, %kona_peri_clk_round_rate.exit.cleanup105.sink.split_crit_edge ], [ %best_rate.2, %cleanup.cleanup105.sink.split_crit_edge ]
  %38 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %best_rate.2.lcssa.sink, ptr %req, align 4
  br label %cleanup105

cleanup105:                                       ; preds = %cleanup105.sink.split, %kona_peri_clk_round_rate.exit.cleanup105_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %kona_peri_clk_round_rate.exit.cleanup105_crit_edge ], [ 0, %cleanup105.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %sel1 = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7
  %conv = zext i8 %index to i32
  %parent_count = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %parent_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !126

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1091, 0\0A.popsection", ""() #7, !srcloc !129
  unreachable

do.end9:                                          ; preds = %entry
  %width = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not = icmp eq i32 %5, 0
  br i1 %cmp10.not, label %do.end9.cleanup_crit_edge, label %if.end13

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %pre_trig = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 3
  %flags = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %trig16 = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 5
  %cond = select i1 %tobool14.not, ptr %trig16, ptr %pre_trig
  %ccu = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccu, align 4
  %gate = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 1
  %clk_index.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %clk_index.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %clk_index.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %index)
  %cmp.i = icmp eq i8 %11, %index
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %if.end.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %clk_index.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %index, ptr %clk_index.i, align 4
  %lock.i.i = getelementptr inbounds %struct.ccu_data, ptr %9, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %write_enabled.i.i = getelementptr inbounds %struct.ccu_data, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %write_enabled.i.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.ccu_data, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %16) #11
  br label %__ccu_write_enable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %write_enabled.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 27632896) #7, !srcloc !132
  br label %__ccu_write_enable.exit.i

__ccu_write_enable.exit.i:                        ; preds = %if.end.i.i, %do.end.i.i
  %call4.i = tail call fastcc i32 @__sel_commit(ptr noundef %9, ptr noundef %gate, ptr noundef %sel1, ptr noundef %cond) #7
  %20 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_enabled.i.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i21.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i21.i, label %do.end.i24.i, label %if.end.i25.i

do.end.i24.i:                                     ; preds = %__ccu_write_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i22.i = getelementptr inbounds %struct.ccu_data, ptr %9, i32 0, i32 6
  %22 = ptrtoint ptr %name.i22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i22.i, align 4
  %call.i23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %23) #11
  br label %__ccu_write_disable.exit.i

if.end.i25.i:                                     ; preds = %__ccu_write_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 10855680) #7, !srcloc !132
  %26 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %write_enabled.i.i, align 4
  br label %__ccu_write_disable.exit.i

__ccu_write_disable.exit.i:                       ; preds = %if.end.i25.i, %do.end.i24.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %__ccu_write_disable.exit.i.cleanup_crit_edge, label %selector_write.exit

__ccu_write_disable.exit.i.cleanup_crit_edge:     ; preds = %__ccu_write_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

selector_write.exit:                              ; preds = %__ccu_write_disable.exit.i
  %27 = ptrtoint ptr %clk_index.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %11, ptr %clk_index.i, align 4
  %28 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %selector_write.exit.cleanup_crit_edge [
    i32 -6, label %do.end22
    i32 -5, label %do.end30
  ]

selector_write.exit.cleanup_crit_edge:            ; preds = %selector_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22:                                         ; preds = %selector_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %init_data = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1
  %29 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_data, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %30) #11
  br label %cleanup

do.end30:                                         ; preds = %selector_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cmp33 = icmp eq ptr %cond, %pre_trig
  %cond35 = select i1 %cmp33, ptr @.str.16, ptr @.str.17
  %init_data36 = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %init_data36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_data36, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond35, ptr noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end22, %selector_write.exit.cleanup_crit_edge, %__ccu_write_disable.exit.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end9.cleanup_crit_edge ], [ -5, %do.end22 ], [ -5, %do.end30 ], [ %call4.i, %selector_write.exit.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %__ccu_write_disable.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @kona_peri_clk_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %ccu = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccu, align 4
  %sel = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7
  %width.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.selector_read_index.exit.thread_crit_edge, label %if.end.i

entry.selector_read_index.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %selector_read_index.exit.thread

if.end.i:                                         ; preds = %entry
  %lock.i.i = getelementptr inbounds %struct.ccu_data, ptr %3, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %6 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sel, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !124
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  %shift.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shift.i, align 4
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %notmask.i.i.i = shl nsw i32 -1, %15
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %shl1.i.i.i = shl i32 %sub.i.i.i, %13
  %and.i.i = and i32 %shl1.i.i.i, %11
  %shr.i.i = lshr i32 %and.i.i, %13
  %parent_count.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %parent_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp.i.i = icmp ugt i32 %17, 255
  br i1 %cmp.i.i, label %do.body2.i.i, label %for.cond.preheader.i.i, !prof !119

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp922.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp922.not.i.i, label %for.cond.preheader.i.i..loopexit_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i..loopexit_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.loopexit

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %parent_sel11.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %parent_sel11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent_sel11.i.i, align 4
  %conv12.i.i = and i32 %shr.i.i, 255
  %wide.trip.count = and i32 %17, 255
  br label %for.body.i.i

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 825, 0\0A.popsection", ""() #7, !srcloc !133
  unreachable

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %19, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv12.i.i)
  %cmp13.i.i = icmp eq i32 %21, %conv12.i.i
  br i1 %cmp13.i.i, label %selector_read_index.exit.thread.loopexit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.i.i..loopexit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i..loopexit_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.loopexit

.loopexit:                                        ; preds = %for.inc.i.i..loopexit_crit_edge, %for.cond.preheader.i.i..loopexit_crit_edge
  %name.i = getelementptr inbounds %struct.ccu_data, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  %24 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sel, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %shr.i.i, ptr noundef %23, i32 noundef %25) #11
  br label %selector_read_index.exit.thread

selector_read_index.exit.thread.loopexit:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = trunc i32 %indvars.iv to i8
  br label %selector_read_index.exit.thread

selector_read_index.exit.thread:                  ; preds = %selector_read_index.exit.thread.loopexit, %.loopexit, %entry.selector_read_index.exit.thread_crit_edge
  %27 = phi i8 [ 0, %.loopexit ], [ 0, %entry.selector_read_index.exit.thread_crit_edge ], [ %26, %selector_read_index.exit.thread.loopexit ]
  ret i8 %27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_peri_clk_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %scaled_div = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %div1 = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scaled_div) #7
  %2 = ptrtoint ptr %scaled_div to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %scaled_div, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp slt i32 %parent_rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %rate)
  %cmp2 = icmp eq i32 %call, %rate
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp6 = icmp eq i32 %rate, %parent_rate
  %cond = select i1 %cmp6, i32 0, i32 -22
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %and10 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp13 = icmp eq i32 %rate, %parent_rate
  %cond14 = select i1 %cmp13, i32 0, i32 -22
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %ccu = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ccu, align 4
  %pre_div = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool16.not = icmp eq i32 %rate, 0
  %spec.select = select i1 %tobool16.not, i32 1, i32 %rate
  %call18 = call fastcc i32 @round_rate(ptr noundef %6, ptr noundef %div1, ptr noundef %pre_div, i32 noundef %spec.select, i32 noundef %parent_rate, ptr noundef nonnull %scaled_div)
  %7 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ccu, align 4
  %gate = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 1
  %trig = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %scaled_div to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %scaled_div, align 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end11.i, label %do.body6.i, !prof !126

do.body6.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #7, !srcloc !134
  unreachable

do.end11.i:                                       ; preds = %if.end15
  %scaled_div12.i = getelementptr inbounds %struct.peri_clk_data, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 4
  %13 = ptrtoint ptr %scaled_div12.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %scaled_div12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %10)
  %cmp.i = icmp eq i64 %14, %10
  br i1 %cmp.i, label %do.end11.i.cleanup_crit_edge, label %if.end14.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i:                                       ; preds = %do.end11.i
  %15 = ptrtoint ptr %scaled_div12.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %10, ptr %scaled_div12.i, align 8
  %lock.i.i = getelementptr inbounds %struct.ccu_data, ptr %8, i32 0, i32 1
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %write_enabled.i.i = getelementptr inbounds %struct.ccu_data, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_enabled.i.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.ccu_data, ptr %8, i32 0, i32 6
  %18 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %19) #11
  br label %__ccu_write_enable.exit.i

if.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %write_enabled.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 27632896) #7, !srcloc !132
  br label %__ccu_write_enable.exit.i

__ccu_write_enable.exit.i:                        ; preds = %if.end.i.i, %do.end.i.i
  %call17.i = call fastcc i32 @__div_commit(ptr noundef %8, ptr noundef %gate, ptr noundef %div1, ptr noundef %trig) #7
  %23 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_enabled.i.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i37.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i37.i, label %do.end.i40.i, label %if.end.i41.i

do.end.i40.i:                                     ; preds = %__ccu_write_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i38.i = getelementptr inbounds %struct.ccu_data, ptr %8, i32 0, i32 6
  %25 = ptrtoint ptr %name.i38.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i38.i, align 4
  %call.i39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %26) #11
  br label %__ccu_write_disable.exit.i

if.end.i41.i:                                     ; preds = %__ccu_write_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 10855680) #7, !srcloc !132
  %29 = ptrtoint ptr %write_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %write_enabled.i.i, align 4
  br label %__ccu_write_disable.exit.i

__ccu_write_disable.exit.i:                       ; preds = %if.end.i41.i, %do.end.i40.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %__ccu_write_disable.exit.i.cleanup_crit_edge, label %divider_write.exit

__ccu_write_disable.exit.i.cleanup_crit_edge:     ; preds = %__ccu_write_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

divider_write.exit:                               ; preds = %__ccu_write_disable.exit.i
  %30 = ptrtoint ptr %scaled_div12.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %14, ptr %scaled_div12.i, align 8
  %31 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call17.i, label %divider_write.exit.cleanup_crit_edge [
    i32 -6, label %do.end
    i32 -5, label %do.end30
  ]

divider_write.exit.cleanup_crit_edge:             ; preds = %divider_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %divider_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %init_data = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1
  %32 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_data, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.20, ptr noundef %33) #11
  br label %cleanup

do.end30:                                         ; preds = %divider_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %init_data32 = getelementptr inbounds %struct.kona_clk, ptr %hw, i32 0, i32 1
  %34 = ptrtoint ptr %init_data32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_data32, align 4
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, ptr noundef %35) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end, %divider_write.exit.cleanup_crit_edge, %__ccu_write_disable.exit.i.cleanup_crit_edge, %do.end11.i.cleanup_crit_edge, %if.then12, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond14, %if.then12 ], [ %cond, %if.then5 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %do.end30 ], [ %call17.i, %divider_write.exit.cleanup_crit_edge ], [ 0, %do.end11.i.cleanup_crit_edge ], [ 0, %__ccu_write_disable.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scaled_div) #7
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kona_ccu_init(ptr noundef %ccu) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kona_clks1 = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %write_enabled.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 2
  %0 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %write_enabled.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %3) #11
  br label %__ccu_write_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %write_enabled.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ccu, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 27632896) #7, !srcloc !132
  br label %__ccu_write_enable.exit

__ccu_write_enable.exit:                          ; preds = %if.end.i, %do.end.i
  %clk_num = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 5
  %7 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp36.not = icmp eq i32 %8, 0
  br i1 %cmp36.not, label %__ccu_write_enable.exit.for.end_crit_edge, label %__ccu_write_enable.exit.for.body_crit_edge

__ccu_write_enable.exit.for.body_crit_edge:       ; preds = %__ccu_write_enable.exit
  br label %for.body

__ccu_write_enable.exit.for.end_crit_edge:        ; preds = %__ccu_write_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %__ccu_write_enable.exit.for.body_crit_edge
  %success.0.off039 = phi i1 [ %success.1.off0, %cleanup.for.body_crit_edge ], [ true, %__ccu_write_enable.exit.for.body_crit_edge ]
  %which.037 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %__ccu_write_enable.exit.for.body_crit_edge ]
  %ccu2 = getelementptr %struct.kona_clk, ptr %kona_clks1, i32 %which.037, i32 2
  %9 = ptrtoint ptr %ccu2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ccu2, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %type.i = getelementptr %struct.kona_clk, ptr %kona_clks1, i32 %which.037, i32 3
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cond.i = icmp eq i32 %12, 3
  br i1 %cond.i, label %do.end9.i.i, label %do.body.i

do.end9.i.i:                                      ; preds = %if.end
  %13 = ptrtoint ptr %ccu2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ccu2, align 4
  %u.i.i = getelementptr %struct.kona_clk, ptr %kona_clks1, i32 %which.037, i32 4
  %15 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %u.i.i, align 4
  %init_data.i.i = getelementptr %struct.kona_clk, ptr %kona_clks1, i32 %which.037, i32 1
  %17 = ptrtoint ptr %init_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_data.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i.i.i, label %do.end9.i.i.if.end15.i.i_crit_edge, label %if.end.i.i.i

do.end9.i.i.if.end15.i.i_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.end.i.i.i:                                     ; preds = %do.end9.i.i
  %policy.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 3
  %21 = ptrtoint ptr %policy.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %policy.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.if.end4.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %bit.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %bit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bit.i.i.i.i, align 4
  %25 = shl nuw i32 1, %24
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %14, align 4
  %add.ptr.i.i51.i.i.i.i = getelementptr i8, ptr %27, i32 %22
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i.i.i.i) #7, !srcloc !124
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %30 = and i32 %29, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %if.end.i.i.i.i.if.end6.i.i.i.i_crit_edge, label %if.end.i.i.i.i.if.end.i.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end.i.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.if.end6.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %14, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %33, i32 %22
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #7, !srcloc !124
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %36 = and i32 %35, %25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %for.body.i.i.i.i.i.if.end6.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i.i

for.body.i.i.i.i.i.if.end6.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %tries.021.i52.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.body.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.i.if.end.i.i.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #7
  %inc.i.i.i.i.i = add nuw nsw i32 %tries.021.i52.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %inc.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, 2000
  br i1 %exitcond.not.i.i.i.i.i, label %if.end.i.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge, label %for.body.i.i.i.i.i

if.end.i.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ccu_policy_engine_stop.exit.i.i.i

if.end6.i.i.i.i:                                  ; preds = %for.body.i.i.i.i.i.if.end6.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end6.i.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %14, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %41, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %39) #7, !srcloc !132
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %14, align 4
  %add.ptr.i.i3753.i.i.i.i = getelementptr i8, ptr %43, i32 %22
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3753.i.i.i.i) #7, !srcloc !124
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %46 = and i32 %45, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %if.end6.i.i.i.i.if.end4.i.i.i_crit_edge, label %if.end6.i.i.i.i.if.end.i42.i.i.i.i_crit_edge

if.end6.i.i.i.i.if.end.i42.i.i.i.i_crit_edge:     ; preds = %if.end6.i.i.i.i
  br label %if.end.i42.i.i.i.i

if.end6.i.i.i.i.if.end4.i.i.i_crit_edge:          ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

for.body.i38.i.i.i.i:                             ; preds = %if.end.i42.i.i.i.i
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %14, align 4
  %add.ptr.i.i37.i.i.i.i = getelementptr i8, ptr %49, i32 %22
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i.i.i.i) #7, !srcloc !124
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %52 = and i32 %51, %25
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %__ccu_wait_bit.exit47.i.i.i.i, label %for.body.i38.i.i.i.i.if.end.i42.i.i.i.i_crit_edge

for.body.i38.i.i.i.i.if.end.i42.i.i.i.i_crit_edge: ; preds = %for.body.i38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i42.i.i.i.i

if.end.i42.i.i.i.i:                               ; preds = %for.body.i38.i.i.i.i.if.end.i42.i.i.i.i_crit_edge, %if.end6.i.i.i.i.if.end.i42.i.i.i.i_crit_edge
  %tries.021.i3654.i.i.i.i = phi i32 [ %inc.i39.i.i.i.i, %for.body.i38.i.i.i.i.if.end.i42.i.i.i.i_crit_edge ], [ 0, %if.end6.i.i.i.i.if.end.i42.i.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #7
  %inc.i39.i.i.i.i = add nuw nsw i32 %tries.021.i3654.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %inc.i39.i.i.i.i)
  %exitcond.not.i41.i.i.i.i = icmp eq i32 %inc.i39.i.i.i.i, 2000
  br i1 %exitcond.not.i41.i.i.i.i, label %if.end.i42.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge, label %for.body.i38.i.i.i.i

if.end.i42.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge: ; preds = %if.end.i42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ccu_policy_engine_stop.exit.i.i.i

__ccu_wait_bit.exit47.i.i.i.i:                    ; preds = %for.body.i38.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %tries.021.i3654.i.i.i.i)
  %cmp.i40.le.i.i.i.i = icmp ult i32 %tries.021.i3654.i.i.i.i, 1999
  br i1 %cmp.i40.le.i.i.i.i, label %__ccu_wait_bit.exit47.i.i.i.i.if.end4.i.i.i_crit_edge, label %__ccu_policy_engine_stop.exit.thread48.i.i.i

__ccu_wait_bit.exit47.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %__ccu_wait_bit.exit47.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

__ccu_policy_engine_stop.exit.thread48.i.i.i:     ; preds = %__ccu_wait_bit.exit47.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name15.i51.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 6
  br label %do.end.i.i.i

__ccu_policy_engine_stop.exit.i.i.i:              ; preds = %if.end.i42.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge, %if.end.i.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge
  %.str.51.sink.ph.i.i.i.i = phi ptr [ @.str.51, %if.end.i42.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge ], [ @.str.48, %if.end.i.i.i.i.i.__ccu_policy_engine_stop.exit.i.i.i_crit_edge ]
  %name.i43.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 6
  %55 = ptrtoint ptr %name.i43.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i43.i.i.i.i, align 4
  %call10.i44.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %56, i32 noundef %22, i32 noundef %24, ptr noundef nonnull @.str.10) #11
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %__ccu_policy_engine_stop.exit.i.i.i, %__ccu_policy_engine_stop.exit.thread48.i.i.i
  %name.i43.i.sink.i.i.i = phi ptr [ %name.i43.i.i.i.i, %__ccu_policy_engine_stop.exit.i.i.i ], [ %name15.i51.i.i.i, %__ccu_policy_engine_stop.exit.thread48.i.i.i ]
  %.str.51.sink.ph.i.sink.i.i.i = phi ptr [ %.str.51.sink.ph.i.i.i.i, %__ccu_policy_engine_stop.exit.i.i.i ], [ @.str.51, %__ccu_policy_engine_stop.exit.thread48.i.i.i ]
  %57 = ptrtoint ptr %name.i43.i.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name.i43.i.sink.i.i.i, align 4
  %call16.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51.sink.ph.i.sink.i.i.i, ptr noundef nonnull @.str.49, ptr noundef %58) #11
  br label %do.end13.i.i

if.end4.i.i.i:                                    ; preds = %__ccu_wait_bit.exit47.i.i.i.i.if.end4.i.i.i_crit_edge, %if.end6.i.i.i.i.if.end4.i.i.i_crit_edge, %if.end.i.i.i.if.end4.i.i.i_crit_edge
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %16, align 4
  %bit.i.i.i = getelementptr inbounds %struct.bcm_clk_policy, ptr %16, i32 0, i32 1
  %61 = ptrtoint ptr %bit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bit.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %62
  %63 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %14, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %64, i32 %60
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !124
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %or.i.i.i = or i32 %66, %shl.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %68 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %14, align 4
  %add.ptr.i33.i.i.i = getelementptr i8, ptr %69, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i.i, i32 %67) #7, !srcloc !132
  %add.i.i.i = add i32 %60, 4
  %70 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %14, align 4
  %add.ptr.i.1.i.i.i = getelementptr i8, ptr %71, i32 %add.i.i.i
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i.i) #7, !srcloc !124
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %or.1.i.i.i = or i32 %73, %shl.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %or.1.i.i.i) #7
  %75 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %14, align 4
  %add.ptr.i33.1.i.i.i = getelementptr i8, ptr %76, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.1.i.i.i, i32 %74) #7, !srcloc !132
  %add.1.i.i.i = add i32 %60, 8
  %77 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %14, align 4
  %add.ptr.i.2.i.i.i = getelementptr i8, ptr %78, i32 %add.1.i.i.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i.i) #7, !srcloc !124
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %or.2.i.i.i = or i32 %80, %shl.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.2.i.i.i) #7
  %82 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %14, align 4
  %add.ptr.i33.2.i.i.i = getelementptr i8, ptr %83, i32 %add.1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.2.i.i.i, i32 %81) #7, !srcloc !132
  %add.2.i.i.i = add i32 %60, 12
  %84 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %14, align 4
  %add.ptr.i.3.i.i.i = getelementptr i8, ptr %85, i32 %add.2.i.i.i
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i.i) #7, !srcloc !124
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %or.3.i.i.i = or i32 %87, %shl.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.3.i.i.i) #7
  %89 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %14, align 4
  %add.ptr.i33.3.i.i.i = getelementptr i8, ptr %90, i32 %add.2.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.3.i.i.i, i32 %88) #7, !srcloc !132
  %control1.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %control1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %control1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.not.i34.i.i.i = icmp eq i32 %92, 0
  br i1 %cmp.not.i34.i.i.i, label %if.end4.i.i.i.if.end15.i.i_crit_edge, label %if.end.i35.i.i.i

if.end4.i.i.i.if.end15.i.i_crit_edge:             ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.end.i35.i.i.i:                                 ; preds = %if.end4.i.i.i
  %go_bit4.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 3, i32 1, i32 1
  %93 = ptrtoint ptr %go_bit4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %go_bit4.i.i.i.i, align 4
  %95 = shl nuw i32 1, %94
  %96 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %14, align 4
  %add.ptr.i.i17.i.i.i.i = getelementptr i8, ptr %97, i32 %92
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17.i.i.i.i) #7, !srcloc !124
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %100 = and i32 %99, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %if.end.i35.i.i.i.if.end14.i.i.i.i_crit_edge, label %if.end.i35.i.i.i.if.end.i.i40.i.i.i_crit_edge

if.end.i35.i.i.i.if.end.i.i40.i.i.i_crit_edge:    ; preds = %if.end.i35.i.i.i
  br label %if.end.i.i40.i.i.i

if.end.i35.i.i.i.if.end14.i.i.i.i_crit_edge:      ; preds = %if.end.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i.i.i

for.body.i.i37.i.i.i:                             ; preds = %if.end.i.i40.i.i.i
  %102 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %14, align 4
  %add.ptr.i.i.i36.i.i.i = getelementptr i8, ptr %103, i32 %92
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i36.i.i.i) #7, !srcloc !124
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %106 = and i32 %105, %95
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %for.body.i.i37.i.i.i.if.end14.i.i.i.i_crit_edge, label %for.body.i.i37.i.i.i.if.end.i.i40.i.i.i_crit_edge

for.body.i.i37.i.i.i.if.end.i.i40.i.i.i_crit_edge: ; preds = %for.body.i.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i40.i.i.i

for.body.i.i37.i.i.i.if.end14.i.i.i.i_crit_edge:  ; preds = %for.body.i.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i.i.i

if.end.i.i40.i.i.i:                               ; preds = %for.body.i.i37.i.i.i.if.end.i.i40.i.i.i_crit_edge, %if.end.i35.i.i.i.if.end.i.i40.i.i.i_crit_edge
  %tries.021.i18.i.i.i.i = phi i32 [ %inc.i.i38.i.i.i, %for.body.i.i37.i.i.i.if.end.i.i40.i.i.i_crit_edge ], [ 0, %if.end.i35.i.i.i.if.end.i.i40.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748) #7
  %inc.i.i38.i.i.i = add nuw nsw i32 %tries.021.i18.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %inc.i.i38.i.i.i)
  %exitcond.not.i.i39.i.i.i = icmp eq i32 %inc.i.i38.i.i.i, 2000
  br i1 %exitcond.not.i.i39.i.i.i, label %if.end.i.i40.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge, label %for.body.i.i37.i.i.i

if.end.i.i40.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge: ; preds = %if.end.i.i40.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ccu_policy_engine_start.exit.i.i.i

if.end14.i.i.i.i:                                 ; preds = %for.body.i.i37.i.i.i.if.end14.i.i.i.i_crit_edge, %if.end.i35.i.i.i.if.end14.i.i.i.i_crit_edge
  %atl_bit.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 3, i32 1, i32 2
  %109 = ptrtoint ptr %atl_bit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %atl_bit.i.i.i.i, align 4
  %shl11.i.i.i.i = shl nuw i32 1, %110
  %or.i.i.i.i = or i32 %shl11.i.i.i.i, %95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %111 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #7
  %112 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %14, align 4
  %add.ptr.i.i41.i.i.i = getelementptr i8, ptr %113, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.i.i.i, i32 %111) #7, !srcloc !132
  %114 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %14, align 4
  %add.ptr.i.i319.i.i.i.i = getelementptr i8, ptr %115, i32 %92
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i319.i.i.i.i) #7, !srcloc !124
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %118 = and i32 %117, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %if.end14.i.i.i.i.if.end15.i.i_crit_edge, label %if.end14.i.i.i.i.if.end.i8.i.i.i.i_crit_edge

if.end14.i.i.i.i.if.end.i8.i.i.i.i_crit_edge:     ; preds = %if.end14.i.i.i.i
  br label %if.end.i8.i.i.i.i

if.end14.i.i.i.i.if.end15.i.i_crit_edge:          ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

for.body.i4.i.i.i.i:                              ; preds = %if.end.i8.i.i.i.i
  %120 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %14, align 4
  %add.ptr.i.i3.i.i.i.i = getelementptr i8, ptr %121, i32 %92
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i.i.i.i) #7, !srcloc !124
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %124 = and i32 %123, %95
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %__ccu_wait_bit.exit13.i.i.i.i, label %for.body.i4.i.i.i.i.if.end.i8.i.i.i.i_crit_edge

for.body.i4.i.i.i.i.if.end.i8.i.i.i.i_crit_edge:  ; preds = %for.body.i4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i8.i.i.i.i

if.end.i8.i.i.i.i:                                ; preds = %for.body.i4.i.i.i.i.if.end.i8.i.i.i.i_crit_edge, %if.end14.i.i.i.i.if.end.i8.i.i.i.i_crit_edge
  %tries.021.i220.i.i.i.i = phi i32 [ %inc.i5.i.i.i.i, %for.body.i4.i.i.i.i.if.end.i8.i.i.i.i_crit_edge ], [ 0, %if.end14.i.i.i.i.if.end.i8.i.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748) #7
  %inc.i5.i.i.i.i = add nuw nsw i32 %tries.021.i220.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %inc.i5.i.i.i.i)
  %exitcond.not.i7.i.i.i.i = icmp eq i32 %inc.i5.i.i.i.i, 2000
  br i1 %exitcond.not.i7.i.i.i.i, label %if.end.i8.i.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge, label %for.body.i4.i.i.i.i

if.end.i8.i.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge: ; preds = %if.end.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ccu_policy_engine_start.exit.i.i.i

__ccu_wait_bit.exit13.i.i.i.i:                    ; preds = %for.body.i4.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %tries.021.i220.i.i.i.i)
  %cmp.i6.le.i.i.i.i = icmp ult i32 %tries.021.i220.i.i.i.i, 1999
  br i1 %cmp.i6.le.i.i.i.i, label %__ccu_wait_bit.exit13.i.i.i.i.if.end15.i.i_crit_edge, label %__ccu_policy_engine_start.exit.thread54.i.i.i

__ccu_wait_bit.exit13.i.i.i.i.if.end15.i.i_crit_edge: ; preds = %__ccu_wait_bit.exit13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

__ccu_policy_engine_start.exit.thread54.i.i.i:    ; preds = %__ccu_wait_bit.exit13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name23.i57.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 6
  br label %do.end12.i.i.i

__ccu_policy_engine_start.exit.i.i.i:             ; preds = %if.end.i8.i.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge, %if.end.i.i40.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge
  %.str.56.sink.ph.i.i.i.i = phi ptr [ @.str.56, %if.end.i8.i.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge ], [ @.str.53, %if.end.i.i40.i.i.i.__ccu_policy_engine_start.exit.i.i.i_crit_edge ]
  %name.i9.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 6
  %127 = ptrtoint ptr %name.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name.i9.i.i.i.i, align 4
  %call10.i10.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %128, i32 noundef %92, i32 noundef %94, ptr noundef nonnull @.str.10) #11
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %__ccu_policy_engine_start.exit.i.i.i, %__ccu_policy_engine_start.exit.thread54.i.i.i
  %name.i9.i.sink.i.i.i = phi ptr [ %name.i9.i.i.i.i, %__ccu_policy_engine_start.exit.i.i.i ], [ %name23.i57.i.i.i, %__ccu_policy_engine_start.exit.thread54.i.i.i ]
  %.str.56.sink.ph.i.sink.i.i.i = phi ptr [ %.str.56.sink.ph.i.i.i.i, %__ccu_policy_engine_start.exit.i.i.i ], [ @.str.56, %__ccu_policy_engine_start.exit.thread54.i.i.i ]
  %129 = ptrtoint ptr %name.i9.i.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %name.i9.i.sink.i.i.i, align 4
  %call24.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.ph.i.sink.i.i.i, ptr noundef nonnull @.str.54, ptr noundef %130) #11
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end12.i.i.i, %do.end.i.i.i
  %.str.46.sink.i.i.i = phi ptr [ @.str.46, %do.end12.i.i.i ], [ @.str.43, %do.end.i.i.i ]
  %name14.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %14, i32 0, i32 6
  %131 = ptrtoint ptr %name14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %name14.i.i.i, align 4
  %call15.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.46.sink.i.i.i, ptr noundef nonnull @.str.44, ptr noundef %132) #11
  br label %cleanup.sink.split.i.i

if.end15.i.i:                                     ; preds = %__ccu_wait_bit.exit13.i.i.i.i.if.end15.i.i_crit_edge, %if.end14.i.i.i.i.if.end15.i.i_crit_edge, %if.end4.i.i.i.if.end15.i.i_crit_edge, %do.end9.i.i.if.end15.i.i_crit_edge
  %gate.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 1
  %flags.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 1, i32 4
  %133 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end15.i.i.if.end23.i.i_crit_edge, label %gate_init.exit.i.i

if.end15.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

gate_init.exit.i.i:                               ; preds = %if.end15.i.i
  %call.i.i.i = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %14, ptr noundef %gate.i.i) #7
  br i1 %call.i.i.i, label %gate_init.exit.i.i.if.end23.i.i_crit_edge, label %gate_init.exit.i.i.cleanup.sink.split.i.i_crit_edge

gate_init.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %gate_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

gate_init.exit.i.i.if.end23.i.i_crit_edge:        ; preds = %gate_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %gate_init.exit.i.i.if.end23.i.i_crit_edge, %if.end15.i.i.if.end23.i.i_crit_edge
  %hyst.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 2
  %135 = ptrtoint ptr %hyst.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hyst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp.not.i94.i.i = icmp eq i32 %136, 0
  br i1 %cmp.not.i94.i.i, label %if.end23.i.i.hyst_init.exit.i.i_crit_edge, label %if.end.i98.i.i

if.end23.i.i.hyst_init.exit.i.i_crit_edge:        ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hyst_init.exit.i.i

if.end.i98.i.i:                                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %en_bit.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %en_bit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %en_bit.i.i.i, align 4
  %shl.i95.i.i = shl nuw i32 1, %138
  %val_bit.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 2, i32 2
  %139 = ptrtoint ptr %val_bit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %val_bit.i.i.i, align 4
  %shl3.i.i.i = shl nuw i32 1, %140
  %or.i96.i.i = or i32 %shl3.i.i.i, %shl.i95.i.i
  %141 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %14, align 4
  %add.ptr.i.i97.i.i = getelementptr i8, ptr %142, i32 %136
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97.i.i) #7, !srcloc !124
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %or4.i.i.i = or i32 %or.i96.i.i, %144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %145 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i.i) #7
  %146 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %14, align 4
  %add.ptr.i1.i.i.i = getelementptr i8, ptr %147, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i.i, i32 %145) #7, !srcloc !132
  br label %hyst_init.exit.i.i

hyst_init.exit.i.i:                               ; preds = %if.end.i98.i.i, %if.end23.i.i.hyst_init.exit.i.i_crit_edge
  %trig33.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 5
  %flags.i99.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 6, i32 1
  %148 = ptrtoint ptr %flags.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i99.i.i, align 8
  %150 = and i32 %149, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %div_init.exit.i.i, label %hyst_init.exit.i.i.if.end41.i.i_crit_edge

hyst_init.exit.i.i.if.end41.i.i_crit_edge:        ; preds = %hyst_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

div_init.exit.i.i:                                ; preds = %hyst_init.exit.i.i
  %div.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 6
  %call.i100.i.i = tail call fastcc i32 @__div_commit(ptr noundef %14, ptr noundef %gate.i.i, ptr noundef %div.i.i, ptr noundef %trig33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i100.i.i, 0
  br i1 %tobool4.not.i.i.i, label %div_init.exit.i.i.if.end41.i.i_crit_edge, label %div_init.exit.i.i.cleanup.sink.split.i.i_crit_edge

div_init.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %div_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

div_init.exit.i.i.if.end41.i.i_crit_edge:         ; preds = %div_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %div_init.exit.i.i.if.end41.i.i_crit_edge, %hyst_init.exit.i.i.if.end41.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 3, i32 2
  %152 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool42.not.i.i = icmp eq i32 %and.i.i, 0
  %pre_trig.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 3
  %cond.i.i = select i1 %tobool42.not.i.i, ptr %trig33.i.i, ptr %pre_trig.i.i
  %flags.i103.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %flags.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags.i103.i.i, align 8
  %156 = and i32 %155, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %div_init.exit108.i.i, label %if.end41.i.i.if.end53.i.i_crit_edge

if.end41.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

div_init.exit108.i.i:                             ; preds = %if.end41.i.i
  %pre_div.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 4
  %call.i104.i.i = tail call fastcc i32 @__div_commit(ptr noundef %14, ptr noundef %gate.i.i, ptr noundef %pre_div.i.i, ptr noundef %cond.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i.i)
  %tobool4.not.i105.i.i = icmp eq i32 %call.i104.i.i, 0
  br i1 %tobool4.not.i105.i.i, label %div_init.exit108.i.i.if.end53.i.i_crit_edge, label %div_init.exit108.i.i.cleanup.sink.split.i.i_crit_edge

div_init.exit108.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %div_init.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

div_init.exit108.i.i.if.end53.i.i_crit_edge:      ; preds = %div_init.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %div_init.exit108.i.i.if.end53.i.i_crit_edge, %if.end41.i.i.if.end53.i.i_crit_edge
  %width.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 7, i32 2
  %158 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %width.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.not.i109.i.i = icmp eq i32 %159, 0
  br i1 %cmp.not.i109.i.i, label %if.end53.i.i.__kona_clk_init.exit_crit_edge, label %sel_init.exit.i.i

if.end53.i.i.__kona_clk_init.exit_crit_edge:      ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__kona_clk_init.exit

sel_init.exit.i.i:                                ; preds = %if.end53.i.i
  %sel.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %16, i32 0, i32 7
  %call.i110.i.i = tail call fastcc i32 @__sel_commit(ptr noundef %14, ptr noundef %gate.i.i, ptr noundef %sel.i.i, ptr noundef %cond.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %tobool.not.i111.i.i = icmp eq i32 %call.i110.i.i, 0
  br i1 %tobool.not.i111.i.i, label %sel_init.exit.i.i.__kona_clk_init.exit_crit_edge, label %sel_init.exit.i.i.cleanup.sink.split.i.i_crit_edge

sel_init.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %sel_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

sel_init.exit.i.i.__kona_clk_init.exit_crit_edge: ; preds = %sel_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__kona_clk_init.exit

cleanup.sink.split.i.i:                           ; preds = %sel_init.exit.i.i.cleanup.sink.split.i.i_crit_edge, %div_init.exit108.i.i.cleanup.sink.split.i.i_crit_edge, %div_init.exit.i.i.cleanup.sink.split.i.i_crit_edge, %gate_init.exit.i.i.cleanup.sink.split.i.i_crit_edge, %do.end13.i.i
  %.str.41.sink.i.i = phi ptr [ @.str.26, %do.end13.i.i ], [ @.str.29, %gate_init.exit.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.35, %div_init.exit.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.38, %div_init.exit108.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.41, %sel_init.exit.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call61.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.41.sink.i.i, ptr noundef nonnull @.str.27, ptr noundef %18) #11
  br label %__kona_clk_init.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1250, 0\0A.popsection", ""() #7, !srcloc !135
  unreachable

__kona_clk_init.exit:                             ; preds = %cleanup.sink.split.i.i, %sel_init.exit.i.i.__kona_clk_init.exit_crit_edge, %if.end53.i.i.__kona_clk_init.exit_crit_edge
  %retval.0.i.i = phi i1 [ true, %sel_init.exit.i.i.__kona_clk_init.exit_crit_edge ], [ true, %if.end53.i.i.__kona_clk_init.exit_crit_edge ], [ false, %cleanup.sink.split.i.i ]
  %and23 = and i1 %success.0.off039, %retval.0.i.i
  br label %cleanup

cleanup:                                          ; preds = %__kona_clk_init.exit, %for.body.cleanup_crit_edge
  %success.1.off0 = phi i1 [ %and23, %__kona_clk_init.exit ], [ %success.0.off039, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %which.037, 1
  %160 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %clk_num, align 4
  %cmp = icmp ult i32 %inc, %161
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %__ccu_write_enable.exit.for.end_crit_edge
  %success.0.off0.lcssa = phi i1 [ true, %__ccu_write_enable.exit.for.end_crit_edge ], [ %success.1.off0, %cleanup.for.end_crit_edge ]
  %162 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %write_enabled.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i25 = icmp eq i8 %163, 0
  br i1 %tobool.not.i25, label %do.end.i28, label %if.end.i29

do.end.i28:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %name.i26 = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %164 = ptrtoint ptr %name.i26 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %name.i26, align 4
  %call.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %165) #11
  br label %__ccu_write_disable.exit

if.end.i29:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %166 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ccu, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 10855680) #7, !srcloc !132
  %168 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %write_enabled.i, align 4
  br label %__ccu_write_disable.exit

__ccu_write_disable.exit:                         ; preds = %if.end.i29, %do.end.i28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  ret i1 %success.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_gate(ptr noundef %ccu, ptr noundef %name, ptr nocapture noundef %gate, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %2 = and i32 %1, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %2)
  %.not = icmp eq i32 %2, 17
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond29 = select i1 %enable, i1 true, i1 %tobool8.not
  br i1 %or.cond29, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %write_enabled.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 2
  %3 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %write_enabled.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %6) #11
  br label %__ccu_write_enable.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %write_enabled.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccu, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 27632896) #7, !srcloc !132
  br label %__ccu_write_enable.exit

__ccu_write_enable.exit:                          ; preds = %if.end.i, %do.end.i
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 4
  %12 = and i32 %11, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %.not.i = icmp eq i32 %12, 17
  br i1 %.not.i, label %if.end.i30, label %__ccu_write_enable.exit.__clk_gate.exit_crit_edge

__ccu_write_enable.exit.__clk_gate.exit_crit_edge: ; preds = %__ccu_write_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__clk_gate.exit

if.end.i30:                                       ; preds = %__ccu_write_enable.exit
  %and6.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond35.i = select i1 %enable, i1 true, i1 %tobool7.not.i
  br i1 %or.cond35.i, label %if.end9.i, label %do.end.i32

do.end.i32:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %__clk_gate.exit

if.end9.i:                                        ; preds = %if.end.i30
  %13 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %cmp.i = xor i1 %14, %enable
  br i1 %cmp.i, label %if.end9.i.__clk_gate.exit_crit_edge, label %if.end17.i

if.end9.i.__clk_gate.exit_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__clk_gate.exit

if.end17.i:                                       ; preds = %if.end9.i
  %xor.i = xor i32 %11, 32
  %15 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor.i, ptr %flags1, align 4
  %call19.i = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %ccu, ptr noundef %gate) #7
  br i1 %call19.i, label %if.end17.i.__clk_gate.exit_crit_edge, label %if.then22.i

if.end17.i.__clk_gate.exit_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__clk_gate.exit

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1, align 4
  %xor24.i = xor i32 %17, 32
  store i32 %xor24.i, ptr %flags1, align 4
  br label %__clk_gate.exit

__clk_gate.exit:                                  ; preds = %if.then22.i, %if.end17.i.__clk_gate.exit_crit_edge, %if.end9.i.__clk_gate.exit_crit_edge, %do.end.i32, %__ccu_write_enable.exit.__clk_gate.exit_crit_edge
  %retval.0.i = phi i1 [ true, %do.end.i32 ], [ true, %__ccu_write_enable.exit.__clk_gate.exit_crit_edge ], [ true, %if.end9.i.__clk_gate.exit_crit_edge ], [ false, %if.then22.i ], [ true, %if.end17.i.__clk_gate.exit_crit_edge ]
  %18 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_enabled.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i34 = icmp eq i8 %19, 0
  br i1 %tobool.not.i34, label %do.end.i37, label %if.end.i38

do.end.i37:                                       ; preds = %__clk_gate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i35 = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %20 = ptrtoint ptr %name.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i35, align 4
  %call.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %21) #11
  br label %__ccu_write_disable.exit

if.end.i38:                                       ; preds = %__clk_gate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ccu, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 10855680) #7, !srcloc !132
  %24 = ptrtoint ptr %write_enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %write_enabled.i, align 4
  br label %__ccu_write_disable.exit

__ccu_write_disable.exit:                         ; preds = %if.end.i38, %do.end.i37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br i1 %retval.0.i, label %__ccu_write_disable.exit.cleanup_crit_edge, label %do.end

__ccu_write_disable.exit.cleanup_crit_edge:       ; preds = %__ccu_write_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %__ccu_write_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %enable, ptr @.str.3, ptr @.str.4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__ccu_write_disable.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %__ccu_write_disable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__gate_commit(ptr nocapture noundef readonly %ccu, ptr nocapture noundef readonly %gate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !119

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #7, !srcloc !136
  unreachable

do.end11:                                         ; preds = %entry
  %and13 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end11.cleanup_crit_edge, label %if.end16

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %2 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gate, align 4
  %4 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ccu, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !124
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and18 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end27, label %if.then20

if.then20:                                        ; preds = %if.end16
  %hw_sw_sel_bit = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 3
  %10 = ptrtoint ptr %hw_sw_sel_bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_sw_sel_bit, align 4
  %shl = shl nuw i32 1, %11
  %and22 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end27.thread, label %if.end27.thread97

if.end27.thread97:                                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %shl, %7
  %en_bit100 = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 2
  %12 = ptrtoint ptr %en_bit100 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_bit100, align 4
  %shl28101 = shl nuw i32 1, %13
  br label %land.lhs.true

if.end27.thread:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %and25 = and i32 %7, %neg
  %en_bit93 = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 2
  %14 = ptrtoint ptr %en_bit93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %en_bit93, align 4
  %shl2894 = shl nuw i32 1, %15
  br label %if.else45

if.end27:                                         ; preds = %if.end16
  %.pre = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  %en_bit = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 2
  %16 = ptrtoint ptr %en_bit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %en_bit, align 4
  %shl28 = shl nuw i32 1, %17
  br i1 %phi.cmp, label %if.end27.if.else45_crit_edge, label %if.end27.land.lhs.true_crit_edge

if.end27.land.lhs.true_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end27.if.else45_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else45

land.lhs.true:                                    ; preds = %if.end27.land.lhs.true_crit_edge, %if.end27.thread97
  %shl28103 = phi i32 [ %shl28101, %if.end27.thread97 ], [ %shl28, %if.end27.land.lhs.true_crit_edge ]
  %reg_val.0102 = phi i32 [ %or, %if.end27.thread97 ], [ %7, %if.end27.land.lhs.true_crit_edge ]
  %and33 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34 = icmp ne i32 %and33, 0
  %18 = and i32 %9, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %if.then43, label %land.lhs.true.if.else45_crit_edge

land.lhs.true.if.else45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else45

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %or44 = or i32 %shl28103, %reg_val.0102
  br label %if.end48

if.else45:                                        ; preds = %land.lhs.true.if.else45_crit_edge, %if.end27.if.else45_crit_edge, %if.end27.thread
  %shl2896 = phi i32 [ %shl28103, %land.lhs.true.if.else45_crit_edge ], [ %shl28, %if.end27.if.else45_crit_edge ], [ %shl2894, %if.end27.thread ]
  %reg_val.095 = phi i32 [ %reg_val.0102, %land.lhs.true.if.else45_crit_edge ], [ %7, %if.end27.if.else45_crit_edge ], [ %and25, %if.end27.thread ]
  %enabled.0.off0 = phi i1 [ %tobool34, %land.lhs.true.if.else45_crit_edge ], [ false, %if.end27.if.else45_crit_edge ], [ false, %if.end27.thread ]
  %neg46 = xor i32 %shl2896, -1
  %and47 = and i32 %reg_val.095, %neg46
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then43
  %reg_val.1 = phi i32 [ %and47, %if.else45 ], [ %or44, %if.then43 ]
  %enabled.1.off0 = phi i1 [ %enabled.0.off0, %if.else45 ], [ true, %if.then43 ]
  %20 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gate, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %reg_val.1) #7
  %23 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ccu, align 4
  %add.ptr.i85 = getelementptr i8, ptr %24, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %22) #7, !srcloc !132
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and51 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end48.cleanup_crit_edge, label %if.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %27 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gate, align 4
  %status_bit = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 1
  %29 = ptrtoint ptr %status_bit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status_bit, align 4
  %31 = shl nuw i32 1, %30
  %32 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ccu, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %33, i32 %28
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87) #7, !srcloc !124
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %36 = and i32 %35, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  %cmp5.i88 = xor i1 %enabled.1.off0, %37
  br i1 %cmp5.i88, label %if.end54.cleanup_crit_edge, label %if.end54.if.end.i_crit_edge

if.end54.if.end.i_crit_edge:                      ; preds = %if.end54
  br label %if.end.i

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ccu, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %28
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !124
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %42 = and i32 %41, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %43 = icmp eq i32 %42, 0
  %cmp5.i = xor i1 %enabled.1.off0, %43
  br i1 %cmp5.i, label %cleanup.loopexit, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.end54.if.end.i_crit_edge
  %tries.021.i89 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %if.end54.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #7
  %inc.i = add nuw nsw i32 %tries.021.i89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 2000
  br i1 %exitcond.not.i, label %do.end.i, label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %tries.021.i89)
  %cmp.i.le105 = icmp ult i32 %tries.021.i89, 1999
  %name.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %45 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name.i, align 4
  %cond.i = select i1 %enabled.1.off0, ptr @.str.9, ptr @.str.10
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %46, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %cond.i) #11
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %tries.021.i89)
  %cmp.i.le = icmp ult i32 %tries.021.i89, 1999
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end.i, %if.end54.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %do.end11.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end11.cleanup_crit_edge ], [ true, %if.end48.cleanup_crit_edge ], [ %cmp.i.le105, %do.end.i ], [ true, %if.end54.cleanup_crit_edge ], [ %cmp.i.le, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @round_rate(ptr noundef %ccu, ptr nocapture noundef readonly %div, ptr nocapture noundef readonly %pre_div, i32 noundef %rate, i32 noundef %parent_rate, ptr noundef writeonly %scaled_div) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bcm_clk_div, ptr %div, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6, label %do.body32, !prof !119

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 759, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp slt i32 %parent_rate, 0
  br i1 %cmp, label %do.body41, label %do.end49, !prof !119

do.body41:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 761, 0\0A.popsection", ""() #7, !srcloc !138
  unreachable

do.end49:                                         ; preds = %do.body32
  %flags50 = getelementptr inbounds %struct.bcm_clk_div, ptr %pre_div, i32 0, i32 1
  %2 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags50, align 8
  %and51 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else253, label %if.then53

if.then53:                                        ; preds = %do.end49
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then53.scale_rate.exit_crit_edge

if.then53.scale_rate.exit_crit_edge:              ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_rate.exit

if.end.i:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i32 %parent_rate to i64
  %frac_width.i = getelementptr inbounds %struct.anon, ptr %pre_div, i32 0, i32 3
  %4 = ptrtoint ptr %frac_width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frac_width.i, align 4
  %sh_prom.i = zext i32 %5 to i64
  %shl.i = shl i64 %conv1.i, %sh_prom.i
  %extract.t = trunc i64 %shl.i to i32
  br label %scale_rate.exit

scale_rate.exit:                                  ; preds = %if.end.i, %if.then53.scale_rate.exit_crit_edge
  %retval.0.i.off0 = phi i32 [ %extract.t, %if.end.i ], [ %parent_rate, %if.then53.scale_rate.exit_crit_edge ]
  %and.i999 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i999)
  %tobool.not.i1000 = icmp eq i32 %and.i999, 0
  %conv1.i1001 = zext i32 %retval.0.i.off0 to i64
  br i1 %tobool.not.i1000, label %if.end.i1005, label %scale_rate.exit.scale_rate.exit1007_crit_edge

scale_rate.exit.scale_rate.exit1007_crit_edge:    ; preds = %scale_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_rate.exit1007

if.end.i1005:                                     ; preds = %scale_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %frac_width.i1002 = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 3
  %6 = ptrtoint ptr %frac_width.i1002 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frac_width.i1002, align 4
  %sh_prom.i1003 = zext i32 %7 to i64
  %shl.i1004 = shl i64 %conv1.i1001, %sh_prom.i1003
  br label %scale_rate.exit1007

scale_rate.exit1007:                              ; preds = %if.end.i1005, %scale_rate.exit.scale_rate.exit1007_crit_edge
  %retval.0.i1006 = phi i64 [ %shl.i1004, %if.end.i1005 ], [ %conv1.i1001, %scale_rate.exit.scale_rate.exit1007_crit_edge ]
  br i1 %tobool.not.i, label %if.end.i1010, label %if.then.i

if.then.i:                                        ; preds = %scale_rate.exit1007
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pre_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pre_div, align 8
  %conv.i = zext i32 %9 to i64
  br label %divider_read_scaled.exit

if.end.i1010:                                     ; preds = %scale_rate.exit1007
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %10 = ptrtoint ptr %pre_div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pre_div, align 8
  %12 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccu, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !124
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  %shift.i = getelementptr inbounds %struct.anon, ptr %pre_div, i32 0, i32 1
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift.i, align 4
  %width.i = getelementptr inbounds %struct.anon, ptr %pre_div, i32 0, i32 2
  %18 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i, align 8
  %notmask.i.i.i = shl nsw i32 -1, %19
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %shl1.i.i.i = shl i32 %sub.i.i.i, %17
  %and.i.i = and i32 %shl1.i.i.i, %15
  %shr.i.i = lshr i32 %and.i.i, %17
  %conv.i.i = zext i32 %shr.i.i to i64
  %frac_width.i.i = getelementptr inbounds %struct.anon, ptr %pre_div, i32 0, i32 3
  %20 = ptrtoint ptr %frac_width.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frac_width.i.i, align 4
  %sh_prom.i.i = zext i32 %21 to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %add.i.i = add nuw i64 %shl.i.i, %conv.i.i
  br label %divider_read_scaled.exit

divider_read_scaled.exit:                         ; preds = %if.end.i1010, %if.then.i
  %retval.0.i1011 = phi i64 [ %conv.i, %if.then.i ], [ %add.i.i, %if.end.i1010 ]
  %div57996 = lshr i64 %retval.0.i1011, 1
  %add = add i64 %div57996, %retval.0.i1006
  %conv58 = trunc i64 %retval.0.i1011 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp232 = icmp ult i64 %add, 4294967296
  br i1 %cmp232, label %if.then240, label %if.else246, !prof !126

if.then240:                                       ; preds = %divider_read_scaled.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv241 = trunc i64 %add to i32
  %div244 = udiv i32 %conv241, %conv58
  %conv245 = zext i32 %div244 to i64
  br label %if.end255

if.else246:                                       ; preds = %divider_read_scaled.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv58, i64 %add) #10, !srcloc !127
  %asmresult1.i = extractvalue { i64, i64 } %22, 1
  br label %if.end255

if.else253:                                       ; preds = %do.end49
  %and.i1015 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1015)
  %tobool.not.i1016 = icmp eq i32 %and.i1015, 0
  %conv1.i1017 = zext i32 %parent_rate to i64
  br i1 %tobool.not.i1016, label %if.end.i1021, label %if.else253.if.end255_crit_edge

if.else253.if.end255_crit_edge:                   ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end255

if.end.i1021:                                     ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #9
  %frac_width.i1018 = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 3
  %23 = ptrtoint ptr %frac_width.i1018 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frac_width.i1018, align 4
  %sh_prom.i1019 = zext i32 %24 to i64
  %shl.i1020 = shl i64 %conv1.i1017, %sh_prom.i1019
  br label %if.end255

if.end255:                                        ; preds = %if.end.i1021, %if.else253.if.end255_crit_edge, %if.else246, %if.then240
  %scaled_parent_rate.0 = phi i64 [ %conv245, %if.then240 ], [ %asmresult1.i, %if.else246 ], [ %shl.i1020, %if.end.i1021 ], [ %conv1.i1017, %if.else253.if.end255_crit_edge ]
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 8
  %and257 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  br i1 %tobool258.not, label %if.then259, label %divider_read_scaled.exit1095

if.then259:                                       ; preds = %if.end255
  %div262992 = lshr i32 %rate, 1
  %conv263 = zext i32 %div262992 to i64
  %add264 = add i64 %scaled_parent_rate.0, %conv263
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add264)
  %cmp466 = icmp ult i64 %add264, 4294967296
  br i1 %cmp466, label %if.then474, label %if.else480, !prof !126

if.then474:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #9
  %conv475 = trunc i64 %add264 to i32
  %div478 = udiv i32 %conv475, %rate
  %conv479 = zext i32 %div478 to i64
  br label %scaled_div_max.exit

if.else480:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %add264) #10, !srcloc !127
  %asmresult1.i1048 = extractvalue { i64, i64 } %27, 1
  br label %scaled_div_max.exit

scaled_div_max.exit:                              ; preds = %if.else480, %if.then474
  %_tmp261.0 = phi i64 [ %conv479, %if.then474 ], [ %asmresult1.i1048, %if.else480 ]
  %width.i1064 = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 2
  %28 = ptrtoint ptr %width.i1064 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i1064, align 8
  %notmask.i = shl nsw i32 -1, %29
  %sub.i1065 = xor i32 %notmask.i, -1
  %conv.i.i1066 = zext i32 %sub.i1065 to i64
  %frac_width.i.i1067 = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 3
  %30 = ptrtoint ptr %frac_width.i.i1067 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frac_width.i.i1067, align 4
  %sh_prom.i.i1068 = zext i32 %31 to i64
  %shl.i.i1069 = shl nuw i64 1, %sh_prom.i.i1068
  %add.i.i1070 = add nuw i64 %shl.i.i1069, %conv.i.i1066
  call void @__sanitizer_cov_trace_cmp8(i64 %_tmp261.0, i64 %add.i.i1070)
  %cmp489 = icmp ugt i64 %_tmp261.0, %add.i.i1070
  br i1 %cmp489, label %scaled_div_max.exit.if.end500_crit_edge, label %if.else492

scaled_div_max.exit.if.end500_crit_edge:          ; preds = %scaled_div_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end500

if.else492:                                       ; preds = %scaled_div_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %frac_width.i.i1067 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frac_width.i.i1067, align 4
  %sh_prom.i.i1055 = zext i32 %33 to i64
  %shl.i.i1056 = shl nuw i64 1, %sh_prom.i.i1055
  %34 = tail call i64 @llvm.umax.i64(i64 %_tmp261.0, i64 %shl.i.i1056)
  br label %if.end500

divider_read_scaled.exit1095:                     ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %div, align 8
  %conv.i1076 = zext i32 %36 to i64
  br label %if.end500

if.end500:                                        ; preds = %divider_read_scaled.exit1095, %if.else492, %scaled_div_max.exit.if.end500_crit_edge
  %best_scaled_div.0 = phi i64 [ %conv.i1076, %divider_read_scaled.exit1095 ], [ %add.i.i1070, %scaled_div_max.exit.if.end500_crit_edge ], [ %34, %if.else492 ]
  %div503993 = lshr i64 %best_scaled_div.0, 1
  %add504 = add i64 %div503993, %scaled_parent_rate.0
  %conv506 = trunc i64 %best_scaled_div.0 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add504)
  %cmp707 = icmp ult i64 %add504, 4294967296
  br i1 %cmp707, label %if.then715, label %if.else721, !prof !126

if.then715:                                       ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #9
  %conv716 = trunc i64 %add504 to i32
  %div719 = udiv i32 %conv716, %conv506
  br label %if.end725

if.else721:                                       ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #9
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv506, i64 %add504) #10, !srcloc !127
  %asmresult1.i1120 = extractvalue { i64, i64 } %37, 1
  %extract.t1193 = trunc i64 %asmresult1.i1120 to i32
  br label %if.end725

if.end725:                                        ; preds = %if.else721, %if.then715
  %_tmp502.0.off0 = phi i32 [ %div719, %if.then715 ], [ %extract.t1193, %if.else721 ]
  %tobool728.not = icmp eq ptr %scaled_div, null
  br i1 %tobool728.not, label %if.end725.if.end730_crit_edge, label %if.then729

if.end725.if.end730_crit_edge:                    ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end730

if.then729:                                       ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %scaled_div to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %best_scaled_div.0, ptr %scaled_div, align 8
  br label %if.end730

if.end730:                                        ; preds = %if.then729, %if.end725.if.end730_crit_edge
  ret i32 %_tmp502.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sel_commit(ptr nocapture noundef readonly %ccu, ptr nocapture noundef %gate, ptr nocapture noundef %sel, ptr nocapture noundef readonly %trig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body3, label %do.end8, !prof !119

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 882, 0\0A.popsection", ""() #7, !srcloc !139
  unreachable

do.end8:                                          ; preds = %entry
  %clk_index = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 5
  %2 = ptrtoint ptr %clk_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clk_index, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp9 = icmp eq i8 %3, -1
  br i1 %cmp9, label %if.then11, label %do.body23

if.then11:                                        ; preds = %do.end8
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  %6 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ccu, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !124
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %shift = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 1
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift, align 4
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %notmask.i.i = shl nsw i32 -1, %13
  %sub.i.i = xor i32 %notmask.i.i, -1
  %shl1.i.i = shl i32 %sub.i.i, %11
  %and.i = and i32 %shl1.i.i, %9
  %shr.i = lshr i32 %and.i, %11
  %parent_count.i = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 3
  %14 = ptrtoint ptr %parent_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parent_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %15)
  %cmp.i = icmp ugt i32 %15, 255
  br i1 %cmp.i, label %do.body2.i, label %for.cond.preheader.i, !prof !119

for.cond.preheader.i:                             ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp922.not.i = icmp eq i32 %15, 0
  br i1 %cmp922.not.i, label %for.cond.preheader.i.cleanup66_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup66_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %parent_sel11.i = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 4
  %16 = ptrtoint ptr %parent_sel11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent_sel11.i, align 4
  %conv12.i = and i32 %shr.i, 255
  %18 = trunc i32 %15 to i8
  br label %for.body.i

do.body2.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 825, 0\0A.popsection", ""() #7, !srcloc !133
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv24.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.inc.i.for.body.i_crit_edge ]
  %i.023.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %17, i32 %conv24.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %20, %conv12.i
  br i1 %cmp13.i, label %if.end20, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i8 %i.023.i, 1
  %conv.i = zext i8 %inc.i to i32
  %cmp9.i = icmp ult i8 %inc.i, %18
  br i1 %cmp9.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup66_crit_edge

for.inc.i.cleanup66_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end20:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %clk_index to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %i.023.i, ptr %clk_index, align 4
  br label %cleanup66

do.body23:                                        ; preds = %do.end8
  %parent_count = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 3
  %22 = ptrtoint ptr %parent_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parent_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp26.not = icmp ugt i32 %23, %conv
  br i1 %cmp26.not, label %do.end43, label %do.body35, !prof !126

do.body35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 902, 0\0A.popsection", ""() #7, !srcloc !140
  unreachable

do.end43:                                         ; preds = %do.body23
  %parent_sel44 = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 4
  %24 = ptrtoint ptr %parent_sel44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent_sel44, align 4
  %arrayidx = getelementptr i32, ptr %25, i32 %conv
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %flags.i = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 4
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i101 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i, label %do.end43.if.end50_crit_edge, label %__is_clk_gate_enabled.exit

do.end43.if.end50_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

__is_clk_gate_enabled.exit:                       ; preds = %do.end43
  %status_bit.i = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 1
  %30 = ptrtoint ptr %status_bit.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status_bit.i, align 4
  %shl.i = shl nuw i32 1, %31
  %32 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gate, align 4
  %34 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ccu, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %33
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !124
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %and1.i = and i32 %37, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i102.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i102.not, label %land.lhs.true, label %__is_clk_gate_enabled.exit.if.end50_crit_edge

__is_clk_gate_enabled.exit.if.end50_crit_edge:    ; preds = %__is_clk_gate_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.lhs.true:                                    ; preds = %__is_clk_gate_enabled.exit
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %40 = and i32 %39, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %40)
  %41 = icmp eq i32 %40, 17
  br i1 %41, label %if.end17.i, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end17.i:                                       ; preds = %land.lhs.true
  %xor.i = xor i32 %39, 32
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %xor.i, ptr %flags.i, align 4
  %call19.i = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %ccu, ptr noundef %gate) #7
  br i1 %call19.i, label %if.end17.i.if.end50_crit_edge, label %__clk_gate.exit

if.end17.i.if.end50_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

__clk_gate.exit:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %xor24.i = xor i32 %44, 32
  store i32 %xor24.i, ptr %flags.i, align 4
  br label %cleanup66

if.end50:                                         ; preds = %if.end17.i.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %__is_clk_gate_enabled.exit.if.end50_crit_edge, %do.end43.if.end50_crit_edge
  %retval.0.i103130 = phi i1 [ true, %__is_clk_gate_enabled.exit.if.end50_crit_edge ], [ true, %do.end43.if.end50_crit_edge ], [ false, %land.lhs.true.if.end50_crit_edge ], [ false, %if.end17.i.if.end50_crit_edge ]
  %45 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sel, align 4
  %47 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ccu, align 4
  %add.ptr.i108 = getelementptr i8, ptr %48, i32 %46
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #7, !srcloc !124
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %shift53 = getelementptr inbounds %struct.bcm_clk_sel, ptr %sel, i32 0, i32 1
  %51 = ptrtoint ptr %shift53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %shift53, align 4
  %53 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width, align 4
  %notmask.i.i109 = shl nsw i32 -1, %54
  %sub.i.i110 = xor i32 %notmask.i.i109, -1
  %shl1.i.i111 = shl i32 %sub.i.i110, %52
  %neg.i = xor i32 %shl1.i.i111, -1
  %and.i112 = and i32 %50, %neg.i
  %shl.i113 = shl i32 %27, %52
  %or.i = or i32 %and.i112, %shl.i113
  %55 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %58 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ccu, align 4
  %add.ptr.i114 = getelementptr i8, ptr %59, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %57) #7, !srcloc !132
  %call57 = tail call fastcc zeroext i1 @__clk_trigger(ptr noundef %ccu, ptr noundef %trig)
  %spec.select = select i1 %call57, i32 0, i32 -5
  br i1 %retval.0.i103130, label %if.end50.cleanup66_crit_edge, label %land.lhs.true61

if.end50.cleanup66_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

land.lhs.true61:                                  ; preds = %if.end50
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i, align 4
  %62 = and i32 %61, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %62)
  %.not.i116 = icmp eq i32 %62, 17
  br i1 %.not.i116, label %if.end.i119, label %land.lhs.true61.cleanup66_crit_edge

land.lhs.true61.cleanup66_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

if.end.i119:                                      ; preds = %land.lhs.true61
  %and6.i117 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i117)
  %tobool7.not.i118 = icmp eq i32 %and6.i117, 0
  br i1 %tobool7.not.i118, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %cleanup66

if.end9.i:                                        ; preds = %if.end.i119
  %63 = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %if.end9.i.cleanup66_crit_edge, label %if.end17.i122

if.end9.i.cleanup66_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

if.end17.i122:                                    ; preds = %if.end9.i
  %xor.i120 = xor i32 %61, 32
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %xor.i120, ptr %flags.i, align 4
  %call19.i121 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %ccu, ptr noundef %gate) #7
  br i1 %call19.i121, label %if.end17.i122.cleanup66_crit_edge, label %__clk_gate.exit126

if.end17.i122.cleanup66_crit_edge:                ; preds = %if.end17.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

__clk_gate.exit126:                               ; preds = %if.end17.i122
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 4
  %xor24.i123 = xor i32 %67, 32
  store i32 %xor24.i123, ptr %flags.i, align 4
  %spec.select99 = select i1 %call57, i32 -6, i32 -5
  br label %cleanup66

cleanup66:                                        ; preds = %__clk_gate.exit126, %if.end17.i122.cleanup66_crit_edge, %if.end9.i.cleanup66_crit_edge, %do.end.i, %land.lhs.true61.cleanup66_crit_edge, %if.end50.cleanup66_crit_edge, %__clk_gate.exit, %if.end20, %for.inc.i.cleanup66_crit_edge, %for.cond.preheader.i.cleanup66_crit_edge
  %retval.1 = phi i32 [ 0, %if.end20 ], [ -6, %__clk_gate.exit ], [ %spec.select, %if.end50.cleanup66_crit_edge ], [ %spec.select99, %__clk_gate.exit126 ], [ %spec.select, %do.end.i ], [ %spec.select, %land.lhs.true61.cleanup66_crit_edge ], [ %spec.select, %if.end9.i.cleanup66_crit_edge ], [ %spec.select, %if.end17.i122.cleanup66_crit_edge ], [ -22, %for.cond.preheader.i.cleanup66_crit_edge ], [ -22, %for.inc.i.cleanup66_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__clk_trigger(ptr nocapture noundef readonly %ccu, ptr nocapture noundef readonly %trig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trig, align 4
  %bit = getelementptr inbounds %struct.bcm_clk_trig, ptr %trig, i32 0, i32 1
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  %5 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ccu, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !132
  %7 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trig, align 4
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bit, align 4
  %11 = shl nuw i32 1, %10
  %12 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccu, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %13, i32 %8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #7, !srcloc !124
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %16 = and i32 %15, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %entry.__ccu_wait_bit.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.__ccu_wait_bit.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ccu_wait_bit.exit

for.body.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ccu, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !124
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %22 = and i32 %21, %11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %__ccu_wait_bit.exit.loopexit, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %tries.021.i9 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #7
  %inc.i = add nuw nsw i32 %tries.021.i9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 2000
  br i1 %exitcond.not.i, label %do.end.i, label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %tries.021.i9)
  %cmp.i.le12 = icmp ult i32 %tries.021.i9, 1999
  %name.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %26, i32 noundef %8, i32 noundef %10, ptr noundef nonnull @.str.10) #11
  br label %__ccu_wait_bit.exit

__ccu_wait_bit.exit.loopexit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %tries.021.i9)
  %cmp.i.le = icmp ult i32 %tries.021.i9, 1999
  br label %__ccu_wait_bit.exit

__ccu_wait_bit.exit:                              ; preds = %__ccu_wait_bit.exit.loopexit, %do.end.i, %entry.__ccu_wait_bit.exit_crit_edge
  %cmp20.i = phi i1 [ %cmp.i.le12, %do.end.i ], [ true, %entry.__ccu_wait_bit.exit_crit_edge ], [ %cmp.i.le, %__ccu_wait_bit.exit.loopexit ]
  ret i1 %cmp20.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__div_commit(ptr nocapture noundef readonly %ccu, ptr nocapture noundef %gate, ptr nocapture noundef %div, ptr nocapture noundef readonly %trig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bcm_clk_div, ptr %div, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !126

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 599, 0\0A.popsection", ""() #7, !srcloc !141
  unreachable

do.end10:                                         ; preds = %entry
  %scaled_div = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 4
  %2 = ptrtoint ptr %scaled_div to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %scaled_div, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %if.then11, label %scaled_div_min.exit.i

if.then11:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div, align 8
  %6 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ccu, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !124
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %shift = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 1
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift, align 4
  %width = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 8
  %notmask.i.i = shl nsw i32 -1, %13
  %sub.i.i = xor i32 %notmask.i.i, -1
  %shl1.i.i = shl i32 %sub.i.i, %11
  %and.i = and i32 %shl1.i.i, %9
  %shr.i = lshr i32 %and.i, %11
  %conv.i = zext i32 %shr.i to i64
  %frac_width.i = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 3
  %14 = ptrtoint ptr %frac_width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frac_width.i, align 4
  %sh_prom.i = zext i32 %15 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %add.i = add nuw i64 %shl.i, %conv.i
  %16 = ptrtoint ptr %scaled_div to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add.i, ptr %scaled_div, align 8
  br label %cleanup

scaled_div_min.exit.i:                            ; preds = %do.end10
  %frac_width.i.i.i = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 3
  %17 = ptrtoint ptr %frac_width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frac_width.i.i.i, align 4
  %sh_prom.i.i.i = zext i32 %18 to i64
  %scaled_div.highbits.i = lshr i64 %3, %sh_prom.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %scaled_div.highbits.i)
  %cmp.i = icmp eq i64 %scaled_div.highbits.i, 0
  br i1 %cmp.i, label %do.body2.i, label %scaled_div_max.exit.i, !prof !119

do.body2.i:                                       ; preds = %scaled_div_min.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #7, !srcloc !142
  unreachable

scaled_div_max.exit.i:                            ; preds = %scaled_div_min.exit.i
  %width.i.i = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 2
  %19 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width.i.i, align 8
  %notmask.i.i78 = shl nsw i32 -1, %20
  %sub.i.i79 = xor i32 %notmask.i.i78, -1
  %conv.i.i.i = zext i32 %sub.i.i79 to i64
  %shl.i.i33.i = shl nuw i64 1, %sh_prom.i.i.i
  %add.i.i.i = add nuw i64 %shl.i.i33.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %3)
  %cmp8.i = icmp ult i64 %add.i.i.i, %3
  br i1 %cmp8.i, label %do.body16.i, label %divider.exit, !prof !119

do.body16.i:                                      ; preds = %scaled_div_max.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !143
  unreachable

divider.exit:                                     ; preds = %scaled_div_max.exit.i
  %21 = ptrtoint ptr %frac_width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frac_width.i.i.i, align 4
  %sh_prom.i81 = zext i32 %22 to i64
  %shl.neg.i = shl nsw i64 -1, %sh_prom.i81
  %sub.i = add i64 %shl.neg.i, %3
  %conv.i82 = trunc i64 %sub.i to i32
  %flags.i = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 4
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i83 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i, label %divider.exit.if.end27_crit_edge, label %__is_clk_gate_enabled.exit

divider.exit.if.end27_crit_edge:                  ; preds = %divider.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

__is_clk_gate_enabled.exit:                       ; preds = %divider.exit
  %status_bit.i = getelementptr inbounds %struct.bcm_clk_gate, ptr %gate, i32 0, i32 1
  %25 = ptrtoint ptr %status_bit.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status_bit.i, align 4
  %shl.i84 = shl nuw i32 1, %26
  %27 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gate, align 4
  %29 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ccu, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !124
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %and1.i = and i32 %32, %shl.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i85.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i85.not, label %land.lhs.true, label %__is_clk_gate_enabled.exit.if.end27_crit_edge

__is_clk_gate_enabled.exit.if.end27_crit_edge:    ; preds = %__is_clk_gate_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %__is_clk_gate_enabled.exit
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %35 = and i32 %34, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %35)
  %36 = icmp eq i32 %35, 17
  br i1 %36, label %if.end17.i, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end17.i:                                       ; preds = %land.lhs.true
  %xor.i = xor i32 %34, 32
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %xor.i, ptr %flags.i, align 4
  %call19.i = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %ccu, ptr noundef %gate) #7
  br i1 %call19.i, label %if.end17.i.if.end27_crit_edge, label %__clk_gate.exit

if.end17.i.if.end27_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

__clk_gate.exit:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %xor24.i = xor i32 %39, 32
  store i32 %xor24.i, ptr %flags.i, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end17.i.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %__is_clk_gate_enabled.exit.if.end27_crit_edge, %divider.exit.if.end27_crit_edge
  %retval.0.i110 = phi i1 [ true, %__is_clk_gate_enabled.exit.if.end27_crit_edge ], [ true, %divider.exit.if.end27_crit_edge ], [ false, %land.lhs.true.if.end27_crit_edge ], [ false, %if.end17.i.if.end27_crit_edge ]
  %40 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %div, align 8
  %42 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ccu, align 4
  %add.ptr.i90 = getelementptr i8, ptr %43, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #7, !srcloc !124
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %shift32 = getelementptr inbounds %struct.anon, ptr %div, i32 0, i32 1
  %46 = ptrtoint ptr %shift32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %shift32, align 4
  %48 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %width.i.i, align 8
  %notmask.i.i91 = shl nsw i32 -1, %49
  %sub.i.i92 = xor i32 %notmask.i.i91, -1
  %shl1.i.i93 = shl i32 %sub.i.i92, %47
  %neg.i = xor i32 %shl1.i.i93, -1
  %and.i94 = and i32 %45, %neg.i
  %shl.i95 = shl i32 %conv.i82, %47
  %or.i = or i32 %and.i94, %shl.i95
  %50 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %div, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %53 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ccu, align 4
  %add.ptr.i96 = getelementptr i8, ptr %54, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %52) #7, !srcloc !132
  %call38 = tail call fastcc zeroext i1 @__clk_trigger(ptr noundef %ccu, ptr noundef %trig)
  %spec.select = select i1 %call38, i32 0, i32 -5
  br i1 %retval.0.i110, label %if.end27.cleanup_crit_edge, label %land.lhs.true42

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.end27
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 4
  %57 = and i32 %56, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %57)
  %.not.i98 = icmp eq i32 %57, 17
  br i1 %.not.i98, label %if.end.i101, label %land.lhs.true42.cleanup_crit_edge

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i101:                                      ; preds = %land.lhs.true42
  %and6.i99 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i99)
  %tobool7.not.i100 = icmp eq i32 %and6.i99, 0
  br i1 %tobool7.not.i100, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i101
  %58 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %if.end9.i.cleanup_crit_edge, label %if.end17.i104

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i104:                                    ; preds = %if.end9.i
  %xor.i102 = xor i32 %56, 32
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %xor.i102, ptr %flags.i, align 4
  %call19.i103 = tail call fastcc zeroext i1 @__gate_commit(ptr noundef %ccu, ptr noundef %gate) #7
  br i1 %call19.i103, label %if.end17.i104.cleanup_crit_edge, label %__clk_gate.exit108

if.end17.i104.cleanup_crit_edge:                  ; preds = %if.end17.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__clk_gate.exit108:                               ; preds = %if.end17.i104
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i, align 4
  %xor24.i105 = xor i32 %62, 32
  store i32 %xor24.i105, ptr %flags.i, align 4
  %spec.select76 = select i1 %call38, i32 -6, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %__clk_gate.exit108, %if.end17.i104.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %do.end.i, %land.lhs.true42.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %__clk_gate.exit, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %spec.select, %if.end27.cleanup_crit_edge ], [ -6, %__clk_gate.exit ], [ %spec.select76, %__clk_gate.exit108 ], [ %spec.select, %do.end.i ], [ %spec.select, %land.lhs.true42.cleanup_crit_edge ], [ %spec.select, %if.end9.i.cleanup_crit_edge ], [ %spec.select, %if.end17.i104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @kona_peri_clk_ops, !1, !"kona_peri_clk_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1182, i32 16}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-kona.c", i32 512, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @clk_gate._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @clk_gate._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/bcm/clk-kona.c", i32 469, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__clk_gate._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @__clk_gate._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/bcm/clk-kona.c", i32 206, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ccu_wait_bit._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @__ccu_wait_bit._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1038, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1106, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @kona_peri_clk_set_parent._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @kona_peri_clk_set_parent._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1110, i32 3}
!31 = !{ptr @kona_peri_clk_set_parent._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @kona_peri_clk_set_parent._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/bcm/clk-kona.c", i32 861, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @selector_read_index._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @selector_read_index._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1171, i32 3}
!42 = !{ptr @kona_peri_clk_set_rate._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @kona_peri_clk_set_rate._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1175, i32 3}
!46 = !{ptr @kona_peri_clk_set_rate._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @kona_peri_clk_set_rate._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/bcm/clk-kona.c", i32 162, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__ccu_write_enable._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @__ccu_write_enable._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1204, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__peri_clk_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @__peri_clk_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1209, i32 3}
!60 = !{ptr @__peri_clk_init._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @__peri_clk_init._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1213, i32 3}
!64 = !{ptr @__peri_clk_init._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @__peri_clk_init._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1217, i32 3}
!68 = !{ptr @__peri_clk_init._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @__peri_clk_init._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1230, i32 3}
!72 = !{ptr @__peri_clk_init._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @__peri_clk_init._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/bcm/clk-kona.c", i32 1236, i32 3}
!76 = !{ptr @__peri_clk_init._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @__peri_clk_init._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/bcm/clk-kona.c", i32 325, i32 3}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @policy_init._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @policy_init._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/bcm/clk-kona.c", i32 348, i32 3}
!85 = !{ptr @policy_init._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @policy_init._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/bcm/clk-kona.c", i32 284, i32 3}
!89 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__ccu_policy_engine_stop._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @__ccu_policy_engine_stop._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/bcm/clk-kona.c", i32 295, i32 3}
!94 = !{ptr @__ccu_policy_engine_stop._entry.50, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @__ccu_policy_engine_stop._entry_ptr.52, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/bcm/clk-kona.c", i32 232, i32 3}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__ccu_policy_engine_start._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @__ccu_policy_engine_start._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/bcm/clk-kona.c", i32 262, i32 3}
!103 = !{ptr @__ccu_policy_engine_start._entry.55, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @__ccu_policy_engine_start._entry_ptr.57, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/bcm/clk-kona.c", i32 173, i32 3}
!107 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__ccu_write_disable._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @__ccu_write_disable._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 2152946784, i64 2152947274, i64 2152946821, i64 2152946877, i64 2152946911, i64 2152946935, i64 2152946976, i64 2152946997, i64 2152947025, i64 2152947059}
!121 = !{i64 2152948417, i64 2152948907, i64 2152948454, i64 2152948510, i64 2152948544, i64 2152948568, i64 2152948609, i64 2152948630, i64 2152948658, i64 2152948692}
!122 = !{i64 1164432, i64 1164459, i64 1164481, i64 1164509}
!123 = !{i64 1164840, i64 1164867, i64 1164900, i64 1164921, i64 1164948, i64 1164974}
!124 = !{i64 5395696}
!125 = !{i64 2152959904}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{i64 2148649976, i64 2148650256, i64 2148650590, i64 2148650924}
!128 = !{i64 2153052000, i64 2153052492, i64 2153052037, i64 2153052093, i64 2153052127, i64 2153052151, i64 2153052192, i64 2153052213, i64 2153052241, i64 2153052275}
!129 = !{i64 2153060446, i64 2153060938, i64 2153060483, i64 2153060539, i64 2153060573, i64 2153060597, i64 2153060638, i64 2153060659, i64 2153060687, i64 2153060721}
!130 = !{i8 0, i8 2}
!131 = !{i64 2152960296}
!132 = !{i64 5395278}
!133 = !{i64 2153027253, i64 2153027744, i64 2153027290, i64 2153027346, i64 2153027380, i64 2153027404, i64 2153027445, i64 2153027466, i64 2153027494, i64 2153027528}
!134 = !{i64 2152993500, i64 2152993991, i64 2152993537, i64 2152993593, i64 2152993627, i64 2152993651, i64 2152993692, i64 2152993713, i64 2152993741, i64 2152993775}
!135 = !{i64 2153083529, i64 2153084021, i64 2153083566, i64 2153083622, i64 2153083656, i64 2153083680, i64 2153083721, i64 2153083742, i64 2153083770, i64 2153083804}
!136 = !{i64 2152982754, i64 2152983245, i64 2152982791, i64 2152982847, i64 2152982881, i64 2152982905, i64 2152982946, i64 2152982967, i64 2152982995, i64 2152983029}
!137 = !{i64 2153006209, i64 2153006700, i64 2153006246, i64 2153006302, i64 2153006336, i64 2153006360, i64 2153006401, i64 2153006422, i64 2153006450, i64 2153006484}
!138 = !{i64 2153009471, i64 2153009962, i64 2153009508, i64 2153009564, i64 2153009598, i64 2153009622, i64 2153009663, i64 2153009684, i64 2153009712, i64 2153009746}
!139 = !{i64 2153030806, i64 2153031297, i64 2153030843, i64 2153030899, i64 2153030933, i64 2153030957, i64 2153030998, i64 2153031019, i64 2153031047, i64 2153031081}
!140 = !{i64 2153032500, i64 2153032991, i64 2153032537, i64 2153032593, i64 2153032627, i64 2153032651, i64 2153032692, i64 2153032713, i64 2153032741, i64 2153032775}
!141 = !{i64 2152991317, i64 2152991808, i64 2152991354, i64 2152991410, i64 2152991444, i64 2152991468, i64 2152991509, i64 2152991530, i64 2152991558, i64 2152991592}
!142 = !{i64 2152956001, i64 2152956492, i64 2152956038, i64 2152956094, i64 2152956128, i64 2152956152, i64 2152956193, i64 2152956214, i64 2152956242, i64 2152956276}
!143 = !{i64 2152957642, i64 2152958133, i64 2152957679, i64 2152957735, i64 2152957769, i64 2152957793, i64 2152957834, i64 2152957855, i64 2152957883, i64 2152957917}
