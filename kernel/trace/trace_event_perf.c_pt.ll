; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_event_perf.c_pt.bc'
source_filename = "../kernel/trace/trace_event_perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+perf_trace_buf_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_perf_trace_buf_alloc\09\09\09\09"
module asm "\09.long\09__crc_perf_trace_buf_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_trace_buf_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_trace_buf_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_perf_trace_buf_alloc:\09\09\09\09\09"
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
%struct.pt_regs = type { [18 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.73, %struct.trace_event, ptr, ptr, %union.anon.74, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hlist_head = type { ptr }
%struct.ftrace_entry = type { %struct.trace_entry, i32, i32 }

@event_mutex = external dso_local global %struct.mutex, align 4
@ftrace_events = external dso_local global %struct.list_head, align 4
@perf_trace_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kernel/trace/trace_event_perf.c\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@perf_trace_buf_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"perf buffer not large enough, wanted %d, have %d\00", [47 x i8] zeroinitializer }, align 32
@__perf_regs = external dso_local global [4 x %struct.pt_regs], section ".data..percpu", align 4
@perf_trace_buf = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@__kstrtab_perf_trace_buf_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_trace_buf_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_trace_buf_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_trace_buf_alloc to i32), ptr @__kstrtab_perf_trace_buf_alloc, ptr @__kstrtabns_perf_trace_buf_alloc }, section "___ksymtab_gpl+perf_trace_buf_alloc", align 4
@_kbl_addr_perf_trace_buf_alloc = internal global i32 ptrtoint (ptr @perf_trace_buf_alloc to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_perf_trace_buf_update = internal global i32 ptrtoint (ptr @perf_trace_buf_update to i32), section "_kprobe_blacklist", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sysctl_perf_event_paranoid = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@total_ref_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__llvm_gcov_ctr = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_event_perf.gcda\00", [60 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [57 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1878408152, i32 1037753130 }, %emit_function_args_ty { i32 1, i32 -207085681, i32 1037753130 }, %emit_function_args_ty { i32 2, i32 -1449550872, i32 1037753130 }, %emit_function_args_ty { i32 3, i32 -968807974, i32 1037753130 }, %emit_function_args_ty { i32 4, i32 1211051696, i32 1037753130 }, %emit_function_args_ty { i32 5, i32 -1159675914, i32 1037753130 }, %emit_function_args_ty { i32 6, i32 1137636357, i32 1037753130 }, %emit_function_args_ty { i32 7, i32 -2071920119, i32 1037753130 }, %emit_function_args_ty { i32 8, i32 436087400, i32 1037753130 }, %emit_function_args_ty { i32 9, i32 -10115036, i32 1037753130 }, %emit_function_args_ty { i32 10, i32 1781672997, i32 1037753130 }, %emit_function_args_ty { i32 11, i32 -1725770424, i32 1037753130 }, %emit_function_args_ty { i32 12, i32 -178591879, i32 1037753130 }, %emit_function_args_ty { i32 13, i32 -2068536575, i32 1037753130 }, %emit_function_args_ty { i32 14, i32 1685201547, i32 1037753130 }, %emit_function_args_ty { i32 15, i32 288547376, i32 1037753130 }, %emit_function_args_ty { i32 16, i32 -1045522791, i32 1037753130 }, %emit_function_args_ty { i32 17, i32 119206541, i32 1037753130 }, %emit_function_args_ty { i32 18, i32 2049015662, i32 1037753130 }, %emit_function_args_ty { i32 19, i32 -1689976669, i32 1037753130 }, %emit_function_args_ty { i32 20, i32 47597853, i32 1037753130 }, %emit_function_args_ty { i32 21, i32 -2126785177, i32 1037753130 }, %emit_function_args_ty { i32 22, i32 1249662737, i32 1037753130 }, %emit_function_args_ty { i32 23, i32 -352946231, i32 1037753130 }, %emit_function_args_ty { i32 24, i32 2120328704, i32 1037753130 }, %emit_function_args_ty { i32 25, i32 1884008217, i32 1037753130 }, %emit_function_args_ty { i32 26, i32 1505933417, i32 1037753130 }, %emit_function_args_ty { i32 27, i32 2068533057, i32 1037753130 }, %emit_function_args_ty { i32 28, i32 1989488897, i32 1037753130 }, %emit_function_args_ty { i32 29, i32 373774040, i32 1037753130 }, %emit_function_args_ty { i32 30, i32 -2065791315, i32 1037753130 }, %emit_function_args_ty { i32 31, i32 523562089, i32 1037753130 }, %emit_function_args_ty { i32 32, i32 1867579396, i32 1037753130 }, %emit_function_args_ty { i32 33, i32 -400554785, i32 1037753130 }, %emit_function_args_ty { i32 34, i32 -1782918348, i32 1037753130 }, %emit_function_args_ty { i32 35, i32 795548855, i32 1037753130 }, %emit_function_args_ty { i32 36, i32 727036892, i32 1037753130 }, %emit_function_args_ty { i32 37, i32 1841983822, i32 1037753130 }, %emit_function_args_ty { i32 38, i32 1624494247, i32 1037753130 }, %emit_function_args_ty { i32 39, i32 -963894156, i32 1037753130 }, %emit_function_args_ty { i32 40, i32 1789188821, i32 1037753130 }, %emit_function_args_ty { i32 41, i32 835031753, i32 1037753130 }, %emit_function_args_ty { i32 42, i32 -1846855200, i32 1037753130 }, %emit_function_args_ty { i32 43, i32 81157262, i32 1037753130 }, %emit_function_args_ty { i32 44, i32 1397568451, i32 1037753130 }, %emit_function_args_ty { i32 45, i32 940485695, i32 1037753130 }, %emit_function_args_ty { i32 46, i32 -31780534, i32 1037753130 }, %emit_function_args_ty { i32 47, i32 1315555644, i32 1037753130 }, %emit_function_args_ty { i32 48, i32 -406829888, i32 1037753130 }, %emit_function_args_ty { i32 49, i32 -1049072290, i32 1037753130 }, %emit_function_args_ty { i32 50, i32 -1091439523, i32 1037753130 }, %emit_function_args_ty { i32 51, i32 -1567486560, i32 1037753130 }, %emit_function_args_ty { i32 52, i32 1318765010, i32 1037753130 }, %emit_function_args_ty { i32 53, i32 -1543658690, i32 1037753130 }, %emit_function_args_ty { i32 54, i32 -1111025999, i32 1037753130 }, %emit_function_args_ty { i32 55, i32 1834354242, i32 1037753130 }, %emit_function_args_ty { i32 56, i32 1333844298, i32 1037753130 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [57 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.2 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.3 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.4 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.5 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.6 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.57 }]
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 372, i32 7 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 402, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"perf_trace_buf\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 15, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"total_ref_count\00", align 1
@___asan_gen_.68 = private constant [35 x i8] c"../kernel/trace/trace_event_perf.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 25, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_perf_trace_buf_alloc, ptr @_kbl_addr_perf_trace_buf_alloc, ptr @_kbl_addr_perf_trace_buf_update, ptr @.str, ptr @.str.1, ptr @perf_trace_buf, ptr @total_ref_count], section "llvm.metadata"
@1 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_trace_buf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_ref_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_trace_init(ptr noundef %p_event) local_unnamed_addr #0 align 64 !dbg !29 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !32
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 16
  %config = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 2, !dbg !33
  %1 = ptrtoint ptr %config to i32, !dbg !33
  call void @__asan_load8_noabort(i32 %1), !dbg !33
  %2 = load i64, ptr %config, align 8, !dbg !33
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #13, !dbg !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ftrace_events to i32)), !dbg !35
  %tp_event.038 = load ptr, ptr @ftrace_events, align 4, !dbg !35
  %cmp.not39 = icmp eq ptr %tp_event.038, @ftrace_events, !dbg !35
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !35

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !35

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !35
  br label %for.end, !dbg !35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tp_event.040 = phi ptr [ %tp_event.0, %for.inc.for.body_crit_edge ], [ %tp_event.038, %entry.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.040, i32 0, i32 3, i32 2, !dbg !36
  %3 = ptrtoint ptr %type to i32, !dbg !36
  call void @__asan_load4_noabort(i32 %3), !dbg !36
  %4 = load i32, ptr %type, align 4, !dbg !36
  %conv = sext i32 %4 to i64, !dbg !37
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %conv), !dbg !38
  %cmp1 = icmp eq i64 %2, %conv, !dbg !38
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge, !dbg !39

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12, !dbg !39
  br label %for.inc, !dbg !39

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !40
  %5 = add i64 %gcov_ctr16, 1, !dbg !40
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !40
  %class = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.040, i32 0, i32 1, !dbg !41
  %6 = ptrtoint ptr %class to i32, !dbg !41
  call void @__asan_load4_noabort(i32 %6), !dbg !41
  %7 = load ptr, ptr %class, align 4, !dbg !41
  %tobool.not = icmp eq ptr %7, null, !dbg !40
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true3, !dbg !42

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12, !dbg !42
  br label %for.inc, !dbg !42

land.lhs.true3:                                   ; preds = %land.lhs.true
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !43
  %8 = add i64 %gcov_ctr17, 1, !dbg !43
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !43
  %9 = ptrtoint ptr %class to i32, !dbg !44
  call void @__asan_load4_noabort(i32 %9), !dbg !44
  %10 = load ptr, ptr %class, align 4, !dbg !44
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %10, i32 0, i32 3, !dbg !45
  %11 = ptrtoint ptr %reg to i32, !dbg !45
  call void @__asan_load4_noabort(i32 %11), !dbg !45
  %12 = load ptr, ptr %reg, align 4, !dbg !45
  %tobool5.not = icmp eq ptr %12, null, !dbg !43
  br i1 %tobool5.not, label %land.lhs.true3.for.inc_crit_edge, label %land.lhs.true6, !dbg !46

land.lhs.true3.for.inc_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12, !dbg !46
  br label %for.inc, !dbg !46

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !47
  %13 = add i64 %gcov_ctr18, 1, !dbg !47
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !47
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.040, i32 0, i32 8, !dbg !48
  %14 = ptrtoint ptr %flags.i to i32, !dbg !48
  call void @__asan_load4_noabort(i32 %14), !dbg !48
  %15 = load i32, ptr %flags.i, align 4, !dbg !48
  %and.i = and i32 %15, 32, !dbg !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !52
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !52
  br i1 %tobool.not.i, label %trace_event_try_get_ref.exit, label %if.then.i, !dbg !53

if.then.i:                                        ; preds = %land.lhs.true6
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.2, align 8, !dbg !54
  %16 = add i64 %gcov_ctr.i, 1, !dbg !54
  store i64 %16, ptr @__llvm_gcov_ctr.2, align 8, !dbg !54
  %call1.i = tail call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %tp_event.040) #13, !dbg !55
  br i1 %call1.i, label %if.then.i.if.then_crit_edge, label %if.then.i.for.inc_crit_edge, !dbg !37

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !37
  br label %for.inc, !dbg !37

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !37
  br label %if.then, !dbg !37

trace_event_try_get_ref.exit:                     ; preds = %land.lhs.true6
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !56
  %17 = add i64 %gcov_ctr3.i, 1, !dbg !56
  store i64 %17, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.2, i32 0, i32 1), align 8, !dbg !56
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.040, i32 0, i32 6, !dbg !57
  %19 = ptrtoint ptr %18 to i32, !dbg !57
  call void @__asan_load4_noabort(i32 %19), !dbg !57
  %20 = load ptr, ptr %18, align 4, !dbg !57
  %call2.i = tail call zeroext i1 @try_module_get(ptr noundef %20) #13, !dbg !58
  br i1 %call2.i, label %trace_event_try_get_ref.exit.if.then_crit_edge, label %trace_event_try_get_ref.exit.for.inc_crit_edge, !dbg !37

trace_event_try_get_ref.exit.for.inc_crit_edge:   ; preds = %trace_event_try_get_ref.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !37
  br label %for.inc, !dbg !37

trace_event_try_get_ref.exit.if.then_crit_edge:   ; preds = %trace_event_try_get_ref.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !37
  br label %if.then, !dbg !37

if.then:                                          ; preds = %trace_event_try_get_ref.exit.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %call8 = tail call fastcc i32 @perf_trace_event_init(ptr noundef %tp_event.040, ptr noundef %p_event), !dbg !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8), !dbg !60
  %tobool9.not = icmp eq i32 %call8, 0, !dbg !60
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10, !dbg !60

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12, !dbg !60
  br label %if.end, !dbg !60

if.then10:                                        ; preds = %if.then
  %flags.i.le = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.040, i32 0, i32 8, !dbg !48
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !61
  %21 = add i64 %gcov_ctr19, 1, !dbg !61
  store i64 %21, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !61
  %22 = ptrtoint ptr %flags.i.le to i32, !dbg !62
  call void @__asan_load4_noabort(i32 %22), !dbg !62
  %23 = load i32, ptr %flags.i.le, align 4, !dbg !62
  %and.i32 = and i32 %23, 32, !dbg !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32), !dbg !65
  %tobool.not.i33 = icmp eq i32 %and.i32, 0, !dbg !65
  br i1 %tobool.not.i33, label %if.else.i36, label %if.then.i35, !dbg !66

if.then.i35:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12, !dbg !67
  %gcov_ctr.i34 = load i64, ptr @__llvm_gcov_ctr.4, align 8, !dbg !67
  %24 = add i64 %gcov_ctr.i34, 1, !dbg !67
  store i64 %24, ptr @__llvm_gcov_ctr.4, align 8, !dbg !67
  tail call void @trace_event_dyn_put_ref(ptr noundef %tp_event.040) #13, !dbg !68
  br label %if.end, !dbg !68

if.else.i36:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12, !dbg !69
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 1), align 8, !dbg !69
  %25 = add i64 %gcov_ctr1.i, 1, !dbg !69
  store i64 %25, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 1), align 8, !dbg !69
  %26 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.040, i32 0, i32 6, !dbg !70
  %27 = ptrtoint ptr %26 to i32, !dbg !70
  call void @__asan_load4_noabort(i32 %27), !dbg !70
  %28 = load ptr, ptr %26, align 4, !dbg !70
  tail call void @module_put(ptr noundef %28) #13, !dbg !71
  br label %if.end

if.end:                                           ; preds = %if.else.i36, %if.then.i35, %if.then.if.end_crit_edge
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !72
  %29 = add i64 %gcov_ctr20, 1, !dbg !72
  store i64 %29, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !72
  br label %for.end, !dbg !72

for.inc:                                          ; preds = %trace_event_try_get_ref.exit.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %land.lhs.true3.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !35
  %30 = add i64 %gcov_ctr21, 1, !dbg !35
  store i64 %30, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !35
  %31 = ptrtoint ptr %tp_event.040 to i32, !dbg !35
  call void @__asan_load4_noabort(i32 %31), !dbg !35
  %tp_event.0 = load ptr, ptr %tp_event.040, align 4, !dbg !35
  %cmp.not = icmp eq ptr %tp_event.0, @ftrace_events, !dbg !35
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !35, !llvm.loop !73

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12, !dbg !35
  br label %for.body, !dbg !35

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12, !dbg !35
  br label %for.end, !dbg !35

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end ], [ -22, %entry.for.end_crit_edge ], [ -22, %for.inc.for.end_crit_edge ], !dbg !75
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #13, !dbg !76
  ret i32 %ret.0, !dbg !77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perf_trace_event_init(ptr noundef %tp_event, ptr noundef %p_event) unnamed_addr #0 align 64 !dbg !78 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !79
  %perf_perm.i = getelementptr inbounds %struct.trace_event_call, ptr %tp_event, i32 0, i32 12, !dbg !80
  %0 = ptrtoint ptr %perf_perm.i to i32, !dbg !80
  call void @__asan_load4_noabort(i32 %0), !dbg !80
  %1 = load ptr, ptr %perf_perm.i, align 4, !dbg !80
  %tobool.not.i = icmp eq ptr %1, null, !dbg !83
  br i1 %tobool.not.i, label %entry.if.end4.i_crit_edge, label %if.then.i, !dbg !83

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !83
  br label %if.end4.i, !dbg !83

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 %1(ptr noundef %tp_event, ptr noundef %p_event) #13, !dbg !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !85
  %tobool2.not.i = icmp eq i32 %call.i, 0, !dbg !85
  br i1 %tobool2.not.i, label %if.end.i, label %if.then3.i, !dbg !85

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !86
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8, !dbg !86
  %2 = add i64 %gcov_ctr43.i, 1, !dbg !86
  store i64 %2, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8, !dbg !86
  br label %if.then, !dbg !87

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !88
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.27, align 16, !dbg !88
  %3 = add i64 %gcov_ctr.i, 1, !dbg !88
  store i64 %3, ptr @__llvm_gcov_ctr.27, align 16, !dbg !88
  br label %if.end4.i, !dbg !88

if.end4.i:                                        ; preds = %if.end.i, %entry.if.end4.i_crit_edge
  %parent.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 32, !dbg !89
  %4 = ptrtoint ptr %parent.i to i32, !dbg !89
  call void @__asan_load4_noabort(i32 %4), !dbg !89
  %5 = load ptr, ptr %parent.i, align 4, !dbg !89
  %tobool5.not.i = icmp eq ptr %5, null, !dbg !90
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then6.i, !dbg !90

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !91
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !91
  %6 = add i64 %gcov_ctr44.i, 1, !dbg !91
  store i64 %6, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !91
  br label %if.end, !dbg !91

if.end7.i:                                        ; preds = %if.end4.i
  %call8.i = tail call zeroext i1 @ftrace_event_is_function(ptr noundef %tp_event) #13, !dbg !92
  br i1 %call8.i, label %if.then9.i, label %if.end7.i.if.end25.i_crit_edge, !dbg !92

if.end7.i.if.end25.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !92
  br label %if.end25.i, !dbg !92

if.then9.i:                                       ; preds = %if.end7.i
  %attr.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, !dbg !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_paranoid to i32)), !dbg !94
  %7 = load i32, ptr @sysctl_perf_event_paranoid, align 4, !dbg !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7), !dbg !98
  %cmp.i.i = icmp sgt i32 %7, -1, !dbg !98
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then9.i.perf_allow_tracepoint.exit.i_crit_edge, !dbg !99

if.then9.i.perf_allow_tracepoint.exit.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !99
  br label %perf_allow_tracepoint.exit.i, !dbg !99

land.lhs.true.i.i:                                ; preds = %if.then9.i
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.30, align 16, !dbg !100
  %8 = add i64 %gcov_ctr.i.i, 1, !dbg !100
  store i64 %8, ptr @__llvm_gcov_ctr.30, align 16, !dbg !100
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.32, align 8, !dbg !101
  %9 = add i64 %gcov_ctr.i.i.i, 1, !dbg !101
  store i64 %9, ptr @__llvm_gcov_ctr.32, align 8, !dbg !101
  %call.i.i.i = tail call zeroext i1 @capable(i32 noundef 38) #13, !dbg !101
  br i1 %call.i.i.i, label %land.lhs.true.i.i.perf_allow_tracepoint.exit.i_crit_edge, label %perfmon_capable.exit.i.i, !dbg !105

land.lhs.true.i.i.perf_allow_tracepoint.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !105
  br label %perf_allow_tracepoint.exit.i, !dbg !105

perfmon_capable.exit.i.i:                         ; preds = %land.lhs.true.i.i
  %gcov_ctr2.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !106
  %10 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !106
  store i64 %10, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !106
  %call1.i.i.i = tail call zeroext i1 @capable(i32 noundef 21) #13, !dbg !106
  br i1 %call1.i.i.i, label %perfmon_capable.exit.i.i.perf_allow_tracepoint.exit.i_crit_edge, label %perf_allow_tracepoint.exit.thread.i, !dbg !94

perfmon_capable.exit.i.i.perf_allow_tracepoint.exit.i_crit_edge: ; preds = %perfmon_capable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !94
  br label %perf_allow_tracepoint.exit.i, !dbg !94

perf_allow_tracepoint.exit.thread.i:              ; preds = %perfmon_capable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !107
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !107
  %11 = add i64 %gcov_ctr2.i.i, 1, !dbg !107
  store i64 %11, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !107
  br label %if.then12.i, !dbg !108

perf_allow_tracepoint.exit.i:                     ; preds = %perfmon_capable.exit.i.i.perf_allow_tracepoint.exit.i_crit_edge, %land.lhs.true.i.i.perf_allow_tracepoint.exit.i_crit_edge, %if.then9.i.perf_allow_tracepoint.exit.i_crit_edge
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !109
  %12 = add i64 %gcov_ctr3.i.i, 1, !dbg !109
  store i64 %12, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !109
  %call1.i.i = tail call i32 @security_perf_event_open(ptr noundef %attr.i, i32 noundef 3) #13, !dbg !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !108
  %tobool11.not.i = icmp eq i32 %call1.i.i, 0, !dbg !108
  br i1 %tobool11.not.i, label %if.end13.i, label %perf_allow_tracepoint.exit.i.if.then12.i_crit_edge, !dbg !108

perf_allow_tracepoint.exit.i.if.then12.i_crit_edge: ; preds = %perf_allow_tracepoint.exit.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !108
  br label %if.then12.i, !dbg !108

if.then12.i:                                      ; preds = %perf_allow_tracepoint.exit.i.if.then12.i_crit_edge, %perf_allow_tracepoint.exit.thread.i
  %retval.0.i91.i = phi i32 [ -1, %perf_allow_tracepoint.exit.thread.i ], [ %call1.i.i, %perf_allow_tracepoint.exit.i.if.then12.i_crit_edge ]
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8, !dbg !111
  %13 = add i64 %gcov_ctr45.i, 1, !dbg !111
  store i64 %13, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8, !dbg !111
  br label %if.then, !dbg !112

