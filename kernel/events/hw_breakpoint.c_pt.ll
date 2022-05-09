; ModuleID = '/llk/IR_all_yes/kernel/events/hw_breakpoint.c_pt.bc'
source_filename = "../kernel/events/hw_breakpoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_user_hw_breakpoint\22, \22a\22\09"
module asm "\09.weak\09__crc_register_user_hw_breakpoint\09\09\09\09"
module asm "\09.long\09__crc_register_user_hw_breakpoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22register_user_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_register_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+modify_user_hw_breakpoint\22, \22a\22\09"
module asm "\09.weak\09__crc_modify_user_hw_breakpoint\09\09\09\09"
module asm "\09.long\09__crc_modify_user_hw_breakpoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_modify_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22modify_user_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_modify_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_hw_breakpoint\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_hw_breakpoint\09\09\09\09"
module asm "\09.long\09__crc_unregister_hw_breakpoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_wide_hw_breakpoint\22, \22a\22\09"
module asm "\09.weak\09__crc_register_wide_hw_breakpoint\09\09\09\09"
module asm "\09.long\09__crc_register_wide_hw_breakpoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22register_wide_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_register_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_wide_hw_breakpoint\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_wide_hw_breakpoint\09\09\09\09"
module asm "\09.long\09__crc_unregister_wide_hw_breakpoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_wide_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bp_cpuinfo = type { i32, ptr, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.72, i64, i64, i64, %union.anon.73, i32, %union.anon.74, %union.anon.75, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.72 = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i64 }
%union.anon.75 = type { i64 }
%struct.hw_perf_event = type { %union.anon.76, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.83, i64, i64, i64, i64 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
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
%struct.arch_hw_breakpoint = type { i32, i32, %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl }
%struct.arch_hw_breakpoint_ctrl = type { i32 }
%struct.perf_event_context = type { ptr, %struct.raw_spinlock, %struct.mutex, %struct.list_head, %struct.perf_event_groups, %struct.perf_event_groups, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.refcount_struct, ptr, i64, i64, i64, ptr, i64, i64, i32, i32, ptr, %struct.callback_head }
%struct.perf_event_groups = type { %struct.rb_root, i64 }
%struct.rb_root = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nr_bp_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nr_bp_mutex, i64 52), ptr getelementptr (i8, ptr @nr_bp_mutex, i64 52) }, ptr @nr_bp_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_register_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_register_user_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_user_hw_breakpoint to i32), ptr @__kstrtab_register_user_hw_breakpoint, ptr @__kstrtabns_register_user_hw_breakpoint }, section "___ksymtab_gpl+register_user_hw_breakpoint", align 4
@__kstrtab_modify_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_modify_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_modify_user_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @modify_user_hw_breakpoint to i32), ptr @__kstrtab_modify_user_hw_breakpoint, ptr @__kstrtabns_modify_user_hw_breakpoint }, section "___ksymtab_gpl+modify_user_hw_breakpoint", align 4
@__kstrtab_unregister_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_hw_breakpoint to i32), ptr @__kstrtab_unregister_hw_breakpoint, ptr @__kstrtabns_unregister_hw_breakpoint }, section "___ksymtab_gpl+unregister_hw_breakpoint", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_register_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_register_wide_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_wide_hw_breakpoint to i32), ptr @__kstrtab_register_wide_hw_breakpoint, ptr @__kstrtabns_register_wide_hw_breakpoint }, section "___ksymtab_gpl+register_wide_hw_breakpoint", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_unregister_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_wide_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_wide_hw_breakpoint to i32), ptr @__kstrtab_unregister_wide_hw_breakpoint, ptr @__kstrtabns_unregister_wide_hw_breakpoint }, section "___ksymtab_gpl+unregister_wide_hw_breakpoint", align 4
@nr_slots = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@constraints_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@perf_breakpoint = internal global { %struct.pmu, [32 x i8] } { %struct.pmu { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, i32 1, i32 0, i32 0, ptr null, ptr null, ptr @hw_breakpoint_event_init, ptr null, ptr null, ptr @hw_breakpoint_add, ptr @hw_breakpoint_del, ptr @hw_breakpoint_start, ptr @hw_breakpoint_stop, ptr @hw_breakpoint_pmu_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"breakpoint\00", [21 x i8] zeroinitializer }, align 32
@hw_breakpoint_exceptions_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @hw_breakpoint_exceptions_notify, ptr null, i32 2147483647 }, [20 x i8] zeroinitializer }, align 32
@__pcpu_unique_bp_cpuinfo = dso_local local_unnamed_addr global [2 x i8] zeroinitializer, section ".discard", align 1
@bp_cpuinfo = weak dso_local global [2 x %struct.bp_cpuinfo] zeroinitializer, section ".data..percpu", align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nr_bp_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_bp_mutex\00", [20 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@bp_task_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bp_task_head, ptr @bp_task_head }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/events/hw_breakpoint.c\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 7]
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"nr_bp_mutex\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"nr_slots\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 50, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"constraints_initialized\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"perf_breakpoint\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 668, i32 19 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 700, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant [28 x i8] c"hw_breakpoint_exceptions_nb\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 607, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 69, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"bp_task_head\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 58, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [33 x i8] c"../kernel/events/hw_breakpoint.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 367, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_modify_user_hw_breakpoint, ptr @__ksymtab_register_user_hw_breakpoint, ptr @__ksymtab_register_wide_hw_breakpoint, ptr @__ksymtab_unregister_hw_breakpoint, ptr @__ksymtab_unregister_wide_hw_breakpoint, ptr @nr_bp_mutex, ptr @nr_slots, ptr @constraints_initialized, ptr @perf_breakpoint, ptr @.str, ptr @hw_breakpoint_exceptions_nb, ptr @.str.1, ptr @.str.2, ptr @bp_task_head, ptr @.str.3], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_bp_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_slots to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_breakpoint to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_breakpoint_exceptions_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bp_task_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @hw_breakpoint_weight(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_reserve_bp_slot(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_release_bp_slot(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_unregister_hw_breakpoint(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reserve_bp_slot(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nr_bp_mutex, i32 noundef 0) #10
  %bp_type = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %bp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bp_type, align 4
  %conv = zext i32 %1 to i64
  %call = tail call fastcc i32 @__reserve_bp_slot(ptr noundef %bp, i64 noundef %conv)
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__reserve_bp_slot(ptr noundef %bp, i64 noundef %bp_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @constraints_initialized, align 4
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %bp_type, ptr @__sancov_gen_cov_switch_values)
  switch i64 %bp_type, label %if.end3 [
    i64 0, label %if.end.cleanup_crit_edge
    i64 7, label %if.end.cleanup_crit_edge41
  ]

