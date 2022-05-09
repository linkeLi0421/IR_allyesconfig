; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/smp_twd.c_pt.bc'
source_filename = "../arch/arm/kernel/smp_twd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_smp_twd__187_139_twd_clk_init1 = internal global ptr @twd_clk_init, section ".initcall1.init", align 4
@__of_table_arm_twd_a9 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-twd-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twd_local_timer_of_register }, section "__timer_of_table", align 4
@__of_table_arm_twd_a5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a5-twd-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twd_local_timer_of_register }, section "__timer_of_table", align 4
@__of_table_arm_twd_11mp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm11mp-twd-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twd_local_timer_of_register }, section "__timer_of_table", align 4
@__pcpu_unique_percpu_setup_called = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@percpu_setup_called = weak dso_local global i8 0, section ".data..percpu", align 1
@twd_evt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@twd_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@twd_clk_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @twd_rate_change, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@twd_timer_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@twd_ppi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@twd_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arch/arm/kernel/smp_twd.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"twd_local_timer_of_register failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twd\00", [28 x i8] zeroinitializer }, align 32
@twd_local_timer_common_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013twd: can't register interrupt %d (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"twd_local_timer_common_register\00", [32 x i8] zeroinitializer }, align 32
@twd_local_timer_common_register._entry_ptr = internal global ptr @twd_local_timer_common_register._entry, section ".printk_index", align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm/timer/twd:starting\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"always-on\00", [22 x i8] zeroinitializer }, align 32
@twd_features = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@late_time_init = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smp_twd\00", [24 x i8] zeroinitializer }, align 32
@twd_get_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013smp_twd: clock not found %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twd_get_clock\00", [18 x i8] zeroinitializer }, align 32
@twd_get_clock._entry_ptr = internal global ptr @twd_get_clock._entry, section ".printk_index", align 4
@twd_get_clock._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013smp_twd: clock failed to prepare+enable: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@twd_get_clock._entry_ptr.12 = internal global ptr @twd_get_clock._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"local_timer\00", [20 x i8] zeroinitializer }, align 32
@twd_calibrate_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Calibrating local timer... \00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twd_calibrate_rate\00", [45 x i8] zeroinitializer }, align 32
@twd_calibrate_rate._entry_ptr = internal global ptr @twd_calibrate_rate._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@twd_calibrate_rate._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c%lu.%02luMHz.\0A\00", [47 x i8] zeroinitializer }, align 32
@twd_calibrate_rate._entry_ptr.18 = internal global ptr @twd_calibrate_rate._entry.16, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"twd_evt\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 32, i32 44 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"twd_clk\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 28, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"twd_clk_nb\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 128, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"twd_timer_rate\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 29, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"twd_ppi\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 35, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"twd_base\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 26, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 335, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 282, i32 49 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 284, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 289, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 293, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"twd_features\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 33, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 199, i32 25 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 202, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 208, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 244, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 151, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [29 x i8] c"../arch/arm/kernel/smp_twd.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 175, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__initcall__kmod_smp_twd__187_139_twd_clk_init1, ptr @__of_table_arm_twd_11mp, ptr @__of_table_arm_twd_a5, ptr @__of_table_arm_twd_a9, ptr @twd_calibrate_rate._entry, ptr @twd_calibrate_rate._entry.16, ptr @twd_calibrate_rate._entry_ptr, ptr @twd_calibrate_rate._entry_ptr.18, ptr @twd_get_clock._entry, ptr @twd_get_clock._entry.10, ptr @twd_get_clock._entry_ptr, ptr @twd_get_clock._entry_ptr.12, ptr @twd_local_timer_common_register._entry, ptr @twd_local_timer_common_register._entry_ptr, ptr @twd_evt, ptr @twd_clk, ptr @twd_clk_nb, ptr @twd_timer_rate, ptr @twd_ppi, ptr @twd_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @twd_features, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_evt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_clk_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_timer_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_ppi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_local_timer_common_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_get_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_get_clock._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_calibrate_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_calibrate_rate._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_clk_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_evt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = sub i32 0, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %tobool2.not = icmp eq i32 %7, %add
  br i1 %tobool2.not, label %do.body.return_crit_edge, label %land.lhs.true3

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true3:                                   ; preds = %do.body
  %8 = load ptr, ptr @twd_clk, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true3.return_crit_edge, label %if.then

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @clk_notifier_register(ptr noundef %8, ptr noundef nonnull @twd_clk_nb) #7
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true3.return_crit_edge, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true3.return_crit_edge ], [ 0, %do.body.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_local_timer_of_register(ptr noundef %np) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #7
  store i32 %call, ptr @twd_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  store ptr %call1, ptr @twd_base, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %out

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

out:                                              ; preds = %if.end
  %call5 = tail call fastcc i32 @twd_local_timer_common_register(ptr noundef %np) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %out.if.end21_crit_edge, label %out.do.end_crit_edge, !prof !71

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

out.if.end21_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %out.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %err.035 = phi i32 [ %call5, %out.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %err.035) #7
  br label %if.end21

if.end21:                                         ; preds = %do.end, %out.if.end21_crit_edge
  %err.036 = phi i32 [ %err.035, %do.end ], [ 0, %out.if.end21_crit_edge ]
  ret i32 %err.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_rate_change(ptr nocapture noundef readnone %nb, i32 noundef %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %cmp = icmp eq i32 %flags, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @twd_update_frequency, ptr noundef %new_rate, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twd_update_frequency(ptr nocapture noundef readonly %new_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rate, align 4
  store i32 %1, ptr @twd_timer_rate, align 4
  %2 = load ptr, ptr @twd_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %call2 = tail call i32 @clockevents_update_freq(ptr noundef %10, i32 noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twd_local_timer_common_register(ptr noundef %np) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 128) #11
  store ptr %call, ptr @twd_evt, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_free_crit_edge, label %if.end

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @twd_ppi, align 4
  %call.i = tail call i32 @__request_percpu_irq(i32 noundef %0, ptr noundef nonnull @twd_handler, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i32, ptr @twd_ppi, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %call.i) #12
  br label %out_free

if.end5:                                          ; preds = %if.end
  %call.i16 = tail call i32 @__cpuhp_setup_state(i32 noundef 125, ptr noundef nonnull @.str.5, i1 noundef zeroext false, ptr noundef nonnull @twd_timer_starting_cpu, ptr noundef nonnull @twd_timer_dying_cpu, i1 noundef zeroext false) #7
  %tobool.not.i = icmp eq ptr %np, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17 = tail call ptr @of_clk_get(ptr noundef nonnull %np, i32 noundef 0) #7
  br label %if.end.i

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call ptr @clk_get_sys(ptr noundef nonnull @.str.7, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi ptr [ %call1.i, %if.else.i ], [ %call.i17, %if.then.i ]
  store ptr %storemerge.i, ptr @twd_clk, align 4
  %cmp.i.i = icmp ugt ptr %storemerge.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %storemerge.i to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %2) #12
  br label %twd_get_clock.exit

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %storemerge.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.i.do.end12.i_crit_edge

if.end6.i.do.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

if.end.i.i:                                       ; preds = %if.end6.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %storemerge.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end15.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %storemerge.i) #7
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then3.i.i, %if.end6.i.do.end12.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end6.i.do.end12.i_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph.i) #12
  %3 = load ptr, ptr @twd_clk, align 4
  tail call void @clk_put(ptr noundef %3) #7
  br label %twd_get_clock.exit

if.end15.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr @twd_clk, align 4
  %call16.i = tail call i32 @clk_get_rate(ptr noundef %4) #7
  store i32 %call16.i, ptr @twd_timer_rate, align 4
  br label %twd_get_clock.exit

twd_get_clock.exit:                               ; preds = %if.end15.i, %do.end12.i, %do.end.i
  %call.i18 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i18, null
  br i1 %tobool.i.not, label %if.then8, label %twd_get_clock.exit.if.end9_crit_edge

twd_get_clock.exit.if.end9_crit_edge:             ; preds = %twd_get_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %twd_get_clock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @twd_features, align 4
  %or = or i32 %5, 8
  store i32 %or, ptr @twd_features, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %twd_get_clock.exit.if.end9_crit_edge
  %6 = load i32, ptr @twd_timer_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @twd_timer_setup()
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @late_time_init to i32))
  store ptr @twd_timer_setup, ptr @late_time_init, align 4
  br label %cleanup