if.end13.i:                                       ; preds = %perf_allow_tracepoint.exit.i
  %gcov_ctr.i72.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %14 = add i64 %gcov_ctr.i72.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.31, align 8
  %15 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 3, !dbg !113
  %16 = ptrtoint ptr %15 to i32, !dbg !113
  call void @__asan_load8_noabort(i32 %16), !dbg !113
  %17 = load i64, ptr %15, align 8, !dbg !113
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17), !dbg !116
  %cmp.i73.not.i = icmp eq i64 %17, 0, !dbg !116
  br i1 %cmp.i73.not.i, label %if.then15.i, label %if.end16.i, !dbg !117

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !118
  %gcov_ctr46.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 4), align 16, !dbg !118
  %18 = add i64 %gcov_ctr46.i, 1, !dbg !118
  store i64 %18, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 4), align 16, !dbg !118
  br label %if.end, !dbg !118

if.end16.i:                                       ; preds = %if.end13.i
  %exclude_callchain_user.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 6, !dbg !119
  %19 = ptrtoint ptr %exclude_callchain_user.i to i32, !dbg !119
  call void @__asan_load8_noabort(i32 %19), !dbg !119
  %bf.load.i = load i64, ptr %exclude_callchain_user.i, align 8, !dbg !119
  %20 = and i64 %bf.load.i, 2199023255552, !dbg !120
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20), !dbg !120
  %tobool18.not.i = icmp eq i64 %20, 0, !dbg !120
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end20.i, !dbg !121

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !122
  %gcov_ctr47.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 5), align 8, !dbg !122
  %21 = add i64 %gcov_ctr47.i, 1, !dbg !122
  store i64 %21, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 5), align 8, !dbg !122
  br label %if.then, !dbg !122

if.end20.i:                                       ; preds = %if.end16.i
  %sample_type.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 4, !dbg !123
  %22 = ptrtoint ptr %sample_type.i to i32, !dbg !123
  call void @__asan_load8_noabort(i32 %22), !dbg !123
  %23 = load i64, ptr %sample_type.i, align 8, !dbg !123
  %and.i = and i64 %23, 8192, !dbg !124
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i), !dbg !124
  %tobool22.not.i = icmp eq i64 %and.i, 0, !dbg !124
  br i1 %tobool22.not.i, label %if.end24.i, label %if.then23.i, !dbg !125

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !126
  %gcov_ctr48.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 6), align 16, !dbg !126
  %24 = add i64 %gcov_ctr48.i, 1, !dbg !126
  store i64 %24, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 6), align 16, !dbg !126
  br label %if.then, !dbg !126

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !127
  %gcov_ctr49.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 7), align 8, !dbg !127
  %25 = add i64 %gcov_ctr49.i, 1, !dbg !127
  store i64 %25, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 7), align 8, !dbg !127
  br label %if.end25.i, !dbg !127

if.end25.i:                                       ; preds = %if.end24.i, %if.end7.i.if.end25.i_crit_edge
  %attr26.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, !dbg !128
  %sample_type27.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 4, !dbg !129
  %26 = ptrtoint ptr %sample_type27.i to i32, !dbg !129
  call void @__asan_load8_noabort(i32 %26), !dbg !129
  %27 = load i64, ptr %sample_type27.i, align 8, !dbg !129
  %and28.i = and i64 %27, 1024, !dbg !130
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28.i), !dbg !130
  %tobool29.not.i = icmp eq i64 %and28.i, 0, !dbg !130
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end31.i, !dbg !131

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !132
  %gcov_ctr50.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 8), align 16, !dbg !132
  %28 = add i64 %gcov_ctr50.i, 1, !dbg !132
  store i64 %28, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 8), align 16, !dbg !132
  br label %if.end, !dbg !132

if.end31.i:                                       ; preds = %if.end25.i
  %attach_state.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 15, !dbg !133
  %29 = ptrtoint ptr %attach_state.i to i32, !dbg !133
  call void @__asan_load4_noabort(i32 %29), !dbg !133
  %30 = load i32, ptr %attach_state.i, align 4, !dbg !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30), !dbg !134
  %cmp.i = icmp eq i32 %30, 4, !dbg !134
  br i1 %cmp.i, label %if.then32.i, label %if.end31.i.if.end37.i_crit_edge, !dbg !135

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !135
  br label %if.end37.i, !dbg !135

if.then32.i:                                      ; preds = %if.end31.i
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %tp_event, i32 0, i32 8, !dbg !136
  %31 = ptrtoint ptr %flags.i to i32, !dbg !136
  call void @__asan_load4_noabort(i32 %31), !dbg !136
  %32 = load i32, ptr %flags.i, align 4, !dbg !136
  %and33.i = and i32 %32, 2, !dbg !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i), !dbg !137
  %tobool34.not.i = icmp eq i32 %and33.i, 0, !dbg !137
  br i1 %tobool34.not.i, label %if.end36.i, label %if.then35.i, !dbg !138

if.then35.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !139
  %gcov_ctr51.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 9), align 8, !dbg !139
  %33 = add i64 %gcov_ctr51.i, 1, !dbg !139
  store i64 %33, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 9), align 8, !dbg !139
  br label %if.end, !dbg !139

if.end36.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !140
  %gcov_ctr52.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 10), align 16, !dbg !140
  %34 = add i64 %gcov_ctr52.i, 1, !dbg !140
  store i64 %34, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 10), align 16, !dbg !140
  br label %if.end37.i, !dbg !140

if.end37.i:                                       ; preds = %if.end36.i, %if.end31.i.if.end37.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_paranoid to i32)), !dbg !141
  %35 = load i32, ptr @sysctl_perf_event_paranoid, align 4, !dbg !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35), !dbg !143
  %cmp.i74.i = icmp sgt i32 %35, -1, !dbg !143
  br i1 %cmp.i74.i, label %land.lhs.true.i78.i, label %if.end37.i.perf_allow_tracepoint.exit88.i_crit_edge, !dbg !144

if.end37.i.perf_allow_tracepoint.exit88.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !144
  br label %perf_allow_tracepoint.exit88.i, !dbg !144

land.lhs.true.i78.i:                              ; preds = %if.end37.i
  %gcov_ctr.i75.i = load i64, ptr @__llvm_gcov_ctr.30, align 16, !dbg !145
  %36 = add i64 %gcov_ctr.i75.i, 1, !dbg !145
  store i64 %36, ptr @__llvm_gcov_ctr.30, align 16, !dbg !145
  %gcov_ctr.i.i76.i = load i64, ptr @__llvm_gcov_ctr.32, align 8, !dbg !146
  %37 = add i64 %gcov_ctr.i.i76.i, 1, !dbg !146
  store i64 %37, ptr @__llvm_gcov_ctr.32, align 8, !dbg !146
  %call.i.i77.i = tail call zeroext i1 @capable(i32 noundef 38) #13, !dbg !146
  br i1 %call.i.i77.i, label %land.lhs.true.i78.i.perf_allow_tracepoint.exit88.i_crit_edge, label %perfmon_capable.exit.i81.i, !dbg !148

land.lhs.true.i78.i.perf_allow_tracepoint.exit88.i_crit_edge: ; preds = %land.lhs.true.i78.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !148
  br label %perf_allow_tracepoint.exit88.i, !dbg !148

perfmon_capable.exit.i81.i:                       ; preds = %land.lhs.true.i78.i
  %gcov_ctr2.i.i79.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !149
  %38 = add i64 %gcov_ctr2.i.i79.i, 1, !dbg !149
  store i64 %38, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !149
  %call1.i.i80.i = tail call zeroext i1 @capable(i32 noundef 21) #13, !dbg !149
  br i1 %call1.i.i80.i, label %perfmon_capable.exit.i81.i.perf_allow_tracepoint.exit88.i_crit_edge, label %perf_allow_tracepoint.exit88.thread.i, !dbg !141

perfmon_capable.exit.i81.i.perf_allow_tracepoint.exit88.i_crit_edge: ; preds = %perfmon_capable.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !141
  br label %perf_allow_tracepoint.exit88.i, !dbg !141

perf_allow_tracepoint.exit88.thread.i:            ; preds = %perfmon_capable.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !150
  %gcov_ctr2.i82.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !150
  %39 = add i64 %gcov_ctr2.i82.i, 1, !dbg !150
  store i64 %39, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !150
  br label %if.then41.i, !dbg !151

perf_allow_tracepoint.exit88.i:                   ; preds = %perfmon_capable.exit.i81.i.perf_allow_tracepoint.exit88.i_crit_edge, %land.lhs.true.i78.i.perf_allow_tracepoint.exit88.i_crit_edge, %if.end37.i.perf_allow_tracepoint.exit88.i_crit_edge
  %gcov_ctr3.i84.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !152
  %40 = add i64 %gcov_ctr3.i84.i, 1, !dbg !152
  store i64 %40, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !152
  %call1.i85.i = tail call i32 @security_perf_event_open(ptr noundef %attr26.i, i32 noundef 3) #13, !dbg !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85.i), !dbg !151
  %tobool40.not.i = icmp eq i32 %call1.i85.i, 0, !dbg !151
  br i1 %tobool40.not.i, label %if.end42.i, label %perf_allow_tracepoint.exit88.i.if.then41.i_crit_edge, !dbg !151

perf_allow_tracepoint.exit88.i.if.then41.i_crit_edge: ; preds = %perf_allow_tracepoint.exit88.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !151
  br label %if.then41.i, !dbg !151

if.then41.i:                                      ; preds = %perf_allow_tracepoint.exit88.i.if.then41.i_crit_edge, %perf_allow_tracepoint.exit88.thread.i
  %retval.0.i8794.i = phi i32 [ -1, %perf_allow_tracepoint.exit88.thread.i ], [ %call1.i85.i, %perf_allow_tracepoint.exit88.i.if.then41.i_crit_edge ]
  %gcov_ctr54.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 12), align 16, !dbg !154
  %41 = add i64 %gcov_ctr54.i, 1, !dbg !154
  store i64 %41, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 12), align 16, !dbg !154
  br label %if.then, !dbg !155

if.end42.i:                                       ; preds = %perf_allow_tracepoint.exit88.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !156
  %gcov_ctr53.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 11), align 8, !dbg !156
  %42 = add i64 %gcov_ctr53.i, 1, !dbg !156
  store i64 %42, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 11), align 8, !dbg !156
  br label %if.end, !dbg !156

if.then:                                          ; preds = %if.then41.i, %if.then23.i, %if.then19.i, %if.then12.i, %if.then3.i
  %retval.0.i = phi i32 [ %call.i, %if.then3.i ], [ %retval.0.i91.i, %if.then12.i ], [ -22, %if.then23.i ], [ %retval.0.i8794.i, %if.then41.i ], [ -22, %if.then19.i ], !dbg !157
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.3, align 16, !dbg !158
  %43 = add i64 %gcov_ctr, 1, !dbg !158
  store i64 %43, ptr @__llvm_gcov_ctr.3, align 16, !dbg !158
  br label %cleanup, !dbg !159

if.end:                                           ; preds = %if.end42.i, %if.then35.i, %if.then30.i, %if.then15.i, %if.then6.i
  %tp_event1.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 65, !dbg !160
  %44 = ptrtoint ptr %tp_event1.i to i32, !dbg !163
  call void @__asan_store4_noabort(i32 %44), !dbg !163
  store ptr %tp_event, ptr %tp_event1.i, align 8, !dbg !163
  %perf_refcount.i = getelementptr inbounds %struct.trace_event_call, ptr %tp_event, i32 0, i32 9, !dbg !164
  %45 = ptrtoint ptr %perf_refcount.i to i32, !dbg !165
  call void @__asan_load4_noabort(i32 %45), !dbg !165
  %46 = load i32, ptr %perf_refcount.i, align 4, !dbg !165
  %inc.i = add i32 %46, 1, !dbg !165
  store i32 %inc.i, ptr %perf_refcount.i, align 4, !dbg !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46), !dbg !166
  %cmp.i21 = icmp sgt i32 %46, 0, !dbg !166
  br i1 %cmp.i21, label %if.then.i23, label %if.end.i26, !dbg !167

if.then.i23:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !168
  %gcov_ctr.i22 = load i64, ptr @__llvm_gcov_ctr.28, align 16, !dbg !168
  %47 = add i64 %gcov_ctr.i22, 1, !dbg !168
  store i64 %47, ptr @__llvm_gcov_ctr.28, align 16, !dbg !168
  br label %if.end4, !dbg !168

if.end.i26:                                       ; preds = %if.end
  %call.i24 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #14, !dbg !169
  %tobool.not.i25 = icmp eq ptr %call.i24, null, !dbg !170
  br i1 %tobool.not.i25, label %if.then2.i, label %for.cond.preheader.i, !dbg !171

for.cond.preheader.i:                             ; preds = %if.end.i26
  %call480.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15, !dbg !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !172
  %48 = load i32, ptr @nr_cpu_ids, align 4, !dbg !172
  call void @__sanitizer_cov_trace_cmp4(i32 %call480.i, i32 %48), !dbg !172
  %cmp581.i = icmp ult i32 %call480.i, %48, !dbg !172
  br i1 %cmp581.i, label %do.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge, !dbg !172

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !172
  br label %for.end.i, !dbg !172

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %49 = ptrtoint ptr %call.i24 to i32
  br label %do.body.i, !dbg !172

if.then2.i:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12, !dbg !173
  %gcov_ctr47.i27 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !173
  %50 = add i64 %gcov_ctr47.i27, 1, !dbg !173
  store i64 %50, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !173
  br label %fail.i, !dbg !173

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call482.i = phi i32 [ %call480.i, %do.body.lr.ph.i ], [ %call4.i, %do.body.i.do.body.i_crit_edge ]
  %gcov_ctr48.i28 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !174
  %51 = add i64 %gcov_ctr48.i28, 1, !dbg !174
  store i64 %51, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !174
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call482.i, !dbg !174
  %52 = ptrtoint ptr %arrayidx.i to i32, !dbg !174
  call void @__asan_load4_noabort(i32 %52), !dbg !174
  %53 = load i32, ptr %arrayidx.i, align 4, !dbg !174
  %add.i = add i32 %53, %49, !dbg !174
  %54 = inttoptr i32 %add.i to ptr, !dbg !174
  %55 = ptrtoint ptr %54 to i32, !dbg !174
  call void @__asan_store4_noabort(i32 %55), !dbg !174
  store ptr null, ptr %54, align 4, !dbg !174
  %call4.i = tail call i32 @cpumask_next(i32 noundef %call482.i, ptr noundef nonnull @__cpu_possible_mask) #15, !dbg !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !172
  %56 = load i32, ptr @nr_cpu_ids, align 4, !dbg !172
  %cmp5.i = icmp ult i32 %call4.i, %56, !dbg !172
  br i1 %cmp5.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge, !dbg !172, !llvm.loop !175

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !172
  br label %for.end.i, !dbg !172

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !172
  br label %do.body.i, !dbg !172

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %perf_events.i = getelementptr inbounds %struct.trace_event_call, ptr %tp_event, i32 0, i32 10, !dbg !176
  %57 = ptrtoint ptr %perf_events.i to i32, !dbg !177
  call void @__asan_store4_noabort(i32 %57), !dbg !177
  store ptr %call.i24, ptr %perf_events.i, align 4, !dbg !177
  %58 = load i32, ptr @total_ref_count, align 4, !dbg !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58), !dbg !178
  %tobool7.not.i = icmp eq i32 %58, 0, !dbg !178
  br i1 %tobool7.not.i, label %for.body11.preheader.i, label %for.end.i.if.end20.i34_crit_edge, !dbg !179

for.end.i.if.end20.i34_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !179
  br label %if.end20.i34, !dbg !179

for.body11.preheader.i:                           ; preds = %for.end.i
  %call12.i = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #14, !dbg !180
  %tobool13.not.i = icmp eq ptr %call12.i, null, !dbg !181
  br i1 %tobool13.not.i, label %for.body11.preheader.i.cleanup.i_crit_edge, label %if.end15.i, !dbg !182

for.body11.preheader.i.cleanup.i_crit_edge:       ; preds = %for.body11.preheader.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !182
  br label %cleanup.i, !dbg !182

if.end15.i:                                       ; preds = %for.body11.preheader.i
  %gcov_ctr49.i29 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  %59 = add i64 %gcov_ctr49.i29, 1, !dbg !183
  store i64 %59, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  store ptr %call12.i, ptr @perf_trace_buf, align 4, !dbg !184
  %call12.1.i = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #14, !dbg !180
  %tobool13.not.1.i = icmp eq ptr %call12.1.i, null, !dbg !181
  br i1 %tobool13.not.1.i, label %if.end15.i.cleanup.i_crit_edge, label %if.end15.1.i, !dbg !182

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !182
  br label %cleanup.i, !dbg !182

if.end15.1.i:                                     ; preds = %if.end15.i
  %gcov_ctr49.1.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  %60 = add i64 %gcov_ctr49.1.i, 1, !dbg !183
  store i64 %60, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  store ptr %call12.1.i, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4, !dbg !184
  %call12.2.i = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #14, !dbg !180
  %tobool13.not.2.i = icmp eq ptr %call12.2.i, null, !dbg !181
  br i1 %tobool13.not.2.i, label %if.end15.1.i.cleanup.i_crit_edge, label %if.end15.2.i, !dbg !182

if.end15.1.i.cleanup.i_crit_edge:                 ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !182
  br label %cleanup.i, !dbg !182

if.end15.2.i:                                     ; preds = %if.end15.1.i
  %gcov_ctr49.2.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  %61 = add i64 %gcov_ctr49.2.i, 1, !dbg !183
  store i64 %61, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  store ptr %call12.2.i, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4, !dbg !184
  %call12.3.i = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #14, !dbg !180
  %tobool13.not.3.i = icmp eq ptr %call12.3.i, null, !dbg !181
  br i1 %tobool13.not.3.i, label %if.end15.2.i.cleanup.i_crit_edge, label %if.end15.3.i, !dbg !182

if.end15.2.i.cleanup.i_crit_edge:                 ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !182
  br label %cleanup.i, !dbg !182

if.end15.3.i:                                     ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !183
  %gcov_ctr49.3.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  %62 = add i64 %gcov_ctr49.3.i, 1, !dbg !183
  store i64 %62, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !183
  store ptr %call12.3.i, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4, !dbg !184
  %gcov_ctr51.i30 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 5), align 8, !dbg !185
  %63 = add i64 %gcov_ctr51.i30, 1, !dbg !185
  store i64 %63, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 5), align 8, !dbg !185
  %gcov_ctr52.i31 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 6), align 16, !dbg !185
  %64 = add i64 %gcov_ctr52.i31, 1, !dbg !185
  store i64 %64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 6), align 16, !dbg !185
  br label %if.end20.i34, !dbg !185

cleanup.i:                                        ; preds = %if.end15.2.i.cleanup.i_crit_edge, %if.end15.1.i.cleanup.i_crit_edge, %if.end15.i.cleanup.i_crit_edge, %for.body11.preheader.i.cleanup.i_crit_edge
  %gcov_ctr50.i32 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 4), align 16
  %65 = add i64 %gcov_ctr50.i32, 1
  store i64 %65, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 4), align 16
  br label %fail.i

if.end20.i34:                                     ; preds = %if.end15.3.i, %for.end.i.if.end20.i34_crit_edge
  %class.i = getelementptr inbounds %struct.trace_event_call, ptr %tp_event, i32 0, i32 1, !dbg !186
  %66 = ptrtoint ptr %class.i to i32, !dbg !186
  call void @__asan_load4_noabort(i32 %66), !dbg !186
  %67 = load ptr, ptr %class.i, align 4, !dbg !186
  %reg.i = getelementptr inbounds %struct.trace_event_class, ptr %67, i32 0, i32 3, !dbg !187
  %68 = ptrtoint ptr %reg.i to i32, !dbg !187
  call void @__asan_load4_noabort(i32 %68), !dbg !187
  %69 = load ptr, ptr %reg.i, align 4, !dbg !187
  %call21.i = tail call i32 %69(ptr noundef %tp_event, i32 noundef 2, ptr noundef null) #13, !dbg !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i), !dbg !189
  %tobool22.not.i33 = icmp eq i32 %call21.i, 0, !dbg !189
  br i1 %tobool22.not.i33, label %if.end24.i38, label %if.then23.i36, !dbg !189

if.then23.i36:                                    ; preds = %if.end20.i34
  call void @__sanitizer_cov_trace_pc() #12, !dbg !190
  %gcov_ctr53.i35 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 7), align 8, !dbg !190
  %70 = add i64 %gcov_ctr53.i35, 1, !dbg !190
  store i64 %70, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 7), align 8, !dbg !190
  br label %fail.i, !dbg !190

if.end24.i38:                                     ; preds = %if.end20.i34
  call void @__sanitizer_cov_trace_pc() #12, !dbg !191
  %gcov_ctr54.i37 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), align 16, !dbg !191
  %71 = add i64 %gcov_ctr54.i37, 1, !dbg !191
  store i64 %71, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 8), align 16, !dbg !191
  %72 = load i32, ptr @total_ref_count, align 4, !dbg !191
  %inc25.i = add i32 %72, 1, !dbg !191
  store i32 %inc25.i, ptr @total_ref_count, align 4, !dbg !191
  br label %if.end4, !dbg !192