if.end.cleanup_crit_edge41:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and.i = and i64 %bp_type, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp ne i64 %and.i, 0
  %..i = zext i1 %tobool.not.i to i32
  %call4 = tail call i32 @hw_breakpoint_weight(ptr noundef %bp)
  %cpu.i.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 34
  %0 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, -1
  %rem.i.i.i = and i32 %1, 31
  %add.i.i.i = add nuw nsw i32 %rem.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i.i
  %div3.i.i.i = lshr i32 %1, 5
  %idx.neg.i.i.i = sub nsw i32 0, %div3.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 %idx.neg.i.i.i
  %retval.0.i.i = select i1 %cmp.i.i, ptr %add.ptr.i.i.i, ptr @__cpu_possible_mask
  %call141.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %retval.0.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call141.i, i32 %2)
  %cmp42.i = icmp ult i32 %call141.i, %2
  br i1 %cmp42.i, label %for.body.lr.ph.i, label %if.end3.fetch_bp_busy_slots.exit_crit_edge

if.end3.fetch_bp_busy_slots.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %fetch_bp_busy_slots.exit

for.body.lr.ph.i:                                 ; preds = %if.end3
  %add.ptr.i.i = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %..i
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  %target.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 1
  %arrayidx.i35.i = getelementptr [2 x i32], ptr @nr_slots, i32 0, i32 %..i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %slots.sroa.8.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %28, %if.end.i.for.body.i_crit_edge ]
  %slots.sroa.0.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %25, %if.end.i.for.body.i_crit_edge ]
  %call143.i = phi i32 [ %call141.i, %for.body.lr.ph.i ], [ %call1.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call143.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target.i, align 8
  %tobool.not.i26 = icmp eq ptr %10, null
  br i1 %tobool.not.i26, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %tsk_pinned1.i.i = getelementptr inbounds %struct.bp_cpuinfo, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %tsk_pinned1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tsk_pinned1.i.i, align 4
  %13 = ptrtoint ptr %arrayidx.i35.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i35.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then.i
  %i.0.in.i.i = phi i32 [ %14, %if.then.i ], [ %i.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = add i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i)
  %cmp.i36.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i36.i, label %for.body.i.i, label %for.cond.i.i.if.end.i_crit_edge

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx2.i.i = getelementptr i32, ptr %12, i32 %i.0.i.i
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i.i, align 4
  %cmp3.not.i.i = icmp eq i32 %16, 0
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.else.i:                                        ; preds = %for.body.i
  %.pn27.i.i = load ptr, ptr @bp_task_head, align 4
  %cmp.not29.i.i = icmp eq ptr %.pn27.i.i, @bp_task_head
  br i1 %cmp.not29.i.i, label %if.else.i.if.end.i_crit_edge, label %if.else.i.for.body.i38.i_crit_edge

if.else.i.for.body.i38.i_crit_edge:               ; preds = %if.else.i
  br label %for.body.i38.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i38.i:                                   ; preds = %for.inc.i.i.for.body.i38.i_crit_edge, %if.else.i.for.body.i38.i_crit_edge
  %.pn31.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i38.i_crit_edge ], [ %.pn27.i.i, %if.else.i.for.body.i38.i_crit_edge ]
  %count.030.i.i = phi i32 [ %count.1.i.i, %for.inc.i.i.for.body.i38.i_crit_edge ], [ 0, %if.else.i.for.body.i38.i_crit_edge ]
  %iter.032.i.i = getelementptr i8, ptr %.pn31.i.i, i32 -296
  %target3.i.i = getelementptr i8, ptr %.pn31.i.i, i32 72
  %17 = ptrtoint ptr %target3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %target3.i.i, align 8
  %cmp4.i.i = icmp eq ptr %18, %10
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i38.i.for.inc.i.i_crit_edge

for.body.i38.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i38.i
  %bp_type.i.i = getelementptr i8, ptr %.pn31.i.i, i32 -100
  %19 = ptrtoint ptr %bp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bp_type.i.i, align 4
  %21 = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  %cmp5.i.i = xor i1 %tobool.not.i, %tobool.not.i.i.i
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %cpu8.i.i = getelementptr i8, ptr %.pn31.i.i, i32 284
  %22 = ptrtoint ptr %cpu8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.i.i = icmp slt i32 %23, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call143.i)
  %cmp12.i.i = icmp eq i32 %23, %call143.i
  %or.cond.i.i = or i1 %cmp9.i.i, %cmp12.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i.i = tail call i32 @hw_breakpoint_weight(ptr noundef %iter.032.i.i) #10
  %add.i39.i = add i32 %call14.i.i, %count.030.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i38.i.for.inc.i.i_crit_edge
  %count.1.i.i = phi i32 [ %add.i39.i, %if.then.i.i ], [ %count.030.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %count.030.i.i, %for.body.i38.i.for.inc.i.i_crit_edge ], [ %count.030.i.i, %land.lhs.true7.i.i.for.inc.i.i_crit_edge ]
  %24 = ptrtoint ptr %.pn31.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i.i = load ptr, ptr %.pn31.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @bp_task_head
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i38.i_crit_edge