out_free:                                         ; preds = %do.end, %entry.out_free_crit_edge
  %err.0 = phi i32 [ %call.i, %do.end ], [ -12, %entry.out_free_crit_edge ]
  %7 = load ptr, ptr @twd_base, align 4
  tail call void @iounmap(ptr noundef %7) #7
  store ptr null, ptr @twd_base, align 4
  %8 = load ptr, ptr @twd_evt, align 4
  tail call void @free_percpu(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.else, %if.then11
  %retval.0 = phi i32 [ %err.0, %out_free ], [ 0, %if.else ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @twd_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 16777216) #7, !srcloc !73
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 128
  tail call void %4(ptr noundef %dev_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_timer_starting_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @twd_timer_setup()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_timer_dying_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, %1
  %8 = inttoptr i32 %add.i to ptr
  %9 = load ptr, ptr @twd_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !73
  %irq.i = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @disable_percpu_irq(i32 noundef %11) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twd_timer_setup() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %add13 = add i32 %7, ptrtoint (ptr @percpu_setup_called to i32)
  %9 = inttoptr i32 %add13 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.body14, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load ptr, ptr @twd_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !73
  tail call void @clockevents_register_device(ptr noundef %8) #7
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  br label %cleanup

do.body14:                                        ; preds = %entry
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %9, align 1
  %14 = load i32, ptr @twd_timer_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %do.end.i, label %do.body14.twd_calibrate_rate.exit_crit_edge

do.body14.twd_calibrate_rate.exit_crit_edge:      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %twd_calibrate_rate.exit

do.end.i:                                         ; preds = %do.body14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  %call1.i = tail call i64 @get_jiffies_64() #7
  %add.i = add i64 %call1.i, 1
  %call222.i = tail call i64 @get_jiffies_64() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call222.i, i64 %add.i)
  %cmp323.i = icmp ult i64 %call222.i, %add.i
  br i1 %cmp323.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.while.end.i_crit_edge

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #7
  %call2.i = tail call i64 @get_jiffies_64() #7
  %cmp3.i = icmp ult i64 %call2.i, %add.i
  br i1 %cmp3.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end.i.while.end.i_crit_edge
  %add4.i = add i64 %call1.i, 6
  %16 = load ptr, ptr @twd_base, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !73
  %17 = load ptr, ptr @twd_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -1) #7, !srcloc !73
  %call724.i = tail call i64 @get_jiffies_64() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call724.i, i64 %add4.i)
  %cmp825.i = icmp ult i64 %call724.i, %add4.i
  br i1 %cmp825.i, label %while.end.i.while.body9.i_crit_edge, label %while.end.i.while.end10.i_crit_edge