fail.i:                                           ; preds = %if.then23.i36, %cleanup.i, %if.then2.i
  %ret.0.i = phi i32 [ %call21.i, %if.then23.i36 ], [ -12, %cleanup.i ], [ -12, %if.then2.i ], !dbg !193
  %73 = load i32, ptr @total_ref_count, align 4, !dbg !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73), !dbg !194
  %tobool26.not.i = icmp eq i32 %73, 0, !dbg !194
  br i1 %tobool26.not.i, label %for.body31.preheader.i, label %fail.i.if.end37.i39_crit_edge, !dbg !195

fail.i.if.end37.i39_crit_edge:                    ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !195
  br label %if.end37.i39, !dbg !195

for.body31.preheader.i:                           ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !196
  %gcov_ctr55.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %74 = add i64 %gcov_ctr55.i, 1, !dbg !196
  store i64 %74, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %75 = load ptr, ptr @perf_trace_buf, align 4, !dbg !197
  tail call void @free_percpu(ptr noundef %75) #13, !dbg !198
  store ptr null, ptr @perf_trace_buf, align 4, !dbg !199
  %gcov_ctr55.1.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %76 = add i64 %gcov_ctr55.1.i, 1, !dbg !196
  store i64 %76, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %77 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4, !dbg !197
  tail call void @free_percpu(ptr noundef %77) #13, !dbg !198
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4, !dbg !199
  %gcov_ctr55.2.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %78 = add i64 %gcov_ctr55.2.i, 1, !dbg !196
  store i64 %78, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %79 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4, !dbg !197
  tail call void @free_percpu(ptr noundef %79) #13, !dbg !198
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4, !dbg !199
  %gcov_ctr55.3.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %80 = add i64 %gcov_ctr55.3.i, 1, !dbg !196
  store i64 %80, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 9), align 8, !dbg !196
  %81 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4, !dbg !197
  tail call void @free_percpu(ptr noundef %81) #13, !dbg !198
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4, !dbg !199
  %gcov_ctr56.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 10), align 16, !dbg !200
  %82 = add i64 %gcov_ctr56.i, 1, !dbg !200
  store i64 %82, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 10), align 16, !dbg !200
  br label %if.end37.i39, !dbg !200

if.end37.i39:                                     ; preds = %for.body31.preheader.i, %fail.i.if.end37.i39_crit_edge
  %83 = ptrtoint ptr %perf_refcount.i to i32, !dbg !201
  call void @__asan_load4_noabort(i32 %83), !dbg !201
  %84 = load i32, ptr %perf_refcount.i, align 4, !dbg !201
  %dec.i = add i32 %84, -1, !dbg !201
  store i32 %dec.i, ptr %perf_refcount.i, align 4, !dbg !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i), !dbg !201
  %tobool39.not.i = icmp eq i32 %dec.i, 0, !dbg !201
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end37.i39.if.then3_crit_edge, !dbg !202

if.end37.i39.if.then3_crit_edge:                  ; preds = %if.end37.i39
  call void @__sanitizer_cov_trace_pc() #12, !dbg !202
  br label %if.then3, !dbg !202

if.then40.i:                                      ; preds = %if.end37.i39
  call void @__sanitizer_cov_trace_pc() #12, !dbg !203
  %gcov_ctr57.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 11), align 8, !dbg !203
  %85 = add i64 %gcov_ctr57.i, 1, !dbg !203
  store i64 %85, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 11), align 8, !dbg !203
  %perf_events41.i = getelementptr inbounds %struct.trace_event_call, ptr %tp_event, i32 0, i32 10, !dbg !204
  %86 = ptrtoint ptr %perf_events41.i to i32, !dbg !204
  call void @__asan_load4_noabort(i32 %86), !dbg !204
  %87 = load ptr, ptr %perf_events41.i, align 4, !dbg !204
  tail call void @free_percpu(ptr noundef %87) #13, !dbg !205
  %88 = ptrtoint ptr %perf_events41.i to i32, !dbg !206
  call void @__asan_store4_noabort(i32 %88), !dbg !206
  store ptr null, ptr %perf_events41.i, align 4, !dbg !206
  br label %if.then3, !dbg !207

if.then3:                                         ; preds = %if.then40.i, %if.end37.i39.if.then3_crit_edge
  %gcov_ctr58.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 12), align 16, !dbg !208
  %89 = add i64 %gcov_ctr58.i, 1, !dbg !208
  store i64 %89, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 12), align 16, !dbg !208
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.3, i32 0, i32 1), align 8, !dbg !209
  %90 = add i64 %gcov_ctr9, 1, !dbg !209
  store i64 %90, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.3, i32 0, i32 1), align 8, !dbg !209
  br label %cleanup, !dbg !210

if.end4:                                          ; preds = %if.end24.i38, %if.then.i23
  %gcov_ctr.i41 = load i64, ptr @__llvm_gcov_ctr.29, align 8
  %91 = add i64 %gcov_ctr.i41, 1
  store i64 %91, ptr @__llvm_gcov_ctr.29, align 8
  %92 = ptrtoint ptr %tp_event1.i to i32, !dbg !211
  call void @__asan_load4_noabort(i32 %92), !dbg !211
  %93 = load ptr, ptr %tp_event1.i, align 8, !dbg !211
  %class.i43 = getelementptr inbounds %struct.trace_event_call, ptr %93, i32 0, i32 1, !dbg !214
  %94 = ptrtoint ptr %class.i43 to i32, !dbg !214
  call void @__asan_load4_noabort(i32 %94), !dbg !214
  %95 = load ptr, ptr %class.i43, align 4, !dbg !214
  %reg.i44 = getelementptr inbounds %struct.trace_event_class, ptr %95, i32 0, i32 3, !dbg !215
  %96 = ptrtoint ptr %reg.i44 to i32, !dbg !215
  call void @__asan_load4_noabort(i32 %96), !dbg !215
  %97 = load ptr, ptr %reg.i44, align 4, !dbg !215
  %call.i45 = tail call i32 %97(ptr noundef %93, i32 noundef 4, ptr noundef %p_event) #13, !dbg !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45), !dbg !217
  %tobool6.not = icmp eq i32 %call.i45, 0, !dbg !217
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !217

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !218
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.3, i32 0, i32 3), align 8, !dbg !218
  %98 = add i64 %gcov_ctr11, 1, !dbg !218
  store i64 %98, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.3, i32 0, i32 3), align 8, !dbg !218
  tail call fastcc void @perf_trace_event_unreg(ptr noundef %p_event), !dbg !219
  br label %cleanup, !dbg !220

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !221
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.3, i32 0, i32 2), align 16, !dbg !221
  %99 = add i64 %gcov_ctr10, 1, !dbg !221
  store i64 %99, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.3, i32 0, i32 2), align 16, !dbg !221
  br label %cleanup, !dbg !221

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ %ret.0.i, %if.then3 ], [ %call.i45, %if.then7 ], [ 0, %if.end8 ], !dbg !222
  ret i32 %retval.0, !dbg !223
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_trace_destroy(ptr noundef %p_event) local_unnamed_addr #0 align 64 !dbg !224 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !225
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.5, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.5, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #13, !dbg !226
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.6, align 8
  %tp_event1.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 65, !dbg !227
  %2 = ptrtoint ptr %tp_event1.i to i32, !dbg !227
  call void @__asan_load4_noabort(i32 %2), !dbg !227
  %3 = load ptr, ptr %tp_event1.i, align 8, !dbg !227
  %class.i = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 1, !dbg !230
  %4 = ptrtoint ptr %class.i to i32, !dbg !230
  call void @__asan_load4_noabort(i32 %4), !dbg !230
  %5 = load ptr, ptr %class.i, align 4, !dbg !230
  %reg.i = getelementptr inbounds %struct.trace_event_class, ptr %5, i32 0, i32 3, !dbg !231
  %6 = ptrtoint ptr %reg.i to i32, !dbg !231
  call void @__asan_load4_noabort(i32 %6), !dbg !231
  %7 = load ptr, ptr %reg.i, align 4, !dbg !231
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 5, ptr noundef %p_event) #13, !dbg !232
  tail call fastcc void @perf_trace_event_unreg(ptr noundef %p_event), !dbg !233
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #13, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @perf_trace_event_unreg(ptr nocapture noundef readonly %p_event) unnamed_addr #0 align 64 !dbg !236 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !237
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 65, !dbg !238
  %0 = ptrtoint ptr %tp_event1 to i32, !dbg !238
  call void @__asan_load4_noabort(i32 %0), !dbg !238
  %1 = load ptr, ptr %tp_event1, align 8, !dbg !238
  %perf_refcount = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 9, !dbg !239
  %2 = ptrtoint ptr %perf_refcount to i32, !dbg !240
  call void @__asan_load4_noabort(i32 %2), !dbg !240
  %3 = load i32, ptr %perf_refcount, align 4, !dbg !240
  %dec = add i32 %3, -1, !dbg !240
  store i32 %dec, ptr %perf_refcount, align 4, !dbg !240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec), !dbg !241
  %cmp = icmp sgt i32 %dec, 0, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !242
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.7, align 16, !dbg !242
  %4 = add i64 %gcov_ctr, 1, !dbg !242
  store i64 %4, ptr @__llvm_gcov_ctr.7, align 16, !dbg !242
  br label %out, !dbg !242

if.end:                                           ; preds = %entry
  %class = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 1, !dbg !243
  %5 = ptrtoint ptr %class to i32, !dbg !243
  call void @__asan_load4_noabort(i32 %5), !dbg !243
  %6 = load ptr, ptr %class, align 4, !dbg !243
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %6, i32 0, i32 3, !dbg !244
  %7 = ptrtoint ptr %reg to i32, !dbg !244
  call void @__asan_load4_noabort(i32 %7), !dbg !244
  %8 = load ptr, ptr %reg, align 4, !dbg !244
  %call = tail call i32 %8(ptr noundef %1, i32 noundef 3, ptr noundef null) #13, !dbg !245
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !246
  %9 = add i64 %gcov_ctr.i, 1, !dbg !246
  store i64 %9, ptr @__llvm_gcov_ctr.33, align 8, !dbg !246
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #13, !dbg !246
  tail call void @synchronize_rcu() #13, !dbg !250
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 10, !dbg !251
  %10 = ptrtoint ptr %perf_events to i32, !dbg !251
  call void @__asan_load4_noabort(i32 %10), !dbg !251
  %11 = load ptr, ptr %perf_events, align 4, !dbg !251
  tail call void @free_percpu(ptr noundef %11) #13, !dbg !252
  %12 = ptrtoint ptr %perf_events to i32, !dbg !253
  call void @__asan_store4_noabort(i32 %12), !dbg !253
  store ptr null, ptr %perf_events, align 4, !dbg !253
  %13 = load i32, ptr @total_ref_count, align 4, !dbg !254
  %dec3 = add i32 %13, -1, !dbg !254
  store i32 %dec3, ptr @total_ref_count, align 4, !dbg !254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec3), !dbg !254
  %tobool.not = icmp eq i32 %dec3, 0, !dbg !254
  br i1 %tobool.not, label %if.then4, label %if.end.if.end7_crit_edge, !dbg !255

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !255
  br label %if.end7, !dbg !255

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !256
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !256
  %14 = add i64 %gcov_ctr8, 1, !dbg !256
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 1), align 8, !dbg !256
  %15 = load ptr, ptr @perf_trace_buf, align 4, !dbg !257
  tail call void @free_percpu(ptr noundef %15) #13, !dbg !258
  store ptr null, ptr @perf_trace_buf, align 4, !dbg !259
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  %16 = add i64 %gcov_ctr9, 1, !dbg !260
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  %17 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4, !dbg !257
  tail call void @free_percpu(ptr noundef %17) #13, !dbg !258
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4, !dbg !259
  %gcov_ctr9.1 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  %18 = add i64 %gcov_ctr9.1, 1, !dbg !260
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  %19 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4, !dbg !257
  tail call void @free_percpu(ptr noundef %19) #13, !dbg !258
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4, !dbg !259
  %gcov_ctr9.2 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  %20 = add i64 %gcov_ctr9.2, 1, !dbg !260
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  %21 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4, !dbg !257
  tail call void @free_percpu(ptr noundef %21) #13, !dbg !258
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4, !dbg !259
  %gcov_ctr9.3 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  %22 = add i64 %gcov_ctr9.3, 1, !dbg !260
  store i64 %22, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 2), align 16, !dbg !260
  br label %if.end7, !dbg !261

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 3), align 8, !dbg !261
  %23 = add i64 %gcov_ctr10, 1, !dbg !261
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.7, i32 0, i32 3), align 8, !dbg !261
  br label %out, !dbg !261

out:                                              ; preds = %if.end7, %if.then
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 8, !dbg !262
  %24 = ptrtoint ptr %flags.i to i32, !dbg !262
  call void @__asan_load4_noabort(i32 %24), !dbg !262
  %25 = load i32, ptr %flags.i, align 4, !dbg !262
  %and.i = and i32 %25, 32, !dbg !264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !264
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !264
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !265

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12, !dbg !266
  %gcov_ctr.i19 = load i64, ptr @__llvm_gcov_ctr.4, align 8, !dbg !266
  %26 = add i64 %gcov_ctr.i19, 1, !dbg !266
  store i64 %26, ptr @__llvm_gcov_ctr.4, align 8, !dbg !266
  tail call void @trace_event_dyn_put_ref(ptr noundef %1) #13, !dbg !267
  br label %trace_event_put_ref.exit, !dbg !267

if.else.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12, !dbg !268
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 1), align 8, !dbg !268
  %27 = add i64 %gcov_ctr1.i, 1, !dbg !268
  store i64 %27, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.4, i32 0, i32 1), align 8, !dbg !268
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 6, !dbg !269
  %29 = ptrtoint ptr %28 to i32, !dbg !269
  call void @__asan_load4_noabort(i32 %29), !dbg !269
  %30 = load ptr, ptr %28, align 4, !dbg !269
  tail call void @module_put(ptr noundef %30) #13, !dbg !270
  br label %trace_event_put_ref.exit

trace_event_put_ref.exit:                         ; preds = %if.else.i, %if.then.i
  ret void, !dbg !271
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_kprobe_init(ptr noundef %p_event, i1 noundef zeroext %is_retprobe) local_unnamed_addr #0 align 64 !dbg !272 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !273
  %0 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 9, !dbg !274
  %1 = ptrtoint ptr %0 to i32, !dbg !274
  call void @__asan_load8_noabort(i32 %1), !dbg !274
  %2 = load i64, ptr %0, align 8, !dbg !274
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2), !dbg !275
  %tobool.not = icmp eq i64 %2, 0, !dbg !275
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then, !dbg !275

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !275
  br label %if.end20, !dbg !275

if.then:                                          ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.9, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.9, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !276
  %4 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !276
  store i64 %4, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !276
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16, !dbg !284
  %5 = add i64 %gcov_ctr11.i.i, 1, !dbg !284
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16, !dbg !284
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.37, align 16, !dbg !285
  %6 = add i64 %gcov_ctr.i.i.i, 1, !dbg !285
  store i64 %6, ptr @__llvm_gcov_ctr.37, align 16, !dbg !285
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !288
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !288
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 128) #16, !dbg !289
  %tobool1.not = icmp eq ptr %call7.i.i, null, !dbg !290
  br i1 %tobool1.not, label %if.then2, label %if.end, !dbg !291

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12, !dbg !292
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.8, align 16, !dbg !292
  %8 = add i64 %gcov_ctr, 1, !dbg !292
  store i64 %8, ptr @__llvm_gcov_ctr.8, align 16, !dbg !292
  br label %cleanup, !dbg !292

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %0 to i32, !dbg !293
  call void @__asan_load8_noabort(i32 %9), !dbg !293
  %10 = load i64, ptr %0, align 8, !dbg !293
  %conv5 = trunc i64 %10 to i32, !dbg !293
  %11 = inttoptr i32 %conv5 to ptr, !dbg !293
  %call6 = tail call i32 @strncpy_from_user(ptr noundef nonnull %call7.i.i, ptr noundef %11, i32 noundef 128) #13, !dbg !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call6), !dbg !295
  %cmp7 = icmp eq i32 %call6, 128, !dbg !295
  br i1 %cmp7, label %if.end10.thread, label %if.end10, !dbg !296

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !297
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !297
  %12 = add i64 %gcov_ctr37, 1, !dbg !297
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !297
  br label %if.then13, !dbg !298

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6), !dbg !299
  %cmp11 = icmp slt i32 %call6, 0, !dbg !299
  br i1 %cmp11, label %if.end10.if.then13_crit_edge, label %if.end14, !dbg !298

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12, !dbg !298
  br label %if.then13, !dbg !298

if.then13:                                        ; preds = %if.end10.if.then13_crit_edge, %if.end10.thread
  %ret.063 = phi i32 [ -7, %if.end10.thread ], [ %call6, %if.end10.if.then13_crit_edge ]
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !300
  %13 = add i64 %gcov_ctr38, 1, !dbg !300
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !300
  br label %out, !dbg !300

if.end14:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %call7.i.i to i32, !dbg !301
  call void @__asan_load1_noabort(i32 %14), !dbg !301
  %15 = load i8, ptr %call7.i.i, align 8, !dbg !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15), !dbg !302
  %cmp16 = icmp eq i8 %15, 0, !dbg !302
  br i1 %cmp16, label %if.then18, label %if.end14.if.end19_crit_edge, !dbg !301

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12, !dbg !301
  br label %if.end19, !dbg !301

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12, !dbg !303
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 3), align 8, !dbg !303
  %16 = add i64 %gcov_ctr39, 1, !dbg !303
  store i64 %16, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 3), align 8, !dbg !303
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13, !dbg !304
  br label %if.end19, !dbg !305

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %func.0 = phi ptr [ null, %if.then18 ], [ %call7.i.i, %if.end14.if.end19_crit_edge ], !dbg !306
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 4), align 16, !dbg !307
  %17 = add i64 %gcov_ctr40, 1, !dbg !307
  store i64 %17, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 4), align 16, !dbg !307
  br label %if.end20, !dbg !307

if.end20:                                         ; preds = %if.end19, %entry.if.end20_crit_edge
  %func.1 = phi ptr [ %func.0, %if.end19 ], [ null, %entry.if.end20_crit_edge ], !dbg !306
  %18 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 10, !dbg !308
  %19 = ptrtoint ptr %18 to i32, !dbg !308
  call void @__asan_load8_noabort(i32 %19), !dbg !308
  %20 = load i64, ptr %18, align 8, !dbg !308
  %conv22 = trunc i64 %20 to i32, !dbg !309
  %21 = inttoptr i32 %conv22 to ptr, !dbg !310
  %call26 = tail call ptr @create_local_trace_kprobe(ptr noundef %func.1, ptr noundef %21, i32 noundef %conv22, i1 noundef zeroext %is_retprobe) #13, !dbg !311
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %22 = add i64 %gcov_ctr.i59, 1
  store i64 %22, ptr @__llvm_gcov_ctr.10, align 8
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr), !dbg !312
  br i1 %cmp.i, label %if.then28, label %if.end30, !dbg !316

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12, !dbg !317
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 5), align 8, !dbg !317
  %23 = add i64 %gcov_ctr41, 1, !dbg !317
  store i64 %23, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 5), align 8, !dbg !317
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %24 = add i64 %gcov_ctr.i60, 1
  store i64 %24, ptr @__llvm_gcov_ctr.11, align 8
  %25 = ptrtoint ptr %call26 to i32, !dbg !318
  br label %out, !dbg !321

if.end30:                                         ; preds = %if.end20
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #13, !dbg !322
  %call31 = tail call fastcc i32 @perf_trace_event_init(ptr noundef %call26, ptr noundef %p_event), !dbg !323
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31), !dbg !324
  %tobool32.not = icmp eq i32 %call31, 0, !dbg !324
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33, !dbg !324

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12, !dbg !324
  br label %if.end34, !dbg !324

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12, !dbg !325
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 6), align 16, !dbg !325
  %26 = add i64 %gcov_ctr42, 1, !dbg !325
  store i64 %26, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 6), align 16, !dbg !325
  tail call void @destroy_local_trace_kprobe(ptr noundef %call26) #13, !dbg !326
  br label %if.end34, !dbg !326

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 7), align 8, !dbg !327
  %27 = add i64 %gcov_ctr43, 1, !dbg !327
  store i64 %27, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 7), align 8, !dbg !327
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #13, !dbg !327
  br label %out, !dbg !327

out:                                              ; preds = %if.end34, %if.then28, %if.then13
  %func.2 = phi ptr [ %call7.i.i, %if.then13 ], [ %func.1, %if.then28 ], [ %func.1, %if.end34 ], !dbg !306
  %ret.1 = phi i32 [ %ret.063, %if.then13 ], [ %25, %if.then28 ], [ %call31, %if.end34 ], !dbg !306
  tail call void @kfree(ptr noundef %func.2) #13, !dbg !328
  br label %cleanup, !dbg !329

