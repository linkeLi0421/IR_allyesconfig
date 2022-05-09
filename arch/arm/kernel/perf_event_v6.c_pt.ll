; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/perf_event_v6.c_pt.bc'
source_filename = "../arch/arm/kernel/perf_event_v6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pmu_probe_info = type { i32, i32, ptr }
%struct.arm_pmu = type { %struct.pmu, %struct.cpumask, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], [2 x i32], ptr, ptr, %struct.hlist_node, %struct.notifier_block, [5 x ptr], i64, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.perf_sample_data = type { i64, ptr, ptr, i64, %union.perf_sample_weight, i64, %union.perf_mem_data_src, i64, i64, %struct.anon.93, i64, i64, i64, %struct.anon.94, ptr, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, i64, i64, [64 x i8] }
%union.perf_sample_weight = type { i64 }
%union.perf_mem_data_src = type { i64 }
%struct.anon.93 = type { i32, i32 }
%struct.anon.94 = type { i32, i32 }
%struct.perf_regs = type { i64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.76, i64, i64, i64, %union.anon.77, i32, %union.anon.78, %union.anon.79, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.76 = type { i64 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i64 }
%union.anon.79 = type { i64 }
%struct.hw_perf_event = type { %union.anon.80, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.87, i64, i64, i64, i64 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.pmu_hw_events = type { [32 x ptr], [1 x i32], %struct.raw_spinlock, ptr, i32 }

@__initcall__kmod_perf_event_v6__250_589_armv6_pmu_driver_init6 = internal global ptr @armv6_pmu_driver_init, section ".initcall6.init", align 4
@armv6_pmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @armv6_pmu_device_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armv6_pmu_of_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"armv6-pmu\00", [22 x i8] zeroinitializer }, align 32
@armv6_pmu_of_device_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm11mpcore-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv6mpcore_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm1176-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv6_1176_pmu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm1136-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armv6_1136_pmu_init }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@armv6_pmu_probe_table = internal constant { [5 x %struct.pmu_probe_info], [36 x i8] } { [5 x %struct.pmu_probe_info] [%struct.pmu_probe_info { i32 1090564960, i32 -16711696, ptr @armv6_1136_pmu_init }, %struct.pmu_probe_info { i32 1090565472, i32 -16711696, ptr @armv6_1156_pmu_init }, %struct.pmu_probe_info { i32 1090565984, i32 -16711696, ptr @armv6_1176_pmu_init }, %struct.pmu_probe_info { i32 1090564128, i32 -16711696, ptr @armv6mpcore_pmu_init }, %struct.pmu_probe_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armv6_1136\00", [21 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@armv6_pmcr_counter_has_overflowed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/kernel/perf_event_v6.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid counter number (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@armv6pmu_enable_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@armv6pmu_disable_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@armv6pmu_read_counter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@armv6pmu_write_counter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@armv6_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 7, i32 65535, i32 65535, i32 5, i32 6, i32 65535, i32 1, i32 17, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv6_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 10, i32 11], [2 x i32] [i32 10, i32 11], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 0], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 4], [2 x i32] [i32 65535, i32 4], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 3], [2 x i32] [i32 65535, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armv6_1156\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armv6_1176\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"armv6_11mpcore\00", [17 x i8] zeroinitializer }, align 32
@armv6mpcore_pmu_disable_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@armv6mpcore_perf_map = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 255, i32 8, i32 65535, i32 65535, i32 5, i32 7, i32 65535, i32 1, i32 18, i32 65535], [56 x i8] zeroinitializer }, align 32
@armv6mpcore_perf_cache_map = internal constant { [7 x [3 x [2 x i32]]], [56 x i8] } { [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 10, i32 11], [2 x i32] [i32 12, i32 13], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 0], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 4], [2 x i32] [i32 65535, i32 4], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 3], [2 x i32] [i32 65535, i32 3], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]], [3 x [2 x i32]] [[2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535], [2 x i32] [i32 65535, i32 65535]]], [56 x i8] zeroinitializer }, align 32
@switch.table.armv6pmu_disable_event = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 33554432, i32 131072], [20 x i8] zeroinitializer }, align 32
@switch.table.armv6pmu_disable_event.8 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -65, i32 -267386897, i32 -1044513], [20 x i8] zeroinitializer }, align 32
@switch.table.armv6mpcore_pmu_disable_event = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -65, i32 -17, i32 -33], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"armv6_pmu_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 581, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 583, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"armv6_pmu_of_device_ids\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 560, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"armv6_pmu_probe_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 567, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 510, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 231, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"armv6_perf_map\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 76, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"armv6_perf_cache_map\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 86, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 517, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 524, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 544, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"armv6mpcore_perf_map\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 144, i32 23 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"armv6mpcore_perf_cache_map\00", align 1
@___asan_gen_.52 = private constant [35 x i8] c"../arch/arm/kernel/perf_event_v6.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 154, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant [36 x i8] c"switch.table.armv6pmu_disable_event\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [38 x i8] c"switch.table.armv6pmu_disable_event.8\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [43 x i8] c"switch.table.armv6mpcore_pmu_disable_event\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_perf_event_v6__250_589_armv6_pmu_driver_init6, ptr @armv6_pmu_driver, ptr @.str, ptr @armv6_pmu_of_device_ids, ptr @armv6_pmu_probe_table, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @armv6_perf_map, ptr @armv6_perf_cache_map, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @armv6mpcore_perf_map, ptr @armv6mpcore_perf_cache_map, ptr @switch.table.armv6pmu_disable_event, ptr @switch.table.armv6pmu_disable_event.8, ptr @switch.table.armv6mpcore_pmu_disable_event], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv6_pmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv6_pmu_of_device_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv6_pmu_probe_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv6_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv6_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv6mpcore_perf_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armv6mpcore_perf_cache_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.armv6pmu_disable_event to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.armv6pmu_disable_event.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.armv6mpcore_pmu_disable_event to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armv6_pmu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @armv6_pmu_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv6_pmu_device_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @arm_pmu_device_probe(ptr noundef %pdev, ptr noundef nonnull @armv6_pmu_of_device_ids, ptr noundef nonnull @armv6_pmu_probe_table) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_pmu_device_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @armv6_1136_pmu_init(ptr nocapture noundef writeonly %cpu_pmu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv6pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv6pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv6pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv6pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv6pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv6pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv6pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv6pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv6pmu_stop, ptr %stop.i, align 8
  %map_event.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %9 = ptrtoint ptr %map_event.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv6_map_event, ptr %map_event.i, align 8
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %10 = ptrtoint ptr %num_events.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %num_events.i, align 8
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.1, ptr %name, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @armv6_1156_pmu_init(ptr nocapture noundef writeonly %cpu_pmu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv6pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv6pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv6pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv6pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv6pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv6pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv6pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv6pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv6pmu_stop, ptr %stop.i, align 8
  %map_event.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %9 = ptrtoint ptr %map_event.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv6_map_event, ptr %map_event.i, align 8
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %10 = ptrtoint ptr %num_events.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %num_events.i, align 8
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.5, ptr %name, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @armv6_1176_pmu_init(ptr nocapture noundef writeonly %cpu_pmu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handle_irq.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %0 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @armv6pmu_handle_irq, ptr %handle_irq.i, align 4
  %enable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %1 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv6pmu_enable_event, ptr %enable.i, align 8
  %disable.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %2 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv6pmu_disable_event, ptr %disable.i, align 4
  %read_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %3 = ptrtoint ptr %read_counter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv6pmu_read_counter, ptr %read_counter.i, align 4
  %write_counter.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %4 = ptrtoint ptr %write_counter.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv6pmu_write_counter, ptr %write_counter.i, align 8
  %get_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %5 = ptrtoint ptr %get_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv6pmu_get_event_idx, ptr %get_event_idx.i, align 8
  %clear_event_idx.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %6 = ptrtoint ptr %clear_event_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv6pmu_clear_event_idx, ptr %clear_event_idx.i, align 4
  %start.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv6pmu_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv6pmu_stop, ptr %stop.i, align 8
  %map_event.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %9 = ptrtoint ptr %map_event.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv6_map_event, ptr %map_event.i, align 8
  %num_events.i = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %10 = ptrtoint ptr %num_events.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %num_events.i, align 8
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.6, ptr %name, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @armv6mpcore_pmu_init(ptr nocapture noundef writeonly %cpu_pmu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.7, ptr %name, align 4
  %handle_irq = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 4
  %1 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armv6pmu_handle_irq, ptr %handle_irq, align 4
  %enable = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 5
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @armv6pmu_enable_event, ptr %enable, align 8
  %disable = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  %3 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @armv6mpcore_pmu_disable_event, ptr %disable, align 4
  %read_counter = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 10
  %4 = ptrtoint ptr %read_counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armv6pmu_read_counter, ptr %read_counter, align 4
  %write_counter = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 11
  %5 = ptrtoint ptr %write_counter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @armv6pmu_write_counter, ptr %write_counter, align 8
  %get_event_idx = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 7
  %6 = ptrtoint ptr %get_event_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @armv6pmu_get_event_idx, ptr %get_event_idx, align 8
  %clear_event_idx = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 8
  %7 = ptrtoint ptr %clear_event_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @armv6pmu_clear_event_idx, ptr %clear_event_idx, align 4
  %start = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 12
  %8 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @armv6pmu_start, ptr %start, align 4
  %stop = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 13
  %9 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @armv6pmu_stop, ptr %stop, align 8
  %map_event = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 15
  %10 = ptrtoint ptr %map_event to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @armv6mpcore_map_event, ptr %map_event, align 8
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %11 = ptrtoint ptr %num_events to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %num_events, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv6pmu_handle_irq(ptr nocapture noundef readonly %cpu_pmu) #2 align 64 {
entry:
  %data = alloca %struct.perf_sample_data, align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 0", "=r"() #7, !srcloc !52
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data) #7
  %1 = call ptr @memset(ptr %data, i32 255, i32 256)
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 22
  %2 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %and.i40 = and i32 %0, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not = icmp eq i32 %and.i40, 0
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

if.end:                                           ; preds = %entry
  %add.i = add i32 %10, ptrtoint (ptr @__irq_regs to i32)
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 0", "r"(i32 %0) #7, !srcloc !53
  %num_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 17
  %15 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp44 = icmp sgt i32 %16, 0
  br i1 %cmp44, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %and7.i = and i32 %0, 512
  %and3.i = and i32 %0, 256
  %and.i41 = and i32 %0, 1024
  %period2.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 3
  %weight.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 4
  %data_src.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 6
  %txn.i = getelementptr inbounds %struct.perf_sample_data, ptr %data, i32 0, i32 5
  %disable = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %idx.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx5 = getelementptr [32 x ptr], ptr %11, i32 0, i32 %idx.045
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %19 = zext i32 %idx.045 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %idx.045, label %land.end.i [
    i32 0, label %if.end8.armv6_pmcr_counter_has_overflowed.exit_crit_edge
    i32 1, label %if.then2.i
    i32 2, label %if.then6.i
  ]

if.end8.armv6_pmcr_counter_has_overflowed.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %armv6_pmcr_counter_has_overflowed.exit

if.then2.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %armv6_pmcr_counter_has_overflowed.exit

if.then6.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %armv6_pmcr_counter_has_overflowed.exit

land.end.i:                                       ; preds = %if.end8
  %.b52.i = load i1, ptr @armv6_pmcr_counter_has_overflowed.__already_done, align 1
  br i1 %.b52.i, label %land.end.i.cleanup_crit_edge, label %if.then13.i, !prof !54

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @armv6_pmcr_counter_has_overflowed.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %idx.045) #7
  br label %cleanup

armv6_pmcr_counter_has_overflowed.exit:           ; preds = %if.then6.i, %if.then2.i, %if.end8.armv6_pmcr_counter_has_overflowed.exit_crit_edge
  %ret.0.i = phi i32 [ %and3.i, %if.then2.i ], [ %and7.i, %if.then6.i ], [ %and.i41, %if.end8.armv6_pmcr_counter_has_overflowed.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool10.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool10.not, label %armv6_pmcr_counter_has_overflowed.exit.cleanup_crit_edge, label %if.end12

armv6_pmcr_counter_has_overflowed.exit.cleanup_crit_edge: ; preds = %armv6_pmcr_counter_has_overflowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %armv6_pmcr_counter_has_overflowed.exit
  %call13 = call i64 @armpmu_event_update(ptr noundef nonnull %18) #7
  %20 = getelementptr inbounds %struct.perf_event, ptr %18, i32 0, i32 25, i32 7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %23 = call ptr @memset(ptr %data, i32 0, i32 16)
  %24 = ptrtoint ptr %period2.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %22, ptr %period2.i, align 16
  %25 = ptrtoint ptr %weight.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %weight.i, align 8
  %26 = ptrtoint ptr %data_src.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 84410401, ptr %data_src.i, align 8
  %27 = ptrtoint ptr %txn.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %txn.i, align 32
  %call14 = call i32 @armpmu_event_set_period(ptr noundef nonnull %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 @perf_event_overflow(ptr noundef nonnull %18, ptr noundef nonnull %data, ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disable, align 4
  call void %29(ptr noundef nonnull %18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %armv6_pmcr_counter_has_overflowed.exit.cleanup_crit_edge, %if.then13.i, %land.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %idx.045, 1
  %30 = ptrtoint ptr %num_events to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_events, align 8
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @irq_work_run() #7
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv6pmu_enable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %idx3 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %12 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx3, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %13, label %land.end [
    i32 0, label %entry.do.body53_crit_edge
    i32 1, label %entry.do.body53.sink.split_crit_edge
    i32 2, label %if.then8
  ]

entry.do.body53.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53.sink.split

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53.sink.split

land.end:                                         ; preds = %entry
  %.b88 = load i1, ptr @armv6pmu_enable_event.__already_done, align 1
  br i1 %.b88, label %land.end.cleanup_crit_edge, label %if.then17, !prof !54

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @armv6pmu_enable_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %13) #7
  br label %cleanup

do.body53.sink.split:                             ; preds = %if.then8, %entry.do.body53.sink.split_crit_edge
  %.sink90 = phi i32 [ 12, %if.then8 ], [ 20, %entry.do.body53.sink.split_crit_edge ]
  %.sink = phi i32 [ 32, %if.then8 ], [ 16, %entry.do.body53.sink.split_crit_edge ]
  %mask.0.ph = phi i32 [ -1044481, %if.then8 ], [ -267386881, %entry.do.body53.sink.split_crit_edge ]
  %config_base9 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %config_base9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config_base9, align 8
  %shl10 = shl i32 %16, %.sink90
  %or11 = or i32 %shl10, %.sink
  br label %do.body53

do.body53:                                        ; preds = %do.body53.sink.split, %entry.do.body53_crit_edge
  %evt.0 = phi i32 [ 64, %entry.do.body53_crit_edge ], [ %or11, %do.body53.sink.split ]
  %mask.0 = phi i32 [ -1, %entry.do.body53_crit_edge ], [ %mask.0.ph, %do.body53.sink.split ]
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %11, i32 0, i32 2
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #7
  %17 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 0", "=r"() #7, !srcloc !52
  %and = and i32 %17, %mask.0
  %or60 = or i32 %and, %evt.0
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 0", "r"(i32 %or60) #7, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call56) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %if.then17, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv6pmu_disable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx3 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b82 = load i1, ptr @armv6pmu_disable_event.__already_done, align 1
  br i1 %.b82, label %land.end.cleanup_crit_edge, label %if.then14, !prof !54

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @armv6pmu_disable_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 438, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %1) #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %9 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_events, align 4
  %13 = ptrtoint ptr %12 to i32
  %add = add i32 %8, %13
  %14 = inttoptr i32 %add to ptr
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.armv6pmu_disable_event, i32 0, i32 %1
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep83 = getelementptr inbounds [3 x i32], ptr @switch.table.armv6pmu_disable_event.8, i32 0, i32 %1
  %16 = ptrtoint ptr %switch.gep83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load84 = load i32, ptr %switch.gep83, align 4
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %14, i32 0, i32 2
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #7
  %17 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 0", "=r"() #7, !srcloc !52
  %and = and i32 %17, %switch.load84
  %or = or i32 %and, %switch.load
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 0", "r"(i32 %or) #7, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call53) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then14, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @armv6pmu_read_counter(ptr nocapture noundef readonly %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %land.end [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 2, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 1", "=r"() #7, !srcloc !55
  br label %if.end42

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 2", "=r"() #7, !srcloc !56
  br label %if.end42

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 3", "=r"() #7, !srcloc !57
  br label %if.end42

land.end:                                         ; preds = %entry
  %.b48 = load i1, ptr @armv6pmu_read_counter.__already_done, align 1
  br i1 %.b48, label %land.end.if.end42_crit_edge, label %if.then11, !prof !54

land.end.if.end42_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @armv6pmu_read_counter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %1) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then11, %land.end.if.end42_crit_edge, %if.then5, %if.then2, %if.then
  %value.0 = phi i32 [ %3, %if.then ], [ %4, %if.then2 ], [ %5, %if.then5 ], [ 0, %if.then11 ], [ 0, %land.end.if.end42_crit_edge ]
  %conv = zext i32 %value.0 to i64
  ret i64 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv6pmu_write_counter(ptr nocapture noundef readonly %event, i64 noundef %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %land.end [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 2, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 1", "r"(i64 %value) #7, !srcloc !58
  br label %if.end42

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 2", "r"(i64 %value) #7, !srcloc !59
  br label %if.end42

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 3", "r"(i64 %value) #7, !srcloc !60
  br label %if.end42

land.end:                                         ; preds = %entry
  %.b50 = load i1, ptr @armv6pmu_write_counter.__already_done, align 1
  br i1 %.b50, label %land.end.if.end42_crit_edge, label %if.then11, !prof !54

land.end.if.end42_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @armv6pmu_write_counter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 266, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %1) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then11, %land.end.if.end42_crit_edge, %if.then5, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv6pmu_get_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp eq i32 %1, 255
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.else

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %used_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink17 = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ 1, %if.else.cleanup.sink.split_crit_edge ]
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef %.sink17, ptr noundef %used_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %.16 = select i1 %tobool11.not, i32 %.sink17, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.else.cleanup_crit_edge ], [ %.16, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv6pmu_clear_event_idx(ptr noundef %cpuc, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %used_mask = getelementptr inbounds %struct.pmu_hw_events, ptr %cpuc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %used_mask) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv6pmu_start(ptr nocapture noundef readonly %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 22
  %0 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_events, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %9, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #7
  %10 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 0", "=r"() #7, !srcloc !52
  %or = or i32 %10, 1
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 0", "r"(i32 %or) #7, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv6pmu_stop(ptr nocapture noundef readonly %cpu_pmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %cpu_pmu, i32 0, i32 22
  %0 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_events, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %9, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #7
  %10 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 0", "=r"() #7, !srcloc !52
  %and = and i32 %10, -2
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 0", "r"(i32 %and) #7, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv6_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv6_perf_map, ptr noundef nonnull @armv6_perf_cache_map, i32 noundef 255) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @armpmu_event_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_event_set_period(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_overflow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_map_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armv6mpcore_pmu_disable_event(ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx3 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b82 = load i1, ptr @armv6mpcore_pmu_disable_event.__already_done, align 1
  br i1 %.b82, label %land.end.cleanup_crit_edge, label %if.then14, !prof !54

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @armv6mpcore_pmu_disable_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %1) #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %9 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmu, align 8
  %hw_events = getelementptr inbounds %struct.arm_pmu, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %hw_events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_events, align 4
  %13 = ptrtoint ptr %12 to i32
  %add = add i32 %8, %13
  %14 = inttoptr i32 %add to ptr
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.armv6mpcore_pmu_disable_event, i32 0, i32 %1
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pmu_lock = getelementptr inbounds %struct.pmu_hw_events, ptr %14, i32 0, i32 2
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pmu_lock) #7
  %16 = tail call i32 asm sideeffect "mrc   p15, 0, $0, c15, c12, 0", "=r"() #7, !srcloc !52
  %and = and i32 %16, %switch.load
  tail call void asm sideeffect "mcr   p15, 0, $0, c15, c12, 0", "r"(i32 %and) #7, !srcloc !53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pmu_lock, i32 noundef %call53) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then14, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armv6mpcore_map_event(ptr noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @armpmu_map_event(ptr noundef %event, ptr noundef nonnull @armv6mpcore_perf_map, ptr noundef nonnull @armv6mpcore_perf_cache_map, i32 noundef 255) #7
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_perf_event_v6__250_589_armv6_pmu_driver_init6, !1, !"__initcall__kmod_perf_event_v6__250_589_armv6_pmu_driver_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 589, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 583, i32 11}
!4 = !{ptr @armv6_pmu_driver, !5, !"armv6_pmu_driver", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 581, i32 31}
!6 = !{ptr @armv6_pmu_probe_table, !7, !"armv6_pmu_probe_table", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 567, i32 36}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 510, i32 19}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 231, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 289, i32 3}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 438, i32 3}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 249, i32 3}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 266, i32 3}
!24 = !{ptr @armv6_perf_map, !25, !"armv6_perf_map", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 76, i32 23}
!26 = !{ptr @armv6_perf_cache_map, !27, !"armv6_perf_cache_map", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 86, i32 23}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 517, i32 19}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 524, i32 19}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 544, i32 19}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 470, i32 3}
!36 = !{ptr @armv6mpcore_perf_map, !37, !"armv6mpcore_perf_map", i1 false, i1 false}
!37 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 144, i32 23}
!38 = !{ptr @armv6mpcore_perf_cache_map, !39, !"armv6mpcore_perf_cache_map", i1 false, i1 false}
!39 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 154, i32 23}
!40 = !{ptr @armv6_pmu_of_device_ids, !41, !"armv6_pmu_of_device_ids", i1 false, i1 false}
!41 = !{!"../arch/arm/kernel/perf_event_v6.c", i32 560, i32 34}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 7243}
!53 = !{i64 7376}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 8963}
!56 = !{i64 9063}
!57 = !{i64 9163}
!58 = !{i64 9494}
!59 = !{i64 9595}
!60 = !{i64 9696}