while.end.i.while.end10.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end10.i

while.end.i.while.body9.i_crit_edge:              ; preds = %while.end.i
  br label %while.body9.i

while.body9.i:                                    ; preds = %while.body9.i.while.body9.i_crit_edge, %while.end.i.while.body9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #7
  %call7.i = tail call i64 @get_jiffies_64() #7
  %cmp8.i = icmp ult i64 %call7.i, %add4.i
  br i1 %cmp8.i, label %while.body9.i.while.body9.i_crit_edge, label %while.body9.i.while.end10.i_crit_edge

while.body9.i.while.end10.i_crit_edge:            ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end10.i

while.body9.i.while.body9.i_crit_edge:            ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body9.i

while.end10.i:                                    ; preds = %while.body9.i.while.end10.i_crit_edge, %while.end.i.while.end10.i_crit_edge
  %19 = load ptr, ptr @twd_base, align 4
  %add.ptr11.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !72
  %21 = xor i32 %20, -1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %mul.i = mul i32 %22, 20
  store i32 %mul.i, ptr @twd_timer_rate, align 4
  %div.i = udiv i32 %mul.i, 1000000
  %div18.i = udiv i32 %mul.i, 10000
  %rem.i = urem i32 %div18.i, 100
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %div.i, i32 noundef %rem.i) #12
  br label %twd_calibrate_rate.exit

twd_calibrate_rate.exit:                          ; preds = %while.end10.i, %do.body14.twd_calibrate_rate.exit_crit_edge
  %23 = load ptr, ptr @twd_base, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #7, !srcloc !73
  %name = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 21
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.13, ptr %name, align 4
  %25 = load i32, ptr @twd_features, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9
  %26 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %features, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 22
  %27 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 350, ptr %rating, align 8
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 14
  %28 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @twd_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 11
  %29 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @twd_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 12
  %30 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @twd_set_oneshot, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 15
  %31 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @twd_shutdown, ptr %tick_resume, align 4
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 1
  %32 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @twd_set_next_event, ptr %set_next_event, align 4
  %33 = load i32, ptr @twd_ppi, align 4
  %irq24 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  %34 = ptrtoint ptr %irq24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %irq24, align 4
  %rem.i43 = and i32 %5, 31
  %add.i44 = add nuw nsw i32 %rem.i43, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i44
  %div3.i = lshr i32 %5, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i45 = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 25
  %35 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i45, ptr %cpumask, align 4
  %36 = load i32, ptr @twd_timer_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %8, i32 noundef %36, i32 noundef 15, i32 noundef -1) #7
  br label %cleanup