cleanup:                                          ; preds = %out, %if.then2
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %if.then2 ], !dbg !306
  ret i32 %retval.0, !dbg !330
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @create_local_trace_kprobe(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_local_trace_kprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_kprobe_destroy(ptr noundef %p_event) local_unnamed_addr #0 align 64 !dbg !331 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !332
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #13, !dbg !333
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.6, align 8
  %tp_event1.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 65, !dbg !334
  %2 = ptrtoint ptr %tp_event1.i to i32, !dbg !334
  call void @__asan_load4_noabort(i32 %2), !dbg !334
  %3 = load ptr, ptr %tp_event1.i, align 8, !dbg !334
  %class.i = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 1, !dbg !336
  %4 = ptrtoint ptr %class.i to i32, !dbg !336
  call void @__asan_load4_noabort(i32 %4), !dbg !336
  %5 = load ptr, ptr %class.i, align 4, !dbg !336
  %reg.i = getelementptr inbounds %struct.trace_event_class, ptr %5, i32 0, i32 3, !dbg !337
  %6 = ptrtoint ptr %reg.i to i32, !dbg !337
  call void @__asan_load4_noabort(i32 %6), !dbg !337
  %7 = load ptr, ptr %reg.i, align 4, !dbg !337
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 5, ptr noundef %p_event) #13, !dbg !338
  tail call fastcc void @perf_trace_event_unreg(ptr noundef %p_event), !dbg !339
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #13, !dbg !340
  %8 = ptrtoint ptr %tp_event1.i to i32, !dbg !341
  call void @__asan_load4_noabort(i32 %8), !dbg !341
  %9 = load ptr, ptr %tp_event1.i, align 8, !dbg !341
  tail call void @destroy_local_trace_kprobe(ptr noundef %9) #13, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_uprobe_init(ptr noundef %p_event, i32 noundef %ref_ctr_offset, i1 noundef zeroext %is_retprobe) local_unnamed_addr #0 align 64 !dbg !344 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !345
  %0 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 9, !dbg !346
  %1 = ptrtoint ptr %0 to i32, !dbg !346
  call void @__asan_load8_noabort(i32 %1), !dbg !346
  %2 = load i64, ptr %0, align 8, !dbg !346
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2), !dbg !347
  %tobool.not = icmp eq i64 %2, 0, !dbg !347
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !349
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.13, align 16, !dbg !349
  %3 = add i64 %gcov_ctr, 1, !dbg !349
  store i64 %3, ptr @__llvm_gcov_ctr.13, align 16, !dbg !349
  br label %cleanup, !dbg !349

if.end:                                           ; preds = %entry
  %conv3 = trunc i64 %2 to i32, !dbg !350
  %4 = inttoptr i32 %conv3 to ptr, !dbg !350
  %call = tail call ptr @strndup_user(ptr noundef %4, i32 noundef 4096) #13, !dbg !351
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.10, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr), !dbg !352
  br i1 %cmp.i, label %if.then5, label %if.end9, !dbg !354

if.then5:                                         ; preds = %if.end
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %6 = add i64 %gcov_ctr.i48, 1
  store i64 %6, ptr @__llvm_gcov_ctr.11, align 8
  %cmp7 = icmp eq ptr %call, inttoptr (i32 -22 to ptr), !dbg !355
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !356

cond.true:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12, !dbg !356
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !356
  %7 = add i64 %gcov_ctr29, 1, !dbg !356
  store i64 %7, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !356
  br label %cleanup, !dbg !356

cond.false:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12, !dbg !357
  %8 = ptrtoint ptr %call to i32, !dbg !357
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 2), align 16, !dbg !359
  %9 = add i64 %gcov_ctr30, 1, !dbg !359
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 2), align 16, !dbg !359
  br label %cleanup, !dbg !356

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call to i32, !dbg !360
  call void @__asan_load1_noabort(i32 %10), !dbg !360
  %11 = load i8, ptr %call, align 1, !dbg !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11), !dbg !361
  %cmp11 = icmp eq i8 %11, 0, !dbg !361
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !360

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12, !dbg !362
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 3), align 8, !dbg !362
  %12 = add i64 %gcov_ctr31, 1, !dbg !362
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 3), align 8, !dbg !362
  br label %out, !dbg !363

if.end14:                                         ; preds = %if.end9
  %13 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 21, i32 10, !dbg !364
  %14 = ptrtoint ptr %13 to i32, !dbg !364
  call void @__asan_load8_noabort(i32 %14), !dbg !364
  %15 = load i64, ptr %13, align 8, !dbg !364
  %conv16 = trunc i64 %15 to i32, !dbg !365
  %call18 = tail call ptr @create_local_trace_uprobe(ptr noundef %call, i32 noundef %conv16, i32 noundef %ref_ctr_offset, i1 noundef zeroext %is_retprobe) #13, !dbg !366
  %gcov_ctr.i49 = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %16 = add i64 %gcov_ctr.i49, 1
  store i64 %16, ptr @__llvm_gcov_ctr.10, align 8
  %cmp.i50 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr), !dbg !367
  br i1 %cmp.i50, label %if.then20, label %if.end22, !dbg !369

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12, !dbg !370
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 4), align 16, !dbg !370
  %17 = add i64 %gcov_ctr32, 1, !dbg !370
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 4), align 16, !dbg !370
  %gcov_ctr.i51 = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %18 = add i64 %gcov_ctr.i51, 1
  store i64 %18, ptr @__llvm_gcov_ctr.11, align 8
  %19 = ptrtoint ptr %call18 to i32, !dbg !371
  br label %out, !dbg !373

if.end22:                                         ; preds = %if.end14
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #13, !dbg !374
  %call23 = tail call fastcc i32 @perf_trace_event_init(ptr noundef %call18, ptr noundef %p_event), !dbg !375
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23), !dbg !376
  %tobool24.not = icmp eq i32 %call23, 0, !dbg !376
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25, !dbg !376

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12, !dbg !376
  br label %if.end26, !dbg !376

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12, !dbg !377
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 5), align 8, !dbg !377
  %20 = add i64 %gcov_ctr33, 1, !dbg !377
  store i64 %20, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 5), align 8, !dbg !377
  tail call void @destroy_local_trace_uprobe(ptr noundef %call18) #13, !dbg !378
  br label %if.end26, !dbg !378

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 6), align 16, !dbg !379
  %21 = add i64 %gcov_ctr34, 1, !dbg !379
  store i64 %21, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 6), align 16, !dbg !379
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #13, !dbg !379
  br label %out, !dbg !379

out:                                              ; preds = %if.end26, %if.then20, %if.then13
  %ret.0 = phi i32 [ -22, %if.then13 ], [ %19, %if.then20 ], [ %call23, %if.end26 ], !dbg !380
  tail call void @kfree(ptr noundef %call) #13, !dbg !381
  br label %cleanup, !dbg !382

cleanup:                                          ; preds = %out, %cond.false, %cond.true, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %if.then ], [ -7, %cond.true ], [ %8, %cond.false ], !dbg !380
  ret i32 %retval.0, !dbg !383
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @create_local_trace_uprobe(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_local_trace_uprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_uprobe_destroy(ptr noundef %p_event) local_unnamed_addr #0 align 64 !dbg !384 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !385
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.14, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #13, !dbg !386
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.6, align 8
  %tp_event1.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 65, !dbg !387
  %2 = ptrtoint ptr %tp_event1.i to i32, !dbg !387
  call void @__asan_load4_noabort(i32 %2), !dbg !387
  %3 = load ptr, ptr %tp_event1.i, align 8, !dbg !387
  %class.i = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 1, !dbg !389
  %4 = ptrtoint ptr %class.i to i32, !dbg !389
  call void @__asan_load4_noabort(i32 %4), !dbg !389
  %5 = load ptr, ptr %class.i, align 4, !dbg !389
  %reg.i = getelementptr inbounds %struct.trace_event_class, ptr %5, i32 0, i32 3, !dbg !390
  %6 = ptrtoint ptr %reg.i to i32, !dbg !390
  call void @__asan_load4_noabort(i32 %6), !dbg !390
  %7 = load ptr, ptr %reg.i, align 4, !dbg !390
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 5, ptr noundef %p_event) #13, !dbg !391
  tail call fastcc void @perf_trace_event_unreg(ptr noundef %p_event), !dbg !392
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #13, !dbg !393
  %8 = ptrtoint ptr %tp_event1.i to i32, !dbg !394
  call void @__asan_load4_noabort(i32 %8), !dbg !394
  %9 = load ptr, ptr %tp_event1.i, align 8, !dbg !394
  tail call void @destroy_local_trace_uprobe(ptr noundef %9) #13, !dbg !395
  ret void, !dbg !396
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_trace_add(ptr noundef %p_event, i32 noundef %flags) local_unnamed_addr #0 align 64 !dbg !397 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !398
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 65, !dbg !399
  %0 = ptrtoint ptr %tp_event1 to i32, !dbg !399
  call void @__asan_load4_noabort(i32 %0), !dbg !399
  %1 = load ptr, ptr %tp_event1, align 8, !dbg !399
  %and = and i32 %flags, 1, !dbg !400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !400
  %tobool.not = icmp eq i32 %and, 0, !dbg !400
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !401

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !401
  br label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !402
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.15, align 16, !dbg !402
  %2 = add i64 %gcov_ctr, 1, !dbg !402
  store i64 %2, ptr @__llvm_gcov_ctr.15, align 16, !dbg !402
  %state = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 25, i32 4, !dbg !403
  %3 = ptrtoint ptr %state to i32, !dbg !404
  call void @__asan_store4_noabort(i32 %3), !dbg !404
  store i32 1, ptr %state, align 4, !dbg !404
  br label %if.end, !dbg !402

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %class = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 1, !dbg !405
  %4 = ptrtoint ptr %class to i32, !dbg !405
  call void @__asan_load4_noabort(i32 %4), !dbg !405
  %5 = load ptr, ptr %class, align 4, !dbg !405
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %5, i32 0, i32 3, !dbg !406
  %6 = ptrtoint ptr %reg to i32, !dbg !406
  call void @__asan_load4_noabort(i32 %6), !dbg !406
  %7 = load ptr, ptr %reg, align 4, !dbg !406
  %call = tail call i32 %7(ptr noundef %1, i32 noundef 6, ptr noundef %p_event) #13, !dbg !407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !407
  %tobool2.not = icmp eq i32 %call, 0, !dbg !407
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup54_crit_edge, !dbg !408

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !408
  br label %cleanup54, !dbg !408

if.then3:                                         ; preds = %if.end
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 10, !dbg !409
  %8 = ptrtoint ptr %perf_events to i32, !dbg !409
  call void @__asan_load4_noabort(i32 %8), !dbg !409
  %9 = load ptr, ptr %perf_events, align 4, !dbg !409
  %tobool4.not = icmp eq ptr %9, null, !dbg !410
  br i1 %tobool4.not, label %land.rhs, label %if.end45, !dbg !410

land.rhs:                                         ; preds = %if.then3
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !410
  %10 = add i64 %gcov_ctr55, 1, !dbg !410
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !410
  %.b70 = load i1, ptr @perf_trace_add.__already_done, align 1, !dbg !410
  br i1 %.b70, label %land.rhs.cleanup54_crit_edge, label %if.then13, !dbg !410, !prof !411

land.rhs.cleanup54_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12, !dbg !410
  br label %cleanup54, !dbg !410

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12, !dbg !410
  store i1 true, ptr @perf_trace_add.__already_done, align 1, !dbg !410
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #13, !dbg !410
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 2), align 16, !dbg !410
  %11 = add i64 %gcov_ctr56, 1, !dbg !410
  store i64 %11, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 2), align 16, !dbg !410
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 3), align 8, !dbg !410
  %12 = add i64 %gcov_ctr57, 1, !dbg !410
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 3), align 8, !dbg !410
  br label %cleanup54, !dbg !410

if.end45:                                         ; preds = %if.then3
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 4), align 16, !dbg !412
  %13 = add i64 %gcov_ctr58, 1, !dbg !412
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 4), align 16, !dbg !412
  %14 = ptrtoint ptr %9 to i32, !dbg !412
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !413
  %15 = add i64 %gcov_ctr.i, 1, !dbg !413
  store i64 %15, ptr @__llvm_gcov_ctr.16, align 8, !dbg !413
  %16 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !413
  %and.i = and i32 %16, -16384, !dbg !417
  %17 = inttoptr i32 %and.i to ptr, !dbg !418
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3, !dbg !412
  %18 = ptrtoint ptr %cpu to i32, !dbg !412
  call void @__asan_load4_noabort(i32 %18), !dbg !412
  %19 = load i32, ptr %cpu, align 4, !dbg !412
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19, !dbg !412
  %20 = ptrtoint ptr %arrayidx to i32, !dbg !412
  call void @__asan_load4_noabort(i32 %20), !dbg !412
  %21 = load i32, ptr %arrayidx, align 4, !dbg !412
  %add = add i32 %21, %14, !dbg !412
  %22 = inttoptr i32 %add to ptr, !dbg !412
  %hlist_entry = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 6, !dbg !419
  %23 = ptrtoint ptr %22 to i32, !dbg !420
  call void @__asan_load4_noabort(i32 %23), !dbg !420
  %24 = load ptr, ptr %22, align 4, !dbg !420
  %25 = ptrtoint ptr %hlist_entry to i32, !dbg !424
  call void @__asan_store4_noabort(i32 %25), !dbg !424
  store ptr %24, ptr %hlist_entry, align 4, !dbg !424
  %pprev.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 6, i32 1, !dbg !425
  %26 = ptrtoint ptr %pprev.i to i32, !dbg !425
  call void @__asan_store4_noabort(i32 %26), !dbg !425
  store volatile ptr %22, ptr %pprev.i, align 4, !dbg !425
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !dbg !426, !srcloc !427
  %27 = ptrtoint ptr %22 to i32, !dbg !426
  call void @__asan_store4_noabort(i32 %27), !dbg !426
  store volatile ptr %hlist_entry, ptr %22, align 4, !dbg !426
  %gcov_ctr58.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  %28 = add i64 %gcov_ctr58.i, 1
  store i64 %28, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 2), align 16
  %tobool.not.i = icmp eq ptr %24, null, !dbg !428
  br i1 %tobool.not.i, label %if.end45.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i, !dbg !428

if.end45.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12, !dbg !428
  br label %hlist_add_head_rcu.exit, !dbg !428

do.body49.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12, !dbg !429
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1, !dbg !429
  %29 = ptrtoint ptr %pprev51.i to i32, !dbg !429
  call void @__asan_store4_noabort(i32 %29), !dbg !429
  store volatile ptr %hlist_entry, ptr %pprev51.i, align 4, !dbg !429
  %gcov_ctr59.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !429
  %30 = add i64 %gcov_ctr59.i, 1, !dbg !429
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 3), align 8, !dbg !429
  br label %hlist_add_head_rcu.exit, !dbg !429

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end45.hlist_add_head_rcu.exit_crit_edge
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 6), align 16, !dbg !430
  %31 = add i64 %gcov_ctr60, 1, !dbg !430
  store i64 %31, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 6), align 16, !dbg !430
  br label %cleanup54, !dbg !430

cleanup54:                                        ; preds = %hlist_add_head_rcu.exit, %if.then13, %land.rhs.cleanup54_crit_edge, %if.end.cleanup54_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 5), %land.rhs.cleanup54_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 5), %if.then13 ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 7), %hlist_add_head_rcu.exit ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 7), %if.end.cleanup54_crit_edge ]
  %retval.1 = phi i32 [ -22, %land.rhs.cleanup54_crit_edge ], [ -22, %if.then13 ], [ 0, %hlist_add_head_rcu.exit ], [ 0, %if.end.cleanup54_crit_edge ], !dbg !431
  %32 = ptrtoint ptr %.sink to i32, !dbg !431
  call void @__asan_load8_noabort(i32 %32), !dbg !431
  %gcov_ctr59 = load i64, ptr %.sink, align 8, !dbg !431
  %33 = add i64 %gcov_ctr59, 1, !dbg !431
  store i64 %33, ptr %.sink, align 8, !dbg !431
  ret i32 %retval.1, !dbg !432
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_trace_del(ptr noundef %p_event, i32 noundef %flags) local_unnamed_addr #0 align 64 !dbg !433 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !434
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.18, align 8
  %tp_event1 = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 65, !dbg !435
  %1 = ptrtoint ptr %tp_event1 to i32, !dbg !435
  call void @__asan_load4_noabort(i32 %1), !dbg !435
  %2 = load ptr, ptr %tp_event1, align 8, !dbg !435
  %class = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 1, !dbg !436
  %3 = ptrtoint ptr %class to i32, !dbg !436
  call void @__asan_load4_noabort(i32 %3), !dbg !436
  %4 = load ptr, ptr %class, align 4, !dbg !436
  %reg = getelementptr inbounds %struct.trace_event_class, ptr %4, i32 0, i32 3, !dbg !437
  %5 = ptrtoint ptr %reg to i32, !dbg !437
  call void @__asan_load4_noabort(i32 %5), !dbg !437
  %6 = load ptr, ptr %reg, align 4, !dbg !437
  %call = tail call i32 %6(ptr noundef %2, i32 noundef 7, ptr noundef %p_event) #13, !dbg !438
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !438
  %tobool.not = icmp eq i32 %call, 0, !dbg !438
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !439

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !439
  br label %if.end, !dbg !439

if.then:                                          ; preds = %entry
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !440
  %7 = add i64 %gcov_ctr2, 1, !dbg !440
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !440
  %hlist_entry = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 6, !dbg !441
  %8 = ptrtoint ptr %hlist_entry to i32, !dbg !442
  call void @__asan_load4_noabort(i32 %8), !dbg !442
  %9 = load ptr, ptr %hlist_entry, align 4, !dbg !442
  %pprev2.i.i = getelementptr inbounds %struct.perf_event, ptr %p_event, i32 0, i32 6, i32 1, !dbg !448
  %10 = ptrtoint ptr %pprev2.i.i to i32, !dbg !448
  call void @__asan_load4_noabort(i32 %10), !dbg !448
  %11 = load ptr, ptr %pprev2.i.i, align 4, !dbg !448
  %12 = ptrtoint ptr %11 to i32, !dbg !449
  call void @__asan_store4_noabort(i32 %12), !dbg !449
  store volatile ptr %9, ptr %11, align 4, !dbg !449
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.41, align 8, !dbg !449
  %13 = add i64 %gcov_ctr.i.i, 1, !dbg !449
  store i64 %13, ptr @__llvm_gcov_ctr.41, align 8, !dbg !449
  %tobool.not.i.i = icmp eq ptr %9, null, !dbg !450
  br i1 %tobool.not.i.i, label %if.then.hlist_del_rcu.exit_crit_edge, label %if.then.i.i, !dbg !450

if.then.hlist_del_rcu.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12, !dbg !450
  br label %hlist_del_rcu.exit, !dbg !450

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12, !dbg !451
  %gcov_ctr19.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !451
  %14 = add i64 %gcov_ctr19.i.i, 1, !dbg !451
  store i64 %14, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !451
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1, !dbg !451
  %15 = ptrtoint ptr %pprev14.i.i to i32, !dbg !451
  call void @__asan_store4_noabort(i32 %15), !dbg !451
  store volatile ptr %11, ptr %pprev14.i.i, align 4, !dbg !451
  br label %hlist_del_rcu.exit, !dbg !451

hlist_del_rcu.exit:                               ; preds = %if.then.i.i, %if.then.hlist_del_rcu.exit_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !452
  %16 = add i64 %gcov_ctr.i, 1, !dbg !452
  store i64 %16, ptr @__llvm_gcov_ctr.19, align 8, !dbg !452
  %17 = ptrtoint ptr %pprev2.i.i to i32, !dbg !452
  call void @__asan_store4_noabort(i32 %17), !dbg !452
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4, !dbg !452
  br label %if.end, !dbg !453

if.end:                                           ; preds = %hlist_del_rcu.exit, %entry.if.end_crit_edge
  ret void, !dbg !454
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @perf_trace_buf_alloc(i32 noundef %size, ptr noundef writeonly %regs, ptr nocapture noundef writeonly %rctxp) #0 align 64 !dbg !455 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !456
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %size), !dbg !457
  %cmp = icmp sgt i32 %size, 8192, !dbg !457
  br i1 %cmp, label %land.rhs, label %if.end40, !dbg !457

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.20, align 16, !dbg !457
  %0 = add i64 %gcov_ctr, 1, !dbg !457
  store i64 %0, ptr @__llvm_gcov_ctr.20, align 16, !dbg !457
  %.b82 = load i1, ptr @perf_trace_buf_alloc.__already_done, align 1, !dbg !457
  br i1 %.b82, label %land.rhs.if.then39_crit_edge, label %if.then, !dbg !457, !prof !411

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12, !dbg !457
  br label %if.then39, !dbg !457

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12, !dbg !457
  store i1 true, ptr @perf_trace_buf_alloc.__already_done, align 1, !dbg !457
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !457
  %1 = add i64 %gcov_ctr68, 1, !dbg !457
  store i64 %1, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !457
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 404, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %size, i32 noundef 8192) #13, !dbg !457
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !457
  %2 = add i64 %gcov_ctr69, 1, !dbg !457
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !457
  br label %if.then39, !dbg !457

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !458
  %3 = add i64 %gcov_ctr70, 1, !dbg !458
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !458
  br label %cleanup, !dbg !458

if.end40:                                         ; preds = %entry
  %call = tail call i32 @perf_swevent_get_recursion_context() #13, !dbg !459
  %4 = ptrtoint ptr %rctxp to i32, !dbg !460
  call void @__asan_store4_noabort(i32 %4), !dbg !460
  store i32 %call, ptr %rctxp, align 4, !dbg !460
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !461
  %cmp41 = icmp slt i32 %call, 0, !dbg !461
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !462

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12, !dbg !463
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !463
  %5 = add i64 %gcov_ctr71, 1, !dbg !463
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !463
  br label %cleanup, !dbg !463

if.end43:                                         ; preds = %if.end40
  %tobool44.not = icmp eq ptr %regs, null, !dbg !464
  br i1 %tobool44.not, label %if.end43.do.body54_crit_edge, label %do.body46, !dbg !464