for.inc.i.i.for.body.i38.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i38.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge, %for.body.i.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  %call4.pn.i = phi i32 [ 0, %if.else.i.if.end.i_crit_edge ], [ %i.0.in.i.i, %for.body.i.i.if.end.i_crit_edge ], [ 0, %for.cond.i.i.if.end.i_crit_edge ], [ %count.1.i.i, %for.inc.i.i.if.end.i_crit_edge ]
  %nr.0.i = add i32 %call4.pn.i, %8
  %25 = tail call i32 @llvm.umax.i32(i32 %nr.0.i, i32 %slots.sroa.0.0)
  %flexible.i = getelementptr inbounds %struct.bp_cpuinfo, ptr %6, i32 0, i32 2
  %26 = ptrtoint ptr %flexible.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flexible.i, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %slots.sroa.8.0)
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call143.i, ptr noundef %retval.0.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call1.i, %29
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %fetch_bp_busy_slots.exit.loopexit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fetch_bp_busy_slots.exit.loopexit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %phi.cmp = icmp ne i32 %28, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %fetch_bp_busy_slots.exit

fetch_bp_busy_slots.exit:                         ; preds = %fetch_bp_busy_slots.exit.loopexit, %if.end3.fetch_bp_busy_slots.exit_crit_edge
  %slots.sroa.8.2 = phi i32 [ 0, %if.end3.fetch_bp_busy_slots.exit_crit_edge ], [ %phi.cast, %fetch_bp_busy_slots.exit.loopexit ]
  %slots.sroa.0.2 = phi i32 [ 0, %if.end3.fetch_bp_busy_slots.exit_crit_edge ], [ %25, %fetch_bp_busy_slots.exit.loopexit ]
  %add.i = add i32 %slots.sroa.0.2, %call4
  %add = add i32 %add.i, %slots.sroa.8.2
  %arrayidx = getelementptr [2 x i32], ptr @nr_slots, i32 0, i32 %..i
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp7 = icmp ugt i32 %add, %31
  br i1 %cmp7, label %fetch_bp_busy_slots.exit.cleanup_crit_edge, label %if.end9