cleanup:                                          ; preds = %twd_calibrate_rate.exit, %if.then
  %irq24.sink = phi ptr [ %irq24, %twd_calibrate_rate.exit ], [ %irq, %if.then ]
  %37 = ptrtoint ptr %irq24.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq24.sink, align 4
  tail call void @enable_percpu_irq(i32 noundef %38, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_shutdown(ptr nocapture noundef readnone %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !73
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_set_periodic(ptr nocapture noundef readnone %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @twd_timer_rate, align 4
  %add = add i32 %0, 50
  %div1 = udiv i32 %add, 100
  %1 = tail call i32 @llvm.bswap.i32(i32 %div1)
  %2 = load ptr, ptr @twd_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %1) #7, !srcloc !73
  %3 = load ptr, ptr @twd_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 117440512) #7, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_set_oneshot(ptr nocapture noundef readnone %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #7, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twd_set_next_event(i32 noundef %evt, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !72
  %2 = or i32 %1, 16777216
  %3 = tail call i32 @llvm.bswap.i32(i32 %evt)
  %4 = load ptr, ptr @twd_base, align 4
  %add.ptr1 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %3) #7, !srcloc !73
  %5 = load ptr, ptr @twd_base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !73
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_smp_twd__187_139_twd_clk_init1, !1, !"__initcall__kmod_smp_twd__187_139_twd_clk_init1", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/smp_twd.c", i32 139, i32 1}
!2 = !{ptr @__of_table_arm_twd_a9, !3, !"__of_table_arm_twd_a9", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/smp_twd.c", i32 338, i32 1}
!4 = !{ptr @__of_table_arm_twd_a5, !5, !"__of_table_arm_twd_a5", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/smp_twd.c", i32 339, i32 1}
!6 = !{ptr @__of_table_arm_twd_11mp, !7, !"__of_table_arm_twd_11mp", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/smp_twd.c", i32 340, i32 1}
!8 = !{ptr @__pcpu_unique_percpu_setup_called, !9, !"__pcpu_unique_percpu_setup_called", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/smp_twd.c", i32 30, i32 8}
!10 = !{ptr @percpu_setup_called, !9, !"percpu_setup_called", i1 false, i1 false}
!11 = !{ptr @twd_evt, !12, !"twd_evt", i1 false, i1 false}
!12 = !{!"../arch/arm/kernel/smp_twd.c", i32 32, i32 44}
!13 = !{ptr @twd_clk, !14, !"twd_clk", i1 false, i1 false}
!14 = !{!"../arch/arm/kernel/smp_twd.c", i32 28, i32 20}
!15 = !{ptr @twd_clk_nb, !16, !"twd_clk_nb", i1 false, i1 false}
!16 = !{!"../arch/arm/kernel/smp_twd.c", i32 128, i32 30}
!17 = !{ptr @twd_timer_rate, !18, !"twd_timer_rate", i1 false, i1 false}
!18 = !{!"../arch/arm/kernel/smp_twd.c", i32 29, i32 22}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/kernel/smp_twd.c", i32 335, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @twd_ppi, !23, !"twd_ppi", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/smp_twd.c", i32 35, i32 12}
!24 = !{ptr @twd_base, !25, !"twd_base", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/smp_twd.c", i32 26, i32 22}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/smp_twd.c", i32 282, i32 49}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/smp_twd.c", i32 284, i32 3}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @twd_local_timer_common_register._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @twd_local_timer_common_register._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/kernel/smp_twd.c", i32 289, i32 7}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/kernel/smp_twd.c", i32 293, i32 33}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/kernel/smp_twd.c", i32 199, i32 25}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/smp_twd.c", i32 202, i32 3}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @twd_get_clock._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @twd_get_clock._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/kernel/smp_twd.c", i32 208, i32 3}
!46 = !{ptr @twd_get_clock._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @twd_get_clock._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @twd_features, !49, !"twd_features", i1 false, i1 false}
!49 = !{!"../arch/arm/kernel/smp_twd.c", i32 33, i32 21}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/kernel/smp_twd.c", i32 244, i32 14}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/kernel/smp_twd.c", i32 151, i32 3}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @twd_calibrate_rate._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @twd_calibrate_rate._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/kernel/smp_twd.c", i32 175, i32 3}
!59 = !{ptr @twd_calibrate_rate._entry.16, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @twd_calibrate_rate._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 4978060}
!73 = !{i64 4977642}
!74 = !{i8 0, i8 2}