if.end43.do.body54_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12, !dbg !464
  br label %do.body54, !dbg !464

do.body46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12, !dbg !465
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !465
  %6 = add i64 %gcov_ctr72, 1, !dbg !465
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 5), align 8, !dbg !465
  %arrayidx = getelementptr [4 x %struct.pt_regs], ptr @__perf_regs, i32 0, i32 %call, !dbg !465
  %7 = ptrtoint ptr %arrayidx to i32, !dbg !465
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !466
  %8 = add i64 %gcov_ctr.i, 1, !dbg !466
  store i64 %8, ptr @__llvm_gcov_ctr.16, align 8, !dbg !466
  %9 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !466
  %and.i = and i32 %9, -16384, !dbg !468
  %10 = inttoptr i32 %and.i to ptr, !dbg !469
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3, !dbg !465
  %11 = ptrtoint ptr %cpu to i32, !dbg !465
  call void @__asan_load4_noabort(i32 %11), !dbg !465
  %12 = load i32, ptr %cpu, align 4, !dbg !465
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12, !dbg !465
  %13 = ptrtoint ptr %arrayidx52 to i32, !dbg !465
  call void @__asan_load4_noabort(i32 %13), !dbg !465
  %14 = load i32, ptr %arrayidx52, align 4, !dbg !465
  %add = add i32 %14, %7, !dbg !465
  %15 = inttoptr i32 %add to ptr, !dbg !465
  %16 = ptrtoint ptr %regs to i32, !dbg !470
  call void @__asan_store4_noabort(i32 %16), !dbg !470
  store ptr %15, ptr %regs, align 4, !dbg !470
  br label %do.body54, !dbg !471

do.body54:                                        ; preds = %do.body46, %if.end43.do.body54_crit_edge
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 6), align 16, !dbg !472
  %17 = add i64 %gcov_ctr73, 1, !dbg !472
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 6), align 16, !dbg !472
  %arrayidx60 = getelementptr [4 x ptr], ptr @perf_trace_buf, i32 0, i32 %call, !dbg !472
  %18 = ptrtoint ptr %arrayidx60 to i32, !dbg !472
  call void @__asan_load4_noabort(i32 %18), !dbg !472
  %19 = load ptr, ptr %arrayidx60, align 4, !dbg !472
  %20 = ptrtoint ptr %19 to i32, !dbg !472
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !473
  %21 = add i64 %gcov_ctr.i84, 1, !dbg !473
  store i64 %21, ptr @__llvm_gcov_ctr.16, align 8, !dbg !473
  %22 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !473
  %and.i85 = and i32 %22, -16384, !dbg !475
  %23 = inttoptr i32 %and.i85 to ptr, !dbg !476
  %cpu63 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3, !dbg !472
  %24 = ptrtoint ptr %cpu63 to i32, !dbg !472
  call void @__asan_load4_noabort(i32 %24), !dbg !472
  %25 = load i32, ptr %cpu63, align 4, !dbg !472
  %arrayidx64 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25, !dbg !472
  %26 = ptrtoint ptr %arrayidx64 to i32, !dbg !472
  call void @__asan_load4_noabort(i32 %26), !dbg !472
  %27 = load i32, ptr %arrayidx64, align 4, !dbg !472
  %add65 = add i32 %27, %20, !dbg !472
  %28 = inttoptr i32 %add65 to ptr, !dbg !472
  %sub = add i32 %size, -8, !dbg !477
  %arrayidx66 = getelementptr i8, ptr %28, i32 %sub, !dbg !478
  %29 = ptrtoint ptr %arrayidx66 to i32, !dbg !479
  call void @__asan_storeN_noabort(i32 %29, i32 8), !dbg !479
  store i64 0, ptr %arrayidx66, align 1, !dbg !479
  br label %cleanup, !dbg !480

cleanup:                                          ; preds = %do.body54, %if.then42, %if.then39
  %retval.0 = phi ptr [ null, %if.then39 ], [ null, %if.then42 ], [ %28, %do.body54 ], !dbg !481
  ret ptr %retval.0, !dbg !482
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_swevent_get_recursion_context() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @perf_trace_buf_update(ptr nocapture noundef writeonly %record, i16 noundef zeroext %type) #0 align 64 !dbg !483 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !484
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.23, align 8, !dbg !485
  %1 = add i64 %gcov_ctr.i, 1, !dbg !485
  store i64 %1, ptr @__llvm_gcov_ctr.23, align 8, !dbg !485
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.42, align 8
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !dbg !488, !srcloc !492
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %4 = add i64 %gcov_ctr.i2.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.43, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %5 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.44, align 8
  %and.i.i.i = lshr i32 %3, 7, !dbg !493
  %and.i.lobit.i.i = and i32 %and.i.i.i, 1, !dbg !493
  %call2.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i) #13, !dbg !496
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %6 = add i64 %gcov_ctr.i2, 1
  store i64 %6, ptr @__llvm_gcov_ctr.22, align 8
  %conv.i = trunc i32 %call2.i.i to i8, !dbg !497
  %preempt_count.i = getelementptr inbounds %struct.trace_entry, ptr %record, i32 0, i32 2, !dbg !500
  %7 = ptrtoint ptr %preempt_count.i to i32, !dbg !501
  call void @__asan_store1_noabort(i32 %7), !dbg !501
  store i8 %conv.i, ptr %preempt_count.i, align 1, !dbg !501
  %gcov_ctr.i.i3 = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !502
  %8 = add i64 %gcov_ctr.i.i3, 1, !dbg !502
  store i64 %8, ptr @__llvm_gcov_ctr.16, align 8, !dbg !502
  %9 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !502
  %and.i.i = and i32 %9, -16384, !dbg !504
  %10 = inttoptr i32 %and.i.i to ptr, !dbg !505
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2, !dbg !506
  %11 = ptrtoint ptr %task.i to i32, !dbg !506
  call void @__asan_load4_noabort(i32 %11), !dbg !506
  %12 = load ptr, ptr %task.i, align 8, !dbg !506
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68, !dbg !507
  %13 = ptrtoint ptr %pid.i to i32, !dbg !507
  call void @__asan_load4_noabort(i32 %13), !dbg !507
  %14 = load i32, ptr %pid.i, align 8, !dbg !507
  %pid2.i = getelementptr inbounds %struct.trace_entry, ptr %record, i32 0, i32 3, !dbg !508
  %15 = ptrtoint ptr %pid2.i to i32, !dbg !509
  call void @__asan_store4_noabort(i32 %15), !dbg !509
  store i32 %14, ptr %pid2.i, align 4, !dbg !509
  %16 = ptrtoint ptr %record to i32, !dbg !510
  call void @__asan_store2_noabort(i32 %16), !dbg !510
  store i16 %type, ptr %record, align 4, !dbg !510
  %shr.i = lshr i32 %call2.i.i, 16, !dbg !511
  %conv4.i = trunc i32 %shr.i to i8, !dbg !512
  %flags.i = getelementptr inbounds %struct.trace_entry, ptr %record, i32 0, i32 1, !dbg !513
  %17 = ptrtoint ptr %flags.i to i32, !dbg !514
  call void @__asan_store1_noabort(i32 %17), !dbg !514
  store i8 %conv4.i, ptr %flags.i, align 2, !dbg !514
  ret void, !dbg !515
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @perf_ftrace_event_register(ptr nocapture noundef readnone %call, i32 noundef %type, ptr noundef %data) local_unnamed_addr #0 align 64 !dbg !516 {
entry:
  call void @__sanitizer_cov_trace_pc() #12, !dbg !517
  %0 = zext i32 %type to i64, !dbg !518
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values), !dbg !518
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge24
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge25
    i32 4, label %sw.bb2
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 7, label %sw.bb8
  ], !dbg !518

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !518
  br label %sw.bb1, !dbg !518

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !518
  br label %sw.bb1, !dbg !518

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !518
  br label %sw.bb, !dbg !518

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !518
  br label %sw.bb, !dbg !518

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !518
  br label %sw.epilog, !dbg !518

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge24
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 4), align 16, !dbg !519
  %1 = add i64 %gcov_ctr14, 1, !dbg !519
  store i64 %1, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 4), align 16, !dbg !519
  br label %sw.epilog, !dbg !519

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), align 8, !dbg !520
  %2 = add i64 %gcov_ctr15, 1, !dbg !520
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), align 8, !dbg !520
  br label %cleanup, !dbg !520

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !521
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.24, align 16, !dbg !521
  %3 = add i64 %gcov_ctr, 1, !dbg !521
  store i64 %3, ptr @__llvm_gcov_ctr.24, align 16, !dbg !521
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.25, align 8
  %ftrace_ops.i = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 67, !dbg !522
  %5 = ptrtoint ptr %ftrace_ops.i to i32, !dbg !525
  call void @__asan_store4_noabort(i32 %5), !dbg !525
  store ptr @perf_ftrace_function_call, ptr %ftrace_ops.i, align 4, !dbg !525
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !526
  %6 = load i32, ptr @nr_cpu_ids, align 4, !dbg !526
  %7 = inttoptr i32 %6 to ptr, !dbg !527
  %private.i = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 67, i32 3, !dbg !528
  %8 = ptrtoint ptr %private.i to i32, !dbg !529
  call void @__asan_store4_noabort(i32 %8), !dbg !529
  store ptr %7, ptr %private.i, align 4, !dbg !529
  %call.i = tail call i32 @register_ftrace_function(ptr noundef %ftrace_ops.i) #13, !dbg !530
  br label %cleanup, !dbg !531

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !532
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !532
  %9 = add i64 %gcov_ctr11, 1, !dbg !532
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !532
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %10 = add i64 %gcov_ctr.i20, 1
  store i64 %10, ptr @__llvm_gcov_ctr.26, align 8
  %ftrace_ops.i21 = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 67, !dbg !533
  %call.i22 = tail call i32 @unregister_ftrace_function(ptr noundef %ftrace_ops.i21) #13, !dbg !536
  tail call void @ftrace_free_filter(ptr noundef %ftrace_ops.i21) #13, !dbg !537
  br label %cleanup, !dbg !538

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !539
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !539
  %11 = add i64 %gcov_ctr12, 1, !dbg !539
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !539
  %gcov_ctr.i23 = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !540
  %12 = add i64 %gcov_ctr.i23, 1, !dbg !540
  store i64 %12, ptr @__llvm_gcov_ctr.16, align 8, !dbg !540
  %13 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !540
  %and.i = and i32 %13, -16384, !dbg !542
  %14 = inttoptr i32 %and.i to ptr, !dbg !543
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3, !dbg !539
  %15 = ptrtoint ptr %cpu to i32, !dbg !539
  call void @__asan_load4_noabort(i32 %15), !dbg !539
  %16 = load i32, ptr %cpu, align 4, !dbg !539
  %17 = inttoptr i32 %16 to ptr, !dbg !544
  %private = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 67, i32 3, !dbg !545
  %18 = ptrtoint ptr %private to i32, !dbg !546
  call void @__asan_store4_noabort(i32 %18), !dbg !546
  store ptr %17, ptr %private, align 4, !dbg !546
  br label %cleanup, !dbg !547

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !548
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !548
  %19 = add i64 %gcov_ctr13, 1, !dbg !548
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !548
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !548
  %20 = load i32, ptr @nr_cpu_ids, align 4, !dbg !548
  %21 = inttoptr i32 %20 to ptr, !dbg !549
  %private10 = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 67, i32 3, !dbg !550
  %22 = ptrtoint ptr %private10 to i32, !dbg !551
  call void @__asan_store4_noabort(i32 %22), !dbg !551
  store ptr %21, ptr %private10, align 4, !dbg !551
  br label %cleanup, !dbg !552

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 6), align 16, !dbg !553
  %23 = add i64 %gcov_ctr16, 1, !dbg !553
  store i64 %23, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 6), align 16, !dbg !553
  br label %cleanup, !dbg !553

cleanup:                                          ; preds = %sw.epilog, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 1, %sw.bb8 ], [ 1, %sw.bb6 ], [ %call.i22, %sw.bb4 ], [ %call.i, %sw.bb2 ], [ 0, %sw.bb1 ], !dbg !554
  ret i32 %retval.0, !dbg !555
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ftrace_event_is_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_perf_event_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_dyn_put_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_ftrace_function_call(i32 noundef %ip, i32 noundef %parent_ip, ptr noundef %ops, ptr nocapture noundef readnone %fregs) #0 align 64 !dbg !556 {
entry:
  %head = alloca %struct.hlist_head, align 4
  %regs = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !557
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head) #13, !dbg !558
  %0 = ptrtoint ptr %head to i32, !dbg !559
  call void @__asan_store4_noabort(i32 %0), !dbg !559
  store ptr inttoptr (i32 -1 to ptr), ptr %head, align 4, !dbg !559, !annotation !560
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %regs) #13, !dbg !561
  %1 = call ptr @memset(ptr %regs, i32 255, i32 72), !dbg !562
  %call = tail call zeroext i1 @rcu_is_watching() #13, !dbg !563
  br i1 %call, label %if.end, label %if.then, !dbg !564

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12, !dbg !565
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.45, align 16
  %2 = add i64 %gcov_ctr, 1
  store i64 %2, ptr @__llvm_gcov_ctr.45, align 16
  br label %cleanup, !dbg !566

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.46, align 8
  %gcov_ctr.i4.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !567
  %4 = add i64 %gcov_ctr.i4.i.i, 1, !dbg !567
  store i64 %4, ptr @__llvm_gcov_ctr.16, align 8, !dbg !567
  %5 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !567
  %and.i.i.i = and i32 %5, -16384, !dbg !574
  %6 = inttoptr i32 %and.i.i.i to ptr, !dbg !575
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2, !dbg !576
  %7 = ptrtoint ptr %task.i.i to i32, !dbg !576
  call void @__asan_load4_noabort(i32 %7), !dbg !576
  %8 = load ptr, ptr %task.i.i, align 8, !dbg !576
  %trace_recursion.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 194, !dbg !576
  %9 = ptrtoint ptr %trace_recursion.i.i to i32, !dbg !576
  call void @__asan_load4_noabort(i32 %9), !dbg !576
  %10 = load volatile i32, ptr %trace_recursion.i.i, align 4, !dbg !576
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %11 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.51, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %12 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.53, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %13 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.54, align 8
  %14 = add i64 %gcov_ctr.i4.i.i, 2, !dbg !577
  store i64 %14, ptr @__llvm_gcov_ctr.16, align 8, !dbg !577
  %15 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !577
  %and.i.i.i.i.i.i = and i32 %15, -16384, !dbg !587
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr, !dbg !588
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1, !dbg !589
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32, !dbg !589
  call void @__asan_load4_noabort(i32 %17), !dbg !589
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4, !dbg !589
  %and.i.i.i.i = and i32 %18, 15728640, !dbg !590
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i), !dbg !591
  %tobool.i.i.i.i = icmp ne i32 %and.i.i.i.i, 0, !dbg !591
  %and3.i.i.i.i = and i32 %18, 16711680, !dbg !592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i), !dbg !593
  %tobool4.i.not.i.i.i = icmp eq i32 %and3.i.i.i.i, 0, !dbg !593
  %conv9.i.neg.i.i.i = sext i1 %tobool.i.i.i.i to i32, !dbg !594
  %and12.i.i.i.i = and i32 %18, 16711936, !dbg !595
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i.i), !dbg !596
  %tobool13.i.i.i.i = icmp ne i32 %and12.i.i.i.i, 0, !dbg !596
  %lnot.ext17.i.neg.i.i.i = sext i1 %tobool13.i.i.i.i to i32, !dbg !597
  %add10.i.neg.i.i.i = select i1 %tobool4.i.not.i.i.i, i32 3, i32 2, !dbg !594
  %add19.i.neg.i.i.i = add nsw i32 %add10.i.neg.i.i.i, %conv9.i.neg.i.i.i, !dbg !598
  %sub.i.i.i = add nsw i32 %add19.i.neg.i.i.i, %lnot.ext17.i.neg.i.i.i, !dbg !599
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i.i, !dbg !600
  %and.i.i = and i32 %shl.i.i, %10, !dbg !600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !600
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !600
  br i1 %tobool.not.i.i, label %if.end.if.end4_crit_edge, label %if.then.i.i, !dbg !600, !prof !411

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12, !dbg !600
  br label %if.end4, !dbg !600

if.then.i.i:                                      ; preds = %if.end
  %and6.i.i = and i32 %10, 16, !dbg !601
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i), !dbg !601
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0, !dbg !601
  br i1 %tobool7.not.i.i, label %if.end31.i.i, label %do.body9.i.i, !dbg !602

do.body9.i.i:                                     ; preds = %if.then.i.i
  %and13.i.i = and i32 %10, 65536, !dbg !603
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i), !dbg !603
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0, !dbg !603
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %do.body9.i.i.if.then3_crit_edge, !dbg !603

do.body9.i.i.if.then3_crit_edge:                  ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !603
  br label %if.then3, !dbg !603

if.then15.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !603
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.50, align 16, !dbg !603
  %19 = add i64 %gcov_ctr.i.i, 1, !dbg !603
  store i64 %19, ptr @__llvm_gcov_ctr.50, align 16, !dbg !603
  %or.i.i = or i32 %10, 65536, !dbg !603
  %20 = ptrtoint ptr %trace_recursion.i.i to i32, !dbg !603
  call void @__asan_store4_noabort(i32 %20), !dbg !603
  store i32 %or.i.i, ptr %trace_recursion.i.i, align 4, !dbg !603
  tail call void @ftrace_record_recursion(i32 noundef %ip, i32 noundef %parent_ip) #13, !dbg !603
  %21 = ptrtoint ptr %task.i.i to i32, !dbg !603
  call void @__asan_load4_noabort(i32 %21), !dbg !603
  %22 = load ptr, ptr %task.i.i, align 8, !dbg !603
  %trace_recursion25.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 194, !dbg !603
  %23 = ptrtoint ptr %trace_recursion25.i.i to i32, !dbg !603
  call void @__asan_load4_noabort(i32 %23), !dbg !603
  %24 = load i32, ptr %trace_recursion25.i.i, align 4, !dbg !603
  %and26.i.i = and i32 %24, -65537, !dbg !603
  store i32 %and26.i.i, ptr %trace_recursion25.i.i, align 4, !dbg !603
  br label %if.then3, !dbg !603

if.end31.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12, !dbg !604
  %gcov_ctr43.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 2), align 16, !dbg !604
  %25 = add i64 %gcov_ctr43.i.i, 1, !dbg !604
  store i64 %25, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 2), align 16, !dbg !604
  br label %if.end4, !dbg !604

if.then3:                                         ; preds = %if.then15.i.i, %do.body9.i.i.if.then3_crit_edge
  %gcov_ctr44.i.i49 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !605
  %26 = add i64 %gcov_ctr44.i.i49, 1, !dbg !605
  store i64 %26, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !605
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8
  %27 = add i64 %gcov_ctr19, 1
  store i64 %27, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8
  br label %cleanup, !dbg !606

if.end4:                                          ; preds = %if.end31.i.i, %if.end.if.end4_crit_edge
  %bit.0.i.i = phi i32 [ 4, %if.end31.i.i ], [ %sub.i.i.i, %if.end.if.end4_crit_edge ], !dbg !605
  %shl33.i.i = shl nuw nsw i32 1, %bit.0.i.i, !dbg !607
  %or34.i.i = or i32 %shl33.i.i, %10, !dbg !608
  %28 = ptrtoint ptr %task.i.i to i32, !dbg !609
  call void @__asan_load4_noabort(i32 %28), !dbg !609
  %29 = load ptr, ptr %task.i.i, align 8, !dbg !609
  %trace_recursion37.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 194, !dbg !610
  %30 = ptrtoint ptr %trace_recursion37.i.i to i32, !dbg !611
  call void @__asan_store4_noabort(i32 %30), !dbg !611
  store i32 %or34.i.i, ptr %trace_recursion37.i.i, align 4, !dbg !611
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !612, !srcloc !613
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %31 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.52, align 8
  %gcov_ctr.i.i2.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 8, !dbg !614
  %32 = add i64 %gcov_ctr.i.i2.i.i, 1, !dbg !614
  store i64 %32, ptr @__llvm_gcov_ctr.55, align 8, !dbg !614
  %gcov_ctr.i.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !619
  %33 = add i64 %gcov_ctr.i.i.i3.i.i, 1, !dbg !619
  store i64 %33, ptr @__llvm_gcov_ctr.16, align 8, !dbg !619
  %34 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !619
  %and.i.i.i.i.i = and i32 %34, -16384, !dbg !621
  %35 = inttoptr i32 %and.i.i.i.i.i to ptr, !dbg !622
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1, !dbg !623
  %36 = ptrtoint ptr %preempt_count.i.i.i.i to i32, !dbg !624
  call void @__asan_load4_noabort(i32 %36), !dbg !624
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4, !dbg !624
  %add.i.i.i = add i32 %37, 1, !dbg !624
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4, !dbg !624
  tail call void asm sideeffect "", "~{memory}"() #13, !dbg !625, !srcloc !626
  %gcov_ctr44.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 3), align 8, !dbg !605
  %38 = add i64 %gcov_ctr44.i.i, 1, !dbg !605
  store i64 %38, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 3), align 8, !dbg !605
  %private = getelementptr inbounds %struct.ftrace_ops, ptr %ops, i32 0, i32 3, !dbg !627
  %39 = ptrtoint ptr %private to i32, !dbg !627
  call void @__asan_load4_noabort(i32 %39), !dbg !627
  %40 = load ptr, ptr %private, align 4, !dbg !627
  %41 = ptrtoint ptr %40 to i32, !dbg !628
  %gcov_ctr.i44 = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !629
  %42 = add i64 %gcov_ctr.i44, 1, !dbg !629
  store i64 %42, ptr @__llvm_gcov_ctr.16, align 8, !dbg !629
  %43 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !629
  %and.i = and i32 %43, -16384, !dbg !631
  %44 = inttoptr i32 %and.i to ptr, !dbg !632
  %cpu = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3, !dbg !633
  %45 = ptrtoint ptr %cpu to i32, !dbg !633
  call void @__asan_load4_noabort(i32 %45), !dbg !633
  %46 = load i32, ptr %cpu, align 4, !dbg !633
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %41), !dbg !634
  %cmp6.not = icmp eq i32 %46, %41, !dbg !634
  br i1 %cmp6.not, label %if.end8, label %if.then7, !dbg !628

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12, !dbg !635
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !635
  %47 = add i64 %gcov_ctr20, 1, !dbg !635
  store i64 %47, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !635
  br label %out, !dbg !635