fetch_bp_busy_slots.exit.cleanup_crit_edge:       ; preds = %fetch_bp_busy_slots.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %fetch_bp_busy_slots.exit
  %call10 = tail call i32 @arch_reserve_bp_slot(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @toggle_bp_slot(ptr noundef %bp, i1 noundef zeroext true, i32 noundef %..i, i32 noundef %call4)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %fetch_bp_busy_slots.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge41 ], [ -28, %fetch_bp_busy_slots.exit.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_bp_slot(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nr_bp_mutex, i32 noundef 0) #10
  tail call void @arch_unregister_hw_breakpoint(ptr noundef %bp)
  %bp_type = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %bp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bp_type, align 4
  tail call void @arch_release_bp_slot(ptr noundef %bp) #10
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp ne i32 %2, 0
  %..i.i = zext i1 %tobool.not.i.i to i32
  %call1.i = tail call i32 @hw_breakpoint_weight(ptr noundef %bp) #10
  tail call fastcc void @toggle_bp_slot(ptr noundef %bp, i1 noundef zeroext false, i32 noundef %..i.i, i32 noundef %call1.i) #10
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_reserve_bp_slot(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @nr_bp_mutex) #10
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bp_type = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %bp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bp_type, align 4
  %conv = zext i32 %1 to i64
  %call1 = tail call fastcc i32 @__reserve_bp_slot(ptr noundef %bp, i64 noundef %conv)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_release_bp_slot(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @nr_bp_mutex) #10
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bp_type = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %bp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bp_type, align 4
  tail call void @arch_release_bp_slot(ptr noundef %bp) #10
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp ne i32 %2, 0
  %..i.i = zext i1 %tobool.not.i.i to i32
  %call1.i = tail call i32 @hw_breakpoint_weight(ptr noundef %bp) #10
  tail call fastcc void @toggle_bp_slot(ptr noundef %bp, i1 noundef zeroext false, i32 noundef %..i.i, i32 noundef %call1.i) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_perf_hw_breakpoint(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %hw = alloca %struct.arch_hw_breakpoint, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hw) #10
  %0 = call ptr @memset(ptr %hw, i32 0, i32 16)
  tail call void @mutex_lock_nested(ptr noundef nonnull @nr_bp_mutex, i32 noundef 0) #10
  %bp_type.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 8
  %1 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bp_type.i, align 4
  %conv.i = zext i32 %2 to i64
  %call.i = tail call fastcc i32 @__reserve_bp_slot(ptr noundef %bp, i64 noundef %conv.i) #10
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %attr = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21
  %call.i14 = call i32 @hw_breakpoint_arch_parse(ptr noundef %bp, ptr noundef %attr, ptr noundef nonnull %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @arch_check_bp_in_kernelspace(ptr noundef nonnull %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  %exclude_kernel.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 6
  %3 = ptrtoint ptr %exclude_kernel.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %bf.load.i = load i64, ptr %exclude_kernel.i, align 8
  %4 = and i64 %bf.load.i, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool4.not.i = icmp eq i64 %4, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then3.i.if.then3_crit_edge

if.then3.i.if.then3_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end6.i:                                        ; preds = %if.then3.i
  %call7.i = call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call7.i, label %if.end6.i.if.end4_crit_edge, label %if.end6.i.if.then3_crit_edge

if.end6.i.if.then3_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end6.i.if.end4_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end6.i.if.then3_crit_edge, %if.then3.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ -1, %if.end6.i.if.then3_crit_edge ], [ -22, %if.then3.i.if.then3_crit_edge ], [ %call.i14, %if.end.if.then3_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @nr_bp_mutex, i32 noundef 0) #10
  call void @arch_unregister_hw_breakpoint(ptr noundef %bp) #10
  %5 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bp_type.i, align 4
  call void @arch_release_bp_slot(ptr noundef %bp) #10
  %7 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp ne i32 %7, 0
  %..i.i.i = zext i1 %tobool.not.i.i.i to i32
  %call1.i.i = call i32 @hw_breakpoint_weight(ptr noundef %bp) #10
  call fastcc void @toggle_bp_slot(ptr noundef %bp, i1 noundef zeroext false, i32 noundef %..i.i.i, i32 noundef %call1.i.i) #10
  call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end6.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %hw5 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25
  %8 = call ptr @memcpy(ptr %hw5, ptr %hw, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then3 ], [ 0, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hw) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_user_hw_breakpoint(ptr noundef %attr, ptr noundef %triggered, ptr noundef %context, ptr noundef %tsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @perf_event_create_kernel_counter(ptr noundef %attr, i32 noundef -1, ptr noundef %tsk, ptr noundef %triggered, ptr noundef %context) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_event_create_kernel_counter(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @modify_user_hw_breakpoint_check(ptr noundef %bp, ptr noundef %attr, i1 noundef zeroext %check) local_unnamed_addr #0 align 64 {
entry:
  %hw = alloca %struct.arch_hw_breakpoint, align 4
  %old_attr = alloca %struct.perf_event_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hw) #10
  %0 = call ptr @memset(ptr %hw, i32 0, i32 16)
  %call.i = call i32 @hw_breakpoint_arch_parse(ptr noundef %bp, ptr noundef %attr, ptr noundef nonnull %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @arch_check_bp_in_kernelspace(ptr noundef nonnull %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  %exclude_kernel.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 6
  %1 = ptrtoint ptr %exclude_kernel.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %bf.load.i = load i64, ptr %exclude_kernel.i, align 8
  %2 = and i64 %bf.load.i, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool4.not.i = icmp eq i64 %2, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then3.i.cleanup23_crit_edge

if.then3.i.cleanup23_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.end6.i:                                        ; preds = %if.then3.i
  %call7.i = call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call7.i, label %if.end6.i.if.end_crit_edge, label %if.end6.i.cleanup23_crit_edge

if.end6.i.cleanup23_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.end6.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  br i1 %check, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %old_attr) #10
  %attr3 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21
  %3 = call ptr @memcpy(ptr %old_attr, ptr %attr3, i32 128)
  %4 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds %struct.perf_event_attr, ptr %old_attr, i32 0, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %6, ptr %7, align 8
  %bp_type.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 8
  %9 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bp_type.i, align 4
  %bp_type1.i = getelementptr inbounds %struct.perf_event_attr, ptr %old_attr, i32 0, i32 8
  %11 = ptrtoint ptr %bp_type1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bp_type1.i, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %15 = getelementptr inbounds %struct.perf_event_attr, ptr %old_attr, i32 0, i32 10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %14, ptr %15, align 8
  %disabled.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 6
  %17 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %bf.load.i40 = load i64, ptr %disabled.i, align 8
  %bf.lshr.i = and i64 %bf.load.i40, -9223372036854775808
  %disabled2.i = getelementptr inbounds %struct.perf_event_attr, ptr %old_attr, i32 0, i32 6
  %18 = ptrtoint ptr %disabled2.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %bf.load3.i = load i64, ptr %disabled2.i, align 8
  %bf.clear.i = and i64 %bf.load3.i, 9223372036854775807
  %bf.set.i = or i64 %bf.clear.i, %bf.lshr.i
  store i64 %bf.set.i, ptr %disabled2.i, align 8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %old_attr, ptr noundef dereferenceable(128) %attr, i32 128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %old_attr) #10
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup23_crit_edge

if.then2.cleanup23_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %bp_type = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 8
  %19 = ptrtoint ptr %bp_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bp_type, align 4
  %bp_type10 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 8
  %21 = ptrtoint ptr %bp_type10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bp_type10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not = icmp eq i32 %20, %22
  br i1 %cmp.not, label %if.end8.if.end20_crit_edge, label %if.then11

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then11:                                        ; preds = %if.end8
  %conv = zext i32 %20 to i64
  %conv15 = zext i32 %22 to i64
  call void @mutex_lock_nested(ptr noundef nonnull @nr_bp_mutex, i32 noundef 0) #10
  call void @arch_release_bp_slot(ptr noundef %bp) #10
  %and.i.i.i.i = and i64 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp ne i64 %and.i.i.i.i, 0
  %..i.i.i.i = zext i1 %tobool.not.i.i.i.i to i32
  %call1.i.i.i = call i32 @hw_breakpoint_weight(ptr noundef %bp) #10
  call fastcc void @toggle_bp_slot(ptr noundef %bp, i1 noundef zeroext false, i32 noundef %..i.i.i.i, i32 noundef %call1.i.i.i) #10
  %call.i.i = call fastcc i32 @__reserve_bp_slot(ptr noundef %bp, i64 noundef %conv15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %modify_bp_slot.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then11
  %call1.i.i = call fastcc i32 @__reserve_bp_slot(ptr noundef %bp, i64 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.modify_bp_slot.exit.thread_crit_edge, label %do.end.i.i, !prof !41

if.then.i.i.modify_bp_slot.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %modify_bp_slot.exit.thread

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 367, i32 noundef 9, ptr noundef null) #10
  br label %modify_bp_slot.exit.thread

modify_bp_slot.exit.thread:                       ; preds = %do.end.i.i, %if.then.i.i.modify_bp_slot.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #10
  br label %cleanup23

modify_bp_slot.exit:                              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #10
  br label %if.end20

if.end20:                                         ; preds = %modify_bp_slot.exit, %if.end8.if.end20_crit_edge
  %23 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %23, align 8
  %26 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 9
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %25, ptr %26, align 8
  %28 = ptrtoint ptr %bp_type10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bp_type10, align 4
  %30 = ptrtoint ptr %bp_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %bp_type, align 4
  %31 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 10
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %34 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 10
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %33, ptr %34, align 8
  %disabled.i43 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 6
  %36 = ptrtoint ptr %disabled.i43 to i32
  call void @__asan_load8_noabort(i32 %36)
  %bf.load.i44 = load i64, ptr %disabled.i43, align 8
  %bf.lshr.i45 = and i64 %bf.load.i44, -9223372036854775808
  %disabled2.i46 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 6
  %37 = ptrtoint ptr %disabled2.i46 to i32
  call void @__asan_load8_noabort(i32 %37)
  %bf.load3.i47 = load i64, ptr %disabled2.i46, align 8
  %bf.clear.i48 = and i64 %bf.load3.i47, 9223372036854775807
  %bf.set.i49 = or i64 %bf.clear.i48, %bf.lshr.i45
  store i64 %bf.set.i49, ptr %disabled2.i46, align 8
  %hw22 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25
  %38 = call ptr @memcpy(ptr %hw22, ptr %hw, i32 16)
  br label %cleanup23

cleanup23:                                        ; preds = %if.end20, %modify_bp_slot.exit.thread, %if.then2.cleanup23_crit_edge, %if.end6.i.cleanup23_crit_edge, %if.then3.i.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.1 = phi i32 [ 0, %if.end20 ], [ -22, %if.then2.cleanup23_crit_edge ], [ %call.i.i, %modify_bp_slot.exit.thread ], [ -1, %if.end6.i.cleanup23_crit_edge ], [ -22, %if.then3.i.cleanup23_crit_edge ], [ %call.i, %entry.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hw) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @modify_user_hw_breakpoint(ptr noundef %bp, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !42
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 26
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 8
  %tobool10.not = icmp eq ptr %2, null
  br i1 %tobool10.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true
  %task = getelementptr inbounds %struct.perf_event_context, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !31) #10
  %and.i28 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i28 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task14, align 8
  %cmp15 = icmp eq ptr %4, %8
  br i1 %cmp15, label %if.then, label %land.lhs.true11.if.else_crit_edge

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @perf_event_disable_local(ptr noundef %bp) #10
  br label %if.end

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @perf_event_disable(ptr noundef %bp) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call17 = tail call i32 @modify_user_hw_breakpoint_check(ptr noundef %bp, ptr noundef %attr, i1 noundef zeroext false)
  %disabled = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 6
  %9 = ptrtoint ptr %disabled to i32
  call void @__asan_load8_noabort(i32 %9)
  %bf.load = load i64, ptr %disabled, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool19.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool19.not, label %if.then20, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @perf_event_enable(ptr noundef %bp) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  ret i32 %call17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_disable_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_hw_breakpoint(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @perf_event_release_kernel(ptr noundef nonnull %bp) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_release_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_wide_hw_breakpoint(ptr noundef %attr, ptr noundef %triggered, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cpus_read_lock() #10
  %call230 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call230, i32 %0)
  %cmp31 = icmp ult i32 %call230, %0
  br i1 %cmp31, label %for.body.lr.ph, label %if.end.for.end.thread_crit_edge

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  br label %for.body

for.end.thread:                                   ; preds = %if.end7.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  tail call void @cpus_read_unlock() #10
  br label %cleanup

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %call232 = phi i32 [ %call230, %for.body.lr.ph ], [ %call2, %if.end7.for.body_crit_edge ]
  %call3 = tail call ptr @perf_event_create_kernel_counter(ptr noundef %attr, i32 noundef %call232, ptr noundef null, ptr noundef %triggered, ptr noundef %context) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end, label %if.end7

if.end7:                                          ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call232
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %4, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call232, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %6
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end.thread_crit_edge

if.end7.for.end.thread_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cpus_read_unlock() #10
  tail call void @unregister_wide_hw_breakpoint(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %for.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call, %for.end.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_wide_hw_breakpoint(ptr noundef %cpu_events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %0)
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %1 = ptrtoint ptr %cpu_events to i32
  br label %do.body

do.body:                                          ; preds = %unregister_hw_breakpoint.exit.do.body_crit_edge, %do.body.lr.ph
  %call7 = phi i32 [ %call5, %do.body.lr.ph ], [ %call, %unregister_hw_breakpoint.exit.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.unregister_hw_breakpoint.exit_crit_edge, label %if.end.i

do.body.unregister_hw_breakpoint.exit_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_hw_breakpoint.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @perf_event_release_kernel(ptr noundef nonnull %6) #10
  br label %unregister_hw_breakpoint.exit

unregister_hw_breakpoint.exit:                    ; preds = %if.end.i, %do.body.unregister_hw_breakpoint.exit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call7, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %unregister_hw_breakpoint.exit.do.body_crit_edge, label %unregister_hw_breakpoint.exit.for.end_crit_edge

unregister_hw_breakpoint.exit.for.end_crit_edge:  ; preds = %unregister_hw_breakpoint.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

unregister_hw_breakpoint.exit.do.body_crit_edge:  ; preds = %unregister_hw_breakpoint.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %unregister_hw_breakpoint.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @free_percpu(ptr noundef %cpu_events) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_hw_breakpoint() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_breakpoint_slots(i32 noundef 0) #10
  store i32 %call, ptr @nr_slots, align 4
  %call.c = tail call i32 @hw_breakpoint_slots(i32 noundef 1) #10
  store i32 %call.c, ptr getelementptr inbounds ([2 x i32], ptr @nr_slots, i32 0, i32 1), align 4
  %call263 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call263, i32 %0)
  %cmp364 = icmp ult i32 %call263, %0
  br i1 %cmp364, label %entry.for.cond5.preheader_crit_edge, label %entry.for.end15_crit_edge

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  br label %for.cond5.preheader

for.cond1.loopexit:                               ; preds = %for.inc12
  %call2 = tail call i32 @cpumask_next(i32 noundef %call265, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call2, %1
  br i1 %cmp3, label %for.cond1.loopexit.for.cond5.preheader_crit_edge, label %for.cond1.loopexit.for.end15_crit_edge

for.cond1.loopexit.for.end15_crit_edge:           ; preds = %for.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end15

for.cond1.loopexit.for.cond5.preheader_crit_edge: ; preds = %for.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond1.loopexit.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %call265 = phi i32 [ %call2, %for.cond1.loopexit.for.cond5.preheader_crit_edge ], [ %call263, %entry.for.cond5.preheader_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call265
  br label %for.body7

for.body7:                                        ; preds = %for.inc12.for.body7_crit_edge, %for.cond5.preheader
  %cmp6 = phi i1 [ true, %for.cond5.preheader ], [ false, %for.inc12.for.body7_crit_edge ]
  %i.162 = phi i32 [ 0, %for.cond5.preheader ], [ 1, %for.inc12.for.body7_crit_edge ]
  %add.ptr.i = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %i.162
  %2 = ptrtoint ptr %add.ptr.i to i32
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %4, %2
  %arrayidx9 = getelementptr [2 x i32], ptr @nr_slots, i32 0, i32 %i.162
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx9, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #10
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread68, label %if.end7.i.i, !prof !43

kcalloc.exit.thread68:                            ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = inttoptr i32 %add.i to ptr
  %tsk_pinned70 = getelementptr inbounds %struct.bp_cpuinfo, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tsk_pinned70 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tsk_pinned70, align 4
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %if.end7.i.i.for.cond18.preheader_crit_edge, %kcalloc.exit.thread68
  br label %for.cond18

if.end7.i.i:                                      ; preds = %for.body7
  %11 = extractvalue { i32, i1 } %7, 0
  %12 = inttoptr i32 %add.i to ptr
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #15
  %tsk_pinned = getelementptr inbounds %struct.bp_cpuinfo, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %tsk_pinned to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %tsk_pinned, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.for.cond18.preheader_crit_edge, label %for.inc12

if.end7.i.i.for.cond18.preheader_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond18.preheader

for.inc12:                                        ; preds = %if.end7.i.i
  br i1 %cmp6, label %for.inc12.for.body7_crit_edge, label %for.cond1.loopexit

for.inc12.for.body7_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.end15:                                        ; preds = %for.cond1.loopexit.for.end15_crit_edge, %entry.for.end15_crit_edge
  store i1 true, ptr @constraints_initialized, align 4
  %call16 = tail call i32 @perf_pmu_register(ptr noundef nonnull @perf_breakpoint, ptr noundef nonnull @.str, i32 noundef 5) #10
  %call17 = tail call i32 @register_die_notifier(ptr noundef nonnull @hw_breakpoint_exceptions_nb) #10
  br label %cleanup34

for.cond18:                                       ; preds = %for.cond22.preheader.for.cond18_crit_edge, %for.cond18.preheader
  %err_cpu.0 = phi i32 [ %call19, %for.cond22.preheader.for.cond18_crit_edge ], [ -1, %for.cond18.preheader ]
  %call19 = tail call i32 @cpumask_next(i32 noundef %err_cpu.0, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %14)
  %cmp20 = icmp ult i32 %call19, %14
  br i1 %cmp20, label %for.cond22.preheader, label %for.cond18.cleanup34_crit_edge

for.cond18.cleanup34_crit_edge:                   ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.cond22.preheader:                             ; preds = %for.cond18
  %arrayidx.i55 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19
  %15 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i55, align 4
  %add.i56 = add i32 %16, ptrtoint (ptr @bp_cpuinfo to i32)
  %17 = inttoptr i32 %add.i56 to ptr
  %tsk_pinned26 = getelementptr inbounds %struct.bp_cpuinfo, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tsk_pinned26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tsk_pinned26, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i55, align 4
  %add.i56.c = add i32 %21, ptrtoint (ptr getelementptr inbounds ([2 x %struct.bp_cpuinfo], ptr @bp_cpuinfo, i32 0, i32 1) to i32)
  %22 = inttoptr i32 %add.i56.c to ptr
  %tsk_pinned26.c = getelementptr inbounds %struct.bp_cpuinfo, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %tsk_pinned26.c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tsk_pinned26.c, align 4
  tail call void @kfree(ptr noundef %24) #10
  %cmp30 = icmp eq i32 %call19, %call265
  br i1 %cmp30, label %for.cond22.preheader.cleanup34_crit_edge, label %for.cond22.preheader.for.cond18_crit_edge

for.cond22.preheader.for.cond18_crit_edge:        ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond18

for.cond22.preheader.cleanup34_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

cleanup34:                                        ; preds = %for.cond22.preheader.cleanup34_crit_edge, %for.cond18.cleanup34_crit_edge, %for.end15
  %retval.0 = phi i32 [ %call17, %for.end15 ], [ -12, %for.cond22.preheader.cleanup34_crit_edge ], [ -12, %for.cond18.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_slots(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @toggle_bp_slot(ptr noundef %bp, i1 noundef zeroext %enable, i32 noundef %type, i32 noundef %weight) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 34
  %0 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp sgt i32 %1, -1
  %rem.i.i = and i32 %1, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %1, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %retval.0.i = select i1 %cmp.i, ptr %add.ptr.i.i, ptr @__cpu_possible_mask
  %sub = sub i32 0, %weight
  %spec.select = select i1 %enable, i32 %weight, i32 %sub
  %target = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call632 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %retval.0.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call632, i32 %4)
  %cmp33 = icmp ult i32 %call632, %4
  br i1 %cmp33, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr.i.i25 = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %type
  %5 = ptrtoint ptr %add.ptr.i.i25 to i32
  br label %for.body

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %type
  %6 = ptrtoint ptr %add.ptr.i to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, %spec.select
  store i32 %add, ptr %9, align 4
  br label %cleanup

for.body:                                         ; preds = %toggle_bp_task_slot.exit.for.body_crit_edge, %for.body.lr.ph
  %call634 = phi i32 [ %call632, %for.body.lr.ph ], [ %call6, %toggle_bp_task_slot.exit.for.body_crit_edge ]
  %arrayidx.i.i26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call634
  %12 = ptrtoint ptr %arrayidx.i.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i26, align 4
  %add.i.i27 = add i32 %13, %5
  %14 = inttoptr i32 %add.i.i27 to ptr
  %tsk_pinned1.i = getelementptr inbounds %struct.bp_cpuinfo, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tsk_pinned1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tsk_pinned1.i, align 4
  %17 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %target, align 8
  %.pn27.i.i = load ptr, ptr @bp_task_head, align 4
  %cmp.not29.i.i = icmp eq ptr %.pn27.i.i, @bp_task_head
  br i1 %cmp.not29.i.i, label %for.body.if.end.i_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn31.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn27.i.i, %for.body.for.body.i.i_crit_edge ]
  %count.030.i.i = phi i32 [ %count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.for.body.i.i_crit_edge ]
  %iter.032.i.i = getelementptr i8, ptr %.pn31.i.i, i32 -296
  %target3.i.i = getelementptr i8, ptr %.pn31.i.i, i32 72
  %19 = ptrtoint ptr %target3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %target3.i.i, align 8
  %cmp4.i.i = icmp eq ptr %20, %18
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %bp_type.i.i = getelementptr i8, ptr %.pn31.i.i, i32 -100
  %21 = ptrtoint ptr %bp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bp_type.i.i, align 4
  %23 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i = icmp ne i32 %23, 0
  %..i.i.i = zext i1 %tobool.not.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %..i.i.i, i32 %type)
  %cmp5.i.i = icmp eq i32 %..i.i.i, %type
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %cpu8.i.i = getelementptr i8, ptr %.pn31.i.i, i32 284
  %24 = ptrtoint ptr %cpu8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp9.i.i = icmp slt i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %call634)
  %cmp12.i.i = icmp eq i32 %25, %call634
  %or.cond.i.i = or i1 %cmp9.i.i, %cmp12.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i.i = tail call i32 @hw_breakpoint_weight(ptr noundef %iter.032.i.i) #10
  %add.i13.i = add i32 %call14.i.i, %count.030.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %count.1.i.i = phi i32 [ %add.i13.i, %if.then.i.i ], [ %count.030.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %count.030.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %count.030.i.i, %land.lhs.true7.i.i.for.inc.i.i_crit_edge ]
  %26 = ptrtoint ptr %.pn31.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i.i = load ptr, ptr %.pn31.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @bp_task_head
  br i1 %cmp.not.i.i, label %task_bp_pinned.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

task_bp_pinned.exit.i:                            ; preds = %for.inc.i.i
  %sub.i = add i32 %count.1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i28 = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i28, label %if.then.i, label %task_bp_pinned.exit.i.if.end.i_crit_edge

task_bp_pinned.exit.i.if.end.i_crit_edge:         ; preds = %task_bp_pinned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %task_bp_pinned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i29 = getelementptr i32, ptr %16, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i29, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %arrayidx.i29, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %task_bp_pinned.exit.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %.pn.i = phi i32 [ %sub.i, %if.then.i ], [ %sub.i, %task_bp_pinned.exit.i.if.end.i_crit_edge ], [ -1, %for.body.if.end.i_crit_edge ]
  %add18.i = add i32 %.pn.i, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add18.i)
  %cmp3.i = icmp sgt i32 %add18.i, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.toggle_bp_task_slot.exit_crit_edge

if.end.i.toggle_bp_task_slot.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bp_task_slot.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr i32, ptr %16, i32 %add18.i
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %arrayidx5.i, align 4
  br label %toggle_bp_task_slot.exit

toggle_bp_task_slot.exit:                         ; preds = %if.then4.i, %if.end.i.toggle_bp_task_slot.exit_crit_edge
  %call6 = tail call i32 @cpumask_next(i32 noundef %call634, ptr noundef %retval.0.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %31
  br i1 %cmp, label %toggle_bp_task_slot.exit.for.body_crit_edge, label %toggle_bp_task_slot.exit.for.end_crit_edge

toggle_bp_task_slot.exit.for.end_crit_edge:       ; preds = %toggle_bp_task_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

toggle_bp_task_slot.exit.for.body_crit_edge:      ; preds = %toggle_bp_task_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %toggle_bp_task_slot.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bp_list = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 2
  br i1 %enable, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  %32 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bp_task_head, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bp_list, ptr noundef %32, ptr noundef nonnull @bp_task_head) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %bp_list, ptr getelementptr inbounds (%struct.list_head, ptr @bp_task_head, i32 0, i32 1), align 4
  %33 = ptrtoint ptr %bp_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bp_task_head, ptr %bp_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 3
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %bp_list, ptr %32, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end
  %call.i.i30 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bp_list) #10
  br i1 %call.i.i30, label %if.end.i.i31, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i31:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %bp_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bp_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i31, %if.else.list_del.exit_crit_edge
  %42 = ptrtoint ptr %bp_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %bp_list, align 4
  %prev.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end.i.i, %if.then8.cleanup_crit_edge, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_arch_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_check_bp_in_kernelspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_breakpoint_event_init(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.not = icmp eq i32 %1, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sample_type.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 4
  %2 = ptrtoint ptr %sample_type.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sample_type.i, align 8
  %and.i = and i64 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @register_perf_hw_breakpoint(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %destroy = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 55
  %4 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bp_perf_event_destroy, ptr %destroy, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -2, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_breakpoint_add(ptr noundef %bp, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.i.not = icmp eq i64 %3, 0
  br i1 %cmp.i.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sample_period = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 6
  %4 = ptrtoint ptr %sample_period to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sample_period, align 8
  %6 = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %5, ptr %6, align 8
  %call4 = tail call i64 @perf_swevent_set_period(ptr noundef %bp) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @arch_install_hw_breakpoint(ptr noundef %bp) #10
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_breakpoint_del(ptr noundef %bp, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @arch_uninstall_hw_breakpoint(ptr noundef %bp) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @hw_breakpoint_start(ptr nocapture noundef writeonly %bp, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @hw_breakpoint_stop(ptr nocapture noundef writeonly %bp, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_breakpoint_pmu_read(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bp_perf_event_destroy(ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nr_bp_mutex, i32 noundef 0) #10
  tail call void @arch_unregister_hw_breakpoint(ptr noundef %event) #10
  %bp_type.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bp_type.i, align 4
  tail call void @arch_release_bp_slot(ptr noundef %event) #10
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp ne i32 %2, 0
  %..i.i.i = zext i1 %tobool.not.i.i.i to i32
  %call1.i.i = tail call i32 @hw_breakpoint_weight(ptr noundef %event) #10
  tail call fastcc void @toggle_bp_slot(ptr noundef %event, i1 noundef zeroext false, i32 noundef %..i.i.i, i32 noundef %call1.i.i) #10
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @perf_swevent_set_period(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_install_hw_breakpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_uninstall_hw_breakpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_exceptions_notify(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !25, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_register_user_hw_breakpoint, !1, !"__ksymtab_register_user_hw_breakpoint", i1 false, i1 false}
!1 = !{!"../kernel/events/hw_breakpoint.c", i32 466, i32 1}
!2 = !{ptr @__ksymtab_modify_user_hw_breakpoint, !3, !"__ksymtab_modify_user_hw_breakpoint", i1 false, i1 false}
!3 = !{!"../kernel/events/hw_breakpoint.c", i32 536, i32 1}
!4 = !{ptr @__ksymtab_unregister_hw_breakpoint, !5, !"__ksymtab_unregister_hw_breakpoint", i1 false, i1 false}
!5 = !{!"../kernel/events/hw_breakpoint.c", i32 548, i32 1}
!6 = !{ptr @__ksymtab_register_wide_hw_breakpoint, !7, !"__ksymtab_register_wide_hw_breakpoint", i1 false, i1 false}
!7 = !{!"../kernel/events/hw_breakpoint.c", i32 590, i32 1}
!8 = !{ptr @__ksymtab_unregister_wide_hw_breakpoint, !9, !"__ksymtab_unregister_wide_hw_breakpoint", i1 false, i1 false}
!9 = !{!"../kernel/events/hw_breakpoint.c", i32 605, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/events/hw_breakpoint.c", i32 700, i32 38}
!12 = !{ptr @__pcpu_unique_bp_cpuinfo, !13, !"__pcpu_unique_bp_cpuinfo", i1 false, i1 false}
!13 = !{!"../kernel/events/hw_breakpoint.c", i32 49, i32 8}
!14 = !{ptr @bp_cpuinfo, !13, !"bp_cpuinfo", i1 false, i1 false}
!15 = !{ptr @nr_slots, !16, !"nr_slots", i1 false, i1 false}
!16 = !{!"../kernel/events/hw_breakpoint.c", i32 50, i32 12}
!17 = distinct !{null, !18, !"constraints_initialized", i1 false, i1 false}
!18 = !{!"../kernel/events/hw_breakpoint.c", i32 60, i32 12}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/events/hw_breakpoint.c", i32 69, i32 8}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nr_bp_mutex, !20, !"nr_bp_mutex", i1 false, i1 false}
!23 = !{ptr @bp_task_head, !24, !"bp_task_head", i1 false, i1 false}
!24 = !{!"../kernel/events/hw_breakpoint.c", i32 58, i32 8}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/events/hw_breakpoint.c", i32 367, i32 3}
!27 = !{ptr @perf_breakpoint, !28, !"perf_breakpoint", i1 false, i1 false}
!28 = !{!"../kernel/events/hw_breakpoint.c", i32 668, i32 19}
!29 = !{ptr @hw_breakpoint_exceptions_nb, !30, !"hw_breakpoint_exceptions_nb", i1 false, i1 false}
!30 = !{!"../kernel/events/hw_breakpoint.c", i32 607, i32 30}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 492091}
!43 = !{!"branch_weights", i32 1, i32 2000}