if.end8:                                          ; preds = %if.end4
  %hlist_entry = getelementptr i8, ptr %ops, i32 -880, !dbg !636
  %48 = ptrtoint ptr %head to i32, !dbg !637
  call void @__asan_store4_noabort(i32 %48), !dbg !637
  store ptr %hlist_entry, ptr %head, align 4, !dbg !637
  %49 = call ptr @memset(ptr %regs, i32 0, i32 72), !dbg !638
  %gcov_ctr.i45 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %50 = add i64 %gcov_ctr.i45, 1
  store i64 %50, ptr @__llvm_gcov_ctr.47, align 8
  %51 = tail call ptr @llvm.returnaddress(i32 0) #13, !dbg !639
  %52 = ptrtoint ptr %51 to i32, !dbg !639
  %arrayidx.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 15, !dbg !639
  %53 = ptrtoint ptr %arrayidx.i to i32, !dbg !639
  call void @__asan_store4_noabort(i32 %53), !dbg !639
  store i32 %52, ptr %arrayidx.i, align 4, !dbg !639
  %54 = tail call ptr @llvm.frameaddress.p0(i32 0) #13, !dbg !639
  %55 = ptrtoint ptr %54 to i32, !dbg !639
  %arrayidx2.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 11, !dbg !639
  %56 = ptrtoint ptr %arrayidx2.i to i32, !dbg !639
  call void @__asan_store4_noabort(i32 %56), !dbg !639
  store i32 %55, ptr %arrayidx2.i, align 4, !dbg !639
  %57 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !639
  %arrayidx4.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 13, !dbg !639
  %58 = ptrtoint ptr %arrayidx4.i to i32, !dbg !639
  call void @__asan_store4_noabort(i32 %58), !dbg !639
  store i32 %57, ptr %arrayidx4.i, align 4, !dbg !639
  %arrayidx6.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 16, !dbg !639
  %59 = ptrtoint ptr %arrayidx6.i to i32, !dbg !639
  call void @__asan_store4_noabort(i32 %59), !dbg !639
  store i32 19, ptr %arrayidx6.i, align 4, !dbg !639
  %call.i = tail call i32 @perf_swevent_get_recursion_context() #13, !dbg !642
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !644
  %cmp41.i = icmp slt i32 %call.i, 0, !dbg !644
  br i1 %cmp41.i, label %perf_trace_buf_alloc.exit.thread, label %perf_trace_buf_alloc.exit, !dbg !645

perf_trace_buf_alloc.exit.thread:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12, !dbg !646
  %gcov_ctr71.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !646
  %60 = add i64 %gcov_ctr71.i, 1, !dbg !646
  store i64 %60, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 4), align 16, !dbg !646
  br label %if.then10, !dbg !647

perf_trace_buf_alloc.exit:                        ; preds = %if.end8
  %gcov_ctr73.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 6), align 16, !dbg !648
  %61 = add i64 %gcov_ctr73.i, 1, !dbg !648
  store i64 %61, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 6), align 16, !dbg !648
  %arrayidx60.i = getelementptr [4 x ptr], ptr @perf_trace_buf, i32 0, i32 %call.i, !dbg !648
  %62 = ptrtoint ptr %arrayidx60.i to i32, !dbg !648
  call void @__asan_load4_noabort(i32 %62), !dbg !648
  %63 = load ptr, ptr %arrayidx60.i, align 4, !dbg !648
  %64 = ptrtoint ptr %63 to i32, !dbg !648
  %gcov_ctr.i84.i = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !649
  %65 = add i64 %gcov_ctr.i84.i, 1, !dbg !649
  store i64 %65, ptr @__llvm_gcov_ctr.16, align 8, !dbg !649
  %66 = tail call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !649
  %and.i85.i = and i32 %66, -16384, !dbg !651
  %67 = inttoptr i32 %and.i85.i to ptr, !dbg !652
  %cpu63.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3, !dbg !648
  %68 = ptrtoint ptr %cpu63.i to i32, !dbg !648
  call void @__asan_load4_noabort(i32 %68), !dbg !648
  %69 = load i32, ptr %cpu63.i, align 4, !dbg !648
  %arrayidx64.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69, !dbg !648
  %70 = ptrtoint ptr %arrayidx64.i to i32, !dbg !648
  call void @__asan_load4_noabort(i32 %70), !dbg !648
  %71 = load i32, ptr %arrayidx64.i, align 4, !dbg !648
  %add65.i = add i32 %71, %64, !dbg !648
  %72 = inttoptr i32 %add65.i to ptr, !dbg !648
  %arrayidx66.i = getelementptr i8, ptr %72, i32 12, !dbg !653
  %73 = ptrtoint ptr %arrayidx66.i to i32, !dbg !654
  call void @__asan_storeN_noabort(i32 %73, i32 8), !dbg !654
  store i64 0, ptr %arrayidx66.i, align 1, !dbg !654
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add65.i), !dbg !655
  %tobool.not = icmp eq i32 %add65.i, 0, !dbg !655
  br i1 %tobool.not, label %perf_trace_buf_alloc.exit.if.then10_crit_edge, label %if.end11, !dbg !647

perf_trace_buf_alloc.exit.if.then10_crit_edge:    ; preds = %perf_trace_buf_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !647
  br label %if.then10, !dbg !647

if.then10:                                        ; preds = %perf_trace_buf_alloc.exit.if.then10_crit_edge, %perf_trace_buf_alloc.exit.thread
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 3), align 8, !dbg !656
  %74 = add i64 %gcov_ctr21, 1, !dbg !656
  store i64 %74, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 3), align 8, !dbg !656
  br label %out, !dbg !656

if.end11:                                         ; preds = %perf_trace_buf_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12, !dbg !657
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 4), align 16, !dbg !657
  %75 = add i64 %gcov_ctr22, 1, !dbg !657
  store i64 %75, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 4), align 16, !dbg !657
  %ip12 = getelementptr inbounds %struct.ftrace_entry, ptr %72, i32 0, i32 1, !dbg !658
  %76 = ptrtoint ptr %ip12 to i32, !dbg !659
  call void @__asan_store4_noabort(i32 %76), !dbg !659
  store i32 %ip, ptr %ip12, align 4, !dbg !659
  %77 = ptrtoint ptr %arrayidx66.i to i32, !dbg !660
  call void @__asan_store4_noabort(i32 %77), !dbg !660
  store i32 %parent_ip, ptr %arrayidx66.i, align 4, !dbg !660
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %78 = add i64 %gcov_ctr.i46, 1
  store i64 %78, ptr @__llvm_gcov_ctr.48, align 8
  call void @perf_tp_event(i16 noundef zeroext 1, i64 noundef 1, ptr noundef nonnull %72, i32 noundef 20, ptr noundef nonnull %regs, ptr noundef nonnull %head, i32 noundef %call.i, ptr noundef null) #13, !dbg !661
  br label %out, !dbg !664

out:                                              ; preds = %if.end11, %if.then10, %if.then7
  %gcov_ctr.i31 = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %79 = add i64 %gcov_ctr.i31, 1
  store i64 %79, ptr @__llvm_gcov_ctr.49, align 8
  call void asm sideeffect "", "~{memory}"() #13, !dbg !665, !srcloc !670
  %gcov_ctr.i.i.i32 = load i64, ptr @__llvm_gcov_ctr.57, align 8
  %80 = add i64 %gcov_ctr.i.i.i32, 1
  store i64 %80, ptr @__llvm_gcov_ctr.57, align 8
  %gcov_ctr.i.i.i.i33 = load i64, ptr @__llvm_gcov_ctr.55, align 8, !dbg !671
  %81 = add i64 %gcov_ctr.i.i.i.i33, 1, !dbg !671
  store i64 %81, ptr @__llvm_gcov_ctr.55, align 8, !dbg !671
  %gcov_ctr.i.i.i.i.i34 = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !675
  %82 = add i64 %gcov_ctr.i.i.i.i.i34, 1, !dbg !675
  store i64 %82, ptr @__llvm_gcov_ctr.16, align 8, !dbg !675
  %83 = call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !675
  %and.i.i.i.i.i35 = and i32 %83, -16384, !dbg !677
  %84 = inttoptr i32 %and.i.i.i.i.i35 to ptr, !dbg !678
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1, !dbg !679
  %85 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32, !dbg !680
  call void @__asan_load4_noabort(i32 %85), !dbg !680
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4, !dbg !680
  %sub.i.i.i37 = add i32 %86, -1, !dbg !680
  store volatile i32 %sub.i.i.i37, ptr %preempt_count.i.i.i.i36, align 4, !dbg !680
  %gcov_ctr.i.i38 = load i64, ptr @__llvm_gcov_ctr.56, align 8, !dbg !681
  %87 = add i64 %gcov_ctr.i.i38, 1, !dbg !681
  store i64 %87, ptr @__llvm_gcov_ctr.56, align 8, !dbg !681
  call void asm sideeffect "", "~{memory}"() #13, !dbg !681, !srcloc !682
  %neg.i.i = xor i32 %shl33.i.i, -1, !dbg !683
  %gcov_ctr.i3.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !684
  %88 = add i64 %gcov_ctr.i3.i.i, 1, !dbg !684
  store i64 %88, ptr @__llvm_gcov_ctr.16, align 8, !dbg !684
  %89 = call i32 @llvm.read_register.i32(metadata !18) #13, !dbg !684
  %and.i.i.i40 = and i32 %89, -16384, !dbg !686
  %90 = inttoptr i32 %and.i.i.i40 to ptr, !dbg !687
  %task.i.i41 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2, !dbg !683
  %91 = ptrtoint ptr %task.i.i41 to i32, !dbg !683
  call void @__asan_load4_noabort(i32 %91), !dbg !683
  %92 = load ptr, ptr %task.i.i41, align 8, !dbg !683
  %trace_recursion.i.i42 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 194, !dbg !683
  %93 = ptrtoint ptr %trace_recursion.i.i42 to i32, !dbg !683
  call void @__asan_load4_noabort(i32 %93), !dbg !683
  %94 = load i32, ptr %trace_recursion.i.i42, align 4, !dbg !683
  %and.i.i43 = and i32 %94, %neg.i.i, !dbg !683
  store i32 %and.i.i43, ptr %trace_recursion.i.i42, align 4, !dbg !683
  br label %cleanup, !dbg !688

cleanup:                                          ; preds = %out, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %regs) #13, !dbg !688
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head) #13, !dbg !688
  ret void, !dbg !688
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_record_recursion(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_tp_event(i16 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_free_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #8 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1037753130) #13
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #13
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #13
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 57
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #12
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcda_summary_info() #13
  tail call void @llvm_gcda_end_file() #13
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #9 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.3, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.4, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.5, align 8
  store i64 0, ptr @__llvm_gcov_ctr.6, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.7, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.8, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.9, align 8
  store i64 0, ptr @__llvm_gcov_ctr.10, align 8
  store i64 0, ptr @__llvm_gcov_ctr.11, align 8
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.13, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.15, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.16, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.17, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.18, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.20, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.24, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.27, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.28, i8 0, i64 104, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.30, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.32, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.34, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.36, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.37, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.38, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.40, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.41, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.42, align 8
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.45, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  store i64 0, ptr @__llvm_gcov_ctr.49, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.50, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  store i64 0, ptr @__llvm_gcov_ctr.52, align 8
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  store i64 0, ptr @__llvm_gcov_ctr.54, align 8
  store i64 0, ptr @__llvm_gcov_ctr.55, align 8
  store i64 0, ptr @__llvm_gcov_ctr.56, align 8
  store i64 0, ptr @__llvm_gcov_ctr.57, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #8 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #13
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { noinline nounwind uwtable(sync) }
attributes #9 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind uwtable(sync) }
attributes #12 = { nomerge }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(2) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !7, !8, !10, !12, !14, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.gcov = !{!27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_event_perf.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_event_perf.c", i32 372, i32 7}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/trace/trace_event_perf.c", i32 402, i32 6}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_perf_trace_buf_alloc, !9, !"__ksymtab_perf_trace_buf_alloc", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_event_perf.c", i32 419, i32 1}
!10 = !{ptr @_kbl_addr_perf_trace_buf_alloc, !11, !"_kbl_addr_perf_trace_buf_alloc", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_event_perf.c", i32 420, i32 1}
!12 = !{ptr @_kbl_addr_perf_trace_buf_update, !13, !"_kbl_addr_perf_trace_buf_update", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_event_perf.c", i32 428, i32 1}
!14 = !{ptr @perf_trace_buf, !15, !"perf_trace_buf", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_event_perf.c", i32 15, i32 23}
!16 = !{ptr @total_ref_count, !17, !"total_ref_count", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_event_perf.c", i32 25, i32 12}
!18 = !{!"sp"}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_event_perf.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_event_perf.gcda", !0}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = distinct !DISubprogram(name: "perf_trace_init", scope: !1, file: !1, line: 217, type: !30, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!30 = !DISubroutineType(types: !31)
!31 = !{}
!32 = !DILocation(line: 218, scope: !29)
!33 = !DILocation(line: 220, column: 31, scope: !29)
!34 = !DILocation(line: 223, column: 2, scope: !29)
!35 = !DILocation(line: 224, column: 2, scope: !29)
!36 = !DILocation(line: 225, column: 23, scope: !29)
!37 = !DILocation(line: 225, column: 7, scope: !29)
!38 = !DILocation(line: 225, column: 28, scope: !29)
!39 = !DILocation(line: 225, column: 40, scope: !29)
!40 = !DILocation(line: 226, column: 7, scope: !29)
!41 = !DILocation(line: 226, column: 17, scope: !29)
!42 = !DILocation(line: 226, column: 23, scope: !29)
!43 = !DILocation(line: 226, column: 26, scope: !29)
!44 = !DILocation(line: 226, column: 36, scope: !29)
!45 = !DILocation(line: 226, column: 43, scope: !29)
!46 = !DILocation(line: 226, column: 47, scope: !29)
!47 = !DILocation(line: 227, column: 31, scope: !29)
!48 = !DILocation(line: 402, column: 12, scope: !49, inlinedAt: !51)
!49 = distinct !DISubprogram(name: "trace_event_try_get_ref", scope: !50, file: !50, line: 400, type: !30, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!50 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!51 = distinct !DILocation(line: 227, column: 7, scope: !29)
!52 = !DILocation(line: 402, column: 18, scope: !49, inlinedAt: !51)
!53 = !DILocation(line: 402, column: 6, scope: !49, inlinedAt: !51)
!54 = !DILocation(line: 403, column: 38, scope: !49, inlinedAt: !51)
!55 = !DILocation(line: 403, column: 10, scope: !49, inlinedAt: !51)
!56 = !DILocation(line: 405, column: 25, scope: !49, inlinedAt: !51)
!57 = !DILocation(line: 405, column: 31, scope: !49, inlinedAt: !51)
!58 = !DILocation(line: 405, column: 10, scope: !49, inlinedAt: !51)
!59 = !DILocation(line: 228, column: 10, scope: !29)
!60 = !DILocation(line: 229, column: 8, scope: !29)
!61 = !DILocation(line: 230, column: 25, scope: !29)
!62 = !DILocation(line: 410, column: 12, scope: !63, inlinedAt: !64)
!63 = distinct !DISubprogram(name: "trace_event_put_ref", scope: !50, file: !50, line: 408, type: !30, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!64 = distinct !DILocation(line: 230, column: 5, scope: !29)
!65 = !DILocation(line: 410, column: 18, scope: !63, inlinedAt: !64)
!66 = !DILocation(line: 410, column: 6, scope: !63, inlinedAt: !64)
!67 = !DILocation(line: 411, column: 27, scope: !63, inlinedAt: !64)
!68 = !DILocation(line: 411, column: 3, scope: !63, inlinedAt: !64)
!69 = !DILocation(line: 413, column: 14, scope: !63, inlinedAt: !64)
!70 = !DILocation(line: 413, column: 20, scope: !63, inlinedAt: !64)
!71 = !DILocation(line: 413, column: 3, scope: !63, inlinedAt: !64)
!72 = !DILocation(line: 231, column: 4, scope: !29)
!73 = distinct !{!73, !35, !74}
!74 = !DILocation(line: 233, column: 2, scope: !29)
!75 = !DILocation(line: 0, scope: !29)
!76 = !DILocation(line: 234, column: 2, scope: !29)
!77 = !DILocation(line: 236, column: 2, scope: !29)
!78 = distinct !DISubprogram(name: "perf_trace_event_init", scope: !1, file: !1, line: 195, type: !30, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!79 = !DILocation(line: 197, scope: !78)
!80 = !DILocation(line: 32, column: 16, scope: !81, inlinedAt: !82)
!81 = distinct !DISubprogram(name: "perf_trace_event_perm", scope: !1, file: !1, line: 27, type: !30, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!82 = distinct !DILocation(line: 200, column: 8, scope: !78)
!83 = !DILocation(line: 32, column: 6, scope: !81, inlinedAt: !82)
!84 = !DILocation(line: 33, column: 9, scope: !81, inlinedAt: !82)
!85 = !DILocation(line: 34, column: 7, scope: !81, inlinedAt: !82)
!86 = !DILocation(line: 35, column: 11, scope: !81, inlinedAt: !82)
!87 = !DILocation(line: 35, column: 4, scope: !81, inlinedAt: !82)
!88 = !DILocation(line: 36, column: 2, scope: !81, inlinedAt: !82)
!89 = !DILocation(line: 42, column: 15, scope: !81, inlinedAt: !82)
!90 = !DILocation(line: 42, column: 6, scope: !81, inlinedAt: !82)
!91 = !DILocation(line: 43, column: 3, scope: !81, inlinedAt: !82)
!92 = !DILocation(line: 51, column: 6, scope: !81, inlinedAt: !82)
!93 = !DILocation(line: 52, column: 41, scope: !81, inlinedAt: !82)
!94 = !DILocation(line: 1369, column: 6, scope: !95, inlinedAt: !97)
!95 = distinct !DISubprogram(name: "perf_allow_tracepoint", scope: !96, file: !96, line: 1367, type: !30, scopeLine: 1368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!96 = !DIFile(filename: "../include/linux/perf_event.h", directory: "/llk/linux-5.17/build_arm_allyes")
!97 = distinct !DILocation(line: 52, column: 9, scope: !81, inlinedAt: !82)
!98 = !DILocation(line: 1369, column: 33, scope: !95, inlinedAt: !97)
!99 = !DILocation(line: 1369, column: 38, scope: !95, inlinedAt: !97)
!100 = !DILocation(line: 1369, column: 42, scope: !95, inlinedAt: !97)
!101 = !DILocation(line: 259, column: 9, scope: !102, inlinedAt: !104)
!102 = distinct !DISubprogram(name: "perfmon_capable", scope: !103, file: !103, line: 257, type: !30, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!103 = !DIFile(filename: "../include/linux/capability.h", directory: "/llk/linux-5.17/build_arm_allyes")
!104 = distinct !DILocation(line: 1369, column: 42, scope: !95, inlinedAt: !97)
!105 = !DILocation(line: 259, column: 30, scope: !102, inlinedAt: !104)
!106 = !DILocation(line: 259, column: 33, scope: !102, inlinedAt: !104)
!107 = !DILocation(line: 1370, column: 3, scope: !95, inlinedAt: !97)
!108 = !DILocation(line: 53, column: 7, scope: !81, inlinedAt: !82)
!109 = !DILocation(line: 1372, column: 34, scope: !95, inlinedAt: !97)
!110 = !DILocation(line: 1372, column: 9, scope: !95, inlinedAt: !97)
!111 = !DILocation(line: 54, column: 11, scope: !81, inlinedAt: !82)
!112 = !DILocation(line: 54, column: 4, scope: !81, inlinedAt: !82)
!113 = !DILocation(line: 1122, column: 21, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "is_sampling_event", scope: !96, file: !96, line: 1120, type: !30, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!115 = distinct !DILocation(line: 56, column: 8, scope: !81, inlinedAt: !82)
!116 = !DILocation(line: 1122, column: 35, scope: !114, inlinedAt: !115)
!117 = !DILocation(line: 56, column: 7, scope: !81, inlinedAt: !82)
!118 = !DILocation(line: 57, column: 4, scope: !81, inlinedAt: !82)
!119 = !DILocation(line: 64, column: 22, scope: !81, inlinedAt: !82)
!120 = !DILocation(line: 64, column: 8, scope: !81, inlinedAt: !82)
!121 = !DILocation(line: 64, column: 7, scope: !81, inlinedAt: !82)
!122 = !DILocation(line: 65, column: 4, scope: !81, inlinedAt: !82)
!123 = !DILocation(line: 71, column: 21, scope: !81, inlinedAt: !82)
!124 = !DILocation(line: 71, column: 33, scope: !81, inlinedAt: !82)
!125 = !DILocation(line: 71, column: 7, scope: !81, inlinedAt: !82)
!126 = !DILocation(line: 72, column: 4, scope: !81, inlinedAt: !82)
!127 = !DILocation(line: 73, column: 2, scope: !81, inlinedAt: !82)
!128 = !DILocation(line: 76, column: 17, scope: !81, inlinedAt: !82)
!129 = !DILocation(line: 76, column: 22, scope: !81, inlinedAt: !82)
!130 = !DILocation(line: 76, column: 34, scope: !81, inlinedAt: !82)
!131 = !DILocation(line: 76, column: 6, scope: !81, inlinedAt: !82)
!132 = !DILocation(line: 77, column: 3, scope: !81, inlinedAt: !82)
!133 = !DILocation(line: 80, column: 15, scope: !81, inlinedAt: !82)
!134 = !DILocation(line: 80, column: 28, scope: !81, inlinedAt: !82)
!135 = !DILocation(line: 80, column: 6, scope: !81, inlinedAt: !82)
!136 = !DILocation(line: 81, column: 17, scope: !81, inlinedAt: !82)
!137 = !DILocation(line: 81, column: 23, scope: !81, inlinedAt: !82)
!138 = !DILocation(line: 81, column: 7, scope: !81, inlinedAt: !82)
!139 = !DILocation(line: 82, column: 4, scope: !81, inlinedAt: !82)
!140 = !DILocation(line: 83, column: 2, scope: !81, inlinedAt: !82)
!141 = !DILocation(line: 1369, column: 6, scope: !95, inlinedAt: !142)
!142 = distinct !DILocation(line: 89, column: 8, scope: !81, inlinedAt: !82)
!143 = !DILocation(line: 1369, column: 33, scope: !95, inlinedAt: !142)
!144 = !DILocation(line: 1369, column: 38, scope: !95, inlinedAt: !142)
!145 = !DILocation(line: 1369, column: 42, scope: !95, inlinedAt: !142)
!146 = !DILocation(line: 259, column: 9, scope: !102, inlinedAt: !147)
!147 = distinct !DILocation(line: 1369, column: 42, scope: !95, inlinedAt: !142)
!148 = !DILocation(line: 259, column: 30, scope: !102, inlinedAt: !147)
!149 = !DILocation(line: 259, column: 33, scope: !102, inlinedAt: !147)
!150 = !DILocation(line: 1370, column: 3, scope: !95, inlinedAt: !142)
!151 = !DILocation(line: 90, column: 6, scope: !81, inlinedAt: !82)
!152 = !DILocation(line: 1372, column: 34, scope: !95, inlinedAt: !142)
!153 = !DILocation(line: 1372, column: 9, scope: !95, inlinedAt: !142)
!154 = !DILocation(line: 91, column: 10, scope: !81, inlinedAt: !82)
!155 = !DILocation(line: 91, column: 3, scope: !81, inlinedAt: !82)
!156 = !DILocation(line: 93, column: 2, scope: !81, inlinedAt: !82)
!157 = !DILocation(line: 0, scope: !81, inlinedAt: !82)
!158 = !DILocation(line: 202, column: 10, scope: !78)
!159 = !DILocation(line: 202, column: 3, scope: !78)
!160 = !DILocation(line: 103, column: 11, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "perf_trace_event_reg", scope: !1, file: !1, line: 96, type: !30, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!162 = distinct !DILocation(line: 204, column: 8, scope: !78)
!163 = !DILocation(line: 103, column: 20, scope: !161, inlinedAt: !162)
!164 = !DILocation(line: 104, column: 16, scope: !161, inlinedAt: !162)
!165 = !DILocation(line: 104, column: 29, scope: !161, inlinedAt: !162)
!166 = !DILocation(line: 104, column: 32, scope: !161, inlinedAt: !162)
!167 = !DILocation(line: 104, column: 6, scope: !161, inlinedAt: !162)
!168 = !DILocation(line: 105, column: 3, scope: !161, inlinedAt: !162)
!169 = !DILocation(line: 107, column: 9, scope: !161, inlinedAt: !162)
!170 = !DILocation(line: 108, column: 7, scope: !161, inlinedAt: !162)
!171 = !DILocation(line: 108, column: 6, scope: !161, inlinedAt: !162)
!172 = !DILocation(line: 111, column: 2, scope: !161, inlinedAt: !162)
!173 = !DILocation(line: 109, column: 3, scope: !161, inlinedAt: !162)
!174 = !DILocation(line: 112, column: 3, scope: !161, inlinedAt: !162)
!175 = distinct !{!175, !172, !174}
!176 = !DILocation(line: 114, column: 12, scope: !161, inlinedAt: !162)
!177 = !DILocation(line: 114, column: 24, scope: !161, inlinedAt: !162)
!178 = !DILocation(line: 116, column: 7, scope: !161, inlinedAt: !162)
!179 = !DILocation(line: 116, column: 6, scope: !161, inlinedAt: !162)
!180 = !DILocation(line: 121, column: 27, scope: !161, inlinedAt: !162)
!181 = !DILocation(line: 122, column: 9, scope: !161, inlinedAt: !162)
!182 = !DILocation(line: 122, column: 8, scope: !161, inlinedAt: !162)
!183 = !DILocation(line: 125, column: 24, scope: !161, inlinedAt: !162)
!184 = !DILocation(line: 125, column: 22, scope: !161, inlinedAt: !162)
!185 = !DILocation(line: 127, column: 2, scope: !161, inlinedAt: !162)
!186 = !DILocation(line: 129, column: 18, scope: !161, inlinedAt: !162)
!187 = !DILocation(line: 129, column: 25, scope: !161, inlinedAt: !162)
!188 = !DILocation(line: 129, column: 8, scope: !161, inlinedAt: !162)
!189 = !DILocation(line: 130, column: 6, scope: !161, inlinedAt: !162)
!190 = !DILocation(line: 131, column: 3, scope: !161, inlinedAt: !162)
!191 = !DILocation(line: 133, column: 17, scope: !161, inlinedAt: !162)
!192 = !DILocation(line: 134, column: 2, scope: !161, inlinedAt: !162)
!193 = !DILocation(line: 0, scope: !161, inlinedAt: !162)
!194 = !DILocation(line: 137, column: 7, scope: !161, inlinedAt: !162)
!195 = !DILocation(line: 137, column: 6, scope: !161, inlinedAt: !162)
!196 = !DILocation(line: 141, column: 31, scope: !161, inlinedAt: !162)
!197 = !DILocation(line: 141, column: 16, scope: !161, inlinedAt: !162)
!198 = !DILocation(line: 141, column: 4, scope: !161, inlinedAt: !162)
!199 = !DILocation(line: 142, column: 22, scope: !161, inlinedAt: !162)
!200 = !DILocation(line: 144, column: 2, scope: !161, inlinedAt: !162)
!201 = !DILocation(line: 146, column: 7, scope: !161, inlinedAt: !162)
!202 = !DILocation(line: 146, column: 6, scope: !161, inlinedAt: !162)
!203 = !DILocation(line: 147, column: 15, scope: !161, inlinedAt: !162)
!204 = !DILocation(line: 147, column: 25, scope: !161, inlinedAt: !162)
!205 = !DILocation(line: 147, column: 3, scope: !161, inlinedAt: !162)
!206 = !DILocation(line: 148, column: 25, scope: !161, inlinedAt: !162)
!207 = !DILocation(line: 149, column: 2, scope: !161, inlinedAt: !162)
!208 = !DILocation(line: 151, column: 9, scope: !161, inlinedAt: !162)
!209 = !DILocation(line: 206, column: 10, scope: !78)
!210 = !DILocation(line: 206, column: 3, scope: !78)
!211 = !DILocation(line: 185, column: 47, scope: !212, inlinedAt: !213)
!212 = distinct !DISubprogram(name: "perf_trace_event_open", scope: !1, file: !1, line: 183, type: !30, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!213 = distinct !DILocation(line: 208, column: 8, scope: !78)
!214 = !DILocation(line: 186, column: 19, scope: !212, inlinedAt: !213)
!215 = !DILocation(line: 186, column: 26, scope: !212, inlinedAt: !213)
!216 = !DILocation(line: 186, column: 9, scope: !212, inlinedAt: !213)
!217 = !DILocation(line: 209, column: 6, scope: !78)
!218 = !DILocation(line: 210, column: 26, scope: !78)
!219 = !DILocation(line: 210, column: 3, scope: !78)
!220 = !DILocation(line: 211, column: 3, scope: !78)
!221 = !DILocation(line: 214, column: 2, scope: !78)
!222 = !DILocation(line: 0, scope: !78)
!223 = !DILocation(line: 215, column: 1, scope: !78)
!224 = distinct !DISubprogram(name: "perf_trace_destroy", scope: !1, file: !1, line: 239, type: !30, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!225 = !DILocation(line: 240, scope: !224)
!226 = !DILocation(line: 241, column: 2, scope: !224)
!227 = !DILocation(line: 191, column: 47, scope: !228, inlinedAt: !229)
!228 = distinct !DISubprogram(name: "perf_trace_event_close", scope: !1, file: !1, line: 189, type: !30, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!229 = distinct !DILocation(line: 242, column: 2, scope: !224)
!230 = !DILocation(line: 192, column: 12, scope: !228, inlinedAt: !229)
!231 = !DILocation(line: 192, column: 19, scope: !228, inlinedAt: !229)
!232 = !DILocation(line: 192, column: 2, scope: !228, inlinedAt: !229)
!233 = !DILocation(line: 243, column: 2, scope: !224)
!234 = !DILocation(line: 244, column: 2, scope: !224)
!235 = !DILocation(line: 245, column: 1, scope: !224)
!236 = distinct !DISubprogram(name: "perf_trace_event_unreg", scope: !1, file: !1, line: 154, type: !30, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!237 = !DILocation(line: 155, scope: !236)
!238 = !DILocation(line: 156, column: 47, scope: !236)
!239 = !DILocation(line: 159, column: 18, scope: !236)
!240 = !DILocation(line: 159, column: 6, scope: !236)
!241 = !DILocation(line: 159, column: 32, scope: !236)
!242 = !DILocation(line: 160, column: 3, scope: !236)
!243 = !DILocation(line: 162, column: 12, scope: !236)
!244 = !DILocation(line: 162, column: 19, scope: !236)
!245 = !DILocation(line: 162, column: 2, scope: !236)
!246 = !DILocation(line: 93, column: 2, scope: !247, inlinedAt: !249)
!247 = distinct !DISubprogram(name: "tracepoint_synchronize_unregister", scope: !248, file: !248, line: 91, type: !30, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!248 = !DIFile(filename: "../include/linux/tracepoint.h", directory: "/llk/linux-5.17/build_arm_allyes")
!249 = distinct !DILocation(line: 168, column: 2, scope: !236)
!250 = !DILocation(line: 94, column: 2, scope: !247, inlinedAt: !249)
!251 = !DILocation(line: 170, column: 24, scope: !236)
!252 = !DILocation(line: 170, column: 2, scope: !236)
!253 = !DILocation(line: 171, column: 24, scope: !236)
!254 = !DILocation(line: 173, column: 7, scope: !236)
!255 = !DILocation(line: 173, column: 6, scope: !236)
!256 = !DILocation(line: 174, column: 10, scope: !236)
!257 = !DILocation(line: 175, column: 16, scope: !236)
!258 = !DILocation(line: 175, column: 4, scope: !236)
!259 = !DILocation(line: 176, column: 22, scope: !236)
!260 = !DILocation(line: 174, column: 38, scope: !236)
!261 = !DILocation(line: 173, column: 9, scope: !236)
!262 = !DILocation(line: 410, column: 12, scope: !63, inlinedAt: !263)
!263 = distinct !DILocation(line: 180, column: 2, scope: !236)
!264 = !DILocation(line: 410, column: 18, scope: !63, inlinedAt: !263)
!265 = !DILocation(line: 410, column: 6, scope: !63, inlinedAt: !263)
!266 = !DILocation(line: 411, column: 27, scope: !63, inlinedAt: !263)
!267 = !DILocation(line: 411, column: 3, scope: !63, inlinedAt: !263)
!268 = !DILocation(line: 413, column: 14, scope: !63, inlinedAt: !263)
!269 = !DILocation(line: 413, column: 20, scope: !63, inlinedAt: !263)
!270 = !DILocation(line: 413, column: 3, scope: !63, inlinedAt: !263)
!271 = !DILocation(line: 181, column: 1, scope: !236)
!272 = distinct !DISubprogram(name: "perf_kprobe_init", scope: !1, file: !1, line: 248, type: !30, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!273 = !DILocation(line: 249, scope: !272)
!274 = !DILocation(line: 254, column: 20, scope: !272)
!275 = !DILocation(line: 254, column: 6, scope: !272)
!276 = !DILocation(line: 376, column: 3, scope: !277, inlinedAt: !279)
!277 = distinct !DISubprogram(name: "__kmalloc_index", scope: !278, file: !278, line: 369, type: !30, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!278 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!279 = distinct !DILocation(line: 576, column: 11, scope: !280, inlinedAt: !281)
!280 = distinct !DISubprogram(name: "kmalloc", scope: !278, file: !278, line: 567, type: !30, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!281 = distinct !DILocation(line: 714, column: 9, scope: !282, inlinedAt: !283)
!282 = distinct !DISubprogram(name: "kzalloc", scope: !278, file: !278, line: 712, type: !30, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!283 = distinct !DILocation(line: 255, column: 10, scope: !272)
!284 = !DILocation(line: 582, column: 33, scope: !280, inlinedAt: !281)
!285 = !DILocation(line: 339, column: 3, scope: !286, inlinedAt: !287)
!286 = distinct !DISubprogram(name: "kmalloc_type", scope: !278, file: !278, line: 332, type: !30, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!287 = distinct !DILocation(line: 582, column: 20, scope: !280, inlinedAt: !281)
!288 = !DILocation(line: 582, column: 5, scope: !280, inlinedAt: !281)
!289 = !DILocation(line: 581, column: 10, scope: !280, inlinedAt: !281)
!290 = !DILocation(line: 256, column: 8, scope: !272)
!291 = !DILocation(line: 256, column: 7, scope: !272)
!292 = !DILocation(line: 257, column: 4, scope: !272)
!293 = !DILocation(line: 259, column: 10, scope: !272)
!294 = !DILocation(line: 258, column: 9, scope: !272)
!295 = !DILocation(line: 261, column: 11, scope: !272)
!296 = !DILocation(line: 261, column: 7, scope: !272)
!297 = !DILocation(line: 262, column: 8, scope: !272)
!298 = !DILocation(line: 263, column: 7, scope: !272)
!299 = !DILocation(line: 263, column: 11, scope: !272)
!300 = !DILocation(line: 264, column: 4, scope: !272)
!301 = !DILocation(line: 266, column: 7, scope: !272)
!302 = !DILocation(line: 266, column: 15, scope: !272)
!303 = !DILocation(line: 267, column: 10, scope: !272)
!304 = !DILocation(line: 267, column: 4, scope: !272)
!305 = !DILocation(line: 269, column: 3, scope: !272)
!306 = !DILocation(line: 0, scope: !272)
!307 = !DILocation(line: 270, column: 2, scope: !272)
!308 = !DILocation(line: 273, column: 47, scope: !272)
!309 = !DILocation(line: 273, column: 17, scope: !272)
!310 = !DILocation(line: 273, column: 9, scope: !272)
!311 = !DILocation(line: 272, column: 13, scope: !272)
!312 = !DILocation(line: 36, column: 9, scope: !313, inlinedAt: !315)
!313 = distinct !DISubprogram(name: "IS_ERR", scope: !314, file: !314, line: 34, type: !30, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!314 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!315 = distinct !DILocation(line: 275, column: 6, scope: !272)
!316 = !DILocation(line: 275, column: 6, scope: !272)
!317 = !DILocation(line: 276, column: 17, scope: !272)
!318 = !DILocation(line: 31, column: 9, scope: !319, inlinedAt: !320)
!319 = distinct !DISubprogram(name: "PTR_ERR", scope: !314, file: !314, line: 29, type: !30, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!320 = distinct !DILocation(line: 276, column: 9, scope: !272)
!321 = !DILocation(line: 277, column: 3, scope: !272)
!322 = !DILocation(line: 280, column: 2, scope: !272)
!323 = !DILocation(line: 281, column: 8, scope: !272)
!324 = !DILocation(line: 282, column: 6, scope: !272)
!325 = !DILocation(line: 283, column: 30, scope: !272)
!326 = !DILocation(line: 283, column: 3, scope: !272)
!327 = !DILocation(line: 284, column: 2, scope: !272)
!328 = !DILocation(line: 286, column: 2, scope: !272)
!329 = !DILocation(line: 287, column: 2, scope: !272)
!330 = !DILocation(line: 288, column: 1, scope: !272)
!331 = distinct !DISubprogram(name: "perf_kprobe_destroy", scope: !1, file: !1, line: 290, type: !30, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!332 = !DILocation(line: 291, scope: !331)
!333 = !DILocation(line: 292, column: 2, scope: !331)
!334 = !DILocation(line: 191, column: 47, scope: !228, inlinedAt: !335)
!335 = distinct !DILocation(line: 293, column: 2, scope: !331)
!336 = !DILocation(line: 192, column: 12, scope: !228, inlinedAt: !335)
!337 = !DILocation(line: 192, column: 19, scope: !228, inlinedAt: !335)
!338 = !DILocation(line: 192, column: 2, scope: !228, inlinedAt: !335)
!339 = !DILocation(line: 294, column: 2, scope: !331)
!340 = !DILocation(line: 295, column: 2, scope: !331)
!341 = !DILocation(line: 297, column: 38, scope: !331)
!342 = !DILocation(line: 297, column: 2, scope: !331)
!343 = !DILocation(line: 298, column: 1, scope: !331)
!344 = distinct !DISubprogram(name: "perf_uprobe_init", scope: !1, file: !1, line: 302, type: !30, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!345 = !DILocation(line: 304, scope: !344)
!346 = !DILocation(line: 309, column: 21, scope: !344)
!347 = !DILocation(line: 309, column: 7, scope: !344)
!348 = !DILocation(line: 309, column: 6, scope: !344)
!349 = !DILocation(line: 310, column: 3, scope: !344)
!350 = !DILocation(line: 312, column: 22, scope: !344)
!351 = !DILocation(line: 312, column: 9, scope: !344)
!352 = !DILocation(line: 36, column: 9, scope: !313, inlinedAt: !353)
!353 = distinct !DILocation(line: 314, column: 6, scope: !344)
!354 = !DILocation(line: 314, column: 6, scope: !344)
!355 = !DILocation(line: 316, column: 15, scope: !344)
!356 = !DILocation(line: 316, column: 10, scope: !344)
!357 = !DILocation(line: 31, column: 9, scope: !319, inlinedAt: !358)
!358 = distinct !DILocation(line: 315, column: 9, scope: !344)
!359 = !DILocation(line: 316, column: 38, scope: !344)
!360 = !DILocation(line: 318, column: 6, scope: !344)
!361 = !DILocation(line: 318, column: 14, scope: !344)
!362 = !DILocation(line: 319, column: 7, scope: !344)
!363 = !DILocation(line: 320, column: 3, scope: !344)
!364 = !DILocation(line: 323, column: 59, scope: !344)
!365 = !DILocation(line: 323, column: 45, scope: !344)
!366 = !DILocation(line: 323, column: 13, scope: !344)
!367 = !DILocation(line: 36, column: 9, scope: !313, inlinedAt: !368)
!368 = distinct !DILocation(line: 325, column: 6, scope: !344)
!369 = !DILocation(line: 325, column: 6, scope: !344)
!370 = !DILocation(line: 326, column: 17, scope: !344)
!371 = !DILocation(line: 31, column: 9, scope: !319, inlinedAt: !372)
!372 = distinct !DILocation(line: 326, column: 9, scope: !344)
!373 = !DILocation(line: 327, column: 3, scope: !344)
!374 = !DILocation(line: 335, column: 2, scope: !344)
!375 = !DILocation(line: 336, column: 8, scope: !344)
!376 = !DILocation(line: 337, column: 6, scope: !344)
!377 = !DILocation(line: 338, column: 30, scope: !344)
!378 = !DILocation(line: 338, column: 3, scope: !344)
!379 = !DILocation(line: 339, column: 2, scope: !344)
!380 = !DILocation(line: 0, scope: !344)
!381 = !DILocation(line: 341, column: 2, scope: !344)
!382 = !DILocation(line: 342, column: 2, scope: !344)
!383 = !DILocation(line: 343, column: 1, scope: !344)
!384 = distinct !DISubprogram(name: "perf_uprobe_destroy", scope: !1, file: !1, line: 345, type: !30, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!385 = !DILocation(line: 346, scope: !384)
!386 = !DILocation(line: 347, column: 2, scope: !384)
!387 = !DILocation(line: 191, column: 47, scope: !228, inlinedAt: !388)
!388 = distinct !DILocation(line: 348, column: 2, scope: !384)
!389 = !DILocation(line: 192, column: 12, scope: !228, inlinedAt: !388)
!390 = !DILocation(line: 192, column: 19, scope: !228, inlinedAt: !388)
!391 = !DILocation(line: 192, column: 2, scope: !228, inlinedAt: !388)
!392 = !DILocation(line: 349, column: 2, scope: !384)
!393 = !DILocation(line: 350, column: 2, scope: !384)
!394 = !DILocation(line: 351, column: 38, scope: !384)
!395 = !DILocation(line: 351, column: 2, scope: !384)
!396 = !DILocation(line: 352, column: 1, scope: !384)
!397 = distinct !DISubprogram(name: "perf_trace_add", scope: !1, file: !1, line: 355, type: !30, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!398 = !DILocation(line: 356, scope: !397)
!399 = !DILocation(line: 357, column: 47, scope: !397)
!400 = !DILocation(line: 359, column: 14, scope: !397)
!401 = !DILocation(line: 359, column: 6, scope: !397)
!402 = !DILocation(line: 360, column: 3, scope: !397)
!403 = !DILocation(line: 360, column: 15, scope: !397)
!404 = !DILocation(line: 360, column: 21, scope: !397)
!405 = !DILocation(line: 367, column: 17, scope: !397)
!406 = !DILocation(line: 367, column: 24, scope: !397)
!407 = !DILocation(line: 367, column: 7, scope: !397)
!408 = !DILocation(line: 367, column: 6, scope: !397)
!409 = !DILocation(line: 371, column: 25, scope: !397)
!410 = !DILocation(line: 372, column: 7, scope: !397)
!411 = !{!"branch_weights", i32 2000, i32 1}
!412 = !DILocation(line: 375, column: 10, scope: !397)
!413 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !416)
!414 = distinct !DISubprogram(name: "current_thread_info", scope: !415, file: !415, line: 101, type: !30, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!415 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!416 = distinct !DILocation(line: 375, column: 10, scope: !397)
!417 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !416)
!418 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !416)
!419 = !DILocation(line: 376, column: 32, scope: !397)
!420 = !DILocation(line: 587, column: 32, scope: !421, inlinedAt: !423)
!421 = distinct !DISubprogram(name: "hlist_add_head_rcu", scope: !422, file: !422, line: 584, type: !30, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!422 = !DIFile(filename: "../include/linux/rculist.h", directory: "/llk/linux-5.17/build_arm_allyes")
!423 = distinct !DILocation(line: 376, column: 3, scope: !397)
!424 = !DILocation(line: 589, column: 10, scope: !421, inlinedAt: !423)
!425 = !DILocation(line: 590, column: 2, scope: !421, inlinedAt: !423)
!426 = !DILocation(line: 591, column: 2, scope: !421, inlinedAt: !423)
!427 = !{i64 2151814890}
!428 = !DILocation(line: 592, column: 6, scope: !421, inlinedAt: !423)
!429 = !DILocation(line: 593, column: 3, scope: !421, inlinedAt: !423)
!430 = !DILocation(line: 377, column: 2, scope: !397)
!431 = !DILocation(line: 0, scope: !397)
!432 = !DILocation(line: 380, column: 1, scope: !397)
!433 = distinct !DISubprogram(name: "perf_trace_del", scope: !1, file: !1, line: 382, type: !30, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!434 = !DILocation(line: 383, scope: !433)
!435 = !DILocation(line: 384, column: 47, scope: !433)
!436 = !DILocation(line: 391, column: 17, scope: !433)
!437 = !DILocation(line: 391, column: 24, scope: !433)
!438 = !DILocation(line: 391, column: 7, scope: !433)
!439 = !DILocation(line: 391, column: 6, scope: !433)
!440 = !DILocation(line: 392, column: 18, scope: !433)
!441 = !DILocation(line: 392, column: 27, scope: !433)
!442 = !DILocation(line: 845, column: 31, scope: !443, inlinedAt: !445)
!443 = distinct !DISubprogram(name: "__hlist_del", scope: !444, file: !444, line: 843, type: !30, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!444 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!445 = distinct !DILocation(line: 513, column: 2, scope: !446, inlinedAt: !447)
!446 = distinct !DISubprogram(name: "hlist_del_rcu", scope: !422, file: !422, line: 511, type: !30, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!447 = distinct !DILocation(line: 392, column: 3, scope: !433)
!448 = !DILocation(line: 846, column: 33, scope: !443, inlinedAt: !445)
!449 = !DILocation(line: 848, column: 2, scope: !443, inlinedAt: !445)
!450 = !DILocation(line: 849, column: 6, scope: !443, inlinedAt: !445)
!451 = !DILocation(line: 850, column: 3, scope: !443, inlinedAt: !445)
!452 = !DILocation(line: 514, column: 2, scope: !446, inlinedAt: !447)
!453 = !DILocation(line: 392, column: 3, scope: !433)
!454 = !DILocation(line: 393, column: 1, scope: !433)
!455 = distinct !DISubprogram(name: "perf_trace_buf_alloc", scope: !1, file: !1, line: 395, type: !30, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!456 = !DILocation(line: 396, scope: !455)
!457 = !DILocation(line: 402, column: 6, scope: !455)
!458 = !DILocation(line: 405, column: 3, scope: !455)
!459 = !DILocation(line: 407, column: 18, scope: !455)
!460 = !DILocation(line: 407, column: 9, scope: !455)
!461 = !DILocation(line: 408, column: 11, scope: !455)
!462 = !DILocation(line: 408, column: 6, scope: !455)
!463 = !DILocation(line: 409, column: 3, scope: !455)
!464 = !DILocation(line: 411, column: 6, scope: !455)
!465 = !DILocation(line: 412, column: 11, scope: !455)
!466 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !467)
!467 = distinct !DILocation(line: 412, column: 11, scope: !455)
!468 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !467)
!469 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !467)
!470 = !DILocation(line: 412, column: 9, scope: !455)
!471 = !DILocation(line: 412, column: 3, scope: !455)
!472 = !DILocation(line: 413, column: 13, scope: !455)
!473 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !474)
!474 = distinct !DILocation(line: 413, column: 13, scope: !455)
!475 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !474)
!476 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !474)
!477 = !DILocation(line: 416, column: 24, scope: !455)
!478 = !DILocation(line: 416, column: 10, scope: !455)
!479 = !DILocation(line: 416, column: 2, scope: !455)
!480 = !DILocation(line: 417, column: 2, scope: !455)
!481 = !DILocation(line: 0, scope: !455)
!482 = !DILocation(line: 418, column: 1, scope: !455)
!483 = distinct !DISubprogram(name: "perf_trace_buf_update", scope: !1, file: !1, line: 422, type: !30, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!484 = !DILocation(line: 423, scope: !483)
!485 = !DILocation(line: 189, column: 2, scope: !486, inlinedAt: !487)
!486 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !50, file: !50, line: 185, type: !30, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!487 = distinct !DILocation(line: 426, column: 44, scope: !483)
!488 = !DILocation(line: 159, column: 2, scope: !489, inlinedAt: !491)
!489 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !490, file: !490, line: 156, type: !30, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!490 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!491 = distinct !DILocation(line: 189, column: 2, scope: !486, inlinedAt: !487)
!492 = !{i64 756993}
!493 = !DILocation(line: 181, column: 28, scope: !494, inlinedAt: !495)
!494 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !50, file: !50, line: 179, type: !30, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!495 = distinct !DILocation(line: 190, column: 9, scope: !486, inlinedAt: !487)
!496 = !DILocation(line: 183, column: 9, scope: !494, inlinedAt: !495)
!497 = !DILocation(line: 159, column: 26, scope: !498, inlinedAt: !499)
!498 = distinct !DISubprogram(name: "tracing_generic_entry_update", scope: !50, file: !50, line: 155, type: !30, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!499 = distinct !DILocation(line: 426, column: 2, scope: !483)
!500 = !DILocation(line: 159, column: 9, scope: !498, inlinedAt: !499)
!501 = !DILocation(line: 159, column: 24, scope: !498, inlinedAt: !499)
!502 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !503)
!503 = distinct !DILocation(line: 160, column: 17, scope: !498, inlinedAt: !499)
!504 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !503)
!505 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !503)
!506 = !DILocation(line: 160, column: 17, scope: !498, inlinedAt: !499)
!507 = !DILocation(line: 160, column: 26, scope: !498, inlinedAt: !499)
!508 = !DILocation(line: 160, column: 9, scope: !498, inlinedAt: !499)
!509 = !DILocation(line: 160, column: 15, scope: !498, inlinedAt: !499)
!510 = !DILocation(line: 161, column: 16, scope: !498, inlinedAt: !499)
!511 = !DILocation(line: 162, column: 29, scope: !498, inlinedAt: !499)
!512 = !DILocation(line: 162, column: 19, scope: !498, inlinedAt: !499)
!513 = !DILocation(line: 162, column: 9, scope: !498, inlinedAt: !499)
!514 = !DILocation(line: 162, column: 15, scope: !498, inlinedAt: !499)
!515 = !DILocation(line: 427, column: 1, scope: !483)
!516 = distinct !DISubprogram(name: "perf_ftrace_event_register", scope: !1, file: !1, line: 502, type: !30, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!517 = !DILocation(line: 504, scope: !516)
!518 = !DILocation(line: 507, column: 2, scope: !516)
!519 = !DILocation(line: 510, column: 3, scope: !516)
!520 = !DILocation(line: 513, column: 3, scope: !516)
!521 = !DILocation(line: 515, column: 40, scope: !516)
!522 = !DILocation(line: 486, column: 35, scope: !523, inlinedAt: !524)
!523 = distinct !DISubprogram(name: "perf_ftrace_function_register", scope: !1, file: !1, line: 484, type: !30, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!524 = distinct !DILocation(line: 515, column: 10, scope: !516)
!525 = !DILocation(line: 488, column: 15, scope: !523, inlinedAt: !524)
!526 = !DILocation(line: 489, column: 40, scope: !523, inlinedAt: !524)
!527 = !DILocation(line: 489, column: 17, scope: !523, inlinedAt: !524)
!528 = !DILocation(line: 489, column: 7, scope: !523, inlinedAt: !524)
!529 = !DILocation(line: 489, column: 15, scope: !523, inlinedAt: !524)
!530 = !DILocation(line: 491, column: 9, scope: !523, inlinedAt: !524)
!531 = !DILocation(line: 515, column: 3, scope: !516)
!532 = !DILocation(line: 517, column: 42, scope: !516)
!533 = !DILocation(line: 496, column: 35, scope: !534, inlinedAt: !535)
!534 = distinct !DISubprogram(name: "perf_ftrace_function_unregister", scope: !1, file: !1, line: 494, type: !30, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!535 = distinct !DILocation(line: 517, column: 10, scope: !516)
!536 = !DILocation(line: 497, column: 12, scope: !534, inlinedAt: !535)
!537 = !DILocation(line: 498, column: 2, scope: !534, inlinedAt: !535)
!538 = !DILocation(line: 517, column: 3, scope: !516)
!539 = !DILocation(line: 519, column: 54, scope: !516)
!540 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !541)
!541 = distinct !DILocation(line: 519, column: 54, scope: !516)
!542 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !541)
!543 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !541)
!544 = !DILocation(line: 519, column: 31, scope: !516)
!545 = !DILocation(line: 519, column: 21, scope: !516)
!546 = !DILocation(line: 519, column: 29, scope: !516)
!547 = !DILocation(line: 520, column: 3, scope: !516)
!548 = !DILocation(line: 522, column: 54, scope: !516)
!549 = !DILocation(line: 522, column: 31, scope: !516)
!550 = !DILocation(line: 522, column: 21, scope: !516)
!551 = !DILocation(line: 522, column: 29, scope: !516)
!552 = !DILocation(line: 523, column: 3, scope: !516)
!553 = !DILocation(line: 526, column: 2, scope: !516)
!554 = !DILocation(line: 0, scope: !516)
!555 = !DILocation(line: 527, column: 1, scope: !516)
!556 = distinct !DISubprogram(name: "perf_ftrace_function_call", scope: !1, file: !1, line: 432, type: !30, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!557 = !DILocation(line: 434, scope: !556)
!558 = !DILocation(line: 437, column: 2, scope: !556)
!559 = !DILocation(line: 437, column: 20, scope: !556)
!560 = !{!"auto-init"}
!561 = !DILocation(line: 438, column: 2, scope: !556)
!562 = !DILocation(line: 438, column: 17, scope: !556)
!563 = !DILocation(line: 442, column: 7, scope: !556)
!564 = !DILocation(line: 442, column: 6, scope: !556)
!565 = !DILocation(line: 0, scope: !556)
!566 = !DILocation(line: 443, column: 3, scope: !556)
!567 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !568)
!568 = distinct !DILocation(line: 144, column: 21, scope: !569, inlinedAt: !571)
!569 = distinct !DISubprogram(name: "trace_test_and_set_recursion", scope: !570, file: !570, line: 141, type: !30, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!570 = !DIFile(filename: "../include/linux/trace_recursion.h", directory: "/llk/linux-5.17/build_arm_allyes")
!571 = distinct !DILocation(line: 195, column: 9, scope: !572, inlinedAt: !573)
!572 = distinct !DISubprogram(name: "ftrace_test_recursion_trylock", scope: !570, file: !570, line: 192, type: !30, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!573 = distinct !DILocation(line: 445, column: 8, scope: !556)
!574 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !568)
!575 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !568)
!576 = !DILocation(line: 144, column: 21, scope: !569, inlinedAt: !571)
!577 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !578)
!578 = distinct !DILocation(line: 11, column: 9, scope: !579, inlinedAt: !581)
!579 = distinct !DISubprogram(name: "preempt_count", scope: !580, file: !580, line: 9, type: !30, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!580 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!581 = distinct !DILocation(line: 91, column: 21, scope: !582, inlinedAt: !584)
!582 = distinct !DISubprogram(name: "interrupt_context_level", scope: !583, file: !583, line: 89, type: !30, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!583 = !DIFile(filename: "../include/linux/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!584 = distinct !DILocation(line: 119, column: 22, scope: !585, inlinedAt: !586)
!585 = distinct !DISubprogram(name: "trace_get_context_bit", scope: !570, file: !570, line: 117, type: !30, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!586 = distinct !DILocation(line: 147, column: 8, scope: !569, inlinedAt: !571)
!587 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !578)
!588 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !578)
!589 = !DILocation(line: 11, column: 9, scope: !579, inlinedAt: !581)
!590 = !DILocation(line: 94, column: 17, scope: !582, inlinedAt: !584)
!591 = !DILocation(line: 94, column: 12, scope: !582, inlinedAt: !584)
!592 = !DILocation(line: 95, column: 17, scope: !582, inlinedAt: !584)
!593 = !DILocation(line: 95, column: 12, scope: !582, inlinedAt: !584)
!594 = !DILocation(line: 95, column: 8, scope: !582, inlinedAt: !584)
!595 = !DILocation(line: 96, column: 17, scope: !582, inlinedAt: !584)
!596 = !DILocation(line: 96, column: 12, scope: !582, inlinedAt: !584)
!597 = !DILocation(line: 96, column: 11, scope: !582, inlinedAt: !584)
!598 = !DILocation(line: 96, column: 8, scope: !582, inlinedAt: !584)
!599 = !DILocation(line: 121, column: 26, scope: !585, inlinedAt: !586)
!600 = !DILocation(line: 148, column: 6, scope: !569, inlinedAt: !571)
!601 = !DILocation(line: 158, column: 11, scope: !569, inlinedAt: !571)
!602 = !DILocation(line: 158, column: 7, scope: !569, inlinedAt: !571)
!603 = !DILocation(line: 159, column: 4, scope: !569, inlinedAt: !571)
!604 = !DILocation(line: 162, column: 2, scope: !569, inlinedAt: !571)
!605 = !DILocation(line: 0, scope: !569, inlinedAt: !571)
!606 = !DILocation(line: 447, column: 3, scope: !556)
!607 = !DILocation(line: 164, column: 11, scope: !569, inlinedAt: !571)
!608 = !DILocation(line: 164, column: 6, scope: !569, inlinedAt: !571)
!609 = !DILocation(line: 165, column: 2, scope: !569, inlinedAt: !571)
!610 = !DILocation(line: 165, column: 11, scope: !569, inlinedAt: !571)
!611 = !DILocation(line: 165, column: 27, scope: !569, inlinedAt: !571)
!612 = !DILocation(line: 166, column: 2, scope: !569, inlinedAt: !571)
!613 = !{i64 2152795487}
!614 = !DILocation(line: 16, column: 10, scope: !615, inlinedAt: !616)
!615 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !580, file: !580, line: 14, type: !30, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!616 = distinct !DILocation(line: 54, column: 3, scope: !617, inlinedAt: !618)
!617 = distinct !DISubprogram(name: "__preempt_count_add", scope: !580, file: !580, line: 52, type: !30, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!618 = distinct !DILocation(line: 168, column: 2, scope: !569, inlinedAt: !571)
!619 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !620)
!620 = distinct !DILocation(line: 16, column: 10, scope: !615, inlinedAt: !616)
!621 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !620)
!622 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !620)
!623 = !DILocation(line: 16, column: 33, scope: !615, inlinedAt: !616)
!624 = !DILocation(line: 54, column: 23, scope: !617, inlinedAt: !618)
!625 = !DILocation(line: 168, column: 2, scope: !569, inlinedAt: !571)
!626 = !{i64 2152795609}
!627 = !DILocation(line: 449, column: 26, scope: !556)
!628 = !DILocation(line: 449, column: 6, scope: !556)
!629 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !630)
!630 = distinct !DILocation(line: 449, column: 37, scope: !556)
!631 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !630)
!632 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !630)
!633 = !DILocation(line: 449, column: 37, scope: !556)
!634 = !DILocation(line: 449, column: 34, scope: !556)
!635 = !DILocation(line: 450, column: 3, scope: !556)
!636 = !DILocation(line: 460, column: 23, scope: !556)
!637 = !DILocation(line: 460, column: 13, scope: !556)
!638 = !DILocation(line: 467, column: 2, scope: !556)
!639 = !DILocation(line: 1171, column: 2, scope: !640, inlinedAt: !641)
!640 = distinct !DISubprogram(name: "perf_fetch_caller_regs", scope: !96, file: !96, line: 1169, type: !30, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!641 = distinct !DILocation(line: 468, column: 2, scope: !556)
!642 = !DILocation(line: 407, column: 18, scope: !455, inlinedAt: !643)
!643 = distinct !DILocation(line: 470, column: 10, scope: !556)
!644 = !DILocation(line: 408, column: 11, scope: !455, inlinedAt: !643)
!645 = !DILocation(line: 408, column: 6, scope: !455, inlinedAt: !643)
!646 = !DILocation(line: 409, column: 3, scope: !455, inlinedAt: !643)
!647 = !DILocation(line: 471, column: 6, scope: !556)
!648 = !DILocation(line: 413, column: 13, scope: !455, inlinedAt: !643)
!649 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !650)
!650 = distinct !DILocation(line: 413, column: 13, scope: !455, inlinedAt: !643)
!651 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !650)
!652 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !650)
!653 = !DILocation(line: 416, column: 10, scope: !455, inlinedAt: !643)
!654 = !DILocation(line: 416, column: 2, scope: !455, inlinedAt: !643)
!655 = !DILocation(line: 471, column: 7, scope: !556)
!656 = !DILocation(line: 472, column: 3, scope: !556)
!657 = !DILocation(line: 474, column: 14, scope: !556)
!658 = !DILocation(line: 474, column: 9, scope: !556)
!659 = !DILocation(line: 474, column: 12, scope: !556)
!660 = !DILocation(line: 475, column: 19, scope: !556)
!661 = !DILocation(line: 900, column: 2, scope: !662, inlinedAt: !663)
!662 = distinct !DISubprogram(name: "perf_trace_buf_submit", scope: !50, file: !50, line: 896, type: !30, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!663 = distinct !DILocation(line: 476, column: 2, scope: !556)
!664 = !DILocation(line: 476, column: 2, scope: !556)
!665 = !DILocation(line: 178, column: 2, scope: !666, inlinedAt: !667)
!666 = distinct !DISubprogram(name: "trace_clear_recursion", scope: !570, file: !570, line: 176, type: !30, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!667 = distinct !DILocation(line: 206, column: 2, scope: !668, inlinedAt: !669)
!668 = distinct !DISubprogram(name: "ftrace_test_recursion_unlock", scope: !570, file: !570, line: 204, type: !30, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!669 = distinct !DILocation(line: 480, column: 2, scope: !556)
!670 = !{i64 2152795919}
!671 = !DILocation(line: 16, column: 10, scope: !615, inlinedAt: !672)
!672 = distinct !DILocation(line: 59, column: 3, scope: !673, inlinedAt: !674)
!673 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !580, file: !580, line: 57, type: !30, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!674 = distinct !DILocation(line: 178, column: 2, scope: !666, inlinedAt: !667)
!675 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !676)
!676 = distinct !DILocation(line: 16, column: 10, scope: !615, inlinedAt: !672)
!677 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !676)
!678 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !676)
!679 = !DILocation(line: 16, column: 33, scope: !615, inlinedAt: !672)
!680 = !DILocation(line: 59, column: 23, scope: !673, inlinedAt: !674)
!681 = !DILocation(line: 179, column: 2, scope: !666, inlinedAt: !667)
!682 = !{i64 2152795980}
!683 = !DILocation(line: 180, column: 2, scope: !666, inlinedAt: !667)
!684 = !DILocation(line: 104, column: 4, scope: !414, inlinedAt: !685)
!685 = distinct !DILocation(line: 180, column: 2, scope: !666, inlinedAt: !667)
!686 = !DILocation(line: 104, column: 26, scope: !414, inlinedAt: !685)
!687 = !DILocation(line: 103, column: 9, scope: !414, inlinedAt: !685)
!688 = !DILocation(line: 482, column: 1, scope: !556)
