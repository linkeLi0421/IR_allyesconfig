; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_uprobe.c_pt.bc'
source_filename = "../kernel/trace/trace_uprobe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dyn_event_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_fields = type { ptr, %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.fetch_insn = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.uprobe_task = type { i32, %union.anon.64, ptr, i32, ptr, i32 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.arch_uprobe_task, i32 }
%struct.arch_uprobe_task = type { i32, i32 }
%struct.uprobe_dispatch_data = type { ptr, i32 }
%struct.trace_uprobe = type { %struct.dyn_event, %struct.uprobe_consumer, %struct.path, ptr, ptr, i32, i32, i32, %struct.trace_probe }
%struct.dyn_event = type { %struct.list_head, ptr }
%struct.uprobe_consumer = type { ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.trace_probe = type { %struct.list_head, ptr, i32, i32, [0 x %struct.probe_arg] }
%struct.probe_arg = type { ptr, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { i8, i8, i8 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.81, i64, i64, i64, %union.anon.82, i32, %union.anon.83, %union.anon.84, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.81 = type { i64 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { i64 }
%union.anon.84 = type { i64 }
%struct.hw_perf_event = type { %union.anon.85, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.92, i64, i64, i64, i64 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.78, %struct.trace_event, ptr, ptr, %union.anon.79, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.78 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.79 = type { ptr }
%struct.trace_probe_event = type { i32, %struct.trace_event_class, %struct.trace_event_call, %struct.list_head, %struct.list_head, [0 x %struct.trace_uprobe_filter] }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_uprobe_filter = type { %struct.rwlock_t, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.uprobe_cpu_buffer = type { %struct.mutex, ptr }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.uprobe_trace_entry_head = type { %struct.trace_entry, [0 x i32] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.fetch_type = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@_kbl_addr_process_fetch_insn = internal global i32 ptrtoint (ptr @process_fetch_insn to i32), section "_kprobe_blacklist", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uprobes\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DUMMY_EVENT\00", [20 x i8] zeroinitializer }, align 32
@create_local_trace_uprobe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016trace_uprobe: Failed to allocate trace_uprobe.(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"create_local_trace_uprobe\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kernel/trace/trace_uprobe.c\00", [36 x i8] zeroinitializer }, align 32
@create_local_trace_uprobe._entry_ptr = internal global ptr @create_local_trace_uprobe._entry, section ".printk_index", align 4
@__initcall__kmod_trace_uprobe__295_1663_init_uprobe_trace5 = internal global ptr @init_uprobe_trace, section ".initcall5.init", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dyn_event_list = external dso_local global %struct.list_head, align 4
@trace_uprobe_ops = internal global { %struct.dyn_event_operations, [36 x i8] } { %struct.dyn_event_operations { %struct.list_head zeroinitializer, ptr @trace_uprobe_create, ptr @trace_uprobe_show, ptr @trace_uprobe_is_busy, ptr @trace_uprobe_release, ptr @trace_uprobe_match }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trace_uprobe\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%return\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c".-_\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%c_%s_0x%lx\00", [20 x i8] zeroinitializer }, align 32
@__trace_uprobe_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@event_mutex = external dso_local global %struct.mutex, align 4
@register_trace_uprobe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014trace_uprobe: Failed to register probe event(%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register_trace_uprobe\00", [42 x i8] zeroinitializer }, align 32
@register_trace_uprobe._entry_ptr = internal global ptr @register_trace_uprobe._entry, section ".printk_index", align 4
@validate_ref_ctr_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014trace_uprobe: Reference counter offset mismatch.\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"validate_ref_ctr_offset\00", [40 x i8] zeroinitializer }, align 32
@validate_ref_ctr_offset._entry_ptr = internal global ptr @validate_ref_ctr_offset._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/trace/trace_dynevent.h\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%c:%s/%s %s:0x%0*lx\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(0x%lx)\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%0*lx\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%0*lx(0x%lx)\00", [17 x i8] zeroinitializer }, align 32
@trace_uprobe_primary_from_call.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_dispatcher.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_cpu_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@uprobe_trace_func.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__uprobe_trace_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__uprobe_perf_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"profile buffer not large enough\00", [32 x i8] zeroinitializer }, align 32
@uretprobe_dispatcher.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uretprobe_trace_func.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_trace_uprobe_filter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&filter->rwlock\00", [16 x i8] zeroinitializer }, align 32
@uprobe_funcs = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @print_uprobe_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: (0x%lx <- 0x%lx)\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: (0x%lx)\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s=\00", [27 x i8] zeroinitializer }, align 32
@uprobe_fields_array = internal global { <{ { ptr, { ptr, [16 x i8] } }, %struct.trace_event_fields }>, [48 x i8] } { <{ { ptr, { ptr, [16 x i8] } }, %struct.trace_event_fields }> <{ { ptr, { ptr, [16 x i8] } } { ptr inttoptr (i32 -1 to ptr), { ptr, [16 x i8] } { ptr @uprobe_event_define_fields, [16 x i8] undef } }, %struct.trace_event_fields zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__probe_func\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__probe_ret_ip\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__probe_ip\00", [21 x i8] zeroinitializer }, align 32
@probe_event_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_buffer_refcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@uprobe_buffer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"&per_cpu_ptr(uprobe_cpu_buffer, cpu)->mutex\00", [52 x i8] zeroinitializer }, align 32
@probe_event_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_perf_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_perf_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uprobe_events\00", [18 x i8] zeroinitializer }, align 32
@uprobe_events_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @probes_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @probes_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uprobe_profile\00", [17 x i8] zeroinitializer }, align 32
@uprobe_profile_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @profile_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@probes_seq_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dyn_event_seq_start, ptr @dyn_event_seq_stop, ptr @dyn_event_seq_next, ptr @probes_seq_show }, [16 x i8] zeroinitializer }, align 32
@profile_seq_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dyn_event_seq_start, ptr @dyn_event_seq_stop, ptr @dyn_event_seq_next, ptr @probes_profile_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  %s %-44s %15lu\0A\00", [46 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [33 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.101 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.132 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.133 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.134 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.135 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.136 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.137 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.138 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.139 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.140 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.141 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.142 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.143 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.144 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.145 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.146 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.147 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.148 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.149 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.150 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.151 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.152 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.153 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.154 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.155 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.156 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.157 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.158 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.159 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.160 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.161 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.162 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.163 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.164 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.165 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.166 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.167 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.168 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.169 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.170 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.171 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.172 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.173 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.174 = internal global [15 x i64] zeroinitializer
@__llvm_gcov_ctr.175 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.176 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.177 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.178 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.179 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.180 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.181 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.182 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.183 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.184 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.185 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.186 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.187 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.188 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.189 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.190 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.191 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.192 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.193 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.194 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.195 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.196 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.197 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.198 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.199 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.200 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.201 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_uprobe.gcda\00", [32 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [162 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 559412739, i32 2142383514 }, %emit_function_args_ty { i32 1, i32 487943042, i32 2142383514 }, %emit_function_args_ty { i32 2, i32 -567024349, i32 2142383514 }, %emit_function_args_ty { i32 3, i32 354466788, i32 2142383514 }, %emit_function_args_ty { i32 4, i32 -687788224, i32 2142383514 }, %emit_function_args_ty { i32 5, i32 1828202791, i32 2142383514 }, %emit_function_args_ty { i32 6, i32 -1962197987, i32 2142383514 }, %emit_function_args_ty { i32 7, i32 -1159899074, i32 2142383514 }, %emit_function_args_ty { i32 8, i32 -50162851, i32 2142383514 }, %emit_function_args_ty { i32 9, i32 935578140, i32 2142383514 }, %emit_function_args_ty { i32 10, i32 -10115036, i32 2142383514 }, %emit_function_args_ty { i32 11, i32 1781672997, i32 2142383514 }, %emit_function_args_ty { i32 12, i32 -1976139155, i32 2142383514 }, %emit_function_args_ty { i32 13, i32 1896023916, i32 2142383514 }, %emit_function_args_ty { i32 14, i32 2092244167, i32 2142383514 }, %emit_function_args_ty { i32 15, i32 443316047, i32 2142383514 }, %emit_function_args_ty { i32 16, i32 -1263380182, i32 2142383514 }, %emit_function_args_ty { i32 17, i32 -719072755, i32 2142383514 }, %emit_function_args_ty { i32 18, i32 1211371769, i32 2142383514 }, %emit_function_args_ty { i32 19, i32 1466533208, i32 2142383514 }, %emit_function_args_ty { i32 20, i32 1679504117, i32 2142383514 }, %emit_function_args_ty { i32 21, i32 -263818031, i32 2142383514 }, %emit_function_args_ty { i32 22, i32 1531188520, i32 2142383514 }, %emit_function_args_ty { i32 23, i32 1738962361, i32 2142383514 }, %emit_function_args_ty { i32 24, i32 -1451258160, i32 2142383514 }, %emit_function_args_ty { i32 25, i32 -1355937422, i32 2142383514 }, %emit_function_args_ty { i32 26, i32 -418186605, i32 2142383514 }, %emit_function_args_ty { i32 27, i32 476513480, i32 2142383514 }, %emit_function_args_ty { i32 28, i32 -1160787396, i32 2142383514 }, %emit_function_args_ty { i32 29, i32 -409929734, i32 2142383514 }, %emit_function_args_ty { i32 30, i32 -938559488, i32 2142383514 }, %emit_function_args_ty { i32 31, i32 982398123, i32 2142383514 }, %emit_function_args_ty { i32 32, i32 -1672745738, i32 2142383514 }, %emit_function_args_ty { i32 33, i32 261569290, i32 2142383514 }, %emit_function_args_ty { i32 34, i32 -754772124, i32 2142383514 }, %emit_function_args_ty { i32 35, i32 -964008156, i32 2142383514 }, %emit_function_args_ty { i32 36, i32 -81206156, i32 2142383514 }, %emit_function_args_ty { i32 37, i32 288547376, i32 2142383514 }, %emit_function_args_ty { i32 38, i32 -681369574, i32 2142383514 }, %emit_function_args_ty { i32 39, i32 -1635283390, i32 2142383514 }, %emit_function_args_ty { i32 40, i32 -566101397, i32 2142383514 }, %emit_function_args_ty { i32 41, i32 1893212409, i32 2142383514 }, %emit_function_args_ty { i32 42, i32 2074721563, i32 2142383514 }, %emit_function_args_ty { i32 43, i32 -211354499, i32 2142383514 }, %emit_function_args_ty { i32 44, i32 -720069278, i32 2142383514 }, %emit_function_args_ty { i32 45, i32 -686296810, i32 2142383514 }, %emit_function_args_ty { i32 46, i32 -171752578, i32 2142383514 }, %emit_function_args_ty { i32 47, i32 236810036, i32 2142383514 }, %emit_function_args_ty { i32 48, i32 -17343564, i32 2142383514 }, %emit_function_args_ty { i32 49, i32 1135143176, i32 2142383514 }, %emit_function_args_ty { i32 50, i32 -443816403, i32 2142383514 }, %emit_function_args_ty { i32 51, i32 1062195387, i32 2142383514 }, %emit_function_args_ty { i32 52, i32 222745238, i32 2142383514 }, %emit_function_args_ty { i32 53, i32 -1842939677, i32 2142383514 }, %emit_function_args_ty { i32 54, i32 -1777358737, i32 2142383514 }, %emit_function_args_ty { i32 55, i32 327177389, i32 2142383514 }, %emit_function_args_ty { i32 56, i32 114160805, i32 2142383514 }, %emit_function_args_ty { i32 57, i32 565975692, i32 2142383514 }, %emit_function_args_ty { i32 58, i32 -923041819, i32 2142383514 }, %emit_function_args_ty { i32 59, i32 -117061252, i32 2142383514 }, %emit_function_args_ty { i32 60, i32 2125992999, i32 2142383514 }, %emit_function_args_ty { i32 61, i32 -1975985700, i32 2142383514 }, %emit_function_args_ty { i32 62, i32 -693540903, i32 2142383514 }, %emit_function_args_ty { i32 63, i32 1576198268, i32 2142383514 }, %emit_function_args_ty { i32 64, i32 -2084091300, i32 2142383514 }, %emit_function_args_ty { i32 65, i32 714452822, i32 2142383514 }, %emit_function_args_ty { i32 66, i32 1607641067, i32 2142383514 }, %emit_function_args_ty { i32 67, i32 122779977, i32 2142383514 }, %emit_function_args_ty { i32 68, i32 1210022318, i32 2142383514 }, %emit_function_args_ty { i32 69, i32 939702164, i32 2142383514 }, %emit_function_args_ty { i32 70, i32 -1520414420, i32 2142383514 }, %emit_function_args_ty { i32 71, i32 -481620889, i32 2142383514 }, %emit_function_args_ty { i32 72, i32 1112388048, i32 2142383514 }, %emit_function_args_ty { i32 73, i32 1392377819, i32 2142383514 }, %emit_function_args_ty { i32 74, i32 -449730459, i32 2142383514 }, %emit_function_args_ty { i32 75, i32 -1151086202, i32 2142383514 }, %emit_function_args_ty { i32 76, i32 201613120, i32 2142383514 }, %emit_function_args_ty { i32 77, i32 -383544139, i32 2142383514 }, %emit_function_args_ty { i32 78, i32 1991428617, i32 2142383514 }, %emit_function_args_ty { i32 79, i32 -1856728879, i32 2142383514 }, %emit_function_args_ty { i32 80, i32 181361786, i32 2142383514 }, %emit_function_args_ty { i32 81, i32 -986448294, i32 2142383514 }, %emit_function_args_ty { i32 82, i32 1902011389, i32 2142383514 }, %emit_function_args_ty { i32 83, i32 -1708490279, i32 2142383514 }, %emit_function_args_ty { i32 84, i32 -1342645549, i32 2142383514 }, %emit_function_args_ty { i32 85, i32 -20435385, i32 2142383514 }, %emit_function_args_ty { i32 86, i32 -1696498604, i32 2142383514 }, %emit_function_args_ty { i32 87, i32 1640172614, i32 2142383514 }, %emit_function_args_ty { i32 88, i32 1957978722, i32 2142383514 }, %emit_function_args_ty { i32 89, i32 -959788305, i32 2142383514 }, %emit_function_args_ty { i32 90, i32 736262206, i32 2142383514 }, %emit_function_args_ty { i32 91, i32 436087400, i32 2142383514 }, %emit_function_args_ty { i32 92, i32 105093095, i32 2142383514 }, %emit_function_args_ty { i32 93, i32 -1679351620, i32 2142383514 }, %emit_function_args_ty { i32 94, i32 1389786845, i32 2142383514 }, %emit_function_args_ty { i32 95, i32 -1877567392, i32 2142383514 }, %emit_function_args_ty { i32 96, i32 1538019956, i32 2142383514 }, %emit_function_args_ty { i32 97, i32 -400554785, i32 2142383514 }, %emit_function_args_ty { i32 98, i32 -1782918348, i32 2142383514 }, %emit_function_args_ty { i32 99, i32 795548855, i32 2142383514 }, %emit_function_args_ty { i32 100, i32 727036892, i32 2142383514 }, %emit_function_args_ty { i32 101, i32 1841983822, i32 2142383514 }, %emit_function_args_ty { i32 102, i32 1624494247, i32 2142383514 }, %emit_function_args_ty { i32 103, i32 -963894156, i32 2142383514 }, %emit_function_args_ty { i32 104, i32 1473378369, i32 2142383514 }, %emit_function_args_ty { i32 105, i32 -14913123, i32 2142383514 }, %emit_function_args_ty { i32 106, i32 1050148541, i32 2142383514 }, %emit_function_args_ty { i32 107, i32 -676942071, i32 2142383514 }, %emit_function_args_ty { i32 108, i32 1913611791, i32 2142383514 }, %emit_function_args_ty { i32 109, i32 -1923719376, i32 2142383514 }, %emit_function_args_ty { i32 110, i32 -885786684, i32 2142383514 }, %emit_function_args_ty { i32 111, i32 -2016210666, i32 2142383514 }, %emit_function_args_ty { i32 112, i32 1663999641, i32 2142383514 }, %emit_function_args_ty { i32 113, i32 1183073139, i32 2142383514 }, %emit_function_args_ty { i32 114, i32 407044135, i32 2142383514 }, %emit_function_args_ty { i32 115, i32 -1554398684, i32 2142383514 }, %emit_function_args_ty { i32 116, i32 -1567486560, i32 2142383514 }, %emit_function_args_ty { i32 117, i32 -1111025999, i32 2142383514 }, %emit_function_args_ty { i32 118, i32 858041679, i32 2142383514 }, %emit_function_args_ty { i32 119, i32 -897520410, i32 2142383514 }, %emit_function_args_ty { i32 120, i32 -1111330171, i32 2142383514 }, %emit_function_args_ty { i32 121, i32 1333844298, i32 2142383514 }, %emit_function_args_ty { i32 122, i32 -1096760687, i32 2142383514 }, %emit_function_args_ty { i32 123, i32 160442422, i32 2142383514 }, %emit_function_args_ty { i32 124, i32 443268859, i32 2142383514 }, %emit_function_args_ty { i32 125, i32 1710487500, i32 2142383514 }, %emit_function_args_ty { i32 126, i32 -584910999, i32 2142383514 }, %emit_function_args_ty { i32 127, i32 1315555644, i32 2142383514 }, %emit_function_args_ty { i32 128, i32 1554298287, i32 2142383514 }, %emit_function_args_ty { i32 129, i32 -1386246184, i32 2142383514 }, %emit_function_args_ty { i32 130, i32 1696957573, i32 2142383514 }, %emit_function_args_ty { i32 131, i32 -958267212, i32 2142383514 }, %emit_function_args_ty { i32 132, i32 -1215624999, i32 2142383514 }, %emit_function_args_ty { i32 133, i32 759637634, i32 2142383514 }, %emit_function_args_ty { i32 134, i32 -41892340, i32 2142383514 }, %emit_function_args_ty { i32 135, i32 -1808849483, i32 2142383514 }, %emit_function_args_ty { i32 136, i32 1775147259, i32 2142383514 }, %emit_function_args_ty { i32 137, i32 -472178862, i32 2142383514 }, %emit_function_args_ty { i32 138, i32 -2055431399, i32 2142383514 }, %emit_function_args_ty { i32 139, i32 2134589493, i32 2142383514 }, %emit_function_args_ty { i32 140, i32 -116018932, i32 2142383514 }, %emit_function_args_ty { i32 141, i32 -616621013, i32 2142383514 }, %emit_function_args_ty { i32 142, i32 1566508774, i32 2142383514 }, %emit_function_args_ty { i32 143, i32 -597614759, i32 2142383514 }, %emit_function_args_ty { i32 144, i32 997484024, i32 2142383514 }, %emit_function_args_ty { i32 145, i32 1026652148, i32 2142383514 }, %emit_function_args_ty { i32 146, i32 158552296, i32 2142383514 }, %emit_function_args_ty { i32 147, i32 -884734375, i32 2142383514 }, %emit_function_args_ty { i32 148, i32 1177186886, i32 2142383514 }, %emit_function_args_ty { i32 149, i32 304386952, i32 2142383514 }, %emit_function_args_ty { i32 150, i32 -689380191, i32 2142383514 }, %emit_function_args_ty { i32 151, i32 -1940612203, i32 2142383514 }, %emit_function_args_ty { i32 152, i32 -242200015, i32 2142383514 }, %emit_function_args_ty { i32 153, i32 577304209, i32 2142383514 }, %emit_function_args_ty { i32 154, i32 986549380, i32 2142383514 }, %emit_function_args_ty { i32 155, i32 975909662, i32 2142383514 }, %emit_function_args_ty { i32 156, i32 -1065303730, i32 2142383514 }, %emit_function_args_ty { i32 157, i32 -1595387747, i32 2142383514 }, %emit_function_args_ty { i32 158, i32 -590333515, i32 2142383514 }, %emit_function_args_ty { i32 159, i32 1575496695, i32 2142383514 }, %emit_function_args_ty { i32 160, i32 -1666292071, i32 2142383514 }, %emit_function_args_ty { i32 161, i32 -1693003310, i32 2142383514 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [162 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 20, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.85 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.86 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.87 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.88 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.89 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.90 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.95 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.96 }, %emit_arcs_args_ty { i32 33, ptr @__llvm_gcov_ctr.97 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.98 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.99 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.100 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.101 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.102 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.103 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.104 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.105 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.106 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.107 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.108 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.109 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.110 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.111 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.112 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.113 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.114 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.115 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.116 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.117 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.118 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.119 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.120 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.121 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.122 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.123 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.124 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.125 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.126 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.127 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.128 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.129 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.130 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.131 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.132 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.133 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.134 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.135 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.136 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.137 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.138 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.139 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.140 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.141 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.142 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.143 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.144 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.145 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.146 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.147 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.148 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.149 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.150 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.151 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.152 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.153 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.154 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.155 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.156 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.157 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.158 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.159 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.160 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.161 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.162 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.163 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.164 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.165 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.166 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.167 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.168 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.169 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.170 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.171 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.172 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.173 }, %emit_arcs_args_ty { i32 15, ptr @__llvm_gcov_ctr.174 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.175 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.176 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.177 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.178 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.179 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.180 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.181 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.182 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.183 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.184 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.185 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.186 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.187 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.188 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.189 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.190 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.191 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.192 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.193 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.194 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.195 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.196 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.197 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.198 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.199 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.200 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.201 }]
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 16]
@__sancov_gen_cov_switch_values.204 = internal global [7 x i64] [i64 5, i64 32, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.205 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.206 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 8, i64 112, i64 114]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.209 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1599, i32 26 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1599, i32 47 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1603, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 230, i32 6 }
@___asan_gen_.232 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 214, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 156, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"trace_uprobe_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 45, i32 36 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 582, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 628, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 662, i32 23 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 666, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 521, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 482, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [33 x i8] c"../kernel/trace/trace_dynevent.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 82, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 748, i32 16 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 753, i32 17 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 756, i32 17 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 296, i32 30 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 299, i32 30 }
@___asan_gen_.288 = private unnamed_addr constant [18 x i8] c"uprobe_cpu_buffer\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 857, i32 43 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 994, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 695, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 723, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1360, i32 6 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 260, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [13 x i8] c"uprobe_funcs\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1543, i32 37 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1029, i32 23 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1034, i32 23 }
@___asan_gen_.322 = private unnamed_addr constant [35 x i8] c"../kernel/trace/trace_probe_tmpl.h\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 226, i32 23 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c"uprobe_fields_array\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1547, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1184, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1185, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1188, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [21 x i8] c"uprobe_buffer_refcnt\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 858, i32 12 }
@___asan_gen_.342 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 876, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1655, i32 20 }
@___asan_gen_.351 = private unnamed_addr constant [18 x i8] c"uprobe_events_ops\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 803, i32 37 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1658, i32 20 }
@___asan_gen_.357 = private unnamed_addr constant [19 x i8] c"uprobe_profile_ops\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 845, i32 37 }
@___asan_gen_.360 = private unnamed_addr constant [14 x i8] c"probes_seq_op\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 772, i32 36 }
@___asan_gen_.363 = private unnamed_addr constant [15 x i8] c"profile_seq_op\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 827, i32 36 }
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.367 = private constant [31 x i8] c"../kernel/trace/trace_uprobe.c\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 822, i32 16 }
@___asan_gen_.369 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__initcall__kmod_trace_uprobe__295_1663_init_uprobe_trace5, ptr @_kbl_addr_process_fetch_insn, ptr @create_local_trace_uprobe._entry, ptr @create_local_trace_uprobe._entry_ptr, ptr @register_trace_uprobe._entry, ptr @register_trace_uprobe._entry_ptr, ptr @validate_ref_ctr_offset._entry, ptr @validate_ref_ctr_offset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @trace_uprobe_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @uprobe_cpu_buffer, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @init_trace_uprobe_filter.__key, ptr @.str.27, ptr @uprobe_funcs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @uprobe_fields_array, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @uprobe_buffer_refcnt, ptr @uprobe_buffer_init.__key, ptr @.str.36, ptr @.str.38, ptr @uprobe_events_ops, ptr @.str.39, ptr @uprobe_profile_ops, ptr @probes_seq_op, ptr @profile_seq_op, ptr @.str.40], section "llvm.metadata"
@1 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_local_trace_uprobe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_uprobe_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_trace_uprobe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_ref_ctr_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_cpu_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_trace_uprobe_filter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_fields_array to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_buffer_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_buffer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_events_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_profile_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probes_seq_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_seq_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_fetch_insn(ptr nocapture noundef readonly %code, ptr noundef %rec, ptr noundef %dest, ptr noundef %base) #0 align 64 !dbg !142 {
entry:
  %ret.i = alloca i32, align 4
  %val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !145
  %0 = ptrtoint ptr %code to i32, !dbg !146
  call void @__asan_load4_noabort(i32 %0), !dbg !146
  %1 = load i32, ptr %code, align 4, !dbg !146
  %2 = zext i32 %1 to i64, !dbg !147
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values), !dbg !147
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb8
    i32 9, label %sw.bb9
    i32 8, label %sw.bb10
  ], !dbg !147

sw.bb:                                            ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !148
  %3 = add i64 %gcov_ctr, 1, !dbg !148
  store i64 %3, ptr @__llvm_gcov_ctr, align 16, !dbg !148
  %4 = getelementptr inbounds %struct.fetch_insn, ptr %code, i32 0, i32 1, !dbg !149
  %5 = ptrtoint ptr %4 to i32, !dbg !149
  call void @__asan_load4_noabort(i32 %5), !dbg !149
  %6 = load i32, ptr %4, align 4, !dbg !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %6), !dbg !150
  %cmp.i = icmp ugt i32 %6, 68, !dbg !150
  br i1 %cmp.i, label %if.then.i33, label %if.end.i, !dbg !150, !prof !154

if.then.i33:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20, !dbg !155
  %gcov_ctr.i32 = load i64, ptr @__llvm_gcov_ctr.58, align 8, !dbg !155
  %7 = add i64 %gcov_ctr.i32, 1, !dbg !155
  store i64 %7, ptr @__llvm_gcov_ctr.58, align 8, !dbg !155
  br label %sw.epilog, !dbg !155

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20, !dbg !156
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !156
  %8 = add i64 %gcov_ctr2.i, 1, !dbg !156
  store i64 %8, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !156
  %9 = ptrtoint ptr %rec to i32, !dbg !157
  %add.i34 = add i32 %6, %9, !dbg !158
  %10 = inttoptr i32 %add.i34 to ptr, !dbg !159
  %11 = ptrtoint ptr %10 to i32, !dbg !160
  call void @__asan_load4_noabort(i32 %11), !dbg !160
  %12 = load i32, ptr %10, align 4, !dbg !160
  br label %sw.epilog, !dbg !161

sw.bb1:                                           ; preds = %entry
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !162
  %13 = add i64 %gcov_ctr14, 1, !dbg !162
  store i64 %13, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !162
  %14 = getelementptr inbounds %struct.fetch_insn, ptr %code, i32 0, i32 1, !dbg !163
  %15 = ptrtoint ptr %14 to i32, !dbg !163
  call void @__asan_load4_noabort(i32 %15), !dbg !163
  %16 = load i32, ptr %14, align 4, !dbg !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #21, !dbg !164
  %17 = ptrtoint ptr %ret.i to i32, !dbg !167
  call void @__asan_store4_noabort(i32 %17), !dbg !167
  store i32 -1, ptr %ret.i, align 4, !dbg !167, !annotation !168
  %gcov_ctr.i6.i = load i64, ptr @__llvm_gcov_ctr.60, align 8
  %18 = add i64 %gcov_ctr.i6.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.60, align 8
  %arrayidx.i.i36 = getelementptr [18 x i32], ptr %rec, i32 0, i32 13, !dbg !169
  %19 = ptrtoint ptr %arrayidx.i.i36 to i32, !dbg !169
  call void @__asan_load4_noabort(i32 %19), !dbg !169
  %20 = load i32, ptr %arrayidx.i.i36, align 4, !dbg !169
  %gcov_ctr.i7.i = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %21 = add i64 %gcov_ctr.i7.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.64, align 8
  %mul.i.i = shl i32 %16, 2, !dbg !172
  %add.i.i37 = add i32 %20, %mul.i.i, !dbg !175
  %22 = inttoptr i32 %add.i.i37 to ptr, !dbg !176
  %gcov_ctr.i.i38 = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %23 = add i64 %gcov_ctr.i.i38, 1
  store i64 %23, ptr @__llvm_gcov_ctr.65, align 8
  %gcov_ctr.i.i.i39 = load i64, ptr @__llvm_gcov_ctr.66, align 16, !dbg !177
  %24 = add i64 %gcov_ctr.i.i.i39, 1, !dbg !177
  store i64 %24, ptr @__llvm_gcov_ctr.66, align 16, !dbg !177
  %gcov_ctr67.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !184
  %25 = add i64 %gcov_ctr67.i.i.i, 1, !dbg !184
  store i64 %25, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !184
  %gcov_ctr.i.i.i.i40 = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %26 = add i64 %gcov_ctr.i.i.i.i40, 1
  store i64 %26, ptr @__llvm_gcov_ctr.69, align 8
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !185
  %27 = add i64 %gcov_ctr3.i.i, 1, !dbg !185
  store i64 %27, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !185
  %gcov_ctr.i7.i.i = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %28 = add i64 %gcov_ctr.i7.i.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.67, align 16
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #21, !dbg !186
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #21, !dbg !189
  br i1 %call.i.i.i, label %sw.bb1.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i, !dbg !190

sw.bb1.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #20, !dbg !190
  br label %if.then11.i.i.i, !dbg !190

land.lhs.true.i.i.i:                              ; preds = %sw.bb1
  %gcov_ctr13.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !191
  %29 = add i64 %gcov_ctr13.i.i.i, 1, !dbg !191
  store i64 %29, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !191
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 4, i32 -1226833920) #22, !dbg !191, !srcloc !192
  %asmresult.i.i.i = extractvalue { i32, i32 } %30, 0, !dbg !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i), !dbg !191
  %cmp.i8.i.i = icmp eq i32 %asmresult.i.i.i, 0, !dbg !191
  br i1 %cmp.i8.i.i, label %if.end.i.i.i46, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !dbg !193, !prof !194

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !193
  br label %if.then11.i.i.i, !dbg !193

if.end.i.i.i46:                                   ; preds = %land.lhs.true.i.i.i
  %gcov_ctr14.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !195
  %31 = add i64 %gcov_ctr14.i.i.i, 1, !dbg !195
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !195
  %gcov_ctr.i.i9.i.i = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %32 = add i64 %gcov_ctr.i.i9.i.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.70, align 8
  %call.i.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ret.i, i32 noundef 4) #21, !dbg !196
  %gcov_ctr.i.i.i.i.i42 = load i64, ptr @__llvm_gcov_ctr.72, align 8
  %33 = add i64 %gcov_ctr.i.i.i.i.i42, 1
  store i64 %33, ptr @__llvm_gcov_ctr.72, align 8
  %gcov_ctr.i27.i.i.i = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %34 = add i64 %gcov_ctr.i27.i.i.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.71, align 8
  %gcov_ctr.i.i28.i.i.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %35 = add i64 %gcov_ctr.i.i28.i.i.i, 1
  store i64 %35, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i.i.i.i.i43 = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %36 = add i64 %gcov_ctr.i.i.i.i.i.i43, 1
  store i64 %36, ptr @__llvm_gcov_ctr.75, align 8
  %gcov_ctr.i.i.i.i.i.i.i44 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !200
  %37 = add i64 %gcov_ctr.i.i.i.i.i.i.i44, 1, !dbg !200
  store i64 %37, ptr @__llvm_gcov_ctr.77, align 8, !dbg !200
  %38 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !200
  %and.i.i.i.i.i.i.i45 = and i32 %38, -16384, !dbg !212
  %39 = inttoptr i32 %and.i.i.i.i.i.i.i45 to ptr, !dbg !213
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4, !dbg !214
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !dbg !215, !srcloc !216
  %and.i.i.i.i.i = and i32 %40, -13, !dbg !217
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4, !dbg !218
  %gcov_ctr.i2.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %41 = add i64 %gcov_ctr.i2.i.i.i.i.i, 1
  store i64 %41, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #21, !dbg !219, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !223, !srcloc !224
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ret.i, ptr noundef %22, i32 noundef 4) #21, !dbg !225
  %gcov_ctr.i3.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %42 = add i64 %gcov_ctr.i3.i.i.i.i, 1
  store i64 %42, ptr @__llvm_gcov_ctr.74, align 8
  %gcov_ctr.i.i4.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %43 = add i64 %gcov_ctr.i.i4.i.i.i.i, 1
  store i64 %43, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #21, !dbg !226, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !230, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i), !dbg !231
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0, !dbg !231
  br i1 %tobool4.not.i.i.i, label %if.end.i50, label %if.end.i.i.i46.if.then11.i.i.i_crit_edge, !dbg !231, !prof !194

if.end.i.i.i46.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #20, !dbg !231
  br label %if.then11.i.i.i, !dbg !231

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i46.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb1.if.then11.i.i.i_crit_edge
  %res.0.i.i10.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i46.if.then11.i.i.i_crit_edge ], [ 4, %sw.bb1.if.then11.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %gcov_ctr15.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !232
  %44 = add i64 %gcov_ctr15.i.i.i, 1, !dbg !232
  store i64 %44, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !232
  %sub.i.i.i47 = sub i32 4, %res.0.i.i10.i, !dbg !233
  %add.ptr.i.i.i48 = getelementptr i8, ptr %ret.i, i32 %sub.i.i.i47, !dbg !234
  %45 = call ptr @memset(ptr %add.ptr.i.i.i48, i32 0, i32 %res.0.i.i10.i), !dbg !235
  %gcov_ctr.i49 = load i64, ptr @__llvm_gcov_ctr.59, align 8, !dbg !236
  %46 = add i64 %gcov_ctr.i49, 1, !dbg !236
  store i64 %46, ptr @__llvm_gcov_ctr.59, align 8, !dbg !236
  br label %get_user_stack_nth.exit, !dbg !236

if.end.i50:                                       ; preds = %if.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #20, !dbg !237
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !237
  %47 = add i64 %gcov_ctr4.i, 1, !dbg !237
  store i64 %47, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !237
  %48 = ptrtoint ptr %ret.i to i32, !dbg !237
  call void @__asan_load4_noabort(i32 %48), !dbg !237
  %49 = load i32, ptr %ret.i, align 4, !dbg !237
  br label %get_user_stack_nth.exit, !dbg !238

get_user_stack_nth.exit:                          ; preds = %if.end.i50, %if.then11.i.i.i
  %retval.0.i51 = phi i32 [ 0, %if.then11.i.i.i ], [ %49, %if.end.i50 ], !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #21, !dbg !240
  br label %sw.epilog, !dbg !241

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !242
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !242
  %50 = add i64 %gcov_ctr15, 1, !dbg !242
  store i64 %50, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !242
  %gcov_ctr.i52 = load i64, ptr @__llvm_gcov_ctr.60, align 8
  %51 = add i64 %gcov_ctr.i52, 1
  store i64 %51, ptr @__llvm_gcov_ctr.60, align 8
  %arrayidx.i = getelementptr [18 x i32], ptr %rec, i32 0, i32 13, !dbg !243
  %52 = ptrtoint ptr %arrayidx.i to i32, !dbg !243
  call void @__asan_load4_noabort(i32 %52), !dbg !243
  %53 = load i32, ptr %arrayidx.i, align 4, !dbg !243
  br label %sw.epilog, !dbg !245

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !246
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !246
  %54 = add i64 %gcov_ctr16, 1, !dbg !246
  store i64 %54, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !246
  %gcov_ctr.i53 = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %55 = add i64 %gcov_ctr.i53, 1
  store i64 %55, ptr @__llvm_gcov_ctr.61, align 8
  %56 = ptrtoint ptr %rec to i32, !dbg !247
  call void @__asan_load4_noabort(i32 %56), !dbg !247
  %57 = load i32, ptr %rec, align 4, !dbg !247
  br label %sw.epilog, !dbg !250

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !251
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !251
  %58 = add i64 %gcov_ctr17, 1, !dbg !251
  store i64 %58, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !251
  %59 = getelementptr inbounds %struct.fetch_insn, ptr %code, i32 0, i32 1, !dbg !252
  %60 = ptrtoint ptr %59 to i32, !dbg !252
  call void @__asan_load4_noabort(i32 %60), !dbg !252
  %61 = load i32, ptr %59, align 4, !dbg !252
  br label %sw.epilog, !dbg !253

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !254
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !254
  %62 = add i64 %gcov_ctr18, 1, !dbg !254
  store i64 %62, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !254
  br label %sw.epilog, !dbg !255

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !256
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !256
  %63 = add i64 %gcov_ctr19, 1, !dbg !256
  store i64 %63, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !256
  %64 = getelementptr inbounds %struct.fetch_insn, ptr %code, i32 0, i32 1, !dbg !257
  %65 = ptrtoint ptr %64 to i32, !dbg !257
  call void @__asan_load4_noabort(i32 %65), !dbg !257
  %66 = load ptr, ptr %64, align 4, !dbg !257
  %67 = ptrtoint ptr %66 to i32, !dbg !258
  br label %sw.epilog, !dbg !259

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !260
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8, !dbg !260
  %68 = add i64 %gcov_ctr20, 1, !dbg !260
  store i64 %68, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8, !dbg !260
  %69 = getelementptr inbounds %struct.fetch_insn, ptr %code, i32 0, i32 1, !dbg !261
  %70 = ptrtoint ptr %69 to i32, !dbg !261
  call void @__asan_load4_noabort(i32 %70), !dbg !261
  %71 = load i32, ptr %69, align 4, !dbg !261
  %gcov_ctr.i54 = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %72 = add i64 %gcov_ctr.i54, 1
  store i64 %72, ptr @__llvm_gcov_ctr.62, align 8
  %gcov_ctr.i.i55 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !262
  %73 = add i64 %gcov_ctr.i.i55, 1, !dbg !262
  store i64 %73, ptr @__llvm_gcov_ctr.77, align 8, !dbg !262
  %74 = tail call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !262
  %and.i.i = and i32 %74, -16384, !dbg !266
  %75 = inttoptr i32 %and.i.i to ptr, !dbg !267
  %task.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2, !dbg !268
  %76 = ptrtoint ptr %task.i to i32, !dbg !268
  call void @__asan_load4_noabort(i32 %76), !dbg !268
  %77 = load ptr, ptr %task.i, align 8, !dbg !268
  %utask.i = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 208, !dbg !269
  %78 = ptrtoint ptr %utask.i to i32, !dbg !269
  call void @__asan_load4_noabort(i32 %78), !dbg !269
  %79 = load ptr, ptr %utask.i, align 16, !dbg !269
  %vaddr.i = getelementptr inbounds %struct.uprobe_task, ptr %79, i32 0, i32 1, i32 0, i32 1, !dbg !270
  %80 = ptrtoint ptr %vaddr.i to i32, !dbg !270
  call void @__asan_load4_noabort(i32 %80), !dbg !270
  %81 = load i32, ptr %vaddr.i, align 4, !dbg !270
  %82 = inttoptr i32 %81 to ptr, !dbg !271
  %bp_addr.i = getelementptr inbounds %struct.uprobe_dispatch_data, ptr %82, i32 0, i32 1, !dbg !272
  %83 = ptrtoint ptr %bp_addr.i to i32, !dbg !272
  call void @__asan_load4_noabort(i32 %83), !dbg !272
  %84 = load i32, ptr %bp_addr.i, align 4, !dbg !272
  %85 = ptrtoint ptr %82 to i32, !dbg !273
  call void @__asan_load4_noabort(i32 %85), !dbg !273
  %86 = load ptr, ptr %82, align 4, !dbg !273
  %offset.i56 = getelementptr inbounds %struct.trace_uprobe, ptr %86, i32 0, i32 5, !dbg !274
  %87 = ptrtoint ptr %offset.i56 to i32, !dbg !274
  call void @__asan_load4_noabort(i32 %87), !dbg !274
  %88 = load i32, ptr %offset.i56, align 4, !dbg !274
  %sub.i = add i32 %84, %71, !dbg !275
  %add.i57 = sub i32 %sub.i, %88, !dbg !276
  br label %sw.epilog, !dbg !277

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !278
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !278
  %89 = add i64 %gcov_ctr21, 1, !dbg !278
  store i64 %89, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !278
  br label %cleanup, !dbg !278

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb3, %get_user_stack_nth.exit, %if.end.i, %if.then.i33
  %val.0 = phi i32 [ %add.i57, %sw.bb10 ], [ %67, %sw.bb9 ], [ -70, %sw.bb8 ], [ %61, %sw.bb7 ], [ %57, %sw.bb5 ], [ %53, %sw.bb3 ], [ %retval.0.i51, %get_user_stack_nth.exit ], [ 0, %if.then.i33 ], [ %12, %if.end.i ], !dbg !279
  %incdec.ptr = getelementptr %struct.fetch_insn, ptr %code, i32 1, !dbg !280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %90 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %val.0, ptr %val.addr.i, align 4
  br label %stage2.i, !dbg !281

stage2.i:                                         ; preds = %if.end79.i, %sw.epilog
  %code.addr.0.i = phi ptr [ %incdec.ptr, %sw.epilog ], [ %incdec.ptr73.i, %if.end79.i ]
  %dest.addr.0.i = phi ptr [ %dest, %sw.epilog ], [ %dest.addr.2.i, %if.end79.i ]
  %total.0.i = phi i32 [ 0, %sw.epilog ], [ %add60.i, %if.end79.i ], !dbg !285
  %ret.0.i = phi i32 [ 0, %sw.epilog ], [ %ret.5.i, %if.end79.i ], !dbg !285
  %i.0.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %if.end79.i ], !dbg !285
  %loc.0.i = phi i32 [ 0, %sw.epilog ], [ %loc.3.i, %if.end79.i ], !dbg !286
  %lval.0.i = phi i32 [ %val.0, %sw.epilog ], [ %lval.1.i, %if.end79.i ], !dbg !287
  br label %do.body.i, !dbg !288

do.body.i:                                        ; preds = %if.end10.i, %stage2.i
  %code.addr.1.i = phi ptr [ %code.addr.0.i, %stage2.i ], [ %incdec.ptr.i, %if.end10.i ]
  %ret.1.i = phi i32 [ %ret.0.i, %stage2.i ], [ 0, %if.end10.i ], !dbg !285
  %lval.1.i = phi i32 [ %lval.0.i, %stage2.i ], [ %lval.2310.i, %if.end10.i ], !dbg !285
  %91 = ptrtoint ptr %code.addr.1.i to i32, !dbg !289
  call void @__asan_load4_noabort(i32 %91), !dbg !289
  %92 = load i32, ptr %code.addr.1.i, align 4, !dbg !289
  %93 = zext i32 %92 to i64, !dbg !290
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.202), !dbg !290
  switch i32 %92, label %if.else7.i [
    i32 10, label %if.then.i
    i32 11, label %if.then3.i
  ], !dbg !290

if.then.i:                                        ; preds = %do.body.i
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.63, align 16, !dbg !291
  %94 = add i64 %gcov_ctr.i, 1, !dbg !291
  store i64 %94, ptr @__llvm_gcov_ctr.63, align 16, !dbg !291
  %95 = ptrtoint ptr %val.addr.i to i32, !dbg !291
  call void @__asan_load4_noabort(i32 %95), !dbg !291
  %96 = load i32, ptr %val.addr.i, align 4, !dbg !291
  %97 = inttoptr i32 %96 to ptr, !dbg !292
  %offset.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1, i32 0, i32 1, !dbg !293
  %98 = ptrtoint ptr %offset.i to i32, !dbg !293
  call void @__asan_load4_noabort(i32 %98), !dbg !293
  %99 = load i32, ptr %offset.i, align 4, !dbg !293
  %add.ptr.i = getelementptr i8, ptr %97, i32 %99, !dbg !294
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %100 = add i64 %gcov_ctr.i.i, 1
  store i64 %100, ptr @__llvm_gcov_ctr.78, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %101 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %101, ptr @__llvm_gcov_ctr.65, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.66, align 16, !dbg !295
  %102 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !295
  store i64 %102, ptr @__llvm_gcov_ctr.66, align 16, !dbg !295
  %gcov_ctr67.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !300
  %103 = add i64 %gcov_ctr67.i.i.i.i, 1, !dbg !300
  store i64 %103, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !300
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %104 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %104, ptr @__llvm_gcov_ctr.69, align 8
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !301
  %105 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !301
  store i64 %105, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !301
  %gcov_ctr.i7.i.i.i = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %106 = add i64 %gcov_ctr.i7.i.i.i, 1
  store i64 %106, ptr @__llvm_gcov_ctr.67, align 16
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #21, !dbg !302
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #21, !dbg !304
  br i1 %call.i.i.i.i, label %if.then.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i, !dbg !305

if.then.i.if.then11.i.i.i.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !305
  br label %if.then11.i.i.i.i, !dbg !305

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %gcov_ctr13.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !306
  %107 = add i64 %gcov_ctr13.i.i.i.i, 1, !dbg !306
  store i64 %107, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !306
  %108 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i, i32 4, i32 -1226833920) #22, !dbg !306, !srcloc !192
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %108, 0, !dbg !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i), !dbg !306
  %cmp.i8.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0, !dbg !306
  br i1 %cmp.i8.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !dbg !307, !prof !194

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !307
  br label %if.then11.i.i.i.i, !dbg !307

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %gcov_ctr14.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !308
  %109 = add i64 %gcov_ctr14.i.i.i.i, 1, !dbg !308
  store i64 %109, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !308
  %gcov_ctr.i.i9.i.i.i = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %110 = add i64 %gcov_ctr.i.i9.i.i.i, 1
  store i64 %110, ptr @__llvm_gcov_ctr.70, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.addr.i, i32 noundef 4) #21, !dbg !309
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.72, align 8
  %111 = add i64 %gcov_ctr.i.i.i.i.i.i, 1
  store i64 %111, ptr @__llvm_gcov_ctr.72, align 8
  %gcov_ctr.i27.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %112 = add i64 %gcov_ctr.i27.i.i.i.i, 1
  store i64 %112, ptr @__llvm_gcov_ctr.71, align 8
  %gcov_ctr.i.i28.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %113 = add i64 %gcov_ctr.i.i28.i.i.i.i, 1
  store i64 %113, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %114 = add i64 %gcov_ctr.i.i.i.i.i.i.i, 1
  store i64 %114, ptr @__llvm_gcov_ctr.75, align 8
  %gcov_ctr.i.i.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !311
  %115 = add i64 %gcov_ctr.i.i.i.i.i.i.i.i, 1, !dbg !311
  store i64 %115, ptr @__llvm_gcov_ctr.77, align 8, !dbg !311
  %116 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !311
  %and.i.i.i.i.i.i.i.i = and i32 %116, -16384, !dbg !316
  %117 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr, !dbg !317
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 4, !dbg !318
  %118 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !dbg !319, !srcloc !216
  %and.i.i.i.i.i.i = and i32 %118, -13, !dbg !320
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4, !dbg !321
  %gcov_ctr.i2.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %119 = add i64 %gcov_ctr.i2.i.i.i.i.i.i, 1
  store i64 %119, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #21, !dbg !322, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !324, !srcloc !224
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.addr.i, ptr noundef %add.ptr.i, i32 noundef 4) #21, !dbg !325
  %gcov_ctr.i3.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %120 = add i64 %gcov_ctr.i3.i.i.i.i.i, 1
  store i64 %120, ptr @__llvm_gcov_ctr.74, align 8
  %gcov_ctr.i.i4.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %121 = add i64 %gcov_ctr.i.i4.i.i.i.i.i, 1
  store i64 %121, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #21, !dbg !326, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !329, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i), !dbg !330
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0, !dbg !330
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end10.i_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !dbg !330, !prof !194

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !330
  br label %if.then11.i.i.i.i, !dbg !330

if.end.i.i.i.i.if.end10.i_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !330
  br label %if.end10.i, !dbg !330

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i298.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %gcov_ctr15.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !331
  %122 = add i64 %gcov_ctr15.i.i.i.i, 1, !dbg !331
  store i64 %122, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !331
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i298.i, !dbg !332
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val.addr.i, i32 %sub.i.i.i.i, !dbg !333
  %123 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i298.i), !dbg !334
  br label %if.then9.i, !dbg !334

if.then3.i:                                       ; preds = %do.body.i
  %124 = ptrtoint ptr %val.addr.i to i32, !dbg !335
  call void @__asan_load4_noabort(i32 %124), !dbg !335
  %125 = load i32, ptr %val.addr.i, align 4, !dbg !335
  %126 = inttoptr i32 %125 to ptr, !dbg !336
  %offset4.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1, i32 0, i32 1, !dbg !337
  %127 = ptrtoint ptr %offset4.i to i32, !dbg !337
  call void @__asan_load4_noabort(i32 %127), !dbg !337
  %128 = load i32, ptr %offset4.i, align 4, !dbg !337
  %add.ptr5.i = getelementptr i8, ptr %126, i32 %128, !dbg !338
  %gcov_ctr.i161.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %129 = add i64 %gcov_ctr.i161.i, 1
  store i64 %129, ptr @__llvm_gcov_ctr.79, align 8
  %gcov_ctr.i.i162.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %130 = add i64 %gcov_ctr.i.i162.i, 1
  store i64 %130, ptr @__llvm_gcov_ctr.78, align 8
  %gcov_ctr.i.i.i163.i = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %131 = add i64 %gcov_ctr.i.i.i163.i, 1
  store i64 %131, ptr @__llvm_gcov_ctr.65, align 8
  %gcov_ctr.i.i.i.i164.i = load i64, ptr @__llvm_gcov_ctr.66, align 16, !dbg !339
  %132 = add i64 %gcov_ctr.i.i.i.i164.i, 1, !dbg !339
  store i64 %132, ptr @__llvm_gcov_ctr.66, align 16, !dbg !339
  %gcov_ctr67.i.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !345
  %133 = add i64 %gcov_ctr67.i.i.i.i.i, 1, !dbg !345
  store i64 %133, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !345
  %gcov_ctr.i.i.i.i.i165.i = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %134 = add i64 %gcov_ctr.i.i.i.i.i165.i, 1
  store i64 %134, ptr @__llvm_gcov_ctr.69, align 8
  %gcov_ctr3.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !346
  %135 = add i64 %gcov_ctr3.i.i.i.i, 1, !dbg !346
  store i64 %135, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !346
  %gcov_ctr.i7.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %136 = add i64 %gcov_ctr.i7.i.i.i.i, 1
  store i64 %136, ptr @__llvm_gcov_ctr.67, align 16
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #21, !dbg !347
  %call.i.i.i.i166.i = call zeroext i1 @should_fail_usercopy() #21, !dbg !349
  br i1 %call.i.i.i.i166.i, label %if.then3.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i, !dbg !350

if.then3.i.if.then11.i.i.i.i.i_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !350
  br label %if.then11.i.i.i.i.i, !dbg !350

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then3.i
  %gcov_ctr13.i.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !351
  %137 = add i64 %gcov_ctr13.i.i.i.i.i, 1, !dbg !351
  store i64 %137, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !351
  %138 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr5.i, i32 4, i32 -1226833920) #22, !dbg !351, !srcloc !192
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %138, 0, !dbg !351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i), !dbg !351
  %cmp.i8.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0, !dbg !351
  br i1 %cmp.i8.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !dbg !352, !prof !194

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !352
  br label %if.then11.i.i.i.i.i, !dbg !352

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %gcov_ctr14.i.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !353
  %139 = add i64 %gcov_ctr14.i.i.i.i.i, 1, !dbg !353
  store i64 %139, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !353
  %gcov_ctr.i.i9.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %140 = add i64 %gcov_ctr.i.i9.i.i.i.i, 1
  store i64 %140, ptr @__llvm_gcov_ctr.70, align 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.addr.i, i32 noundef 4) #21, !dbg !354
  %gcov_ctr.i.i.i.i.i.i168.i = load i64, ptr @__llvm_gcov_ctr.72, align 8
  %141 = add i64 %gcov_ctr.i.i.i.i.i.i168.i, 1
  store i64 %141, ptr @__llvm_gcov_ctr.72, align 8
  %gcov_ctr.i27.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %142 = add i64 %gcov_ctr.i27.i.i.i.i.i, 1
  store i64 %142, ptr @__llvm_gcov_ctr.71, align 8
  %gcov_ctr.i.i28.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %143 = add i64 %gcov_ctr.i.i28.i.i.i.i.i, 1
  store i64 %143, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i.i.i.i.i.i169.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %144 = add i64 %gcov_ctr.i.i.i.i.i.i.i169.i, 1
  store i64 %144, ptr @__llvm_gcov_ctr.75, align 8
  %gcov_ctr.i.i.i.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !356
  %145 = add i64 %gcov_ctr.i.i.i.i.i.i.i.i.i, 1, !dbg !356
  store i64 %145, ptr @__llvm_gcov_ctr.77, align 8, !dbg !356
  %146 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !356
  %and.i.i.i.i.i.i.i.i.i = and i32 %146, -16384, !dbg !361
  %147 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr, !dbg !362
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 4, !dbg !363
  %148 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #6, !dbg !364, !srcloc !216
  %and.i.i.i.i.i.i.i = and i32 %148, -13, !dbg !365
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4, !dbg !366
  %gcov_ctr.i2.i.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %149 = add i64 %gcov_ctr.i2.i.i.i.i.i.i.i, 1
  store i64 %149, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #21, !dbg !367, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !369, !srcloc !224
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.addr.i, ptr noundef %add.ptr5.i, i32 noundef 4) #21, !dbg !370
  %gcov_ctr.i3.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %150 = add i64 %gcov_ctr.i3.i.i.i.i.i.i, 1
  store i64 %150, ptr @__llvm_gcov_ctr.74, align 8
  %gcov_ctr.i.i4.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %151 = add i64 %gcov_ctr.i.i4.i.i.i.i.i.i, 1
  store i64 %151, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #21, !dbg !371, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !374, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i), !dbg !375
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0, !dbg !375
  br i1 %tobool4.not.i.i.i.i.i, label %if.end8.i, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !dbg !375, !prof !194

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !375
  br label %if.then11.i.i.i.i.i, !dbg !375

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.then3.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i301.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %if.then3.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %gcov_ctr15.i.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !376
  %152 = add i64 %gcov_ctr15.i.i.i.i.i, 1, !dbg !376
  store i64 %152, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !376
  %sub.i.i.i.i.i = sub i32 4, %res.0.i.i.i.i301.i, !dbg !377
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %val.addr.i, i32 %sub.i.i.i.i.i, !dbg !378
  %153 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i301.i), !dbg !379
  %gcov_ctr91313.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16
  %154 = add i64 %gcov_ctr91313.i, 1
  store i64 %154, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16
  br label %if.then9.i, !dbg !380

if.else7.i:                                       ; preds = %do.body.i
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !381
  %155 = add i64 %gcov_ctr90.i, 1, !dbg !381
  store i64 %155, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !381
  %offset48.i = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1, i32 0, i32 1
  %156 = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.1.i, i32 0, i32 1
  %incdec.ptr51.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 1
  %157 = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 1, i32 1
  %lshift26.i.i = getelementptr inbounds %struct.anon.0, ptr %157, i32 0, i32 1
  %rshift29.i.i = getelementptr inbounds %struct.anon.0, ptr %157, i32 0, i32 2
  %incdec.ptr55.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 2
  br label %stage3.i, !dbg !382

if.end8.i:                                        ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !279
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16
  %158 = add i64 %gcov_ctr91.i, 1
  store i64 %158, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16
  br label %if.end10.i, !dbg !380

if.then9.i:                                       ; preds = %if.then11.i.i.i.i.i, %if.then11.i.i.i.i
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 3), align 8, !dbg !383
  %159 = add i64 %gcov_ctr92.i, 1, !dbg !383
  store i64 %159, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 3), align 8, !dbg !383
  br label %process_fetch_insn_bottom.exit, !dbg !384

if.end10.i:                                       ; preds = %if.end8.i, %if.end.i.i.i.i.if.end10.i_crit_edge
  %lval.2310.i = phi i32 [ %125, %if.end8.i ], [ %96, %if.end.i.i.i.i.if.end10.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 1, !dbg !385
  br label %do.body.i, !dbg !386, !llvm.loop !387

stage3.i:                                         ; preds = %if.then67.i, %if.else7.i
  %dest.addr.1.i = phi ptr [ %dest.addr.0.i, %if.else7.i ], [ %add.ptr69.i, %if.then67.i ]
  %total.1.i = phi i32 [ %total.0.i, %if.else7.i ], [ %add60.i, %if.then67.i ], !dbg !285
  %ret.3.i = phi i32 [ %ret.1.i, %if.else7.i ], [ %ret.5.i, %if.then67.i ], !dbg !285
  %i.1.i = phi i32 [ %i.0.i, %if.else7.i ], [ %inc.i, %if.then67.i ], !dbg !285
  %loc.1.i = phi i32 [ %loc.0.i, %if.else7.i ], [ %loc.3.i, %if.then67.i ], !dbg !286
  %tobool11.not.i = icmp eq ptr %dest.addr.1.i, null, !dbg !389
  %160 = ptrtoint ptr %code.addr.1.i to i32, !dbg !285
  call void @__asan_load4_noabort(i32 %160), !dbg !285
  %161 = load i32, ptr %code.addr.1.i, align 4, !dbg !285
  br i1 %tobool11.not.i, label %if.then15.i, label %if.end32.i, !dbg !389, !prof !154

if.then15.i:                                      ; preds = %stage3.i
  %162 = zext i32 %161 to i64, !dbg !390
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.203), !dbg !390
  switch i32 %161, label %if.else31.i [
    i32 15, label %if.then18.i
    i32 16, label %if.then25.i
  ], !dbg !390

if.then18.i:                                      ; preds = %if.then15.i
  %gcov_ctr93.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 4), align 16, !dbg !391
  %163 = add i64 %gcov_ctr93.i, 1, !dbg !391
  store i64 %163, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 4), align 16, !dbg !391
  %164 = ptrtoint ptr %val.addr.i to i32, !dbg !391
  call void @__asan_load4_noabort(i32 %164), !dbg !391
  %165 = load i32, ptr %val.addr.i, align 4, !dbg !391
  %166 = ptrtoint ptr %offset48.i to i32, !dbg !392
  call void @__asan_load4_noabort(i32 %166), !dbg !392
  %167 = load i32, ptr %offset48.i, align 4, !dbg !392
  %add.i = add i32 %167, %165, !dbg !393
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %add.i), !dbg !394
  %cmp.i.i = icmp eq i32 %add.i, -70, !dbg !394
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !397

if.then.i.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !398
  %gcov_ctr.i.i170.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !398
  %168 = add i64 %gcov_ctr.i.i170.i, 1, !dbg !398
  store i64 %168, ptr @__llvm_gcov_ctr.77, align 8, !dbg !398
  %169 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !398
  %and.i.i.i = and i32 %169, -16384, !dbg !400
  %170 = inttoptr i32 %and.i.i.i to ptr, !dbg !401
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 2, !dbg !402
  %171 = ptrtoint ptr %task.i.i to i32, !dbg !402
  call void @__asan_load4_noabort(i32 %171), !dbg !402
  %172 = load ptr, ptr %task.i.i, align 8, !dbg !402
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %172, i32 0, i32 101, !dbg !403
  %call1.i.i = call i32 @strlen(ptr noundef %comm.i.i) #23, !dbg !404
  %add.i.i = add i32 %call1.i.i, 1, !dbg !405
  br label %if.end.i.i, !dbg !406

if.else.i.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !407
  %173 = inttoptr i32 %add.i to ptr, !dbg !407
  %gcov_ctr.i171.i = load i64, ptr @__llvm_gcov_ctr.80, align 16, !dbg !408
  %174 = add i64 %gcov_ctr.i171.i, 1, !dbg !408
  store i64 %174, ptr @__llvm_gcov_ctr.80, align 16, !dbg !408
  %call2.i.i = call i32 @strnlen_user(ptr noundef %173, i32 noundef 4096) #21, !dbg !409
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %len.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ], !dbg !410
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len.0.i.i), !dbg !411
  %cmp3.i.i = icmp sgt i32 %len.0.i.i, 4096, !dbg !411
  br i1 %cmp3.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !412

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !412
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8, !dbg !412
  %175 = add i64 %gcov_ctr4.i.i, 1, !dbg !412
  store i64 %175, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8, !dbg !412
  br label %arraythread-pre-split.i, !dbg !412

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !413
  %gcov_ctr5.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !413
  %176 = add i64 %gcov_ctr5.i.i, 1, !dbg !413
  store i64 %176, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !413
  br label %arraythread-pre-split.i, !dbg !412

if.then25.i:                                      ; preds = %if.then15.i
  %gcov_ctr94.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 5), align 8, !dbg !414
  %177 = add i64 %gcov_ctr94.i, 1, !dbg !414
  store i64 %177, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 5), align 8, !dbg !414
  %178 = ptrtoint ptr %val.addr.i to i32, !dbg !414
  call void @__asan_load4_noabort(i32 %178), !dbg !414
  %179 = load i32, ptr %val.addr.i, align 4, !dbg !414
  %180 = ptrtoint ptr %offset48.i to i32, !dbg !415
  call void @__asan_load4_noabort(i32 %180), !dbg !415
  %181 = load i32, ptr %offset48.i, align 4, !dbg !415
  %add27.i = add i32 %181, %179, !dbg !416
  %gcov_ctr.i172.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %182 = add i64 %gcov_ctr.i172.i, 1
  store i64 %182, ptr @__llvm_gcov_ctr.81, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %add27.i), !dbg !417
  %cmp.i.i.i = icmp eq i32 %add27.i, -70, !dbg !417
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i, !dbg !421

if.then.i.i.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !422
  %gcov_ctr.i.i.i173.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !422
  %183 = add i64 %gcov_ctr.i.i.i173.i, 1, !dbg !422
  store i64 %183, ptr @__llvm_gcov_ctr.77, align 8, !dbg !422
  %184 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !422
  %and.i.i.i.i = and i32 %184, -16384, !dbg !424
  %185 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !425
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 2, !dbg !426
  %186 = ptrtoint ptr %task.i.i.i to i32, !dbg !426
  call void @__asan_load4_noabort(i32 %186), !dbg !426
  %187 = load ptr, ptr %task.i.i.i, align 8, !dbg !426
  %comm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %187, i32 0, i32 101, !dbg !427
  %call1.i.i.i = call i32 @strlen(ptr noundef %comm.i.i.i) #23, !dbg !428
  %add.i.i.i = add i32 %call1.i.i.i, 1, !dbg !429
  br label %if.end.i.i.i, !dbg !430

if.else.i.i.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !431
  %188 = inttoptr i32 %add27.i to ptr, !dbg !431
  %gcov_ctr.i.i174.i = load i64, ptr @__llvm_gcov_ctr.80, align 16, !dbg !432
  %189 = add i64 %gcov_ctr.i.i174.i, 1, !dbg !432
  store i64 %189, ptr @__llvm_gcov_ctr.80, align 16, !dbg !432
  %call2.i.i.i = call i32 @strnlen_user(ptr noundef %188, i32 noundef 4096) #21, !dbg !433
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %len.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %call2.i.i.i, %if.else.i.i.i ], !dbg !434
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len.0.i.i.i), !dbg !435
  %cmp3.i.i.i = icmp sgt i32 %len.0.i.i.i, 4096, !dbg !435
  br i1 %cmp3.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !436

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !436
  %gcov_ctr4.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8, !dbg !436
  %190 = add i64 %gcov_ctr4.i.i.i, 1, !dbg !436
  store i64 %190, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), align 8, !dbg !436
  br label %fetch_store_strlen_user.exit.i, !dbg !436

cond.false.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !437
  %gcov_ctr5.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !437
  %191 = add i64 %gcov_ctr5.i.i.i, 1, !dbg !437
  store i64 %191, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), align 16, !dbg !437
  br label %fetch_store_strlen_user.exit.i, !dbg !436

fetch_store_strlen_user.exit.i:                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ 0, %cond.true.i.i.i ], [ %len.0.i.i.i, %cond.false.i.i.i ], !dbg !436
  %add29.i = add i32 %cond.i.i.i, %ret.3.i, !dbg !438
  br label %arraythread-pre-split.i, !dbg !439

if.else31.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !440
  %gcov_ctr95.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 6), align 16, !dbg !440
  %192 = add i64 %gcov_ctr95.i, 1, !dbg !440
  store i64 %192, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 6), align 16, !dbg !440
  br label %process_fetch_insn_bottom.exit, !dbg !440

if.end32.i:                                       ; preds = %stage3.i
  %193 = zext i32 %161 to i64, !dbg !441
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.204), !dbg !441
  switch i32 %161, label %sw.default.i [
    i32 12, label %sw.bb.i
    i32 13, label %sw.bb34.i
    i32 14, label %sw.bb38.i
    i32 15, label %sw.bb43.i
    i32 16, label %sw.bb47.i
  ], !dbg !441

sw.bb.i:                                          ; preds = %if.end32.i
  %gcov_ctr96.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 7), align 8, !dbg !442
  %194 = add i64 %gcov_ctr96.i, 1, !dbg !442
  store i64 %194, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 7), align 8, !dbg !442
  %195 = ptrtoint ptr %val.addr.i to i32, !dbg !442
  call void @__asan_load4_noabort(i32 %195), !dbg !442
  %196 = load i32, ptr %val.addr.i, align 4, !dbg !442
  %197 = ptrtoint ptr %156 to i32, !dbg !443
  call void @__asan_load4_noabort(i32 %197), !dbg !443
  %198 = load i32, ptr %156, align 4, !dbg !443
  %199 = zext i32 %198 to i64, !dbg !446
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.205), !dbg !446
  switch i32 %198, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
    i32 4, label %sw.bb3.i.i
    i32 8, label %sw.bb4.i.i
  ], !dbg !446

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !447
  %gcov_ctr.i175.i = load i64, ptr @__llvm_gcov_ctr.82, align 16, !dbg !447
  %200 = add i64 %gcov_ctr.i175.i, 1, !dbg !447
  store i64 %200, ptr @__llvm_gcov_ctr.82, align 16, !dbg !447
  %conv.i.i = trunc i32 %196 to i8, !dbg !448
  %201 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !449
  call void @__asan_store1_noabort(i32 %201), !dbg !449
  store i8 %conv.i.i, ptr %dest.addr.1.i, align 1, !dbg !449
  br label %sw.epilog.i, !dbg !450

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !451
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !451
  %202 = add i64 %gcov_ctr6.i.i, 1, !dbg !451
  store i64 %202, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !451
  %conv2.i.i = trunc i32 %196 to i16, !dbg !452
  %203 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !453
  call void @__asan_store2_noabort(i32 %203), !dbg !453
  store i16 %conv2.i.i, ptr %dest.addr.1.i, align 2, !dbg !453
  br label %sw.epilog.i, !dbg !454

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !455
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !455
  %204 = add i64 %gcov_ctr7.i.i, 1, !dbg !455
  store i64 %204, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !455
  %205 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !456
  call void @__asan_store4_noabort(i32 %205), !dbg !456
  store i32 %196, ptr %dest.addr.1.i, align 4, !dbg !456
  br label %sw.epilog.i, !dbg !457

sw.bb4.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !458
  %gcov_ctr8.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 3), align 8, !dbg !458
  %206 = add i64 %gcov_ctr8.i.i, 1, !dbg !458
  store i64 %206, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 3), align 8, !dbg !458
  %conv5.i.i = zext i32 %196 to i64, !dbg !459
  %207 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !460
  call void @__asan_store8_noabort(i32 %207), !dbg !460
  store i64 %conv5.i.i, ptr %dest.addr.1.i, align 8, !dbg !460
  br label %sw.epilog.i, !dbg !461

sw.default.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !462
  %gcov_ctr9.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 4), align 16, !dbg !462
  %208 = add i64 %gcov_ctr9.i.i, 1, !dbg !462
  store i64 %208, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 4), align 16, !dbg !462
  %209 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !463
  call void @__asan_store4_noabort(i32 %209), !dbg !463
  store i32 %196, ptr %dest.addr.1.i, align 4, !dbg !463
  br label %sw.epilog.i, !dbg !464

sw.bb34.i:                                        ; preds = %if.end32.i
  %gcov_ctr97.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 8), align 16, !dbg !465
  %210 = add i64 %gcov_ctr97.i, 1, !dbg !465
  store i64 %210, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 8), align 16, !dbg !465
  %211 = ptrtoint ptr %val.addr.i to i32, !dbg !466
  call void @__asan_load4_noabort(i32 %211), !dbg !466
  %212 = load i32, ptr %val.addr.i, align 4, !dbg !466
  %213 = inttoptr i32 %212 to ptr, !dbg !467
  %214 = ptrtoint ptr %offset48.i to i32, !dbg !468
  call void @__asan_load4_noabort(i32 %214), !dbg !468
  %215 = load i32, ptr %offset48.i, align 4, !dbg !468
  %add.ptr36.i = getelementptr i8, ptr %213, i32 %215, !dbg !469
  %216 = ptrtoint ptr %156 to i32, !dbg !470
  call void @__asan_load4_noabort(i32 %216), !dbg !470
  %217 = load i32, ptr %156, align 4, !dbg !470
  %gcov_ctr.i176.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %218 = add i64 %gcov_ctr.i176.i, 1
  store i64 %218, ptr @__llvm_gcov_ctr.78, align 8
  %gcov_ctr.i.i177.i = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %219 = add i64 %gcov_ctr.i.i177.i, 1
  store i64 %219, ptr @__llvm_gcov_ctr.65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217), !dbg !471
  %cmp9.i.i.i.i = icmp slt i32 %217, 0, !dbg !471
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.end59.i.i.i.i, !dbg !471

land.rhs16.i.i.i.i:                               ; preds = %sw.bb34.i
  %gcov_ctr64.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 4), align 16, !dbg !471
  %220 = add i64 %gcov_ctr64.i.i.i.i, 1, !dbg !471
  store i64 %220, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 4), align 16, !dbg !471
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1, !dbg !471
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.if.then58.i.i.i.i_crit_edge, label %if.then27.i.i.i.i, !dbg !471, !prof !194

land.rhs16.i.i.i.i.if.then58.i.i.i.i_crit_edge:   ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !471
  br label %if.then58.i.i.i.i, !dbg !471

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !471
  store i1 true, ptr @check_copy_size.__already_done, align 1, !dbg !471
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #21, !dbg !471
  %gcov_ctr65.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 5), align 8, !dbg !471
  %221 = add i64 %gcov_ctr65.i.i.i.i, 1, !dbg !471
  store i64 %221, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 5), align 8, !dbg !471
  %gcov_ctr66.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 6), align 16, !dbg !471
  %222 = add i64 %gcov_ctr66.i.i.i.i, 1, !dbg !471
  store i64 %222, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 6), align 16, !dbg !471
  br label %if.then58.i.i.i.i, !dbg !471

if.then58.i.i.i.i:                                ; preds = %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.if.then58.i.i.i.i_crit_edge
  %gcov_ctr68.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 8), align 16, !dbg !475
  %223 = add i64 %gcov_ctr68.i.i.i.i, 1, !dbg !475
  store i64 %223, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 8), align 16, !dbg !475
  br label %sw.epilog.i, !dbg !475

if.end59.i.i.i.i:                                 ; preds = %sw.bb34.i
  %gcov_ctr67.i.i.i185.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !476
  %224 = add i64 %gcov_ctr67.i.i.i185.i, 1, !dbg !476
  store i64 %224, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !476
  %gcov_ctr.i.i.i.i186.i = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %225 = add i64 %gcov_ctr.i.i.i.i186.i, 1
  store i64 %225, ptr @__llvm_gcov_ctr.69, align 8
  %gcov_ctr1.i.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !477
  %226 = add i64 %gcov_ctr1.i.i.i.i.i, 1, !dbg !477
  store i64 %226, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !477
  call void @__check_object_size(ptr noundef nonnull %dest.addr.1.i, i32 noundef %217, i1 noundef zeroext false) #21, !dbg !480
  %gcov_ctr3.i.i188.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !481
  %227 = add i64 %gcov_ctr3.i.i188.i, 1, !dbg !481
  store i64 %227, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !481
  %gcov_ctr.i7.i.i189.i = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %228 = add i64 %gcov_ctr.i7.i.i189.i, 1
  store i64 %228, ptr @__llvm_gcov_ctr.67, align 16
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #21, !dbg !482
  %call.i.i.i190.i = call zeroext i1 @should_fail_usercopy() #21, !dbg !484
  br i1 %call.i.i.i190.i, label %if.end59.i.i.i.i.if.end.i.i.i215.i_crit_edge, label %land.lhs.true.i.i.i195.i, !dbg !485

if.end59.i.i.i.i.if.end.i.i.i215.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !485
  br label %if.end.i.i.i215.i, !dbg !485

land.lhs.true.i.i.i195.i:                         ; preds = %if.end59.i.i.i.i
  %gcov_ctr13.i.i.i192.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !486
  %229 = add i64 %gcov_ctr13.i.i.i192.i, 1, !dbg !486
  store i64 %229, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !486
  %230 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr36.i, i32 %217, i32 -1226833920) #22, !dbg !486, !srcloc !192
  %asmresult.i.i.i193.i = extractvalue { i32, i32 } %230, 0, !dbg !486
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i193.i), !dbg !486
  %cmp.i8.i.i194.i = icmp eq i32 %asmresult.i.i.i193.i, 0, !dbg !486
  br i1 %cmp.i8.i.i194.i, label %if.then.i10.i.i212.i, label %land.lhs.true.i.i.i195.i.if.end.i.i.i215.i_crit_edge, !dbg !487, !prof !194

land.lhs.true.i.i.i195.i.if.end.i.i.i215.i_crit_edge: ; preds = %land.lhs.true.i.i.i195.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !487
  br label %if.end.i.i.i215.i, !dbg !487

if.then.i10.i.i212.i:                             ; preds = %land.lhs.true.i.i.i195.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !488
  %gcov_ctr14.i.i.i196.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !488
  %231 = add i64 %gcov_ctr14.i.i.i196.i, 1, !dbg !488
  store i64 %231, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !488
  %gcov_ctr.i.i9.i.i197.i = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %232 = add i64 %gcov_ctr.i.i9.i.i197.i, 1
  store i64 %232, ptr @__llvm_gcov_ctr.70, align 8
  %call.i.i.i.i198.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dest.addr.1.i, i32 noundef %217) #21, !dbg !489
  %gcov_ctr.i.i.i.i.i199.i = load i64, ptr @__llvm_gcov_ctr.72, align 8
  %233 = add i64 %gcov_ctr.i.i.i.i.i199.i, 1
  store i64 %233, ptr @__llvm_gcov_ctr.72, align 8
  %gcov_ctr.i27.i.i.i200.i = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %234 = add i64 %gcov_ctr.i27.i.i.i200.i, 1
  store i64 %234, ptr @__llvm_gcov_ctr.71, align 8
  %gcov_ctr.i.i28.i.i.i201.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %235 = add i64 %gcov_ctr.i.i28.i.i.i201.i, 1
  store i64 %235, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i.i.i.i.i202.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %236 = add i64 %gcov_ctr.i.i.i.i.i.i202.i, 1
  store i64 %236, ptr @__llvm_gcov_ctr.75, align 8
  %gcov_ctr.i.i.i.i.i.i.i203.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !491
  %237 = add i64 %gcov_ctr.i.i.i.i.i.i.i203.i, 1, !dbg !491
  store i64 %237, ptr @__llvm_gcov_ctr.77, align 8, !dbg !491
  %238 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !491
  %and.i.i.i.i.i.i.i204.i = and i32 %238, -16384, !dbg !496
  %239 = inttoptr i32 %and.i.i.i.i.i.i.i204.i to ptr, !dbg !497
  %cpu_domain.i.i.i.i.i.i205.i = getelementptr inbounds %struct.thread_info, ptr %239, i32 0, i32 4, !dbg !498
  %240 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i205.i) #6, !dbg !499, !srcloc !216
  %and.i.i.i.i.i206.i = and i32 %240, -13, !dbg !500
  %or.i.i.i.i.i207.i = or i32 %and.i.i.i.i.i206.i, 4, !dbg !501
  %gcov_ctr.i2.i.i.i.i.i208.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %241 = add i64 %gcov_ctr.i2.i.i.i.i.i208.i, 1
  store i64 %241, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i207.i) #21, !dbg !502, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !504, !srcloc !224
  %call1.i.i.i.i209.i = call i32 @arm_copy_from_user(ptr noundef nonnull %dest.addr.1.i, ptr noundef %add.ptr36.i, i32 noundef %217) #21, !dbg !505
  %gcov_ctr.i3.i.i.i.i210.i = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %242 = add i64 %gcov_ctr.i3.i.i.i.i210.i, 1
  store i64 %242, ptr @__llvm_gcov_ctr.74, align 8
  %gcov_ctr.i.i4.i.i.i.i211.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %243 = add i64 %gcov_ctr.i.i4.i.i.i.i211.i, 1
  store i64 %243, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %240) #21, !dbg !506, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !509, !srcloc !224
  br label %if.end.i.i.i215.i, !dbg !510

if.end.i.i.i215.i:                                ; preds = %if.then.i10.i.i212.i, %land.lhs.true.i.i.i195.i.if.end.i.i.i215.i_crit_edge, %if.end59.i.i.i.i.if.end.i.i.i215.i_crit_edge
  %res.0.i.i.i213.i = phi i32 [ %217, %if.end59.i.i.i.i.if.end.i.i.i215.i_crit_edge ], [ %call1.i.i.i.i209.i, %if.then.i10.i.i212.i ], [ %217, %land.lhs.true.i.i.i195.i.if.end.i.i.i215.i_crit_edge ], !dbg !511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i213.i), !dbg !512
  %tobool4.not.i.i.i214.i = icmp eq i32 %res.0.i.i.i213.i, 0, !dbg !512
  br i1 %tobool4.not.i.i.i214.i, label %if.end.i.i.i215.i.sw.epilog.i_crit_edge, label %if.then11.i.i.i219.i, !dbg !512, !prof !194

if.end.i.i.i215.i.sw.epilog.i_crit_edge:          ; preds = %if.end.i.i.i215.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !512
  br label %sw.epilog.i, !dbg !512

if.then11.i.i.i219.i:                             ; preds = %if.end.i.i.i215.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !513
  %gcov_ctr15.i.i.i216.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !513
  %244 = add i64 %gcov_ctr15.i.i.i216.i, 1, !dbg !513
  store i64 %244, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !513
  %sub.i.i.i217.i = sub i32 %217, %res.0.i.i.i213.i, !dbg !514
  %add.ptr.i.i.i218.i = getelementptr i8, ptr %dest.addr.1.i, i32 %sub.i.i.i217.i, !dbg !515
  %245 = call ptr @memset(ptr %add.ptr.i.i.i218.i, i32 0, i32 %res.0.i.i.i213.i), !dbg !516
  br label %sw.epilog.i, !dbg !516

sw.bb38.i:                                        ; preds = %if.end32.i
  %gcov_ctr98.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 9), align 8, !dbg !517
  %246 = add i64 %gcov_ctr98.i, 1, !dbg !517
  store i64 %246, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 9), align 8, !dbg !517
  %247 = ptrtoint ptr %val.addr.i to i32, !dbg !518
  call void @__asan_load4_noabort(i32 %247), !dbg !518
  %248 = load i32, ptr %val.addr.i, align 4, !dbg !518
  %249 = inttoptr i32 %248 to ptr, !dbg !519
  %250 = ptrtoint ptr %offset48.i to i32, !dbg !520
  call void @__asan_load4_noabort(i32 %250), !dbg !520
  %251 = load i32, ptr %offset48.i, align 4, !dbg !520
  %add.ptr40.i = getelementptr i8, ptr %249, i32 %251, !dbg !521
  %252 = ptrtoint ptr %156 to i32, !dbg !522
  call void @__asan_load4_noabort(i32 %252), !dbg !522
  %253 = load i32, ptr %156, align 4, !dbg !522
  %gcov_ctr.i221.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %254 = add i64 %gcov_ctr.i221.i, 1
  store i64 %254, ptr @__llvm_gcov_ctr.79, align 8
  %gcov_ctr.i.i222.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %255 = add i64 %gcov_ctr.i.i222.i, 1
  store i64 %255, ptr @__llvm_gcov_ctr.78, align 8
  %gcov_ctr.i.i.i223.i = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %256 = add i64 %gcov_ctr.i.i.i223.i, 1
  store i64 %256, ptr @__llvm_gcov_ctr.65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253), !dbg !523
  %cmp9.i.i.i.i.i = icmp slt i32 %253, 0, !dbg !523
  br i1 %cmp9.i.i.i.i.i, label %land.rhs16.i.i.i.i.i, label %if.end59.i.i.i.i.i, !dbg !523

land.rhs16.i.i.i.i.i:                             ; preds = %sw.bb38.i
  %gcov_ctr64.i.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 4), align 16, !dbg !523
  %257 = add i64 %gcov_ctr64.i.i.i.i.i, 1, !dbg !523
  store i64 %257, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 4), align 16, !dbg !523
  %.b1.i.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1, !dbg !523
  br i1 %.b1.i.i.i.i.i, label %land.rhs16.i.i.i.i.i.if.then58.i.i.i.i.i_crit_edge, label %if.then27.i.i.i.i.i, !dbg !523, !prof !194

land.rhs16.i.i.i.i.i.if.then58.i.i.i.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !523
  br label %if.then58.i.i.i.i.i, !dbg !523

if.then27.i.i.i.i.i:                              ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !523
  store i1 true, ptr @check_copy_size.__already_done, align 1, !dbg !523
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #21, !dbg !523
  %gcov_ctr65.i.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 5), align 8, !dbg !523
  %258 = add i64 %gcov_ctr65.i.i.i.i.i, 1, !dbg !523
  store i64 %258, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 5), align 8, !dbg !523
  %gcov_ctr66.i.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 6), align 16, !dbg !523
  %259 = add i64 %gcov_ctr66.i.i.i.i.i, 1, !dbg !523
  store i64 %259, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 6), align 16, !dbg !523
  br label %if.then58.i.i.i.i.i, !dbg !523

if.then58.i.i.i.i.i:                              ; preds = %if.then27.i.i.i.i.i, %land.rhs16.i.i.i.i.i.if.then58.i.i.i.i.i_crit_edge
  %gcov_ctr68.i.i.i.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 8), align 16, !dbg !528
  %260 = add i64 %gcov_ctr68.i.i.i.i.i, 1, !dbg !528
  store i64 %260, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 8), align 16, !dbg !528
  br label %sw.epilog.i, !dbg !528

if.end59.i.i.i.i.i:                               ; preds = %sw.bb38.i
  %gcov_ctr67.i.i.i.i231.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !529
  %261 = add i64 %gcov_ctr67.i.i.i.i231.i, 1, !dbg !529
  store i64 %261, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 7), align 8, !dbg !529
  %gcov_ctr.i.i.i.i.i232.i = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %262 = add i64 %gcov_ctr.i.i.i.i.i232.i, 1
  store i64 %262, ptr @__llvm_gcov_ctr.69, align 8
  %gcov_ctr1.i.i.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !530
  %263 = add i64 %gcov_ctr1.i.i.i.i.i.i, 1, !dbg !530
  store i64 %263, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !530
  call void @__check_object_size(ptr noundef nonnull %dest.addr.1.i, i32 noundef %253, i1 noundef zeroext false) #21, !dbg !532
  %gcov_ctr3.i.i.i233.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !533
  %264 = add i64 %gcov_ctr3.i.i.i233.i, 1, !dbg !533
  store i64 %264, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !533
  %gcov_ctr.i7.i.i.i234.i = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %265 = add i64 %gcov_ctr.i7.i.i.i234.i, 1
  store i64 %265, ptr @__llvm_gcov_ctr.67, align 16
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #21, !dbg !534
  %call.i.i.i.i235.i = call zeroext i1 @should_fail_usercopy() #21, !dbg !536
  br i1 %call.i.i.i.i235.i, label %if.end59.i.i.i.i.i.if.end.i.i.i.i260.i_crit_edge, label %land.lhs.true.i.i.i.i240.i, !dbg !537

if.end59.i.i.i.i.i.if.end.i.i.i.i260.i_crit_edge: ; preds = %if.end59.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !537
  br label %if.end.i.i.i.i260.i, !dbg !537

land.lhs.true.i.i.i.i240.i:                       ; preds = %if.end59.i.i.i.i.i
  %gcov_ctr13.i.i.i.i237.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !538
  %266 = add i64 %gcov_ctr13.i.i.i.i237.i, 1, !dbg !538
  store i64 %266, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !538
  %267 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr40.i, i32 %253, i32 -1226833920) #22, !dbg !538, !srcloc !192
  %asmresult.i.i.i.i238.i = extractvalue { i32, i32 } %267, 0, !dbg !538
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i238.i), !dbg !538
  %cmp.i8.i.i.i239.i = icmp eq i32 %asmresult.i.i.i.i238.i, 0, !dbg !538
  br i1 %cmp.i8.i.i.i239.i, label %if.then.i10.i.i.i257.i, label %land.lhs.true.i.i.i.i240.i.if.end.i.i.i.i260.i_crit_edge, !dbg !539, !prof !194

land.lhs.true.i.i.i.i240.i.if.end.i.i.i.i260.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i240.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !539
  br label %if.end.i.i.i.i260.i, !dbg !539

if.then.i10.i.i.i257.i:                           ; preds = %land.lhs.true.i.i.i.i240.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !540
  %gcov_ctr14.i.i.i.i241.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !540
  %268 = add i64 %gcov_ctr14.i.i.i.i241.i, 1, !dbg !540
  store i64 %268, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !540
  %gcov_ctr.i.i9.i.i.i242.i = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %269 = add i64 %gcov_ctr.i.i9.i.i.i242.i, 1
  store i64 %269, ptr @__llvm_gcov_ctr.70, align 8
  %call.i.i.i.i.i243.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dest.addr.1.i, i32 noundef %253) #21, !dbg !541
  %gcov_ctr.i.i.i.i.i.i244.i = load i64, ptr @__llvm_gcov_ctr.72, align 8
  %270 = add i64 %gcov_ctr.i.i.i.i.i.i244.i, 1
  store i64 %270, ptr @__llvm_gcov_ctr.72, align 8
  %gcov_ctr.i27.i.i.i.i245.i = load i64, ptr @__llvm_gcov_ctr.71, align 8
  %271 = add i64 %gcov_ctr.i27.i.i.i.i245.i, 1
  store i64 %271, ptr @__llvm_gcov_ctr.71, align 8
  %gcov_ctr.i.i28.i.i.i.i246.i = load i64, ptr @__llvm_gcov_ctr.73, align 8
  %272 = add i64 %gcov_ctr.i.i28.i.i.i.i246.i, 1
  store i64 %272, ptr @__llvm_gcov_ctr.73, align 8
  %gcov_ctr.i.i.i.i.i.i.i247.i = load i64, ptr @__llvm_gcov_ctr.75, align 8
  %273 = add i64 %gcov_ctr.i.i.i.i.i.i.i247.i, 1
  store i64 %273, ptr @__llvm_gcov_ctr.75, align 8
  %gcov_ctr.i.i.i.i.i.i.i.i248.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !543
  %274 = add i64 %gcov_ctr.i.i.i.i.i.i.i.i248.i, 1, !dbg !543
  store i64 %274, ptr @__llvm_gcov_ctr.77, align 8, !dbg !543
  %275 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !543
  %and.i.i.i.i.i.i.i.i249.i = and i32 %275, -16384, !dbg !548
  %276 = inttoptr i32 %and.i.i.i.i.i.i.i.i249.i to ptr, !dbg !549
  %cpu_domain.i.i.i.i.i.i.i250.i = getelementptr inbounds %struct.thread_info, ptr %276, i32 0, i32 4, !dbg !550
  %277 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i250.i) #6, !dbg !551, !srcloc !216
  %and.i.i.i.i.i.i251.i = and i32 %277, -13, !dbg !552
  %or.i.i.i.i.i.i252.i = or i32 %and.i.i.i.i.i.i251.i, 4, !dbg !553
  %gcov_ctr.i2.i.i.i.i.i.i253.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %278 = add i64 %gcov_ctr.i2.i.i.i.i.i.i253.i, 1
  store i64 %278, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i252.i) #21, !dbg !554, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !556, !srcloc !224
  %call1.i.i.i.i.i254.i = call i32 @arm_copy_from_user(ptr noundef nonnull %dest.addr.1.i, ptr noundef %add.ptr40.i, i32 noundef %253) #21, !dbg !557
  %gcov_ctr.i3.i.i.i.i.i255.i = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %279 = add i64 %gcov_ctr.i3.i.i.i.i.i255.i, 1
  store i64 %279, ptr @__llvm_gcov_ctr.74, align 8
  %gcov_ctr.i.i4.i.i.i.i.i256.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %280 = add i64 %gcov_ctr.i.i4.i.i.i.i.i256.i, 1
  store i64 %280, ptr @__llvm_gcov_ctr.76, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %277) #21, !dbg !558, !srcloc !222
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !dbg !561, !srcloc !224
  br label %if.end.i.i.i.i260.i, !dbg !562

if.end.i.i.i.i260.i:                              ; preds = %if.then.i10.i.i.i257.i, %land.lhs.true.i.i.i.i240.i.if.end.i.i.i.i260.i_crit_edge, %if.end59.i.i.i.i.i.if.end.i.i.i.i260.i_crit_edge
  %res.0.i.i.i.i258.i = phi i32 [ %253, %if.end59.i.i.i.i.i.if.end.i.i.i.i260.i_crit_edge ], [ %call1.i.i.i.i.i254.i, %if.then.i10.i.i.i257.i ], [ %253, %land.lhs.true.i.i.i.i240.i.if.end.i.i.i.i260.i_crit_edge ], !dbg !563
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i258.i), !dbg !564
  %tobool4.not.i.i.i.i259.i = icmp eq i32 %res.0.i.i.i.i258.i, 0, !dbg !564
  br i1 %tobool4.not.i.i.i.i259.i, label %if.end.i.i.i.i260.i.sw.epilog.i_crit_edge, label %if.then11.i.i.i.i264.i, !dbg !564, !prof !194

if.end.i.i.i.i260.i.sw.epilog.i_crit_edge:        ; preds = %if.end.i.i.i.i260.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !564
  br label %sw.epilog.i, !dbg !564

if.then11.i.i.i.i264.i:                           ; preds = %if.end.i.i.i.i260.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !565
  %gcov_ctr15.i.i.i.i261.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !565
  %281 = add i64 %gcov_ctr15.i.i.i.i261.i, 1, !dbg !565
  store i64 %281, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !565
  %sub.i.i.i.i262.i = sub i32 %253, %res.0.i.i.i.i258.i, !dbg !566
  %add.ptr.i.i.i.i263.i = getelementptr i8, ptr %dest.addr.1.i, i32 %sub.i.i.i.i262.i, !dbg !567
  %282 = call ptr @memset(ptr %add.ptr.i.i.i.i263.i, i32 0, i32 %res.0.i.i.i.i258.i), !dbg !568
  br label %sw.epilog.i, !dbg !568

sw.bb43.i:                                        ; preds = %if.end32.i
  %gcov_ctr99.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 10), align 16, !dbg !569
  %283 = add i64 %gcov_ctr99.i, 1, !dbg !569
  store i64 %283, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 10), align 16, !dbg !569
  %284 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !570
  call void @__asan_load4_noabort(i32 %284), !dbg !570
  %285 = load i32, ptr %dest.addr.1.i, align 4, !dbg !570
  %286 = ptrtoint ptr %val.addr.i to i32, !dbg !571
  call void @__asan_load4_noabort(i32 %286), !dbg !571
  %287 = load i32, ptr %val.addr.i, align 4, !dbg !571
  %288 = ptrtoint ptr %offset48.i to i32, !dbg !572
  call void @__asan_load4_noabort(i32 %288), !dbg !572
  %289 = load i32, ptr %offset48.i, align 4, !dbg !572
  %add45.i = add i32 %289, %287, !dbg !573
  %shr.i.i = lshr i32 %285, 16, !dbg !574
  %gcov_ctr.i.i266.i = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %290 = add i64 %gcov_ctr.i.i266.i, 1
  store i64 %290, ptr @__llvm_gcov_ctr.87, align 8
  %291 = load i32, ptr %dest.addr.1.i, align 4, !dbg !577
  %and.i.i267.i = and i32 %291, 65535, !dbg !577
  %add.ptr.i.i.i = getelementptr i8, ptr %base, i32 %and.i.i267.i, !dbg !581
  %292 = inttoptr i32 %add45.i to ptr, !dbg !582
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %285), !dbg !583
  %tobool.not.i.i = icmp ult i32 %285, 65536, !dbg !583
  br i1 %tobool.not.i.i, label %if.then.i269.i, label %if.end.i271.i, !dbg !583, !prof !154

if.then.i269.i:                                   ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !584
  %gcov_ctr.i268.i = load i64, ptr @__llvm_gcov_ctr.83, align 16, !dbg !584
  %293 = add i64 %gcov_ctr.i268.i, 1, !dbg !584
  store i64 %293, ptr @__llvm_gcov_ctr.83, align 16, !dbg !584
  br label %sw.epilog.i, !dbg !584

if.end.i271.i:                                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %add45.i), !dbg !585
  %cmp.i270.i = icmp eq i32 %add45.i, -70, !dbg !585
  br i1 %cmp.i270.i, label %if.then4.i.i, label %if.else.i274.i, !dbg !586

if.then4.i.i:                                     ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !587
  %gcov_ctr20.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 1), align 8, !dbg !587
  %294 = add i64 %gcov_ctr20.i.i, 1, !dbg !587
  store i64 %294, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 1), align 8, !dbg !587
  %gcov_ctr.i39.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !588
  %295 = add i64 %gcov_ctr.i39.i.i, 1, !dbg !588
  store i64 %295, ptr @__llvm_gcov_ctr.77, align 8, !dbg !588
  %296 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !588
  %and.i40.i.i = and i32 %296, -16384, !dbg !590
  %297 = inttoptr i32 %and.i40.i.i to ptr, !dbg !591
  %task.i272.i = getelementptr inbounds %struct.thread_info, ptr %297, i32 0, i32 2, !dbg !592
  %298 = ptrtoint ptr %task.i272.i to i32, !dbg !592
  call void @__asan_load4_noabort(i32 %298), !dbg !592
  %299 = load ptr, ptr %task.i272.i, align 8, !dbg !592
  %comm.i273.i = getelementptr inbounds %struct.task_struct, ptr %299, i32 0, i32 101, !dbg !593
  %call6.i.i = call i32 @strlcpy(ptr noundef %add.ptr.i.i.i, ptr noundef %comm.i273.i, i32 noundef %shr.i.i) #21, !dbg !594
  br label %if.end8.i.i, !dbg !595

if.else.i274.i:                                   ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !596
  %gcov_ctr21.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 2), align 16, !dbg !596
  %300 = add i64 %gcov_ctr21.i.i, 1, !dbg !596
  store i64 %300, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 2), align 16, !dbg !596
  %call7.i.i = call i32 @strncpy_from_user(ptr noundef %add.ptr.i.i.i, ptr noundef %292, i32 noundef %shr.i.i) #21, !dbg !597
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else.i274.i, %if.then4.i.i
  %ret.0.i.i = phi i32 [ %call6.i.i, %if.then4.i.i ], [ %call7.i.i, %if.else.i274.i ], !dbg !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i.i), !dbg !599
  %cmp9.i.i = icmp sgt i32 %ret.0.i.i, -1, !dbg !599
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end8.i.i.sw.epilog.i_crit_edge, !dbg !600

if.end8.i.i.sw.epilog.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !600
  br label %sw.epilog.i, !dbg !600

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i.i, i32 %shr.i.i), !dbg !601
  %cmp11.i.i = icmp eq i32 %ret.0.i.i, %shr.i.i, !dbg !601
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.else13.i.i, !dbg !602

if.then12.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !603
  %gcov_ctr22.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 3), align 8, !dbg !603
  %301 = add i64 %gcov_ctr22.i.i, 1, !dbg !603
  store i64 %301, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 3), align 8, !dbg !603
  %sub.i.i = add nsw i32 %shr.i.i, -1, !dbg !604
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %sub.i.i, !dbg !603
  %302 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !605
  call void @__asan_store1_noabort(i32 %302), !dbg !605
  store i8 0, ptr %arrayidx.i.i, align 1, !dbg !605
  br label %if.end14.i.i, !dbg !603

if.else13.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !606
  %gcov_ctr23.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 4), align 16, !dbg !606
  %303 = add i64 %gcov_ctr23.i.i, 1, !dbg !606
  store i64 %303, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 4), align 16, !dbg !606
  %inc.i.i = add nuw i32 %ret.0.i.i, 1, !dbg !606
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.else13.i.i, %if.then12.i.i
  %ret.1.i.i = phi i32 [ %shr.i.i, %if.then12.i.i ], [ %inc.i.i, %if.else13.i.i ], !dbg !598
  %shl.i.i = shl i32 %ret.1.i.i, 16, !dbg !607
  %or.i.i = or i32 %shl.i.i, %and.i.i267.i, !dbg !607
  %304 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !608
  call void @__asan_store4_noabort(i32 %304), !dbg !608
  store i32 %or.i.i, ptr %dest.addr.1.i, align 4, !dbg !608
  br label %sw.epilog.i, !dbg !609

sw.bb47.i:                                        ; preds = %if.end32.i
  %gcov_ctr100.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 11), align 8, !dbg !610
  %305 = add i64 %gcov_ctr100.i, 1, !dbg !610
  store i64 %305, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 11), align 8, !dbg !610
  %306 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !611
  call void @__asan_load4_noabort(i32 %306), !dbg !611
  %307 = load i32, ptr %dest.addr.1.i, align 4, !dbg !611
  %308 = ptrtoint ptr %val.addr.i to i32, !dbg !612
  call void @__asan_load4_noabort(i32 %308), !dbg !612
  %309 = load i32, ptr %val.addr.i, align 4, !dbg !612
  %310 = ptrtoint ptr %offset48.i to i32, !dbg !613
  call void @__asan_load4_noabort(i32 %310), !dbg !613
  %311 = load i32, ptr %offset48.i, align 4, !dbg !613
  %add49.i = add i32 %311, %309, !dbg !614
  %gcov_ctr.i275.i = load i64, ptr @__llvm_gcov_ctr.84, align 8
  %312 = add i64 %gcov_ctr.i275.i, 1
  store i64 %312, ptr @__llvm_gcov_ctr.84, align 8
  %313 = load i32, ptr %dest.addr.1.i, align 4, !dbg !615
  %shr.i.i.i = lshr i32 %313, 16, !dbg !619
  %gcov_ctr.i.i.i276.i = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %314 = add i64 %gcov_ctr.i.i.i276.i, 1
  store i64 %314, ptr @__llvm_gcov_ctr.87, align 8
  %315 = load i32, ptr %dest.addr.1.i, align 4, !dbg !620
  %and.i.i.i277.i = and i32 %315, 65535, !dbg !620
  %add.ptr.i.i.i278.i = getelementptr i8, ptr %base, i32 %and.i.i.i277.i, !dbg !622
  %316 = inttoptr i32 %add49.i to ptr, !dbg !623
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %313), !dbg !624
  %tobool.not.i.i.i = icmp ult i32 %313, 65536, !dbg !624
  br i1 %tobool.not.i.i.i, label %if.then.i.i280.i, label %if.end.i.i282.i, !dbg !624, !prof !154

if.then.i.i280.i:                                 ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !625
  %gcov_ctr.i.i279.i = load i64, ptr @__llvm_gcov_ctr.83, align 16, !dbg !625
  %317 = add i64 %gcov_ctr.i.i279.i, 1, !dbg !625
  store i64 %317, ptr @__llvm_gcov_ctr.83, align 16, !dbg !625
  br label %sw.epilog.i, !dbg !625

if.end.i.i282.i:                                  ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %add49.i), !dbg !626
  %cmp.i.i281.i = icmp eq i32 %add49.i, -70, !dbg !626
  br i1 %cmp.i.i281.i, label %if.then4.i.i.i, label %if.else.i.i285.i, !dbg !627

if.then4.i.i.i:                                   ; preds = %if.end.i.i282.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !628
  %gcov_ctr20.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 1), align 8, !dbg !628
  %318 = add i64 %gcov_ctr20.i.i.i, 1, !dbg !628
  store i64 %318, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 1), align 8, !dbg !628
  %gcov_ctr.i39.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !629
  %319 = add i64 %gcov_ctr.i39.i.i.i, 1, !dbg !629
  store i64 %319, ptr @__llvm_gcov_ctr.77, align 8, !dbg !629
  %320 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !629
  %and.i40.i.i.i = and i32 %320, -16384, !dbg !631
  %321 = inttoptr i32 %and.i40.i.i.i to ptr, !dbg !632
  %task.i.i283.i = getelementptr inbounds %struct.thread_info, ptr %321, i32 0, i32 2, !dbg !633
  %322 = ptrtoint ptr %task.i.i283.i to i32, !dbg !633
  call void @__asan_load4_noabort(i32 %322), !dbg !633
  %323 = load ptr, ptr %task.i.i283.i, align 8, !dbg !633
  %comm.i.i284.i = getelementptr inbounds %struct.task_struct, ptr %323, i32 0, i32 101, !dbg !634
  %call6.i.i.i = call i32 @strlcpy(ptr noundef %add.ptr.i.i.i278.i, ptr noundef %comm.i.i284.i, i32 noundef %shr.i.i.i) #21, !dbg !635
  br label %if.end8.i.i.i, !dbg !636

if.else.i.i285.i:                                 ; preds = %if.end.i.i282.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !637
  %gcov_ctr21.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 2), align 16, !dbg !637
  %324 = add i64 %gcov_ctr21.i.i.i, 1, !dbg !637
  store i64 %324, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 2), align 16, !dbg !637
  %call7.i.i.i = call i32 @strncpy_from_user(ptr noundef %add.ptr.i.i.i278.i, ptr noundef %316, i32 noundef %shr.i.i.i) #21, !dbg !638
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.else.i.i285.i, %if.then4.i.i.i
  %ret.0.i.i.i = phi i32 [ %call6.i.i.i, %if.then4.i.i.i ], [ %call7.i.i.i, %if.else.i.i285.i ], !dbg !639
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i.i.i), !dbg !640
  %cmp9.i.i.i = icmp sgt i32 %ret.0.i.i.i, -1, !dbg !640
  br i1 %cmp9.i.i.i, label %if.then10.i.i.i, label %if.end8.i.i.i.sw.epilog.i_crit_edge, !dbg !641

if.end8.i.i.i.sw.epilog.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !641
  br label %sw.epilog.i, !dbg !641

if.then10.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i.i.i, i32 %shr.i.i.i), !dbg !642
  %cmp11.i.i.i = icmp eq i32 %ret.0.i.i.i, %shr.i.i.i, !dbg !642
  br i1 %cmp11.i.i.i, label %if.then12.i.i.i, label %if.else13.i.i.i, !dbg !643

if.then12.i.i.i:                                  ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !644
  %gcov_ctr22.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 3), align 8, !dbg !644
  %325 = add i64 %gcov_ctr22.i.i.i, 1, !dbg !644
  store i64 %325, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 3), align 8, !dbg !644
  %sub.i.i.i = add nsw i32 %shr.i.i.i, -1, !dbg !645
  %arrayidx.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i278.i, i32 %sub.i.i.i, !dbg !644
  %326 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !646
  call void @__asan_store1_noabort(i32 %326), !dbg !646
  store i8 0, ptr %arrayidx.i.i.i, align 1, !dbg !646
  br label %if.end14.i.i.i, !dbg !644

if.else13.i.i.i:                                  ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !647
  %gcov_ctr23.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 4), align 16, !dbg !647
  %327 = add i64 %gcov_ctr23.i.i.i, 1, !dbg !647
  store i64 %327, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 4), align 16, !dbg !647
  %inc.i.i.i = add nuw i32 %ret.0.i.i.i, 1, !dbg !647
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.else13.i.i.i, %if.then12.i.i.i
  %ret.1.i.i.i = phi i32 [ %shr.i.i.i, %if.then12.i.i.i ], [ %inc.i.i.i, %if.else13.i.i.i ], !dbg !639
  %shl.i.i.i = shl i32 %ret.1.i.i.i, 16, !dbg !648
  %or.i.i.i = or i32 %shl.i.i.i, %and.i.i.i277.i, !dbg !648
  %328 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !649
  call void @__asan_store4_noabort(i32 %328), !dbg !649
  store i32 %or.i.i.i, ptr %dest.addr.1.i, align 4, !dbg !649
  br label %sw.epilog.i, !dbg !650

sw.default.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !651
  %gcov_ctr101.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 12), align 16, !dbg !651
  %329 = add i64 %gcov_ctr101.i, 1, !dbg !651
  store i64 %329, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 12), align 16, !dbg !651
  br label %process_fetch_insn_bottom.exit, !dbg !651

sw.epilog.i:                                      ; preds = %if.end14.i.i.i, %if.end8.i.i.i.sw.epilog.i_crit_edge, %if.then.i.i280.i, %if.end14.i.i, %if.end8.i.i.sw.epilog.i_crit_edge, %if.then.i269.i, %if.then11.i.i.i.i264.i, %if.end.i.i.i.i260.i.sw.epilog.i_crit_edge, %if.then58.i.i.i.i.i, %if.then11.i.i.i219.i, %if.end.i.i.i215.i.sw.epilog.i_crit_edge, %if.then58.i.i.i.i, %sw.default.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %ret.4.i = phi i32 [ %ret.3.i, %sw.bb.i.i ], [ %ret.3.i, %sw.bb1.i.i ], [ %ret.3.i, %sw.bb3.i.i ], [ %ret.3.i, %sw.bb4.i.i ], [ %ret.3.i, %sw.default.i.i ], [ %ret.3.i, %if.then58.i.i.i.i ], [ %ret.3.i, %if.end.i.i.i215.i.sw.epilog.i_crit_edge ], [ %ret.3.i, %if.then11.i.i.i219.i ], [ %ret.3.i, %if.then58.i.i.i.i.i ], [ %ret.3.i, %if.end.i.i.i.i260.i.sw.epilog.i_crit_edge ], [ %ret.3.i, %if.then11.i.i.i.i264.i ], [ -12, %if.then.i269.i ], [ %ret.1.i.i, %if.end14.i.i ], [ %ret.0.i.i, %if.end8.i.i.sw.epilog.i_crit_edge ], [ -12, %if.then.i.i280.i ], [ %ret.1.i.i.i, %if.end14.i.i.i ], [ %ret.0.i.i.i, %if.end8.i.i.i.sw.epilog.i_crit_edge ], !dbg !285
  %loc.2.i = phi i32 [ %loc.1.i, %sw.bb.i.i ], [ %loc.1.i, %sw.bb1.i.i ], [ %loc.1.i, %sw.bb3.i.i ], [ %loc.1.i, %sw.bb4.i.i ], [ %loc.1.i, %sw.default.i.i ], [ %loc.1.i, %if.then58.i.i.i.i ], [ %loc.1.i, %if.end.i.i.i215.i.sw.epilog.i_crit_edge ], [ %loc.1.i, %if.then11.i.i.i219.i ], [ %loc.1.i, %if.then58.i.i.i.i.i ], [ %loc.1.i, %if.end.i.i.i.i260.i.sw.epilog.i_crit_edge ], [ %loc.1.i, %if.then11.i.i.i.i264.i ], [ %285, %if.then.i269.i ], [ %285, %if.end14.i.i ], [ %285, %if.end8.i.i.sw.epilog.i_crit_edge ], [ %307, %if.then.i.i280.i ], [ %307, %if.end14.i.i.i ], [ %307, %if.end8.i.i.i.sw.epilog.i_crit_edge ], !dbg !285
  %330 = ptrtoint ptr %incdec.ptr51.i to i32, !dbg !652
  call void @__asan_load4_noabort(i32 %330), !dbg !652
  %331 = load i32, ptr %incdec.ptr51.i, align 4, !dbg !652
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %331), !dbg !653
  %cmp53.i = icmp eq i32 %331, 17, !dbg !653
  br i1 %cmp53.i, label %if.then54.i, label %sw.epilog.i.array.i_crit_edge, !dbg !654

sw.epilog.i.array.i_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !654
  br label %array.i, !dbg !654

if.then54.i:                                      ; preds = %sw.epilog.i
  %gcov_ctr102.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 13), align 8, !dbg !655
  %332 = add i64 %gcov_ctr102.i, 1, !dbg !655
  store i64 %332, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 13), align 8, !dbg !655
  %gcov_ctr.i286.i = load i64, ptr @__llvm_gcov_ctr.85, align 16
  %333 = add i64 %gcov_ctr.i286.i, 1
  store i64 %333, ptr @__llvm_gcov_ctr.85, align 16
  %334 = ptrtoint ptr %157 to i32, !dbg !656
  call void @__asan_load1_noabort(i32 %334), !dbg !656
  %335 = load i8, ptr %157, align 4, !dbg !656
  %336 = zext i8 %335 to i64, !dbg !659
  call void @__sanitizer_cov_trace_switch(i64 %336, ptr @__sancov_gen_cov_switch_values.206), !dbg !659
  switch i8 %335, label %if.then54.i.arraythread-pre-split.i_crit_edge [
    i8 1, label %sw.bb.i291.i
    i8 2, label %sw.bb7.i.i
    i8 4, label %sw.bb18.i.i
    i8 8, label %sw.bb25.i.i
  ], !dbg !659

if.then54.i.arraythread-pre-split.i_crit_edge:    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !659
  br label %arraythread-pre-split.i, !dbg !659

sw.bb.i291.i:                                     ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !660
  %gcov_ctr33.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !660
  %337 = add i64 %gcov_ctr33.i.i, 1, !dbg !660
  store i64 %337, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !660
  %338 = ptrtoint ptr %lshift26.i.i to i32, !dbg !661
  call void @__asan_load1_noabort(i32 %338), !dbg !661
  %339 = load i8, ptr %lshift26.i.i, align 1, !dbg !661
  %conv1.i.i = zext i8 %339 to i32, !dbg !660
  %340 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !662
  call void @__asan_load1_noabort(i32 %340), !dbg !662
  %341 = load i8, ptr %dest.addr.1.i, align 1, !dbg !662
  %conv2.i287.i = zext i8 %341 to i32, !dbg !662
  %shl.i288.i = shl i32 %conv2.i287.i, %conv1.i.i, !dbg !662
  %conv3.i.i = trunc i32 %shl.i288.i to i8, !dbg !662
  store i8 %conv3.i.i, ptr %dest.addr.1.i, align 1, !dbg !662
  %342 = ptrtoint ptr %rshift29.i.i to i32, !dbg !663
  call void @__asan_load1_noabort(i32 %342), !dbg !663
  %343 = load i8, ptr %rshift29.i.i, align 2, !dbg !663
  %conv4.i.i = zext i8 %343 to i32, !dbg !664
  %conv5.i289.i = and i32 %shl.i288.i, 255, !dbg !665
  %shr.i290.i = lshr i32 %conv5.i289.i, %conv4.i.i, !dbg !665
  %conv6.i.i = trunc i32 %shr.i290.i to i8, !dbg !665
  store i8 %conv6.i.i, ptr %dest.addr.1.i, align 1, !dbg !665
  br label %arraythread-pre-split.i, !dbg !666

sw.bb7.i.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !667
  %gcov_ctr34.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 2), align 16, !dbg !667
  %344 = add i64 %gcov_ctr34.i.i, 1, !dbg !667
  store i64 %344, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 2), align 16, !dbg !667
  %345 = ptrtoint ptr %lshift26.i.i to i32, !dbg !668
  call void @__asan_load1_noabort(i32 %345), !dbg !668
  %346 = load i8, ptr %lshift26.i.i, align 1, !dbg !668
  %conv9.i.i = zext i8 %346 to i32, !dbg !667
  %347 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !669
  call void @__asan_load2_noabort(i32 %347), !dbg !669
  %348 = load i16, ptr %dest.addr.1.i, align 2, !dbg !669
  %conv10.i.i = zext i16 %348 to i32, !dbg !669
  %shl11.i.i = shl i32 %conv10.i.i, %conv9.i.i, !dbg !669
  %conv12.i.i = trunc i32 %shl11.i.i to i16, !dbg !669
  store i16 %conv12.i.i, ptr %dest.addr.1.i, align 2, !dbg !669
  %349 = ptrtoint ptr %rshift29.i.i to i32, !dbg !670
  call void @__asan_load1_noabort(i32 %349), !dbg !670
  %350 = load i8, ptr %rshift29.i.i, align 2, !dbg !670
  %conv14.i.i = zext i8 %350 to i32, !dbg !671
  %conv15.i.i = and i32 %shl11.i.i, 65535, !dbg !672
  %shr16.i.i = lshr i32 %conv15.i.i, %conv14.i.i, !dbg !672
  %conv17.i.i = trunc i32 %shr16.i.i to i16, !dbg !672
  store i16 %conv17.i.i, ptr %dest.addr.1.i, align 2, !dbg !672
  br label %arraythread-pre-split.i, !dbg !673

sw.bb18.i.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !674
  %gcov_ctr35.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 3), align 8, !dbg !674
  %351 = add i64 %gcov_ctr35.i.i, 1, !dbg !674
  store i64 %351, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 3), align 8, !dbg !674
  %352 = ptrtoint ptr %lshift26.i.i to i32, !dbg !675
  call void @__asan_load1_noabort(i32 %352), !dbg !675
  %353 = load i8, ptr %lshift26.i.i, align 1, !dbg !675
  %conv20.i.i = zext i8 %353 to i32, !dbg !674
  %354 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !676
  call void @__asan_load4_noabort(i32 %354), !dbg !676
  %355 = load i32, ptr %dest.addr.1.i, align 4, !dbg !676
  %shl21.i.i = shl i32 %355, %conv20.i.i, !dbg !676
  store i32 %shl21.i.i, ptr %dest.addr.1.i, align 4, !dbg !676
  %356 = ptrtoint ptr %rshift29.i.i to i32, !dbg !677
  call void @__asan_load1_noabort(i32 %356), !dbg !677
  %357 = load i8, ptr %rshift29.i.i, align 2, !dbg !677
  %conv23.i.i = zext i8 %357 to i32, !dbg !678
  %shr24.i.i = lshr i32 %shl21.i.i, %conv23.i.i, !dbg !679
  store i32 %shr24.i.i, ptr %dest.addr.1.i, align 4, !dbg !679
  br label %arraythread-pre-split.i, !dbg !680

sw.bb25.i.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !681
  %gcov_ctr36.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !681
  %358 = add i64 %gcov_ctr36.i.i, 1, !dbg !681
  store i64 %358, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !681
  %359 = ptrtoint ptr %lshift26.i.i to i32, !dbg !682
  call void @__asan_load1_noabort(i32 %359), !dbg !682
  %360 = load i8, ptr %lshift26.i.i, align 1, !dbg !682
  %361 = ptrtoint ptr %dest.addr.1.i to i32, !dbg !683
  call void @__asan_load8_noabort(i32 %361), !dbg !683
  %362 = load i64, ptr %dest.addr.1.i, align 8, !dbg !683
  %sh_prom.i.i = zext i8 %360 to i64, !dbg !683
  %shl28.i.i = shl i64 %362, %sh_prom.i.i, !dbg !683
  store i64 %shl28.i.i, ptr %dest.addr.1.i, align 8, !dbg !683
  %363 = ptrtoint ptr %rshift29.i.i to i32, !dbg !684
  call void @__asan_load1_noabort(i32 %363), !dbg !684
  %364 = load i8, ptr %rshift29.i.i, align 2, !dbg !684
  %sh_prom31.i.i = zext i8 %364 to i64, !dbg !685
  %shr32.i.i = lshr i64 %shl28.i.i, %sh_prom31.i.i, !dbg !685
  store i64 %shr32.i.i, ptr %dest.addr.1.i, align 8, !dbg !685
  br label %arraythread-pre-split.i, !dbg !686

arraythread-pre-split.i:                          ; preds = %sw.bb25.i.i, %sw.bb18.i.i, %sw.bb7.i.i, %sw.bb.i291.i, %if.then54.i.arraythread-pre-split.i_crit_edge, %fetch_store_strlen_user.exit.i, %cond.false.i.i, %cond.true.i.i
  %code.addr.3.ph.i = phi ptr [ %incdec.ptr51.i, %fetch_store_strlen_user.exit.i ], [ %incdec.ptr51.i, %cond.true.i.i ], [ %incdec.ptr51.i, %cond.false.i.i ], [ %incdec.ptr55.i, %if.then54.i.arraythread-pre-split.i_crit_edge ], [ %incdec.ptr55.i, %sw.bb.i291.i ], [ %incdec.ptr55.i, %sw.bb7.i.i ], [ %incdec.ptr55.i, %sw.bb18.i.i ], [ %incdec.ptr55.i, %sw.bb25.i.i ]
  %ret.5.ph.i = phi i32 [ %add29.i, %fetch_store_strlen_user.exit.i ], [ 0, %cond.true.i.i ], [ %len.0.i.i, %cond.false.i.i ], [ %ret.4.i, %if.then54.i.arraythread-pre-split.i_crit_edge ], [ %ret.4.i, %sw.bb.i291.i ], [ %ret.4.i, %sw.bb7.i.i ], [ %ret.4.i, %sw.bb18.i.i ], [ %ret.4.i, %sw.bb25.i.i ]
  %loc.3.ph.i = phi i32 [ %loc.1.i, %fetch_store_strlen_user.exit.i ], [ %loc.1.i, %cond.true.i.i ], [ %loc.1.i, %cond.false.i.i ], [ %loc.2.i, %if.then54.i.arraythread-pre-split.i_crit_edge ], [ %loc.2.i, %sw.bb.i291.i ], [ %loc.2.i, %sw.bb7.i.i ], [ %loc.2.i, %sw.bb18.i.i ], [ %loc.2.i, %sw.bb25.i.i ]
  %365 = ptrtoint ptr %code.addr.3.ph.i to i32, !dbg !687
  call void @__asan_load4_noabort(i32 %365), !dbg !687
  %.pr.i = load i32, ptr %code.addr.3.ph.i, align 4, !dbg !687
  br label %array.i, !dbg !687

array.i:                                          ; preds = %arraythread-pre-split.i, %sw.epilog.i.array.i_crit_edge
  %366 = phi i32 [ %.pr.i, %arraythread-pre-split.i ], [ %331, %sw.epilog.i.array.i_crit_edge ], !dbg !687
  %code.addr.3.i = phi ptr [ %code.addr.3.ph.i, %arraythread-pre-split.i ], [ %incdec.ptr51.i, %sw.epilog.i.array.i_crit_edge ], !dbg !285
  %ret.5.i = phi i32 [ %ret.5.ph.i, %arraythread-pre-split.i ], [ %ret.4.i, %sw.epilog.i.array.i_crit_edge ], !dbg !285
  %loc.3.i = phi i32 [ %loc.3.ph.i, %arraythread-pre-split.i ], [ %loc.2.i, %sw.epilog.i.array.i_crit_edge ], !dbg !285
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %366), !dbg !688
  %cmp58.i = icmp eq i32 %366, 18, !dbg !688
  br i1 %cmp58.i, label %if.then59.i, label %array.i.if.end82.i_crit_edge, !dbg !689

array.i.if.end82.i_crit_edge:                     ; preds = %array.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !689
  br label %if.end82.i, !dbg !689

if.then59.i:                                      ; preds = %array.i
  %add60.i = add i32 %ret.5.i, %total.1.i, !dbg !690
  %inc.i = add i32 %i.1.i, 1, !dbg !691
  %367 = getelementptr inbounds %struct.fetch_insn, ptr %code.addr.3.i, i32 0, i32 1, !dbg !692
  %368 = ptrtoint ptr %367 to i32, !dbg !692
  call void @__asan_load4_noabort(i32 %368), !dbg !692
  %369 = load i32, ptr %367, align 4, !dbg !692
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %369), !dbg !693
  %cmp61.i = icmp ult i32 %inc.i, %369, !dbg !693
  br i1 %cmp61.i, label %if.then62.i, label %if.end80.i, !dbg !691

if.then62.i:                                      ; preds = %if.then59.i
  %370 = ptrtoint ptr %code.addr.1.i to i32, !dbg !694
  call void @__asan_load4_noabort(i32 %370), !dbg !694
  %371 = load i32, ptr %code.addr.1.i, align 4, !dbg !694
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %371), !dbg !695
  %cmp64.not.i = icmp eq i32 %371, 15, !dbg !695
  br i1 %cmp64.not.i, label %if.then62.i.if.end72.i_crit_edge, label %land.lhs.true.i, !dbg !696

if.then62.i.if.end72.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !696
  br label %if.end72.i, !dbg !696

land.lhs.true.i:                                  ; preds = %if.then62.i
  %gcov_ctr103.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 14), align 16, !dbg !697
  %372 = add i64 %gcov_ctr103.i, 1, !dbg !697
  store i64 %372, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 14), align 16, !dbg !697
  %373 = ptrtoint ptr %code.addr.1.i to i32, !dbg !698
  call void @__asan_load4_noabort(i32 %373), !dbg !698
  %374 = load i32, ptr %code.addr.1.i, align 4, !dbg !698
  %cmp66.not.i = icmp eq i32 %374, 16, !dbg !699
  br i1 %cmp66.not.i, label %land.lhs.true.i.if.end72.i_crit_edge, label %if.then67.i, !dbg !700

land.lhs.true.i.if.end72.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !700
  br label %if.end72.i, !dbg !700

if.then67.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !701
  %375 = ptrtoint ptr %156 to i32, !dbg !701
  call void @__asan_load4_noabort(i32 %375), !dbg !701
  %376 = load i32, ptr %156, align 4, !dbg !701
  %add.ptr69.i = getelementptr i8, ptr %dest.addr.1.i, i32 %376, !dbg !702
  %377 = ptrtoint ptr %val.addr.i to i32, !dbg !703
  call void @__asan_load4_noabort(i32 %377), !dbg !703
  %378 = load i32, ptr %val.addr.i, align 4, !dbg !703
  %add71.i = add i32 %378, %376, !dbg !703
  store i32 %add71.i, ptr %val.addr.i, align 4, !dbg !703
  br label %stage3.i, !dbg !704

if.end72.i:                                       ; preds = %land.lhs.true.i.if.end72.i_crit_edge, %if.then62.i.if.end72.i_crit_edge
  %incdec.ptr73.i = getelementptr %struct.fetch_insn, ptr %code.addr.1.i, i32 -1, !dbg !705
  %add74.i = add i32 %lval.1.i, 4, !dbg !706
  %379 = ptrtoint ptr %val.addr.i to i32, !dbg !707
  call void @__asan_store4_noabort(i32 %379), !dbg !707
  store i32 %add74.i, ptr %val.addr.i, align 4, !dbg !707
  br i1 %tobool11.not.i, label %if.end72.i.if.end79.i_crit_edge, label %if.then76.i, !dbg !708

if.end72.i.if.end79.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !708
  br label %if.end79.i, !dbg !708

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !709
  %gcov_ctr104.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 15), align 8, !dbg !709
  %380 = add i64 %gcov_ctr104.i, 1, !dbg !709
  store i64 %380, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 15), align 8, !dbg !709
  %add.ptr77.i = getelementptr i8, ptr %dest.addr.1.i, i32 4, !dbg !709
  %gcov_ctr.i292.i = load i64, ptr @__llvm_gcov_ctr.86, align 8
  %381 = add i64 %gcov_ctr.i292.i, 1
  store i64 %381, ptr @__llvm_gcov_ctr.86, align 8
  %sub4.neg.i.i = mul i32 %ret.5.i, -65536, !dbg !710
  %shr5.i.i = add i32 %sub4.neg.i.i, %loc.3.i, !dbg !710
  %shl.i293.i = and i32 %shr5.i.i, -65536, !dbg !710
  %add.i294.i = add i32 %loc.3.i, %ret.5.i, !dbg !710
  %and1.i.i = and i32 %add.i294.i, 65535, !dbg !710
  %or.i295.i = or i32 %shl.i293.i, %and1.i.i, !dbg !710
  %382 = ptrtoint ptr %add.ptr77.i to i32, !dbg !713
  call void @__asan_store4_noabort(i32 %382), !dbg !713
  store i32 %or.i295.i, ptr %add.ptr77.i, align 4, !dbg !713
  br label %if.end79.i, !dbg !714

if.end79.i:                                       ; preds = %if.then76.i, %if.end72.i.if.end79.i_crit_edge
  %dest.addr.2.i = phi ptr [ %add.ptr77.i, %if.then76.i ], [ null, %if.end72.i.if.end79.i_crit_edge ]
  %gcov_ctr105.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 16), align 16, !dbg !715
  %383 = add i64 %gcov_ctr105.i, 1, !dbg !715
  store i64 %383, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 16), align 16, !dbg !715
  br label %stage2.i, !dbg !715

if.end80.i:                                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !716
  %gcov_ctr106.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 17), align 8, !dbg !716
  %384 = add i64 %gcov_ctr106.i, 1, !dbg !716
  store i64 %384, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 17), align 8, !dbg !716
  %incdec.ptr81.i = getelementptr %struct.fetch_insn, ptr %code.addr.3.i, i32 1, !dbg !716
  br label %if.end82.i, !dbg !717

if.end82.i:                                       ; preds = %if.end80.i, %array.i.if.end82.i_crit_edge
  %code.addr.4.i = phi ptr [ %incdec.ptr81.i, %if.end80.i ], [ %code.addr.3.i, %array.i.if.end82.i_crit_edge ], !dbg !285
  %ret.6.i = phi i32 [ %add60.i, %if.end80.i ], [ %ret.5.i, %array.i.if.end82.i_crit_edge ], !dbg !285
  %385 = ptrtoint ptr %code.addr.4.i to i32, !dbg !718
  call void @__asan_load4_noabort(i32 %385), !dbg !718
  %386 = load i32, ptr %code.addr.4.i, align 4, !dbg !718
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %386), !dbg !719
  %cmp84.i = icmp eq i32 %386, 20, !dbg !719
  br i1 %cmp84.i, label %cond.true.i, label %cond.false.i, !dbg !720

cond.true.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !721
  %gcov_ctr107.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 18), align 16, !dbg !721
  %387 = add i64 %gcov_ctr107.i, 1, !dbg !721
  store i64 %387, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 18), align 16, !dbg !721
  br label %process_fetch_insn_bottom.exit, !dbg !720

cond.false.i:                                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !720
  %gcov_ctr108.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 19), align 8, !dbg !720
  %388 = add i64 %gcov_ctr108.i, 1, !dbg !720
  store i64 %388, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 19), align 8, !dbg !720
  br label %process_fetch_insn_bottom.exit, !dbg !720

process_fetch_insn_bottom.exit:                   ; preds = %cond.false.i, %cond.true.i, %sw.default.i, %if.else31.i, %if.then9.i
  %retval.0.i = phi i32 [ -14, %if.then9.i ], [ -84, %if.else31.i ], [ -84, %sw.default.i ], [ %ret.6.i, %cond.true.i ], [ -84, %cond.false.i ], !dbg !285
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i), !dbg !722
  br label %cleanup, !dbg !723

cleanup:                                          ; preds = %process_fetch_insn_bottom.exit, %sw.default
  %retval.0 = phi i32 [ -84, %sw.default ], [ %retval.0.i, %process_fetch_insn_bottom.exit ], !dbg !279
  ret i32 %retval.0, !dbg !724
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_get_uprobe_info(ptr nocapture noundef readonly %event, ptr nocapture noundef writeonly %fd_type, ptr nocapture noundef writeonly %filename, ptr nocapture noundef writeonly %probe_offset, i1 noundef zeroext %perf_type_tracepoint) local_unnamed_addr #0 align 64 !dbg !725 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !726
  %tp_event = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 65, !dbg !727
  %0 = ptrtoint ptr %tp_event to i32, !dbg !727
  call void @__asan_load4_noabort(i32 %0), !dbg !727
  %1 = load ptr, ptr %tp_event, align 8, !dbg !727
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 8, !dbg !728
  %2 = ptrtoint ptr %flags.i to i32, !dbg !728
  call void @__asan_load4_noabort(i32 %2), !dbg !728
  %3 = load i32, ptr %flags.i, align 4, !dbg !728
  %and.i = and i32 %3, 16, !dbg !732
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !732
  %tobool.not.i19 = icmp eq i32 %and.i, 0, !dbg !732
  br i1 %tobool.not.i19, label %if.else.i, label %if.then.i20, !dbg !733

if.then.i20:                                      ; preds = %entry
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 2, !dbg !734
  %5 = ptrtoint ptr %4 to i32, !dbg !734
  call void @__asan_load4_noabort(i32 %5), !dbg !734
  %6 = load ptr, ptr %4, align 4, !dbg !734
  %tobool1.not.i = icmp eq ptr %6, null, !dbg !735
  br i1 %tobool1.not.i, label %cond.false.i, label %cond.true.i, !dbg !735

cond.true.i:                                      ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #20, !dbg !736
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !736
  %7 = add i64 %gcov_ctr2.i, 1, !dbg !736
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !736
  %8 = ptrtoint ptr %4 to i32, !dbg !737
  call void @__asan_load4_noabort(i32 %8), !dbg !737
  %9 = load ptr, ptr %4, align 4, !dbg !737
  %10 = ptrtoint ptr %9 to i32, !dbg !738
  call void @__asan_load4_noabort(i32 %10), !dbg !738
  %11 = load ptr, ptr %9, align 4, !dbg !738
  br label %trace_event_name.exit, !dbg !735

cond.false.i:                                     ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #20, !dbg !735
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !735
  %12 = add i64 %gcov_ctr.i21, 1, !dbg !735
  store i64 %12, ptr @__llvm_gcov_ctr.42, align 16, !dbg !735
  br label %trace_event_name.exit, !dbg !735

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !739
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !739
  %13 = add i64 %gcov_ctr3.i, 1, !dbg !739
  store i64 %13, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !739
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 2, !dbg !740
  %15 = ptrtoint ptr %14 to i32, !dbg !740
  call void @__asan_load4_noabort(i32 %15), !dbg !740
  %16 = load ptr, ptr %14, align 4, !dbg !740
  br label %trace_event_name.exit, !dbg !741

trace_event_name.exit:                            ; preds = %if.else.i, %cond.false.i, %cond.true.i
  %retval.0.i22 = phi ptr [ %16, %if.else.i ], [ %11, %cond.true.i ], [ null, %cond.false.i ], !dbg !742
  br i1 %perf_type_tracepoint, label %if.then, label %if.else, !dbg !743

if.then:                                          ; preds = %trace_event_name.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !744
  %class = getelementptr inbounds %struct.trace_event_call, ptr %1, i32 0, i32 1, !dbg !744
  %17 = ptrtoint ptr %class to i32, !dbg !744
  call void @__asan_load4_noabort(i32 %17), !dbg !744
  %18 = load ptr, ptr %class, align 4, !dbg !744
  %19 = ptrtoint ptr %18 to i32, !dbg !745
  call void @__asan_load4_noabort(i32 %19), !dbg !745
  %20 = load ptr, ptr %18, align 4, !dbg !745
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.41, align 16, !dbg !746
  %21 = add i64 %gcov_ctr, 1, !dbg !746
  store i64 %21, ptr @__llvm_gcov_ctr.41, align 16, !dbg !746
  %call2 = tail call fastcc ptr @find_probe_event(ptr noundef %retval.0.i22, ptr noundef %20), !dbg !747
  br label %if.end, !dbg !748

if.else:                                          ; preds = %trace_event_name.exit
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !749
  %22 = add i64 %gcov_ctr12, 1, !dbg !749
  store i64 %22, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !749
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %23 = add i64 %gcov_ctr.i.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %24 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %24, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i.i = getelementptr i8, ptr %1, i32 84, !dbg !750
  %25 = ptrtoint ptr %probes.i.i to i32, !dbg !750
  call void @__asan_load4_noabort(i32 %25), !dbg !750
  %26 = load ptr, ptr %probes.i.i, align 4, !dbg !750
  %tobool.not.i = icmp eq ptr %26, null, !dbg !755
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i, !dbg !755

land.rhs.i:                                       ; preds = %if.else
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.44, align 16, !dbg !755
  %27 = add i64 %gcov_ctr.i, 1, !dbg !755
  store i64 %27, ptr @__llvm_gcov_ctr.44, align 16, !dbg !755
  %.b49.i = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !755
  br i1 %.b49.i, label %land.rhs.i.if.end.thread_crit_edge, label %if.then.i, !dbg !755, !prof !194

land.rhs.i.if.end.thread_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !755
  br label %if.end.thread, !dbg !755

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !755
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !755
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 326, i32 noundef 9, ptr noundef null) #21, !dbg !755
  %gcov_ctr42.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !755
  %28 = add i64 %gcov_ctr42.i, 1, !dbg !755
  store i64 %28, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !755
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !755
  %29 = add i64 %gcov_ctr43.i, 1, !dbg !755
  store i64 %29, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !755
  br label %if.end.thread, !dbg !755

if.end.thread:                                    ; preds = %if.then.i, %land.rhs.i.if.end.thread_crit_edge
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !756
  %30 = add i64 %gcov_ctr45.i, 1, !dbg !756
  store i64 %30, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !756
  br label %if.then6, !dbg !757

if.end40.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20, !dbg !758
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !758
  %31 = add i64 %gcov_ctr44.i, 1, !dbg !758
  store i64 %31, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !758
  %add.ptr.i = getelementptr i8, ptr %26, i32 -56, !dbg !758
  br label %if.end, !dbg !759

if.end:                                           ; preds = %if.end40.i, %if.then
  %tu.0 = phi ptr [ %call2, %if.then ], [ %add.ptr.i, %if.end40.i ], !dbg !760
  %tobool5.not = icmp eq ptr %tu.0, null, !dbg !761
  br i1 %tobool5.not, label %if.end.if.then6_crit_edge, label %if.end7, !dbg !757

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !757
  br label %if.then6, !dbg !757

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.thread
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !762
  %32 = add i64 %gcov_ctr13, 1, !dbg !762
  store i64 %32, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !762
  br label %cleanup, !dbg !762

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !760
  %gcov_ctr.i23 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %33 = add i64 %gcov_ctr.i23, 1
  store i64 %33, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu.0, i32 0, i32 1, i32 1, !dbg !763
  %34 = ptrtoint ptr %ret_handler.i to i32, !dbg !763
  call void @__asan_load4_noabort(i32 %34), !dbg !763
  %35 = load ptr, ptr %ret_handler.i, align 4, !dbg !763
  %cmp.i.not = icmp eq ptr %35, null, !dbg !766
  %cond = select i1 %cmp.i.not, i32 4, i32 5, !dbg !767
  %36 = ptrtoint ptr %fd_type to i32, !dbg !768
  call void @__asan_store4_noabort(i32 %36), !dbg !768
  store i32 %cond, ptr %fd_type, align 4, !dbg !768
  %filename9 = getelementptr inbounds %struct.trace_uprobe, ptr %tu.0, i32 0, i32 4, !dbg !769
  %37 = ptrtoint ptr %filename9 to i32, !dbg !769
  call void @__asan_load4_noabort(i32 %37), !dbg !769
  %38 = load ptr, ptr %filename9, align 4, !dbg !769
  %39 = ptrtoint ptr %filename to i32, !dbg !770
  call void @__asan_store4_noabort(i32 %39), !dbg !770
  store ptr %38, ptr %filename, align 4, !dbg !770
  %offset = getelementptr inbounds %struct.trace_uprobe, ptr %tu.0, i32 0, i32 5, !dbg !771
  %40 = ptrtoint ptr %offset to i32, !dbg !771
  call void @__asan_load4_noabort(i32 %40), !dbg !771
  %41 = load i32, ptr %offset, align 4, !dbg !771
  %conv = zext i32 %41 to i64, !dbg !772
  %42 = ptrtoint ptr %probe_offset to i32, !dbg !773
  call void @__asan_store8_noabort(i32 %42), !dbg !773
  store i64 %conv, ptr %probe_offset, align 8, !dbg !773
  br label %cleanup, !dbg !774

cleanup:                                          ; preds = %if.end7, %if.then6
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %if.then6 ], !dbg !760
  ret i32 %retval.0, !dbg !775
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_probe_event(ptr nocapture noundef readonly %event, ptr nocapture noundef readonly %group) unnamed_addr #2 align 64 !dbg !776 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !777
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dyn_event_list to i32)), !dbg !778
  %pos.032 = load ptr, ptr @dyn_event_list, align 4, !dbg !778
  %cmp.not33 = icmp eq ptr %pos.032, @dyn_event_list, !dbg !778
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !778

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !778

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !778
  br label %for.end, !dbg !778

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.034 = phi ptr [ %pos.0, %for.inc.for.body_crit_edge ], [ %pos.032, %entry.for.body_crit_edge ]
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.88, align 8
  %ops.i = getelementptr inbounds %struct.dyn_event, ptr %pos.034, i32 0, i32 1, !dbg !779
  %1 = ptrtoint ptr %ops.i to i32, !dbg !779
  call void @__asan_load4_noabort(i32 %1), !dbg !779
  %2 = load ptr, ptr %ops.i, align 4, !dbg !779
  %cmp.i = icmp eq ptr %2, @trace_uprobe_ops, !dbg !782
  br i1 %cmp.i, label %land.lhs.true, label %for.body.for.inc_crit_edge, !dbg !778

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !778
  br label %for.inc, !dbg !778

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !778
  %3 = add i64 %gcov_ctr17, 1, !dbg !778
  store i64 %3, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !778
  %gcov_ctr.i27 = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %4 = add i64 %gcov_ctr.i27, 1
  store i64 %4, ptr @__llvm_gcov_ctr.89, align 8
  %tobool.not = icmp eq ptr %pos.034, null, !dbg !778
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.then, !dbg !778

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20, !dbg !778
  br label %for.inc, !dbg !778

if.then:                                          ; preds = %land.lhs.true
  %gcov_ctr.i28 = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %5 = add i64 %gcov_ctr.i28, 1
  store i64 %5, ptr @__llvm_gcov_ctr.90, align 8
  %event.i = getelementptr inbounds %struct.trace_uprobe, ptr %pos.034, i32 0, i32 8, i32 1, !dbg !783
  %6 = ptrtoint ptr %event.i to i32, !dbg !783
  call void @__asan_load4_noabort(i32 %6), !dbg !783
  %7 = load ptr, ptr %event.i, align 4, !dbg !783
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 2, i32 8, !dbg !786
  %8 = ptrtoint ptr %flags.i.i to i32, !dbg !786
  call void @__asan_load4_noabort(i32 %8), !dbg !786
  %9 = load i32, ptr %flags.i.i, align 4, !dbg !786
  %and.i.i = and i32 %9, 16, !dbg !788
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !788
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !788
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !789

if.then.i.i:                                      ; preds = %if.then
  %10 = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 2, i32 2, !dbg !790
  %11 = ptrtoint ptr %10 to i32, !dbg !790
  call void @__asan_load4_noabort(i32 %11), !dbg !790
  %12 = load ptr, ptr %10, align 4, !dbg !790
  %tobool1.not.i.i = icmp eq ptr %12, null, !dbg !791
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !791

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !792
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !792
  %13 = add i64 %gcov_ctr2.i.i, 1, !dbg !792
  store i64 %13, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !792
  %14 = ptrtoint ptr %12 to i32, !dbg !793
  call void @__asan_load4_noabort(i32 %14), !dbg !793
  %15 = load ptr, ptr %12, align 4, !dbg !793
  br label %trace_probe_name.exit, !dbg !791

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !791
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !791
  %16 = add i64 %gcov_ctr.i.i, 1, !dbg !791
  store i64 %16, ptr @__llvm_gcov_ctr.42, align 16, !dbg !791
  br label %trace_probe_name.exit, !dbg !791

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20, !dbg !794
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !794
  %17 = add i64 %gcov_ctr3.i.i, 1, !dbg !794
  store i64 %17, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !794
  %18 = getelementptr inbounds %struct.trace_probe_event, ptr %7, i32 0, i32 2, i32 2, !dbg !795
  %19 = ptrtoint ptr %18 to i32, !dbg !795
  call void @__asan_load4_noabort(i32 %19), !dbg !795
  %20 = load ptr, ptr %18, align 4, !dbg !795
  br label %trace_probe_name.exit, !dbg !796

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %20, %if.else.i.i ], [ %15, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !797
  %call3 = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %event) #24, !dbg !798
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !799
  %cmp4 = icmp eq i32 %call3, 0, !dbg !799
  br i1 %cmp4, label %land.lhs.true5, label %trace_probe_name.exit.if.end_crit_edge, !dbg !800

trace_probe_name.exit.if.end_crit_edge:           ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !800
  br label %if.end, !dbg !800

land.lhs.true5:                                   ; preds = %trace_probe_name.exit
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !801
  %21 = add i64 %gcov_ctr18, 1, !dbg !801
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !801
  %gcov_ctr.i29 = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %22 = add i64 %gcov_ctr.i29, 1
  store i64 %22, ptr @__llvm_gcov_ctr.91, align 8
  %23 = ptrtoint ptr %event.i to i32, !dbg !802
  call void @__asan_load4_noabort(i32 %23), !dbg !802
  %24 = load ptr, ptr %event.i, align 4, !dbg !802
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %24, i32 0, i32 2, i32 1, !dbg !805
  %25 = ptrtoint ptr %class.i to i32, !dbg !805
  call void @__asan_load4_noabort(i32 %25), !dbg !805
  %26 = load ptr, ptr %class.i, align 4, !dbg !805
  %27 = ptrtoint ptr %26 to i32, !dbg !806
  call void @__asan_load4_noabort(i32 %27), !dbg !806
  %28 = load ptr, ptr %26, align 4, !dbg !806
  %call8 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %group) #24, !dbg !807
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8), !dbg !808
  %cmp9 = icmp eq i32 %call8, 0, !dbg !808
  br i1 %cmp9, label %if.then10, label %land.lhs.true5.if.end_crit_edge, !dbg !798

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20, !dbg !798
  br label %if.end, !dbg !798

if.then10:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20, !dbg !809
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 3), align 8, !dbg !809
  %29 = add i64 %gcov_ctr19, 1, !dbg !809
  store i64 %29, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 3), align 8, !dbg !809
  br label %cleanup, !dbg !810

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %trace_probe_name.exit.if.end_crit_edge
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 4), align 16, !dbg !811
  %30 = add i64 %gcov_ctr20, 1, !dbg !811
  store i64 %30, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 4), align 16, !dbg !811
  br label %for.inc, !dbg !811

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 5), align 8, !dbg !778
  %31 = add i64 %gcov_ctr21, 1, !dbg !778
  store i64 %31, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 5), align 8, !dbg !778
  %32 = ptrtoint ptr %pos.034 to i32, !dbg !778
  call void @__asan_load4_noabort(i32 %32), !dbg !778
  %pos.0 = load ptr, ptr %pos.034, align 4, !dbg !778
  %cmp.not = icmp eq ptr %pos.0, @dyn_event_list, !dbg !778
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !778, !llvm.loop !812

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !778
  br label %for.body, !dbg !778

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !778
  br label %for.end, !dbg !778

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.43, align 16, !dbg !813
  %33 = add i64 %gcov_ctr, 1, !dbg !813
  store i64 %33, ptr @__llvm_gcov_ctr.43, align 16, !dbg !813
  br label %cleanup, !dbg !813

cleanup:                                          ; preds = %for.end, %if.then10
  %retval.0 = phi ptr [ %pos.034, %if.then10 ], [ null, %for.end ], !dbg !814
  ret ptr %retval.0, !dbg !815
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @create_local_trace_uprobe(ptr noundef %name, i32 noundef %offs, i32 noundef %ref_ctr_offset, i1 noundef zeroext %is_return) local_unnamed_addr #0 align 64 !dbg !816 {
entry:
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #20, !dbg !817
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #21, !dbg !818
  %0 = ptrtoint ptr %path to i32, !dbg !819
  call void @__asan_store4_noabort(i32 %0), !dbg !819
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 8, !dbg !819, !annotation !168
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !819
  %2 = ptrtoint ptr %1 to i32, !dbg !819
  call void @__asan_store4_noabort(i32 %2), !dbg !819
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !dbg !819, !annotation !168
  %call = call i32 @kern_path(ptr noundef %name, i32 noundef 1, ptr noundef nonnull %path) #21, !dbg !820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !821
  %tobool.not = icmp eq i32 %call, 0, !dbg !821
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !821

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !822
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.46, align 16, !dbg !822
  %3 = add i64 %gcov_ctr, 1, !dbg !822
  store i64 %3, ptr @__llvm_gcov_ctr.46, align 16, !dbg !822
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.47, align 8
  %5 = inttoptr i32 %call to ptr, !dbg !823
  br label %cleanup, !dbg !827

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32, !dbg !828
  call void @__asan_load4_noabort(i32 %6), !dbg !828
  %7 = load ptr, ptr %1, align 4, !dbg !828
  %gcov_ctr.i51 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %8 = add i64 %gcov_ctr.i51, 1
  store i64 %8, ptr @__llvm_gcov_ctr.48, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.130, align 8
  %9 = add i64 %gcov_ctr.i.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.130, align 8
  %10 = ptrtoint ptr %7 to i32, !dbg !829
  call void @__asan_load4_noabort(i32 %10), !dbg !829
  %11 = load i32, ptr %7, align 8, !dbg !829
  %and.i.i = and i32 %11, 7340032, !dbg !835
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i), !dbg !836
  %cmp.i = icmp eq i32 %and.i.i, 4194304, !dbg !836
  br i1 %cmp.i, label %if.end5, label %if.then3, !dbg !837

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !838
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !838
  %12 = add i64 %gcov_ctr31, 1, !dbg !838
  store i64 %12, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !838
  call void @path_put(ptr noundef nonnull %path) #21, !dbg !838
  %gcov_ctr.i52 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %13 = add i64 %gcov_ctr.i52, 1
  store i64 %13, ptr @__llvm_gcov_ctr.47, align 8
  br label %cleanup, !dbg !839

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc ptr @alloc_trace_uprobe(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext %is_return), !dbg !840
  %gcov_ctr.i53 = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %14 = add i64 %gcov_ctr.i53, 1
  store i64 %14, ptr @__llvm_gcov_ctr.50, align 8
  %cmp.i54 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr), !dbg !841
  br i1 %cmp.i54, label %if.then9, label %if.end13, !dbg !844

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20, !dbg !845
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !845
  %15 = add i64 %gcov_ctr32, 1, !dbg !845
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !845
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %16 = add i64 %gcov_ctr.i55, 1
  store i64 %16, ptr @__llvm_gcov_ctr.51, align 8
  %17 = ptrtoint ptr %call7 to i32, !dbg !846
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %17) #25, !dbg !845
  call void @path_put(ptr noundef nonnull %path) #21, !dbg !849
  %gcov_ctr.i56 = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %18 = add i64 %gcov_ctr.i56, 1
  store i64 %18, ptr @__llvm_gcov_ctr.52, align 8
  br label %cleanup, !dbg !850

if.end13:                                         ; preds = %if.end5
  %offset = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 5, !dbg !851
  %19 = ptrtoint ptr %offset to i32, !dbg !852
  call void @__asan_store4_noabort(i32 %19), !dbg !852
  store i32 %offs, ptr %offset, align 4, !dbg !852
  %path14 = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 2, !dbg !853
  %20 = ptrtoint ptr %path to i32, !dbg !854
  call void @__asan_load8_noabort(i32 %20), !dbg !854
  %21 = load i64, ptr %path, align 8, !dbg !854
  %22 = ptrtoint ptr %path14 to i32, !dbg !854
  call void @__asan_storeN_noabort(i32 %22, i32 8), !dbg !854
  store i64 %21, ptr %path14, align 4, !dbg !854
  %ref_ctr_offset15 = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 6, !dbg !855
  %23 = ptrtoint ptr %ref_ctr_offset15 to i32, !dbg !856
  call void @__asan_store4_noabort(i32 %23), !dbg !856
  store i32 %ref_ctr_offset, ptr %ref_ctr_offset15, align 4, !dbg !856
  %call16 = call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #21, !dbg !857
  %filename = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 4, !dbg !858
  %24 = ptrtoint ptr %filename to i32, !dbg !859
  call void @__asan_store4_noabort(i32 %24), !dbg !859
  store ptr %call16, ptr %filename, align 4, !dbg !859
  %tobool18.not = icmp eq ptr %call16, null, !dbg !860
  br i1 %tobool18.not, label %if.then19, label %if.end20, !dbg !861

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20, !dbg !862
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 3), align 8, !dbg !862
  %25 = add i64 %gcov_ctr33, 1, !dbg !862
  store i64 %25, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 3), align 8, !dbg !862
  br label %error, !dbg !863

if.end20:                                         ; preds = %if.end13
  %gcov_ctr.i57 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %26 = add i64 %gcov_ctr.i57, 1
  store i64 %26, ptr @__llvm_gcov_ctr.53, align 8
  %gcov_ctr.i.i58 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %27 = add i64 %gcov_ctr.i.i58, 1
  store i64 %27, ptr @__llvm_gcov_ctr.54, align 8
  %event.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 8, i32 1, !dbg !864
  %28 = ptrtoint ptr %event.i.i to i32, !dbg !864
  call void @__asan_load4_noabort(i32 %28), !dbg !864
  %29 = load ptr, ptr %event.i.i, align 4, !dbg !864
  %funcs.i = getelementptr inbounds %struct.trace_probe_event, ptr %29, i32 0, i32 2, i32 3, i32 3, !dbg !869
  %30 = ptrtoint ptr %funcs.i to i32, !dbg !870
  call void @__asan_store4_noabort(i32 %30), !dbg !870
  store ptr @uprobe_funcs, ptr %funcs.i, align 4, !dbg !870
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %29, i32 0, i32 2, i32 1, !dbg !871
  %31 = ptrtoint ptr %class.i to i32, !dbg !871
  call void @__asan_load4_noabort(i32 %31), !dbg !871
  %32 = load ptr, ptr %class.i, align 4, !dbg !871
  %fields_array.i = getelementptr inbounds %struct.trace_event_class, ptr %32, i32 0, i32 4, !dbg !872
  %33 = ptrtoint ptr %fields_array.i to i32, !dbg !873
  call void @__asan_store4_noabort(i32 %33), !dbg !873
  store ptr @uprobe_fields_array, ptr %fields_array.i, align 4, !dbg !873
  %flags.i = getelementptr inbounds %struct.trace_probe_event, ptr %29, i32 0, i32 2, i32 8, !dbg !874
  %34 = ptrtoint ptr %flags.i to i32, !dbg !875
  call void @__asan_store4_noabort(i32 %34), !dbg !875
  store i32 130, ptr %flags.i, align 4, !dbg !875
  %35 = load ptr, ptr %class.i, align 4, !dbg !876
  %reg.i = getelementptr inbounds %struct.trace_event_class, ptr %35, i32 0, i32 3, !dbg !877
  %36 = ptrtoint ptr %reg.i to i32, !dbg !878
  call void @__asan_store4_noabort(i32 %36), !dbg !878
  store ptr @trace_uprobe_register, ptr %reg.i, align 4, !dbg !878
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %37 = add i64 %gcov_ctr.i59, 1
  store i64 %37, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 1, i32 1, !dbg !879
  %38 = ptrtoint ptr %ret_handler.i to i32, !dbg !879
  call void @__asan_load4_noabort(i32 %38), !dbg !879
  %39 = load ptr, ptr %ret_handler.i, align 4, !dbg !879
  %cmp.i60 = icmp ne ptr %39, null, !dbg !881
  %cond = zext i1 %cmp.i60 to i32, !dbg !882
  %tp = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 8, !dbg !883
  %call22 = call i32 @traceprobe_set_print_fmt(ptr noundef %tp, i32 noundef %cond) #21, !dbg !884
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22), !dbg !885
  %cmp = icmp slt i32 %call22, 0, !dbg !885
  br i1 %cmp, label %if.then23, label %if.end24, !dbg !884

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20, !dbg !886
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 4), align 16, !dbg !886
  %40 = add i64 %gcov_ctr34, 1, !dbg !886
  store i64 %40, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 4), align 16, !dbg !886
  br label %error, !dbg !887

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20, !dbg !888
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 5), align 8, !dbg !888
  %41 = add i64 %gcov_ctr35, 1, !dbg !888
  store i64 %41, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 5), align 8, !dbg !888
  %gcov_ctr.i61 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %42 = add i64 %gcov_ctr.i61, 1
  store i64 %42, ptr @__llvm_gcov_ctr.54, align 8
  %43 = ptrtoint ptr %event.i.i to i32, !dbg !889
  call void @__asan_load4_noabort(i32 %43), !dbg !889
  %44 = load ptr, ptr %event.i.i, align 4, !dbg !889
  %call.i = getelementptr inbounds %struct.trace_probe_event, ptr %44, i32 0, i32 2, !dbg !891
  br label %cleanup, !dbg !892

error:                                            ; preds = %if.then23, %if.then19
  %tobool.not.i = icmp eq ptr %call7, null, !dbg !893
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !896

if.then.i:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #20, !dbg !897
  %gcov_ctr.i62 = load i64, ptr @__llvm_gcov_ctr.55, align 8, !dbg !897
  %45 = add i64 %gcov_ctr.i62, 1, !dbg !897
  store i64 %45, ptr @__llvm_gcov_ctr.55, align 8, !dbg !897
  br label %free_trace_uprobe.exit, !dbg !897

if.end.i:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #20, !dbg !898
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !898
  %46 = add i64 %gcov_ctr1.i, 1, !dbg !898
  store i64 %46, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !898
  call void @path_put(ptr noundef %path14) #21, !dbg !899
  %tp.i = getelementptr inbounds %struct.trace_uprobe, ptr %call7, i32 0, i32 8, !dbg !900
  call void @trace_probe_cleanup(ptr noundef %tp.i) #21, !dbg !901
  %47 = ptrtoint ptr %filename to i32, !dbg !902
  call void @__asan_load4_noabort(i32 %47), !dbg !902
  %48 = load ptr, ptr %filename, align 4, !dbg !902
  call void @kfree(ptr noundef %48) #21, !dbg !903
  call void @kfree(ptr noundef nonnull %call7) #21, !dbg !904
  br label %free_trace_uprobe.exit, !dbg !905

free_trace_uprobe.exit:                           ; preds = %if.end.i, %if.then.i
  %gcov_ctr.i63 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %49 = add i64 %gcov_ctr.i63, 1
  store i64 %49, ptr @__llvm_gcov_ctr.47, align 8
  br label %cleanup, !dbg !906

cleanup:                                          ; preds = %free_trace_uprobe.exit, %if.end24, %if.then9, %if.then3, %if.then
  %retval.0 = phi ptr [ %5, %if.then ], [ %call7, %if.then9 ], [ inttoptr (i32 -12 to ptr), %free_trace_uprobe.exit ], [ %call.i, %if.end24 ], [ inttoptr (i32 -22 to ptr), %if.then3 ], !dbg !907
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #21, !dbg !908
  ret ptr %retval.0, !dbg !908
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_trace_uprobe(ptr noundef %group, ptr noundef %event, i32 noundef %nargs, i1 noundef zeroext %is_ret) unnamed_addr #0 align 64 !dbg !909 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !910
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nargs, i32 32) #21, !dbg !911
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !911
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.144, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.144, align 8
  br i1 %1, label %if.then.i, label %if.end.i, !dbg !911

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !915
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.132, align 16, !dbg !915
  %3 = add i64 %gcov_ctr.i, 1, !dbg !915
  store i64 %3, ptr @__llvm_gcov_ctr.132, align 16, !dbg !915
  br label %__ab_c_size.exit, !dbg !915

if.end.i:                                         ; preds = %entry
  %4 = extractvalue { i32, i1 } %0, 0, !dbg !911
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 76) #21, !dbg !916
  %6 = extractvalue { i32, i1 } %5, 1, !dbg !916
  %7 = add i64 %gcov_ctr.i.i, 2
  store i64 %7, ptr @__llvm_gcov_ctr.144, align 8
  br i1 %6, label %if.then14.i, label %if.end15.i, !dbg !916

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !917
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !917
  %8 = add i64 %gcov_ctr16.i, 1, !dbg !917
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !917
  br label %__ab_c_size.exit, !dbg !917

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !916
  %9 = extractvalue { i32, i1 } %5, 0, !dbg !916
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !918
  %10 = add i64 %gcov_ctr17.i, 1, !dbg !918
  store i64 %10, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !918
  br label %__ab_c_size.exit, !dbg !919

__ab_c_size.exit:                                 ; preds = %if.end15.i, %if.then14.i, %if.then.i
  %retval.0.i = phi i32 [ -1, %if.then.i ], [ -1, %if.then14.i ], [ %9, %if.end15.i ], !dbg !920
  %gcov_ctr.i26 = load i64, ptr @__llvm_gcov_ctr.131, align 8
  %11 = add i64 %gcov_ctr.i26, 1
  store i64 %11, ptr @__llvm_gcov_ctr.131, align 8
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !921
  %12 = add i64 %gcov_ctr12.i.i, 1, !dbg !921
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !921
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #26, !dbg !927
  %tobool.not = icmp eq ptr %call9.i.i, null, !dbg !928
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !929

if.then:                                          ; preds = %__ab_c_size.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !930
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.49, align 16, !dbg !930
  %13 = add i64 %gcov_ctr, 1, !dbg !930
  store i64 %13, ptr @__llvm_gcov_ctr.49, align 16, !dbg !930
  %gcov_ctr.i28 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %14 = add i64 %gcov_ctr.i28, 1
  store i64 %14, ptr @__llvm_gcov_ctr.47, align 8
  br label %cleanup, !dbg !931

if.end:                                           ; preds = %__ab_c_size.exit
  %tp = getelementptr inbounds %struct.trace_uprobe, ptr %call9.i.i, i32 0, i32 8, !dbg !932
  %call3 = tail call i32 @trace_probe_init(ptr noundef %tp, ptr noundef %event, ptr noundef %group, i1 noundef zeroext true) #21, !dbg !933
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !934
  %cmp = icmp slt i32 %call3, 0, !dbg !934
  br i1 %cmp, label %error, label %dyn_event_init.exit, !dbg !935

dyn_event_init.exit:                              ; preds = %if.end
  %gcov_ctr.i29 = load i64, ptr @__llvm_gcov_ctr.133, align 16, !dbg !936
  %15 = add i64 %gcov_ctr.i29, 1, !dbg !936
  store i64 %15, ptr @__llvm_gcov_ctr.133, align 16, !dbg !936
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !940
  %16 = add i64 %gcov_ctr3.i, 1, !dbg !940
  store i64 %16, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !940
  %gcov_ctr.i.i30 = load i64, ptr @__llvm_gcov_ctr.125, align 8, !dbg !941
  %17 = add i64 %gcov_ctr.i.i30, 1, !dbg !941
  store i64 %17, ptr @__llvm_gcov_ctr.125, align 8, !dbg !941
  %18 = ptrtoint ptr %call9.i.i to i32, !dbg !941
  call void @__asan_store4_noabort(i32 %18), !dbg !941
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128, !dbg !941
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1, !dbg !945
  %19 = ptrtoint ptr %prev.i.i to i32, !dbg !946
  call void @__asan_store4_noabort(i32 %19), !dbg !946
  store ptr %call9.i.i, ptr %prev.i.i, align 4, !dbg !946
  %ops2.i = getelementptr inbounds %struct.dyn_event, ptr %call9.i.i, i32 0, i32 1, !dbg !947
  %20 = ptrtoint ptr %ops2.i to i32, !dbg !948
  call void @__asan_store4_noabort(i32 %20), !dbg !948
  store ptr @trace_uprobe_ops, ptr %ops2.i, align 8, !dbg !948
  %consumer = getelementptr inbounds %struct.trace_uprobe, ptr %call9.i.i, i32 0, i32 1, !dbg !949
  %21 = ptrtoint ptr %consumer to i32, !dbg !950
  call void @__asan_store4_noabort(i32 %21), !dbg !950
  store ptr @uprobe_dispatcher, ptr %consumer, align 4, !dbg !950
  br i1 %is_ret, label %if.then8, label %dyn_event_init.exit.if.end10_crit_edge, !dbg !951

dyn_event_init.exit.if.end10_crit_edge:           ; preds = %dyn_event_init.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !951
  br label %if.end10, !dbg !951

if.then8:                                         ; preds = %dyn_event_init.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !952
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !952
  %22 = add i64 %gcov_ctr15, 1, !dbg !952
  store i64 %22, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !952
  %ret_handler = getelementptr inbounds %struct.trace_uprobe, ptr %call9.i.i, i32 0, i32 1, i32 1, !dbg !953
  %23 = ptrtoint ptr %ret_handler to i32, !dbg !954
  call void @__asan_store4_noabort(i32 %23), !dbg !954
  store ptr @uretprobe_dispatcher, ptr %ret_handler, align 16, !dbg !954
  br label %if.end10, !dbg !952

if.end10:                                         ; preds = %if.then8, %dyn_event_init.exit.if.end10_crit_edge
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !955
  %24 = add i64 %gcov_ctr16, 1, !dbg !955
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !955
  %event12 = getelementptr inbounds %struct.trace_uprobe, ptr %call9.i.i, i32 0, i32 8, i32 1, !dbg !956
  %25 = ptrtoint ptr %event12 to i32, !dbg !956
  call void @__asan_load4_noabort(i32 %25), !dbg !956
  %26 = load ptr, ptr %event12, align 64, !dbg !956
  %filter = getelementptr inbounds %struct.trace_probe_event, ptr %26, i32 0, i32 5, !dbg !957
  %gcov_ctr.i32 = load i64, ptr @__llvm_gcov_ctr.136, align 8
  %27 = add i64 %gcov_ctr.i32, 1
  store i64 %27, ptr @__llvm_gcov_ctr.136, align 8
  tail call void @__rwlock_init(ptr noundef %filter, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_trace_uprobe_filter.__key) #21, !dbg !958
  %nr_systemwide.i = getelementptr inbounds %struct.trace_probe_event, ptr %26, i32 1, i32 2, i32 0, i32 1, !dbg !961
  %28 = ptrtoint ptr %nr_systemwide.i to i32, !dbg !962
  call void @__asan_store4_noabort(i32 %28), !dbg !962
  store i32 0, ptr %nr_systemwide.i, align 4, !dbg !962
  %perf_events.i = getelementptr inbounds %struct.trace_probe_event, ptr %26, i32 1, i32 2, i32 1, !dbg !963
  %gcov_ctr.i.i33 = load i64, ptr @__llvm_gcov_ctr.125, align 8, !dbg !964
  %29 = add i64 %gcov_ctr.i.i33, 1, !dbg !964
  store i64 %29, ptr @__llvm_gcov_ctr.125, align 8, !dbg !964
  %30 = ptrtoint ptr %perf_events.i to i32, !dbg !964
  call void @__asan_store4_noabort(i32 %30), !dbg !964
  store volatile ptr %perf_events.i, ptr %perf_events.i, align 4, !dbg !964
  %prev.i.i34 = getelementptr inbounds %struct.trace_probe_event, ptr %26, i32 1, i32 2, i32 2, !dbg !966
  %31 = ptrtoint ptr %prev.i.i34 to i32, !dbg !967
  call void @__asan_store4_noabort(i32 %31), !dbg !967
  store ptr %perf_events.i, ptr %prev.i.i34, align 4, !dbg !967
  br label %cleanup, !dbg !968

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !969
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !969
  %32 = add i64 %gcov_ctr17, 1, !dbg !969
  store i64 %32, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !969
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #21, !dbg !970
  %gcov_ctr.i35 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %33 = add i64 %gcov_ctr.i35, 1
  store i64 %33, ptr @__llvm_gcov_ctr.47, align 8
  %34 = inttoptr i32 %call3 to ptr, !dbg !971
  br label %cleanup, !dbg !973

cleanup:                                          ; preds = %error, %if.end10, %if.then
  %retval.0 = phi ptr [ %34, %error ], [ %call9.i.i, %if.end10 ], [ inttoptr (i32 -12 to ptr), %if.then ], !dbg !974
  ret ptr %retval.0, !dbg !975
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_set_print_fmt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_trace_uprobe(ptr noundef %tu) unnamed_addr #0 align 64 !dbg !894 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !976
  %tobool.not = icmp eq ptr %tu, null, !dbg !977
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !978

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !979
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.55, align 8, !dbg !979
  %0 = add i64 %gcov_ctr, 1, !dbg !979
  store i64 %0, ptr @__llvm_gcov_ctr.55, align 8, !dbg !979
  br label %return, !dbg !979

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !980
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !980
  %1 = add i64 %gcov_ctr1, 1, !dbg !980
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !980
  %path = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 2, !dbg !981
  tail call void @path_put(ptr noundef %path) #21, !dbg !982
  %tp = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 8, !dbg !983
  tail call void @trace_probe_cleanup(ptr noundef %tp) #21, !dbg !984
  %filename = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 4, !dbg !985
  %2 = ptrtoint ptr %filename to i32, !dbg !985
  call void @__asan_load4_noabort(i32 %2), !dbg !985
  %3 = load ptr, ptr %filename, align 4, !dbg !985
  tail call void @kfree(ptr noundef %3) #21, !dbg !986
  tail call void @kfree(ptr noundef nonnull %tu) #21, !dbg !987
  br label %return, !dbg !988

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !988
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @destroy_local_trace_uprobe(ptr nocapture noundef readonly %event_call) local_unnamed_addr #0 align 64 !dbg !989 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !990
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.56, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i.i = getelementptr i8, ptr %event_call, i32 84, !dbg !991
  %3 = ptrtoint ptr %probes.i.i to i32, !dbg !991
  call void @__asan_load4_noabort(i32 %3), !dbg !991
  %4 = load ptr, ptr %probes.i.i, align 4, !dbg !991
  %tobool.not.i = icmp eq ptr %4, null, !dbg !994
  br i1 %tobool.not.i, label %land.rhs.i, label %trace_uprobe_primary_from_call.exit, !dbg !994

land.rhs.i:                                       ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.44, align 16, !dbg !994
  %5 = add i64 %gcov_ctr.i, 1, !dbg !994
  store i64 %5, ptr @__llvm_gcov_ctr.44, align 16, !dbg !994
  %.b49.i = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !994
  br i1 %.b49.i, label %land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge, label %if.then.i, !dbg !994, !prof !194

land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !994
  br label %trace_uprobe_primary_from_call.exit.thread, !dbg !994

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !994
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !994
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 326, i32 noundef 9, ptr noundef null) #21, !dbg !994
  %gcov_ctr42.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !994
  %6 = add i64 %gcov_ctr42.i, 1, !dbg !994
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !994
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !994
  %7 = add i64 %gcov_ctr43.i, 1, !dbg !994
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !994
  br label %trace_uprobe_primary_from_call.exit.thread, !dbg !994

trace_uprobe_primary_from_call.exit.thread:       ; preds = %if.then.i, %land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !995
  %8 = add i64 %gcov_ctr45.i, 1, !dbg !995
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !995
  br label %if.then.i3, !dbg !996

trace_uprobe_primary_from_call.exit:              ; preds = %entry
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !998
  %9 = add i64 %gcov_ctr44.i, 1, !dbg !998
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !998
  %add.ptr.i = getelementptr i8, ptr %4, i32 -56, !dbg !998
  %tobool.not.i1 = icmp eq ptr %add.ptr.i, null, !dbg !999
  br i1 %tobool.not.i1, label %trace_uprobe_primary_from_call.exit.if.then.i3_crit_edge, label %if.end.i, !dbg !996

trace_uprobe_primary_from_call.exit.if.then.i3_crit_edge: ; preds = %trace_uprobe_primary_from_call.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !996
  br label %if.then.i3, !dbg !996

if.then.i3:                                       ; preds = %trace_uprobe_primary_from_call.exit.if.then.i3_crit_edge, %trace_uprobe_primary_from_call.exit.thread
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.55, align 8, !dbg !1000
  %10 = add i64 %gcov_ctr.i2, 1, !dbg !1000
  store i64 %10, ptr @__llvm_gcov_ctr.55, align 8, !dbg !1000
  br label %free_trace_uprobe.exit, !dbg !1000

if.end.i:                                         ; preds = %trace_uprobe_primary_from_call.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1001
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !1001
  %11 = add i64 %gcov_ctr1.i, 1, !dbg !1001
  store i64 %11, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !1001
  %path.i = getelementptr i8, ptr %4, i32 -28, !dbg !1002
  tail call void @path_put(ptr noundef %path.i) #21, !dbg !1003
  tail call void @trace_probe_cleanup(ptr noundef nonnull %4) #21, !dbg !1004
  %filename.i = getelementptr i8, ptr %4, i32 -16, !dbg !1005
  %12 = ptrtoint ptr %filename.i to i32, !dbg !1005
  call void @__asan_load4_noabort(i32 %12), !dbg !1005
  %13 = load ptr, ptr %filename.i, align 4, !dbg !1005
  tail call void @kfree(ptr noundef %13) #21, !dbg !1006
  tail call void @kfree(ptr noundef nonnull %add.ptr.i) #21, !dbg !1007
  br label %free_trace_uprobe.exit, !dbg !1008

free_trace_uprobe.exit:                           ; preds = %if.end.i, %if.then.i3
  ret void, !dbg !1009
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_uprobe_trace() #5 section ".init.text" align 64 !dbg !1010 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1011
  %call = tail call i32 @dyn_event_register(ptr noundef nonnull @trace_uprobe_ops) #21, !dbg !1012
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1013
  %tobool.not = icmp eq i32 %call, 0, !dbg !1013
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1013

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1014
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.57, align 16, !dbg !1014
  %0 = add i64 %gcov_ctr, 1, !dbg !1014
  store i64 %0, ptr @__llvm_gcov_ctr.57, align 16, !dbg !1014
  br label %cleanup, !dbg !1015

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tracing_init_dentry() #21, !dbg !1016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !1017
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !1017
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !1017

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1018
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 2), align 16, !dbg !1018
  %1 = add i64 %gcov_ctr8, 1, !dbg !1018
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 2), align 16, !dbg !1018
  br label %cleanup, !dbg !1018

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1019
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !1019
  %2 = add i64 %gcov_ctr7, 1, !dbg !1019
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !1019
  %call5 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 416, ptr noundef null, ptr noundef null, ptr noundef nonnull @uprobe_events_ops) #21, !dbg !1019
  %call6 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @uprobe_profile_ops) #21, !dbg !1020
  br label %cleanup, !dbg !1021

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  ret i32 %call, !dbg !1022
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_uprobe_create(ptr noundef %raw_command) #0 align 64 !dbg !1023 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1024
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.92, align 8
  %call = tail call i32 @trace_probe_create(ptr noundef %raw_command, ptr noundef nonnull @__trace_uprobe_create) #21, !dbg !1025
  ret i32 %call, !dbg !1026
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_uprobe_show(ptr noundef %m, ptr nocapture noundef readonly %ev) #0 align 64 !dbg !1027 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1028
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.89, align 8
  %gcov_ctr.i30 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %1 = add i64 %gcov_ctr.i30, 1
  store i64 %1, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 1, i32 1, !dbg !1029
  %2 = ptrtoint ptr %ret_handler.i to i32, !dbg !1029
  call void @__asan_load4_noabort(i32 %2), !dbg !1029
  %3 = load ptr, ptr %ret_handler.i, align 4, !dbg !1029
  %cmp.i.not = icmp eq ptr %3, null, !dbg !1031
  %conv2 = select i1 %cmp.i.not, i32 112, i32 114, !dbg !1032
  %gcov_ctr.i31 = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %4 = add i64 %gcov_ctr.i31, 1
  store i64 %4, ptr @__llvm_gcov_ctr.91, align 8
  %event.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 8, i32 1, !dbg !1033
  %5 = ptrtoint ptr %event.i to i32, !dbg !1033
  call void @__asan_load4_noabort(i32 %5), !dbg !1033
  %6 = load ptr, ptr %event.i, align 4, !dbg !1033
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %6, i32 0, i32 2, i32 1, !dbg !1035
  %7 = ptrtoint ptr %class.i to i32, !dbg !1035
  call void @__asan_load4_noabort(i32 %7), !dbg !1035
  %8 = load ptr, ptr %class.i, align 4, !dbg !1035
  %9 = ptrtoint ptr %8 to i32, !dbg !1036
  call void @__asan_load4_noabort(i32 %9), !dbg !1036
  %10 = load ptr, ptr %8, align 4, !dbg !1036
  %gcov_ctr.i32 = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %11 = add i64 %gcov_ctr.i32, 1
  store i64 %11, ptr @__llvm_gcov_ctr.90, align 8
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %6, i32 0, i32 2, i32 8, !dbg !1037
  %12 = ptrtoint ptr %flags.i.i to i32, !dbg !1037
  call void @__asan_load4_noabort(i32 %12), !dbg !1037
  %13 = load i32, ptr %flags.i.i, align 4, !dbg !1037
  %and.i.i = and i32 %13, 16, !dbg !1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1040
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1040
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !1041

if.then.i.i:                                      ; preds = %entry
  %14 = getelementptr inbounds %struct.trace_probe_event, ptr %6, i32 0, i32 2, i32 2, !dbg !1042
  %15 = ptrtoint ptr %14 to i32, !dbg !1042
  call void @__asan_load4_noabort(i32 %15), !dbg !1042
  %16 = load ptr, ptr %14, align 4, !dbg !1042
  %tobool1.not.i.i = icmp eq ptr %16, null, !dbg !1043
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !1043

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1044
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1044
  %17 = add i64 %gcov_ctr2.i.i, 1, !dbg !1044
  store i64 %17, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1044
  %18 = ptrtoint ptr %16 to i32, !dbg !1045
  call void @__asan_load4_noabort(i32 %18), !dbg !1045
  %19 = load ptr, ptr %16, align 4, !dbg !1045
  br label %trace_probe_name.exit, !dbg !1043

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1043
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1043
  %20 = add i64 %gcov_ctr.i.i, 1, !dbg !1043
  store i64 %20, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1043
  br label %trace_probe_name.exit, !dbg !1043

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1046
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1046
  %21 = add i64 %gcov_ctr3.i.i, 1, !dbg !1046
  store i64 %21, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1046
  %22 = getelementptr inbounds %struct.trace_probe_event, ptr %6, i32 0, i32 2, i32 2, !dbg !1047
  %23 = ptrtoint ptr %22 to i32, !dbg !1047
  call void @__asan_load4_noabort(i32 %23), !dbg !1047
  %24 = load ptr, ptr %22, align 4, !dbg !1047
  br label %trace_probe_name.exit, !dbg !1048

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %24, %if.else.i.i ], [ %19, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !1049
  %filename = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 4, !dbg !1050
  %25 = ptrtoint ptr %filename to i32, !dbg !1050
  call void @__asan_load4_noabort(i32 %25), !dbg !1050
  %26 = load ptr, ptr %filename, align 4, !dbg !1050
  %offset = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 5, !dbg !1051
  %27 = ptrtoint ptr %offset to i32, !dbg !1051
  call void @__asan_load4_noabort(i32 %27), !dbg !1051
  %28 = load i32, ptr %offset, align 4, !dbg !1051
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %conv2, ptr noundef %10, ptr noundef %retval.0.i.i, ptr noundef %26, i32 noundef 8, i32 noundef %28) #21, !dbg !1052
  %ref_ctr_offset = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 6, !dbg !1053
  %29 = ptrtoint ptr %ref_ctr_offset to i32, !dbg !1053
  call void @__asan_load4_noabort(i32 %29), !dbg !1053
  %30 = load i32, ptr %ref_ctr_offset, align 4, !dbg !1053
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30), !dbg !1054
  %tobool.not = icmp eq i32 %30, 0, !dbg !1054
  br i1 %tobool.not, label %trace_probe_name.exit.if.end_crit_edge, label %if.then, !dbg !1054

trace_probe_name.exit.if.end_crit_edge:           ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1054
  br label %if.end, !dbg !1054

if.then:                                          ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1055
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.93, align 16, !dbg !1055
  %31 = add i64 %gcov_ctr, 1, !dbg !1055
  store i64 %31, ptr @__llvm_gcov_ctr.93, align 16, !dbg !1055
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %30) #21, !dbg !1056
  br label %if.end, !dbg !1056

if.end:                                           ; preds = %if.then, %trace_probe_name.exit.if.end_crit_edge
  %nr_args = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %nr_args to i32, !dbg !1057
  call void @__asan_load4_noabort(i32 %32), !dbg !1057
  %33 = load i32, ptr %nr_args, align 4, !dbg !1057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33), !dbg !1058
  %cmp34.not = icmp eq i32 %33, 0, !dbg !1058
  br i1 %cmp34.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph, !dbg !1059

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1059
  br label %for.end, !dbg !1059

for.body.lr.ph:                                   ; preds = %if.end
  %args = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 1
  br label %for.body, !dbg !1059

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.probe_arg], ptr %args, i32 0, i32 %i.035, !dbg !1060
  %name = getelementptr inbounds %struct.probe_arg, ptr %arrayidx, i32 0, i32 4, !dbg !1061
  %34 = ptrtoint ptr %name to i32, !dbg !1061
  call void @__asan_load4_noabort(i32 %34), !dbg !1061
  %35 = load ptr, ptr %name, align 4, !dbg !1061
  %comm = getelementptr inbounds %struct.probe_arg, ptr %arrayidx, i32 0, i32 5, !dbg !1062
  %36 = ptrtoint ptr %comm to i32, !dbg !1062
  call void @__asan_load4_noabort(i32 %36), !dbg !1062
  %37 = load ptr, ptr %comm, align 4, !dbg !1062
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef %35, ptr noundef %37) #21, !dbg !1063
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !1064
  %38 = add i64 %gcov_ctr14, 1, !dbg !1064
  store i64 %38, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 2), align 16, !dbg !1064
  %inc = add nuw i32 %i.035, 1, !dbg !1064
  %39 = ptrtoint ptr %nr_args to i32, !dbg !1057
  call void @__asan_load4_noabort(i32 %39), !dbg !1057
  %40 = load i32, ptr %nr_args, align 4, !dbg !1057
  %cmp = icmp ult i32 %inc, %40, !dbg !1058
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !dbg !1059, !llvm.loop !1065

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1059
  br label %for.end, !dbg !1059

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1059
  br label %for.body, !dbg !1059

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !1067
  %41 = add i64 %gcov_ctr13, 1, !dbg !1067
  store i64 %41, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !1067
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #21, !dbg !1068
  ret i32 0, !dbg !1069
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @trace_uprobe_is_busy(ptr nocapture noundef readonly %ev) #9 align 64 !dbg !1070 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1071
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.94, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.89, align 8
  %gcov_ctr.i2 = load i64, ptr @__llvm_gcov_ctr.113, align 8
  %2 = add i64 %gcov_ctr.i2, 1
  store i64 %2, ptr @__llvm_gcov_ctr.113, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.114, align 8
  %event.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 8, i32 1, !dbg !1072
  %4 = ptrtoint ptr %event.i.i to i32, !dbg !1072
  call void @__asan_load4_noabort(i32 %4), !dbg !1072
  %5 = load ptr, ptr %event.i.i, align 4, !dbg !1072
  %6 = ptrtoint ptr %5 to i32, !dbg !1077
  call void @__asan_load4_noabort(i32 %6), !dbg !1077
  %7 = load i32, ptr %5, align 4, !dbg !1077
  %and.i.i = and i32 %7, 3, !dbg !1078
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1079
  %tobool.i.i = icmp ne i32 %and.i.i, 0, !dbg !1079
  ret i1 %tobool.i.i, !dbg !1080
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_uprobe_release(ptr noundef %ev) #0 align 64 !dbg !1081 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1082
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.95, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.89, align 8
  %tp.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 8, !dbg !1083
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.116, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.116, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.119, align 8
  %event.i.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 8, i32 1, !dbg !1086
  %4 = ptrtoint ptr %event.i.i.i to i32, !dbg !1086
  call void @__asan_load4_noabort(i32 %4), !dbg !1086
  %5 = load ptr, ptr %event.i.i.i, align 4, !dbg !1086
  %probes.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 4, !dbg !1091
  %gcov_ctr.i6.i.i = load i64, ptr @__llvm_gcov_ctr.120, align 8
  %6 = add i64 %gcov_ctr.i6.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.120, align 8
  %7 = ptrtoint ptr %probes.i.i.i to i32, !dbg !1092
  call void @__asan_load4_noabort(i32 %7), !dbg !1092
  %8 = load volatile ptr, ptr %probes.i.i.i, align 4, !dbg !1092
  %cmp.i.not.i.i = icmp eq ptr %8, %probes.i.i.i, !dbg !1095
  br i1 %cmp.i.not.i.i, label %entry.if.end.i_crit_edge, label %land.rhs.i.i, !dbg !1096

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1096
  br label %if.end.i, !dbg !1096

land.rhs.i.i:                                     ; preds = %entry
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 1), align 8, !dbg !1097
  %9 = add i64 %gcov_ctr4.i.i, 1, !dbg !1097
  store i64 %9, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 1), align 8, !dbg !1097
  %gcov_ctr.i7.i.i = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %10 = add i64 %gcov_ctr.i7.i.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.121, align 8
  %11 = add i64 %gcov_ctr.i6.i.i, 2
  store i64 %11, ptr @__llvm_gcov_ctr.120, align 8
  %12 = ptrtoint ptr %probes.i.i.i to i32, !dbg !1098
  call void @__asan_load4_noabort(i32 %12), !dbg !1098
  %13 = load volatile ptr, ptr %probes.i.i.i, align 4, !dbg !1098
  %cmp.i.not.i.i.i = icmp eq ptr %13, %probes.i.i.i, !dbg !1102
  br i1 %cmp.i.not.i.i.i, label %land.rhs.i.i.unreg.i_crit_edge, label %trace_probe_has_sibling.exit.i, !dbg !1103

land.rhs.i.i.unreg.i_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1103
  br label %unreg.i, !dbg !1103

trace_probe_has_sibling.exit.i:                   ; preds = %land.rhs.i.i
  %gcov_ctr1.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 1), align 8, !dbg !1104
  %14 = add i64 %gcov_ctr1.i.i.i, 1, !dbg !1104
  store i64 %14, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 1), align 8, !dbg !1104
  %prev.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 4, i32 1, !dbg !1105
  %15 = ptrtoint ptr %prev.i.i.i to i32, !dbg !1105
  call void @__asan_load4_noabort(i32 %15), !dbg !1105
  %16 = load ptr, ptr %prev.i.i.i, align 4, !dbg !1105
  %cmp.i8.i.not.i = icmp eq ptr %13, %16, !dbg !1106
  br i1 %cmp.i8.i.not.i, label %trace_probe_has_sibling.exit.i.if.end.i_crit_edge, label %trace_probe_has_sibling.exit.i.unreg.i_crit_edge, !dbg !1107

trace_probe_has_sibling.exit.i.unreg.i_crit_edge: ; preds = %trace_probe_has_sibling.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1107
  br label %unreg.i, !dbg !1107

trace_probe_has_sibling.exit.i.if.end.i_crit_edge: ; preds = %trace_probe_has_sibling.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1107
  br label %if.end.i, !dbg !1107

if.end.i:                                         ; preds = %trace_probe_has_sibling.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %gcov_ctr.i19.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %17 = add i64 %gcov_ctr.i19.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.54, align 8
  %call.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 2, !dbg !1108
  %call3.i = tail call zeroext i1 @trace_event_dyn_busy(ptr noundef %call.i.i) #21, !dbg !1110
  br i1 %call3.i, label %if.then4.i, label %if.end5.i, !dbg !1110

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1111
  %gcov_ctr10.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 1), align 8, !dbg !1111
  %18 = add i64 %gcov_ctr10.i, 1, !dbg !1111
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 1), align 8, !dbg !1111
  br label %unregister_trace_uprobe.exit, !dbg !1111

if.end5.i:                                        ; preds = %if.end.i
  %gcov_ctr.i20.i = load i64, ptr @__llvm_gcov_ctr.117, align 8
  %19 = add i64 %gcov_ctr.i20.i, 1
  store i64 %19, ptr @__llvm_gcov_ctr.117, align 8
  %gcov_ctr.i.i21.i = load i64, ptr @__llvm_gcov_ctr.122, align 8
  %20 = add i64 %gcov_ctr.i.i21.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.122, align 8
  %21 = ptrtoint ptr %event.i.i.i to i32, !dbg !1112
  call void @__asan_load4_noabort(i32 %21), !dbg !1112
  %22 = load ptr, ptr %event.i.i.i, align 4, !dbg !1112
  %call.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %22, i32 0, i32 2, !dbg !1117
  %call1.i.i.i = tail call i32 @trace_remove_event_call(ptr noundef %call.i.i.i) #21, !dbg !1118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i), !dbg !1119
  %tobool.not.i = icmp eq i32 %call1.i.i.i, 0, !dbg !1119
  br i1 %tobool.not.i, label %if.end5.i.unreg.i_crit_edge, label %if.then7.i, !dbg !1119

if.end5.i.unreg.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1119
  br label %unreg.i, !dbg !1119

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1120
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 3), align 8, !dbg !1120
  %23 = add i64 %gcov_ctr12.i, 1, !dbg !1120
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 3), align 8, !dbg !1120
  br label %unregister_trace_uprobe.exit, !dbg !1121

unreg.i:                                          ; preds = %if.end5.i.unreg.i_crit_edge, %trace_probe_has_sibling.exit.i.unreg.i_crit_edge, %land.rhs.i.i.unreg.i_crit_edge
  %.sink.i = phi ptr [ @__llvm_gcov_ctr.115, %land.rhs.i.i.unreg.i_crit_edge ], [ @__llvm_gcov_ctr.115, %trace_probe_has_sibling.exit.i.unreg.i_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.115, i32 0, i32 2), %if.end5.i.unreg.i_crit_edge ]
  %24 = ptrtoint ptr %.sink.i to i32, !dbg !1122
  call void @__asan_load8_noabort(i32 %24), !dbg !1122
  %gcov_ctr11.i = load i64, ptr %.sink.i, align 16, !dbg !1122
  %25 = add i64 %gcov_ctr11.i, 1, !dbg !1122
  store i64 %25, ptr %.sink.i, align 16, !dbg !1122
  %gcov_ctr.i23.i = load i64, ptr @__llvm_gcov_ctr.118, align 16
  %26 = add i64 %gcov_ctr.i23.i, 1
  store i64 %26, ptr @__llvm_gcov_ctr.118, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1123
  %27 = load i32, ptr @debug_locks, align 4, !dbg !1123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27), !dbg !1123
  %tobool.not.i.i = icmp eq i32 %27, 0, !dbg !1123
  br i1 %tobool.not.i.i, label %unreg.i.if.end.i.i_crit_edge, label %land.rhs.i26.i, !dbg !1123

unreg.i.if.end.i.i_crit_edge:                     ; preds = %unreg.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1123
  br label %if.end.i.i, !dbg !1123

land.rhs.i26.i:                                   ; preds = %unreg.i
  %gcov_ctr24.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !1123
  %28 = add i64 %gcov_ctr24.i.i, 1, !dbg !1123
  store i64 %28, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !1123
  %gcov_ctr.i.i24.i = load i64, ptr @__llvm_gcov_ctr.110, align 8
  %29 = add i64 %gcov_ctr.i.i24.i, 1
  store i64 %29, ptr @__llvm_gcov_ctr.110, align 8
  %call.i.i25.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #21, !dbg !1126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i), !dbg !1123
  %cmp.not.i.i = icmp eq i32 %call.i.i25.i, 0, !dbg !1123
  br i1 %cmp.not.i.i, label %if.then.i.i, label %land.rhs.i26.i.if.end.i.i_crit_edge, !dbg !1123, !prof !154

land.rhs.i26.i.if.end.i.i_crit_edge:              ; preds = %land.rhs.i26.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1123
  br label %if.end.i.i, !dbg !1123

if.then.i.i:                                      ; preds = %land.rhs.i26.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1123
  %gcov_ctr25.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !1123
  %30 = add i64 %gcov_ctr25.i.i, 1, !dbg !1123
  store i64 %30, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !1123
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 94, i32 noundef 9, ptr noundef null) #21, !dbg !1123
  br label %if.end.i.i, !dbg !1123

if.end.i.i:                                       ; preds = %if.then.i.i, %land.rhs.i26.i.if.end.i.i_crit_edge, %unreg.i.if.end.i.i_crit_edge
  %gcov_ctr.i27.i.i = load i64, ptr @__llvm_gcov_ctr.123, align 8
  %31 = add i64 %gcov_ctr.i27.i.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.123, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ev) #21, !dbg !1130
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !dbg !1135

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1136
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.124, align 8, !dbg !1136
  %32 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1136
  store i64 %32, ptr @__llvm_gcov_ctr.124, align 8, !dbg !1136
  br label %dyn_event_remove.exit.i, !dbg !1136

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1137
  %gcov_ctr2.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !1137
  %33 = add i64 %gcov_ctr2.i.i.i.i, 1, !dbg !1137
  store i64 %33, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !1137
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ev, i32 0, i32 1, !dbg !1138
  %34 = ptrtoint ptr %prev.i.i.i.i to i32, !dbg !1138
  call void @__asan_load4_noabort(i32 %34), !dbg !1138
  %35 = load ptr, ptr %prev.i.i.i.i, align 4, !dbg !1138
  %36 = ptrtoint ptr %ev to i32, !dbg !1139
  call void @__asan_load4_noabort(i32 %36), !dbg !1139
  %37 = load ptr, ptr %ev, align 4, !dbg !1139
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1, !dbg !1140
  %38 = ptrtoint ptr %prev1.i.i.i.i.i to i32, !dbg !1143
  call void @__asan_store4_noabort(i32 %38), !dbg !1143
  store ptr %35, ptr %prev1.i.i.i.i.i, align 4, !dbg !1143
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.126, align 8, !dbg !1144
  %39 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1144
  store i64 %39, ptr @__llvm_gcov_ctr.126, align 8, !dbg !1144
  %40 = ptrtoint ptr %35 to i32, !dbg !1144
  call void @__asan_store4_noabort(i32 %40), !dbg !1144
  store volatile ptr %37, ptr %35, align 4, !dbg !1144
  br label %dyn_event_remove.exit.i, !dbg !1145

dyn_event_remove.exit.i:                          ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %gcov_ctr.i3.i.i.i = load i64, ptr @__llvm_gcov_ctr.125, align 8, !dbg !1146
  %41 = add i64 %gcov_ctr.i3.i.i.i, 1, !dbg !1146
  store i64 %41, ptr @__llvm_gcov_ctr.125, align 8, !dbg !1146
  %42 = ptrtoint ptr %ev to i32, !dbg !1146
  call void @__asan_store4_noabort(i32 %42), !dbg !1146
  store volatile ptr %ev, ptr %ev, align 4, !dbg !1146
  %prev.i4.i.i.i = getelementptr inbounds %struct.list_head, ptr %ev, i32 0, i32 1, !dbg !1148
  %43 = ptrtoint ptr %prev.i4.i.i.i to i32, !dbg !1149
  call void @__asan_store4_noabort(i32 %43), !dbg !1149
  store ptr %ev, ptr %prev.i4.i.i.i, align 4, !dbg !1149
  tail call void @trace_probe_unlink(ptr noundef %tp.i) #21, !dbg !1150
  %tobool.not.i27.i = icmp eq ptr %ev, null, !dbg !1151
  br i1 %tobool.not.i27.i, label %if.then.i29.i, label %if.end.i30.i, !dbg !1153

if.then.i29.i:                                    ; preds = %dyn_event_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1154
  %gcov_ctr.i28.i = load i64, ptr @__llvm_gcov_ctr.55, align 8, !dbg !1154
  %44 = add i64 %gcov_ctr.i28.i, 1, !dbg !1154
  store i64 %44, ptr @__llvm_gcov_ctr.55, align 8, !dbg !1154
  br label %unregister_trace_uprobe.exit, !dbg !1154

if.end.i30.i:                                     ; preds = %dyn_event_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1155
  %gcov_ctr1.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !1155
  %45 = add i64 %gcov_ctr1.i.i, 1, !dbg !1155
  store i64 %45, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.55, i32 0, i32 1), align 8, !dbg !1155
  %path.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 2, !dbg !1156
  tail call void @path_put(ptr noundef %path.i.i) #21, !dbg !1157
  tail call void @trace_probe_cleanup(ptr noundef %tp.i) #21, !dbg !1158
  %filename.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 4, !dbg !1159
  %46 = ptrtoint ptr %filename.i.i to i32, !dbg !1159
  call void @__asan_load4_noabort(i32 %46), !dbg !1159
  %47 = load ptr, ptr %filename.i.i, align 4, !dbg !1159
  tail call void @kfree(ptr noundef %47) #21, !dbg !1160
  tail call void @kfree(ptr noundef nonnull %ev) #21, !dbg !1161
  br label %unregister_trace_uprobe.exit, !dbg !1162

unregister_trace_uprobe.exit:                     ; preds = %if.end.i30.i, %if.then.i29.i, %if.then7.i, %if.then4.i
  %retval.0.i = phi i32 [ -16, %if.then4.i ], [ %call1.i.i.i, %if.then7.i ], [ 0, %if.then.i29.i ], [ 0, %if.end.i30.i ], !dbg !1122
  ret i32 %retval.0.i, !dbg !1163
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @trace_uprobe_match(ptr noundef readonly %system, ptr nocapture noundef readonly %event, i32 noundef %argc, ptr noundef %argv, ptr noundef %ev) #0 align 64 !dbg !1164 {
entry:
  %buf.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1165
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.96, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.96, align 16
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.89, align 8
  %tp = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 8, !dbg !1166
  %gcov_ctr.i14 = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %2 = add i64 %gcov_ctr.i14, 1
  store i64 %2, ptr @__llvm_gcov_ctr.90, align 8
  %event.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 8, i32 1, !dbg !1167
  %3 = ptrtoint ptr %event.i to i32, !dbg !1167
  call void @__asan_load4_noabort(i32 %3), !dbg !1167
  %4 = load ptr, ptr %event.i, align 4, !dbg !1167
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2, i32 8, !dbg !1169
  %5 = ptrtoint ptr %flags.i.i to i32, !dbg !1169
  call void @__asan_load4_noabort(i32 %5), !dbg !1169
  %6 = load i32, ptr %flags.i.i, align 4, !dbg !1169
  %and.i.i = and i32 %6, 16, !dbg !1171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1171
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1171
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !1172

if.then.i.i:                                      ; preds = %entry
  %7 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2, i32 2, !dbg !1173
  %8 = ptrtoint ptr %7 to i32, !dbg !1173
  call void @__asan_load4_noabort(i32 %8), !dbg !1173
  %9 = load ptr, ptr %7, align 4, !dbg !1173
  %tobool1.not.i.i = icmp eq ptr %9, null, !dbg !1174
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !1174

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1175
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1175
  %10 = add i64 %gcov_ctr2.i.i, 1, !dbg !1175
  store i64 %10, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1175
  %11 = ptrtoint ptr %9 to i32, !dbg !1176
  call void @__asan_load4_noabort(i32 %11), !dbg !1176
  %12 = load ptr, ptr %9, align 4, !dbg !1176
  br label %trace_probe_name.exit, !dbg !1174

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1174
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1174
  %13 = add i64 %gcov_ctr.i.i, 1, !dbg !1174
  store i64 %13, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1174
  br label %trace_probe_name.exit, !dbg !1174

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1177
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1177
  %14 = add i64 %gcov_ctr3.i.i, 1, !dbg !1177
  store i64 %14, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1177
  %15 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2, i32 2, !dbg !1178
  %16 = ptrtoint ptr %15 to i32, !dbg !1178
  call void @__asan_load4_noabort(i32 %16), !dbg !1178
  %17 = load ptr, ptr %15, align 4, !dbg !1178
  br label %trace_probe_name.exit, !dbg !1179

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %17, %if.else.i.i ], [ %12, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !1180
  %call2 = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef %event) #24, !dbg !1181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1182
  %cmp = icmp eq i32 %call2, 0, !dbg !1182
  br i1 %cmp, label %land.lhs.true, label %trace_probe_name.exit.land.end_crit_edge, !dbg !1183

trace_probe_name.exit.land.end_crit_edge:         ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1183
  br label %land.end, !dbg !1183

land.lhs.true:                                    ; preds = %trace_probe_name.exit
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 1), align 8, !dbg !1184
  %18 = add i64 %gcov_ctr8, 1, !dbg !1184
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 1), align 8, !dbg !1184
  %tobool.not = icmp eq ptr %system, null, !dbg !1184
  br i1 %tobool.not, label %land.lhs.true.land.rhs_crit_edge, label %lor.lhs.false, !dbg !1185

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1185
  br label %land.rhs, !dbg !1185

lor.lhs.false:                                    ; preds = %land.lhs.true
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 2), align 16, !dbg !1186
  %19 = add i64 %gcov_ctr9, 1, !dbg !1186
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 2), align 16, !dbg !1186
  %gcov_ctr.i15 = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %20 = add i64 %gcov_ctr.i15, 1
  store i64 %20, ptr @__llvm_gcov_ctr.91, align 8
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2, i32 1, !dbg !1187
  %21 = ptrtoint ptr %class.i to i32, !dbg !1187
  call void @__asan_load4_noabort(i32 %21), !dbg !1187
  %22 = load ptr, ptr %class.i, align 4, !dbg !1187
  %23 = ptrtoint ptr %22 to i32, !dbg !1189
  call void @__asan_load4_noabort(i32 %23), !dbg !1189
  %24 = load ptr, ptr %22, align 4, !dbg !1189
  %call5 = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull %system) #24, !dbg !1190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !1191
  %cmp6 = icmp eq i32 %call5, 0, !dbg !1191
  br i1 %cmp6, label %lor.lhs.false.land.rhs_crit_edge, label %lor.lhs.false.land.end_crit_edge, !dbg !1192

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1192
  br label %land.end, !dbg !1192

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1192
  br label %land.rhs, !dbg !1192

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %land.lhs.true.land.rhs_crit_edge
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 3), align 8, !dbg !1193
  %25 = add i64 %gcov_ctr10, 1, !dbg !1193
  store i64 %25, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 3), align 8, !dbg !1193
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #21, !dbg !1194
  %26 = call ptr @memset(ptr %buf.i, i32 255, i32 64), !dbg !1197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc), !dbg !1198
  %tobool.not.i = icmp eq i32 %argc, 0, !dbg !1198
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !1199

if.then.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1200
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 1), align 8, !dbg !1200
  %27 = add i64 %gcov_ctr27.i, 1, !dbg !1200
  store i64 %27, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 1), align 8, !dbg !1200
  br label %trace_uprobe_match_command_head.exit, !dbg !1200

if.end.i:                                         ; preds = %land.rhs
  %gcov_ctr.i17 = load i64, ptr @__llvm_gcov_ctr.127, align 16, !dbg !1201
  %28 = add i64 %gcov_ctr.i17, 1, !dbg !1201
  store i64 %28, ptr @__llvm_gcov_ctr.127, align 16, !dbg !1201
  %filename.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 4, !dbg !1202
  %29 = ptrtoint ptr %filename.i to i32, !dbg !1202
  call void @__asan_load4_noabort(i32 %29), !dbg !1202
  %30 = load ptr, ptr %filename.i, align 4, !dbg !1202
  %call.i = tail call i32 @strlen(ptr noundef %30) #23, !dbg !1203
  %31 = ptrtoint ptr %argv to i32, !dbg !1204
  call void @__asan_load4_noabort(i32 %31), !dbg !1204
  %32 = load ptr, ptr %argv, align 4, !dbg !1204
  %call2.i = tail call i32 @strncmp(ptr noundef %30, ptr noundef %32, i32 noundef %call.i) #21, !dbg !1205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i), !dbg !1205
  %tobool3.not.i = icmp eq i32 %call2.i, 0, !dbg !1205
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.trace_uprobe_match_command_head.exit_crit_edge, !dbg !1206

if.end.i.trace_uprobe_match_command_head.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1206
  br label %trace_uprobe_match_command_head.exit, !dbg !1206

lor.lhs.false.i:                                  ; preds = %if.end.i
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1207
  %33 = add i64 %gcov_ctr28.i, 1, !dbg !1207
  store i64 %33, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 2), align 16, !dbg !1207
  %34 = ptrtoint ptr %argv to i32, !dbg !1207
  call void @__asan_load4_noabort(i32 %34), !dbg !1207
  %35 = load ptr, ptr %argv, align 4, !dbg !1207
  %arrayidx5.i = getelementptr i8, ptr %35, i32 %call.i, !dbg !1207
  %36 = ptrtoint ptr %arrayidx5.i to i32, !dbg !1207
  call void @__asan_load1_noabort(i32 %36), !dbg !1207
  %37 = load i8, ptr %arrayidx5.i, align 1, !dbg !1207
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %37), !dbg !1208
  %cmp.not.i = icmp eq i8 %37, 58, !dbg !1208
  br i1 %cmp.not.i, label %if.end8.i, label %lor.lhs.false.i.trace_uprobe_match_command_head.exit_crit_edge, !dbg !1205

lor.lhs.false.i.trace_uprobe_match_command_head.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1205
  br label %trace_uprobe_match_command_head.exit, !dbg !1205

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %ref_ctr_offset.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 6, !dbg !1209
  %38 = ptrtoint ptr %ref_ctr_offset.i to i32, !dbg !1209
  call void @__asan_load4_noabort(i32 %38), !dbg !1209
  %39 = load i32, ptr %ref_ctr_offset.i, align 4, !dbg !1209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39), !dbg !1210
  %cmp9.i = icmp eq i32 %39, 0, !dbg !1210
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i, !dbg !1211

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1212
  %gcov_ctr29.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 3), align 8, !dbg !1212
  %40 = add i64 %gcov_ctr29.i, 1, !dbg !1212
  store i64 %40, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 3), align 8, !dbg !1212
  %offset.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 5, !dbg !1213
  %41 = ptrtoint ptr %offset.i to i32, !dbg !1213
  call void @__asan_load4_noabort(i32 %41), !dbg !1213
  %42 = load i32, ptr %offset.i, align 4, !dbg !1213
  %call12.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 64, ptr noundef nonnull @.str.20, i32 noundef 8, i32 noundef %42) #21, !dbg !1214
  br label %if.end17.i, !dbg !1214

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1215
  %offset14.i = getelementptr inbounds %struct.trace_uprobe, ptr %ev, i32 0, i32 5, !dbg !1215
  %43 = ptrtoint ptr %offset14.i to i32, !dbg !1215
  call void @__asan_load4_noabort(i32 %43), !dbg !1215
  %44 = load i32, ptr %offset14.i, align 4, !dbg !1215
  %call16.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 64, ptr noundef nonnull @.str.21, i32 noundef 8, i32 noundef %44, i32 noundef %39) #21, !dbg !1216
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then11.i
  %45 = ptrtoint ptr %argv to i32, !dbg !1217
  call void @__asan_load4_noabort(i32 %45), !dbg !1217
  %46 = load ptr, ptr %argv, align 4, !dbg !1217
  %add.i = add i32 %call.i, 1, !dbg !1218
  %arrayidx20.i = getelementptr i8, ptr %46, i32 %add.i, !dbg !1217
  %call21.i = call i32 @strcmp(ptr noundef nonnull %buf.i, ptr noundef %arrayidx20.i) #23, !dbg !1219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i), !dbg !1219
  %tobool22.not.i = icmp eq i32 %call21.i, 0, !dbg !1219
  br i1 %tobool22.not.i, label %if.end24.i, label %if.then23.i, !dbg !1219

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1220
  %gcov_ctr31.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 5), align 8, !dbg !1220
  %47 = add i64 %gcov_ctr31.i, 1, !dbg !1220
  store i64 %47, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 5), align 8, !dbg !1220
  br label %trace_uprobe_match_command_head.exit, !dbg !1220

if.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1221
  %gcov_ctr30.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 4), align 16, !dbg !1221
  %48 = add i64 %gcov_ctr30.i, 1, !dbg !1221
  store i64 %48, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.127, i32 0, i32 4), align 16, !dbg !1221
  %dec.i = add i32 %argc, -1, !dbg !1221
  %incdec.ptr.i = getelementptr ptr, ptr %argv, i32 1, !dbg !1222
  %call25.i = tail call zeroext i1 @trace_probe_match_command_args(ptr noundef %tp, i32 noundef %dec.i, ptr noundef %incdec.ptr.i) #21, !dbg !1223
  br label %trace_uprobe_match_command_head.exit, !dbg !1224

trace_uprobe_match_command_head.exit:             ; preds = %if.end24.i, %if.then23.i, %lor.lhs.false.i.trace_uprobe_match_command_head.exit_crit_edge, %if.end.i.trace_uprobe_match_command_head.exit_crit_edge, %if.then.i
  %retval.0.i = phi i1 [ false, %if.then23.i ], [ %call25.i, %if.end24.i ], [ true, %if.then.i ], [ false, %lor.lhs.false.i.trace_uprobe_match_command_head.exit_crit_edge ], [ false, %if.end.i.trace_uprobe_match_command_head.exit_crit_edge ], !dbg !1225
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #21, !dbg !1226
  br label %land.end

land.end:                                         ; preds = %trace_uprobe_match_command_head.exit, %lor.lhs.false.land.end_crit_edge, %trace_probe_name.exit.land.end_crit_edge
  %49 = phi i1 [ false, %lor.lhs.false.land.end_crit_edge ], [ false, %trace_probe_name.exit.land.end_crit_edge ], [ %retval.0.i, %trace_uprobe_match_command_head.exit ], !dbg !1227
  ret i1 %49, !dbg !1228
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__trace_uprobe_create(i32 noundef %argc, ptr noundef %argv) #0 align 64 !dbg !1229 {
entry:
  %event = alloca ptr, align 4
  %group = alloca ptr, align 4
  %buf = alloca [64 x i8], align 1
  %path = alloca %struct.path, align 8
  %offset = alloca i32, align 4
  %ref_ctr_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event) #21, !dbg !1231
  %0 = ptrtoint ptr %event to i32, !dbg !1232
  call void @__asan_store4_noabort(i32 %0), !dbg !1232
  store ptr null, ptr %event, align 4, !dbg !1232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group) #21, !dbg !1231
  %1 = ptrtoint ptr %group to i32, !dbg !1233
  call void @__asan_store4_noabort(i32 %1), !dbg !1233
  store ptr @.str, ptr %group, align 4, !dbg !1233
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #21, !dbg !1234
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64), !dbg !1235
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #21, !dbg !1236
  %3 = ptrtoint ptr %path to i32, !dbg !1237
  call void @__asan_store4_noabort(i32 %3), !dbg !1237
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 8, !dbg !1237, !annotation !168
  %4 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !1237
  %5 = ptrtoint ptr %4 to i32, !dbg !1237
  call void @__asan_store4_noabort(i32 %5), !dbg !1237
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !dbg !1237, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #21, !dbg !1238
  %6 = ptrtoint ptr %offset to i32, !dbg !1239
  call void @__asan_store4_noabort(i32 %6), !dbg !1239
  store i32 -1, ptr %offset, align 4, !dbg !1239, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_ctr_offset) #21, !dbg !1238
  %7 = ptrtoint ptr %ref_ctr_offset to i32, !dbg !1240
  call void @__asan_store4_noabort(i32 %7), !dbg !1240
  store i32 0, ptr %ref_ctr_offset, align 4, !dbg !1240
  %8 = ptrtoint ptr %argv to i32, !dbg !1241
  call void @__asan_load4_noabort(i32 %8), !dbg !1241
  %9 = load ptr, ptr %argv, align 4, !dbg !1241
  %10 = ptrtoint ptr %9 to i32, !dbg !1241
  call void @__asan_load1_noabort(i32 %10), !dbg !1241
  %11 = load i8, ptr %9, align 1, !dbg !1241
  %12 = zext i8 %11 to i64, !dbg !1242
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.207), !dbg !1242
  switch i8 %11, label %sw.default [
    i8 114, label %sw.bb
    i8 112, label %entry.sw.epilog_crit_edge
  ], !dbg !1242

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1242
  br label %sw.epilog, !dbg !1242

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1243
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.97, align 16, !dbg !1243
  %13 = add i64 %gcov_ctr, 1, !dbg !1243
  store i64 %13, ptr @__llvm_gcov_ctr.97, align 16, !dbg !1243
  br label %sw.epilog, !dbg !1244

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1245
  %gcov_ctr200 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !1245
  %14 = add i64 %gcov_ctr200, 1, !dbg !1245
  store i64 %14, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !1245
  br label %cleanup184, !dbg !1245

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %is_return.0.off0 = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ true, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc), !dbg !1246
  %cmp = icmp slt i32 %argc, 2, !dbg !1246
  br i1 %cmp, label %if.then, label %if.end, !dbg !1247

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1248
  %gcov_ctr201 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 2), align 16, !dbg !1248
  %15 = add i64 %gcov_ctr201, 1, !dbg !1248
  store i64 %15, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 2), align 16, !dbg !1248
  br label %cleanup184, !dbg !1248

if.end:                                           ; preds = %sw.epilog
  %16 = ptrtoint ptr %argv to i32, !dbg !1249
  call void @__asan_load4_noabort(i32 %16), !dbg !1249
  %17 = load ptr, ptr %argv, align 4, !dbg !1249
  %arrayidx4 = getelementptr i8, ptr %17, i32 1, !dbg !1249
  %18 = ptrtoint ptr %arrayidx4 to i32, !dbg !1249
  call void @__asan_load1_noabort(i32 %18), !dbg !1249
  %19 = load i8, ptr %arrayidx4, align 1, !dbg !1249
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %19), !dbg !1250
  %cmp6 = icmp eq i8 %19, 58, !dbg !1250
  br i1 %cmp6, label %if.then8, label %if.end.if.end11_crit_edge, !dbg !1249

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1249
  br label %if.end11, !dbg !1249

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1251
  %gcov_ctr202 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 3), align 8, !dbg !1251
  %20 = add i64 %gcov_ctr202, 1, !dbg !1251
  store i64 %20, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 3), align 8, !dbg !1251
  %21 = ptrtoint ptr %argv to i32, !dbg !1251
  call void @__asan_load4_noabort(i32 %21), !dbg !1251
  %22 = load ptr, ptr %argv, align 4, !dbg !1251
  %arrayidx10 = getelementptr i8, ptr %22, i32 2, !dbg !1251
  %23 = ptrtoint ptr %event to i32, !dbg !1252
  call void @__asan_store4_noabort(i32 %23), !dbg !1252
  store ptr %arrayidx10, ptr %event, align 4, !dbg !1252
  br label %if.end11, !dbg !1253

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %arrayidx12 = getelementptr ptr, ptr %argv, i32 1, !dbg !1254
  %24 = ptrtoint ptr %arrayidx12 to i32, !dbg !1254
  call void @__asan_load4_noabort(i32 %24), !dbg !1254
  %25 = load ptr, ptr %arrayidx12, align 4, !dbg !1254
  %call = tail call ptr @strchr(ptr noundef %25, i32 noundef 47), !dbg !1255
  %tobool.not = icmp eq ptr %call, null, !dbg !1255
  br i1 %tobool.not, label %if.then13, label %if.end14, !dbg !1256

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1257
  %gcov_ctr203 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 4), align 16, !dbg !1257
  %26 = add i64 %gcov_ctr203, 1, !dbg !1257
  store i64 %26, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 4), align 16, !dbg !1257
  br label %cleanup184, !dbg !1257

if.end14:                                         ; preds = %if.end11
  %call16 = tail call noalias ptr @kstrdup(ptr noundef %25, i32 noundef 3264) #21, !dbg !1258
  %tobool17.not = icmp eq ptr %call16, null, !dbg !1259
  br i1 %tobool17.not, label %if.then18, label %if.end19, !dbg !1260

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1261
  %gcov_ctr204 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 5), align 8, !dbg !1261
  %27 = add i64 %gcov_ctr204, 1, !dbg !1261
  store i64 %27, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 5), align 8, !dbg !1261
  br label %cleanup184, !dbg !1261

if.end19:                                         ; preds = %if.end14
  %call20 = tail call ptr @strrchr(ptr noundef nonnull %call16, i32 noundef 58), !dbg !1262
  %tobool21.not = icmp eq ptr %call20, null, !dbg !1263
  br i1 %tobool21.not, label %if.end19.if.then26_crit_edge, label %lor.lhs.false, !dbg !1264

if.end19.if.then26_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1264
  br label %if.then26, !dbg !1264

lor.lhs.false:                                    ; preds = %if.end19
  %gcov_ctr205 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 6), align 16, !dbg !1265
  %28 = add i64 %gcov_ctr205, 1, !dbg !1265
  store i64 %28, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 6), align 16, !dbg !1265
  %arrayidx22 = getelementptr i8, ptr %call20, i32 1, !dbg !1265
  %29 = ptrtoint ptr %arrayidx22 to i32, !dbg !1265
  call void @__asan_load1_noabort(i32 %29), !dbg !1265
  %30 = load i8, ptr %arrayidx22, align 1, !dbg !1265
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.98, align 8
  %31 = add i64 %gcov_ctr.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.98, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %30), !dbg !1266
  %cmp.i = icmp ugt i8 %30, 47, !dbg !1266
  br i1 %cmp.i, label %isdigit.exit, label %lor.lhs.false.if.then26_crit_edge, !dbg !1270

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1270
  br label %if.then26, !dbg !1270

isdigit.exit:                                     ; preds = %lor.lhs.false
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !1271
  %32 = add i64 %gcov_ctr2.i, 1, !dbg !1271
  store i64 %32, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !1271
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %30), !dbg !1272
  %cmp1.i = icmp ugt i8 %30, 57, !dbg !1272
  br i1 %cmp1.i, label %isdigit.exit.if.then26_crit_edge, label %if.end27, !dbg !1273

isdigit.exit.if.then26_crit_edge:                 ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1273
  br label %if.then26, !dbg !1273

if.then26:                                        ; preds = %isdigit.exit.if.then26_crit_edge, %lor.lhs.false.if.then26_crit_edge, %if.end19.if.then26_crit_edge
  %gcov_ctr206 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 7), align 8, !dbg !1274
  %33 = add i64 %gcov_ctr206, 1, !dbg !1274
  store i64 %33, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 7), align 8, !dbg !1274
  tail call void @kfree(ptr noundef nonnull %call16) #21, !dbg !1275
  br label %cleanup184, !dbg !1276

if.end27:                                         ; preds = %isdigit.exit
  tail call void @trace_probe_log_init(ptr noundef nonnull @.str.8, i32 noundef %argc, ptr noundef %argv) #21, !dbg !1277
  tail call void @trace_probe_log_set_index(i32 noundef 1) #21, !dbg !1278
  %34 = ptrtoint ptr %call20 to i32, !dbg !1279
  call void @__asan_store1_noabort(i32 %34), !dbg !1279
  store i8 0, ptr %call20, align 1, !dbg !1279
  %call28 = call i32 @kern_path(ptr noundef nonnull %call16, i32 noundef 1, ptr noundef nonnull %path) #21, !dbg !1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28), !dbg !1281
  %tobool29.not = icmp eq i32 %call28, 0, !dbg !1281
  br i1 %tobool29.not, label %if.end31, label %if.then30, !dbg !1281

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1282
  %gcov_ctr207 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 8), align 16, !dbg !1282
  %35 = add i64 %gcov_ctr207, 1, !dbg !1282
  store i64 %35, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 8), align 16, !dbg !1282
  call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 0) #21, !dbg !1282
  call void @kfree(ptr noundef nonnull %call16) #21, !dbg !1283
  call void @trace_probe_log_clear() #21, !dbg !1284
  br label %cleanup184, !dbg !1285

if.end31:                                         ; preds = %if.end27
  %36 = ptrtoint ptr %4 to i32, !dbg !1286
  call void @__asan_load4_noabort(i32 %36), !dbg !1286
  %37 = load ptr, ptr %4, align 4, !dbg !1286
  %gcov_ctr.i308 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %38 = add i64 %gcov_ctr.i308, 1
  store i64 %38, ptr @__llvm_gcov_ctr.48, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.130, align 8
  %39 = add i64 %gcov_ctr.i.i, 1
  store i64 %39, ptr @__llvm_gcov_ctr.130, align 8
  %40 = ptrtoint ptr %37 to i32, !dbg !1287
  call void @__asan_load4_noabort(i32 %40), !dbg !1287
  %41 = load i32, ptr %37, align 8, !dbg !1287
  %and.i.i = and i32 %41, 7340032, !dbg !1290
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i), !dbg !1291
  %cmp.i309 = icmp eq i32 %and.i.i, 4194304, !dbg !1291
  br i1 %cmp.i309, label %if.end34, label %if.then33, !dbg !1292

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1293
  %gcov_ctr208 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 9), align 8, !dbg !1293
  %42 = add i64 %gcov_ctr208, 1, !dbg !1293
  store i64 %42, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 9), align 8, !dbg !1293
  call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 1) #21, !dbg !1293
  br label %fail_address_parse, !dbg !1294

if.end34:                                         ; preds = %if.end31
  %call35 = call ptr @strchr(ptr noundef %arrayidx22, i32 noundef 40), !dbg !1295
  %tobool36.not = icmp eq ptr %call35, null, !dbg !1296
  br i1 %tobool36.not, label %if.end34.if.end61_crit_edge, label %if.then37, !dbg !1296

if.end34.if.end61_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1296
  br label %if.end61, !dbg !1296

if.then37:                                        ; preds = %if.end34
  %call38 = call ptr @strchr(ptr noundef nonnull %call35, i32 noundef 41), !dbg !1297
  %tobool39.not = icmp eq ptr %call38, null, !dbg !1298
  br i1 %tobool39.not, label %if.then40, label %if.else, !dbg !1299

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1300
  %gcov_ctr209 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 10), align 16, !dbg !1300
  %43 = add i64 %gcov_ctr209, 1, !dbg !1300
  store i64 %43, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 10), align 16, !dbg !1300
  %call41 = call i32 @strlen(ptr noundef nonnull %call35) #24, !dbg !1301
  %add.ptr = getelementptr i8, ptr %call35, i32 %call41, !dbg !1302
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32, !dbg !1303
  %sub.ptr.rhs.cast = ptrtoint ptr %call16 to i32, !dbg !1303
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1303
  call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub, i32 noundef 3) #21, !dbg !1303
  br label %fail_address_parse, !dbg !1304

if.else:                                          ; preds = %if.then37
  %arrayidx42 = getelementptr i8, ptr %call38, i32 1, !dbg !1305
  %44 = ptrtoint ptr %arrayidx42 to i32, !dbg !1305
  call void @__asan_load1_noabort(i32 %44), !dbg !1305
  %45 = load i8, ptr %arrayidx42, align 1, !dbg !1305
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45), !dbg !1306
  %cmp44.not = icmp eq i8 %45, 0, !dbg !1306
  br i1 %cmp44.not, label %if.end52, label %if.then46, !dbg !1305

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1307
  %gcov_ctr210 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 11), align 8, !dbg !1307
  %46 = add i64 %gcov_ctr210, 1, !dbg !1307
  store i64 %46, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 11), align 8, !dbg !1307
  %sub.ptr.lhs.cast48 = ptrtoint ptr %arrayidx42 to i32, !dbg !1308
  %sub.ptr.rhs.cast49 = ptrtoint ptr %call16 to i32, !dbg !1308
  %sub.ptr.sub50 = sub i32 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49, !dbg !1308
  call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub50, i32 noundef 4) #21, !dbg !1308
  br label %fail_address_parse, !dbg !1309

if.end52:                                         ; preds = %if.else
  %incdec.ptr53 = getelementptr i8, ptr %call35, i32 1, !dbg !1310
  %47 = ptrtoint ptr %call35 to i32, !dbg !1311
  call void @__asan_store1_noabort(i32 %47), !dbg !1311
  store i8 0, ptr %call35, align 1, !dbg !1311
  %48 = ptrtoint ptr %call38 to i32, !dbg !1312
  call void @__asan_store1_noabort(i32 %48), !dbg !1312
  store i8 0, ptr %call38, align 1, !dbg !1312
  %gcov_ctr.i310 = load i64, ptr @__llvm_gcov_ctr.99, align 8
  %49 = add i64 %gcov_ctr.i310, 1
  store i64 %49, ptr @__llvm_gcov_ctr.99, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef %incdec.ptr53, i32 noundef 0, ptr noundef nonnull %ref_ctr_offset) #21, !dbg !1313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1317
  %tobool55.not = icmp eq i32 %call.i, 0, !dbg !1317
  br i1 %tobool55.not, label %if.end60, label %if.then56, !dbg !1317

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1318
  %gcov_ctr212 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 13), align 8, !dbg !1318
  %50 = add i64 %gcov_ctr212, 1, !dbg !1318
  store i64 %50, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 13), align 8, !dbg !1318
  %sub.ptr.lhs.cast57 = ptrtoint ptr %incdec.ptr53 to i32, !dbg !1318
  %sub.ptr.rhs.cast58 = ptrtoint ptr %call16 to i32, !dbg !1318
  %sub.ptr.sub59 = sub i32 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58, !dbg !1318
  call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub59, i32 noundef 2) #21, !dbg !1318
  br label %fail_address_parse, !dbg !1319

if.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1320
  %gcov_ctr211 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 12), align 16, !dbg !1320
  %51 = add i64 %gcov_ctr211, 1, !dbg !1320
  store i64 %51, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 12), align 16, !dbg !1320
  br label %if.end61, !dbg !1320

if.end61:                                         ; preds = %if.end60, %if.end34.if.end61_crit_edge
  %call62 = call ptr @strchr(ptr noundef %arrayidx22, i32 noundef 37), !dbg !1321
  %tobool63.not = icmp eq ptr %call62, null, !dbg !1322
  br i1 %tobool63.not, label %if.end61.if.end73_crit_edge, label %if.then64, !dbg !1322

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1322
  br label %if.end73, !dbg !1322

if.then64:                                        ; preds = %if.end61
  %call65 = call i32 @strcmp(ptr noundef nonnull %call62, ptr noundef nonnull dereferenceable(8) @.str.9) #24, !dbg !1323
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65), !dbg !1323
  %tobool66.not = icmp eq i32 %call65, 0, !dbg !1323
  br i1 %tobool66.not, label %if.then67, label %if.else68, !dbg !1324

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1325
  %52 = ptrtoint ptr %call62 to i32, !dbg !1325
  call void @__asan_store1_noabort(i32 %52), !dbg !1325
  store i8 0, ptr %call62, align 1, !dbg !1325
  %gcov_ctr214 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 15), align 8, !dbg !1326
  %53 = add i64 %gcov_ctr214, 1, !dbg !1326
  store i64 %53, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 15), align 8, !dbg !1326
  br label %if.end73, !dbg !1326

if.else68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1327
  %gcov_ctr213 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 14), align 16, !dbg !1327
  %54 = add i64 %gcov_ctr213, 1, !dbg !1327
  store i64 %54, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 14), align 16, !dbg !1327
  %sub.ptr.lhs.cast69 = ptrtoint ptr %call62 to i32, !dbg !1327
  %sub.ptr.rhs.cast70 = ptrtoint ptr %call16 to i32, !dbg !1327
  %sub.ptr.sub71 = sub i32 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70, !dbg !1327
  call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub71, i32 noundef 11) #21, !dbg !1327
  br label %fail_address_parse, !dbg !1328

if.end73:                                         ; preds = %if.then67, %if.end61.if.end73_crit_edge
  %is_return.1.off0 = phi i1 [ true, %if.then67 ], [ %is_return.0.off0, %if.end61.if.end73_crit_edge ]
  %gcov_ctr.i311 = load i64, ptr @__llvm_gcov_ctr.99, align 8
  %55 = add i64 %gcov_ctr.i311, 1
  store i64 %55, ptr @__llvm_gcov_ctr.99, align 8
  %call.i312 = call i32 @_kstrtoul(ptr noundef %arrayidx22, i32 noundef 0, ptr noundef nonnull %offset) #21, !dbg !1329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312), !dbg !1331
  %tobool75.not = icmp eq i32 %call.i312, 0, !dbg !1331
  br i1 %tobool75.not, label %if.end80, label %if.then76, !dbg !1331

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1332
  %gcov_ctr215 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 16), align 16, !dbg !1332
  %56 = add i64 %gcov_ctr215, 1, !dbg !1332
  store i64 %56, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 16), align 16, !dbg !1332
  %sub.ptr.lhs.cast77 = ptrtoint ptr %arrayidx22 to i32, !dbg !1332
  %sub.ptr.rhs.cast78 = ptrtoint ptr %call16 to i32, !dbg !1332
  %sub.ptr.sub79 = sub i32 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78, !dbg !1332
  call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub79, i32 noundef 5) #21, !dbg !1332
  br label %fail_address_parse, !dbg !1333

if.end80:                                         ; preds = %if.end73
  call void @trace_probe_log_set_index(i32 noundef 0) #21, !dbg !1334
  %57 = ptrtoint ptr %event to i32, !dbg !1335
  call void @__asan_load4_noabort(i32 %57), !dbg !1335
  %58 = load ptr, ptr %event, align 4, !dbg !1335
  %tobool81.not = icmp eq ptr %58, null, !dbg !1335
  br i1 %tobool81.not, label %if.else91, label %if.then82, !dbg !1335

if.then82:                                        ; preds = %if.end80
  %59 = ptrtoint ptr %argv to i32, !dbg !1336
  call void @__asan_load4_noabort(i32 %59), !dbg !1336
  %60 = load ptr, ptr %argv, align 4, !dbg !1336
  %sub.ptr.lhs.cast84 = ptrtoint ptr %58 to i32, !dbg !1337
  %sub.ptr.rhs.cast85 = ptrtoint ptr %60 to i32, !dbg !1337
  %sub.ptr.sub86 = sub i32 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85, !dbg !1337
  %call87 = call i32 @traceprobe_parse_event_name(ptr noundef nonnull %event, ptr noundef nonnull %group, ptr noundef nonnull %buf, i32 noundef %sub.ptr.sub86) #21, !dbg !1338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87), !dbg !1339
  %tobool88.not = icmp eq i32 %call87, 0, !dbg !1339
  br i1 %tobool88.not, label %if.then82.if.end105_crit_edge, label %if.then89, !dbg !1339

if.then82.if.end105_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1339
  br label %if.end105, !dbg !1339

if.then89:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1340
  %gcov_ctr216 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 17), align 8, !dbg !1340
  %61 = add i64 %gcov_ctr216, 1, !dbg !1340
  store i64 %61, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 17), align 8, !dbg !1340
  br label %fail_address_parse, !dbg !1340

if.else91:                                        ; preds = %if.end80
  %call92 = call fastcc ptr @kbasename(ptr noundef nonnull %call16), !dbg !1341
  %call93 = call noalias ptr @kstrdup(ptr noundef %call92, i32 noundef 3264) #21, !dbg !1342
  %tobool94.not = icmp eq ptr %call93, null, !dbg !1343
  br i1 %tobool94.not, label %cleanup, label %if.end96, !dbg !1344

if.end96:                                         ; preds = %if.else91
  %call97 = call ptr @strpbrk(ptr noundef nonnull %call93, ptr noundef nonnull @.str.10), !dbg !1345
  %tobool98.not = icmp eq ptr %call97, null, !dbg !1346
  br i1 %tobool98.not, label %if.end96.cleanup.cont_crit_edge, label %if.then99, !dbg !1346

if.end96.cleanup.cont_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1346
  br label %cleanup.cont, !dbg !1346

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1347
  %gcov_ctr218 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 19), align 8, !dbg !1347
  %62 = add i64 %gcov_ctr218, 1, !dbg !1347
  store i64 %62, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 19), align 8, !dbg !1347
  %63 = ptrtoint ptr %call97 to i32, !dbg !1348
  call void @__asan_store1_noabort(i32 %63), !dbg !1348
  store i8 0, ptr %call97, align 1, !dbg !1348
  br label %cleanup.cont, !dbg !1349

cleanup:                                          ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1350
  %gcov_ctr217 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 18), align 16, !dbg !1350
  %64 = add i64 %gcov_ctr217, 1, !dbg !1350
  store i64 %64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 18), align 16, !dbg !1350
  br label %fail_address_parse

cleanup.cont:                                     ; preds = %if.then99, %if.end96.cleanup.cont_crit_edge
  %gcov_ctr219 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 20), align 16, !dbg !1351
  %65 = add i64 %gcov_ctr219, 1, !dbg !1351
  store i64 %65, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 20), align 16, !dbg !1351
  %66 = ptrtoint ptr %offset to i32, !dbg !1352
  call void @__asan_load4_noabort(i32 %66), !dbg !1352
  %67 = load i32, ptr %offset, align 4, !dbg !1352
  %call102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.11, i32 noundef 112, ptr noundef nonnull %call93, i32 noundef %67), !dbg !1353
  %68 = ptrtoint ptr %event to i32, !dbg !1354
  call void @__asan_store4_noabort(i32 %68), !dbg !1354
  store ptr %buf, ptr %event, align 4, !dbg !1354
  call void @kfree(ptr noundef nonnull %call93) #21, !dbg !1355
  %gcov_ctr220 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 21), align 8
  %69 = add i64 %gcov_ctr220, 1
  store i64 %69, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 21), align 8
  br label %if.end105

if.end105:                                        ; preds = %cleanup.cont, %if.then82.if.end105_crit_edge
  %sub = add nsw i32 %argc, -2, !dbg !1356
  %add.ptr106 = getelementptr ptr, ptr %argv, i32 2, !dbg !1357
  %70 = ptrtoint ptr %group to i32, !dbg !1358
  call void @__asan_load4_noabort(i32 %70), !dbg !1358
  %71 = load ptr, ptr %group, align 4, !dbg !1358
  %72 = ptrtoint ptr %event to i32, !dbg !1359
  call void @__asan_load4_noabort(i32 %72), !dbg !1359
  %73 = load ptr, ptr %event, align 4, !dbg !1359
  %call108 = call fastcc ptr @alloc_trace_uprobe(ptr noundef %71, ptr noundef %73, i32 noundef %sub, i1 noundef zeroext %is_return.1.off0), !dbg !1360
  %gcov_ctr.i313 = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %74 = add i64 %gcov_ctr.i313, 1
  store i64 %74, ptr @__llvm_gcov_ctr.50, align 8
  %cmp.i314 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr), !dbg !1361
  br i1 %cmp.i314, label %if.then110, label %if.end153, !dbg !1363

if.then110:                                       ; preds = %if.end105
  %gcov_ctr.i315 = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %75 = add i64 %gcov_ctr.i315, 1
  store i64 %75, ptr @__llvm_gcov_ctr.51, align 8
  %76 = ptrtoint ptr %call108 to i32, !dbg !1364
  %cmp112.not = icmp eq ptr %call108, inttoptr (i32 -12 to ptr), !dbg !1366
  br i1 %cmp112.not, label %if.then110.if.end145_crit_edge, label %land.rhs, !dbg !1366

if.then110.if.end145_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1366
  br label %if.end145, !dbg !1366

land.rhs:                                         ; preds = %if.then110
  %gcov_ctr221 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 22), align 16, !dbg !1366
  %77 = add i64 %gcov_ctr221, 1, !dbg !1366
  store i64 %77, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 22), align 16, !dbg !1366
  %.b307 = load i1, ptr @__trace_uprobe_create.__already_done, align 1, !dbg !1366
  br i1 %.b307, label %land.rhs.if.end145_crit_edge, label %if.then122, !dbg !1366, !prof !194

land.rhs.if.end145_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1366
  br label %if.end145, !dbg !1366

if.then122:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1366
  %gcov_ctr222 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 23), align 8, !dbg !1366
  %78 = add i64 %gcov_ctr222, 1, !dbg !1366
  store i64 %78, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 23), align 8, !dbg !1366
  store i1 true, ptr @__trace_uprobe_create.__already_done, align 1, !dbg !1366
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 678, i32 noundef 9, ptr noundef null) #21, !dbg !1366
  %gcov_ctr223 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 24), align 16, !dbg !1366
  %79 = add i64 %gcov_ctr223, 1, !dbg !1366
  store i64 %79, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 24), align 16, !dbg !1366
  br label %if.end145, !dbg !1366

if.end145:                                        ; preds = %if.then122, %land.rhs.if.end145_crit_edge, %if.then110.if.end145_crit_edge
  %gcov_ctr224 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 25), align 8, !dbg !1366
  %80 = add i64 %gcov_ctr224, 1, !dbg !1366
  store i64 %80, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 25), align 8, !dbg !1366
  br label %fail_address_parse, !dbg !1367

if.end153:                                        ; preds = %if.end105
  %81 = ptrtoint ptr %offset to i32, !dbg !1368
  call void @__asan_load4_noabort(i32 %81), !dbg !1368
  %82 = load i32, ptr %offset, align 4, !dbg !1368
  %offset154 = getelementptr inbounds %struct.trace_uprobe, ptr %call108, i32 0, i32 5, !dbg !1369
  %83 = ptrtoint ptr %offset154 to i32, !dbg !1370
  call void @__asan_store4_noabort(i32 %83), !dbg !1370
  store i32 %82, ptr %offset154, align 4, !dbg !1370
  %84 = ptrtoint ptr %ref_ctr_offset to i32, !dbg !1371
  call void @__asan_load4_noabort(i32 %84), !dbg !1371
  %85 = load i32, ptr %ref_ctr_offset, align 4, !dbg !1371
  %ref_ctr_offset155 = getelementptr inbounds %struct.trace_uprobe, ptr %call108, i32 0, i32 6, !dbg !1372
  %86 = ptrtoint ptr %ref_ctr_offset155 to i32, !dbg !1373
  call void @__asan_store4_noabort(i32 %86), !dbg !1373
  store i32 %85, ptr %ref_ctr_offset155, align 4, !dbg !1373
  %path156 = getelementptr inbounds %struct.trace_uprobe, ptr %call108, i32 0, i32 2, !dbg !1374
  %87 = ptrtoint ptr %path to i32, !dbg !1375
  call void @__asan_load8_noabort(i32 %87), !dbg !1375
  %88 = load i64, ptr %path, align 8, !dbg !1375
  %89 = ptrtoint ptr %path156 to i32, !dbg !1375
  call void @__asan_storeN_noabort(i32 %89, i32 8), !dbg !1375
  store i64 %88, ptr %path156, align 4, !dbg !1375
  %filename157 = getelementptr inbounds %struct.trace_uprobe, ptr %call108, i32 0, i32 4, !dbg !1376
  %90 = ptrtoint ptr %filename157 to i32, !dbg !1377
  call void @__asan_store4_noabort(i32 %90), !dbg !1377
  store ptr %call16, ptr %filename157, align 4, !dbg !1377
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc), !dbg !1378
  %cmp158321 = icmp ugt i32 %argc, 2, !dbg !1378
  br i1 %cmp158321, label %land.rhs160.lr.ph, label %if.end153.for.end_crit_edge, !dbg !1379

if.end153.for.end_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1379
  br label %for.end, !dbg !1379

land.rhs160.lr.ph:                                ; preds = %if.end153
  %tp = getelementptr inbounds %struct.trace_uprobe, ptr %call108, i32 0, i32 8
  %cond = zext i1 %is_return.1.off0 to i32
  br label %land.rhs160, !dbg !1379

land.rhs160:                                      ; preds = %if.end170.land.rhs160_crit_edge, %land.rhs160.lr.ph
  %i.0322 = phi i32 [ 0, %land.rhs160.lr.ph ], [ %inc, %if.end170.land.rhs160_crit_edge ]
  %gcov_ctr225 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 26), align 16, !dbg !1380
  %91 = add i64 %gcov_ctr225, 1, !dbg !1380
  store i64 %91, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 26), align 16, !dbg !1380
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.0322), !dbg !1381
  %exitcond.not = icmp eq i32 %i.0322, 128, !dbg !1381
  br i1 %exitcond.not, label %land.rhs160.for.end_crit_edge, label %for.body, !dbg !1382

land.rhs160.for.end_crit_edge:                    ; preds = %land.rhs160
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1382
  br label %for.end, !dbg !1382

for.body:                                         ; preds = %land.rhs160
  %add = add nuw nsw i32 %i.0322, 2, !dbg !1383
  call void @trace_probe_log_set_index(i32 noundef %add) #21, !dbg !1384
  %arrayidx164 = getelementptr ptr, ptr %add.ptr106, i32 %i.0322, !dbg !1385
  %92 = ptrtoint ptr %arrayidx164 to i32, !dbg !1385
  call void @__asan_load4_noabort(i32 %92), !dbg !1385
  %93 = load ptr, ptr %arrayidx164, align 4, !dbg !1385
  %call167 = call i32 @traceprobe_parse_probe_arg(ptr noundef %tp, i32 noundef %i.0322, ptr noundef %93, i32 noundef %cond) #21, !dbg !1386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167), !dbg !1387
  %tobool168.not = icmp eq i32 %call167, 0, !dbg !1387
  br i1 %tobool168.not, label %if.end170, label %if.then169, !dbg !1387

if.then169:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1388
  %gcov_ctr227 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 28), align 16, !dbg !1388
  %94 = add i64 %gcov_ctr227, 1, !dbg !1388
  store i64 %94, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 28), align 16, !dbg !1388
  br label %error, !dbg !1388

if.end170:                                        ; preds = %for.body
  %gcov_ctr226 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 27), align 8, !dbg !1389
  %95 = add i64 %gcov_ctr226, 1, !dbg !1389
  store i64 %95, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 27), align 8, !dbg !1389
  %inc = add nuw nsw i32 %i.0322, 1, !dbg !1390
  %exitcond323.not = icmp eq i32 %inc, %sub, !dbg !1378
  br i1 %exitcond323.not, label %if.end170.for.end_crit_edge, label %if.end170.land.rhs160_crit_edge, !dbg !1379, !llvm.loop !1391

if.end170.land.rhs160_crit_edge:                  ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1379
  br label %land.rhs160, !dbg !1379

if.end170.for.end_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1379
  br label %for.end, !dbg !1379

for.end:                                          ; preds = %if.end170.for.end_crit_edge, %land.rhs160.for.end_crit_edge, %if.end153.for.end_crit_edge
  %gcov_ctr.i316 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %96 = add i64 %gcov_ctr.i316, 1
  store i64 %96, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr inbounds %struct.trace_uprobe, ptr %call108, i32 0, i32 1, i32 1, !dbg !1392
  %97 = ptrtoint ptr %ret_handler.i to i32, !dbg !1392
  call void @__asan_load4_noabort(i32 %97), !dbg !1392
  %98 = load ptr, ptr %ret_handler.i, align 4, !dbg !1392
  %cmp.i317 = icmp ne ptr %98, null, !dbg !1394
  %cond173 = zext i1 %cmp.i317 to i32, !dbg !1395
  %tp174 = getelementptr inbounds %struct.trace_uprobe, ptr %call108, i32 0, i32 8, !dbg !1396
  %call175 = call i32 @traceprobe_set_print_fmt(ptr noundef %tp174, i32 noundef %cond173) #21, !dbg !1397
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175), !dbg !1398
  %cmp176 = icmp slt i32 %call175, 0, !dbg !1398
  br i1 %cmp176, label %if.then178, label %if.end179, !dbg !1399

if.then178:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1400
  %gcov_ctr228 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 29), align 8, !dbg !1400
  %99 = add i64 %gcov_ctr228, 1, !dbg !1400
  store i64 %99, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 29), align 8, !dbg !1400
  br label %error, !dbg !1400

if.end179:                                        ; preds = %for.end
  %call180 = call fastcc i32 @register_trace_uprobe(ptr noundef %call108), !dbg !1401
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180), !dbg !1402
  %tobool181.not = icmp eq i32 %call180, 0, !dbg !1402
  br i1 %tobool181.not, label %if.then182, label %if.end183, !dbg !1403

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1404
  %gcov_ctr229 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 30), align 16, !dbg !1404
  %100 = add i64 %gcov_ctr229, 1, !dbg !1404
  store i64 %100, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 30), align 16, !dbg !1404
  br label %out, !dbg !1404

if.end183:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1402
  %gcov_ctr230 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 31), align 8, !dbg !1402
  %101 = add i64 %gcov_ctr230, 1, !dbg !1402
  store i64 %101, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 31), align 8, !dbg !1402
  br label %error, !dbg !1402

error:                                            ; preds = %if.end183, %if.then178, %if.then169
  %ret.1 = phi i32 [ %call167, %if.then169 ], [ %call175, %if.then178 ], [ %call180, %if.end183 ], !dbg !1405
  call fastcc void @free_trace_uprobe(ptr noundef %call108), !dbg !1406
  br label %out, !dbg !1406

out:                                              ; preds = %error, %if.then182
  %ret.2 = phi i32 [ %ret.1, %error ], [ 0, %if.then182 ], !dbg !1405
  call void @trace_probe_log_clear() #21, !dbg !1407
  br label %cleanup184, !dbg !1408

fail_address_parse:                               ; preds = %if.end145, %cleanup, %if.then89, %if.then76, %if.else68, %if.then56, %if.then46, %if.then40, %if.then33
  %ret.3 = phi i32 [ -22, %if.then46 ], [ %call.i, %if.then56 ], [ -22, %if.else68 ], [ %call.i312, %if.then76 ], [ %call87, %if.then89 ], [ %76, %if.end145 ], [ -12, %cleanup ], [ -22, %if.then40 ], [ -22, %if.then33 ], !dbg !1405
  %gcov_ctr231 = load i64, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 32), align 16, !dbg !1409
  %102 = add i64 %gcov_ctr231, 1, !dbg !1409
  store i64 %102, ptr getelementptr inbounds ([33 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 32), align 16, !dbg !1409
  call void @trace_probe_log_clear() #21, !dbg !1409
  call void @path_put(ptr noundef nonnull %path) #21, !dbg !1410
  call void @kfree(ptr noundef nonnull %call16) #21, !dbg !1411
  br label %cleanup184, !dbg !1412

cleanup184:                                       ; preds = %fail_address_parse, %out, %if.then30, %if.then26, %if.then18, %if.then13, %if.then, %sw.default
  %retval.0 = phi i32 [ -125, %sw.default ], [ -125, %if.then ], [ %call28, %if.then30 ], [ %ret.3, %fail_address_parse ], [ %ret.2, %out ], [ -125, %if.then26 ], [ -12, %if.then18 ], [ -125, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_ctr_offset) #21, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #21, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #21, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #21, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group) #21, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event) #21, !dbg !1413
  ret i32 %retval.0, !dbg !1413
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_set_index(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_probe_log_err(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_clear() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_event_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @kbasename(ptr noundef readonly %path) unnamed_addr #10 align 64 !dbg !1414 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1416
  %call = tail call ptr @strrchr(ptr noundef %path, i32 noundef 47), !dbg !1417
  %tobool.not = icmp eq ptr %call, null, !dbg !1418
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !1418

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1419
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1419
  %0 = add i64 %gcov_ctr, 1, !dbg !1419
  store i64 %0, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1419
  %add.ptr = getelementptr i8, ptr %call, i32 1, !dbg !1420
  br label %cond.end, !dbg !1418

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1421
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !1421
  %1 = add i64 %gcov_ctr1, 1, !dbg !1421
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), align 8, !dbg !1421
  br label %cond.end, !dbg !1418

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %path, %cond.false ], !dbg !1418
  ret ptr %cond, !dbg !1422
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_probe_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_trace_uprobe(ptr noundef %tu) unnamed_addr #0 align 64 !dbg !1423 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1424
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #21, !dbg !1425
  %dentry.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 2, i32 1, !dbg !1426
  %0 = ptrtoint ptr %dentry.i to i32, !dbg !1426
  call void @__asan_load4_noabort(i32 %0), !dbg !1426
  %1 = load ptr, ptr %dentry.i, align 4, !dbg !1426
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.106, align 8
  %3 = ptrtoint ptr %1 to i32, !dbg !1429
  call void @__asan_load4_noabort(i32 %3), !dbg !1429
  %4 = load i32, ptr %1, align 8, !dbg !1429
  %and.i.i.i = and i32 %4, 67108864, !dbg !1429
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !1429
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0, !dbg !1429
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !dbg !1429, !prof !194

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1434
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1434
  %5 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1434
  store i64 %5, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1434
  %d_op.i.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8, !dbg !1435
  %6 = ptrtoint ptr %d_op.i.i.i to i32, !dbg !1435
  call void @__asan_load4_noabort(i32 %6), !dbg !1435
  %7 = load ptr, ptr %d_op.i.i.i, align 8, !dbg !1435
  %d_real.i.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12, !dbg !1436
  %8 = ptrtoint ptr %d_real.i.i.i to i32, !dbg !1436
  call void @__asan_load4_noabort(i32 %8), !dbg !1436
  %9 = load ptr, ptr %d_real.i.i.i, align 16, !dbg !1436
  %call.i.i.i = tail call ptr %9(ptr noundef %1, ptr noundef null) #21, !dbg !1434
  br label %d_real_inode.exit.i, !dbg !1437

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1438
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1438
  %10 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !1438
  store i64 %10, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1438
  br label %d_real_inode.exit.i, !dbg !1439

d_real_inode.exit.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i.i ], [ %1, %if.else.i.i.i ], !dbg !1440
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8
  %11 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.107, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i.i, i32 0, i32 5, !dbg !1441
  %12 = ptrtoint ptr %d_inode.i.i.i to i32, !dbg !1441
  call void @__asan_load4_noabort(i32 %12), !dbg !1441
  %13 = load ptr, ptr %d_inode.i.i.i, align 8, !dbg !1441
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dyn_event_list to i32)), !dbg !1444
  %pos.053.i = load ptr, ptr @dyn_event_list, align 4, !dbg !1444
  %cmp.not54.i = icmp eq ptr %pos.053.i, @dyn_event_list, !dbg !1444
  br i1 %cmp.not54.i, label %d_real_inode.exit.i.if.end_crit_edge, label %for.body.lr.ph.i, !dbg !1444

d_real_inode.exit.i.if.end_crit_edge:             ; preds = %d_real_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1444
  br label %if.end, !dbg !1444

for.body.lr.ph.i:                                 ; preds = %d_real_inode.exit.i
  %offset.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 5
  %ref_ctr_offset.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 6
  br label %for.body.i, !dbg !1444

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.055.i = phi ptr [ %pos.053.i, %for.body.lr.ph.i ], [ %pos.0.i, %for.inc.i.for.body.i_crit_edge ]
  %gcov_ctr.i37.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %14 = add i64 %gcov_ctr.i37.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.88, align 8
  %ops.i.i = getelementptr inbounds %struct.dyn_event, ptr %pos.055.i, i32 0, i32 1, !dbg !1445
  %15 = ptrtoint ptr %ops.i.i to i32, !dbg !1445
  call void @__asan_load4_noabort(i32 %15), !dbg !1445
  %16 = load ptr, ptr %ops.i.i, align 4, !dbg !1445
  %cmp.i.i = icmp eq ptr %16, @trace_uprobe_ops, !dbg !1447
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge, !dbg !1444

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1444
  br label %for.inc.i, !dbg !1444

land.lhs.true.i:                                  ; preds = %for.body.i
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 1), align 8, !dbg !1444
  %17 = add i64 %gcov_ctr24.i, 1, !dbg !1444
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 1), align 8, !dbg !1444
  %gcov_ctr.i38.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %18 = add i64 %gcov_ctr.i38.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.89, align 8
  %tobool.not.i = icmp eq ptr %pos.055.i, null, !dbg !1444
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i, !dbg !1444

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1444
  br label %for.inc.i, !dbg !1444

if.then.i:                                        ; preds = %land.lhs.true.i
  %dentry5.i = getelementptr inbounds %struct.trace_uprobe, ptr %pos.055.i, i32 0, i32 2, i32 1, !dbg !1448
  %19 = ptrtoint ptr %dentry5.i to i32, !dbg !1448
  call void @__asan_load4_noabort(i32 %19), !dbg !1448
  %20 = load ptr, ptr %dentry5.i, align 4, !dbg !1448
  %gcov_ctr.i39.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %21 = add i64 %gcov_ctr.i39.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.106, align 8
  %22 = ptrtoint ptr %20 to i32, !dbg !1449
  call void @__asan_load4_noabort(i32 %22), !dbg !1449
  %23 = load i32, ptr %20, align 8, !dbg !1449
  %and.i.i40.i = and i32 %23, 67108864, !dbg !1449
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40.i), !dbg !1449
  %tobool.not.i.i41.i = icmp eq i32 %and.i.i40.i, 0, !dbg !1449
  br i1 %tobool.not.i.i41.i, label %if.else.i.i48.i, label %if.then.i.i46.i, !dbg !1449, !prof !194

if.then.i.i46.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1452
  %gcov_ctr.i.i42.i = load i64, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1452
  %24 = add i64 %gcov_ctr.i.i42.i, 1, !dbg !1452
  store i64 %24, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1452
  %d_op.i.i43.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 8, !dbg !1453
  %25 = ptrtoint ptr %d_op.i.i43.i to i32, !dbg !1453
  call void @__asan_load4_noabort(i32 %25), !dbg !1453
  %26 = load ptr, ptr %d_op.i.i43.i, align 8, !dbg !1453
  %d_real.i.i44.i = getelementptr inbounds %struct.dentry_operations, ptr %26, i32 0, i32 12, !dbg !1454
  %27 = ptrtoint ptr %d_real.i.i44.i to i32, !dbg !1454
  call void @__asan_load4_noabort(i32 %27), !dbg !1454
  %28 = load ptr, ptr %d_real.i.i44.i, align 16, !dbg !1454
  %call.i.i45.i = tail call ptr %28(ptr noundef %20, ptr noundef null) #21, !dbg !1452
  br label %d_real_inode.exit52.i, !dbg !1455

if.else.i.i48.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1456
  %gcov_ctr3.i.i47.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1456
  %29 = add i64 %gcov_ctr3.i.i47.i, 1, !dbg !1456
  store i64 %29, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1456
  br label %d_real_inode.exit52.i, !dbg !1457

d_real_inode.exit52.i:                            ; preds = %if.else.i.i48.i, %if.then.i.i46.i
  %retval.0.i.i49.i = phi ptr [ %call.i.i45.i, %if.then.i.i46.i ], [ %20, %if.else.i.i48.i ], !dbg !1458
  %gcov_ctr.i2.i50.i = load i64, ptr @__llvm_gcov_ctr.107, align 8
  %30 = add i64 %gcov_ctr.i2.i50.i, 1
  store i64 %30, ptr @__llvm_gcov_ctr.107, align 8
  %d_inode.i.i51.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i49.i, i32 0, i32 5, !dbg !1459
  %31 = ptrtoint ptr %d_inode.i.i51.i to i32, !dbg !1459
  call void @__asan_load4_noabort(i32 %31), !dbg !1459
  %32 = load ptr, ptr %d_inode.i.i51.i, align 8, !dbg !1459
  %cmp7.i = icmp eq ptr %13, %32, !dbg !1461
  br i1 %cmp7.i, label %land.lhs.true8.i, label %d_real_inode.exit52.i.if.end.i_crit_edge, !dbg !1462

d_real_inode.exit52.i.if.end.i_crit_edge:         ; preds = %d_real_inode.exit52.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1462
  br label %if.end.i, !dbg !1462

land.lhs.true8.i:                                 ; preds = %d_real_inode.exit52.i
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 2), align 16, !dbg !1463
  %33 = add i64 %gcov_ctr25.i, 1, !dbg !1463
  store i64 %33, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 2), align 16, !dbg !1463
  %34 = ptrtoint ptr %offset.i to i32, !dbg !1464
  call void @__asan_load4_noabort(i32 %34), !dbg !1464
  %35 = load i32, ptr %offset.i, align 4, !dbg !1464
  %offset9.i = getelementptr inbounds %struct.trace_uprobe, ptr %pos.055.i, i32 0, i32 5, !dbg !1465
  %36 = ptrtoint ptr %offset9.i to i32, !dbg !1465
  call void @__asan_load4_noabort(i32 %36), !dbg !1465
  %37 = load i32, ptr %offset9.i, align 4, !dbg !1465
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37), !dbg !1466
  %cmp10.i = icmp eq i32 %35, %37, !dbg !1466
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true8.i.if.end.i_crit_edge, !dbg !1467

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1467
  br label %if.end.i, !dbg !1467

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 3), align 8, !dbg !1468
  %38 = add i64 %gcov_ctr26.i, 1, !dbg !1468
  store i64 %38, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 3), align 8, !dbg !1468
  %39 = ptrtoint ptr %ref_ctr_offset.i to i32, !dbg !1469
  call void @__asan_load4_noabort(i32 %39), !dbg !1469
  %40 = load i32, ptr %ref_ctr_offset.i, align 4, !dbg !1469
  %ref_ctr_offset12.i = getelementptr inbounds %struct.trace_uprobe, ptr %pos.055.i, i32 0, i32 6, !dbg !1470
  %41 = ptrtoint ptr %ref_ctr_offset12.i to i32, !dbg !1470
  call void @__asan_load4_noabort(i32 %41), !dbg !1470
  %42 = load i32, ptr %ref_ctr_offset12.i, align 4, !dbg !1470
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42), !dbg !1471
  %cmp13.not.i = icmp eq i32 %40, %42, !dbg !1471
  br i1 %cmp13.not.i, label %land.lhs.true11.i.if.end.i_crit_edge, label %if.then, !dbg !1472

land.lhs.true11.i.if.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1472
  br label %if.end.i, !dbg !1472

if.end.i:                                         ; preds = %land.lhs.true11.i.if.end.i_crit_edge, %land.lhs.true8.i.if.end.i_crit_edge, %d_real_inode.exit52.i.if.end.i_crit_edge
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 5), align 8, !dbg !1473
  %43 = add i64 %gcov_ctr28.i, 1, !dbg !1473
  store i64 %43, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 5), align 8, !dbg !1473
  br label %for.inc.i, !dbg !1473

for.inc.i:                                        ; preds = %if.end.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %gcov_ctr29.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 6), align 16, !dbg !1444
  %44 = add i64 %gcov_ctr29.i, 1, !dbg !1444
  store i64 %44, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 6), align 16, !dbg !1444
  %45 = ptrtoint ptr %pos.055.i to i32, !dbg !1444
  call void @__asan_load4_noabort(i32 %45), !dbg !1444
  %pos.0.i = load ptr, ptr %pos.055.i, align 4, !dbg !1444
  %cmp.not.i = icmp eq ptr %pos.0.i, @dyn_event_list, !dbg !1444
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !1444, !llvm.loop !1474

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1444
  br label %for.body.i, !dbg !1444

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1444
  br label %if.end, !dbg !1444

if.then:                                          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1475
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 4), align 16, !dbg !1475
  %46 = add i64 %gcov_ctr27.i, 1, !dbg !1475
  store i64 %46, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 4), align 16, !dbg !1475
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #25, !dbg !1475
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.101, align 16, !dbg !1476
  %47 = add i64 %gcov_ctr, 1, !dbg !1476
  store i64 %47, ptr @__llvm_gcov_ctr.101, align 16, !dbg !1476
  br label %end, !dbg !1476

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %d_real_inode.exit.i.if.end_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.102, align 16, !dbg !1477
  %48 = add i64 %gcov_ctr.i, 1, !dbg !1477
  store i64 %48, ptr @__llvm_gcov_ctr.102, align 16, !dbg !1477
  %tp = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 8, !dbg !1478
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %49 = add i64 %gcov_ctr.i46, 1
  store i64 %49, ptr @__llvm_gcov_ctr.90, align 8
  %event.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 8, i32 1, !dbg !1479
  %50 = ptrtoint ptr %event.i to i32, !dbg !1479
  call void @__asan_load4_noabort(i32 %50), !dbg !1479
  %51 = load ptr, ptr %event.i, align 4, !dbg !1479
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %51, i32 0, i32 2, i32 8, !dbg !1481
  %52 = ptrtoint ptr %flags.i.i to i32, !dbg !1481
  call void @__asan_load4_noabort(i32 %52), !dbg !1481
  %53 = load i32, ptr %flags.i.i, align 4, !dbg !1481
  %and.i.i = and i32 %53, 16, !dbg !1483
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1483
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1483
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !1484

if.then.i.i:                                      ; preds = %if.end
  %54 = getelementptr inbounds %struct.trace_probe_event, ptr %51, i32 0, i32 2, i32 2, !dbg !1485
  %55 = ptrtoint ptr %54 to i32, !dbg !1485
  call void @__asan_load4_noabort(i32 %55), !dbg !1485
  %56 = load ptr, ptr %54, align 4, !dbg !1485
  %tobool1.not.i.i = icmp eq ptr %56, null, !dbg !1486
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !1486

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1487
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1487
  %57 = add i64 %gcov_ctr2.i.i, 1, !dbg !1487
  store i64 %57, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1487
  %58 = ptrtoint ptr %56 to i32, !dbg !1488
  call void @__asan_load4_noabort(i32 %58), !dbg !1488
  %59 = load ptr, ptr %56, align 4, !dbg !1488
  br label %trace_probe_name.exit, !dbg !1486

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1486
  %gcov_ctr.i.i47 = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1486
  %60 = add i64 %gcov_ctr.i.i47, 1, !dbg !1486
  store i64 %60, ptr @__llvm_gcov_ctr.42, align 16, !dbg !1486
  br label %trace_probe_name.exit, !dbg !1486

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1489
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1489
  %61 = add i64 %gcov_ctr3.i.i, 1, !dbg !1489
  store i64 %61, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !1489
  %62 = getelementptr inbounds %struct.trace_probe_event, ptr %51, i32 0, i32 2, i32 2, !dbg !1490
  %63 = ptrtoint ptr %62 to i32, !dbg !1490
  call void @__asan_load4_noabort(i32 %63), !dbg !1490
  %64 = load ptr, ptr %62, align 4, !dbg !1490
  br label %trace_probe_name.exit, !dbg !1491

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %64, %if.else.i.i ], [ %59, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !1492
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %65 = add i64 %gcov_ctr.i48, 1
  store i64 %65, ptr @__llvm_gcov_ctr.91, align 8
  %66 = ptrtoint ptr %event.i to i32, !dbg !1493
  call void @__asan_load4_noabort(i32 %66), !dbg !1493
  %67 = load ptr, ptr %event.i, align 4, !dbg !1493
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %67, i32 0, i32 2, i32 1, !dbg !1495
  %68 = ptrtoint ptr %class.i to i32, !dbg !1495
  call void @__asan_load4_noabort(i32 %68), !dbg !1495
  %69 = load ptr, ptr %class.i, align 4, !dbg !1495
  %70 = ptrtoint ptr %69 to i32, !dbg !1496
  call void @__asan_load4_noabort(i32 %70), !dbg !1496
  %71 = load ptr, ptr %69, align 4, !dbg !1496
  %call4 = tail call fastcc ptr @find_probe_event(ptr noundef %retval.0.i.i, ptr noundef %71), !dbg !1497
  %tobool5.not = icmp eq ptr %call4, null, !dbg !1498
  br i1 %tobool5.not, label %if.end14, label %if.then6, !dbg !1498

if.then6:                                         ; preds = %trace_probe_name.exit
  %gcov_ctr.i50 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 1, i32 1, !dbg !1499
  %72 = ptrtoint ptr %ret_handler.i to i32, !dbg !1499
  call void @__asan_load4_noabort(i32 %72), !dbg !1499
  %73 = load ptr, ptr %ret_handler.i, align 4, !dbg !1499
  %cmp.i = icmp ne ptr %73, null, !dbg !1501
  %74 = add i64 %gcov_ctr.i50, 2
  store i64 %74, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i52 = getelementptr inbounds %struct.trace_uprobe, ptr %call4, i32 0, i32 1, i32 1, !dbg !1502
  %75 = ptrtoint ptr %ret_handler.i52 to i32, !dbg !1502
  call void @__asan_load4_noabort(i32 %75), !dbg !1502
  %76 = load ptr, ptr %ret_handler.i52, align 4, !dbg !1502
  %cmp.i53 = icmp ne ptr %76, null, !dbg !1504
  %77 = xor i1 %cmp.i, %cmp.i53, !dbg !1505
  br i1 %77, label %if.then11, label %if.else, !dbg !1506

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1507
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 1), align 8, !dbg !1507
  %78 = add i64 %gcov_ctr28, 1, !dbg !1507
  store i64 %78, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 1), align 8, !dbg !1507
  tail call void @trace_probe_log_set_index(i32 noundef 0) #21, !dbg !1507
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 51) #21, !dbg !1508
  br label %end, !dbg !1509

if.else:                                          ; preds = %if.then6
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 2), align 16, !dbg !1510
  %79 = add i64 %gcov_ctr29, 1, !dbg !1510
  store i64 %79, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 2), align 16, !dbg !1510
  %tp1.i = getelementptr inbounds %struct.trace_uprobe, ptr %call4, i32 0, i32 8, !dbg !1511
  %call.i = tail call i32 @trace_probe_compare_arg_type(ptr noundef %tp, ptr noundef %tp1.i) #21, !dbg !1514
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1515
  %tobool.not.i54 = icmp eq i32 %call.i, 0, !dbg !1515
  br i1 %tobool.not.i54, label %if.end.i58, label %if.then.i56, !dbg !1515

if.then.i56:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1516
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.103, align 16, !dbg !1516
  %80 = add i64 %gcov_ctr.i55, 1, !dbg !1516
  store i64 %80, ptr @__llvm_gcov_ctr.103, align 16, !dbg !1516
  %add.i = add i32 %call.i, 1, !dbg !1517
  tail call void @trace_probe_log_set_index(i32 noundef %add.i) #21, !dbg !1518
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 52) #21, !dbg !1519
  br label %end, !dbg !1520

if.end.i58:                                       ; preds = %if.else
  %event.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %call4, i32 0, i32 8, i32 1, !dbg !1521
  %81 = ptrtoint ptr %event.i.i to i32, !dbg !1521
  call void @__asan_load4_noabort(i32 %81), !dbg !1521
  %82 = load ptr, ptr %event.i.i, align 4, !dbg !1521
  %83 = ptrtoint ptr %dentry.i to i32, !dbg !1524
  call void @__asan_load4_noabort(i32 %83), !dbg !1524
  %84 = load ptr, ptr %dentry.i, align 4, !dbg !1524
  %gcov_ctr.i.i.i57 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %85 = add i64 %gcov_ctr.i.i.i57, 1
  store i64 %85, ptr @__llvm_gcov_ctr.106, align 8
  %86 = ptrtoint ptr %84 to i32, !dbg !1525
  call void @__asan_load4_noabort(i32 %86), !dbg !1525
  %87 = load i32, ptr %84, align 8, !dbg !1525
  %and.i.i.i.i = and i32 %87, 67108864, !dbg !1525
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i), !dbg !1525
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0, !dbg !1525
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i, !dbg !1525, !prof !194

if.then.i.i.i.i:                                  ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1528
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1528
  %88 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !1528
  store i64 %88, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1528
  %d_op.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %84, i32 0, i32 8, !dbg !1529
  %89 = ptrtoint ptr %d_op.i.i.i.i to i32, !dbg !1529
  call void @__asan_load4_noabort(i32 %89), !dbg !1529
  %90 = load ptr, ptr %d_op.i.i.i.i, align 8, !dbg !1529
  %d_real.i.i.i.i = getelementptr inbounds %struct.dentry_operations, ptr %90, i32 0, i32 12, !dbg !1530
  %91 = ptrtoint ptr %d_real.i.i.i.i to i32, !dbg !1530
  call void @__asan_load4_noabort(i32 %91), !dbg !1530
  %92 = load ptr, ptr %d_real.i.i.i.i, align 16, !dbg !1530
  %call.i.i.i.i = tail call ptr %92(ptr noundef %84, ptr noundef null) #21, !dbg !1528
  br label %d_real_inode.exit.i.i, !dbg !1531

if.else.i.i.i.i:                                  ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1532
  %gcov_ctr3.i.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1532
  %93 = add i64 %gcov_ctr3.i.i.i.i, 1, !dbg !1532
  store i64 %93, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1532
  br label %d_real_inode.exit.i.i, !dbg !1533

d_real_inode.exit.i.i:                            ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %call.i.i.i.i, %if.then.i.i.i.i ], [ %84, %if.else.i.i.i.i ], !dbg !1534
  %gcov_ctr.i2.i.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8
  %94 = add i64 %gcov_ctr.i2.i.i.i, 1
  store i64 %94, ptr @__llvm_gcov_ctr.107, align 8
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i.i.i, i32 0, i32 5, !dbg !1535
  %95 = ptrtoint ptr %d_inode.i.i.i.i to i32, !dbg !1535
  call void @__asan_load4_noabort(i32 %95), !dbg !1535
  %96 = load ptr, ptr %d_inode.i.i.i.i, align 8, !dbg !1535
  %probes.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %82, i32 0, i32 4, !dbg !1537
  %97 = ptrtoint ptr %probes.i.i to i32, !dbg !1537
  call void @__asan_load4_noabort(i32 %97), !dbg !1537
  %.pn79.i.i = load ptr, ptr %probes.i.i, align 4, !dbg !1537
  %cmp.not80.i.i = icmp eq ptr %.pn79.i.i, %probes.i.i, !dbg !1537
  br i1 %cmp.not80.i.i, label %d_real_inode.exit.i.i.if.end4.i_crit_edge, label %for.body.lr.ph.i.i, !dbg !1537

d_real_inode.exit.i.i.if.end4.i_crit_edge:        ; preds = %d_real_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1537
  br label %if.end4.i, !dbg !1537

for.body.lr.ph.i.i:                               ; preds = %d_real_inode.exit.i.i
  %offset.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 5
  %args15.i.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 1
  br label %for.body.i.i, !dbg !1537

for.body.i.i:                                     ; preds = %for.inc26.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn81.i.i = phi ptr [ %.pn79.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc26.i.i.for.body.i.i_crit_edge ]
  %dentry4.i.i = getelementptr i8, ptr %.pn81.i.i, i32 -24, !dbg !1538
  %98 = ptrtoint ptr %dentry4.i.i to i32, !dbg !1538
  call void @__asan_load4_noabort(i32 %98), !dbg !1538
  %99 = load ptr, ptr %dentry4.i.i, align 4, !dbg !1538
  %gcov_ctr.i56.i.i = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %100 = add i64 %gcov_ctr.i56.i.i, 1
  store i64 %100, ptr @__llvm_gcov_ctr.106, align 8
  %101 = ptrtoint ptr %99 to i32, !dbg !1539
  call void @__asan_load4_noabort(i32 %101), !dbg !1539
  %102 = load i32, ptr %99, align 8, !dbg !1539
  %and.i.i57.i.i = and i32 %102, 67108864, !dbg !1539
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i57.i.i), !dbg !1539
  %tobool.not.i.i58.i.i = icmp eq i32 %and.i.i57.i.i, 0, !dbg !1539
  br i1 %tobool.not.i.i58.i.i, label %if.else.i.i65.i.i, label %if.then.i.i63.i.i, !dbg !1539, !prof !194

if.then.i.i63.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1542
  %gcov_ctr.i.i59.i.i = load i64, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1542
  %103 = add i64 %gcov_ctr.i.i59.i.i, 1, !dbg !1542
  store i64 %103, ptr @__llvm_gcov_ctr.108, align 8, !dbg !1542
  %d_op.i.i60.i.i = getelementptr inbounds %struct.dentry, ptr %99, i32 0, i32 8, !dbg !1543
  %104 = ptrtoint ptr %d_op.i.i60.i.i to i32, !dbg !1543
  call void @__asan_load4_noabort(i32 %104), !dbg !1543
  %105 = load ptr, ptr %d_op.i.i60.i.i, align 8, !dbg !1543
  %d_real.i.i61.i.i = getelementptr inbounds %struct.dentry_operations, ptr %105, i32 0, i32 12, !dbg !1544
  %106 = ptrtoint ptr %d_real.i.i61.i.i to i32, !dbg !1544
  call void @__asan_load4_noabort(i32 %106), !dbg !1544
  %107 = load ptr, ptr %d_real.i.i61.i.i, align 16, !dbg !1544
  %call.i.i62.i.i = tail call ptr %107(ptr noundef %99, ptr noundef null) #21, !dbg !1542
  br label %d_real_inode.exit69.i.i, !dbg !1545

if.else.i.i65.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1546
  %gcov_ctr3.i.i64.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1546
  %108 = add i64 %gcov_ctr3.i.i64.i.i, 1, !dbg !1546
  store i64 %108, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !1546
  br label %d_real_inode.exit69.i.i, !dbg !1547

d_real_inode.exit69.i.i:                          ; preds = %if.else.i.i65.i.i, %if.then.i.i63.i.i
  %retval.0.i.i66.i.i = phi ptr [ %call.i.i62.i.i, %if.then.i.i63.i.i ], [ %99, %if.else.i.i65.i.i ], !dbg !1548
  %gcov_ctr.i2.i67.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8
  %109 = add i64 %gcov_ctr.i2.i67.i.i, 1
  store i64 %109, ptr @__llvm_gcov_ctr.107, align 8
  %d_inode.i.i68.i.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i66.i.i, i32 0, i32 5, !dbg !1549
  %110 = ptrtoint ptr %d_inode.i.i68.i.i to i32, !dbg !1549
  call void @__asan_load4_noabort(i32 %110), !dbg !1549
  %111 = load ptr, ptr %d_inode.i.i68.i.i, align 8, !dbg !1549
  %cmp6.not.i.i = icmp eq ptr %96, %111, !dbg !1551
  br i1 %cmp6.not.i.i, label %lor.lhs.false.i.i, label %d_real_inode.exit69.i.i.for.inc26.i.i_crit_edge, !dbg !1552

d_real_inode.exit69.i.i.for.inc26.i.i_crit_edge:  ; preds = %d_real_inode.exit69.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1552
  br label %for.inc26.i.i, !dbg !1552

lor.lhs.false.i.i:                                ; preds = %d_real_inode.exit69.i.i
  %gcov_ctr36.i.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 1), align 8, !dbg !1553
  %112 = add i64 %gcov_ctr36.i.i, 1, !dbg !1553
  store i64 %112, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 1), align 8, !dbg !1553
  %113 = ptrtoint ptr %offset.i.i to i32, !dbg !1554
  call void @__asan_load4_noabort(i32 %113), !dbg !1554
  %114 = load i32, ptr %offset.i.i, align 4, !dbg !1554
  %offset7.i.i = getelementptr i8, ptr %.pn81.i.i, i32 -12, !dbg !1555
  %115 = ptrtoint ptr %offset7.i.i to i32, !dbg !1555
  call void @__asan_load4_noabort(i32 %115), !dbg !1555
  %116 = load i32, ptr %offset7.i.i, align 4, !dbg !1555
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116), !dbg !1556
  %cmp8.not.i.i = icmp eq i32 %114, %116, !dbg !1556
  br i1 %cmp8.not.i.i, label %for.cond9.preheader.i.i, label %lor.lhs.false.i.i.for.inc26.i.i_crit_edge, !dbg !1557

lor.lhs.false.i.i.for.inc26.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1557
  br label %for.inc26.i.i, !dbg !1557

for.cond9.preheader.i.i:                          ; preds = %lor.lhs.false.i.i
  %nr_args.i.i = getelementptr inbounds %struct.trace_probe, ptr %.pn81.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %nr_args.i.i to i32, !dbg !1558
  call void @__asan_load4_noabort(i32 %117), !dbg !1558
  %118 = load i32, ptr %nr_args.i.i, align 4, !dbg !1558
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118), !dbg !1559
  %cmp1177.not.i.i = icmp eq i32 %118, 0, !dbg !1559
  br i1 %cmp1177.not.i.i, label %for.cond9.preheader.i.i.for.end.i.i_crit_edge, label %for.cond9.preheader.i.i.for.body12.i.i_crit_edge, !dbg !1560

for.cond9.preheader.i.i.for.body12.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i
  br label %for.body12.i.i, !dbg !1560

for.cond9.preheader.i.i.for.end.i.i_crit_edge:    ; preds = %for.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1560
  br label %for.end.i.i, !dbg !1560

for.body12.i.i:                                   ; preds = %if.end20.i.i.for.body12.i.i_crit_edge, %for.cond9.preheader.i.i.for.body12.i.i_crit_edge
  %i.078.i.i = phi i32 [ %inc.i.i, %if.end20.i.i.for.body12.i.i_crit_edge ], [ 0, %for.cond9.preheader.i.i.for.body12.i.i_crit_edge ]
  %comm.i.i = getelementptr %struct.trace_probe, ptr %.pn81.i.i, i32 0, i32 4, i32 %i.078.i.i, i32 5, !dbg !1561
  %119 = ptrtoint ptr %comm.i.i to i32, !dbg !1561
  call void @__asan_load4_noabort(i32 %119), !dbg !1561
  %120 = load ptr, ptr %comm.i.i, align 4, !dbg !1561
  %arrayidx16.i.i = getelementptr [0 x %struct.probe_arg], ptr %args15.i.i, i32 0, i32 %i.078.i.i, !dbg !1562
  %comm17.i.i = getelementptr inbounds %struct.probe_arg, ptr %arrayidx16.i.i, i32 0, i32 5, !dbg !1563
  %121 = ptrtoint ptr %comm17.i.i to i32, !dbg !1563
  call void @__asan_load4_noabort(i32 %121), !dbg !1563
  %122 = load ptr, ptr %comm17.i.i, align 4, !dbg !1563
  %call18.i.i = tail call i32 @strcmp(ptr noundef %120, ptr noundef %122) #23, !dbg !1564
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i), !dbg !1564
  %tobool.not.i.i59 = icmp eq i32 %call18.i.i, 0, !dbg !1564
  br i1 %tobool.not.i.i59, label %if.end20.i.i, label %if.then19.i.i, !dbg !1564

if.then19.i.i:                                    ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1565
  %gcov_ctr39.i.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 4), align 16, !dbg !1565
  %123 = add i64 %gcov_ctr39.i.i, 1, !dbg !1565
  store i64 %123, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 4), align 16, !dbg !1565
  br label %for.end.i.i, !dbg !1565

if.end20.i.i:                                     ; preds = %for.body12.i.i
  %gcov_ctr38.i.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 3), align 8, !dbg !1566
  %124 = add i64 %gcov_ctr38.i.i, 1, !dbg !1566
  store i64 %124, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 3), align 8, !dbg !1566
  %inc.i.i = add nuw i32 %i.078.i.i, 1, !dbg !1567
  %125 = ptrtoint ptr %nr_args.i.i to i32, !dbg !1558
  call void @__asan_load4_noabort(i32 %125), !dbg !1558
  %126 = load i32, ptr %nr_args.i.i, align 4, !dbg !1558
  %cmp11.i.i = icmp ult i32 %inc.i.i, %126, !dbg !1559
  br i1 %cmp11.i.i, label %if.end20.i.i.for.body12.i.i_crit_edge, label %if.end20.i.i.for.end.i.i_crit_edge, !dbg !1560, !llvm.loop !1568

if.end20.i.i.for.end.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1560
  br label %for.end.i.i, !dbg !1560

if.end20.i.i.for.body12.i.i_crit_edge:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1560
  br label %for.body12.i.i, !dbg !1560

for.end.i.i:                                      ; preds = %if.end20.i.i.for.end.i.i_crit_edge, %if.then19.i.i, %for.cond9.preheader.i.i.for.end.i.i_crit_edge
  %i.073.i.i = phi i32 [ %i.078.i.i, %if.then19.i.i ], [ 0, %for.cond9.preheader.i.i.for.end.i.i_crit_edge ], [ %inc.i.i, %if.end20.i.i.for.end.i.i_crit_edge ]
  %127 = ptrtoint ptr %nr_args.i.i to i32, !dbg !1569
  call void @__asan_load4_noabort(i32 %127), !dbg !1569
  %128 = load i32, ptr %nr_args.i.i, align 4, !dbg !1569
  call void @__sanitizer_cov_trace_cmp4(i32 %i.073.i.i, i32 %128), !dbg !1570
  %cmp23.i.i = icmp eq i32 %i.073.i.i, %128, !dbg !1570
  br i1 %cmp23.i.i, label %if.then3.i, label %for.end.i.i.for.inc26.i.i_crit_edge, !dbg !1571

for.end.i.i.for.inc26.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1571
  br label %for.inc26.i.i, !dbg !1571

for.inc26.i.i:                                    ; preds = %for.end.i.i.for.inc26.i.i_crit_edge, %lor.lhs.false.i.i.for.inc26.i.i_crit_edge, %d_real_inode.exit69.i.i.for.inc26.i.i_crit_edge
  %.sink.i.i = phi ptr [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), %lor.lhs.false.i.i.for.inc26.i.i_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), %d_real_inode.exit69.i.i.for.inc26.i.i_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 6), %for.end.i.i.for.inc26.i.i_crit_edge ]
  %129 = ptrtoint ptr %.sink.i.i to i32, !dbg !1572
  call void @__asan_load8_noabort(i32 %129), !dbg !1572
  %gcov_ctr41.i.i = load i64, ptr %.sink.i.i, align 16, !dbg !1572
  %130 = add i64 %gcov_ctr41.i.i, 1, !dbg !1572
  store i64 %130, ptr %.sink.i.i, align 16, !dbg !1572
  %131 = ptrtoint ptr %.pn81.i.i to i32, !dbg !1537
  call void @__asan_load4_noabort(i32 %131), !dbg !1537
  %.pn.i.i = load ptr, ptr %.pn81.i.i, align 4, !dbg !1537
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %probes.i.i, !dbg !1537
  br i1 %cmp.not.i.i, label %for.inc26.i.i.if.end4.i_crit_edge, label %for.inc26.i.i.for.body.i.i_crit_edge, !dbg !1537, !llvm.loop !1573

for.inc26.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc26.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1537
  br label %for.body.i.i, !dbg !1537

for.inc26.i.i.if.end4.i_crit_edge:                ; preds = %for.inc26.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1537
  br label %if.end4.i, !dbg !1537

if.then3.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1575
  %gcov_ctr40.i.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 5), align 8, !dbg !1575
  %132 = add i64 %gcov_ctr40.i.i, 1, !dbg !1575
  store i64 %132, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 5), align 8, !dbg !1575
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !1576
  %133 = add i64 %gcov_ctr14.i, 1, !dbg !1576
  store i64 %133, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !1576
  tail call void @trace_probe_log_set_index(i32 noundef 0) #21, !dbg !1576
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 53) #21, !dbg !1577
  br label %end, !dbg !1578

if.end4.i:                                        ; preds = %for.inc26.i.i.if.end4.i_crit_edge, %d_real_inode.exit.i.i.if.end4.i_crit_edge
  %gcov_ctr.i.i60 = load i64, ptr @__llvm_gcov_ctr.109, align 16, !dbg !1579
  %134 = add i64 %gcov_ctr.i.i60, 1, !dbg !1579
  store i64 %134, ptr @__llvm_gcov_ctr.109, align 16, !dbg !1579
  %call7.i = tail call i32 @trace_probe_append(ptr noundef %tp, ptr noundef %tp1.i) #21, !dbg !1580
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i), !dbg !1581
  %tobool8.not.i = icmp eq i32 %call7.i, 0, !dbg !1581
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end4.i.if.end13.i_crit_edge, !dbg !1582

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1582
  br label %if.end13.i, !dbg !1582

if.then9.i:                                       ; preds = %if.end4.i
  %gcov_ctr15.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 2), align 16, !dbg !1583
  %135 = add i64 %gcov_ctr15.i, 1, !dbg !1583
  store i64 %135, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 2), align 16, !dbg !1583
  %gcov_ctr.i26.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %136 = add i64 %gcov_ctr.i26.i, 1
  store i64 %136, ptr @__llvm_gcov_ctr.54, align 8
  %137 = ptrtoint ptr %event.i to i32, !dbg !1584
  call void @__asan_load4_noabort(i32 %137), !dbg !1584
  %138 = load ptr, ptr %event.i, align 4, !dbg !1584
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1586
  %139 = load i32, ptr @debug_locks, align 4, !dbg !1586
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139), !dbg !1586
  %tobool.not.i28.i = icmp eq i32 %139, 0, !dbg !1586
  br i1 %tobool.not.i28.i, label %if.then9.i.if.end.i.i_crit_edge, label %land.rhs.i.i, !dbg !1586

if.then9.i.if.end.i.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1586
  br label %if.end.i.i, !dbg !1586

land.rhs.i.i:                                     ; preds = %if.then9.i
  %gcov_ctr.i29.i = load i64, ptr @__llvm_gcov_ctr.105, align 16, !dbg !1586
  %140 = add i64 %gcov_ctr.i29.i, 1, !dbg !1586
  store i64 %140, ptr @__llvm_gcov_ctr.105, align 16, !dbg !1586
  %gcov_ctr.i.i30.i = load i64, ptr @__llvm_gcov_ctr.110, align 8
  %141 = add i64 %gcov_ctr.i.i30.i, 1
  store i64 %141, ptr @__llvm_gcov_ctr.110, align 8
  %call.i.i.i61 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #21, !dbg !1589
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i61), !dbg !1586
  %cmp.not.i31.i = icmp eq i32 %call.i.i.i61, 0, !dbg !1586
  br i1 %cmp.not.i31.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !dbg !1586, !prof !154

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1586
  br label %if.end.i.i, !dbg !1586

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1586
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 82, i32 noundef 9, ptr noundef null) #21, !dbg !1586
  %gcov_ctr29.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 1), align 8, !dbg !1586
  %142 = add i64 %gcov_ctr29.i.i, 1, !dbg !1586
  store i64 %142, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 1), align 8, !dbg !1586
  br label %if.end.i.i, !dbg !1586

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then9.i.if.end.i.i_crit_edge
  %tobool25.not.i.i = icmp eq ptr %tu, null, !dbg !1591
  br i1 %tobool25.not.i.i, label %if.end.i.i.if.then27.i.i_crit_edge, label %lor.lhs.false.i32.i, !dbg !1592

if.end.i.i.if.then27.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1592
  br label %if.then27.i.i, !dbg !1592

lor.lhs.false.i32.i:                              ; preds = %if.end.i.i
  %gcov_ctr30.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 2), align 16, !dbg !1593
  %143 = add i64 %gcov_ctr30.i.i, 1, !dbg !1593
  store i64 %143, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 2), align 16, !dbg !1593
  %ops.i.i62 = getelementptr inbounds %struct.dyn_event, ptr %tu, i32 0, i32 1, !dbg !1594
  %144 = ptrtoint ptr %ops.i.i62 to i32, !dbg !1594
  call void @__asan_load4_noabort(i32 %144), !dbg !1594
  %145 = load ptr, ptr %ops.i.i62, align 4, !dbg !1594
  %tobool26.not.i.i = icmp eq ptr %145, null, !dbg !1593
  br i1 %tobool26.not.i.i, label %lor.lhs.false.i32.i.if.then27.i.i_crit_edge, label %if.end28.i.i, !dbg !1595

lor.lhs.false.i32.i.if.then27.i.i_crit_edge:      ; preds = %lor.lhs.false.i32.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1595
  br label %if.then27.i.i, !dbg !1595

if.then27.i.i:                                    ; preds = %lor.lhs.false.i32.i.if.then27.i.i_crit_edge, %if.end.i.i.if.then27.i.i_crit_edge
  %gcov_ctr32.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 4), align 16, !dbg !1596
  %146 = add i64 %gcov_ctr32.i.i, 1, !dbg !1596
  store i64 %146, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 4), align 16, !dbg !1596
  br label %if.end13.i, !dbg !1596

if.end28.i.i:                                     ; preds = %lor.lhs.false.i32.i
  %gcov_ctr31.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 3), align 8, !dbg !1597
  %147 = add i64 %gcov_ctr31.i.i, 1, !dbg !1597
  store i64 %147, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 3), align 8, !dbg !1597
  %flags.i.i63 = getelementptr inbounds %struct.trace_probe_event, ptr %138, i32 0, i32 2, i32 8, !dbg !1598
  %148 = ptrtoint ptr %flags.i.i63 to i32, !dbg !1599
  call void @__asan_load4_noabort(i32 %148), !dbg !1599
  %149 = load i32, ptr %flags.i.i63, align 4, !dbg !1599
  %or.i.i = or i32 %149, 32, !dbg !1599
  store i32 %or.i.i, ptr %flags.i.i63, align 4, !dbg !1599
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.111, align 8
  %150 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %150, ptr @__llvm_gcov_ctr.111, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1) to i32)), !dbg !1600
  %151 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4, !dbg !1600
  %call.i.i.i33.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tu, ptr noundef %151, ptr noundef nonnull @dyn_event_list) #21, !dbg !1603
  br i1 %call.i.i.i33.i, label %if.end.i.i.i.i, label %if.end28.i.i.list_add_tail.exit.i.i_crit_edge, !dbg !1606

if.end28.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1606
  br label %list_add_tail.exit.i.i, !dbg !1606

if.end.i.i.i.i:                                   ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1607
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1) to i32)), !dbg !1607
  store ptr %tu, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4, !dbg !1607
  %152 = ptrtoint ptr %tu to i32, !dbg !1608
  call void @__asan_store4_noabort(i32 %152), !dbg !1608
  store ptr @dyn_event_list, ptr %tu, align 4, !dbg !1608
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %tu, i32 0, i32 1, !dbg !1609
  %153 = ptrtoint ptr %prev3.i.i.i.i to i32, !dbg !1610
  call void @__asan_store4_noabort(i32 %153), !dbg !1610
  store ptr %151, ptr %prev3.i.i.i.i, align 4, !dbg !1610
  %154 = ptrtoint ptr %151 to i32, !dbg !1611
  call void @__asan_store4_noabort(i32 %154), !dbg !1611
  store volatile ptr %tu, ptr %151, align 4, !dbg !1611
  br label %list_add_tail.exit.i.i, !dbg !1611

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end28.i.i.list_add_tail.exit.i.i_crit_edge
  %__llvm_gcov_ctr.112.sink18.i.i.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), %if.end.i.i.i.i ], [ @__llvm_gcov_ctr.112, %if.end28.i.i.list_add_tail.exit.i.i_crit_edge ]
  %155 = ptrtoint ptr %__llvm_gcov_ctr.112.sink18.i.i.i.i to i32, !dbg !1612
  call void @__asan_load8_noabort(i32 %155), !dbg !1612
  %gcov_ctr.i.i.i34.i = load i64, ptr %__llvm_gcov_ctr.112.sink18.i.i.i.i, align 8, !dbg !1612
  %156 = add i64 %gcov_ctr.i.i.i34.i, 1, !dbg !1612
  store i64 %156, ptr %__llvm_gcov_ctr.112.sink18.i.i.i.i, align 8, !dbg !1612
  br label %if.end13.i, !dbg !1613

if.end13.i:                                       ; preds = %list_add_tail.exit.i.i, %if.then27.i.i, %if.end4.i.if.end13.i_crit_edge
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 3), align 8, !dbg !1614
  %157 = add i64 %gcov_ctr16.i, 1, !dbg !1614
  store i64 %157, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 3), align 8, !dbg !1614
  br label %end, !dbg !1615

if.end14:                                         ; preds = %trace_probe_name.exit
  %gcov_ctr.i65 = load i64, ptr @__llvm_gcov_ctr.104, align 8
  %158 = add i64 %gcov_ctr.i65, 1
  store i64 %158, ptr @__llvm_gcov_ctr.104, align 8
  %gcov_ctr.i.i66 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %159 = add i64 %gcov_ctr.i.i66, 1
  store i64 %159, ptr @__llvm_gcov_ctr.53, align 8
  %gcov_ctr.i.i.i67 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %160 = add i64 %gcov_ctr.i.i.i67, 1
  store i64 %160, ptr @__llvm_gcov_ctr.54, align 8
  %161 = ptrtoint ptr %event.i to i32, !dbg !1616
  call void @__asan_load4_noabort(i32 %161), !dbg !1616
  %162 = load ptr, ptr %event.i, align 4, !dbg !1616
  %funcs.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %162, i32 0, i32 2, i32 3, i32 3, !dbg !1621
  %163 = ptrtoint ptr %funcs.i.i to i32, !dbg !1622
  call void @__asan_store4_noabort(i32 %163), !dbg !1622
  store ptr @uprobe_funcs, ptr %funcs.i.i, align 4, !dbg !1622
  %class.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %162, i32 0, i32 2, i32 1, !dbg !1623
  %164 = ptrtoint ptr %class.i.i to i32, !dbg !1623
  call void @__asan_load4_noabort(i32 %164), !dbg !1623
  %165 = load ptr, ptr %class.i.i, align 4, !dbg !1623
  %fields_array.i.i = getelementptr inbounds %struct.trace_event_class, ptr %165, i32 0, i32 4, !dbg !1624
  %166 = ptrtoint ptr %fields_array.i.i to i32, !dbg !1625
  call void @__asan_store4_noabort(i32 %166), !dbg !1625
  store ptr @uprobe_fields_array, ptr %fields_array.i.i, align 4, !dbg !1625
  %flags.i.i68 = getelementptr inbounds %struct.trace_probe_event, ptr %162, i32 0, i32 2, i32 8, !dbg !1626
  %167 = ptrtoint ptr %flags.i.i68 to i32, !dbg !1627
  call void @__asan_store4_noabort(i32 %167), !dbg !1627
  store i32 130, ptr %flags.i.i68, align 4, !dbg !1627
  %168 = load ptr, ptr %class.i.i, align 4, !dbg !1628
  %reg.i.i = getelementptr inbounds %struct.trace_event_class, ptr %168, i32 0, i32 3, !dbg !1629
  %169 = ptrtoint ptr %reg.i.i to i32, !dbg !1630
  call void @__asan_store4_noabort(i32 %169), !dbg !1630
  store ptr @trace_uprobe_register, ptr %reg.i.i, align 4, !dbg !1630
  %call.i70 = tail call i32 @trace_probe_register_event_call(ptr noundef %tp) #21, !dbg !1631
  %170 = zext i32 %call.i70 to i64, !dbg !1632
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.208), !dbg !1632
  switch i32 %call.i70, label %if.else21 [
    i32 0, label %if.end24
    i32 -17, label %if.then20
  ], !dbg !1632

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1633
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 4), align 16, !dbg !1633
  %171 = add i64 %gcov_ctr31, 1, !dbg !1633
  store i64 %171, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 4), align 16, !dbg !1633
  tail call void @trace_probe_log_set_index(i32 noundef 0) #21, !dbg !1633
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 18) #21, !dbg !1634
  br label %end, !dbg !1635

if.else21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1636
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 3), align 8, !dbg !1636
  %172 = add i64 %gcov_ctr30, 1, !dbg !1636
  store i64 %172, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 3), align 8, !dbg !1636
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call.i70) #25, !dbg !1636
  br label %end

if.end24:                                         ; preds = %if.end14
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 5), align 8, !dbg !1637
  %173 = add i64 %gcov_ctr32, 1, !dbg !1637
  store i64 %173, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 5), align 8, !dbg !1637
  %gcov_ctr.i71 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %174 = add i64 %gcov_ctr.i71, 1
  store i64 %174, ptr @__llvm_gcov_ctr.54, align 8
  %175 = ptrtoint ptr %event.i to i32, !dbg !1638
  call void @__asan_load4_noabort(i32 %175), !dbg !1638
  %176 = load ptr, ptr %event.i, align 4, !dbg !1638
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1640
  %177 = load i32, ptr @debug_locks, align 4, !dbg !1640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177), !dbg !1640
  %tobool.not.i74 = icmp eq i32 %177, 0, !dbg !1640
  br i1 %tobool.not.i74, label %if.end24.if.end.i79_crit_edge, label %land.rhs.i, !dbg !1640

if.end24.if.end.i79_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1640
  br label %if.end.i79, !dbg !1640

land.rhs.i:                                       ; preds = %if.end24
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.105, align 16, !dbg !1640
  %178 = add i64 %gcov_ctr.i75, 1, !dbg !1640
  store i64 %178, ptr @__llvm_gcov_ctr.105, align 16, !dbg !1640
  %gcov_ctr.i.i76 = load i64, ptr @__llvm_gcov_ctr.110, align 8
  %179 = add i64 %gcov_ctr.i.i76, 1
  store i64 %179, ptr @__llvm_gcov_ctr.110, align 8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #21, !dbg !1642
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !1640
  %cmp.not.i77 = icmp eq i32 %call.i.i, 0, !dbg !1640
  br i1 %cmp.not.i77, label %do.end.i, label %land.rhs.i.if.end.i79_crit_edge, !dbg !1640, !prof !154

land.rhs.i.if.end.i79_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1640
  br label %if.end.i79, !dbg !1640

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1640
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 82, i32 noundef 9, ptr noundef null) #21, !dbg !1640
  %gcov_ctr29.i78 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 1), align 8, !dbg !1640
  %180 = add i64 %gcov_ctr29.i78, 1, !dbg !1640
  store i64 %180, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 1), align 8, !dbg !1640
  br label %if.end.i79, !dbg !1640

if.end.i79:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i79_crit_edge, %if.end24.if.end.i79_crit_edge
  %tobool25.not.i = icmp eq ptr %tu, null, !dbg !1644
  br i1 %tobool25.not.i, label %if.end.i79.if.then27.i_crit_edge, label %lor.lhs.false.i, !dbg !1645

if.end.i79.if.then27.i_crit_edge:                 ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1645
  br label %if.then27.i, !dbg !1645

lor.lhs.false.i:                                  ; preds = %if.end.i79
  %gcov_ctr30.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 2), align 16, !dbg !1646
  %181 = add i64 %gcov_ctr30.i, 1, !dbg !1646
  store i64 %181, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 2), align 16, !dbg !1646
  %ops.i = getelementptr inbounds %struct.dyn_event, ptr %tu, i32 0, i32 1, !dbg !1647
  %182 = ptrtoint ptr %ops.i to i32, !dbg !1647
  call void @__asan_load4_noabort(i32 %182), !dbg !1647
  %183 = load ptr, ptr %ops.i, align 4, !dbg !1647
  %tobool26.not.i = icmp eq ptr %183, null, !dbg !1646
  br i1 %tobool26.not.i, label %lor.lhs.false.i.if.then27.i_crit_edge, label %if.end28.i, !dbg !1648

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1648
  br label %if.then27.i, !dbg !1648

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %if.end.i79.if.then27.i_crit_edge
  %gcov_ctr32.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 4), align 16, !dbg !1649
  %184 = add i64 %gcov_ctr32.i, 1, !dbg !1649
  store i64 %184, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 4), align 16, !dbg !1649
  br label %end, !dbg !1649

if.end28.i:                                       ; preds = %lor.lhs.false.i
  %gcov_ctr31.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 3), align 8, !dbg !1650
  %185 = add i64 %gcov_ctr31.i, 1, !dbg !1650
  store i64 %185, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.105, i32 0, i32 3), align 8, !dbg !1650
  %flags.i = getelementptr inbounds %struct.trace_probe_event, ptr %176, i32 0, i32 2, i32 8, !dbg !1651
  %186 = ptrtoint ptr %flags.i to i32, !dbg !1652
  call void @__asan_load4_noabort(i32 %186), !dbg !1652
  %187 = load i32, ptr %flags.i, align 4, !dbg !1652
  %or.i = or i32 %187, 32, !dbg !1652
  store i32 %or.i, ptr %flags.i, align 4, !dbg !1652
  %gcov_ctr.i1.i = load i64, ptr @__llvm_gcov_ctr.111, align 8
  %188 = add i64 %gcov_ctr.i1.i, 1
  store i64 %188, ptr @__llvm_gcov_ctr.111, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1) to i32)), !dbg !1653
  %189 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4, !dbg !1653
  %call.i.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tu, ptr noundef %189, ptr noundef nonnull @dyn_event_list) #21, !dbg !1655
  br i1 %call.i.i.i80, label %if.end.i.i.i, label %if.end28.i.list_add_tail.exit.i_crit_edge, !dbg !1657

if.end28.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1657
  br label %list_add_tail.exit.i, !dbg !1657

if.end.i.i.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1658
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1) to i32)), !dbg !1658
  store ptr %tu, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4, !dbg !1658
  %190 = ptrtoint ptr %tu to i32, !dbg !1659
  call void @__asan_store4_noabort(i32 %190), !dbg !1659
  store ptr @dyn_event_list, ptr %tu, align 4, !dbg !1659
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %tu, i32 0, i32 1, !dbg !1660
  %191 = ptrtoint ptr %prev3.i.i.i to i32, !dbg !1661
  call void @__asan_store4_noabort(i32 %191), !dbg !1661
  store ptr %189, ptr %prev3.i.i.i, align 4, !dbg !1661
  %192 = ptrtoint ptr %189 to i32, !dbg !1662
  call void @__asan_store4_noabort(i32 %192), !dbg !1662
  store volatile ptr %tu, ptr %189, align 4, !dbg !1662
  br label %list_add_tail.exit.i, !dbg !1662

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end28.i.list_add_tail.exit.i_crit_edge
  %__llvm_gcov_ctr.112.sink18.i.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), %if.end.i.i.i ], [ @__llvm_gcov_ctr.112, %if.end28.i.list_add_tail.exit.i_crit_edge ]
  %193 = ptrtoint ptr %__llvm_gcov_ctr.112.sink18.i.i.i to i32, !dbg !1663
  call void @__asan_load8_noabort(i32 %193), !dbg !1663
  %gcov_ctr.i.i.i81 = load i64, ptr %__llvm_gcov_ctr.112.sink18.i.i.i, align 8, !dbg !1663
  %194 = add i64 %gcov_ctr.i.i.i81, 1, !dbg !1663
  store i64 %194, ptr %__llvm_gcov_ctr.112.sink18.i.i.i, align 8, !dbg !1663
  br label %end, !dbg !1664

end:                                              ; preds = %list_add_tail.exit.i, %if.then27.i, %if.else21, %if.then20, %if.end13.i, %if.then3.i, %if.then.i56, %if.then11, %if.then
  %ret.0 = phi i32 [ -22, %if.then ], [ -17, %if.then11 ], [ -17, %if.then20 ], [ %call.i70, %if.else21 ], [ -17, %if.then.i56 ], [ -17, %if.then3.i ], [ %call7.i, %if.end13.i ], [ 0, %if.then27.i ], [ 0, %list_add_tail.exit.i ], !dbg !1665
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #21, !dbg !1666
  ret i32 %ret.0, !dbg !1667
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_compare_arg_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_register_event_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_busy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_unlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_remove_event_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_probe_match_command_args(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uprobe_dispatcher(ptr noundef %con, ptr noundef %regs) #0 align 64 !dbg !1668 {
entry:
  %udd = alloca %struct.uprobe_dispatch_data, align 4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1669
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %udd) #21, !dbg !1670
  %0 = getelementptr inbounds %struct.uprobe_dispatch_data, ptr %udd, i32 0, i32 1, !dbg !1671
  %add.ptr = getelementptr i8, ptr %con, i32 -12, !dbg !1672
  %nhit = getelementptr i8, ptr %con, i32 40, !dbg !1673
  %1 = ptrtoint ptr %nhit to i32, !dbg !1674
  call void @__asan_load4_noabort(i32 %1), !dbg !1674
  %2 = load i32, ptr %nhit, align 4, !dbg !1674
  %inc = add i32 %2, 1, !dbg !1674
  store i32 %inc, ptr %nhit, align 4, !dbg !1674
  %3 = ptrtoint ptr %udd to i32, !dbg !1675
  call void @__asan_store4_noabort(i32 %3), !dbg !1675
  store ptr %add.ptr, ptr %udd, align 4, !dbg !1675
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15, !dbg !1676
  %4 = ptrtoint ptr %arrayidx to i32, !dbg !1676
  call void @__asan_load4_noabort(i32 %4), !dbg !1676
  %5 = load i32, ptr %arrayidx, align 4, !dbg !1676
  %6 = ptrtoint ptr %0 to i32, !dbg !1677
  call void @__asan_store4_noabort(i32 %6), !dbg !1677
  store i32 %5, ptr %0, align 4, !dbg !1677
  %7 = ptrtoint ptr %udd to i32, !dbg !1678
  %gcov_ctr.i105 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1679
  %8 = add i64 %gcov_ctr.i105, 1, !dbg !1679
  store i64 %8, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1679
  %9 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !1679
  %and.i106 = and i32 %9, -16384, !dbg !1681
  %10 = inttoptr i32 %and.i106 to ptr, !dbg !1682
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2, !dbg !1683
  %11 = ptrtoint ptr %task to i32, !dbg !1683
  call void @__asan_load4_noabort(i32 %11), !dbg !1683
  %12 = load ptr, ptr %task, align 8, !dbg !1683
  %utask = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 208, !dbg !1684
  %13 = ptrtoint ptr %utask to i32, !dbg !1684
  call void @__asan_load4_noabort(i32 %13), !dbg !1684
  %14 = load ptr, ptr %utask, align 16, !dbg !1684
  %vaddr = getelementptr inbounds %struct.uprobe_task, ptr %14, i32 0, i32 1, i32 0, i32 1, !dbg !1685
  %15 = ptrtoint ptr %vaddr to i32, !dbg !1686
  call void @__asan_store4_noabort(i32 %15), !dbg !1686
  store i32 %7, ptr %vaddr, align 4, !dbg !1686
  %16 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !1687
  %tobool.not = icmp eq ptr %16, null, !dbg !1687
  br i1 %tobool.not, label %land.rhs, label %if.end41, !dbg !1687

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.134, align 16, !dbg !1687
  %17 = add i64 %gcov_ctr, 1, !dbg !1687
  store i64 %17, ptr @__llvm_gcov_ctr.134, align 16, !dbg !1687
  %.b89 = load i1, ptr @uprobe_dispatcher.__already_done, align 1, !dbg !1687
  br i1 %.b89, label %land.rhs.if.then40_crit_edge, label %if.then, !dbg !1687, !prof !194

land.rhs.if.then40_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1687
  br label %if.then40, !dbg !1687

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1687
  store i1 true, ptr @uprobe_dispatcher.__already_done, align 1, !dbg !1687
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1488, i32 noundef 9, ptr noundef null) #21, !dbg !1687
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !1687
  %18 = add i64 %gcov_ctr62, 1, !dbg !1687
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !1687
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !1687
  %19 = add i64 %gcov_ctr63, 1, !dbg !1687
  store i64 %19, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !1687
  br label %if.then40, !dbg !1687

if.then40:                                        ; preds = %if.then, %land.rhs.if.then40_crit_edge
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 4), align 16, !dbg !1688
  %20 = add i64 %gcov_ctr65, 1, !dbg !1688
  store i64 %20, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 4), align 16, !dbg !1688
  br label %cleanup, !dbg !1688

if.end41:                                         ; preds = %entry
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 3), align 8, !dbg !1689
  %21 = add i64 %gcov_ctr64, 1, !dbg !1689
  store i64 %21, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 3), align 8, !dbg !1689
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.145, align 16
  %22 = add i64 %gcov_ctr.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.145, align 16
  %nr_args.i = getelementptr i8, ptr %con, i32 60
  %23 = ptrtoint ptr %nr_args.i to i32, !dbg !1690
  call void @__asan_load4_noabort(i32 %23), !dbg !1690
  %24 = load i32, ptr %nr_args.i, align 4, !dbg !1690
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24), !dbg !1693
  %cmp15.not.i = icmp eq i32 %24, 0, !dbg !1693
  br i1 %cmp15.not.i, label %if.end41.__get_data_size.exit_crit_edge, label %for.body.lr.ph.i, !dbg !1694

if.end41.__get_data_size.exit_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1694
  br label %__get_data_size.exit, !dbg !1694

for.body.lr.ph.i:                                 ; preds = %if.end41
  %args.i = getelementptr i8, ptr %con, i32 64
  br label %for.body.i, !dbg !1694

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %dynamic.i = getelementptr %struct.probe_arg, ptr %args.i, i32 %i.016.i, i32 1, !dbg !1695
  %25 = ptrtoint ptr %dynamic.i to i32, !dbg !1695
  call void @__asan_load1_noabort(i32 %25), !dbg !1695
  %26 = load i8, ptr %dynamic.i, align 4, !dbg !1695, !range !1696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26), !dbg !1695
  %tobool.not.i = icmp eq i8 %26, 0, !dbg !1695
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i, !dbg !1695, !prof !194

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1695
  br label %for.inc.i, !dbg !1695

if.then.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.probe_arg, ptr %args.i, i32 %i.016.i, !dbg !1697
  %27 = ptrtoint ptr %add.ptr.i to i32, !dbg !1698
  call void @__asan_load4_noabort(i32 %27), !dbg !1698
  %28 = load ptr, ptr %add.ptr.i, align 4, !dbg !1698
  %call.i = call i32 @process_fetch_insn(ptr noundef %28, ptr noundef %regs, ptr noundef null, ptr noundef null) #21, !dbg !1699
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1700
  %cmp3.i = icmp sgt i32 %call.i, 0, !dbg !1700
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge, !dbg !1701

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1701
  br label %if.end.i, !dbg !1701

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1702
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1702
  %29 = add i64 %gcov_ctr6.i, 1, !dbg !1702
  store i64 %29, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1702
  %add.i = add i32 %call.i, %ret.018.i, !dbg !1703
  br label %if.end.i, !dbg !1704

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %ret.1.i = phi i32 [ %add.i, %if.then4.i ], [ %ret.018.i, %if.then.i.if.end.i_crit_edge ], !dbg !1705
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !1706
  %30 = add i64 %gcov_ctr7.i, 1, !dbg !1706
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !1706
  br label %for.inc.i, !dbg !1706

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %if.end.i ], [ %ret.018.i, %for.body.i.for.inc.i_crit_edge ], !dbg !1705
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 3), align 8, !dbg !1707
  %31 = add i64 %gcov_ctr8.i, 1, !dbg !1707
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 3), align 8, !dbg !1707
  %inc.i = add nuw i32 %i.016.i, 1, !dbg !1707
  %32 = ptrtoint ptr %nr_args.i to i32, !dbg !1690
  call void @__asan_load4_noabort(i32 %32), !dbg !1690
  %33 = load i32, ptr %nr_args.i, align 4, !dbg !1690
  %cmp.i = icmp ult i32 %inc.i, %33, !dbg !1693
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.__get_data_size.exit_crit_edge, !dbg !1694, !llvm.loop !1708

for.inc.i.__get_data_size.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1694
  br label %__get_data_size.exit, !dbg !1694

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1694
  br label %for.body.i, !dbg !1694

__get_data_size.exit:                             ; preds = %for.inc.i.__get_data_size.exit_crit_edge, %if.end41.__get_data_size.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end41.__get_data_size.exit_crit_edge ], [ %ret.2.i, %for.inc.i.__get_data_size.exit_crit_edge ], !dbg !1705
  %gcov_ctr.i107 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %34 = add i64 %gcov_ctr.i107, 1
  store i64 %34, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr i8, ptr %con, i32 4, !dbg !1710
  %35 = ptrtoint ptr %ret_handler.i to i32, !dbg !1710
  call void @__asan_load4_noabort(i32 %35), !dbg !1710
  %36 = load ptr, ptr %ret_handler.i, align 4, !dbg !1710
  %cmp.i108.not = icmp eq ptr %36, null, !dbg !1712
  %add.neg = select i1 %cmp.i108.not, i32 -12, i32 -16, !dbg !1713
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1714
  %37 = add i64 %gcov_ctr.i.i, 1, !dbg !1714
  store i64 %37, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1714
  %38 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !1714
  %and.i.i = and i32 %38, -16384, !dbg !1718
  %39 = inttoptr i32 %and.i.i to ptr, !dbg !1719
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3, !dbg !1720
  %40 = ptrtoint ptr %cpu1.i to i32, !dbg !1720
  call void @__asan_load4_noabort(i32 %40), !dbg !1720
  %41 = load i32, ptr %cpu1.i, align 4, !dbg !1720
  %gcov_ctr.i109 = load i64, ptr @__llvm_gcov_ctr.146, align 8, !dbg !1721
  %42 = add i64 %gcov_ctr.i109, 1, !dbg !1721
  store i64 %42, ptr @__llvm_gcov_ctr.146, align 8, !dbg !1721
  %43 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !1721
  %44 = ptrtoint ptr %43 to i32, !dbg !1721
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41, !dbg !1721
  %45 = ptrtoint ptr %arrayidx.i to i32, !dbg !1721
  call void @__asan_load4_noabort(i32 %45), !dbg !1721
  %46 = load i32, ptr %arrayidx.i, align 4, !dbg !1721
  %add.i110 = add i32 %46, %44, !dbg !1721
  %47 = inttoptr i32 %add.i110 to ptr, !dbg !1721
  call void @mutex_lock_nested(ptr noundef %47, i32 noundef 0) #21, !dbg !1722
  %buf = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %47, i32 0, i32 1, !dbg !1723
  %48 = ptrtoint ptr %buf to i32, !dbg !1723
  call void @__asan_load4_noabort(i32 %48), !dbg !1723
  %49 = load ptr, ptr %buf, align 4, !dbg !1723
  %gcov_ctr.i91 = load i64, ptr @__llvm_gcov_ctr.147, align 16
  %50 = add i64 %gcov_ctr.i91, 1
  store i64 %50, ptr @__llvm_gcov_ctr.147, align 16
  %add.ptr.i92 = getelementptr i8, ptr %49, i32 %add.neg, !dbg !1724
  %51 = ptrtoint ptr %nr_args.i to i32, !dbg !1727
  call void @__asan_load4_noabort(i32 %51), !dbg !1727
  %52 = load i32, ptr %nr_args.i, align 4, !dbg !1727
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52), !dbg !1728
  %cmp45.not.i = icmp eq i32 %52, 0, !dbg !1728
  br i1 %cmp45.not.i, label %__get_data_size.exit.store_trace_args.exit_crit_edge, label %for.body.lr.ph.i95, !dbg !1729

__get_data_size.exit.store_trace_args.exit_crit_edge: ; preds = %__get_data_size.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1729
  br label %store_trace_args.exit, !dbg !1729

for.body.lr.ph.i95:                               ; preds = %__get_data_size.exit
  %size.i = getelementptr i8, ptr %con, i32 56, !dbg !1730
  %53 = ptrtoint ptr %size.i to i32, !dbg !1730
  call void @__asan_load4_noabort(i32 %53), !dbg !1730
  %54 = load i32, ptr %size.i, align 4, !dbg !1730
  %add.ptr1.i = getelementptr i8, ptr %49, i32 %54, !dbg !1731
  %args.i94 = getelementptr i8, ptr %con, i32 64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i92 to i32
  br label %for.body.i98, !dbg !1729

for.body.i98:                                     ; preds = %for.inc.i104.for.body.i98_crit_edge, %for.body.lr.ph.i95
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i95 ], [ %inc.i102, %for.inc.i104.for.body.i98_crit_edge ]
  %dyndata.047.i = phi ptr [ %add.ptr1.i, %for.body.lr.ph.i95 ], [ %dyndata.1.i, %for.inc.i104.for.body.i98_crit_edge ]
  %maxlen.addr.046.i = phi i32 [ %ret.0.lcssa.i, %for.body.lr.ph.i95 ], [ %maxlen.addr.1.i, %for.inc.i104.for.body.i98_crit_edge ]
  %add.ptr2.i = getelementptr %struct.probe_arg, ptr %args.i94, i32 %i.048.i, !dbg !1732
  %offset.i = getelementptr %struct.probe_arg, ptr %args.i94, i32 %i.048.i, i32 2, !dbg !1733
  %55 = ptrtoint ptr %offset.i to i32, !dbg !1733
  call void @__asan_load4_noabort(i32 %55), !dbg !1733
  %56 = load i32, ptr %offset.i, align 4, !dbg !1733
  %add.ptr3.i = getelementptr i8, ptr %49, i32 %56, !dbg !1734
  %dynamic.i96 = getelementptr %struct.probe_arg, ptr %args.i94, i32 %i.048.i, i32 1, !dbg !1735
  %57 = ptrtoint ptr %dynamic.i96 to i32, !dbg !1735
  call void @__asan_load1_noabort(i32 %57), !dbg !1735
  %58 = load i8, ptr %dynamic.i96, align 4, !dbg !1735, !range !1696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58), !dbg !1735
  %tobool.not.i97 = icmp eq i8 %58, 0, !dbg !1735
  br i1 %tobool.not.i97, label %for.body.i98.if.end.i101_crit_edge, label %if.then.i99, !dbg !1735, !prof !194

for.body.i98.if.end.i101_crit_edge:               ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1735
  br label %if.end.i101, !dbg !1735

if.then.i99:                                      ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1736
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !1736
  %59 = add i64 %gcov_ctr23.i, 1, !dbg !1736
  store i64 %59, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !1736
  %shl.i = shl i32 %maxlen.addr.046.i, 16, !dbg !1736
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dyndata.047.i to i32, !dbg !1736
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1736
  %and.i = and i32 %sub.ptr.sub.i, 65535, !dbg !1736
  %or.i = or i32 %and.i, %shl.i, !dbg !1736
  %60 = ptrtoint ptr %add.ptr3.i to i32, !dbg !1737
  call void @__asan_store4_noabort(i32 %60), !dbg !1737
  store i32 %or.i, ptr %add.ptr3.i, align 4, !dbg !1737
  br label %if.end.i101, !dbg !1738

if.end.i101:                                      ; preds = %if.then.i99, %for.body.i98.if.end.i101_crit_edge
  %61 = ptrtoint ptr %add.ptr2.i to i32, !dbg !1739
  call void @__asan_load4_noabort(i32 %61), !dbg !1739
  %62 = load ptr, ptr %add.ptr2.i, align 4, !dbg !1739
  %call.i100 = call i32 @process_fetch_insn(ptr noundef %62, ptr noundef %regs, ptr noundef %add.ptr3.i, ptr noundef %add.ptr.i92) #21, !dbg !1740
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100), !dbg !1741
  %cmp6.i = icmp slt i32 %call.i100, 0, !dbg !1741
  br i1 %cmp6.i, label %land.rhs.i, label %if.end.i101.if.else.i_crit_edge, !dbg !1741

if.end.i101.if.else.i_crit_edge:                  ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1741
  br label %if.else.i, !dbg !1741

land.rhs.i:                                       ; preds = %if.end.i101
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 2), align 16, !dbg !1741
  %63 = add i64 %gcov_ctr24.i, 1, !dbg !1741
  store i64 %63, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 2), align 16, !dbg !1741
  %64 = ptrtoint ptr %dynamic.i96 to i32, !dbg !1741
  call void @__asan_load1_noabort(i32 %64), !dbg !1741
  %65 = load i8, ptr %dynamic.i96, align 4, !dbg !1741, !range !1696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65), !dbg !1741
  %tobool8.not.i = icmp eq i8 %65, 0, !dbg !1741
  br i1 %tobool8.not.i, label %land.rhs.i.if.else.i_crit_edge, label %if.then15.i, !dbg !1741, !prof !194

land.rhs.i.if.else.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1741
  br label %if.else.i, !dbg !1741

if.then15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1742
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 3), align 8, !dbg !1742
  %66 = add i64 %gcov_ctr25.i, 1, !dbg !1742
  store i64 %66, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 3), align 8, !dbg !1742
  %sub.ptr.lhs.cast16.i = ptrtoint ptr %dyndata.047.i to i32, !dbg !1742
  %sub.ptr.sub18.i = sub i32 %sub.ptr.lhs.cast16.i, %sub.ptr.rhs.cast.i, !dbg !1742
  %and19.i = and i32 %sub.ptr.sub18.i, 65535, !dbg !1742
  %67 = ptrtoint ptr %add.ptr3.i to i32, !dbg !1743
  call void @__asan_store4_noabort(i32 %67), !dbg !1743
  store i32 %and19.i, ptr %add.ptr3.i, align 4, !dbg !1743
  br label %for.inc.i104, !dbg !1744

if.else.i:                                        ; preds = %land.rhs.i.if.else.i_crit_edge, %if.end.i101.if.else.i_crit_edge
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 4), align 16, !dbg !1745
  %68 = add i64 %gcov_ctr26.i, 1, !dbg !1745
  store i64 %68, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 4), align 16, !dbg !1745
  %add.ptr21.i = getelementptr i8, ptr %dyndata.047.i, i32 %call.i100, !dbg !1746
  %sub.i = sub i32 %maxlen.addr.046.i, %call.i100, !dbg !1747
  br label %for.inc.i104

for.inc.i104:                                     ; preds = %if.else.i, %if.then15.i
  %maxlen.addr.1.i = phi i32 [ %maxlen.addr.046.i, %if.then15.i ], [ %sub.i, %if.else.i ]
  %dyndata.1.i = phi ptr [ %dyndata.047.i, %if.then15.i ], [ %add.ptr21.i, %if.else.i ], !dbg !1748
  %inc.i102 = add nuw i32 %i.048.i, 1, !dbg !1749
  %69 = ptrtoint ptr %nr_args.i to i32, !dbg !1727
  call void @__asan_load4_noabort(i32 %69), !dbg !1727
  %70 = load i32, ptr %nr_args.i, align 4, !dbg !1727
  %cmp.i103 = icmp ult i32 %inc.i102, %70, !dbg !1728
  br i1 %cmp.i103, label %for.inc.i104.for.body.i98_crit_edge, label %for.inc.i104.store_trace_args.exit_crit_edge, !dbg !1729, !llvm.loop !1750

for.inc.i104.store_trace_args.exit_crit_edge:     ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1729
  br label %store_trace_args.exit, !dbg !1729

for.inc.i104.for.body.i98_crit_edge:              ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1729
  br label %for.body.i98, !dbg !1729

store_trace_args.exit:                            ; preds = %for.inc.i104.store_trace_args.exit_crit_edge, %__get_data_size.exit.store_trace_args.exit_crit_edge
  %gcov_ctr.i111 = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %71 = add i64 %gcov_ctr.i111, 1
  store i64 %71, ptr @__llvm_gcov_ctr.114, align 8
  %event.i = getelementptr i8, ptr %con, i32 52, !dbg !1752
  %72 = ptrtoint ptr %event.i to i32, !dbg !1752
  call void @__asan_load4_noabort(i32 %72), !dbg !1752
  %73 = load ptr, ptr %event.i, align 4, !dbg !1752
  %74 = ptrtoint ptr %73 to i32, !dbg !1754
  call void @__asan_load4_noabort(i32 %74), !dbg !1754
  %75 = load i32, ptr %73, align 4, !dbg !1754
  %and.i112 = and i32 %75, 1, !dbg !1755
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112), !dbg !1756
  %tobool.i.not = icmp eq i32 %and.i112, 0, !dbg !1756
  br i1 %tobool.i.not, label %store_trace_args.exit.if.end50_crit_edge, label %if.then48, !dbg !1757

store_trace_args.exit.if.end50_crit_edge:         ; preds = %store_trace_args.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1757
  br label %if.end50, !dbg !1757

if.then48:                                        ; preds = %store_trace_args.exit
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 5), align 8, !dbg !1758
  %76 = add i64 %gcov_ctr66, 1, !dbg !1758
  store i64 %76, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 5), align 8, !dbg !1758
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %77 = add i64 %gcov_ctr.i2.i, 1
  store i64 %77, ptr @__llvm_gcov_ctr.45, align 8
  %78 = ptrtoint ptr %ret_handler.i to i32, !dbg !1759
  call void @__asan_load4_noabort(i32 %78), !dbg !1759
  %79 = load ptr, ptr %ret_handler.i, align 4, !dbg !1759
  %cmp.i.not.i = icmp eq ptr %79, null, !dbg !1763
  br i1 %cmp.i.not.i, label %if.end.i116, label %if.then.i114, !dbg !1764

if.then.i114:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1765
  %gcov_ctr.i113 = load i64, ptr @__llvm_gcov_ctr.148, align 16, !dbg !1765
  %80 = add i64 %gcov_ctr.i113, 1, !dbg !1765
  store i64 %80, ptr @__llvm_gcov_ctr.148, align 16, !dbg !1765
  br label %if.end50, !dbg !1765

if.end.i116:                                      ; preds = %if.then48
  %gcov_ctr.i.i115 = load i64, ptr @__llvm_gcov_ctr.151, align 16, !dbg !1766
  %81 = add i64 %gcov_ctr.i.i115, 1, !dbg !1766
  store i64 %81, ptr @__llvm_gcov_ctr.151, align 16, !dbg !1766
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.154, align 8, !dbg !1770
  %82 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1770
  store i64 %82, ptr @__llvm_gcov_ctr.154, align 8, !dbg !1770
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.156, align 8
  %83 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %83, ptr @__llvm_gcov_ctr.156, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.157, align 8, !dbg !1773
  %84 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1773
  store i64 %84, ptr @__llvm_gcov_ctr.157, align 8, !dbg !1773
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1779
  %85 = add i64 %gcov_ctr.i.i.i.i.i.i, 1, !dbg !1779
  store i64 %85, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1779
  %86 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !1779
  %and.i.i.i.i.i.i = and i32 %86, -16384, !dbg !1781
  %87 = inttoptr i32 %and.i.i.i.i.i.i to ptr, !dbg !1782
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1, !dbg !1783
  %88 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32, !dbg !1784
  call void @__asan_load4_noabort(i32 %88), !dbg !1784
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4, !dbg !1784
  %add.i.i.i.i = add i32 %89, 1, !dbg !1784
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4, !dbg !1784
  call void asm sideeffect "", "~{memory}"() #21, !dbg !1770, !srcloc !1785
  %gcov_ctr.i8.i.i = load i64, ptr @__llvm_gcov_ctr.155, align 8
  %90 = add i64 %gcov_ctr.i8.i.i, 1
  store i64 %90, ptr @__llvm_gcov_ctr.155, align 8
  call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #21, !dbg !1786
  %call.i.i = call zeroext i1 @rcu_is_watching() #21, !dbg !1789
  br i1 %call.i.i, label %if.end.i116.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i, !dbg !1789

if.end.i116.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1789
  br label %rcu_read_lock.exit.i, !dbg !1789

land.lhs.true.i.i:                                ; preds = %if.end.i116
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 1), align 8, !dbg !1789
  %91 = add i64 %gcov_ctr4.i.i, 1, !dbg !1789
  store i64 %91, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 1), align 8, !dbg !1789
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #21, !dbg !1789
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !1789
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0, !dbg !1789
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i, !dbg !1789

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1789
  br label %rcu_read_lock.exit.i, !dbg !1789

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %gcov_ctr5.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 2), align 16, !dbg !1789
  %92 = add i64 %gcov_ctr5.i.i, 1, !dbg !1789
  store i64 %92, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 2), align 16, !dbg !1789
  %.b7.i.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1789
  br i1 %.b7.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i, !dbg !1789

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1789
  br label %rcu_read_lock.exit.i, !dbg !1789

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1789
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 3), align 8, !dbg !1789
  %93 = add i64 %gcov_ctr6.i.i, 1, !dbg !1789
  store i64 %93, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 3), align 8, !dbg !1789
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1789
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #21, !dbg !1789
  br label %rcu_read_lock.exit.i, !dbg !1789

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i116.rcu_read_lock.exit.i_crit_edge
  %call1.i = call i32 @rcu_read_lock_any_held() #21, !dbg !1790
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1790
  %tobool.not.i117 = icmp eq i32 %call1.i, 0, !dbg !1790
  br i1 %tobool.not.i117, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge, !dbg !1790

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1790
  br label %do.end.i, !dbg !1790

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %gcov_ctr24.i118 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !1790
  %94 = add i64 %gcov_ctr24.i118, 1, !dbg !1790
  store i64 %94, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !1790
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #21, !dbg !1790
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i), !dbg !1790
  %tobool3.not.i = icmp eq i32 %call2.i, 0, !dbg !1790
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i, !dbg !1790

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1790
  br label %do.end.i, !dbg !1790

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr25.i119 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !1790
  %95 = add i64 %gcov_ctr25.i119, 1, !dbg !1790
  store i64 %95, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !1790
  %.b1.i = load i1, ptr @uprobe_trace_func.__warned, align 1, !dbg !1790
  br i1 %.b1.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i, !dbg !1790

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1790
  br label %do.end.i, !dbg !1790

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1790
  %gcov_ctr26.i120 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !1790
  %96 = add i64 %gcov_ctr26.i120, 1, !dbg !1790
  store i64 %96, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !1790
  store i1 true, ptr @uprobe_trace_func.__warned, align 1, !dbg !1790
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 994, ptr noundef nonnull @.str.22) #21, !dbg !1790
  br label %do.end.i, !dbg !1790

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %97 = ptrtoint ptr %event.i to i32, !dbg !1790
  call void @__asan_load4_noabort(i32 %97), !dbg !1790
  %98 = load ptr, ptr %event.i, align 4, !dbg !1790
  %files.i = getelementptr inbounds %struct.trace_probe_event, ptr %98, i32 0, i32 3, !dbg !1790
  %99 = ptrtoint ptr %files.i to i32, !dbg !1790
  call void @__asan_load4_noabort(i32 %99), !dbg !1790
  %.pn3.i = load volatile ptr, ptr %files.i, align 4, !dbg !1790
  %cmp.not5.i = icmp eq ptr %.pn3.i, %files.i, !dbg !1790
  br i1 %cmp.not5.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i122_crit_edge, !dbg !1790

do.end.i.for.body.i122_crit_edge:                 ; preds = %do.end.i
  br label %for.body.i122, !dbg !1790

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1790
  br label %for.end.i, !dbg !1790

for.body.i122:                                    ; preds = %for.body.i122.for.body.i122_crit_edge, %do.end.i.for.body.i122_crit_edge
  %.pn6.i = phi ptr [ %.pn.i, %for.body.i122.for.body.i122_crit_edge ], [ %.pn3.i, %do.end.i.for.body.i122_crit_edge ]
  %link.0.i = getelementptr i8, ptr %.pn6.i, i32 -4, !dbg !1790
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !1791
  %100 = add i64 %gcov_ctr27.i, 1, !dbg !1791
  store i64 %100, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !1791
  %101 = ptrtoint ptr %link.0.i to i32, !dbg !1792
  call void @__asan_load4_noabort(i32 %101), !dbg !1792
  %102 = load ptr, ptr %link.0.i, align 4, !dbg !1792
  call fastcc void @__uprobe_trace_func(ptr noundef %add.ptr, i32 noundef 0, ptr noundef %regs, ptr noundef %47, i32 noundef %ret.0.lcssa.i, ptr noundef %102) #21, !dbg !1793
  %103 = ptrtoint ptr %.pn6.i to i32, !dbg !1790
  call void @__asan_load4_noabort(i32 %103), !dbg !1790
  %.pn.i = load volatile ptr, ptr %.pn6.i, align 4, !dbg !1790
  %104 = ptrtoint ptr %event.i to i32, !dbg !1790
  call void @__asan_load4_noabort(i32 %104), !dbg !1790
  %105 = load ptr, ptr %event.i, align 4, !dbg !1790
  %files14.i = getelementptr inbounds %struct.trace_probe_event, ptr %105, i32 0, i32 3, !dbg !1790
  %cmp.not.i = icmp eq ptr %.pn.i, %files14.i, !dbg !1790
  br i1 %cmp.not.i, label %for.body.i122.for.end.i_crit_edge, label %for.body.i122.for.body.i122_crit_edge, !dbg !1790, !llvm.loop !1794

for.body.i122.for.body.i122_crit_edge:            ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1790
  br label %for.body.i122, !dbg !1790

for.body.i122.for.end.i_crit_edge:                ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1790
  br label %for.end.i, !dbg !1790

for.end.i:                                        ; preds = %for.body.i122.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 5), align 8, !dbg !1796
  %106 = add i64 %gcov_ctr28.i, 1, !dbg !1796
  store i64 %106, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 5), align 8, !dbg !1796
  call fastcc void @rcu_read_unlock() #21, !dbg !1796
  br label %if.end50, !dbg !1797

if.end50:                                         ; preds = %for.end.i, %if.then.i114, %store_trace_args.exit.if.end50_crit_edge
  %gcov_ctr.i123 = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %107 = add i64 %gcov_ctr.i123, 1
  store i64 %107, ptr @__llvm_gcov_ctr.114, align 8
  %108 = ptrtoint ptr %event.i to i32, !dbg !1798
  call void @__asan_load4_noabort(i32 %108), !dbg !1798
  %109 = load ptr, ptr %event.i, align 4, !dbg !1798
  %110 = ptrtoint ptr %109 to i32, !dbg !1800
  call void @__asan_load4_noabort(i32 %110), !dbg !1800
  %111 = load i32, ptr %109, align 4, !dbg !1800
  %and.i125 = and i32 %111, 2, !dbg !1801
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125), !dbg !1802
  %tobool.i126.not = icmp eq i32 %and.i125, 0, !dbg !1802
  br i1 %tobool.i126.not, label %if.end50.if.end56_crit_edge, label %if.then53, !dbg !1803

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1803
  br label %if.end56, !dbg !1803

if.then53:                                        ; preds = %if.end50
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 6), align 16, !dbg !1804
  %112 = add i64 %gcov_ctr67, 1, !dbg !1804
  store i64 %112, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 6), align 16, !dbg !1804
  %gcov_ctr.i.i127 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1805
  %113 = add i64 %gcov_ctr.i.i127, 1, !dbg !1805
  store i64 %113, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1805
  %114 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !1805
  %and.i.i128 = and i32 %114, -16384, !dbg !1809
  %115 = inttoptr i32 %and.i.i128 to ptr, !dbg !1810
  %task.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2, !dbg !1811
  %116 = ptrtoint ptr %task.i to i32, !dbg !1811
  call void @__asan_load4_noabort(i32 %116), !dbg !1811
  %117 = load ptr, ptr %task.i, align 8, !dbg !1811
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 53, !dbg !1812
  %118 = ptrtoint ptr %mm.i to i32, !dbg !1812
  call void @__asan_load4_noabort(i32 %118), !dbg !1812
  %119 = load ptr, ptr %mm.i, align 8, !dbg !1812
  %gcov_ctr.i9.i = load i64, ptr @__llvm_gcov_ctr.162, align 8
  %120 = add i64 %gcov_ctr.i9.i, 1
  store i64 %120, ptr @__llvm_gcov_ctr.162, align 8
  %121 = ptrtoint ptr %event.i to i32, !dbg !1813
  call void @__asan_load4_noabort(i32 %121), !dbg !1813
  %122 = load ptr, ptr %event.i, align 4, !dbg !1813
  %filter1.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %122, i32 0, i32 5, !dbg !1816
  call void @_raw_read_lock(ptr noundef %filter1.i.i) #21, !dbg !1817
  %nr_systemwide.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %122, i32 1, i32 2, i32 0, i32 1, !dbg !1818
  %123 = ptrtoint ptr %nr_systemwide.i.i.i to i32, !dbg !1818
  call void @__asan_load4_noabort(i32 %123), !dbg !1818
  %124 = load i32, ptr %nr_systemwide.i.i.i, align 4, !dbg !1818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124), !dbg !1821
  %tobool.not.i.i.i = icmp eq i32 %124, 0, !dbg !1821
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !dbg !1821

if.then.i.i.i:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1822
  %gcov_ctr.i.i.i129 = load i64, ptr @__llvm_gcov_ctr.164, align 16, !dbg !1822
  %125 = add i64 %gcov_ctr.i.i.i129, 1, !dbg !1822
  store i64 %125, ptr @__llvm_gcov_ctr.164, align 16, !dbg !1822
  br label %if.end.i133, !dbg !1822

if.end.i.i.i:                                     ; preds = %if.then53
  %perf_events.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %122, i32 1, i32 2, i32 1, !dbg !1823
  %126 = ptrtoint ptr %perf_events.i.i.i to i32, !dbg !1823
  call void @__asan_load4_noabort(i32 %126), !dbg !1823
  %.pn20.i.i.i = load ptr, ptr %perf_events.i.i.i, align 4, !dbg !1823
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %perf_events.i.i.i, !dbg !1823
  br i1 %cmp.not21.i.i.i, label %if.end.i.i.i.if.then.i130_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge, !dbg !1823

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i, !dbg !1823

if.end.i.i.i.if.then.i130_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1823
  br label %if.then.i130, !dbg !1823

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %target.i.i.i = getelementptr inbounds %struct.hw_perf_event, ptr %.pn22.i.i.i, i32 0, i32 1, !dbg !1824
  %127 = ptrtoint ptr %target.i.i.i to i32, !dbg !1824
  call void @__asan_load4_noabort(i32 %127), !dbg !1824
  %128 = load ptr, ptr %target.i.i.i, align 8, !dbg !1824
  %mm3.i.i.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 53, !dbg !1825
  %129 = ptrtoint ptr %mm3.i.i.i to i32, !dbg !1825
  call void @__asan_load4_noabort(i32 %129), !dbg !1825
  %130 = load ptr, ptr %mm3.i.i.i, align 8, !dbg !1825
  %cmp4.i.i.i = icmp eq ptr %130, %119, !dbg !1826
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %for.inc.i.i.i, !dbg !1827

if.then5.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1828
  %gcov_ctr13.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !1828
  %131 = add i64 %gcov_ctr13.i.i.i, 1, !dbg !1828
  store i64 %131, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !1828
  br label %if.end.i133, !dbg !1828

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %gcov_ctr14.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !1823
  %132 = add i64 %gcov_ctr14.i.i.i, 1, !dbg !1823
  store i64 %132, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !1823
  %133 = ptrtoint ptr %.pn22.i.i.i to i32, !dbg !1823
  call void @__asan_load4_noabort(i32 %133), !dbg !1823
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4, !dbg !1823
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %perf_events.i.i.i, !dbg !1823
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.if.then.i130_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, !dbg !1823, !llvm.loop !1829

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1823
  br label %for.body.i.i.i, !dbg !1823

for.inc.i.i.i.if.then.i130_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1823
  br label %if.then.i130, !dbg !1823

if.then.i130:                                     ; preds = %for.inc.i.i.i.if.then.i130_crit_edge, %if.end.i.i.i.if.then.i130_crit_edge
  %gcov_ctr15.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), align 8, !dbg !1831
  %134 = add i64 %gcov_ctr15.i.i.i, 1, !dbg !1831
  store i64 %134, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), align 8, !dbg !1831
  call void @_raw_read_unlock(ptr noundef %filter1.i.i) #21, !dbg !1832
  br label %uprobe_perf_func.exit, !dbg !1833

if.end.i133:                                      ; preds = %if.then5.i.i.i, %if.then.i.i.i
  call void @_raw_read_unlock(ptr noundef %filter1.i.i) #21, !dbg !1832
  %gcov_ctr.i10.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %135 = add i64 %gcov_ctr.i10.i, 1
  store i64 %135, ptr @__llvm_gcov_ctr.45, align 8
  %136 = ptrtoint ptr %ret_handler.i to i32, !dbg !1834
  call void @__asan_load4_noabort(i32 %136), !dbg !1834
  %137 = load ptr, ptr %ret_handler.i, align 4, !dbg !1834
  %cmp.i.not.i132 = icmp eq ptr %137, null, !dbg !1836
  br i1 %cmp.i.not.i132, label %if.then3.i, label %if.end.i133.uprobe_perf_func.exit_crit_edge, !dbg !1837

if.end.i133.uprobe_perf_func.exit_crit_edge:      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1837
  br label %uprobe_perf_func.exit, !dbg !1837

if.then3.i:                                       ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1838
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 1), align 8, !dbg !1838
  %138 = add i64 %gcov_ctr5.i, 1, !dbg !1838
  store i64 %138, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 1), align 8, !dbg !1838
  call fastcc void @__uprobe_perf_func(ptr noundef %add.ptr, i32 noundef 0, ptr noundef %regs, ptr noundef %47, i32 noundef %ret.0.lcssa.i) #21, !dbg !1839
  br label %uprobe_perf_func.exit, !dbg !1839

uprobe_perf_func.exit:                            ; preds = %if.then3.i, %if.end.i133.uprobe_perf_func.exit_crit_edge, %if.then.i130
  %.sink.i = phi ptr [ @__llvm_gcov_ctr.149, %if.then.i130 ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 2), %if.then3.i ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 2), %if.end.i133.uprobe_perf_func.exit_crit_edge ]
  %retval.0.i = phi i32 [ 1, %if.then.i130 ], [ 0, %if.then3.i ], [ 0, %if.end.i133.uprobe_perf_func.exit_crit_edge ], !dbg !1840
  %139 = ptrtoint ptr %.sink.i to i32, !dbg !1840
  call void @__asan_load8_noabort(i32 %139), !dbg !1840
  %gcov_ctr6.i134 = load i64, ptr %.sink.i, align 16, !dbg !1840
  %140 = add i64 %gcov_ctr6.i134, 1, !dbg !1840
  store i64 %140, ptr %.sink.i, align 16, !dbg !1840
  br label %if.end56, !dbg !1841

if.end56:                                         ; preds = %uprobe_perf_func.exit, %if.end50.if.end56_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %uprobe_perf_func.exit ], [ 0, %if.end50.if.end56_crit_edge ], !dbg !1842
  %gcov_ctr.i135 = load i64, ptr @__llvm_gcov_ctr.150, align 8
  %141 = add i64 %gcov_ctr.i135, 1
  store i64 %141, ptr @__llvm_gcov_ctr.150, align 8
  call void @mutex_unlock(ptr noundef %47) #21, !dbg !1843
  br label %cleanup, !dbg !1846

cleanup:                                          ; preds = %if.end56, %if.then40
  %retval.0 = phi i32 [ 0, %if.then40 ], [ %ret.1, %if.end56 ], !dbg !1842
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %udd) #21, !dbg !1847
  ret i32 %retval.0, !dbg !1847
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uretprobe_dispatcher(ptr noundef %con, i32 noundef %func, ptr noundef %regs) #0 align 64 !dbg !1848 {
entry:
  %udd = alloca %struct.uprobe_dispatch_data, align 4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1849
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %udd) #21, !dbg !1850
  %0 = getelementptr inbounds %struct.uprobe_dispatch_data, ptr %udd, i32 0, i32 1, !dbg !1851
  %add.ptr = getelementptr i8, ptr %con, i32 -12, !dbg !1852
  %1 = ptrtoint ptr %udd to i32, !dbg !1853
  call void @__asan_store4_noabort(i32 %1), !dbg !1853
  store ptr %add.ptr, ptr %udd, align 4, !dbg !1853
  %2 = ptrtoint ptr %0 to i32, !dbg !1854
  call void @__asan_store4_noabort(i32 %2), !dbg !1854
  store i32 %func, ptr %0, align 4, !dbg !1854
  %3 = ptrtoint ptr %udd to i32, !dbg !1855
  %gcov_ctr.i99 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1856
  %4 = add i64 %gcov_ctr.i99, 1, !dbg !1856
  store i64 %4, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1856
  %5 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !1856
  %and.i100 = and i32 %5, -16384, !dbg !1858
  %6 = inttoptr i32 %and.i100 to ptr, !dbg !1859
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2, !dbg !1860
  %7 = ptrtoint ptr %task to i32, !dbg !1860
  call void @__asan_load4_noabort(i32 %7), !dbg !1860
  %8 = load ptr, ptr %task, align 8, !dbg !1860
  %utask = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 208, !dbg !1861
  %9 = ptrtoint ptr %utask to i32, !dbg !1861
  call void @__asan_load4_noabort(i32 %9), !dbg !1861
  %10 = load ptr, ptr %utask, align 16, !dbg !1861
  %vaddr = getelementptr inbounds %struct.uprobe_task, ptr %10, i32 0, i32 1, i32 0, i32 1, !dbg !1862
  %11 = ptrtoint ptr %vaddr to i32, !dbg !1863
  call void @__asan_store4_noabort(i32 %11), !dbg !1863
  store i32 %3, ptr %vaddr, align 4, !dbg !1863
  %12 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !1864
  %tobool.not = icmp eq ptr %12, null, !dbg !1864
  br i1 %tobool.not, label %land.rhs, label %if.end41, !dbg !1864

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.135, align 16, !dbg !1864
  %13 = add i64 %gcov_ctr, 1, !dbg !1864
  store i64 %13, ptr @__llvm_gcov_ctr.135, align 16, !dbg !1864
  %.b83 = load i1, ptr @uretprobe_dispatcher.__already_done, align 1, !dbg !1864
  br i1 %.b83, label %land.rhs.if.then40_crit_edge, label %if.then, !dbg !1864, !prof !194

land.rhs.if.then40_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1864
  br label %if.then40, !dbg !1864

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1864
  store i1 true, ptr @uretprobe_dispatcher.__already_done, align 1, !dbg !1864
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1523, i32 noundef 9, ptr noundef null) #21, !dbg !1864
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !1864
  %14 = add i64 %gcov_ctr58, 1, !dbg !1864
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !1864
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !1864
  %15 = add i64 %gcov_ctr59, 1, !dbg !1864
  store i64 %15, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !1864
  br label %if.then40, !dbg !1864

if.then40:                                        ; preds = %if.then, %land.rhs.if.then40_crit_edge
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !1865
  %16 = add i64 %gcov_ctr61, 1, !dbg !1865
  store i64 %16, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !1865
  br label %cleanup, !dbg !1865

if.end41:                                         ; preds = %entry
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !1866
  %17 = add i64 %gcov_ctr60, 1, !dbg !1866
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !1866
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.145, align 16
  %18 = add i64 %gcov_ctr.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.145, align 16
  %nr_args.i = getelementptr i8, ptr %con, i32 60
  %19 = ptrtoint ptr %nr_args.i to i32, !dbg !1867
  call void @__asan_load4_noabort(i32 %19), !dbg !1867
  %20 = load i32, ptr %nr_args.i, align 4, !dbg !1867
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !1869
  %cmp15.not.i = icmp eq i32 %20, 0, !dbg !1869
  br i1 %cmp15.not.i, label %if.end41.__get_data_size.exit_crit_edge, label %for.body.lr.ph.i, !dbg !1870

if.end41.__get_data_size.exit_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1870
  br label %__get_data_size.exit, !dbg !1870

for.body.lr.ph.i:                                 ; preds = %if.end41
  %args.i = getelementptr i8, ptr %con, i32 64
  br label %for.body.i, !dbg !1870

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %dynamic.i = getelementptr %struct.probe_arg, ptr %args.i, i32 %i.016.i, i32 1, !dbg !1871
  %21 = ptrtoint ptr %dynamic.i to i32, !dbg !1871
  call void @__asan_load1_noabort(i32 %21), !dbg !1871
  %22 = load i8, ptr %dynamic.i, align 4, !dbg !1871, !range !1696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22), !dbg !1871
  %tobool.not.i = icmp eq i8 %22, 0, !dbg !1871
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i, !dbg !1871, !prof !194

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1871
  br label %for.inc.i, !dbg !1871

if.then.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.probe_arg, ptr %args.i, i32 %i.016.i, !dbg !1872
  %23 = ptrtoint ptr %add.ptr.i to i32, !dbg !1873
  call void @__asan_load4_noabort(i32 %23), !dbg !1873
  %24 = load ptr, ptr %add.ptr.i, align 4, !dbg !1873
  %call.i = call i32 @process_fetch_insn(ptr noundef %24, ptr noundef %regs, ptr noundef null, ptr noundef null) #21, !dbg !1874
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1875
  %cmp3.i = icmp sgt i32 %call.i, 0, !dbg !1875
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge, !dbg !1876

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1876
  br label %if.end.i, !dbg !1876

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1877
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1877
  %25 = add i64 %gcov_ctr6.i, 1, !dbg !1877
  store i64 %25, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1877
  %add.i = add i32 %call.i, %ret.018.i, !dbg !1878
  br label %if.end.i, !dbg !1879

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %ret.1.i = phi i32 [ %add.i, %if.then4.i ], [ %ret.018.i, %if.then.i.if.end.i_crit_edge ], !dbg !1880
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !1881
  %26 = add i64 %gcov_ctr7.i, 1, !dbg !1881
  store i64 %26, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !1881
  br label %for.inc.i, !dbg !1881

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %if.end.i ], [ %ret.018.i, %for.body.i.for.inc.i_crit_edge ], !dbg !1880
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 3), align 8, !dbg !1882
  %27 = add i64 %gcov_ctr8.i, 1, !dbg !1882
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 3), align 8, !dbg !1882
  %inc.i = add nuw i32 %i.016.i, 1, !dbg !1882
  %28 = ptrtoint ptr %nr_args.i to i32, !dbg !1867
  call void @__asan_load4_noabort(i32 %28), !dbg !1867
  %29 = load i32, ptr %nr_args.i, align 4, !dbg !1867
  %cmp.i = icmp ult i32 %inc.i, %29, !dbg !1869
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.__get_data_size.exit_crit_edge, !dbg !1870, !llvm.loop !1883

for.inc.i.__get_data_size.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1870
  br label %__get_data_size.exit, !dbg !1870

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1870
  br label %for.body.i, !dbg !1870

__get_data_size.exit:                             ; preds = %for.inc.i.__get_data_size.exit_crit_edge, %if.end41.__get_data_size.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end41.__get_data_size.exit_crit_edge ], [ %ret.2.i, %for.inc.i.__get_data_size.exit_crit_edge ], !dbg !1880
  %gcov_ctr.i101 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %30 = add i64 %gcov_ctr.i101, 1
  store i64 %30, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr i8, ptr %con, i32 4, !dbg !1885
  %31 = ptrtoint ptr %ret_handler.i to i32, !dbg !1885
  call void @__asan_load4_noabort(i32 %31), !dbg !1885
  %32 = load ptr, ptr %ret_handler.i, align 4, !dbg !1885
  %cmp.i102.not = icmp eq ptr %32, null, !dbg !1887
  %add.neg = select i1 %cmp.i102.not, i32 -12, i32 -16, !dbg !1888
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1889
  %33 = add i64 %gcov_ctr.i.i, 1, !dbg !1889
  store i64 %33, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1889
  %34 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !1889
  %and.i.i = and i32 %34, -16384, !dbg !1892
  %35 = inttoptr i32 %and.i.i to ptr, !dbg !1893
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3, !dbg !1894
  %36 = ptrtoint ptr %cpu1.i to i32, !dbg !1894
  call void @__asan_load4_noabort(i32 %36), !dbg !1894
  %37 = load i32, ptr %cpu1.i, align 4, !dbg !1894
  %gcov_ctr.i103 = load i64, ptr @__llvm_gcov_ctr.146, align 8, !dbg !1895
  %38 = add i64 %gcov_ctr.i103, 1, !dbg !1895
  store i64 %38, ptr @__llvm_gcov_ctr.146, align 8, !dbg !1895
  %39 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !1895
  %40 = ptrtoint ptr %39 to i32, !dbg !1895
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37, !dbg !1895
  %41 = ptrtoint ptr %arrayidx.i to i32, !dbg !1895
  call void @__asan_load4_noabort(i32 %41), !dbg !1895
  %42 = load i32, ptr %arrayidx.i, align 4, !dbg !1895
  %add.i104 = add i32 %42, %40, !dbg !1895
  %43 = inttoptr i32 %add.i104 to ptr, !dbg !1895
  call void @mutex_lock_nested(ptr noundef %43, i32 noundef 0) #21, !dbg !1896
  %buf = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %43, i32 0, i32 1, !dbg !1897
  %44 = ptrtoint ptr %buf to i32, !dbg !1897
  call void @__asan_load4_noabort(i32 %44), !dbg !1897
  %45 = load ptr, ptr %buf, align 4, !dbg !1897
  %gcov_ctr.i85 = load i64, ptr @__llvm_gcov_ctr.147, align 16
  %46 = add i64 %gcov_ctr.i85, 1
  store i64 %46, ptr @__llvm_gcov_ctr.147, align 16
  %add.ptr.i86 = getelementptr i8, ptr %45, i32 %add.neg, !dbg !1898
  %47 = ptrtoint ptr %nr_args.i to i32, !dbg !1900
  call void @__asan_load4_noabort(i32 %47), !dbg !1900
  %48 = load i32, ptr %nr_args.i, align 4, !dbg !1900
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48), !dbg !1901
  %cmp45.not.i = icmp eq i32 %48, 0, !dbg !1901
  br i1 %cmp45.not.i, label %__get_data_size.exit.store_trace_args.exit_crit_edge, label %for.body.lr.ph.i89, !dbg !1902

__get_data_size.exit.store_trace_args.exit_crit_edge: ; preds = %__get_data_size.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1902
  br label %store_trace_args.exit, !dbg !1902

for.body.lr.ph.i89:                               ; preds = %__get_data_size.exit
  %size.i = getelementptr i8, ptr %con, i32 56, !dbg !1903
  %49 = ptrtoint ptr %size.i to i32, !dbg !1903
  call void @__asan_load4_noabort(i32 %49), !dbg !1903
  %50 = load i32, ptr %size.i, align 4, !dbg !1903
  %add.ptr1.i = getelementptr i8, ptr %45, i32 %50, !dbg !1904
  %args.i88 = getelementptr i8, ptr %con, i32 64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i86 to i32
  br label %for.body.i92, !dbg !1902

for.body.i92:                                     ; preds = %for.inc.i98.for.body.i92_crit_edge, %for.body.lr.ph.i89
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i89 ], [ %inc.i96, %for.inc.i98.for.body.i92_crit_edge ]
  %dyndata.047.i = phi ptr [ %add.ptr1.i, %for.body.lr.ph.i89 ], [ %dyndata.1.i, %for.inc.i98.for.body.i92_crit_edge ]
  %maxlen.addr.046.i = phi i32 [ %ret.0.lcssa.i, %for.body.lr.ph.i89 ], [ %maxlen.addr.1.i, %for.inc.i98.for.body.i92_crit_edge ]
  %add.ptr2.i = getelementptr %struct.probe_arg, ptr %args.i88, i32 %i.048.i, !dbg !1905
  %offset.i = getelementptr %struct.probe_arg, ptr %args.i88, i32 %i.048.i, i32 2, !dbg !1906
  %51 = ptrtoint ptr %offset.i to i32, !dbg !1906
  call void @__asan_load4_noabort(i32 %51), !dbg !1906
  %52 = load i32, ptr %offset.i, align 4, !dbg !1906
  %add.ptr3.i = getelementptr i8, ptr %45, i32 %52, !dbg !1907
  %dynamic.i90 = getelementptr %struct.probe_arg, ptr %args.i88, i32 %i.048.i, i32 1, !dbg !1908
  %53 = ptrtoint ptr %dynamic.i90 to i32, !dbg !1908
  call void @__asan_load1_noabort(i32 %53), !dbg !1908
  %54 = load i8, ptr %dynamic.i90, align 4, !dbg !1908, !range !1696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54), !dbg !1908
  %tobool.not.i91 = icmp eq i8 %54, 0, !dbg !1908
  br i1 %tobool.not.i91, label %for.body.i92.if.end.i95_crit_edge, label %if.then.i93, !dbg !1908, !prof !194

for.body.i92.if.end.i95_crit_edge:                ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1908
  br label %if.end.i95, !dbg !1908

if.then.i93:                                      ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1909
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !1909
  %55 = add i64 %gcov_ctr23.i, 1, !dbg !1909
  store i64 %55, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !1909
  %shl.i = shl i32 %maxlen.addr.046.i, 16, !dbg !1909
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dyndata.047.i to i32, !dbg !1909
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1909
  %and.i = and i32 %sub.ptr.sub.i, 65535, !dbg !1909
  %or.i = or i32 %and.i, %shl.i, !dbg !1909
  %56 = ptrtoint ptr %add.ptr3.i to i32, !dbg !1910
  call void @__asan_store4_noabort(i32 %56), !dbg !1910
  store i32 %or.i, ptr %add.ptr3.i, align 4, !dbg !1910
  br label %if.end.i95, !dbg !1911

if.end.i95:                                       ; preds = %if.then.i93, %for.body.i92.if.end.i95_crit_edge
  %57 = ptrtoint ptr %add.ptr2.i to i32, !dbg !1912
  call void @__asan_load4_noabort(i32 %57), !dbg !1912
  %58 = load ptr, ptr %add.ptr2.i, align 4, !dbg !1912
  %call.i94 = call i32 @process_fetch_insn(ptr noundef %58, ptr noundef %regs, ptr noundef %add.ptr3.i, ptr noundef %add.ptr.i86) #21, !dbg !1913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94), !dbg !1914
  %cmp6.i = icmp slt i32 %call.i94, 0, !dbg !1914
  br i1 %cmp6.i, label %land.rhs.i, label %if.end.i95.if.else.i_crit_edge, !dbg !1914

if.end.i95.if.else.i_crit_edge:                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1914
  br label %if.else.i, !dbg !1914

land.rhs.i:                                       ; preds = %if.end.i95
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 2), align 16, !dbg !1914
  %59 = add i64 %gcov_ctr24.i, 1, !dbg !1914
  store i64 %59, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 2), align 16, !dbg !1914
  %60 = ptrtoint ptr %dynamic.i90 to i32, !dbg !1914
  call void @__asan_load1_noabort(i32 %60), !dbg !1914
  %61 = load i8, ptr %dynamic.i90, align 4, !dbg !1914, !range !1696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61), !dbg !1914
  %tobool8.not.i = icmp eq i8 %61, 0, !dbg !1914
  br i1 %tobool8.not.i, label %land.rhs.i.if.else.i_crit_edge, label %if.then15.i, !dbg !1914, !prof !194

land.rhs.i.if.else.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1914
  br label %if.else.i, !dbg !1914

if.then15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1915
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 3), align 8, !dbg !1915
  %62 = add i64 %gcov_ctr25.i, 1, !dbg !1915
  store i64 %62, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 3), align 8, !dbg !1915
  %sub.ptr.lhs.cast16.i = ptrtoint ptr %dyndata.047.i to i32, !dbg !1915
  %sub.ptr.sub18.i = sub i32 %sub.ptr.lhs.cast16.i, %sub.ptr.rhs.cast.i, !dbg !1915
  %and19.i = and i32 %sub.ptr.sub18.i, 65535, !dbg !1915
  %63 = ptrtoint ptr %add.ptr3.i to i32, !dbg !1916
  call void @__asan_store4_noabort(i32 %63), !dbg !1916
  store i32 %and19.i, ptr %add.ptr3.i, align 4, !dbg !1916
  br label %for.inc.i98, !dbg !1917

if.else.i:                                        ; preds = %land.rhs.i.if.else.i_crit_edge, %if.end.i95.if.else.i_crit_edge
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 4), align 16, !dbg !1918
  %64 = add i64 %gcov_ctr26.i, 1, !dbg !1918
  store i64 %64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 4), align 16, !dbg !1918
  %add.ptr21.i = getelementptr i8, ptr %dyndata.047.i, i32 %call.i94, !dbg !1919
  %sub.i = sub i32 %maxlen.addr.046.i, %call.i94, !dbg !1920
  br label %for.inc.i98

for.inc.i98:                                      ; preds = %if.else.i, %if.then15.i
  %maxlen.addr.1.i = phi i32 [ %maxlen.addr.046.i, %if.then15.i ], [ %sub.i, %if.else.i ]
  %dyndata.1.i = phi ptr [ %dyndata.047.i, %if.then15.i ], [ %add.ptr21.i, %if.else.i ], !dbg !1921
  %inc.i96 = add nuw i32 %i.048.i, 1, !dbg !1922
  %65 = ptrtoint ptr %nr_args.i to i32, !dbg !1900
  call void @__asan_load4_noabort(i32 %65), !dbg !1900
  %66 = load i32, ptr %nr_args.i, align 4, !dbg !1900
  %cmp.i97 = icmp ult i32 %inc.i96, %66, !dbg !1901
  br i1 %cmp.i97, label %for.inc.i98.for.body.i92_crit_edge, label %for.inc.i98.store_trace_args.exit_crit_edge, !dbg !1902, !llvm.loop !1923

for.inc.i98.store_trace_args.exit_crit_edge:      ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1902
  br label %store_trace_args.exit, !dbg !1902

for.inc.i98.for.body.i92_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1902
  br label %for.body.i92, !dbg !1902

store_trace_args.exit:                            ; preds = %for.inc.i98.store_trace_args.exit_crit_edge, %__get_data_size.exit.store_trace_args.exit_crit_edge
  %gcov_ctr.i105 = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %67 = add i64 %gcov_ctr.i105, 1
  store i64 %67, ptr @__llvm_gcov_ctr.114, align 8
  %event.i = getelementptr i8, ptr %con, i32 52, !dbg !1925
  %68 = ptrtoint ptr %event.i to i32, !dbg !1925
  call void @__asan_load4_noabort(i32 %68), !dbg !1925
  %69 = load ptr, ptr %event.i, align 4, !dbg !1925
  %70 = ptrtoint ptr %69 to i32, !dbg !1927
  call void @__asan_load4_noabort(i32 %70), !dbg !1927
  %71 = load i32, ptr %69, align 4, !dbg !1927
  %and.i106 = and i32 %71, 1, !dbg !1928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106), !dbg !1929
  %tobool.i.not = icmp eq i32 %and.i106, 0, !dbg !1929
  br i1 %tobool.i.not, label %store_trace_args.exit.if.end49_crit_edge, label %if.then48, !dbg !1930

store_trace_args.exit.if.end49_crit_edge:         ; preds = %store_trace_args.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1930
  br label %if.end49, !dbg !1930

if.then48:                                        ; preds = %store_trace_args.exit
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !1931
  %72 = add i64 %gcov_ctr62, 1, !dbg !1931
  store i64 %72, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !1931
  %gcov_ctr.i.i107 = load i64, ptr @__llvm_gcov_ctr.151, align 16, !dbg !1932
  %73 = add i64 %gcov_ctr.i.i107, 1, !dbg !1932
  store i64 %73, ptr @__llvm_gcov_ctr.151, align 16, !dbg !1932
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.154, align 8, !dbg !1936
  %74 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1936
  store i64 %74, ptr @__llvm_gcov_ctr.154, align 8, !dbg !1936
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.156, align 8
  %75 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %75, ptr @__llvm_gcov_ctr.156, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.157, align 8, !dbg !1938
  %76 = add i64 %gcov_ctr.i.i.i.i.i, 1, !dbg !1938
  store i64 %76, ptr @__llvm_gcov_ctr.157, align 8, !dbg !1938
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1941
  %77 = add i64 %gcov_ctr.i.i.i.i.i.i, 1, !dbg !1941
  store i64 %77, ptr @__llvm_gcov_ctr.77, align 8, !dbg !1941
  %78 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !1941
  %and.i.i.i.i.i.i = and i32 %78, -16384, !dbg !1943
  %79 = inttoptr i32 %and.i.i.i.i.i.i to ptr, !dbg !1944
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1, !dbg !1945
  %80 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32, !dbg !1946
  call void @__asan_load4_noabort(i32 %80), !dbg !1946
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4, !dbg !1946
  %add.i.i.i.i = add i32 %81, 1, !dbg !1946
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4, !dbg !1946
  call void asm sideeffect "", "~{memory}"() #21, !dbg !1936, !srcloc !1785
  %gcov_ctr.i8.i.i = load i64, ptr @__llvm_gcov_ctr.155, align 8
  %82 = add i64 %gcov_ctr.i8.i.i, 1
  store i64 %82, ptr @__llvm_gcov_ctr.155, align 8
  call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef 1) #21, !dbg !1947
  %call.i.i = call zeroext i1 @rcu_is_watching() #21, !dbg !1949
  br i1 %call.i.i, label %if.then48.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i, !dbg !1949

if.then48.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1949
  br label %rcu_read_lock.exit.i, !dbg !1949

land.lhs.true.i.i:                                ; preds = %if.then48
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 1), align 8, !dbg !1949
  %83 = add i64 %gcov_ctr4.i.i, 1, !dbg !1949
  store i64 %83, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 1), align 8, !dbg !1949
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #21, !dbg !1949
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !1949
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0, !dbg !1949
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i, !dbg !1949

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1949
  br label %rcu_read_lock.exit.i, !dbg !1949

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %gcov_ctr5.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 2), align 16, !dbg !1949
  %84 = add i64 %gcov_ctr5.i.i, 1, !dbg !1949
  store i64 %84, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 2), align 16, !dbg !1949
  %.b7.i.i = load i1, ptr @rcu_read_lock.__warned, align 1, !dbg !1949
  br i1 %.b7.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i, !dbg !1949

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1949
  br label %rcu_read_lock.exit.i, !dbg !1949

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1949
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 3), align 8, !dbg !1949
  %85 = add i64 %gcov_ctr6.i.i, 1, !dbg !1949
  store i64 %85, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 3), align 8, !dbg !1949
  store i1 true, ptr @rcu_read_lock.__warned, align 1, !dbg !1949
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #21, !dbg !1949
  br label %rcu_read_lock.exit.i, !dbg !1949

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then48.rcu_read_lock.exit.i_crit_edge
  %call.i108 = call i32 @rcu_read_lock_any_held() #21, !dbg !1950
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108), !dbg !1950
  %tobool.not.i109 = icmp eq i32 %call.i108, 0, !dbg !1950
  br i1 %tobool.not.i109, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge, !dbg !1950

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1950
  br label %do.end.i, !dbg !1950

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %gcov_ctr.i110 = load i64, ptr @__llvm_gcov_ctr.168, align 16, !dbg !1950
  %86 = add i64 %gcov_ctr.i110, 1, !dbg !1950
  store i64 %86, ptr @__llvm_gcov_ctr.168, align 16, !dbg !1950
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #21, !dbg !1950
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1950
  %tobool2.not.i = icmp eq i32 %call1.i, 0, !dbg !1950
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i, !dbg !1950

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1950
  br label %do.end.i, !dbg !1950

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 1), align 8, !dbg !1950
  %87 = add i64 %gcov_ctr21.i, 1, !dbg !1950
  store i64 %87, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 1), align 8, !dbg !1950
  %.b29.i = load i1, ptr @uretprobe_trace_func.__warned, align 1, !dbg !1950
  br i1 %.b29.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i111, !dbg !1950

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1950
  br label %do.end.i, !dbg !1950

if.then.i111:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1950
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 2), align 16, !dbg !1950
  %88 = add i64 %gcov_ctr22.i, 1, !dbg !1950
  store i64 %88, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 2), align 16, !dbg !1950
  store i1 true, ptr @uretprobe_trace_func.__warned, align 1, !dbg !1950
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1008, ptr noundef nonnull @.str.22) #21, !dbg !1950
  br label %do.end.i, !dbg !1950

do.end.i:                                         ; preds = %if.then.i111, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %gcov_ctr23.i112 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 3), align 8, !dbg !1950
  %89 = add i64 %gcov_ctr23.i112, 1, !dbg !1950
  store i64 %89, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 3), align 8, !dbg !1950
  %90 = ptrtoint ptr %event.i to i32, !dbg !1950
  call void @__asan_load4_noabort(i32 %90), !dbg !1950
  %91 = load ptr, ptr %event.i, align 4, !dbg !1950
  %files.i = getelementptr inbounds %struct.trace_probe_event, ptr %91, i32 0, i32 3, !dbg !1950
  %92 = ptrtoint ptr %files.i to i32, !dbg !1950
  call void @__asan_load4_noabort(i32 %92), !dbg !1950
  %.pn30.i = load volatile ptr, ptr %files.i, align 4, !dbg !1950
  %cmp.not32.i = icmp eq ptr %.pn30.i, %files.i, !dbg !1950
  br i1 %cmp.not32.i, label %do.end.i.uretprobe_trace_func.exit_crit_edge, label %do.end.i.for.body.i115_crit_edge, !dbg !1950

do.end.i.for.body.i115_crit_edge:                 ; preds = %do.end.i
  br label %for.body.i115, !dbg !1950

do.end.i.uretprobe_trace_func.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1950
  br label %uretprobe_trace_func.exit, !dbg !1950

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %do.end.i.for.body.i115_crit_edge
  %.pn33.i = phi ptr [ %.pn.i, %for.body.i115.for.body.i115_crit_edge ], [ %.pn30.i, %do.end.i.for.body.i115_crit_edge ]
  %link.0.i = getelementptr i8, ptr %.pn33.i, i32 -4, !dbg !1950
  %gcov_ctr24.i114 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 4), align 16, !dbg !1951
  %93 = add i64 %gcov_ctr24.i114, 1, !dbg !1951
  store i64 %93, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.168, i32 0, i32 4), align 16, !dbg !1951
  %94 = ptrtoint ptr %link.0.i to i32, !dbg !1952
  call void @__asan_load4_noabort(i32 %94), !dbg !1952
  %95 = load ptr, ptr %link.0.i, align 4, !dbg !1952
  call fastcc void @__uprobe_trace_func(ptr noundef %add.ptr, i32 noundef %func, ptr noundef %regs, ptr noundef %43, i32 noundef %ret.0.lcssa.i, ptr noundef %95) #21, !dbg !1953
  %96 = ptrtoint ptr %.pn33.i to i32, !dbg !1950
  call void @__asan_load4_noabort(i32 %96), !dbg !1950
  %.pn.i = load volatile ptr, ptr %.pn33.i, align 4, !dbg !1950
  %97 = ptrtoint ptr %event.i to i32, !dbg !1950
  call void @__asan_load4_noabort(i32 %97), !dbg !1950
  %98 = load ptr, ptr %event.i, align 4, !dbg !1950
  %files11.i = getelementptr inbounds %struct.trace_probe_event, ptr %98, i32 0, i32 3, !dbg !1950
  %cmp.not.i = icmp eq ptr %.pn.i, %files11.i, !dbg !1950
  br i1 %cmp.not.i, label %for.body.i115.uretprobe_trace_func.exit_crit_edge, label %for.body.i115.for.body.i115_crit_edge, !dbg !1950, !llvm.loop !1954

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1950
  br label %for.body.i115, !dbg !1950

for.body.i115.uretprobe_trace_func.exit_crit_edge: ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1950
  br label %uretprobe_trace_func.exit, !dbg !1950

uretprobe_trace_func.exit:                        ; preds = %for.body.i115.uretprobe_trace_func.exit_crit_edge, %do.end.i.uretprobe_trace_func.exit_crit_edge
  call fastcc void @rcu_read_unlock() #21, !dbg !1956
  br label %if.end49, !dbg !1957

if.end49:                                         ; preds = %uretprobe_trace_func.exit, %store_trace_args.exit.if.end49_crit_edge
  %gcov_ctr.i116 = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %99 = add i64 %gcov_ctr.i116, 1
  store i64 %99, ptr @__llvm_gcov_ctr.114, align 8
  %100 = ptrtoint ptr %event.i to i32, !dbg !1958
  call void @__asan_load4_noabort(i32 %100), !dbg !1958
  %101 = load ptr, ptr %event.i, align 4, !dbg !1958
  %102 = ptrtoint ptr %101 to i32, !dbg !1960
  call void @__asan_load4_noabort(i32 %102), !dbg !1960
  %103 = load i32, ptr %101, align 4, !dbg !1960
  %and.i118 = and i32 %103, 2, !dbg !1961
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118), !dbg !1962
  %tobool.i119.not = icmp eq i32 %and.i118, 0, !dbg !1962
  br i1 %tobool.i119.not, label %if.end49.if.end53_crit_edge, label %if.then52, !dbg !1963

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1963
  br label %if.end53, !dbg !1963

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1964
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !1964
  %104 = add i64 %gcov_ctr63, 1, !dbg !1964
  store i64 %104, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !1964
  %gcov_ctr.i120 = load i64, ptr @__llvm_gcov_ctr.169, align 8
  %105 = add i64 %gcov_ctr.i120, 1
  store i64 %105, ptr @__llvm_gcov_ctr.169, align 8
  call fastcc void @__uprobe_perf_func(ptr noundef %add.ptr, i32 noundef %func, ptr noundef %regs, ptr noundef %43, i32 noundef %ret.0.lcssa.i) #21, !dbg !1965
  br label %if.end53, !dbg !1968

if.end53:                                         ; preds = %if.then52, %if.end49.if.end53_crit_edge
  %gcov_ctr.i121 = load i64, ptr @__llvm_gcov_ctr.150, align 8
  %106 = add i64 %gcov_ctr.i121, 1
  store i64 %106, ptr @__llvm_gcov_ctr.150, align 8
  call void @mutex_unlock(ptr noundef %43) #21, !dbg !1969
  br label %cleanup, !dbg !1971

cleanup:                                          ; preds = %if.end53, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %udd) #21, !dbg !1972
  ret i32 0, !dbg !1972
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__uprobe_trace_func(ptr nocapture noundef readonly %tu, i32 noundef %func, ptr nocapture noundef readonly %regs, ptr nocapture noundef readonly %ucb, i32 noundef %dsize, ptr noundef %trace_file) unnamed_addr #0 align 64 !dbg !1973 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1974
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #21, !dbg !1975
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24), !dbg !1976
  %gcov_ctr.i137 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %1 = add i64 %gcov_ctr.i137, 1
  store i64 %1, ptr @__llvm_gcov_ctr.54, align 8
  %event.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 8, i32 1, !dbg !1977
  %2 = ptrtoint ptr %event.i to i32, !dbg !1977
  call void @__asan_load4_noabort(i32 %2), !dbg !1977
  %3 = load ptr, ptr %event.i, align 4, !dbg !1977
  %call.i138 = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 2, !dbg !1979
  %event_call = getelementptr inbounds %struct.trace_event_file, ptr %trace_file, i32 0, i32 1, !dbg !1980
  %4 = ptrtoint ptr %event_call to i32, !dbg !1980
  call void @__asan_load4_noabort(i32 %4), !dbg !1980
  %5 = load ptr, ptr %event_call, align 4, !dbg !1980
  %cmp.not = icmp eq ptr %call.i138, %5, !dbg !1980
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !dbg !1980, !prof !194

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1980
  br label %if.end, !dbg !1980

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1980
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 956, i32 noundef 9, ptr noundef null) #21, !dbg !1980
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.152, align 16, !dbg !1980
  %6 = add i64 %gcov_ctr, 1, !dbg !1980
  store i64 %6, ptr @__llvm_gcov_ctr.152, align 16, !dbg !1980
  br label %if.end, !dbg !1980

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %size22 = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 8, i32 2, !dbg !1981
  %7 = ptrtoint ptr %size22 to i32, !dbg !1981
  call void @__asan_load4_noabort(i32 %7), !dbg !1981
  %8 = load i32, ptr %size22, align 4, !dbg !1981
  %add = add i32 %8, %dsize, !dbg !1981
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add), !dbg !1981
  %cmp23 = icmp ugt i32 %add, 4096, !dbg !1981
  br i1 %cmp23, label %land.rhs, label %if.end75, !dbg !1981

land.rhs:                                         ; preds = %if.end
  %gcov_ctr108 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), align 8, !dbg !1981
  %9 = add i64 %gcov_ctr108, 1, !dbg !1981
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), align 8, !dbg !1981
  %.b135 = load i1, ptr @__uprobe_trace_func.__already_done, align 1, !dbg !1981
  br i1 %.b135, label %land.rhs.if.then74_crit_edge, label %if.then38, !dbg !1981, !prof !194

land.rhs.if.then74_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1981
  br label %if.then74, !dbg !1981

if.then38:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1981
  store i1 true, ptr @__uprobe_trace_func.__already_done, align 1, !dbg !1981
  %gcov_ctr109 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 2), align 16, !dbg !1981
  %10 = add i64 %gcov_ctr109, 1, !dbg !1981
  store i64 %10, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 2), align 16, !dbg !1981
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 958, i32 noundef 9, ptr noundef null) #21, !dbg !1981
  %gcov_ctr110 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 3), align 8, !dbg !1981
  %11 = add i64 %gcov_ctr110, 1, !dbg !1981
  store i64 %11, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 3), align 8, !dbg !1981
  br label %if.then74, !dbg !1981

if.then74:                                        ; preds = %if.then38, %land.rhs.if.then74_crit_edge
  %gcov_ctr111 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 4), align 16
  %12 = add i64 %gcov_ctr111, 1
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 4), align 16
  br label %cleanup, !dbg !1982

if.end75:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %trace_file, i32 0, i32 7, !dbg !1983
  %13 = ptrtoint ptr %flags.i to i32, !dbg !1983
  call void @__asan_load4_noabort(i32 %13), !dbg !1983
  %14 = load i32, ptr %flags.i, align 4, !dbg !1983
  %and.i = and i32 %14, 704, !dbg !1986
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !1986
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !1986
  br i1 %tobool.not.i, label %if.end75.if.end78.sink.split_crit_edge, label %if.end.i, !dbg !1986, !prof !194

if.end75.if.end78.sink.split_crit_edge:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1986
  br label %if.end78.sink.split, !dbg !1986

if.end.i:                                         ; preds = %if.end75
  %and4.i = and i32 %14, 256, !dbg !1987
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i), !dbg !1987
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !1987
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end78.sink.split_crit_edge, !dbg !1987, !prof !154

if.end.i.if.end78.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1987
  br label %if.end78.sink.split, !dbg !1987

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 1), align 8, !dbg !1988
  %15 = add i64 %gcov_ctr14.i, 1, !dbg !1988
  store i64 %15, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 1), align 8, !dbg !1988
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %trace_file) #21, !dbg !1989
  br i1 %call.i, label %if.then77, label %trace_trigger_soft_disabled.exit.if.end78_crit_edge, !dbg !1990

trace_trigger_soft_disabled.exit.if.end78_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1990
  br label %if.end78, !dbg !1990

if.then77:                                        ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1991
  %gcov_ctr112 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 5), align 8
  %16 = add i64 %gcov_ctr112, 1
  store i64 %16, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 5), align 8
  br label %cleanup, !dbg !1992

if.end78.sink.split:                              ; preds = %if.end.i.if.end78.sink.split_crit_edge, %if.end75.if.end78.sink.split_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.158, %if.end75.if.end78.sink.split_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 2), %if.end.i.if.end78.sink.split_crit_edge ]
  %17 = ptrtoint ptr %.sink to i32, !dbg !1993
  call void @__asan_load8_noabort(i32 %17), !dbg !1993
  %gcov_ctr15.i = load i64, ptr %.sink, align 16, !dbg !1993
  %18 = add i64 %gcov_ctr15.i, 1, !dbg !1993
  store i64 %18, ptr %.sink, align 16, !dbg !1993
  br label %if.end78

if.end78:                                         ; preds = %if.end78.sink.split, %trace_trigger_soft_disabled.exit.if.end78_crit_edge
  %gcov_ctr.i139 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %19 = add i64 %gcov_ctr.i139, 1
  store i64 %19, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 1, i32 1, !dbg !1994
  %20 = ptrtoint ptr %ret_handler.i to i32, !dbg !1994
  call void @__asan_load4_noabort(i32 %20), !dbg !1994
  %21 = load ptr, ptr %ret_handler.i, align 4, !dbg !1994
  %cmp.i.not = icmp eq ptr %21, null, !dbg !1996
  %add80 = select i1 %cmp.i.not, i32 12, i32 16, !dbg !1997
  %22 = ptrtoint ptr %size22 to i32, !dbg !1998
  call void @__asan_load4_noabort(i32 %22), !dbg !1998
  %23 = load i32, ptr %size22, align 4, !dbg !1998
  %add83 = add i32 %23, %dsize, !dbg !1999
  %add84 = add i32 %add83, %add80, !dbg !2000
  %call85 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %trace_file, i32 noundef %add84) #21, !dbg !2001
  %tobool86.not = icmp eq ptr %call85, null, !dbg !2002
  br i1 %tobool86.not, label %if.then87, label %if.end88, !dbg !2003

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #20, !dbg !1991
  %gcov_ctr113 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 6), align 16
  %24 = add i64 %gcov_ctr113, 1
  store i64 %24, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 6), align 16
  br label %cleanup, !dbg !2004

if.end88:                                         ; preds = %if.end78
  %gcov_ctr.i140 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %25 = add i64 %gcov_ctr.i140, 1
  store i64 %25, ptr @__llvm_gcov_ctr.45, align 8
  %26 = ptrtoint ptr %ret_handler.i to i32, !dbg !2005
  call void @__asan_load4_noabort(i32 %26), !dbg !2005
  %27 = load ptr, ptr %ret_handler.i, align 4, !dbg !2005
  %cmp.i142.not = icmp eq ptr %27, null, !dbg !2007
  br i1 %cmp.i142.not, label %if.else, label %if.then90, !dbg !2008

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2009
  %gcov_ctr114 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 7), align 8, !dbg !2009
  %28 = add i64 %gcov_ctr114, 1, !dbg !2009
  store i64 %28, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 7), align 8, !dbg !2009
  %vaddr = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %call85, i32 0, i32 1, !dbg !2010
  %29 = ptrtoint ptr %vaddr to i32, !dbg !2011
  call void @__asan_store4_noabort(i32 %29), !dbg !2011
  store i32 %func, ptr %vaddr, align 4, !dbg !2011
  %arrayidx91 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15, !dbg !2012
  %30 = ptrtoint ptr %arrayidx91 to i32, !dbg !2012
  call void @__asan_load4_noabort(i32 %30), !dbg !2012
  %31 = load i32, ptr %arrayidx91, align 4, !dbg !2012
  %arrayidx93 = getelementptr %struct.uprobe_trace_entry_head, ptr %call85, i32 1, i32 0, i32 3, !dbg !2013
  %32 = ptrtoint ptr %arrayidx93 to i32, !dbg !2014
  call void @__asan_store4_noabort(i32 %32), !dbg !2014
  store i32 %31, ptr %arrayidx93, align 4, !dbg !2014
  br label %if.end99, !dbg !2015

if.else:                                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2016
  %gcov_ctr115 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 8), align 16, !dbg !2016
  %33 = add i64 %gcov_ctr115, 1, !dbg !2016
  store i64 %33, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 8), align 16, !dbg !2016
  %arrayidx95 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15, !dbg !2016
  %34 = ptrtoint ptr %arrayidx95 to i32, !dbg !2016
  call void @__asan_load4_noabort(i32 %34), !dbg !2016
  %35 = load i32, ptr %arrayidx95, align 4, !dbg !2016
  %vaddr96 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %call85, i32 0, i32 1, !dbg !2017
  %36 = ptrtoint ptr %vaddr96 to i32, !dbg !2018
  call void @__asan_store4_noabort(i32 %36), !dbg !2018
  store i32 %35, ptr %vaddr96, align 4, !dbg !2018
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then90
  %.sink145 = phi i32 [ 12, %if.else ], [ 16, %if.then90 ]
  %add.ptr98 = getelementptr i8, ptr %call85, i32 %.sink145, !dbg !1991
  %buf = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %ucb, i32 0, i32 1, !dbg !2019
  %37 = ptrtoint ptr %buf to i32, !dbg !2019
  call void @__asan_load4_noabort(i32 %37), !dbg !2019
  %38 = load ptr, ptr %buf, align 4, !dbg !2019
  %39 = ptrtoint ptr %size22 to i32, !dbg !2020
  call void @__asan_load4_noabort(i32 %39), !dbg !2020
  %40 = load i32, ptr %size22, align 4, !dbg !2020
  %add102 = add i32 %40, %dsize, !dbg !2021
  %41 = call ptr @memcpy(ptr %add.ptr98, ptr %38, i32 %add102), !dbg !2022
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #21, !dbg !2023
  br label %cleanup, !dbg !2024

cleanup:                                          ; preds = %if.end99, %if.then87, %if.then77, %if.then74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #21, !dbg !2024
  ret void, !dbg !2024
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #14 align 64 !dbg !2025 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2026
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.153, align 16, !dbg !2027
  %0 = add i64 %gcov_ctr, 1, !dbg !2027
  store i64 %0, ptr @__llvm_gcov_ctr.153, align 16, !dbg !2027
  %call = tail call zeroext i1 @rcu_is_watching() #21, !dbg !2027
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true, !dbg !2027

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2027
  br label %do.end, !dbg !2027

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 1), align 8, !dbg !2027
  %1 = add i64 %gcov_ctr4, 1, !dbg !2027
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 1), align 8, !dbg !2027
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #21, !dbg !2027
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !2027
  %tobool.not = icmp eq i32 %call1, 0, !dbg !2027
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2, !dbg !2027

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2027
  br label %do.end, !dbg !2027

land.lhs.true2:                                   ; preds = %land.lhs.true
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 2), align 16, !dbg !2027
  %2 = add i64 %gcov_ctr5, 1, !dbg !2027
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 2), align 16, !dbg !2027
  %.b7 = load i1, ptr @rcu_read_unlock.__warned, align 1, !dbg !2027
  br i1 %.b7, label %land.lhs.true2.do.end_crit_edge, label %if.then, !dbg !2027

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2027
  br label %do.end, !dbg !2027

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2027
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 3), align 8, !dbg !2027
  %3 = add i64 %gcov_ctr6, 1, !dbg !2027
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 3), align 8, !dbg !2027
  store i1 true, ptr @rcu_read_unlock.__warned, align 1, !dbg !2027
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #21, !dbg !2027
  br label %do.end, !dbg !2027

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.159, align 8, !dbg !2028
  %4 = add i64 %gcov_ctr.i, 1, !dbg !2028
  store i64 %4, ptr @__llvm_gcov_ctr.159, align 8, !dbg !2028
  tail call void asm sideeffect "", "~{memory}"() #21, !dbg !2028, !srcloc !2031
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.161, align 8
  %5 = add i64 %gcov_ctr.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.161, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2032
  %6 = add i64 %gcov_ctr.i.i.i, 1, !dbg !2032
  store i64 %6, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2032
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2036
  %7 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !2036
  store i64 %7, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2036
  %8 = tail call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !2036
  %and.i.i.i.i = and i32 %8, -16384, !dbg !2038
  %9 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !2039
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1, !dbg !2040
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !2041
  call void @__asan_load4_noabort(i32 %10), !dbg !2041
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !2041
  %sub.i.i = add i32 %11, -1, !dbg !2041
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !2041
  tail call void @rcu_read_unlock_strict() #21, !dbg !2042
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.160, align 8
  %12 = add i64 %gcov_ctr.i8, 1
  store i64 %12, ptr @__llvm_gcov_ctr.160, align 8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef 1) #21, !dbg !2043
  ret void, !dbg !2046
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @uprobe_perf_filter(ptr nocapture noundef readonly %uc, i32 noundef %ctx, ptr noundef readnone %mm) #0 align 64 !dbg !1814 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2047
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.162, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.162, align 8
  %event = getelementptr i8, ptr %uc, i32 52, !dbg !2048
  %1 = ptrtoint ptr %event to i32, !dbg !2048
  call void @__asan_load4_noabort(i32 %1), !dbg !2048
  %2 = load ptr, ptr %event, align 4, !dbg !2048
  %filter1 = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 5, !dbg !2049
  tail call void @_raw_read_lock(ptr noundef %filter1) #21, !dbg !2050
  %nr_systemwide.i = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 1, i32 2, i32 0, i32 1, !dbg !2051
  %3 = ptrtoint ptr %nr_systemwide.i to i32, !dbg !2051
  call void @__asan_load4_noabort(i32 %3), !dbg !2051
  %4 = load i32, ptr %nr_systemwide.i, align 4, !dbg !2051
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4), !dbg !2053
  %tobool.not.i = icmp eq i32 %4, 0, !dbg !2053
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !2053

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2054
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.164, align 16, !dbg !2054
  %5 = add i64 %gcov_ctr.i, 1, !dbg !2054
  store i64 %5, ptr @__llvm_gcov_ctr.164, align 16, !dbg !2054
  br label %__uprobe_perf_filter.exit, !dbg !2054

if.end.i:                                         ; preds = %entry
  %perf_events.i = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 1, i32 2, i32 1, !dbg !2055
  %6 = ptrtoint ptr %perf_events.i to i32, !dbg !2055
  call void @__asan_load4_noabort(i32 %6), !dbg !2055
  %.pn20.i = load ptr, ptr %perf_events.i, align 4, !dbg !2055
  %cmp.not21.i = icmp eq ptr %.pn20.i, %perf_events.i, !dbg !2055
  br i1 %cmp.not21.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge, !dbg !2055

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i, !dbg !2055

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2055
  br label %for.end.i, !dbg !2055

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.end.i.for.body.i_crit_edge ]
  %target.i = getelementptr inbounds %struct.hw_perf_event, ptr %.pn22.i, i32 0, i32 1, !dbg !2056
  %7 = ptrtoint ptr %target.i to i32, !dbg !2056
  call void @__asan_load4_noabort(i32 %7), !dbg !2056
  %8 = load ptr, ptr %target.i, align 8, !dbg !2056
  %mm3.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 53, !dbg !2057
  %9 = ptrtoint ptr %mm3.i to i32, !dbg !2057
  call void @__asan_load4_noabort(i32 %9), !dbg !2057
  %10 = load ptr, ptr %mm3.i, align 8, !dbg !2057
  %cmp4.i = icmp eq ptr %10, %mm, !dbg !2058
  br i1 %cmp4.i, label %if.then5.i, label %for.inc.i, !dbg !2059

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2060
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !2060
  %11 = add i64 %gcov_ctr13.i, 1, !dbg !2060
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !2060
  br label %__uprobe_perf_filter.exit, !dbg !2060

for.inc.i:                                        ; preds = %for.body.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !2055
  %12 = add i64 %gcov_ctr14.i, 1, !dbg !2055
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !2055
  %13 = ptrtoint ptr %.pn22.i to i32, !dbg !2055
  call void @__asan_load4_noabort(i32 %13), !dbg !2055
  %.pn.i = load ptr, ptr %.pn22.i, align 4, !dbg !2055
  %cmp.not.i = icmp eq ptr %.pn.i, %perf_events.i, !dbg !2055
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !2055, !llvm.loop !2061

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2055
  br label %for.body.i, !dbg !2055

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2055
  br label %for.end.i, !dbg !2055

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %gcov_ctr15.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), align 8, !dbg !2063
  %14 = add i64 %gcov_ctr15.i, 1, !dbg !2063
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), align 8, !dbg !2063
  br label %__uprobe_perf_filter.exit, !dbg !2063

__uprobe_perf_filter.exit:                        ; preds = %for.end.i, %if.then5.i, %if.then.i
  %retval.0.i = phi i1 [ true, %if.then.i ], [ true, %if.then5.i ], [ false, %for.end.i ], !dbg !2064
  tail call void @_raw_read_unlock(ptr noundef %filter1) #21, !dbg !2065
  ret i1 %retval.0.i, !dbg !2066
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__uprobe_perf_func(ptr nocapture noundef readonly %tu, i32 noundef %func, ptr noundef %regs, ptr nocapture noundef readonly %ucb, i32 noundef %dsize) unnamed_addr #0 align 64 !dbg !2067 {
entry:
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2068
  %gcov_ctr.i183 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %0 = add i64 %gcov_ctr.i183, 1
  store i64 %0, ptr @__llvm_gcov_ctr.54, align 8
  %event.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 8, i32 1, !dbg !2069
  %1 = ptrtoint ptr %event.i to i32, !dbg !2069
  call void @__asan_load4_noabort(i32 %1), !dbg !2069
  %2 = load ptr, ptr %event.i, align 4, !dbg !2069
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #21, !dbg !2071
  %3 = ptrtoint ptr %rctx to i32, !dbg !2072
  call void @__asan_store4_noabort(i32 %3), !dbg !2072
  store i32 -1, ptr %rctx, align 4, !dbg !2072, !annotation !168
  %gcov_ctr.i184 = load i64, ptr @__llvm_gcov_ctr.165, align 8
  %4 = add i64 %gcov_ctr.i184, 1
  store i64 %4, ptr @__llvm_gcov_ctr.165, align 8
  %prog_array.i = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 2, i32 11, !dbg !2073
  %5 = ptrtoint ptr %prog_array.i to i32, !dbg !2073
  call void @__asan_load4_noabort(i32 %5), !dbg !2073
  %6 = load volatile ptr, ptr %prog_array.i, align 4, !dbg !2073
  %tobool.i.not = icmp eq ptr %6, null, !dbg !2076
  br i1 %tobool.i.not, label %entry.if.end9_crit_edge, label %if.then, !dbg !2077

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2077
  br label %if.end9, !dbg !2077

if.then:                                          ; preds = %entry
  %call.i = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 2, !dbg !2078
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.156, align 8
  %7 = add i64 %gcov_ctr.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.156, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2079
  %8 = add i64 %gcov_ctr.i.i, 1, !dbg !2079
  store i64 %8, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2079
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2082
  %9 = add i64 %gcov_ctr.i.i.i, 1, !dbg !2082
  store i64 %9, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2082
  %10 = tail call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !2082
  %and.i.i.i = and i32 %10, -16384, !dbg !2084
  %11 = inttoptr i32 %and.i.i.i to ptr, !dbg !2085
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1, !dbg !2086
  %12 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !2087
  call void @__asan_load4_noabort(i32 %12), !dbg !2087
  %13 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !2087
  %add.i = add i32 %13, 1, !dbg !2087
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !2087
  tail call void asm sideeffect "", "~{memory}"() #21, !dbg !2088, !srcloc !2089
  %call4 = tail call i32 @trace_call_bpf(ptr noundef %call.i, ptr noundef %regs) #21, !dbg !2090
  tail call void asm sideeffect "", "~{memory}"() #21, !dbg !2091, !srcloc !2092
  %gcov_ctr.i166 = load i64, ptr @__llvm_gcov_ctr.161, align 8
  %14 = add i64 %gcov_ctr.i166, 1
  store i64 %14, ptr @__llvm_gcov_ctr.161, align 8
  %gcov_ctr.i.i167 = load i64, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2093
  %15 = add i64 %gcov_ctr.i.i167, 1, !dbg !2093
  store i64 %15, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2093
  %gcov_ctr.i.i.i168 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2096
  %16 = add i64 %gcov_ctr.i.i.i168, 1, !dbg !2096
  store i64 %16, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2096
  %17 = tail call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !2096
  %and.i.i.i169 = and i32 %17, -16384, !dbg !2098
  %18 = inttoptr i32 %and.i.i.i169 to ptr, !dbg !2099
  %preempt_count.i.i170 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1, !dbg !2100
  %19 = ptrtoint ptr %preempt_count.i.i170 to i32, !dbg !2101
  call void @__asan_load4_noabort(i32 %19), !dbg !2101
  %20 = load volatile i32, ptr %preempt_count.i.i170, align 4, !dbg !2101
  %sub.i = add i32 %20, -1, !dbg !2101
  store volatile i32 %sub.i, ptr %preempt_count.i.i170, align 4, !dbg !2101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !2102
  %tobool.not = icmp eq i32 %call4, 0, !dbg !2102
  br i1 %tobool.not, label %if.then8, label %if.end, !dbg !2103

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2104
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.163, align 16
  %21 = add i64 %gcov_ctr, 1
  store i64 %21, ptr @__llvm_gcov_ctr.163, align 16
  br label %cleanup109

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2105
  %gcov_ctr118 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 1), align 8, !dbg !2105
  %22 = add i64 %gcov_ctr118, 1, !dbg !2105
  store i64 %22, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 1), align 8, !dbg !2105
  %gcov_ctr119 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 2), align 16, !dbg !2105
  %23 = add i64 %gcov_ctr119, 1, !dbg !2105
  store i64 %23, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 2), align 16, !dbg !2105
  br label %if.end9, !dbg !2105

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %gcov_ctr.i185 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %24 = add i64 %gcov_ctr.i185, 1
  store i64 %24, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 1, i32 1, !dbg !2106
  %25 = ptrtoint ptr %ret_handler.i to i32, !dbg !2106
  call void @__asan_load4_noabort(i32 %25), !dbg !2106
  %26 = load ptr, ptr %ret_handler.i, align 4, !dbg !2106
  %cmp.i.not = icmp eq ptr %26, null, !dbg !2108
  %add = select i1 %cmp.i.not, i32 12, i32 16, !dbg !2109
  %size12 = getelementptr inbounds %struct.trace_uprobe, ptr %tu, i32 0, i32 8, i32 2, !dbg !2110
  %27 = ptrtoint ptr %size12 to i32, !dbg !2110
  call void @__asan_load4_noabort(i32 %27), !dbg !2110
  %28 = load i32, ptr %size12, align 4, !dbg !2110
  %add13 = add i32 %dsize, 11, !dbg !2111
  %add14 = add i32 %add13, %28, !dbg !2112
  %add16 = add i32 %add14, %add, !dbg !2113
  %and = and i32 %add16, -8, !dbg !2113
  %sub = add i32 %and, -4, !dbg !2114
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub), !dbg !2115
  %cmp = icmp sgt i32 %sub, 8192, !dbg !2115
  br i1 %cmp, label %land.rhs, label %do.body60, !dbg !2115

land.rhs:                                         ; preds = %if.end9
  %gcov_ctr120 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 3), align 8, !dbg !2115
  %29 = add i64 %gcov_ctr120, 1, !dbg !2115
  store i64 %29, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 3), align 8, !dbg !2115
  %.b164 = load i1, ptr @__uprobe_perf_func.__already_done, align 1, !dbg !2115
  br i1 %.b164, label %land.rhs.if.then58_crit_edge, label %if.then24, !dbg !2115, !prof !194

land.rhs.if.then58_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2115
  br label %if.then58, !dbg !2115

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2115
  %gcov_ctr121 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 4), align 16, !dbg !2115
  %30 = add i64 %gcov_ctr121, 1, !dbg !2115
  store i64 %30, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 4), align 16, !dbg !2115
  store i1 true, ptr @__uprobe_perf_func.__already_done, align 1, !dbg !2115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1360, i32 noundef 9, ptr noundef nonnull @.str.26) #21, !dbg !2115
  %gcov_ctr122 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 5), align 8, !dbg !2115
  %31 = add i64 %gcov_ctr122, 1, !dbg !2115
  store i64 %31, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 5), align 8, !dbg !2115
  br label %if.then58, !dbg !2115

if.then58:                                        ; preds = %if.then24, %land.rhs.if.then58_crit_edge
  %gcov_ctr123 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 6), align 16
  %32 = add i64 %gcov_ctr123, 1
  store i64 %32, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 6), align 16
  br label %cleanup109, !dbg !2116

do.body60:                                        ; preds = %if.end9
  %gcov_ctr.i171 = load i64, ptr @__llvm_gcov_ctr.156, align 8
  %33 = add i64 %gcov_ctr.i171, 1
  store i64 %33, ptr @__llvm_gcov_ctr.156, align 8
  %gcov_ctr.i.i172 = load i64, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2117
  %34 = add i64 %gcov_ctr.i.i172, 1, !dbg !2117
  store i64 %34, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2117
  %gcov_ctr.i.i.i173 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2120
  %35 = add i64 %gcov_ctr.i.i.i173, 1, !dbg !2120
  store i64 %35, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2120
  %36 = tail call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !2120
  %and.i.i.i174 = and i32 %36, -16384, !dbg !2122
  %37 = inttoptr i32 %and.i.i.i174 to ptr, !dbg !2123
  %preempt_count.i.i175 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1, !dbg !2124
  %38 = ptrtoint ptr %preempt_count.i.i175 to i32, !dbg !2125
  call void @__asan_load4_noabort(i32 %38), !dbg !2125
  %39 = load volatile i32, ptr %preempt_count.i.i175, align 4, !dbg !2125
  %add.i176 = add i32 %39, 1, !dbg !2125
  store volatile i32 %add.i176, ptr %preempt_count.i.i175, align 4, !dbg !2125
  tail call void asm sideeffect "", "~{memory}"() #21, !dbg !2126, !srcloc !2127
  %perf_events = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 2, i32 10, !dbg !2128
  %40 = ptrtoint ptr %perf_events to i32, !dbg !2128
  call void @__asan_load4_noabort(i32 %40), !dbg !2128
  %41 = load ptr, ptr %perf_events, align 4, !dbg !2128
  %42 = ptrtoint ptr %41 to i32, !dbg !2128
  %gcov_ctr.i186 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2129
  %43 = add i64 %gcov_ctr.i186, 1, !dbg !2129
  store i64 %43, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2129
  %44 = tail call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !2129
  %and.i = and i32 %44, -16384, !dbg !2131
  %45 = inttoptr i32 %and.i to ptr, !dbg !2132
  %cpu = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3, !dbg !2128
  %46 = ptrtoint ptr %cpu to i32, !dbg !2128
  call void @__asan_load4_noabort(i32 %46), !dbg !2128
  %47 = load i32, ptr %cpu, align 4, !dbg !2128
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47, !dbg !2128
  %48 = ptrtoint ptr %arrayidx to i32, !dbg !2128
  call void @__asan_load4_noabort(i32 %48), !dbg !2128
  %49 = load i32, ptr %arrayidx, align 4, !dbg !2128
  %add69 = add i32 %49, %42, !dbg !2128
  %50 = inttoptr i32 %add69 to ptr, !dbg !2128
  %gcov_ctr.i187 = load i64, ptr @__llvm_gcov_ctr.166, align 8
  %51 = add i64 %gcov_ctr.i187, 1
  store i64 %51, ptr @__llvm_gcov_ctr.166, align 8
  %52 = ptrtoint ptr %50 to i32, !dbg !2133
  call void @__asan_load4_noabort(i32 %52), !dbg !2133
  %53 = load volatile ptr, ptr %50, align 4, !dbg !2133
  %tobool.not.i.not = icmp eq ptr %53, null, !dbg !2136
  br i1 %tobool.not.i.not, label %if.then72, label %if.end73, !dbg !2137

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2138
  %gcov_ctr124 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 7), align 8, !dbg !2138
  %54 = add i64 %gcov_ctr124, 1, !dbg !2138
  store i64 %54, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 7), align 8, !dbg !2138
  br label %do.body106, !dbg !2138

if.end73:                                         ; preds = %do.body60
  %call74 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef null, ptr noundef nonnull %rctx) #21, !dbg !2139
  %tobool75.not = icmp eq ptr %call74, null, !dbg !2140
  br i1 %tobool75.not, label %if.then76, label %if.end77, !dbg !2141

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2142
  %gcov_ctr125 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 8), align 16, !dbg !2142
  %55 = add i64 %gcov_ctr125, 1, !dbg !2142
  store i64 %55, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 8), align 16, !dbg !2142
  br label %do.body106, !dbg !2142

if.end77:                                         ; preds = %if.end73
  %gcov_ctr.i188 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %56 = add i64 %gcov_ctr.i188, 1
  store i64 %56, ptr @__llvm_gcov_ctr.45, align 8
  %57 = ptrtoint ptr %ret_handler.i to i32, !dbg !2143
  call void @__asan_load4_noabort(i32 %57), !dbg !2143
  %58 = load ptr, ptr %ret_handler.i, align 4, !dbg !2143
  %cmp.i190.not = icmp eq ptr %58, null, !dbg !2145
  br i1 %cmp.i190.not, label %if.else, label %if.then79, !dbg !2146

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2147
  %gcov_ctr126 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 9), align 8, !dbg !2147
  %59 = add i64 %gcov_ctr126, 1, !dbg !2147
  store i64 %59, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 9), align 8, !dbg !2147
  %vaddr = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %call74, i32 0, i32 1, !dbg !2148
  %60 = ptrtoint ptr %vaddr to i32, !dbg !2149
  call void @__asan_store4_noabort(i32 %60), !dbg !2149
  store i32 %func, ptr %vaddr, align 4, !dbg !2149
  %arrayidx81 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15, !dbg !2150
  %61 = ptrtoint ptr %arrayidx81 to i32, !dbg !2150
  call void @__asan_load4_noabort(i32 %61), !dbg !2150
  %62 = load i32, ptr %arrayidx81, align 4, !dbg !2150
  %arrayidx83 = getelementptr %struct.uprobe_trace_entry_head, ptr %call74, i32 1, i32 0, i32 3, !dbg !2151
  %63 = ptrtoint ptr %arrayidx83 to i32, !dbg !2152
  call void @__asan_store4_noabort(i32 %63), !dbg !2152
  store i32 %62, ptr %arrayidx83, align 4, !dbg !2152
  br label %if.end89, !dbg !2153

if.else:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2154
  %gcov_ctr127 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 10), align 16, !dbg !2154
  %64 = add i64 %gcov_ctr127, 1, !dbg !2154
  store i64 %64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 10), align 16, !dbg !2154
  %arrayidx85 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15, !dbg !2154
  %65 = ptrtoint ptr %arrayidx85 to i32, !dbg !2154
  call void @__asan_load4_noabort(i32 %65), !dbg !2154
  %66 = load i32, ptr %arrayidx85, align 4, !dbg !2154
  %vaddr86 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %call74, i32 0, i32 1, !dbg !2155
  %67 = ptrtoint ptr %vaddr86 to i32, !dbg !2156
  call void @__asan_store4_noabort(i32 %67), !dbg !2156
  store i32 %66, ptr %vaddr86, align 4, !dbg !2156
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then79
  %.sink = phi i32 [ 12, %if.else ], [ 16, %if.then79 ]
  %add.ptr88 = getelementptr i8, ptr %call74, i32 %.sink, !dbg !2104
  %buf = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %ucb, i32 0, i32 1, !dbg !2157
  %68 = ptrtoint ptr %buf to i32, !dbg !2157
  call void @__asan_load4_noabort(i32 %68), !dbg !2157
  %69 = load ptr, ptr %buf, align 4, !dbg !2157
  %70 = ptrtoint ptr %size12 to i32, !dbg !2158
  call void @__asan_load4_noabort(i32 %70), !dbg !2158
  %71 = load i32, ptr %size12, align 4, !dbg !2158
  %add92 = add i32 %71, %dsize, !dbg !2159
  %72 = call ptr @memcpy(ptr %add.ptr88, ptr %69, i32 %add92), !dbg !2160
  %sub93 = sub i32 %sub, %add, !dbg !2161
  %73 = load i32, ptr %size12, align 4, !dbg !2162
  %add96 = add i32 %73, %dsize, !dbg !2163
  call void @__sanitizer_cov_trace_cmp4(i32 %sub93, i32 %add96), !dbg !2164
  %cmp97 = icmp sgt i32 %sub93, %add96, !dbg !2164
  br i1 %cmp97, label %if.then98, label %if.end89.if.end105_crit_edge, !dbg !2165

if.end89.if.end105_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2165
  br label %if.end105, !dbg !2165

if.then98:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2166
  %gcov_ctr128 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 11), align 8, !dbg !2166
  %74 = add i64 %gcov_ctr128, 1, !dbg !2166
  store i64 %74, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 11), align 8, !dbg !2166
  %75 = ptrtoint ptr %size12 to i32, !dbg !2167
  call void @__asan_load4_noabort(i32 %75), !dbg !2167
  %76 = load i32, ptr %size12, align 4, !dbg !2167
  %add101 = add i32 %76, %dsize, !dbg !2168
  %add.ptr102 = getelementptr i8, ptr %add.ptr88, i32 %add101, !dbg !2169
  %sub104 = sub i32 %sub93, %add101, !dbg !2170
  %77 = call ptr @memset(ptr %add.ptr102, i32 0, i32 %sub104), !dbg !2171
  br label %if.end105, !dbg !2172

if.end105:                                        ; preds = %if.then98, %if.end89.if.end105_crit_edge
  %78 = ptrtoint ptr %rctx to i32, !dbg !2173
  call void @__asan_load4_noabort(i32 %78), !dbg !2173
  %79 = load i32, ptr %rctx, align 4, !dbg !2173
  %type = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 2, i32 3, i32 2, !dbg !2174
  %80 = ptrtoint ptr %type to i32, !dbg !2174
  call void @__asan_load4_noabort(i32 %80), !dbg !2174
  %81 = load i32, ptr %type, align 4, !dbg !2174
  %conv = trunc i32 %81 to i16, !dbg !2175
  %gcov_ctr.i191 = load i64, ptr @__llvm_gcov_ctr.167, align 8
  %82 = add i64 %gcov_ctr.i191, 1
  store i64 %82, ptr @__llvm_gcov_ctr.167, align 8
  call void @perf_tp_event(i16 noundef zeroext %conv, i64 noundef 1, ptr noundef nonnull %call74, i32 noundef %sub, ptr noundef %regs, ptr noundef %50, i32 noundef %79, ptr noundef null) #21, !dbg !2176
  br label %do.body106, !dbg !2179

do.body106:                                       ; preds = %if.end105, %if.then76, %if.then72
  call void asm sideeffect "", "~{memory}"() #21, !dbg !2180, !srcloc !2181
  %gcov_ctr.i177 = load i64, ptr @__llvm_gcov_ctr.161, align 8
  %83 = add i64 %gcov_ctr.i177, 1
  store i64 %83, ptr @__llvm_gcov_ctr.161, align 8
  %gcov_ctr.i.i178 = load i64, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2182
  %84 = add i64 %gcov_ctr.i.i178, 1, !dbg !2182
  store i64 %84, ptr @__llvm_gcov_ctr.157, align 8, !dbg !2182
  %gcov_ctr.i.i.i179 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2185
  %85 = add i64 %gcov_ctr.i.i.i179, 1, !dbg !2185
  store i64 %85, ptr @__llvm_gcov_ctr.77, align 8, !dbg !2185
  %86 = call i32 @llvm.read_register.i32(metadata !131) #21, !dbg !2185
  %and.i.i.i180 = and i32 %86, -16384, !dbg !2187
  %87 = inttoptr i32 %and.i.i.i180 to ptr, !dbg !2188
  %preempt_count.i.i181 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1, !dbg !2189
  %88 = ptrtoint ptr %preempt_count.i.i181 to i32, !dbg !2190
  call void @__asan_load4_noabort(i32 %88), !dbg !2190
  %89 = load volatile i32, ptr %preempt_count.i.i181, align 4, !dbg !2190
  %sub.i182 = add i32 %89, -1, !dbg !2190
  store volatile i32 %sub.i182, ptr %preempt_count.i.i181, align 4, !dbg !2190
  br label %cleanup109, !dbg !2191

cleanup109:                                       ; preds = %do.body106, %if.then58, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #21, !dbg !2191
  ret void, !dbg !2191
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_call_bpf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_tp_event(i16 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_uprobe_register(ptr nocapture noundef readonly %event, i32 noundef %type, ptr noundef %data) #0 align 64 !dbg !2192 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2193
  %0 = zext i32 %type to i64, !dbg !2194
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.209), !dbg !2194
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
  ], !dbg !2194

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2195
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.170, align 16, !dbg !2195
  %1 = add i64 %gcov_ctr, 1, !dbg !2195
  store i64 %1, ptr @__llvm_gcov_ctr.170, align 16, !dbg !2195
  %call = tail call fastcc i32 @probe_event_enable(ptr noundef %event, ptr noundef %data, ptr noundef null), !dbg !2196
  br label %cleanup, !dbg !2197

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2198
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 1), align 8, !dbg !2198
  %2 = add i64 %gcov_ctr9, 1, !dbg !2198
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 1), align 8, !dbg !2198
  tail call fastcc void @probe_event_disable(ptr noundef %event, ptr noundef %data), !dbg !2199
  br label %cleanup, !dbg !2200

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2201
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 2), align 16, !dbg !2201
  %3 = add i64 %gcov_ctr10, 1, !dbg !2201
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 2), align 16, !dbg !2201
  %call3 = tail call fastcc i32 @probe_event_enable(ptr noundef %event, ptr noundef null, ptr noundef nonnull @uprobe_perf_filter), !dbg !2202
  br label %cleanup, !dbg !2203

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2204
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 3), align 8, !dbg !2204
  %4 = add i64 %gcov_ctr11, 1, !dbg !2204
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 3), align 8, !dbg !2204
  tail call fastcc void @probe_event_disable(ptr noundef %event, ptr noundef null), !dbg !2205
  br label %cleanup, !dbg !2206

sw.bb5:                                           ; preds = %entry
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 4), align 16, !dbg !2207
  %5 = add i64 %gcov_ctr12, 1, !dbg !2207
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 4), align 16, !dbg !2207
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %6 = add i64 %gcov_ctr.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %7 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i.i = getelementptr i8, ptr %event, i32 84, !dbg !2208
  %8 = ptrtoint ptr %probes.i.i to i32, !dbg !2208
  call void @__asan_load4_noabort(i32 %8), !dbg !2208
  %9 = load ptr, ptr %probes.i.i, align 4, !dbg !2208
  %tobool.not.i = icmp eq ptr %9, null, !dbg !2212
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i, !dbg !2212

land.rhs.i:                                       ; preds = %sw.bb5
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.176, align 16, !dbg !2212
  %10 = add i64 %gcov_ctr.i, 1, !dbg !2212
  store i64 %10, ptr @__llvm_gcov_ctr.176, align 16, !dbg !2212
  %.b88.i = load i1, ptr @uprobe_perf_open.__already_done, align 1, !dbg !2212
  br i1 %.b88.i, label %land.rhs.i.if.then39.i_crit_edge, label %if.then.i, !dbg !2212, !prof !194

land.rhs.i.if.then39.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2212
  br label %if.then39.i, !dbg !2212

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2212
  %gcov_ctr68.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 1), align 8, !dbg !2212
  %11 = add i64 %gcov_ctr68.i, 1, !dbg !2212
  store i64 %11, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 1), align 8, !dbg !2212
  store i1 true, ptr @uprobe_perf_open.__already_done, align 1, !dbg !2212
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1300, i32 noundef 9, ptr noundef null) #21, !dbg !2212
  %gcov_ctr69.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 2), align 16, !dbg !2212
  %12 = add i64 %gcov_ctr69.i, 1, !dbg !2212
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 2), align 16, !dbg !2212
  br label %if.then39.i, !dbg !2212

if.then39.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then39.i_crit_edge
  %gcov_ctr70.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 3), align 8, !dbg !2213
  %13 = add i64 %gcov_ctr70.i, 1, !dbg !2213
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 3), align 8, !dbg !2213
  br label %cleanup, !dbg !2213

if.end40.i:                                       ; preds = %sw.bb5
  %event43.i = getelementptr inbounds %struct.trace_probe, ptr %9, i32 0, i32 1, !dbg !2214
  %14 = ptrtoint ptr %event43.i to i32, !dbg !2214
  call void @__asan_load4_noabort(i32 %14), !dbg !2214
  %15 = load ptr, ptr %event43.i, align 4, !dbg !2214
  %filter.i = getelementptr inbounds %struct.trace_probe_event, ptr %15, i32 0, i32 5, !dbg !2215
  tail call void @_raw_write_lock(ptr noundef %filter.i) #21, !dbg !2216
  %hw.i.i = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 25, !dbg !2219
  %target.i.i = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 25, i32 1, !dbg !2220
  %16 = ptrtoint ptr %target.i.i to i32, !dbg !2220
  call void @__asan_load4_noabort(i32 %16), !dbg !2220
  %17 = load ptr, ptr %target.i.i, align 8, !dbg !2220
  %tobool.not.i.i = icmp eq ptr %17, null, !dbg !2221
  br i1 %tobool.not.i.i, label %trace_uprobe_filter_add.exit.i, label %if.then.i.i, !dbg !2221

if.then.i.i:                                      ; preds = %if.end40.i
  %gcov_ctr.i90.i = load i64, ptr @__llvm_gcov_ctr.191, align 16, !dbg !2222
  %18 = add i64 %gcov_ctr.i90.i, 1, !dbg !2222
  store i64 %18, ptr @__llvm_gcov_ctr.191, align 16, !dbg !2222
  %nr_systemwide.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %15, i32 1, i32 2, i32 0, i32 1, !dbg !2223
  %19 = ptrtoint ptr %nr_systemwide.i.i to i32, !dbg !2223
  call void @__asan_load4_noabort(i32 %19), !dbg !2223
  %20 = load i32, ptr %nr_systemwide.i.i, align 4, !dbg !2223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20), !dbg !2222
  %tobool1.not.i.i = icmp eq i32 %20, 0, !dbg !2222
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.i.lor.end.i.i_crit_edge, !dbg !2224

if.then.i.i.lor.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2224
  br label %lor.end.i.i, !dbg !2224

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 2), align 16, !dbg !2225
  %21 = add i64 %gcov_ctr14.i.i, 1, !dbg !2225
  store i64 %21, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 2), align 16, !dbg !2225
  %parent.i.i = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 32, !dbg !2226
  %22 = ptrtoint ptr %parent.i.i to i32, !dbg !2226
  call void @__asan_load4_noabort(i32 %22), !dbg !2226
  %23 = load ptr, ptr %parent.i.i, align 4, !dbg !2226
  %tobool2.not.i.i = icmp eq ptr %23, null, !dbg !2225
  br i1 %tobool2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.lor.end.i.i_crit_edge, !dbg !2227

lor.lhs.false.i.i.lor.end.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2227
  br label %lor.end.i.i, !dbg !2227

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %gcov_ctr15.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 3), align 8, !dbg !2228
  %24 = add i64 %gcov_ctr15.i.i, 1, !dbg !2228
  store i64 %24, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 3), align 8, !dbg !2228
  %enable_on_exec.i.i = getelementptr inbounds %struct.perf_event, ptr %data, i32 0, i32 21, i32 6, !dbg !2229
  %25 = ptrtoint ptr %enable_on_exec.i.i to i32, !dbg !2229
  call void @__asan_load8_noabort(i32 %25), !dbg !2229
  %bf.load.i.i = load i64, ptr %enable_on_exec.i.i, align 8, !dbg !2229
  %26 = and i64 %bf.load.i.i, 2251799813685248, !dbg !2228
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26), !dbg !2228
  %tobool4.not.i.i = icmp eq i64 %26, 0, !dbg !2228
  br i1 %tobool4.not.i.i, label %if.end.i.i.i.i, label %lor.lhs.false3.i.i.lor.end.i.i_crit_edge, !dbg !2230

lor.lhs.false3.i.i.lor.end.i.i_crit_edge:         ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2230
  br label %lor.end.i.i, !dbg !2230

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false3.i.i
  %gcov_ctr16.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 4), align 16, !dbg !2231
  %27 = add i64 %gcov_ctr16.i.i, 1, !dbg !2231
  store i64 %27, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 4), align 16, !dbg !2231
  %gcov_ctr.i.i91.i = load i64, ptr @__llvm_gcov_ctr.192, align 8
  %28 = add i64 %gcov_ctr.i.i91.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.192, align 8
  %mm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 53, !dbg !2232
  %29 = ptrtoint ptr %mm.i.i.i to i32, !dbg !2232
  call void @__asan_load4_noabort(i32 %29), !dbg !2232
  %30 = load ptr, ptr %mm.i.i.i, align 8, !dbg !2232
  %perf_events.i.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %15, i32 1, i32 2, i32 1, !dbg !2235
  %31 = ptrtoint ptr %perf_events.i.i.i.i to i32, !dbg !2235
  call void @__asan_load4_noabort(i32 %31), !dbg !2235
  %.pn20.i.i.i.i = load ptr, ptr %perf_events.i.i.i.i, align 4, !dbg !2235
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %perf_events.i.i.i.i, !dbg !2235
  br i1 %cmp.not21.i.i.i.i, label %if.end.i.i.i.i.lor.end.sink.split.i.i_crit_edge, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, !dbg !2235

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  br label %for.body.i.i.i.i, !dbg !2235

if.end.i.i.i.i.lor.end.sink.split.i.i_crit_edge:  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2235
  br label %lor.end.sink.split.i.i, !dbg !2235

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %target.i.i.i.i = getelementptr inbounds %struct.hw_perf_event, ptr %.pn22.i.i.i.i, i32 0, i32 1, !dbg !2237
  %32 = ptrtoint ptr %target.i.i.i.i to i32, !dbg !2237
  call void @__asan_load4_noabort(i32 %32), !dbg !2237
  %33 = load ptr, ptr %target.i.i.i.i, align 8, !dbg !2237
  %mm3.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 53, !dbg !2238
  %34 = ptrtoint ptr %mm3.i.i.i.i to i32, !dbg !2238
  call void @__asan_load4_noabort(i32 %34), !dbg !2238
  %35 = load ptr, ptr %mm3.i.i.i.i, align 8, !dbg !2238
  %cmp4.i.i.i.i = icmp eq ptr %35, %30, !dbg !2239
  br i1 %cmp4.i.i.i.i, label %for.body.i.i.i.i.lor.end.sink.split.i.i_crit_edge, label %for.inc.i.i.i.i, !dbg !2240

for.body.i.i.i.i.lor.end.sink.split.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2240
  br label %lor.end.sink.split.i.i, !dbg !2240

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %gcov_ctr14.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !2235
  %36 = add i64 %gcov_ctr14.i.i.i.i, 1, !dbg !2235
  store i64 %36, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !2235
  %37 = ptrtoint ptr %.pn22.i.i.i.i to i32, !dbg !2235
  call void @__asan_load4_noabort(i32 %37), !dbg !2235
  %.pn.i.i.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4, !dbg !2235
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %perf_events.i.i.i.i, !dbg !2235
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.lor.end.sink.split.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, !dbg !2235, !llvm.loop !2241

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2235
  br label %for.body.i.i.i.i, !dbg !2235

for.inc.i.i.i.i.lor.end.sink.split.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2235
  br label %lor.end.sink.split.i.i, !dbg !2235

lor.end.sink.split.i.i:                           ; preds = %for.inc.i.i.i.i.lor.end.sink.split.i.i_crit_edge, %for.body.i.i.i.i.lor.end.sink.split.i.i_crit_edge, %if.end.i.i.i.i.lor.end.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), %if.end.i.i.i.i.lor.end.sink.split.i.i_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), %for.body.i.i.i.i.lor.end.sink.split.i.i_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), %for.inc.i.i.i.i.lor.end.sink.split.i.i_crit_edge ]
  %.ph.i.i = phi i1 [ false, %if.end.i.i.i.i.lor.end.sink.split.i.i_crit_edge ], [ %cmp4.i.i.i.i, %for.body.i.i.i.i.lor.end.sink.split.i.i_crit_edge ], [ %cmp4.i.i.i.i, %for.inc.i.i.i.i.lor.end.sink.split.i.i_crit_edge ]
  %38 = ptrtoint ptr %.sink.i.i to i32, !dbg !2243
  call void @__asan_load8_noabort(i32 %38), !dbg !2243
  %gcov_ctr15.i.i.i.i = load i64, ptr %.sink.i.i, align 8, !dbg !2243
  %39 = add i64 %gcov_ctr15.i.i.i.i, 1, !dbg !2243
  store i64 %39, ptr %.sink.i.i, align 8, !dbg !2243
  br label %lor.end.i.i, !dbg !2244

lor.end.i.i:                                      ; preds = %lor.end.sink.split.i.i, %lor.lhs.false3.i.i.lor.end.i.i_crit_edge, %lor.lhs.false.i.i.lor.end.i.i_crit_edge, %if.then.i.i.lor.end.i.i_crit_edge
  %40 = phi i1 [ true, %lor.lhs.false3.i.i.lor.end.i.i_crit_edge ], [ true, %lor.lhs.false.i.i.lor.end.i.i_crit_edge ], [ true, %if.then.i.i.lor.end.i.i_crit_edge ], [ %.ph.i.i, %lor.end.sink.split.i.i ]
  %perf_events.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %15, i32 1, i32 2, i32 1, !dbg !2244
  %gcov_ctr.i28.i.i = load i64, ptr @__llvm_gcov_ctr.193, align 8
  %41 = add i64 %gcov_ctr.i28.i.i, 1
  store i64 %41, ptr @__llvm_gcov_ctr.193, align 8
  %42 = ptrtoint ptr %perf_events.i.i to i32, !dbg !2245
  call void @__asan_load4_noabort(i32 %42), !dbg !2245
  %43 = load ptr, ptr %perf_events.i.i, align 4, !dbg !2245
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hw.i.i, ptr noundef %perf_events.i.i, ptr noundef %43) #21, !dbg !2248
  br i1 %call.i.i.i.i, label %if.end.i.i29.i.i, label %lor.end.i.i.list_add.exit.i.i_crit_edge, !dbg !2250

lor.end.i.i.list_add.exit.i.i_crit_edge:          ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2250
  br label %list_add.exit.i.i, !dbg !2250

if.end.i.i29.i.i:                                 ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2251
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1, !dbg !2251
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32, !dbg !2252
  call void @__asan_store4_noabort(i32 %44), !dbg !2252
  store ptr %hw.i.i, ptr %prev1.i.i.i.i, align 4, !dbg !2252
  %45 = ptrtoint ptr %hw.i.i to i32, !dbg !2253
  call void @__asan_store4_noabort(i32 %45), !dbg !2253
  store ptr %43, ptr %hw.i.i, align 4, !dbg !2253
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %hw.i.i, i32 0, i32 1, !dbg !2254
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32, !dbg !2255
  call void @__asan_store4_noabort(i32 %46), !dbg !2255
  store ptr %perf_events.i.i, ptr %prev3.i.i.i.i, align 4, !dbg !2255
  %47 = ptrtoint ptr %perf_events.i.i to i32, !dbg !2256
  call void @__asan_store4_noabort(i32 %47), !dbg !2256
  store volatile ptr %hw.i.i, ptr %perf_events.i.i, align 4, !dbg !2256
  br label %list_add.exit.i.i, !dbg !2256

list_add.exit.i.i:                                ; preds = %if.end.i.i29.i.i, %lor.end.i.i.list_add.exit.i.i_crit_edge
  %__llvm_gcov_ctr.112.sink18.i.i.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), %if.end.i.i29.i.i ], [ @__llvm_gcov_ctr.112, %lor.end.i.i.list_add.exit.i.i_crit_edge ]
  %48 = ptrtoint ptr %__llvm_gcov_ctr.112.sink18.i.i.i.i to i32, !dbg !2257
  call void @__asan_load8_noabort(i32 %48), !dbg !2257
  %gcov_ctr.i.i30.i.i = load i64, ptr %__llvm_gcov_ctr.112.sink18.i.i.i.i, align 8, !dbg !2257
  %49 = add i64 %gcov_ctr.i.i30.i.i, 1, !dbg !2257
  store i64 %49, ptr %__llvm_gcov_ctr.112.sink18.i.i.i.i, align 8, !dbg !2257
  tail call void @_raw_write_unlock(ptr noundef %filter.i) #21, !dbg !2258
  br i1 %40, label %list_add.exit.i.i.if.then45.i_crit_edge, label %list_add.exit.i.i.if.end46.i_crit_edge, !dbg !2259

list_add.exit.i.i.if.end46.i_crit_edge:           ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2259
  br label %if.end46.i, !dbg !2259

list_add.exit.i.i.if.then45.i_crit_edge:          ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2259
  br label %if.then45.i, !dbg !2259

trace_uprobe_filter_add.exit.i:                   ; preds = %if.end40.i
  %gcov_ctr13.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 1), align 8, !dbg !2260
  %50 = add i64 %gcov_ctr13.i.i, 1, !dbg !2260
  store i64 %50, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.191, i32 0, i32 1), align 8, !dbg !2260
  %nr_systemwide7.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %15, i32 1, i32 2, i32 0, i32 1, !dbg !2261
  %51 = ptrtoint ptr %nr_systemwide7.i.i to i32, !dbg !2261
  call void @__asan_load4_noabort(i32 %51), !dbg !2261
  %52 = load i32, ptr %nr_systemwide7.i.i, align 4, !dbg !2261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52), !dbg !2260
  %tobool8.i.not.i = icmp eq i32 %52, 0, !dbg !2260
  %inc.i.i = add i32 %52, 1, !dbg !2262
  %53 = ptrtoint ptr %nr_systemwide7.i.i to i32, !dbg !2262
  call void @__asan_store4_noabort(i32 %53), !dbg !2262
  store i32 %inc.i.i, ptr %nr_systemwide7.i.i, align 4, !dbg !2262
  tail call void @_raw_write_unlock(ptr noundef %filter.i) #21, !dbg !2258
  br i1 %tobool8.i.not.i, label %trace_uprobe_filter_add.exit.i.if.end46.i_crit_edge, label %trace_uprobe_filter_add.exit.i.if.then45.i_crit_edge, !dbg !2259

trace_uprobe_filter_add.exit.i.if.then45.i_crit_edge: ; preds = %trace_uprobe_filter_add.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2259
  br label %if.then45.i, !dbg !2259

trace_uprobe_filter_add.exit.i.if.end46.i_crit_edge: ; preds = %trace_uprobe_filter_add.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2259
  br label %if.end46.i, !dbg !2259

if.then45.i:                                      ; preds = %trace_uprobe_filter_add.exit.i.if.then45.i_crit_edge, %list_add.exit.i.i.if.then45.i_crit_edge
  %gcov_ctr71.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 4), align 16, !dbg !2263
  %54 = add i64 %gcov_ctr71.i, 1, !dbg !2263
  store i64 %54, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 4), align 16, !dbg !2263
  br label %cleanup, !dbg !2263

if.end46.i:                                       ; preds = %trace_uprobe_filter_add.exit.i.if.end46.i_crit_edge, %list_add.exit.i.i.if.end46.i_crit_edge
  %gcov_ctr.i92.i = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %55 = ptrtoint ptr %event43.i to i32, !dbg !2264
  call void @__asan_load4_noabort(i32 %55), !dbg !2264
  %56 = load ptr, ptr %event43.i, align 4, !dbg !2264
  %probes.i93.i = getelementptr inbounds %struct.trace_probe_event, ptr %56, i32 0, i32 4, !dbg !2266
  %57 = ptrtoint ptr %probes.i93.i to i32, !dbg !2267
  call void @__asan_load4_noabort(i32 %57), !dbg !2267
  %.pn97.i = load ptr, ptr %probes.i93.i, align 4, !dbg !2267
  %58 = add i64 %gcov_ctr.i92.i, 2
  store i64 %58, ptr @__llvm_gcov_ctr.119, align 8
  %cmp.not100.i = icmp eq ptr %.pn97.i, %probes.i93.i, !dbg !2267
  br i1 %cmp.not100.i, label %if.end46.i.for.end.i_crit_edge, label %if.end46.i.for.body.i_crit_edge, !dbg !2267

if.end46.i.for.body.i_crit_edge:                  ; preds = %if.end46.i
  br label %for.body.i, !dbg !2267

if.end46.i.for.end.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2267
  br label %for.end.i, !dbg !2267

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end46.i.for.body.i_crit_edge
  %.pn101.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn97.i, %if.end46.i.for.body.i_crit_edge ]
  %inode.i = getelementptr i8, ptr %.pn101.i, i32 -20, !dbg !2268
  %59 = ptrtoint ptr %inode.i to i32, !dbg !2268
  call void @__asan_load4_noabort(i32 %59), !dbg !2268
  %60 = load ptr, ptr %inode.i, align 4, !dbg !2268
  %offset.i = getelementptr i8, ptr %.pn101.i, i32 -12, !dbg !2269
  %61 = ptrtoint ptr %offset.i to i32, !dbg !2269
  call void @__asan_load4_noabort(i32 %61), !dbg !2269
  %62 = load i32, ptr %offset.i, align 4, !dbg !2269
  %conv.i = zext i32 %62 to i64, !dbg !2270
  %consumer.i = getelementptr i8, ptr %.pn101.i, i32 -44, !dbg !2271
  %call55.i = tail call i32 @uprobe_apply(ptr noundef %60, i64 noundef %conv.i, ptr noundef %consumer.i, i1 noundef zeroext true) #21, !dbg !2272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i), !dbg !2273
  %tobool56.not.i = icmp eq i32 %call55.i, 0, !dbg !2273
  br i1 %tobool56.not.i, label %for.inc.i, label %if.then57.i, !dbg !2273

if.then57.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2274
  %gcov_ctr72.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 5), align 8, !dbg !2274
  %63 = add i64 %gcov_ctr72.i, 1, !dbg !2274
  store i64 %63, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 5), align 8, !dbg !2274
  %call58.i = tail call fastcc i32 @uprobe_perf_close(ptr noundef %event, ptr noundef %data) #21, !dbg !2275
  br label %for.end.i, !dbg !2276

for.inc.i:                                        ; preds = %for.body.i
  %gcov_ctr73.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 6), align 16, !dbg !2267
  %64 = add i64 %gcov_ctr73.i, 1, !dbg !2267
  store i64 %64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 6), align 16, !dbg !2267
  %65 = ptrtoint ptr %.pn101.i to i32, !dbg !2267
  call void @__asan_load4_noabort(i32 %65), !dbg !2267
  %.pn.i = load ptr, ptr %.pn101.i, align 4, !dbg !2267
  %gcov_ctr.i94.i = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %66 = add i64 %gcov_ctr.i94.i, 1
  store i64 %66, ptr @__llvm_gcov_ctr.119, align 8
  %67 = ptrtoint ptr %event43.i to i32, !dbg !2277
  call void @__asan_load4_noabort(i32 %67), !dbg !2277
  %68 = load ptr, ptr %event43.i, align 4, !dbg !2277
  %probes.i96.i = getelementptr inbounds %struct.trace_probe_event, ptr %68, i32 0, i32 4, !dbg !2279
  %cmp.not.i = icmp eq ptr %.pn.i, %probes.i96.i, !dbg !2267
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !2267, !llvm.loop !2280

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2267
  br label %for.body.i, !dbg !2267

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2267
  br label %for.end.i, !dbg !2267

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then57.i, %if.end46.i.for.end.i_crit_edge
  %err.1.i = phi i32 [ %call55.i, %if.then57.i ], [ 0, %if.end46.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ], !dbg !2282
  %gcov_ctr74.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 7), align 8, !dbg !2283
  %69 = add i64 %gcov_ctr74.i, 1, !dbg !2283
  store i64 %69, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.176, i32 0, i32 7), align 8, !dbg !2283
  br label %cleanup, !dbg !2284

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2285
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 5), align 8, !dbg !2285
  %70 = add i64 %gcov_ctr13, 1, !dbg !2285
  store i64 %70, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 5), align 8, !dbg !2285
  %call8 = tail call fastcc i32 @uprobe_perf_close(ptr noundef %event, ptr noundef %data), !dbg !2286
  br label %cleanup, !dbg !2287

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2288
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 6), align 16, !dbg !2288
  %71 = add i64 %gcov_ctr14, 1, !dbg !2288
  store i64 %71, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 6), align 16, !dbg !2288
  br label %cleanup, !dbg !2288

cleanup:                                          ; preds = %sw.default, %sw.bb7, %for.end.i, %if.then45.i, %if.then39.i, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call8, %sw.bb7 ], [ 0, %sw.bb4 ], [ %call3, %sw.bb2 ], [ 0, %sw.bb1 ], [ %call, %sw.bb ], [ -19, %if.then39.i ], [ 0, %if.then45.i ], [ %err.1.i, %for.end.i ], !dbg !2289
  ret i32 %retval.0, !dbg !2290
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @print_uprobe_event(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readonly %event) #0 align 64 !dbg !2291 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2292
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !2293
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !2294
  %0 = ptrtoint ptr %ent to i32, !dbg !2294
  call void @__asan_load4_noabort(i32 %0), !dbg !2294
  %1 = load ptr, ptr %ent, align 8, !dbg !2294
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i.i = getelementptr i8, ptr %event, i32 68, !dbg !2295
  %4 = ptrtoint ptr %probes.i.i to i32, !dbg !2295
  call void @__asan_load4_noabort(i32 %4), !dbg !2295
  %5 = load ptr, ptr %probes.i.i, align 4, !dbg !2295
  %tobool.not.i = icmp eq ptr %5, null, !dbg !2298
  br i1 %tobool.not.i, label %land.rhs.i, label %trace_uprobe_primary_from_call.exit, !dbg !2298

land.rhs.i:                                       ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.44, align 16, !dbg !2298
  %6 = add i64 %gcov_ctr.i, 1, !dbg !2298
  store i64 %6, ptr @__llvm_gcov_ctr.44, align 16, !dbg !2298
  %.b49.i = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !2298
  br i1 %.b49.i, label %land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge, label %if.then.i, !dbg !2298, !prof !194

land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2298
  br label %trace_uprobe_primary_from_call.exit.thread, !dbg !2298

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2298
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !2298
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 326, i32 noundef 9, ptr noundef null) #21, !dbg !2298
  %gcov_ctr42.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !2298
  %7 = add i64 %gcov_ctr42.i, 1, !dbg !2298
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !2298
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !2298
  %8 = add i64 %gcov_ctr43.i, 1, !dbg !2298
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !2298
  br label %trace_uprobe_primary_from_call.exit.thread, !dbg !2298

trace_uprobe_primary_from_call.exit.thread:       ; preds = %if.then.i, %land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !2299
  %9 = add i64 %gcov_ctr45.i, 1, !dbg !2299
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !2299
  br label %if.then, !dbg !2300

trace_uprobe_primary_from_call.exit:              ; preds = %entry
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !2301
  %10 = add i64 %gcov_ctr44.i, 1, !dbg !2301
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !2301
  %add.ptr.i = getelementptr i8, ptr %5, i32 -56, !dbg !2301
  %tobool.not = icmp eq ptr %add.ptr.i, null, !dbg !2300
  br i1 %tobool.not, label %trace_uprobe_primary_from_call.exit.if.then_crit_edge, label %if.end, !dbg !2300, !prof !154

trace_uprobe_primary_from_call.exit.if.then_crit_edge: ; preds = %trace_uprobe_primary_from_call.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2300
  br label %if.then, !dbg !2300

if.then:                                          ; preds = %trace_uprobe_primary_from_call.exit.if.then_crit_edge, %trace_uprobe_primary_from_call.exit.thread
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.171, align 16, !dbg !2302
  %11 = add i64 %gcov_ctr, 1, !dbg !2302
  store i64 %11, ptr @__llvm_gcov_ctr.171, align 16, !dbg !2302
  br label %out, !dbg !2302

if.end:                                           ; preds = %trace_uprobe_primary_from_call.exit
  %gcov_ctr.i41 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %12 = add i64 %gcov_ctr.i41, 1
  store i64 %12, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr i8, ptr %5, i32 -40, !dbg !2303
  %13 = ptrtoint ptr %ret_handler.i to i32, !dbg !2303
  call void @__asan_load4_noabort(i32 %13), !dbg !2303
  %14 = load ptr, ptr %ret_handler.i, align 4, !dbg !2303
  %cmp.i.not = icmp eq ptr %14, null, !dbg !2305
  br i1 %cmp.i.not, label %if.else, label %if.then6, !dbg !2306

if.then6:                                         ; preds = %if.end
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 1), align 8, !dbg !2307
  %15 = add i64 %gcov_ctr23, 1, !dbg !2307
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 1), align 8, !dbg !2307
  %gcov_ctr.i42 = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %16 = add i64 %gcov_ctr.i42, 1
  store i64 %16, ptr @__llvm_gcov_ctr.90, align 8
  %event.i = getelementptr inbounds %struct.trace_probe, ptr %5, i32 0, i32 1, !dbg !2308
  %17 = ptrtoint ptr %event.i to i32, !dbg !2308
  call void @__asan_load4_noabort(i32 %17), !dbg !2308
  %18 = load ptr, ptr %event.i, align 4, !dbg !2308
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %18, i32 0, i32 2, i32 8, !dbg !2310
  %19 = ptrtoint ptr %flags.i.i to i32, !dbg !2310
  call void @__asan_load4_noabort(i32 %19), !dbg !2310
  %20 = load i32, ptr %flags.i.i, align 4, !dbg !2310
  %and.i.i = and i32 %20, 16, !dbg !2312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !2312
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !2312
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !2313

if.then.i.i:                                      ; preds = %if.then6
  %21 = getelementptr inbounds %struct.trace_probe_event, ptr %18, i32 0, i32 2, i32 2, !dbg !2314
  %22 = ptrtoint ptr %21 to i32, !dbg !2314
  call void @__asan_load4_noabort(i32 %22), !dbg !2314
  %23 = load ptr, ptr %21, align 4, !dbg !2314
  %tobool1.not.i.i = icmp eq ptr %23, null, !dbg !2315
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !2315

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2316
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !2316
  %24 = add i64 %gcov_ctr2.i.i, 1, !dbg !2316
  store i64 %24, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !2316
  %25 = ptrtoint ptr %23 to i32, !dbg !2317
  call void @__asan_load4_noabort(i32 %25), !dbg !2317
  %26 = load ptr, ptr %23, align 4, !dbg !2317
  br label %trace_probe_name.exit, !dbg !2315

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2315
  %gcov_ctr.i.i43 = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !2315
  %27 = add i64 %gcov_ctr.i.i43, 1, !dbg !2315
  store i64 %27, ptr @__llvm_gcov_ctr.42, align 16, !dbg !2315
  br label %trace_probe_name.exit, !dbg !2315

if.else.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2318
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !2318
  %28 = add i64 %gcov_ctr3.i.i, 1, !dbg !2318
  store i64 %28, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !2318
  %29 = getelementptr inbounds %struct.trace_probe_event, ptr %18, i32 0, i32 2, i32 2, !dbg !2319
  %30 = ptrtoint ptr %29 to i32, !dbg !2319
  call void @__asan_load4_noabort(i32 %30), !dbg !2319
  %31 = load ptr, ptr %29, align 4, !dbg !2319
  br label %trace_probe_name.exit, !dbg !2320

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %31, %if.else.i.i ], [ %26, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !2321
  %vaddr = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %1, i32 0, i32 1, !dbg !2322
  %arrayidx = getelementptr %struct.uprobe_trace_entry_head, ptr %1, i32 1, i32 0, i32 3, !dbg !2323
  %32 = ptrtoint ptr %arrayidx to i32, !dbg !2323
  call void @__asan_load4_noabort(i32 %32), !dbg !2323
  %33 = load i32, ptr %arrayidx, align 4, !dbg !2323
  %34 = ptrtoint ptr %vaddr to i32, !dbg !2324
  call void @__asan_load4_noabort(i32 %34), !dbg !2324
  %35 = load i32, ptr %vaddr, align 4, !dbg !2324
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i, i32 noundef %33, i32 noundef %35) #21, !dbg !2325
  br label %if.end16, !dbg !2326

if.else:                                          ; preds = %if.end
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 2), align 16, !dbg !2327
  %36 = add i64 %gcov_ctr24, 1, !dbg !2327
  store i64 %36, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 2), align 16, !dbg !2327
  %gcov_ctr.i44 = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %37 = add i64 %gcov_ctr.i44, 1
  store i64 %37, ptr @__llvm_gcov_ctr.90, align 8
  %event.i45 = getelementptr inbounds %struct.trace_probe, ptr %5, i32 0, i32 1, !dbg !2328
  %38 = ptrtoint ptr %event.i45 to i32, !dbg !2328
  call void @__asan_load4_noabort(i32 %38), !dbg !2328
  %39 = load ptr, ptr %event.i45, align 4, !dbg !2328
  %flags.i.i46 = getelementptr inbounds %struct.trace_probe_event, ptr %39, i32 0, i32 2, i32 8, !dbg !2330
  %40 = ptrtoint ptr %flags.i.i46 to i32, !dbg !2330
  call void @__asan_load4_noabort(i32 %40), !dbg !2330
  %41 = load i32, ptr %flags.i.i46, align 4, !dbg !2330
  %and.i.i47 = and i32 %41, 16, !dbg !2332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47), !dbg !2332
  %tobool.not.i.i48 = icmp eq i32 %and.i.i47, 0, !dbg !2332
  br i1 %tobool.not.i.i48, label %if.else.i.i56, label %if.then.i.i50, !dbg !2333

if.then.i.i50:                                    ; preds = %if.else
  %42 = getelementptr inbounds %struct.trace_probe_event, ptr %39, i32 0, i32 2, i32 2, !dbg !2334
  %43 = ptrtoint ptr %42 to i32, !dbg !2334
  call void @__asan_load4_noabort(i32 %43), !dbg !2334
  %44 = load ptr, ptr %42, align 4, !dbg !2334
  %tobool1.not.i.i49 = icmp eq ptr %44, null, !dbg !2335
  br i1 %tobool1.not.i.i49, label %cond.false.i.i54, label %cond.true.i.i52, !dbg !2335

cond.true.i.i52:                                  ; preds = %if.then.i.i50
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2336
  %gcov_ctr2.i.i51 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !2336
  %45 = add i64 %gcov_ctr2.i.i51, 1, !dbg !2336
  store i64 %45, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !2336
  %46 = ptrtoint ptr %44 to i32, !dbg !2337
  call void @__asan_load4_noabort(i32 %46), !dbg !2337
  %47 = load ptr, ptr %44, align 4, !dbg !2337
  br label %trace_probe_name.exit58, !dbg !2335

cond.false.i.i54:                                 ; preds = %if.then.i.i50
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2335
  %gcov_ctr.i.i53 = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !2335
  %48 = add i64 %gcov_ctr.i.i53, 1, !dbg !2335
  store i64 %48, ptr @__llvm_gcov_ctr.42, align 16, !dbg !2335
  br label %trace_probe_name.exit58, !dbg !2335

if.else.i.i56:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2338
  %gcov_ctr3.i.i55 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !2338
  %49 = add i64 %gcov_ctr3.i.i55, 1, !dbg !2338
  store i64 %49, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !2338
  %50 = getelementptr inbounds %struct.trace_probe_event, ptr %39, i32 0, i32 2, i32 2, !dbg !2339
  %51 = ptrtoint ptr %50 to i32, !dbg !2339
  call void @__asan_load4_noabort(i32 %51), !dbg !2339
  %52 = load ptr, ptr %50, align 4, !dbg !2339
  br label %trace_probe_name.exit58, !dbg !2340

trace_probe_name.exit58:                          ; preds = %if.else.i.i56, %cond.false.i.i54, %cond.true.i.i52
  %retval.0.i.i57 = phi ptr [ %52, %if.else.i.i56 ], [ %47, %cond.true.i.i52 ], [ null, %cond.false.i.i54 ], !dbg !2341
  %vaddr13 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %1, i32 0, i32 1, !dbg !2342
  %53 = ptrtoint ptr %vaddr13 to i32, !dbg !2343
  call void @__asan_load4_noabort(i32 %53), !dbg !2343
  %54 = load i32, ptr %vaddr13, align 4, !dbg !2343
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i.i57, i32 noundef %54) #21, !dbg !2344
  br label %if.end16

if.end16:                                         ; preds = %trace_probe_name.exit58, %trace_probe_name.exit
  %.sink = phi i32 [ 12, %trace_probe_name.exit58 ], [ 16, %trace_probe_name.exit ]
  %add.ptr15 = getelementptr i8, ptr %1, i32 %.sink, !dbg !2345
  %args = getelementptr i8, ptr %5, i32 20, !dbg !2346
  %nr_args = getelementptr i8, ptr %5, i32 16, !dbg !2347
  %55 = ptrtoint ptr %nr_args to i32, !dbg !2347
  call void @__asan_load4_noabort(i32 %55), !dbg !2347
  %56 = load i32, ptr %nr_args, align 4, !dbg !2347
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.172, align 16
  %57 = add i64 %gcov_ctr.i59, 1
  store i64 %57, ptr @__llvm_gcov_ctr.172, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56), !dbg !2348
  %cmp62.i = icmp sgt i32 %56, 0, !dbg !2348
  br i1 %cmp62.i, label %if.end16.for.body.i_crit_edge, label %if.end16.if.end21_crit_edge, !dbg !2351

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2351
  br label %if.end21, !dbg !2351

if.end16.for.body.i_crit_edge:                    ; preds = %if.end16
  br label %for.body.i, !dbg !2351

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %if.end16.for.body.i_crit_edge
  %i.063.i = phi i32 [ %inc25.i, %for.inc24.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %name.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 4, !dbg !2352
  %58 = ptrtoint ptr %name.i to i32, !dbg !2352
  call void @__asan_load4_noabort(i32 %58), !dbg !2352
  %59 = load ptr, ptr %name.i, align 4, !dbg !2352
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, ptr noundef %59) #21, !dbg !2353
  %count.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 3, !dbg !2354
  %60 = ptrtoint ptr %count.i to i32, !dbg !2354
  call void @__asan_load4_noabort(i32 %60), !dbg !2354
  %61 = load i32, ptr %count.i, align 4, !dbg !2354
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61), !dbg !2354
  %tobool.not.i60 = icmp eq i32 %61, 0, !dbg !2354
  br i1 %tobool.not.i60, label %if.then.i61, label %if.end7.i, !dbg !2354, !prof !194

if.then.i61:                                      ; preds = %for.body.i
  %type.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 7, !dbg !2355
  %62 = ptrtoint ptr %type.i to i32, !dbg !2355
  call void @__asan_load4_noabort(i32 %62), !dbg !2355
  %63 = load ptr, ptr %type.i, align 4, !dbg !2355
  %print.i = getelementptr inbounds %struct.fetch_type, ptr %63, i32 0, i32 3, !dbg !2356
  %64 = ptrtoint ptr %print.i to i32, !dbg !2356
  call void @__asan_load4_noabort(i32 %64), !dbg !2356
  %65 = load ptr, ptr %print.i, align 4, !dbg !2356
  %offset.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 2, !dbg !2357
  %66 = ptrtoint ptr %offset.i to i32, !dbg !2357
  call void @__asan_load4_noabort(i32 %66), !dbg !2357
  %67 = load i32, ptr %offset.i, align 4, !dbg !2357
  %add.ptr4.i = getelementptr i8, ptr %add.ptr15, i32 %67, !dbg !2358
  %call.i = tail call i32 %65(ptr noundef %seq, ptr noundef %add.ptr4.i, ptr noundef %1) #21, !dbg !2359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !2359
  %tobool5.not.i = icmp eq i32 %call.i, 0, !dbg !2359
  br i1 %tobool5.not.i, label %if.then.i61.if.then20_crit_edge, label %if.then.i61.for.inc24.i_crit_edge, !dbg !2360

if.then.i61.for.inc24.i_crit_edge:                ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2360
  br label %for.inc24.i, !dbg !2360

if.then.i61.if.then20_crit_edge:                  ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2360
  br label %if.then20, !dbg !2360

if.end7.i:                                        ; preds = %for.body.i
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 123) #21, !dbg !2361
  %68 = ptrtoint ptr %count.i to i32, !dbg !2362
  call void @__asan_load4_noabort(i32 %68), !dbg !2362
  %69 = load i32, ptr %count.i, align 4, !dbg !2362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69), !dbg !2363
  %cmp1259.not.i = icmp eq i32 %69, 0, !dbg !2363
  br i1 %cmp1259.not.i, label %if.end7.i.cleanup.cont.i_crit_edge, label %for.body13.lr.ph.i, !dbg !2364

if.end7.i.cleanup.cont.i_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2364
  br label %cleanup.cont.i, !dbg !2364

for.body13.lr.ph.i:                               ; preds = %if.end7.i
  %offset8.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 2, !dbg !2365
  %70 = ptrtoint ptr %offset8.i to i32, !dbg !2365
  call void @__asan_load4_noabort(i32 %70), !dbg !2365
  %71 = load i32, ptr %offset8.i, align 4, !dbg !2365
  %add.ptr9.i = getelementptr i8, ptr %add.ptr15, i32 %71, !dbg !2366
  %type14.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.063.i, i32 7
  br label %for.body13.i, !dbg !2364

for.body13.i:                                     ; preds = %if.end19.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %j.061.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %inc.i, %if.end19.i.for.body13.i_crit_edge ]
  %p.060.i = phi ptr [ %add.ptr9.i, %for.body13.lr.ph.i ], [ %add.ptr23.i, %if.end19.i.for.body13.i_crit_edge ]
  %72 = ptrtoint ptr %type14.i to i32, !dbg !2367
  call void @__asan_load4_noabort(i32 %72), !dbg !2367
  %73 = load ptr, ptr %type14.i, align 4, !dbg !2367
  %print15.i = getelementptr inbounds %struct.fetch_type, ptr %73, i32 0, i32 3, !dbg !2368
  %74 = ptrtoint ptr %print15.i to i32, !dbg !2368
  call void @__asan_load4_noabort(i32 %74), !dbg !2368
  %75 = load ptr, ptr %print15.i, align 4, !dbg !2368
  %call16.i = tail call i32 %75(ptr noundef %seq, ptr noundef %p.060.i, ptr noundef %1) #21, !dbg !2369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i), !dbg !2369
  %tobool17.not.i = icmp eq i32 %call16.i, 0, !dbg !2369
  br i1 %tobool17.not.i, label %for.body13.i.if.then20_crit_edge, label %if.end19.i, !dbg !2370

for.body13.i.if.then20_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2370
  br label %if.then20, !dbg !2370

if.end19.i:                                       ; preds = %for.body13.i
  %76 = ptrtoint ptr %count.i to i32, !dbg !2371
  call void @__asan_load4_noabort(i32 %76), !dbg !2371
  %77 = load i32, ptr %count.i, align 4, !dbg !2371
  %sub.i = add i32 %77, -1, !dbg !2372
  call void @__sanitizer_cov_trace_cmp4(i32 %j.061.i, i32 %sub.i), !dbg !2373
  %cmp21.i = icmp eq i32 %j.061.i, %sub.i, !dbg !2373
  %conv.i = select i1 %cmp21.i, i8 125, i8 44, !dbg !2374
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext %conv.i) #21, !dbg !2375
  %78 = ptrtoint ptr %type14.i to i32, !dbg !2376
  call void @__asan_load4_noabort(i32 %78), !dbg !2376
  %79 = load ptr, ptr %type14.i, align 4, !dbg !2376
  %size.i = getelementptr inbounds %struct.fetch_type, ptr %79, i32 0, i32 1, !dbg !2377
  %80 = ptrtoint ptr %size.i to i32, !dbg !2377
  call void @__asan_load4_noabort(i32 %80), !dbg !2377
  %81 = load i32, ptr %size.i, align 4, !dbg !2377
  %add.ptr23.i = getelementptr i8, ptr %p.060.i, i32 %81, !dbg !2378
  %gcov_ctr34.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 5), align 8, !dbg !2379
  %82 = add i64 %gcov_ctr34.i, 1, !dbg !2379
  store i64 %82, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 5), align 8, !dbg !2379
  %inc.i = add nuw i32 %j.061.i, 1, !dbg !2379
  %83 = ptrtoint ptr %count.i to i32, !dbg !2362
  call void @__asan_load4_noabort(i32 %83), !dbg !2362
  %84 = load i32, ptr %count.i, align 4, !dbg !2362
  %cmp12.i = icmp ult i32 %inc.i, %84, !dbg !2363
  br i1 %cmp12.i, label %if.end19.i.for.body13.i_crit_edge, label %if.end19.i.cleanup.cont.i_crit_edge, !dbg !2364, !llvm.loop !2380

if.end19.i.cleanup.cont.i_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2364
  br label %cleanup.cont.i, !dbg !2364

if.end19.i.for.body13.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2364
  br label %for.body13.i, !dbg !2364

cleanup.cont.i:                                   ; preds = %if.end19.i.cleanup.cont.i_crit_edge, %if.end7.i.cleanup.cont.i_crit_edge
  %gcov_ctr35.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 6), align 16, !dbg !2382
  %85 = add i64 %gcov_ctr35.i, 1, !dbg !2382
  store i64 %85, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 6), align 16, !dbg !2382
  br label %for.inc24.i, !dbg !2382

for.inc24.i:                                      ; preds = %cleanup.cont.i, %if.then.i61.for.inc24.i_crit_edge
  %.sink.i = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 7), %cleanup.cont.i ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 3), %if.then.i61.for.inc24.i_crit_edge ]
  %86 = ptrtoint ptr %.sink.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %gcov_ctr32.i = load i64, ptr %.sink.i, align 8
  %87 = add i64 %gcov_ctr32.i, 1
  store i64 %87, ptr %.sink.i, align 8
  %inc25.i = add nuw nsw i32 %i.063.i, 1, !dbg !2383
  %exitcond.not.i = icmp eq i32 %inc25.i, %56, !dbg !2348
  br i1 %exitcond.not.i, label %for.inc24.i.if.end21_crit_edge, label %for.inc24.i.for.body.i_crit_edge, !dbg !2351, !llvm.loop !2384

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2351
  br label %for.body.i, !dbg !2351

for.inc24.i.if.end21_crit_edge:                   ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2351
  br label %if.end21, !dbg !2351

if.then20:                                        ; preds = %for.body13.i.if.then20_crit_edge, %if.then.i61.if.then20_crit_edge
  %.sink68 = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 4), %for.body13.i.if.then20_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 2), %if.then.i61.if.then20_crit_edge ]
  %88 = ptrtoint ptr %.sink68 to i32, !dbg !2385
  call void @__asan_load8_noabort(i32 %88), !dbg !2385
  %gcov_ctr31.i = load i64, ptr %.sink68, align 16, !dbg !2385
  %89 = add i64 %gcov_ctr31.i, 1, !dbg !2385
  store i64 %89, ptr %.sink68, align 16, !dbg !2385
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 3), align 8, !dbg !2386
  %90 = add i64 %gcov_ctr25, 1, !dbg !2386
  store i64 %90, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 3), align 8, !dbg !2386
  br label %out, !dbg !2386

if.end21:                                         ; preds = %for.inc24.i.if.end21_crit_edge, %if.end16.if.end21_crit_edge
  %gcov_ctr30.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 1), align 8, !dbg !2387
  %91 = add i64 %gcov_ctr30.i, 1, !dbg !2387
  store i64 %91, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 1), align 8, !dbg !2387
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #21, !dbg !2388
  br label %out, !dbg !2388

out:                                              ; preds = %if.end21, %if.then20, %if.then
  %call22 = tail call i32 @trace_handle_return(ptr noundef %seq) #21, !dbg !2389
  ret i32 %call22, !dbg !2390
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uprobe_event_define_fields(ptr noundef %event_call) #0 align 64 !dbg !2391 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2392
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %0 = add i64 %gcov_ctr.i.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %1 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i.i = getelementptr i8, ptr %event_call, i32 84, !dbg !2393
  %2 = ptrtoint ptr %probes.i.i to i32, !dbg !2393
  call void @__asan_load4_noabort(i32 %2), !dbg !2393
  %3 = load ptr, ptr %probes.i.i, align 4, !dbg !2393
  %tobool.not.i = icmp eq ptr %3, null, !dbg !2396
  br i1 %tobool.not.i, label %land.rhs.i, label %trace_uprobe_primary_from_call.exit, !dbg !2396

land.rhs.i:                                       ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.44, align 16, !dbg !2396
  %4 = add i64 %gcov_ctr.i, 1, !dbg !2396
  store i64 %4, ptr @__llvm_gcov_ctr.44, align 16, !dbg !2396
  %.b49.i = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !2396
  br i1 %.b49.i, label %land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge, label %if.then.i, !dbg !2396, !prof !194

land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2396
  br label %trace_uprobe_primary_from_call.exit.thread, !dbg !2396

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2396
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1, !dbg !2396
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 326, i32 noundef 9, ptr noundef null) #21, !dbg !2396
  %gcov_ctr42.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !2396
  %5 = add i64 %gcov_ctr42.i, 1, !dbg !2396
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !2396
  %gcov_ctr43.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !2396
  %6 = add i64 %gcov_ctr43.i, 1, !dbg !2396
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !2396
  br label %trace_uprobe_primary_from_call.exit.thread, !dbg !2396

trace_uprobe_primary_from_call.exit.thread:       ; preds = %if.then.i, %land.rhs.i.trace_uprobe_primary_from_call.exit.thread_crit_edge
  %gcov_ctr45.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !2397
  %7 = add i64 %gcov_ctr45.i, 1, !dbg !2397
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !2397
  br label %if.then, !dbg !2398

trace_uprobe_primary_from_call.exit:              ; preds = %entry
  %gcov_ctr44.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !2399
  %8 = add i64 %gcov_ctr44.i, 1, !dbg !2399
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !2399
  %add.ptr.i = getelementptr i8, ptr %3, i32 -56, !dbg !2399
  %tobool.not = icmp eq ptr %add.ptr.i, null, !dbg !2398
  br i1 %tobool.not, label %trace_uprobe_primary_from_call.exit.if.then_crit_edge, label %if.end, !dbg !2398, !prof !154

trace_uprobe_primary_from_call.exit.if.then_crit_edge: ; preds = %trace_uprobe_primary_from_call.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2398
  br label %if.then, !dbg !2398

if.then:                                          ; preds = %trace_uprobe_primary_from_call.exit.if.then_crit_edge, %trace_uprobe_primary_from_call.exit.thread
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.173, align 16, !dbg !2400
  %9 = add i64 %gcov_ctr, 1, !dbg !2400
  store i64 %9, ptr @__llvm_gcov_ctr.173, align 16, !dbg !2400
  br label %cleanup, !dbg !2400

if.end:                                           ; preds = %trace_uprobe_primary_from_call.exit
  %gcov_ctr.i45 = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %10 = add i64 %gcov_ctr.i45, 1
  store i64 %10, ptr @__llvm_gcov_ctr.45, align 8
  %ret_handler.i = getelementptr i8, ptr %3, i32 -40, !dbg !2401
  %11 = ptrtoint ptr %ret_handler.i to i32, !dbg !2401
  call void @__asan_load4_noabort(i32 %11), !dbg !2401
  %12 = load ptr, ptr %ret_handler.i, align 4, !dbg !2401
  %cmp.i.not = icmp eq ptr %12, null, !dbg !2403
  br i1 %cmp.i.not, label %do.body17, label %do.body, !dbg !2404

do.body:                                          ; preds = %if.end
  %call6 = tail call i32 @trace_define_field(ptr noundef %event_call, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 8, i32 noundef 4, i32 noundef 0, i32 noundef 0) #21, !dbg !2405
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6), !dbg !2405
  %tobool7.not = icmp eq i32 %call6, 0, !dbg !2405
  br i1 %tobool7.not, label %do.body10, label %if.then8, !dbg !2405

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2405
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 1), align 8, !dbg !2405
  %13 = add i64 %gcov_ctr29, 1, !dbg !2405
  store i64 %13, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 1), align 8, !dbg !2405
  br label %cleanup, !dbg !2405

do.body10:                                        ; preds = %do.body
  %call11 = tail call i32 @trace_define_field(ptr noundef %event_call, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34, i32 noundef 12, i32 noundef 4, i32 noundef 0, i32 noundef 0) #21, !dbg !2406
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11), !dbg !2406
  %tobool12.not = icmp eq i32 %call11, 0, !dbg !2406
  br i1 %tobool12.not, label %do.body10.if.end24_crit_edge, label %if.then13, !dbg !2406

do.body10.if.end24_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2406
  br label %if.end24, !dbg !2406

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2406
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 2), align 16, !dbg !2406
  %14 = add i64 %gcov_ctr30, 1, !dbg !2406
  store i64 %14, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 2), align 16, !dbg !2406
  br label %cleanup, !dbg !2406

do.body17:                                        ; preds = %if.end
  %call18 = tail call i32 @trace_define_field(ptr noundef %event_call, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35, i32 noundef 8, i32 noundef 4, i32 noundef 0, i32 noundef 0) #21, !dbg !2407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18), !dbg !2407
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !2407
  br i1 %tobool19.not, label %do.body17.if.end24_crit_edge, label %if.then20, !dbg !2407

do.body17.if.end24_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2407
  br label %if.end24, !dbg !2407

if.then20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2407
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 4), align 16, !dbg !2407
  %15 = add i64 %gcov_ctr32, 1, !dbg !2407
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 4), align 16, !dbg !2407
  br label %cleanup, !dbg !2407

if.end24:                                         ; preds = %do.body17.if.end24_crit_edge, %do.body10.if.end24_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 3), %do.body10.if.end24_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.173, i32 0, i32 5), %do.body17.if.end24_crit_edge ]
  %size.0 = phi i32 [ 16, %do.body10.if.end24_crit_edge ], [ 12, %do.body17.if.end24_crit_edge ], !dbg !2408
  %16 = ptrtoint ptr %.sink to i32, !dbg !2408
  call void @__asan_load8_noabort(i32 %16), !dbg !2408
  %gcov_ctr33 = load i64, ptr %.sink, align 8, !dbg !2408
  %17 = add i64 %gcov_ctr33, 1, !dbg !2408
  store i64 %17, ptr %.sink, align 8, !dbg !2408
  %call25 = tail call i32 @traceprobe_define_arg_fields(ptr noundef %event_call, i32 noundef %size.0, ptr noundef nonnull %3) #21, !dbg !2409
  br label %cleanup, !dbg !2410

cleanup:                                          ; preds = %if.end24, %if.then20, %if.then13, %if.then8, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %call6, %if.then8 ], [ %call11, %if.then13 ], [ %call25, %if.end24 ], [ %call18, %if.then20 ], !dbg !2408
  ret i32 %retval.0, !dbg !2411
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_define_field(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_define_arg_fields(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @probe_event_enable(ptr nocapture noundef readonly %call, ptr noundef %file, ptr noundef %filter) unnamed_addr #0 align 64 !dbg !2412 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2413
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i = getelementptr i8, ptr %call, i32 84, !dbg !2414
  %2 = ptrtoint ptr %probes.i to i32, !dbg !2414
  call void @__asan_load4_noabort(i32 %2), !dbg !2414
  %3 = load ptr, ptr %probes.i, align 4, !dbg !2414
  %tobool.not = icmp eq ptr %3, null, !dbg !2416
  br i1 %tobool.not, label %land.rhs, label %if.end40, !dbg !2416

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.174, align 16, !dbg !2416
  %4 = add i64 %gcov_ctr, 1, !dbg !2416
  store i64 %4, ptr @__llvm_gcov_ctr.174, align 16, !dbg !2416
  %.b163 = load i1, ptr @probe_event_enable.__already_done, align 1, !dbg !2416
  br i1 %.b163, label %land.rhs.if.then39_crit_edge, label %if.then, !dbg !2416, !prof !194

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2416
  br label %if.then39, !dbg !2416

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2416
  store i1 true, ptr @probe_event_enable.__already_done, align 1, !dbg !2416
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1097, i32 noundef 9, ptr noundef null) #21, !dbg !2416
  %gcov_ctr125 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !2416
  %5 = add i64 %gcov_ctr125, 1, !dbg !2416
  store i64 %5, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !2416
  %gcov_ctr126 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 2), align 16, !dbg !2416
  %6 = add i64 %gcov_ctr126, 1, !dbg !2416
  store i64 %6, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 2), align 16, !dbg !2416
  br label %if.then39, !dbg !2416

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %gcov_ctr127 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 3), align 8, !dbg !2417
  %7 = add i64 %gcov_ctr127, 1, !dbg !2417
  store i64 %7, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 3), align 8, !dbg !2417
  br label %cleanup, !dbg !2417

if.end40:                                         ; preds = %entry
  %gcov_ctr.i165 = load i64, ptr @__llvm_gcov_ctr.113, align 8
  %8 = add i64 %gcov_ctr.i165, 1
  store i64 %8, ptr @__llvm_gcov_ctr.113, align 8
  %gcov_ctr.i.i166 = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %9 = add i64 %gcov_ctr.i.i166, 1
  store i64 %9, ptr @__llvm_gcov_ctr.114, align 8
  %event.i.i = getelementptr inbounds %struct.trace_probe, ptr %3, i32 0, i32 1, !dbg !2418
  %10 = ptrtoint ptr %event.i.i to i32, !dbg !2418
  call void @__asan_load4_noabort(i32 %10), !dbg !2418
  %11 = load ptr, ptr %event.i.i, align 4, !dbg !2418
  %12 = ptrtoint ptr %11 to i32, !dbg !2421
  call void @__asan_load4_noabort(i32 %12), !dbg !2421
  %13 = load i32, ptr %11, align 4, !dbg !2421
  %and.i.i = and i32 %13, 3, !dbg !2422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !2423
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0, !dbg !2423
  %tobool43.not = icmp eq ptr %file, null, !dbg !2424
  %14 = add i64 %gcov_ctr.i.i166, 2
  store i64 %14, ptr @__llvm_gcov_ctr.114, align 8
  %15 = ptrtoint ptr %11 to i32, !dbg !2425
  call void @__asan_load4_noabort(i32 %15), !dbg !2425
  %16 = load i32, ptr %11, align 4, !dbg !2425
  br i1 %tobool43.not, label %if.else, label %if.then44, !dbg !2424

if.then44:                                        ; preds = %if.end40
  %and.i = and i32 %16, 2, !dbg !2426
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !2428
  %tobool.i.not = icmp eq i32 %and.i, 0, !dbg !2428
  br i1 %tobool.i.not, label %if.end47, label %if.then46, !dbg !2429

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2430
  %gcov_ctr128 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 4), align 16, !dbg !2430
  %17 = add i64 %gcov_ctr128, 1, !dbg !2430
  store i64 %17, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 4), align 16, !dbg !2430
  br label %cleanup, !dbg !2430

if.end47:                                         ; preds = %if.then44
  %call48 = tail call i32 @trace_probe_add_file(ptr noundef nonnull %3, ptr noundef nonnull %file) #21, !dbg !2431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48), !dbg !2432
  %cmp = icmp slt i32 %call48, 0, !dbg !2432
  br i1 %cmp, label %if.then49, label %if.end47.if.end54_crit_edge, !dbg !2433

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2433
  br label %if.end54, !dbg !2433

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2434
  %gcov_ctr129 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 5), align 8, !dbg !2434
  %18 = add i64 %gcov_ctr129, 1, !dbg !2434
  store i64 %18, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 5), align 8, !dbg !2434
  br label %cleanup, !dbg !2435

if.else:                                          ; preds = %if.end40
  %and.i170 = and i32 %16, 1, !dbg !2436
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170), !dbg !2438
  %tobool.i171.not = icmp eq i32 %and.i170, 0, !dbg !2438
  br i1 %tobool.i171.not, label %if.end53, label %if.then52, !dbg !2439

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2440
  %gcov_ctr130 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 6), align 16, !dbg !2440
  %19 = add i64 %gcov_ctr130, 1, !dbg !2440
  store i64 %19, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 6), align 16, !dbg !2440
  br label %cleanup, !dbg !2440

if.end53:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2441
  %gcov_ctr131 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 7), align 8, !dbg !2441
  %20 = add i64 %gcov_ctr131, 1, !dbg !2441
  store i64 %20, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 7), align 8, !dbg !2441
  %gcov_ctr.i172 = load i64, ptr @__llvm_gcov_ctr.178, align 8
  %21 = add i64 %gcov_ctr.i172, 1
  store i64 %21, ptr @__llvm_gcov_ctr.178, align 8
  %22 = ptrtoint ptr %event.i.i to i32, !dbg !2442
  call void @__asan_load4_noabort(i32 %22), !dbg !2442
  %23 = load ptr, ptr %event.i.i, align 4, !dbg !2442
  %24 = ptrtoint ptr %23 to i32, !dbg !2445
  call void @__asan_load4_noabort(i32 %24), !dbg !2445
  %25 = load i32, ptr %23, align 4, !dbg !2445
  %or.i = or i32 %25, 2, !dbg !2445
  store i32 %or.i, ptr %23, align 4, !dbg !2445
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end47.if.end54_crit_edge
  %26 = ptrtoint ptr %event.i.i to i32, !dbg !2446
  call void @__asan_load4_noabort(i32 %26), !dbg !2446
  %27 = load ptr, ptr %event.i.i, align 4, !dbg !2446
  %gcov_ctr.i174 = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %28 = add i64 %gcov_ctr.i174, 1
  store i64 %28, ptr @__llvm_gcov_ctr.179, align 8
  %nr_systemwide.i = getelementptr inbounds %struct.trace_probe_event, ptr %27, i32 1, i32 2, i32 0, i32 1, !dbg !2447
  %29 = ptrtoint ptr %nr_systemwide.i to i32, !dbg !2447
  call void @__asan_load4_noabort(i32 %29), !dbg !2447
  %30 = load i32, ptr %nr_systemwide.i, align 4, !dbg !2447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30), !dbg !2450
  %tobool.not.i = icmp eq i32 %30, 0, !dbg !2450
  br i1 %tobool.not.i, label %uprobe_filter_is_empty.exit, label %if.end54.if.then73_crit_edge, !dbg !2451, !prof !2452

if.end54.if.then73_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2451
  br label %if.then73, !dbg !2451

uprobe_filter_is_empty.exit:                      ; preds = %if.end54
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.179, i32 0, i32 1), align 8, !dbg !2453
  %31 = add i64 %gcov_ctr2.i, 1, !dbg !2453
  store i64 %31, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.179, i32 0, i32 1), align 8, !dbg !2453
  %perf_events.i = getelementptr inbounds %struct.trace_probe_event, ptr %27, i32 1, i32 2, i32 1, !dbg !2454
  %gcov_ctr.i.i175 = load i64, ptr @__llvm_gcov_ctr.120, align 8
  %32 = add i64 %gcov_ctr.i.i175, 1
  store i64 %32, ptr @__llvm_gcov_ctr.120, align 8
  %33 = ptrtoint ptr %perf_events.i to i32, !dbg !2455
  call void @__asan_load4_noabort(i32 %33), !dbg !2455
  %34 = load volatile ptr, ptr %perf_events.i, align 4, !dbg !2455
  %cmp.i.i = icmp eq ptr %34, %perf_events.i, !dbg !2457
  br i1 %cmp.i.i, label %uprobe_filter_is_empty.exit.if.end83_crit_edge, label %uprobe_filter_is_empty.exit.if.then73_crit_edge, !dbg !2446, !prof !194

uprobe_filter_is_empty.exit.if.then73_crit_edge:  ; preds = %uprobe_filter_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2446
  br label %if.then73, !dbg !2446

uprobe_filter_is_empty.exit.if.end83_crit_edge:   ; preds = %uprobe_filter_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2446
  br label %if.end83, !dbg !2446

if.then73:                                        ; preds = %uprobe_filter_is_empty.exit.if.then73_crit_edge, %if.end54.if.then73_crit_edge
  %gcov_ctr132 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 8), align 16, !dbg !2446
  %35 = add i64 %gcov_ctr132, 1, !dbg !2446
  store i64 %35, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 8), align 16, !dbg !2446
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1117, i32 noundef 9, ptr noundef null) #21, !dbg !2446
  br label %if.end83, !dbg !2446

if.end83:                                         ; preds = %if.then73, %uprobe_filter_is_empty.exit.if.end83_crit_edge
  br i1 %tobool.i.i.not, label %if.end93, label %if.then92, !dbg !2458

if.then92:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2459
  %gcov_ctr133 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 9), align 8, !dbg !2459
  %36 = add i64 %gcov_ctr133, 1, !dbg !2459
  store i64 %36, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 9), align 8, !dbg !2459
  br label %cleanup, !dbg !2459

if.end93:                                         ; preds = %if.end83
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @event_mutex) #21, !dbg !2460
  br i1 %call.i, label %do.cond7.i, label %if.then.i, !dbg !2460, !prof !194

if.then.i:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2460
  %gcov_ctr.i176 = load i64, ptr @__llvm_gcov_ctr.180, align 16, !dbg !2460
  %37 = add i64 %gcov_ctr.i176, 1, !dbg !2460
  store i64 %37, ptr @__llvm_gcov_ctr.180, align 16, !dbg !2460
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/trace/trace_uprobe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 896, 0\0A.popsection", ""() #21, !dbg !2460, !srcloc !2463
  unreachable, !dbg !2460

do.cond7.i:                                       ; preds = %if.end93
  %gcov_ctr15.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 1), align 8, !dbg !2460
  %38 = add i64 %gcov_ctr15.i, 1, !dbg !2460
  store i64 %38, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 1), align 8, !dbg !2460
  %39 = load i32, ptr @uprobe_buffer_refcnt, align 4, !dbg !2464
  %inc.i = add i32 %39, 1, !dbg !2464
  store i32 %inc.i, ptr @uprobe_buffer_refcnt, align 4, !dbg !2464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39), !dbg !2465
  %cmp.i = icmp eq i32 %39, 0, !dbg !2465
  br i1 %cmp.i, label %if.then9.i, label %do.cond7.i.if.end97_crit_edge, !dbg !2466

do.cond7.i.if.end97_crit_edge:                    ; preds = %do.cond7.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2466
  br label %if.end97, !dbg !2466

if.then9.i:                                       ; preds = %do.cond7.i
  %call.i.i = tail call noalias ptr @__alloc_percpu(i32 noundef 96, i32 noundef 4) #26, !dbg !2467
  store ptr %call.i.i, ptr @uprobe_cpu_buffer, align 4, !dbg !2470
  %cmp.i.i177 = icmp eq ptr %call.i.i, null, !dbg !2471
  br i1 %cmp.i.i177, label %if.then.i.i, label %for.cond.i.preheader.i, !dbg !2472

for.cond.i.preheader.i:                           ; preds = %if.then9.i
  %gcov_ctr43.i24.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 1), align 8, !dbg !2473
  %40 = add i64 %gcov_ctr43.i24.i, 1, !dbg !2473
  store i64 %40, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 1), align 8, !dbg !2473
  %call1.i25.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27, !dbg !2474
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !2474
  %41 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2474
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i25.i, i32 %41), !dbg !2474
  %cmp2.i26.i = icmp ult i32 %call1.i25.i, %41, !dbg !2474
  br i1 %cmp2.i26.i, label %for.cond.i.preheader.i.for.body.i.i_crit_edge, label %for.cond.i.preheader.i.uprobe_buffer_enable.exit.thread198_crit_edge, !dbg !2474

for.cond.i.preheader.i.uprobe_buffer_enable.exit.thread198_crit_edge: ; preds = %for.cond.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2474
  br label %uprobe_buffer_enable.exit.thread198, !dbg !2474

for.cond.i.preheader.i.for.body.i.i_crit_edge:    ; preds = %for.cond.i.preheader.i
  br label %for.body.i.i, !dbg !2474

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2475
  %gcov_ctr.i.i178 = load i64, ptr @__llvm_gcov_ctr.185, align 16, !dbg !2475
  %42 = add i64 %gcov_ctr.i.i178, 1, !dbg !2475
  store i64 %42, ptr @__llvm_gcov_ctr.185, align 16, !dbg !2475
  br label %uprobe_buffer_enable.exit, !dbg !2475

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.cond.i.preheader.i.for.body.i.i_crit_edge
  %call1.i27.i = phi i32 [ %call1.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %call1.i25.i, %for.cond.i.preheader.i.for.body.i.i_crit_edge ]
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.186, align 8
  %43 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %43, ptr @__llvm_gcov_ctr.186, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.188, align 16, !dbg !2476
  %44 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !2476
  store i64 %44, ptr @__llvm_gcov_ctr.188, align 16, !dbg !2476
  %gcov_ctr40.i.i.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 2), align 16, !dbg !2476
  %45 = add i64 %gcov_ctr40.i.i.i.i, 1, !dbg !2476
  store i64 %45, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.188, i32 0, i32 2), align 16, !dbg !2476
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #21, !dbg !2482
  %cmp4.i.i = icmp eq ptr %call38.i.i.i.i, null, !dbg !2483
  br i1 %cmp4.i.i, label %for.cond21.preheader.i.i, label %cleanup.i.i, !dbg !2484

cleanup.i.i:                                      ; preds = %for.body.i.i
  %call7.i.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #21, !dbg !2485
  %46 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !2486
  %47 = ptrtoint ptr %46 to i32, !dbg !2486
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1.i27.i, !dbg !2486
  %48 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !2486
  call void @__asan_load4_noabort(i32 %48), !dbg !2486
  %49 = load i32, ptr %arrayidx.i.i, align 4, !dbg !2486
  %add.i.i = add i32 %49, %47, !dbg !2486
  %50 = inttoptr i32 %add.i.i to ptr, !dbg !2486
  %buf.i.i = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %50, i32 0, i32 1, !dbg !2487
  %51 = ptrtoint ptr %buf.i.i to i32, !dbg !2488
  call void @__asan_store4_noabort(i32 %51), !dbg !2488
  store ptr %call7.i.i, ptr %buf.i.i, align 4, !dbg !2488
  %52 = load i32, ptr %arrayidx.i.i, align 4, !dbg !2489
  %add18.i.i = add i32 %52, %47, !dbg !2489
  %53 = inttoptr i32 %add18.i.i to ptr, !dbg !2489
  tail call void @__mutex_init(ptr noundef %53, ptr noundef nonnull @.str.36, ptr noundef nonnull @uprobe_buffer_init.__key) #21, !dbg !2489
  %gcov_ctr43.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 3), align 8, !dbg !2473
  %54 = add i64 %gcov_ctr43.i.i, 1, !dbg !2473
  store i64 %54, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 3), align 8, !dbg !2473
  %call1.i.i = tail call i32 @cpumask_next(i32 noundef %call1.i27.i, ptr noundef nonnull @__cpu_possible_mask) #27, !dbg !2474
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !2474
  %55 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2474
  %cmp2.i.i = icmp ult i32 %call1.i.i, %55, !dbg !2474
  br i1 %cmp2.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.uprobe_buffer_enable.exit.thread198_crit_edge, !dbg !2474

cleanup.i.i.uprobe_buffer_enable.exit.thread198_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2474
  br label %uprobe_buffer_enable.exit.thread198, !dbg !2474

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2474
  br label %for.body.i.i, !dbg !2474

for.cond21.preheader.i.i:                         ; preds = %for.body.i.i
  %gcov_ctr42.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 2), align 16, !dbg !2490
  %56 = add i64 %gcov_ctr42.i.i, 1, !dbg !2490
  store i64 %56, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 2), align 16, !dbg !2490
  %call2259.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27, !dbg !2491
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !2491
  %57 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2491
  call void @__sanitizer_cov_trace_cmp4(i32 %call2259.i.i, i32 %57), !dbg !2491
  %cmp2360.i.i = icmp ult i32 %call2259.i.i, %57, !dbg !2491
  br i1 %cmp2360.i.i, label %for.cond21.preheader.i.i.for.body24.i.i_crit_edge, label %for.cond21.preheader.i.i.for.end38.i.i_crit_edge, !dbg !2491

for.cond21.preheader.i.i.for.end38.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2491
  br label %for.end38.i.i, !dbg !2491

for.cond21.preheader.i.i.for.body24.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  br label %for.body24.i.i, !dbg !2491

for.body24.i.i:                                   ; preds = %do.body28.i.i.for.body24.i.i_crit_edge, %for.cond21.preheader.i.i.for.body24.i.i_crit_edge
  %call2261.i.i = phi i32 [ %call22.i.i, %do.body28.i.i.for.body24.i.i_crit_edge ], [ %call2259.i.i, %for.cond21.preheader.i.i.for.body24.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call2261.i.i, i32 %call1.i27.i), !dbg !2492
  %cmp25.i.i = icmp eq i32 %call2261.i.i, %call1.i27.i, !dbg !2492
  br i1 %cmp25.i.i, label %if.then26.i.i, label %do.body28.i.i, !dbg !2493

if.then26.i.i:                                    ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2494
  %gcov_ctr45.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 5), align 8, !dbg !2494
  %58 = add i64 %gcov_ctr45.i.i, 1, !dbg !2494
  store i64 %58, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 5), align 8, !dbg !2494
  br label %for.end38.i.i, !dbg !2494

do.body28.i.i:                                    ; preds = %for.body24.i.i
  %gcov_ctr46.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 6), align 16, !dbg !2495
  %59 = add i64 %gcov_ctr46.i.i, 1, !dbg !2495
  store i64 %59, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 6), align 16, !dbg !2495
  %60 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !2495
  %61 = ptrtoint ptr %60 to i32, !dbg !2495
  %arrayidx35.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2261.i.i, !dbg !2495
  %62 = ptrtoint ptr %arrayidx35.i.i to i32, !dbg !2495
  call void @__asan_load4_noabort(i32 %62), !dbg !2495
  %63 = load i32, ptr %arrayidx35.i.i, align 4, !dbg !2495
  %add36.i.i = add i32 %63, %61, !dbg !2495
  %64 = inttoptr i32 %add36.i.i to ptr, !dbg !2495
  %buf37.i.i = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %64, i32 0, i32 1, !dbg !2495
  %65 = ptrtoint ptr %buf37.i.i to i32, !dbg !2495
  call void @__asan_load4_noabort(i32 %65), !dbg !2495
  %66 = load ptr, ptr %buf37.i.i, align 4, !dbg !2495
  %67 = ptrtoint ptr %66 to i32, !dbg !2495
  tail call void @free_pages(i32 noundef %67, i32 noundef 0) #21, !dbg !2495
  %call22.i.i = tail call i32 @cpumask_next(i32 noundef %call2261.i.i, ptr noundef nonnull @__cpu_possible_mask) #27, !dbg !2491
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !2491
  %68 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2491
  %cmp23.i.i = icmp ult i32 %call22.i.i, %68, !dbg !2491
  br i1 %cmp23.i.i, label %do.body28.i.i.for.body24.i.i_crit_edge, label %do.body28.i.i.for.end38.i.i_crit_edge, !dbg !2491, !llvm.loop !2496

do.body28.i.i.for.end38.i.i_crit_edge:            ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2491
  br label %for.end38.i.i, !dbg !2491

do.body28.i.i.for.body24.i.i_crit_edge:           ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2491
  br label %for.body24.i.i, !dbg !2491

for.end38.i.i:                                    ; preds = %do.body28.i.i.for.end38.i.i_crit_edge, %if.then26.i.i, %for.cond21.preheader.i.i.for.end38.i.i_crit_edge
  %gcov_ctr47.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 7), align 8, !dbg !2498
  %69 = add i64 %gcov_ctr47.i.i, 1, !dbg !2498
  store i64 %69, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 7), align 8, !dbg !2498
  %70 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !2498
  tail call void @free_percpu(ptr noundef %70) #21, !dbg !2499
  br label %uprobe_buffer_enable.exit, !dbg !2500

uprobe_buffer_enable.exit.thread198:              ; preds = %cleanup.i.i.uprobe_buffer_enable.exit.thread198_crit_edge, %for.cond.i.preheader.i.uprobe_buffer_enable.exit.thread198_crit_edge
  %gcov_ctr44.i.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 4), align 16, !dbg !2501
  %71 = add i64 %gcov_ctr44.i.i, 1, !dbg !2501
  store i64 %71, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 4), align 16, !dbg !2501
  %gcov_ctr17.i200 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 3), align 8, !dbg !2502
  %72 = add i64 %gcov_ctr17.i200, 1, !dbg !2502
  store i64 %72, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 3), align 8, !dbg !2502
  br label %if.end97, !dbg !2503

uprobe_buffer_enable.exit:                        ; preds = %for.end38.i.i, %if.then.i.i
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 2), align 16, !dbg !2504
  %73 = add i64 %gcov_ctr16.i, 1, !dbg !2504
  store i64 %73, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 2), align 16, !dbg !2504
  %74 = load i32, ptr @uprobe_buffer_refcnt, align 4, !dbg !2504
  %dec.i = add i32 %74, -1, !dbg !2504
  store i32 %dec.i, ptr @uprobe_buffer_refcnt, align 4, !dbg !2504
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 3), align 8, !dbg !2502
  %75 = add i64 %gcov_ctr17.i, 1, !dbg !2502
  store i64 %75, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 3), align 8, !dbg !2502
  br label %err_flags, !dbg !2503

if.end97:                                         ; preds = %uprobe_buffer_enable.exit.thread198, %do.cond7.i.if.end97_crit_edge
  %gcov_ctr.i179 = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %76 = ptrtoint ptr %event.i.i to i32, !dbg !2505
  call void @__asan_load4_noabort(i32 %76), !dbg !2505
  %77 = load ptr, ptr %event.i.i, align 4, !dbg !2505
  %probes.i181 = getelementptr inbounds %struct.trace_probe_event, ptr %77, i32 0, i32 4, !dbg !2507
  %78 = ptrtoint ptr %probes.i181 to i32, !dbg !2508
  call void @__asan_load4_noabort(i32 %78), !dbg !2508
  %.pn203 = load ptr, ptr %probes.i181, align 4, !dbg !2508
  %79 = add i64 %gcov_ctr.i179, 2
  store i64 %79, ptr @__llvm_gcov_ctr.119, align 8
  %cmp104.not206 = icmp eq ptr %.pn203, %probes.i181, !dbg !2508
  br i1 %cmp104.not206, label %if.end97.for.end_crit_edge, label %if.end97.for.body_crit_edge, !dbg !2508

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  br label %for.body, !dbg !2508

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2508
  br label %for.end, !dbg !2508

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end97.for.body_crit_edge
  %.pn207 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn203, %if.end97.for.body_crit_edge ]
  %consumer.i = getelementptr i8, ptr %.pn207, i32 -44, !dbg !2509
  %filter1.i = getelementptr i8, ptr %.pn207, i32 -36, !dbg !2512
  %80 = ptrtoint ptr %filter1.i to i32, !dbg !2513
  call void @__asan_store4_noabort(i32 %80), !dbg !2513
  store ptr %filter, ptr %filter1.i, align 4, !dbg !2513
  %dentry.i = getelementptr i8, ptr %.pn207, i32 -24, !dbg !2514
  %81 = ptrtoint ptr %dentry.i to i32, !dbg !2514
  call void @__asan_load4_noabort(i32 %81), !dbg !2514
  %82 = load ptr, ptr %dentry.i, align 4, !dbg !2514
  %gcov_ctr.i.i185 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %83 = add i64 %gcov_ctr.i.i185, 1
  store i64 %83, ptr @__llvm_gcov_ctr.106, align 8
  %84 = ptrtoint ptr %82 to i32, !dbg !2515
  call void @__asan_load4_noabort(i32 %84), !dbg !2515
  %85 = load i32, ptr %82, align 8, !dbg !2515
  %and.i.i.i = and i32 %85, 67108864, !dbg !2515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !2515
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0, !dbg !2515
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !dbg !2515, !prof !194

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2518
  %gcov_ctr.i.i.i186 = load i64, ptr @__llvm_gcov_ctr.108, align 8, !dbg !2518
  %86 = add i64 %gcov_ctr.i.i.i186, 1, !dbg !2518
  store i64 %86, ptr @__llvm_gcov_ctr.108, align 8, !dbg !2518
  %d_op.i.i.i = getelementptr inbounds %struct.dentry, ptr %82, i32 0, i32 8, !dbg !2519
  %87 = ptrtoint ptr %d_op.i.i.i to i32, !dbg !2519
  call void @__asan_load4_noabort(i32 %87), !dbg !2519
  %88 = load ptr, ptr %d_op.i.i.i, align 8, !dbg !2519
  %d_real.i.i.i = getelementptr inbounds %struct.dentry_operations, ptr %88, i32 0, i32 12, !dbg !2520
  %89 = ptrtoint ptr %d_real.i.i.i to i32, !dbg !2520
  call void @__asan_load4_noabort(i32 %89), !dbg !2520
  %90 = load ptr, ptr %d_real.i.i.i, align 16, !dbg !2520
  %call.i.i.i = tail call ptr %90(ptr noundef %82, ptr noundef null) #21, !dbg !2518
  br label %d_real_inode.exit.i, !dbg !2521

if.else.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2522
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !2522
  %91 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !2522
  store i64 %91, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !2522
  br label %d_real_inode.exit.i, !dbg !2523

d_real_inode.exit.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i.i ], [ %82, %if.else.i.i.i ], !dbg !2524
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.107, align 8
  %92 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %92, ptr @__llvm_gcov_ctr.107, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i.i, i32 0, i32 5, !dbg !2525
  %93 = ptrtoint ptr %d_inode.i.i.i to i32, !dbg !2525
  call void @__asan_load4_noabort(i32 %93), !dbg !2525
  %94 = load ptr, ptr %d_inode.i.i.i, align 8, !dbg !2525
  %inode.i = getelementptr i8, ptr %.pn207, i32 -20, !dbg !2527
  %95 = ptrtoint ptr %inode.i to i32, !dbg !2528
  call void @__asan_store4_noabort(i32 %95), !dbg !2528
  store ptr %94, ptr %inode.i, align 4, !dbg !2528
  %ref_ctr_offset.i = getelementptr i8, ptr %.pn207, i32 -8, !dbg !2529
  %96 = ptrtoint ptr %ref_ctr_offset.i to i32, !dbg !2529
  call void @__asan_load4_noabort(i32 %96), !dbg !2529
  %97 = load i32, ptr %ref_ctr_offset.i, align 4, !dbg !2529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97), !dbg !2530
  %tobool.not.i187 = icmp eq i32 %97, 0, !dbg !2530
  br i1 %tobool.not.i187, label %if.else.i, label %if.then.i189, !dbg !2530

if.then.i189:                                     ; preds = %d_real_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2531
  %gcov_ctr16.i188 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !2531
  %98 = add i64 %gcov_ctr16.i188, 1, !dbg !2531
  store i64 %98, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 1), align 8, !dbg !2531
  %offset.i = getelementptr i8, ptr %.pn207, i32 -12, !dbg !2532
  %99 = ptrtoint ptr %offset.i to i32, !dbg !2532
  call void @__asan_load4_noabort(i32 %99), !dbg !2532
  %100 = load i32, ptr %offset.i, align 4, !dbg !2532
  %conv.i = zext i32 %100 to i64, !dbg !2533
  %conv4.i = zext i32 %97 to i64, !dbg !2534
  %call6.i = tail call i32 @uprobe_register_refctr(ptr noundef %94, i64 noundef %conv.i, i64 noundef %conv4.i, ptr noundef %consumer.i) #21, !dbg !2535
  br label %if.end.i, !dbg !2536

if.else.i:                                        ; preds = %d_real_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2537
  %gcov_ctr.i190 = load i64, ptr @__llvm_gcov_ctr.181, align 16, !dbg !2537
  %101 = add i64 %gcov_ctr.i190, 1, !dbg !2537
  store i64 %101, ptr @__llvm_gcov_ctr.181, align 16, !dbg !2537
  %offset8.i = getelementptr i8, ptr %.pn207, i32 -12, !dbg !2538
  %102 = ptrtoint ptr %offset8.i to i32, !dbg !2538
  call void @__asan_load4_noabort(i32 %102), !dbg !2538
  %103 = load i32, ptr %offset8.i, align 4, !dbg !2538
  %conv9.i = zext i32 %103 to i64, !dbg !2539
  %call11.i = tail call i32 @uprobe_register(ptr noundef %94, i64 noundef %conv9.i, ptr noundef %consumer.i) #21, !dbg !2540
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i189
  %ret.0.i191 = phi i32 [ %call6.i, %if.then.i189 ], [ %call11.i, %if.else.i ], !dbg !2541
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i191), !dbg !2542
  %tobool12.not.i = icmp eq i32 %ret.0.i191, 0, !dbg !2542
  br i1 %tobool12.not.i, label %for.inc, label %if.then109, !dbg !2542

if.then109:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2527
  %inode.i.le = getelementptr i8, ptr %.pn207, i32 -20, !dbg !2527
  %gcov_ctr17.i192 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !2543
  %104 = add i64 %gcov_ctr17.i192, 1, !dbg !2543
  store i64 %104, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.181, i32 0, i32 2), align 16, !dbg !2543
  %105 = ptrtoint ptr %inode.i.le to i32, !dbg !2544
  call void @__asan_store4_noabort(i32 %105), !dbg !2544
  store ptr null, ptr %inode.i.le, align 4, !dbg !2544
  %gcov_ctr134 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 10), align 16, !dbg !2545
  %106 = add i64 %gcov_ctr134, 1, !dbg !2545
  store i64 %106, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 10), align 16, !dbg !2545
  tail call fastcc void @__probe_event_disable(ptr noundef nonnull %3), !dbg !2546
  tail call fastcc void @uprobe_buffer_disable(), !dbg !2547
  br label %err_flags, !dbg !2547

for.inc:                                          ; preds = %if.end.i
  %gcov_ctr135 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 11), align 8, !dbg !2508
  %107 = add i64 %gcov_ctr135, 1, !dbg !2508
  store i64 %107, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 11), align 8, !dbg !2508
  %108 = ptrtoint ptr %.pn207 to i32, !dbg !2508
  call void @__asan_load4_noabort(i32 %108), !dbg !2508
  %.pn = load ptr, ptr %.pn207, align 4, !dbg !2508
  %gcov_ctr.i182 = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %109 = add i64 %gcov_ctr.i182, 1
  store i64 %109, ptr @__llvm_gcov_ctr.119, align 8
  %110 = ptrtoint ptr %event.i.i to i32, !dbg !2548
  call void @__asan_load4_noabort(i32 %110), !dbg !2548
  %111 = load ptr, ptr %event.i.i, align 4, !dbg !2548
  %probes.i184 = getelementptr inbounds %struct.trace_probe_event, ptr %111, i32 0, i32 4, !dbg !2550
  %cmp104.not = icmp eq ptr %.pn, %probes.i184, !dbg !2508
  br i1 %cmp104.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !2508, !llvm.loop !2551

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2508
  br label %for.body, !dbg !2508

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2508
  br label %for.end, !dbg !2508

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end97.for.end_crit_edge
  %gcov_ctr136 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 12), align 16, !dbg !2553
  %112 = add i64 %gcov_ctr136, 1, !dbg !2553
  store i64 %112, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 12), align 16, !dbg !2553
  br label %cleanup, !dbg !2553

err_flags:                                        ; preds = %if.then109, %uprobe_buffer_enable.exit
  %ret.0 = phi i32 [ -12, %uprobe_buffer_enable.exit ], [ %ret.0.i191, %if.then109 ], !dbg !2425
  br i1 %tobool43.not, label %if.else120, label %if.then118, !dbg !2554

if.then118:                                       ; preds = %err_flags
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2555
  %gcov_ctr137 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 13), align 8, !dbg !2555
  %113 = add i64 %gcov_ctr137, 1, !dbg !2555
  store i64 %113, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 13), align 8, !dbg !2555
  %call119 = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %3, ptr noundef nonnull %file) #21, !dbg !2556
  br label %cleanup, !dbg !2556

if.else120:                                       ; preds = %err_flags
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2557
  %gcov_ctr138 = load i64, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 14), align 16, !dbg !2557
  %114 = add i64 %gcov_ctr138, 1, !dbg !2557
  store i64 %114, ptr getelementptr inbounds ([15 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 14), align 16, !dbg !2557
  %gcov_ctr.i193 = load i64, ptr @__llvm_gcov_ctr.184, align 8
  %115 = add i64 %gcov_ctr.i193, 1
  store i64 %115, ptr @__llvm_gcov_ctr.184, align 8
  %116 = ptrtoint ptr %event.i.i to i32, !dbg !2558
  call void @__asan_load4_noabort(i32 %116), !dbg !2558
  %117 = load ptr, ptr %event.i.i, align 4, !dbg !2558
  %118 = ptrtoint ptr %117 to i32, !dbg !2561
  call void @__asan_load4_noabort(i32 %118), !dbg !2561
  %119 = load i32, ptr %117, align 4, !dbg !2561
  %and.i195 = and i32 %119, -3, !dbg !2561
  store i32 %and.i195, ptr %117, align 4, !dbg !2561
  br label %cleanup

cleanup:                                          ; preds = %if.else120, %if.then118, %for.end, %if.then92, %if.then52, %if.then49, %if.then46, %if.then39
  %retval.0 = phi i32 [ -19, %if.then39 ], [ -4, %if.then46 ], [ %call48, %if.then49 ], [ 0, %if.then92 ], [ 0, %for.end ], [ -4, %if.then52 ], [ %ret.0, %if.else120 ], [ %ret.0, %if.then118 ], !dbg !2425
  ret i32 %retval.0, !dbg !2562
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @probe_event_disable(ptr nocapture noundef readonly %call, ptr noundef %file) unnamed_addr #0 align 64 !dbg !2563 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2564
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i = getelementptr i8, ptr %call, i32 84, !dbg !2565
  %2 = ptrtoint ptr %probes.i to i32, !dbg !2565
  call void @__asan_load4_noabort(i32 %2), !dbg !2565
  %3 = load ptr, ptr %probes.i, align 4, !dbg !2565
  %tobool.not = icmp eq ptr %3, null, !dbg !2567
  br i1 %tobool.not, label %land.rhs, label %if.end40, !dbg !2567

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.175, align 16, !dbg !2567
  %4 = add i64 %gcov_ctr, 1, !dbg !2567
  store i64 %4, ptr @__llvm_gcov_ctr.175, align 16, !dbg !2567
  %.b70 = load i1, ptr @probe_event_disable.__already_done, align 1, !dbg !2567
  br i1 %.b70, label %land.rhs.if.then39_crit_edge, label %if.then, !dbg !2567, !prof !194

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2567
  br label %if.then39, !dbg !2567

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2567
  store i1 true, ptr @probe_event_disable.__already_done, align 1, !dbg !2567
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 1), align 8, !dbg !2567
  %5 = add i64 %gcov_ctr53, 1, !dbg !2567
  store i64 %5, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 1), align 8, !dbg !2567
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1154, i32 noundef 9, ptr noundef null) #21, !dbg !2567
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 2), align 16, !dbg !2567
  %6 = add i64 %gcov_ctr54, 1, !dbg !2567
  store i64 %6, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 2), align 16, !dbg !2567
  br label %if.then39, !dbg !2567

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 3), align 8
  %7 = add i64 %gcov_ctr55, 1
  store i64 %7, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 3), align 8
  br label %cleanup, !dbg !2568

if.end40:                                         ; preds = %entry
  %gcov_ctr.i72 = load i64, ptr @__llvm_gcov_ctr.113, align 8
  %8 = add i64 %gcov_ctr.i72, 1
  store i64 %8, ptr @__llvm_gcov_ctr.113, align 8
  %gcov_ctr.i.i73 = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %9 = add i64 %gcov_ctr.i.i73, 1
  store i64 %9, ptr @__llvm_gcov_ctr.114, align 8
  %event.i.i = getelementptr inbounds %struct.trace_probe, ptr %3, i32 0, i32 1, !dbg !2569
  %10 = ptrtoint ptr %event.i.i to i32, !dbg !2569
  call void @__asan_load4_noabort(i32 %10), !dbg !2569
  %11 = load ptr, ptr %event.i.i, align 4, !dbg !2569
  %12 = ptrtoint ptr %11 to i32, !dbg !2572
  call void @__asan_load4_noabort(i32 %12), !dbg !2572
  %13 = load i32, ptr %11, align 4, !dbg !2572
  %and.i.i = and i32 %13, 3, !dbg !2573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !2574
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0, !dbg !2574
  br i1 %tobool.i.i.not, label %if.then42, label %if.end43, !dbg !2575

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2576
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 4), align 16
  %14 = add i64 %gcov_ctr56, 1
  store i64 %14, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 4), align 16
  br label %cleanup, !dbg !2577

if.end43:                                         ; preds = %if.end40
  %tobool44.not = icmp eq ptr %file, null, !dbg !2578
  br i1 %tobool44.not, label %if.else, label %if.then45, !dbg !2578

if.then45:                                        ; preds = %if.end43
  %call46 = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %3, ptr noundef nonnull %file) #21, !dbg !2579
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46), !dbg !2580
  %cmp = icmp slt i32 %call46, 0, !dbg !2580
  br i1 %cmp, label %if.then47, label %if.end48, !dbg !2579

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2576
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 5), align 8
  %15 = add i64 %gcov_ctr57, 1
  store i64 %15, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 5), align 8
  br label %cleanup, !dbg !2581

if.end48:                                         ; preds = %if.then45
  %gcov_ctr.i74 = load i64, ptr @__llvm_gcov_ctr.113, align 8
  %16 = add i64 %gcov_ctr.i74, 1
  store i64 %16, ptr @__llvm_gcov_ctr.113, align 8
  %gcov_ctr.i.i75 = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %17 = add i64 %gcov_ctr.i.i75, 1
  store i64 %17, ptr @__llvm_gcov_ctr.114, align 8
  %18 = ptrtoint ptr %event.i.i to i32, !dbg !2582
  call void @__asan_load4_noabort(i32 %18), !dbg !2582
  %19 = load ptr, ptr %event.i.i, align 4, !dbg !2582
  %20 = ptrtoint ptr %19 to i32, !dbg !2585
  call void @__asan_load4_noabort(i32 %20), !dbg !2585
  %21 = load i32, ptr %19, align 4, !dbg !2585
  %and.i.i77 = and i32 %21, 3, !dbg !2586
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77), !dbg !2587
  %tobool.i.i78.not = icmp eq i32 %and.i.i77, 0, !dbg !2587
  br i1 %tobool.i.i78.not, label %if.end51, label %if.then50, !dbg !2588

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2576
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 6), align 16
  %22 = add i64 %gcov_ctr58, 1
  store i64 %22, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 6), align 16
  br label %cleanup, !dbg !2589

if.end51:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2590
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 7), align 8, !dbg !2590
  %23 = add i64 %gcov_ctr59, 1, !dbg !2590
  store i64 %23, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 7), align 8, !dbg !2590
  br label %if.end52, !dbg !2590

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2591
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 8), align 16, !dbg !2591
  %24 = add i64 %gcov_ctr60, 1, !dbg !2591
  store i64 %24, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 8), align 16, !dbg !2591
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.184, align 8
  %25 = add i64 %gcov_ctr.i79, 1
  store i64 %25, ptr @__llvm_gcov_ctr.184, align 8
  %26 = ptrtoint ptr %event.i.i to i32, !dbg !2592
  call void @__asan_load4_noabort(i32 %26), !dbg !2592
  %27 = load ptr, ptr %event.i.i, align 4, !dbg !2592
  %28 = ptrtoint ptr %27 to i32, !dbg !2594
  call void @__asan_load4_noabort(i32 %28), !dbg !2594
  %29 = load i32, ptr %27, align 4, !dbg !2594
  %and.i = and i32 %29, -3, !dbg !2594
  store i32 %and.i, ptr %27, align 4, !dbg !2594
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.end51
  tail call fastcc void @__probe_event_disable(ptr noundef nonnull %3), !dbg !2595
  tail call fastcc void @uprobe_buffer_disable(), !dbg !2596
  br label %cleanup, !dbg !2597

cleanup:                                          ; preds = %if.end52, %if.then50, %if.then47, %if.then42, %if.then39
  ret void, !dbg !2597
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uprobe_perf_close(ptr nocapture noundef readonly %call, ptr noundef %event) unnamed_addr #0 align 64 !dbg !2598 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2599
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.128, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.128, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.129, align 8
  %probes.i = getelementptr i8, ptr %call, i32 84, !dbg !2600
  %2 = ptrtoint ptr %probes.i to i32, !dbg !2600
  call void @__asan_load4_noabort(i32 %2), !dbg !2600
  %3 = load ptr, ptr %probes.i, align 4, !dbg !2600
  %tobool.not = icmp eq ptr %3, null, !dbg !2602
  br i1 %tobool.not, label %land.rhs, label %if.end40, !dbg !2602

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.177, align 16, !dbg !2602
  %4 = add i64 %gcov_ctr, 1, !dbg !2602
  store i64 %4, ptr @__llvm_gcov_ctr.177, align 16, !dbg !2602
  %.b85 = load i1, ptr @uprobe_perf_close.__already_done, align 1, !dbg !2602
  br i1 %.b85, label %land.rhs.if.then39_crit_edge, label %if.then, !dbg !2602, !prof !194

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2602
  br label %if.then39, !dbg !2602

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2602
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 1), align 8, !dbg !2602
  %5 = add i64 %gcov_ctr67, 1, !dbg !2602
  store i64 %5, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 1), align 8, !dbg !2602
  store i1 true, ptr @uprobe_perf_close.__already_done, align 1, !dbg !2602
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1276, i32 noundef 9, ptr noundef null) #21, !dbg !2602
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 2), align 16, !dbg !2602
  %6 = add i64 %gcov_ctr68, 1, !dbg !2602
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 2), align 16, !dbg !2602
  br label %if.then39, !dbg !2602

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 3), align 8, !dbg !2603
  %7 = add i64 %gcov_ctr69, 1, !dbg !2603
  store i64 %7, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 3), align 8, !dbg !2603
  br label %cleanup, !dbg !2603

if.end40:                                         ; preds = %entry
  %event43 = getelementptr inbounds %struct.trace_probe, ptr %3, i32 0, i32 1, !dbg !2604
  %8 = ptrtoint ptr %event43 to i32, !dbg !2604
  call void @__asan_load4_noabort(i32 %8), !dbg !2604
  %9 = load ptr, ptr %event43, align 4, !dbg !2604
  %filter = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 5, !dbg !2605
  tail call void @_raw_write_lock(ptr noundef %filter) #21, !dbg !2606
  %target.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 1, !dbg !2609
  %10 = ptrtoint ptr %target.i to i32, !dbg !2609
  call void @__asan_load4_noabort(i32 %10), !dbg !2609
  %11 = load ptr, ptr %target.i, align 8, !dbg !2609
  %tobool.not.i = icmp eq ptr %11, null, !dbg !2610
  br i1 %tobool.not.i, label %trace_uprobe_filter_remove.exit, label %if.then.i, !dbg !2610

if.then.i:                                        ; preds = %if.end40
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, !dbg !2611
  %gcov_ctr.i87 = load i64, ptr @__llvm_gcov_ctr.194, align 16, !dbg !2612
  %12 = add i64 %gcov_ctr.i87, 1, !dbg !2612
  store i64 %12, ptr @__llvm_gcov_ctr.194, align 16, !dbg !2612
  %gcov_ctr.i.i88 = load i64, ptr @__llvm_gcov_ctr.195, align 8
  %13 = add i64 %gcov_ctr.i.i88, 1
  store i64 %13, ptr @__llvm_gcov_ctr.195, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hw.i) #21, !dbg !2613
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !dbg !2617

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2618
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.124, align 8, !dbg !2618
  %14 = add i64 %gcov_ctr.i.i.i, 1, !dbg !2618
  store i64 %14, ptr @__llvm_gcov_ctr.124, align 8, !dbg !2618
  br label %list_del.exit.i, !dbg !2618

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2619
  %gcov_ctr2.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !2619
  %15 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !2619
  store i64 %15, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !2619
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %hw.i, i32 0, i32 1, !dbg !2620
  %16 = ptrtoint ptr %prev.i.i.i to i32, !dbg !2620
  call void @__asan_load4_noabort(i32 %16), !dbg !2620
  %17 = load ptr, ptr %prev.i.i.i, align 4, !dbg !2620
  %18 = ptrtoint ptr %hw.i to i32, !dbg !2621
  call void @__asan_load4_noabort(i32 %18), !dbg !2621
  %19 = load ptr, ptr %hw.i, align 4, !dbg !2621
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1, !dbg !2622
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32, !dbg !2624
  call void @__asan_store4_noabort(i32 %20), !dbg !2624
  store ptr %17, ptr %prev1.i.i.i.i, align 4, !dbg !2624
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.126, align 8, !dbg !2625
  %21 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !2625
  store i64 %21, ptr @__llvm_gcov_ctr.126, align 8, !dbg !2625
  %22 = ptrtoint ptr %17 to i32, !dbg !2625
  call void @__asan_store4_noabort(i32 %22), !dbg !2625
  store volatile ptr %19, ptr %17, align 4, !dbg !2625
  br label %list_del.exit.i, !dbg !2626

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %23 = ptrtoint ptr %hw.i to i32, !dbg !2627
  call void @__asan_store4_noabort(i32 %23), !dbg !2627
  store ptr inttoptr (i32 256 to ptr), ptr %hw.i, align 4, !dbg !2627
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %hw.i, i32 0, i32 1, !dbg !2628
  %24 = ptrtoint ptr %prev.i.i to i32, !dbg !2629
  call void @__asan_store4_noabort(i32 %24), !dbg !2629
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4, !dbg !2629
  %nr_systemwide.i = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 1, i32 2, i32 0, i32 1, !dbg !2630
  %25 = ptrtoint ptr %nr_systemwide.i to i32, !dbg !2630
  call void @__asan_load4_noabort(i32 %25), !dbg !2630
  %26 = load i32, ptr %nr_systemwide.i, align 4, !dbg !2630
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26), !dbg !2631
  %tobool2.not.i = icmp eq i32 %26, 0, !dbg !2631
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %list_del.exit.i.trace_uprobe_filter_remove.exit.thread_crit_edge, !dbg !2632

list_del.exit.i.trace_uprobe_filter_remove.exit.thread_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2632
  br label %trace_uprobe_filter_remove.exit.thread, !dbg !2632

lor.lhs.false.i:                                  ; preds = %list_del.exit.i
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.194, i32 0, i32 1), align 8, !dbg !2633
  %27 = add i64 %gcov_ctr12.i, 1, !dbg !2633
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.194, i32 0, i32 1), align 8, !dbg !2633
  %28 = ptrtoint ptr %target.i to i32, !dbg !2634
  call void @__asan_load4_noabort(i32 %28), !dbg !2634
  %29 = load ptr, ptr %target.i, align 8, !dbg !2634
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 3, !dbg !2635
  %30 = ptrtoint ptr %flags.i to i32, !dbg !2635
  call void @__asan_load4_noabort(i32 %30), !dbg !2635
  %31 = load i32, ptr %flags.i, align 4, !dbg !2635
  %and.i = and i32 %31, 4, !dbg !2636
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !2636
  %tobool5.not.i = icmp eq i32 %and.i, 0, !dbg !2636
  br i1 %tobool5.not.i, label %if.end.i.i26.i, label %lor.lhs.false.i.trace_uprobe_filter_remove.exit.thread_crit_edge, !dbg !2637

lor.lhs.false.i.trace_uprobe_filter_remove.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2637
  br label %trace_uprobe_filter_remove.exit.thread, !dbg !2637

if.end.i.i26.i:                                   ; preds = %lor.lhs.false.i
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.194, i32 0, i32 2), align 16, !dbg !2638
  %32 = add i64 %gcov_ctr13.i, 1, !dbg !2638
  store i64 %32, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.194, i32 0, i32 2), align 16, !dbg !2638
  %gcov_ctr.i23.i = load i64, ptr @__llvm_gcov_ctr.192, align 8
  %33 = add i64 %gcov_ctr.i23.i, 1
  store i64 %33, ptr @__llvm_gcov_ctr.192, align 8
  %mm.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53, !dbg !2639
  %34 = ptrtoint ptr %mm.i.i to i32, !dbg !2639
  call void @__asan_load4_noabort(i32 %34), !dbg !2639
  %35 = load ptr, ptr %mm.i.i, align 8, !dbg !2639
  %perf_events.i.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 1, i32 2, i32 1, !dbg !2641
  %36 = ptrtoint ptr %perf_events.i.i.i to i32, !dbg !2641
  call void @__asan_load4_noabort(i32 %36), !dbg !2641
  %.pn20.i.i.i = load ptr, ptr %perf_events.i.i.i, align 4, !dbg !2641
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %perf_events.i.i.i, !dbg !2641
  br i1 %cmp.not21.i.i.i, label %if.end.i.i26.i.trace_uprobe_filter_remove.exit.thread95_crit_edge, label %if.end.i.i26.i.for.body.i.i.i_crit_edge, !dbg !2641

if.end.i.i26.i.for.body.i.i.i_crit_edge:          ; preds = %if.end.i.i26.i
  br label %for.body.i.i.i, !dbg !2641

if.end.i.i26.i.trace_uprobe_filter_remove.exit.thread95_crit_edge: ; preds = %if.end.i.i26.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2641
  br label %trace_uprobe_filter_remove.exit.thread95, !dbg !2641

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i26.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %if.end.i.i26.i.for.body.i.i.i_crit_edge ]
  %target.i.i.i = getelementptr inbounds %struct.hw_perf_event, ptr %.pn22.i.i.i, i32 0, i32 1, !dbg !2643
  %37 = ptrtoint ptr %target.i.i.i to i32, !dbg !2643
  call void @__asan_load4_noabort(i32 %37), !dbg !2643
  %38 = load ptr, ptr %target.i.i.i, align 8, !dbg !2643
  %mm3.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 53, !dbg !2644
  %39 = ptrtoint ptr %mm3.i.i.i to i32, !dbg !2644
  call void @__asan_load4_noabort(i32 %39), !dbg !2644
  %40 = load ptr, ptr %mm3.i.i.i, align 8, !dbg !2644
  %cmp4.i.i.i = icmp eq ptr %40, %35, !dbg !2645
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %for.inc.i.i.i, !dbg !2646

if.then5.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2647
  %gcov_ctr13.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !2647
  %41 = add i64 %gcov_ctr13.i.i.i, 1, !dbg !2647
  store i64 %41, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 1), align 8, !dbg !2647
  br label %trace_uprobe_filter_remove.exit.thread, !dbg !2647

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %gcov_ctr14.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !2641
  %42 = add i64 %gcov_ctr14.i.i.i, 1, !dbg !2641
  store i64 %42, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 2), align 16, !dbg !2641
  %43 = ptrtoint ptr %.pn22.i.i.i to i32, !dbg !2641
  call void @__asan_load4_noabort(i32 %43), !dbg !2641
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4, !dbg !2641
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %perf_events.i.i.i, !dbg !2641
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.trace_uprobe_filter_remove.exit.thread95_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, !dbg !2641, !llvm.loop !2648

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2641
  br label %for.body.i.i.i, !dbg !2641

for.inc.i.i.i.trace_uprobe_filter_remove.exit.thread95_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2641
  br label %trace_uprobe_filter_remove.exit.thread95, !dbg !2641

trace_uprobe_filter_remove.exit.thread95:         ; preds = %for.inc.i.i.i.trace_uprobe_filter_remove.exit.thread95_crit_edge, %if.end.i.i26.i.trace_uprobe_filter_remove.exit.thread95_crit_edge
  %gcov_ctr15.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), align 8, !dbg !2650
  %44 = add i64 %gcov_ctr15.i.i.i, 1, !dbg !2650
  store i64 %44, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.164, i32 0, i32 3), align 8, !dbg !2650
  tail call void @_raw_write_unlock(ptr noundef %filter) #21, !dbg !2651
  br label %if.end46, !dbg !2652

trace_uprobe_filter_remove.exit.thread:           ; preds = %if.then5.i.i.i, %lor.lhs.false.i.trace_uprobe_filter_remove.exit.thread_crit_edge, %list_del.exit.i.trace_uprobe_filter_remove.exit.thread_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %filter) #21, !dbg !2651
  br label %if.then45, !dbg !2652

trace_uprobe_filter_remove.exit:                  ; preds = %if.end40
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.194, i32 0, i32 3), align 8, !dbg !2653
  %45 = add i64 %gcov_ctr14.i, 1, !dbg !2653
  store i64 %45, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.194, i32 0, i32 3), align 8, !dbg !2653
  %nr_systemwide6.i = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 1, i32 2, i32 0, i32 1, !dbg !2654
  %46 = ptrtoint ptr %nr_systemwide6.i to i32, !dbg !2655
  call void @__asan_load4_noabort(i32 %46), !dbg !2655
  %47 = load i32, ptr %nr_systemwide6.i, align 4, !dbg !2655
  %dec.i = add i32 %47, -1, !dbg !2655
  store i32 %dec.i, ptr %nr_systemwide6.i, align 4, !dbg !2655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i), !dbg !2656
  %tobool8.i.not = icmp eq i32 %dec.i, 0, !dbg !2656
  tail call void @_raw_write_unlock(ptr noundef %filter) #21, !dbg !2651
  br i1 %tobool8.i.not, label %trace_uprobe_filter_remove.exit.if.end46_crit_edge, label %trace_uprobe_filter_remove.exit.if.then45_crit_edge, !dbg !2652

trace_uprobe_filter_remove.exit.if.then45_crit_edge: ; preds = %trace_uprobe_filter_remove.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2652
  br label %if.then45, !dbg !2652

trace_uprobe_filter_remove.exit.if.end46_crit_edge: ; preds = %trace_uprobe_filter_remove.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2652
  br label %if.end46, !dbg !2652

if.then45:                                        ; preds = %trace_uprobe_filter_remove.exit.if.then45_crit_edge, %trace_uprobe_filter_remove.exit.thread
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 4), align 16, !dbg !2657
  %48 = add i64 %gcov_ctr70, 1, !dbg !2657
  store i64 %48, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 4), align 16, !dbg !2657
  br label %cleanup, !dbg !2657

if.end46:                                         ; preds = %trace_uprobe_filter_remove.exit.if.end46_crit_edge, %trace_uprobe_filter_remove.exit.thread95
  %gcov_ctr.i89 = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %49 = ptrtoint ptr %event43 to i32, !dbg !2658
  call void @__asan_load4_noabort(i32 %49), !dbg !2658
  %50 = load ptr, ptr %event43, align 4, !dbg !2658
  %probes.i90 = getelementptr inbounds %struct.trace_probe_event, ptr %50, i32 0, i32 4, !dbg !2660
  %51 = ptrtoint ptr %probes.i90 to i32, !dbg !2661
  call void @__asan_load4_noabort(i32 %51), !dbg !2661
  %.pn97 = load ptr, ptr %probes.i90, align 4, !dbg !2661
  %52 = add i64 %gcov_ctr.i89, 2
  store i64 %52, ptr @__llvm_gcov_ctr.119, align 8
  %cmp.not100 = icmp eq ptr %.pn97, %probes.i90, !dbg !2661
  br i1 %cmp.not100, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge, !dbg !2661

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body, !dbg !2661

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2661
  br label %for.end, !dbg !2661

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end46.for.body_crit_edge
  %.pn101 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn97, %if.end46.for.body_crit_edge ]
  %inode = getelementptr i8, ptr %.pn101, i32 -20, !dbg !2662
  %53 = ptrtoint ptr %inode to i32, !dbg !2662
  call void @__asan_load4_noabort(i32 %53), !dbg !2662
  %54 = load ptr, ptr %inode, align 4, !dbg !2662
  %offset = getelementptr i8, ptr %.pn101, i32 -12, !dbg !2663
  %55 = ptrtoint ptr %offset to i32, !dbg !2663
  call void @__asan_load4_noabort(i32 %55), !dbg !2663
  %56 = load i32, ptr %offset, align 4, !dbg !2663
  %conv = zext i32 %56 to i64, !dbg !2664
  %consumer = getelementptr i8, ptr %.pn101, i32 -44, !dbg !2665
  %call55 = tail call i32 @uprobe_apply(ptr noundef %54, i64 noundef %conv, ptr noundef %consumer, i1 noundef zeroext false) #21, !dbg !2666
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55), !dbg !2667
  %tobool56.not = icmp eq i32 %call55, 0, !dbg !2667
  br i1 %tobool56.not, label %for.inc, label %if.then57, !dbg !2667

if.then57:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2668
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 5), align 8, !dbg !2668
  %57 = add i64 %gcov_ctr71, 1, !dbg !2668
  store i64 %57, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 5), align 8, !dbg !2668
  br label %for.end, !dbg !2668

for.inc:                                          ; preds = %for.body
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 6), align 16, !dbg !2661
  %58 = add i64 %gcov_ctr72, 1, !dbg !2661
  store i64 %58, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 6), align 16, !dbg !2661
  %59 = ptrtoint ptr %.pn101 to i32, !dbg !2661
  call void @__asan_load4_noabort(i32 %59), !dbg !2661
  %.pn = load ptr, ptr %.pn101, align 4, !dbg !2661
  %gcov_ctr.i91 = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %60 = add i64 %gcov_ctr.i91, 1
  store i64 %60, ptr @__llvm_gcov_ctr.119, align 8
  %61 = ptrtoint ptr %event43 to i32, !dbg !2669
  call void @__asan_load4_noabort(i32 %61), !dbg !2669
  %62 = load ptr, ptr %event43, align 4, !dbg !2669
  %probes.i93 = getelementptr inbounds %struct.trace_probe_event, ptr %62, i32 0, i32 4, !dbg !2671
  %cmp.not = icmp eq ptr %.pn, %probes.i93, !dbg !2661
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !2661, !llvm.loop !2672

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2661
  br label %for.body, !dbg !2661

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2661
  br label %for.end, !dbg !2661

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then57, %if.end46.for.end_crit_edge
  %ret.1 = phi i32 [ %call55, %if.then57 ], [ 0, %if.end46.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], !dbg !2674
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 7), align 8, !dbg !2675
  %63 = add i64 %gcov_ctr73, 1, !dbg !2675
  store i64 %63, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 7), align 8, !dbg !2675
  br label %cleanup, !dbg !2676

cleanup:                                          ; preds = %for.end, %if.then45, %if.then39
  %retval.0 = phi i32 [ -19, %if.then39 ], [ 0, %if.then45 ], [ %ret.1, %for.end ], !dbg !2674
  ret i32 %retval.0, !dbg !2677
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_add_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__probe_event_disable(ptr nocapture noundef readonly %tp) unnamed_addr #0 align 64 !dbg !2678 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2679
  %event = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !2680
  %0 = ptrtoint ptr %event to i32, !dbg !2680
  call void @__asan_load4_noabort(i32 %0), !dbg !2680
  %1 = load ptr, ptr %event, align 4, !dbg !2680
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.179, align 8
  %nr_systemwide.i = getelementptr inbounds %struct.trace_probe_event, ptr %1, i32 1, i32 2, i32 0, i32 1, !dbg !2681
  %3 = ptrtoint ptr %nr_systemwide.i to i32, !dbg !2681
  call void @__asan_load4_noabort(i32 %3), !dbg !2681
  %4 = load i32, ptr %nr_systemwide.i, align 4, !dbg !2681
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4), !dbg !2683
  %tobool.not.i = icmp eq i32 %4, 0, !dbg !2683
  br i1 %tobool.not.i, label %uprobe_filter_is_empty.exit, label %entry.if.then_crit_edge, !dbg !2684, !prof !2452

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2684
  br label %if.then, !dbg !2684

uprobe_filter_is_empty.exit:                      ; preds = %entry
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.179, i32 0, i32 1), align 8, !dbg !2685
  %5 = add i64 %gcov_ctr2.i, 1, !dbg !2685
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.179, i32 0, i32 1), align 8, !dbg !2685
  %perf_events.i = getelementptr inbounds %struct.trace_probe_event, ptr %1, i32 1, i32 2, i32 1, !dbg !2686
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.120, align 8
  %6 = add i64 %gcov_ctr.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.120, align 8
  %7 = ptrtoint ptr %perf_events.i to i32, !dbg !2687
  call void @__asan_load4_noabort(i32 %7), !dbg !2687
  %8 = load volatile ptr, ptr %perf_events.i, align 4, !dbg !2687
  %cmp.i.i = icmp eq ptr %8, %perf_events.i, !dbg !2689
  br i1 %cmp.i.i, label %uprobe_filter_is_empty.exit.if.end_crit_edge, label %uprobe_filter_is_empty.exit.if.then_crit_edge, !dbg !2680, !prof !194

uprobe_filter_is_empty.exit.if.then_crit_edge:    ; preds = %uprobe_filter_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2680
  br label %if.then, !dbg !2680

uprobe_filter_is_empty.exit.if.end_crit_edge:     ; preds = %uprobe_filter_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2680
  br label %if.end, !dbg !2680

if.then:                                          ; preds = %uprobe_filter_is_empty.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !2680
  %9 = add i64 %gcov_ctr, 1, !dbg !2680
  store i64 %9, ptr @__llvm_gcov_ctr.182, align 16, !dbg !2680
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1077, i32 noundef 9, ptr noundef null) #21, !dbg !2680
  br label %if.end, !dbg !2680

if.end:                                           ; preds = %if.then, %uprobe_filter_is_empty.exit.if.end_crit_edge
  %gcov_ctr.i54 = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %10 = ptrtoint ptr %event to i32, !dbg !2690
  call void @__asan_load4_noabort(i32 %10), !dbg !2690
  %11 = load ptr, ptr %event, align 4, !dbg !2690
  %probes.i = getelementptr inbounds %struct.trace_probe_event, ptr %11, i32 0, i32 4, !dbg !2692
  %12 = ptrtoint ptr %probes.i to i32, !dbg !2693
  call void @__asan_load4_noabort(i32 %12), !dbg !2693
  %.pn58 = load ptr, ptr %probes.i, align 4, !dbg !2693
  %13 = add i64 %gcov_ctr.i54, 2
  store i64 %13, ptr @__llvm_gcov_ctr.119, align 8
  %cmp.not61 = icmp eq ptr %.pn58, %probes.i, !dbg !2693
  br i1 %cmp.not61, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge, !dbg !2693

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !2693

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2693
  br label %for.end, !dbg !2693

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn62 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn58, %if.end.for.body_crit_edge ]
  %inode = getelementptr i8, ptr %.pn62, i32 -20, !dbg !2694
  %14 = ptrtoint ptr %inode to i32, !dbg !2694
  call void @__asan_load4_noabort(i32 %14), !dbg !2694
  %15 = load ptr, ptr %inode, align 4, !dbg !2694
  %tobool30.not = icmp eq ptr %15, null, !dbg !2695
  br i1 %tobool30.not, label %if.then31, label %if.end32, !dbg !2696

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2697
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 3), align 8, !dbg !2697
  %16 = add i64 %gcov_ctr43, 1, !dbg !2697
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 3), align 8, !dbg !2697
  br label %for.inc, !dbg !2697

if.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2698
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !2698
  %17 = add i64 %gcov_ctr42, 1, !dbg !2698
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !2698
  %18 = ptrtoint ptr %inode to i32, !dbg !2699
  call void @__asan_load4_noabort(i32 %18), !dbg !2699
  %19 = load ptr, ptr %inode, align 4, !dbg !2699
  %offset = getelementptr i8, ptr %.pn62, i32 -12, !dbg !2700
  %20 = ptrtoint ptr %offset to i32, !dbg !2700
  call void @__asan_load4_noabort(i32 %20), !dbg !2700
  %21 = load i32, ptr %offset, align 4, !dbg !2700
  %conv = zext i32 %21 to i64, !dbg !2701
  %consumer = getelementptr i8, ptr %.pn62, i32 -44, !dbg !2702
  tail call void @uprobe_unregister(ptr noundef %19, i64 noundef %conv, ptr noundef %consumer) #21, !dbg !2703
  %22 = ptrtoint ptr %inode to i32, !dbg !2704
  call void @__asan_store4_noabort(i32 %22), !dbg !2704
  store ptr null, ptr %inode, align 4, !dbg !2704
  br label %for.inc, !dbg !2705

for.inc:                                          ; preds = %if.end32, %if.then31
  %23 = ptrtoint ptr %.pn62 to i32, !dbg !2693
  call void @__asan_load4_noabort(i32 %23), !dbg !2693
  %.pn = load ptr, ptr %.pn62, align 4, !dbg !2693
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %24 = add i64 %gcov_ctr.i55, 1
  store i64 %24, ptr @__llvm_gcov_ctr.119, align 8
  %25 = ptrtoint ptr %event to i32, !dbg !2706
  call void @__asan_load4_noabort(i32 %25), !dbg !2706
  %26 = load ptr, ptr %event, align 4, !dbg !2706
  %probes.i57 = getelementptr inbounds %struct.trace_probe_event, ptr %26, i32 0, i32 4, !dbg !2708
  %cmp.not = icmp eq ptr %.pn, %probes.i57, !dbg !2693
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !2693, !llvm.loop !2709

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2693
  br label %for.body, !dbg !2693

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2693
  br label %for.end, !dbg !2693

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !2710
  %27 = add i64 %gcov_ctr41, 1, !dbg !2710
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !2710
  ret void, !dbg !2710
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uprobe_buffer_disable() unnamed_addr #0 align 64 !dbg !2711 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2712
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @event_mutex) #21, !dbg !2713
  br i1 %call, label %do.cond7, label %if.then, !dbg !2713, !prof !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2713
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.183, align 16, !dbg !2713
  %0 = add i64 %gcov_ctr, 1, !dbg !2713
  store i64 %0, ptr @__llvm_gcov_ctr.183, align 16, !dbg !2713
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/trace/trace_uprobe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 911, 0\0A.popsection", ""() #21, !dbg !2713, !srcloc !2714
  unreachable, !dbg !2713

do.cond7:                                         ; preds = %entry
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 1), align 8, !dbg !2713
  %1 = add i64 %gcov_ctr17, 1, !dbg !2713
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 1), align 8, !dbg !2713
  %2 = load i32, ptr @uprobe_buffer_refcnt, align 4, !dbg !2715
  %dec = add i32 %2, -1, !dbg !2715
  store i32 %dec, ptr @uprobe_buffer_refcnt, align 4, !dbg !2715
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec), !dbg !2716
  %cmp = icmp eq i32 %dec, 0, !dbg !2716
  br i1 %cmp, label %for.cond.preheader, label %do.cond7.if.end16_crit_edge, !dbg !2715

do.cond7.if.end16_crit_edge:                      ; preds = %do.cond7
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2715
  br label %if.end16, !dbg !2715

for.cond.preheader:                               ; preds = %do.cond7
  %call1022 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27, !dbg !2717
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !2717
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2717
  call void @__sanitizer_cov_trace_cmp4(i32 %call1022, i32 %3), !dbg !2717
  %cmp1123 = icmp ult i32 %call1022, %3, !dbg !2717
  br i1 %cmp1123, label %for.cond.preheader.do.body12_crit_edge, label %for.cond.preheader.for.end_crit_edge, !dbg !2717

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2717
  br label %for.end, !dbg !2717

for.cond.preheader.do.body12_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body12, !dbg !2717

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %for.cond.preheader.do.body12_crit_edge
  %call1024 = phi i32 [ %call10, %do.body12.do.body12_crit_edge ], [ %call1022, %for.cond.preheader.do.body12_crit_edge ]
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 2), align 16, !dbg !2718
  %4 = add i64 %gcov_ctr18, 1, !dbg !2718
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 2), align 16, !dbg !2718
  %5 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !2718
  %6 = ptrtoint ptr %5 to i32, !dbg !2718
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1024, !dbg !2718
  %7 = ptrtoint ptr %arrayidx to i32, !dbg !2718
  call void @__asan_load4_noabort(i32 %7), !dbg !2718
  %8 = load i32, ptr %arrayidx, align 4, !dbg !2718
  %add = add i32 %8, %6, !dbg !2718
  %9 = inttoptr i32 %add to ptr, !dbg !2718
  %buf = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %9, i32 0, i32 1, !dbg !2718
  %10 = ptrtoint ptr %buf to i32, !dbg !2718
  call void @__asan_load4_noabort(i32 %10), !dbg !2718
  %11 = load ptr, ptr %buf, align 4, !dbg !2718
  %12 = ptrtoint ptr %11 to i32, !dbg !2718
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #21, !dbg !2718
  %call10 = tail call i32 @cpumask_next(i32 noundef %call1024, ptr noundef nonnull @__cpu_possible_mask) #27, !dbg !2717
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !2717
  %13 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2717
  %cmp11 = icmp ult i32 %call10, %13, !dbg !2717
  br i1 %cmp11, label %do.body12.do.body12_crit_edge, label %do.body12.for.end_crit_edge, !dbg !2717, !llvm.loop !2719

do.body12.for.end_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2717
  br label %for.end, !dbg !2717

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2717
  br label %do.body12, !dbg !2717

for.end:                                          ; preds = %do.body12.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 3), align 8, !dbg !2720
  %14 = add i64 %gcov_ctr19, 1, !dbg !2720
  store i64 %14, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 3), align 8, !dbg !2720
  %15 = load ptr, ptr @uprobe_cpu_buffer, align 4, !dbg !2720
  tail call void @free_percpu(ptr noundef %15) #21, !dbg !2721
  store ptr null, ptr @uprobe_cpu_buffer, align 4, !dbg !2722
  br label %if.end16, !dbg !2723

if.end16:                                         ; preds = %for.end, %do.cond7.if.end16_crit_edge
  ret void, !dbg !2724
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_register_refctr(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_register(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_unregister(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_apply(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_event_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @probes_write(ptr noundef %file, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 !dbg !2725 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2726
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.196, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.196, align 8
  %call = tail call i32 @trace_parse_run_command(ptr noundef %file, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @create_or_delete_trace_uprobe) #21, !dbg !2727
  ret i32 %call, !dbg !2728
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @probes_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 !dbg !2729 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2730
  %call = tail call i32 @security_locked_down(i32 noundef 22) #21, !dbg !2731
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !2732
  %tobool.not = icmp eq i32 %call, 0, !dbg !2732
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2732

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2733
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.197, align 16, !dbg !2733
  %0 = add i64 %gcov_ctr, 1, !dbg !2733
  store i64 %0, ptr @__llvm_gcov_ctr.197, align 16, !dbg !2733
  br label %cleanup, !dbg !2734

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8, !dbg !2735
  %1 = ptrtoint ptr %f_mode to i32, !dbg !2735
  call void @__asan_load4_noabort(i32 %1), !dbg !2735
  %2 = load i32, ptr %f_mode, align 8, !dbg !2735
  %and = and i32 %2, 2, !dbg !2736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !2736
  %tobool1.not = icmp eq i32 %and, 0, !dbg !2736
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true, !dbg !2737

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2737
  br label %if.end9, !dbg !2737

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 1), align 8, !dbg !2738
  %3 = add i64 %gcov_ctr11, 1, !dbg !2738
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 1), align 8, !dbg !2738
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7, !dbg !2739
  %4 = ptrtoint ptr %f_flags to i32, !dbg !2739
  call void @__asan_load4_noabort(i32 %4), !dbg !2739
  %5 = load i32, ptr %f_flags, align 4, !dbg !2739
  %and2 = and i32 %5, 512, !dbg !2740
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2), !dbg !2740
  %tobool3.not = icmp eq i32 %and2, 0, !dbg !2740
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then4, !dbg !2741

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2741
  br label %if.end9, !dbg !2741

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @dyn_events_release_all(ptr noundef nonnull @trace_uprobe_ops) #21, !dbg !2742
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !2743
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !2743
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !2743

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2744
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 3), align 8, !dbg !2744
  %6 = add i64 %gcov_ctr13, 1, !dbg !2744
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 3), align 8, !dbg !2744
  br label %cleanup, !dbg !2745

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2746
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 2), align 16, !dbg !2746
  %7 = add i64 %gcov_ctr12, 1, !dbg !2746
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 2), align 16, !dbg !2746
  br label %if.end9, !dbg !2746

if.end9:                                          ; preds = %if.end8, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 4), align 16, !dbg !2747
  %8 = add i64 %gcov_ctr14, 1, !dbg !2747
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 4), align 16, !dbg !2747
  %call10 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @probes_seq_op) #21, !dbg !2748
  br label %cleanup, !dbg !2749

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then7 ], [ %call10, %if.end9 ], !dbg !2750
  ret i32 %retval.0, !dbg !2751
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_parse_run_command(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_or_delete_trace_uprobe(ptr noundef %raw_command) #0 align 64 !dbg !2752 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2753
  %0 = ptrtoint ptr %raw_command to i32, !dbg !2754
  call void @__asan_load1_noabort(i32 %0), !dbg !2754
  %1 = load i8, ptr %raw_command, align 1, !dbg !2754
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %1), !dbg !2755
  %cmp = icmp eq i8 %1, 45, !dbg !2755
  br i1 %cmp, label %if.then, label %if.end, !dbg !2754

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2756
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.198, align 16, !dbg !2756
  %2 = add i64 %gcov_ctr, 1, !dbg !2756
  store i64 %2, ptr @__llvm_gcov_ctr.198, align 16, !dbg !2756
  %call = tail call i32 @dyn_event_release(ptr noundef %raw_command, ptr noundef nonnull @trace_uprobe_ops) #21, !dbg !2757
  br label %cleanup, !dbg !2758

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.92, align 8
  %call.i = tail call i32 @trace_probe_create(ptr noundef %raw_command, ptr noundef nonnull @__trace_uprobe_create) #21, !dbg !2759
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call.i), !dbg !2761
  %cmp3 = icmp eq i32 %call.i, -125, !dbg !2761
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !2762

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2762
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.198, i32 0, i32 1), align 8, !dbg !2762
  %4 = add i64 %gcov_ctr5, 1, !dbg !2762
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.198, i32 0, i32 1), align 8, !dbg !2762
  br label %cleanup, !dbg !2762

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2763
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.198, i32 0, i32 2), align 16, !dbg !2763
  %5 = add i64 %gcov_ctr6, 1, !dbg !2763
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.198, i32 0, i32 2), align 16, !dbg !2763
  br label %cleanup, !dbg !2762

cleanup:                                          ; preds = %cond.false, %cond.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %cond.true ], [ %call.i, %cond.false ], !dbg !2764
  ret i32 %retval.0, !dbg !2765
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_event_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_events_release_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dyn_event_seq_start(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dyn_event_seq_stop(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dyn_event_seq_next(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @probes_seq_show(ptr noundef %m, ptr nocapture noundef readonly %v) #0 align 64 !dbg !2766 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2767
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.88, align 8
  %ops.i = getelementptr inbounds %struct.dyn_event, ptr %v, i32 0, i32 1, !dbg !2768
  %1 = ptrtoint ptr %ops.i to i32, !dbg !2768
  call void @__asan_load4_noabort(i32 %1), !dbg !2768
  %2 = load ptr, ptr %ops.i, align 4, !dbg !2768
  %cmp.i = icmp eq ptr %2, @trace_uprobe_ops, !dbg !2770
  br i1 %cmp.i, label %if.end, label %if.then, !dbg !2771

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2772
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.199, align 8, !dbg !2772
  %3 = add i64 %gcov_ctr, 1, !dbg !2772
  store i64 %3, ptr @__llvm_gcov_ctr.199, align 8, !dbg !2772
  br label %cleanup, !dbg !2772

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2773
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.199, i32 0, i32 1), align 8, !dbg !2773
  %4 = add i64 %gcov_ctr2, 1, !dbg !2773
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.199, i32 0, i32 1), align 8, !dbg !2773
  %call1 = tail call i32 @trace_uprobe_show(ptr noundef %m, ptr noundef %v), !dbg !2774
  br label %cleanup, !dbg !2775

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0, !dbg !2776
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profile_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 !dbg !2777 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2778
  %call = tail call i32 @security_locked_down(i32 noundef 22) #21, !dbg !2779
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !2780
  %tobool.not = icmp eq i32 %call, 0, !dbg !2780
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2780

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2781
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.200, align 8, !dbg !2781
  %0 = add i64 %gcov_ctr, 1, !dbg !2781
  store i64 %0, ptr @__llvm_gcov_ctr.200, align 8, !dbg !2781
  br label %cleanup, !dbg !2782

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2783
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.200, i32 0, i32 1), align 8, !dbg !2783
  %1 = add i64 %gcov_ctr2, 1, !dbg !2783
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.200, i32 0, i32 1), align 8, !dbg !2783
  %call1 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @profile_seq_op) #21, !dbg !2784
  br label %cleanup, !dbg !2785

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ], !dbg !2786
  ret i32 %retval.0, !dbg !2787
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @probes_profile_seq_show(ptr noundef %m, ptr nocapture noundef readonly %v) #0 align 64 !dbg !2788 {
entry:
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2789
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.88, align 8
  %ops.i = getelementptr inbounds %struct.dyn_event, ptr %v, i32 0, i32 1, !dbg !2790
  %1 = ptrtoint ptr %ops.i to i32, !dbg !2790
  call void @__asan_load4_noabort(i32 %1), !dbg !2790
  %2 = load ptr, ptr %ops.i, align 4, !dbg !2790
  %cmp.i = icmp eq ptr %2, @trace_uprobe_ops, !dbg !2792
  br i1 %cmp.i, label %if.end, label %if.then, !dbg !2793

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2794
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.201, align 8, !dbg !2794
  %3 = add i64 %gcov_ctr, 1, !dbg !2794
  store i64 %3, ptr @__llvm_gcov_ctr.201, align 8, !dbg !2794
  br label %cleanup, !dbg !2794

if.end:                                           ; preds = %entry
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.201, i32 0, i32 1), align 8, !dbg !2795
  %4 = add i64 %gcov_ctr4, 1, !dbg !2795
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.201, i32 0, i32 1), align 8, !dbg !2795
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %5 = add i64 %gcov_ctr.i8, 1
  store i64 %5, ptr @__llvm_gcov_ctr.89, align 8
  %filename = getelementptr inbounds %struct.trace_uprobe, ptr %v, i32 0, i32 4, !dbg !2796
  %6 = ptrtoint ptr %filename to i32, !dbg !2796
  call void @__asan_load4_noabort(i32 %6), !dbg !2796
  %7 = load ptr, ptr %filename, align 4, !dbg !2796
  %gcov_ctr.i9 = load i64, ptr @__llvm_gcov_ctr.90, align 8
  %8 = add i64 %gcov_ctr.i9, 1
  store i64 %8, ptr @__llvm_gcov_ctr.90, align 8
  %event.i = getelementptr inbounds %struct.trace_uprobe, ptr %v, i32 0, i32 8, i32 1, !dbg !2797
  %9 = ptrtoint ptr %event.i to i32, !dbg !2797
  call void @__asan_load4_noabort(i32 %9), !dbg !2797
  %10 = load ptr, ptr %event.i, align 4, !dbg !2797
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 8, !dbg !2799
  %11 = ptrtoint ptr %flags.i.i to i32, !dbg !2799
  call void @__asan_load4_noabort(i32 %11), !dbg !2799
  %12 = load i32, ptr %flags.i.i, align 4, !dbg !2799
  %and.i.i = and i32 %12, 16, !dbg !2801
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !2801
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !2801
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !2802

if.then.i.i:                                      ; preds = %if.end
  %13 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 2, !dbg !2803
  %14 = ptrtoint ptr %13 to i32, !dbg !2803
  call void @__asan_load4_noabort(i32 %14), !dbg !2803
  %15 = load ptr, ptr %13, align 4, !dbg !2803
  %tobool1.not.i.i = icmp eq ptr %15, null, !dbg !2804
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !2804

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2805
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !2805
  %16 = add i64 %gcov_ctr2.i.i, 1, !dbg !2805
  store i64 %16, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !2805
  %17 = ptrtoint ptr %15 to i32, !dbg !2806
  call void @__asan_load4_noabort(i32 %17), !dbg !2806
  %18 = load ptr, ptr %15, align 4, !dbg !2806
  br label %trace_probe_name.exit, !dbg !2804

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2804
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !2804
  %19 = add i64 %gcov_ctr.i.i, 1, !dbg !2804
  store i64 %19, ptr @__llvm_gcov_ctr.42, align 16, !dbg !2804
  br label %trace_probe_name.exit, !dbg !2804

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20, !dbg !2807
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !2807
  %20 = add i64 %gcov_ctr3.i.i, 1, !dbg !2807
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !2807
  %21 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 2, !dbg !2808
  %22 = ptrtoint ptr %21 to i32, !dbg !2808
  call void @__asan_load4_noabort(i32 %22), !dbg !2808
  %23 = load ptr, ptr %21, align 4, !dbg !2808
  br label %trace_probe_name.exit, !dbg !2809

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %23, %if.else.i.i ], [ %18, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !2810
  %nhit = getelementptr inbounds %struct.trace_uprobe, ptr %v, i32 0, i32 7, !dbg !2811
  %24 = ptrtoint ptr %nhit to i32, !dbg !2811
  call void @__asan_load4_noabort(i32 %24), !dbg !2811
  %25 = load i32, ptr %nhit, align 4, !dbg !2811
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, ptr noundef %7, ptr noundef %retval.0.i.i, i32 noundef %25) #21, !dbg !2812
  br label %cleanup, !dbg !2813

cleanup:                                          ; preds = %trace_probe_name.exit, %if.then
  ret i32 0, !dbg !2814
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #16 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 2142383514) #21
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #21
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #21
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 162
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #20
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @llvm_gcda_summary_info() #21
  tail call void @llvm_gcda_end_file() #21
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #17 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.41, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.42, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.43, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.44, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.46, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.49, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.50, align 8
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  store i64 0, ptr @__llvm_gcov_ctr.52, align 8
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  store i64 0, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.55, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.56, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.57, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.58, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.59, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.60, align 8
  store i64 0, ptr @__llvm_gcov_ctr.61, align 8
  store i64 0, ptr @__llvm_gcov_ctr.62, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @__llvm_gcov_ctr.63, i8 0, i64 160, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.64, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.65, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.66, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.67, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.68, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.69, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.70, align 8
  store i64 0, ptr @__llvm_gcov_ctr.71, align 8
  store i64 0, ptr @__llvm_gcov_ctr.72, align 8
  store i64 0, ptr @__llvm_gcov_ctr.73, align 8
  store i64 0, ptr @__llvm_gcov_ctr.74, align 8
  store i64 0, ptr @__llvm_gcov_ctr.75, align 8
  store i64 0, ptr @__llvm_gcov_ctr.76, align 8
  store i64 0, ptr @__llvm_gcov_ctr.77, align 8
  store i64 0, ptr @__llvm_gcov_ctr.78, align 8
  store i64 0, ptr @__llvm_gcov_ctr.79, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.80, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.81, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.82, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.83, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.84, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.85, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.86, align 8
  store i64 0, ptr @__llvm_gcov_ctr.87, align 8
  store i64 0, ptr @__llvm_gcov_ctr.88, align 8
  store i64 0, ptr @__llvm_gcov_ctr.89, align 8
  store i64 0, ptr @__llvm_gcov_ctr.90, align 8
  store i64 0, ptr @__llvm_gcov_ctr.91, align 8
  store i64 0, ptr @__llvm_gcov_ctr.92, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.93, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.94, align 8
  store i64 0, ptr @__llvm_gcov_ctr.95, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.96, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) @__llvm_gcov_ctr.97, i8 0, i64 264, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.98, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.99, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.100, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.101, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.102, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.103, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.104, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.105, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.106, align 8
  store i64 0, ptr @__llvm_gcov_ctr.107, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.108, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.109, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.110, align 8
  store i64 0, ptr @__llvm_gcov_ctr.111, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.112, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.113, align 8
  store i64 0, ptr @__llvm_gcov_ctr.114, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.115, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.116, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.117, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.118, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.119, align 8
  store i64 0, ptr @__llvm_gcov_ctr.120, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.121, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.122, align 8
  store i64 0, ptr @__llvm_gcov_ctr.123, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.124, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.125, align 8
  store i64 0, ptr @__llvm_gcov_ctr.126, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.127, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.128, align 8
  store i64 0, ptr @__llvm_gcov_ctr.129, align 8
  store i64 0, ptr @__llvm_gcov_ctr.130, align 8
  store i64 0, ptr @__llvm_gcov_ctr.131, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.132, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.133, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.134, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.135, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.136, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.137, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.138, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.139, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.140, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.141, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.142, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.143, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.144, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.145, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.146, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.147, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.148, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.149, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.150, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.151, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.152, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.153, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.154, align 8
  store i64 0, ptr @__llvm_gcov_ctr.155, align 8
  store i64 0, ptr @__llvm_gcov_ctr.156, align 8
  store i64 0, ptr @__llvm_gcov_ctr.157, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.158, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.159, align 8
  store i64 0, ptr @__llvm_gcov_ctr.160, align 8
  store i64 0, ptr @__llvm_gcov_ctr.161, align 8
  store i64 0, ptr @__llvm_gcov_ctr.162, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.163, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.164, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.165, align 8
  store i64 0, ptr @__llvm_gcov_ctr.166, align 8
  store i64 0, ptr @__llvm_gcov_ctr.167, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.168, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.169, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.170, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.171, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.172, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.173, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) @__llvm_gcov_ctr.174, i8 0, i64 120, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.175, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.176, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.177, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.178, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.179, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.180, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.181, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.182, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.183, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.184, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.185, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.186, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.187, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.188, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.189, align 8
  store i64 0, ptr @__llvm_gcov_ctr.190, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.191, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.192, align 8
  store i64 0, ptr @__llvm_gcov_ctr.193, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.194, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.195, align 8
  store i64 0, ptr @__llvm_gcov_ctr.196, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.197, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.198, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.199, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.200, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.201, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #16 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #21
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { noinline nounwind uwtable(sync) }
attributes #17 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #18 = { argmemonly nofree nounwind willreturn writeonly }
attributes #19 = { nounwind uwtable(sync) }
attributes #20 = { nomerge }
attributes #21 = { nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nobuiltin }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !69, !70, !72, !74, !75, !77, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.named.register.sp = !{!131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.gcov = !{!140}
!llvm.ident = !{!141}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_uprobe.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @_kbl_addr_process_fetch_insn, !3, !"_kbl_addr_process_fetch_insn", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_uprobe.c", i32 256, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_uprobe.c", i32 1599, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_uprobe.c", i32 1599, i32 47}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_uprobe.c", i32 1603, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @create_local_trace_uprobe._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @create_local_trace_uprobe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_trace_uprobe__295_1663_init_uprobe_trace5, !15, !"__initcall__kmod_trace_uprobe__295_1663_init_uprobe_trace5", i1 false, i1 false}
!15 = !{!"../kernel/trace/trace_uprobe.c", i32 1663, i32 1}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!23 = !{ptr @trace_uprobe_ops, !24, !"trace_uprobe_ops", i1 false, i1 false}
!24 = !{!"../kernel/trace/trace_uprobe.c", i32 45, i32 36}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/trace/trace_uprobe.c", i32 582, i32 23}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/trace_uprobe.c", i32 628, i32 20}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/trace/trace_uprobe.c", i32 662, i32 23}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/trace/trace_uprobe.c", i32 666, i32 37}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/trace/trace_uprobe.c", i32 678, i32 3}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/trace/trace_uprobe.c", i32 521, i32 4}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @register_trace_uprobe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @register_trace_uprobe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_uprobe.c", i32 482, i32 4}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @validate_ref_ctr_offset._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @validate_ref_ctr_offset._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/trace/trace_dynevent.h", i32 82, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/trace/trace_uprobe.c", i32 748, i32 16}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/trace/trace_uprobe.c", i32 753, i32 17}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_uprobe.c", i32 756, i32 17}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/trace/trace_uprobe.c", i32 296, i32 30}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/trace/trace_uprobe.c", i32 299, i32 30}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../kernel/trace/trace_uprobe.c", i32 326, i32 6}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../kernel/trace/trace_uprobe.c", i32 1488, i32 6}
!61 = !{ptr @uprobe_cpu_buffer, !62, !"uprobe_cpu_buffer", i1 false, i1 false}
!62 = !{!"../kernel/trace/trace_uprobe.c", i32 857, i32 43}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../kernel/trace/trace_uprobe.c", i32 994, i32 2}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../kernel/trace/trace_uprobe.c", i32 958, i32 6}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../kernel/trace/trace_uprobe.c", i32 1360, i32 6}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../kernel/trace/trace_uprobe.c", i32 1523, i32 6}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../kernel/trace/trace_uprobe.c", i32 1008, i32 2}
!82 = !{ptr @init_trace_uprobe_filter.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../kernel/trace/trace_uprobe.c", i32 260, i32 2}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @uprobe_funcs, !86, !"uprobe_funcs", i1 false, i1 false}
!86 = !{!"../kernel/trace/trace_uprobe.c", i32 1543, i32 37}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/trace/trace_uprobe.c", i32 1029, i32 23}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/trace/trace_uprobe.c", i32 1034, i32 23}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../kernel/trace/trace_probe_tmpl.h", i32 226, i32 23}
!93 = !{ptr @uprobe_fields_array, !94, !"uprobe_fields_array", i1 false, i1 false}
!94 = !{!"../kernel/trace/trace_uprobe.c", i32 1547, i32 34}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/trace/trace_uprobe.c", i32 1184, i32 3}
!97 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/trace/trace_uprobe.c", i32 1185, i32 3}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/trace/trace_uprobe.c", i32 1188, i32 3}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../kernel/trace/trace_uprobe.c", i32 1097, i32 6}
!104 = !{ptr @uprobe_buffer_refcnt, !105, !"uprobe_buffer_refcnt", i1 false, i1 false}
!105 = !{!"../kernel/trace/trace_uprobe.c", i32 858, i32 12}
!106 = !{ptr @uprobe_buffer_init.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../kernel/trace/trace_uprobe.c", i32 876, i32 3}
!108 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../kernel/trace/trace_uprobe.c", i32 1154, i32 6}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../kernel/trace/trace_uprobe.c", i32 1300, i32 6}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../kernel/trace/trace_uprobe.c", i32 1276, i32 6}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/trace/trace_uprobe.c", i32 1655, i32 20}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../kernel/trace/trace_uprobe.c", i32 1658, i32 20}
!121 = !{ptr @uprobe_events_ops, !122, !"uprobe_events_ops", i1 false, i1 false}
!122 = !{!"../kernel/trace/trace_uprobe.c", i32 803, i32 37}
!123 = !{ptr @probes_seq_op, !124, !"probes_seq_op", i1 false, i1 false}
!124 = !{!"../kernel/trace/trace_uprobe.c", i32 772, i32 36}
!125 = !{ptr @uprobe_profile_ops, !126, !"uprobe_profile_ops", i1 false, i1 false}
!126 = !{!"../kernel/trace/trace_uprobe.c", i32 845, i32 37}
!127 = !{ptr @profile_seq_op, !128, !"profile_seq_op", i1 false, i1 false}
!128 = !{!"../kernel/trace/trace_uprobe.c", i32 827, i32 36}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../kernel/trace/trace_uprobe.c", i32 822, i32 16}
!131 = !{!"sp"}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_uprobe.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_uprobe.gcda", !0}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = distinct !DISubprogram(name: "process_fetch_insn", scope: !1, file: !1, line: 217, type: !143, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!143 = !DISubroutineType(types: !144)
!144 = !{}
!145 = !DILocation(line: 219, scope: !142)
!146 = !DILocation(line: 224, column: 16, scope: !142)
!147 = !DILocation(line: 224, column: 2, scope: !142)
!148 = !DILocation(line: 226, column: 27, scope: !142)
!149 = !DILocation(line: 226, column: 39, scope: !142)
!150 = !DILocation(line: 146, column: 6, scope: !151, inlinedAt: !153)
!151 = distinct !DISubprogram(name: "regs_get_register", scope: !152, file: !152, line: 143, type: !143, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!152 = !DIFile(filename: "../arch/arm/include/asm/ptrace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!153 = distinct !DILocation(line: 226, column: 9, scope: !142)
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !DILocation(line: 147, column: 3, scope: !151, inlinedAt: !153)
!156 = !DILocation(line: 148, column: 43, scope: !151, inlinedAt: !153)
!157 = !DILocation(line: 148, column: 28, scope: !151, inlinedAt: !153)
!158 = !DILocation(line: 148, column: 48, scope: !151, inlinedAt: !153)
!159 = !DILocation(line: 148, column: 10, scope: !151, inlinedAt: !153)
!160 = !DILocation(line: 148, column: 9, scope: !151, inlinedAt: !153)
!161 = !DILocation(line: 148, column: 2, scope: !151, inlinedAt: !153)
!162 = !DILocation(line: 229, column: 28, scope: !142)
!163 = !DILocation(line: 229, column: 40, scope: !142)
!164 = !DILocation(line: 113, column: 2, scope: !165, inlinedAt: !166)
!165 = distinct !DISubprogram(name: "get_user_stack_nth", scope: !1, file: !1, line: 111, type: !143, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!166 = distinct !DILocation(line: 229, column: 9, scope: !142)
!167 = !DILocation(line: 113, column: 16, scope: !165, inlinedAt: !166)
!168 = !{!"auto-init"}
!169 = !DILocation(line: 159, column: 9, scope: !170, inlinedAt: !171)
!170 = distinct !DISubprogram(name: "user_stack_pointer", scope: !152, file: !152, line: 157, type: !143, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!171 = distinct !DILocation(line: 114, column: 23, scope: !165, inlinedAt: !166)
!172 = !DILocation(line: 107, column: 19, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "adjust_stack_addr", scope: !1, file: !1, line: 105, type: !143, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!174 = distinct !DILocation(line: 116, column: 9, scope: !165, inlinedAt: !166)
!175 = !DILocation(line: 107, column: 14, scope: !173, inlinedAt: !174)
!176 = !DILocation(line: 118, column: 27, scope: !165, inlinedAt: !166)
!177 = !DILocation(line: 221, column: 6, scope: !178, inlinedAt: !180)
!178 = distinct !DISubprogram(name: "check_copy_size", scope: !179, file: !179, line: 218, type: !143, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!179 = !DIFile(filename: "../include/linux/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!180 = distinct !DILocation(line: 191, column: 6, scope: !181, inlinedAt: !183)
!181 = distinct !DISubprogram(name: "copy_from_user", scope: !182, file: !182, line: 189, type: !143, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!182 = !DIFile(filename: "../include/linux/uaccess.h", directory: "/llk/linux-5.17/build_arm_allyes")
!183 = distinct !DILocation(line: 118, column: 6, scope: !165, inlinedAt: !166)
!184 = !DILocation(line: 232, column: 20, scope: !178, inlinedAt: !180)
!185 = !DILocation(line: 192, column: 23, scope: !181, inlinedAt: !183)
!186 = !DILocation(line: 156, column: 2, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "_copy_from_user", scope: !182, file: !182, line: 153, type: !143, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!188 = distinct !DILocation(line: 192, column: 7, scope: !181, inlinedAt: !183)
!189 = !DILocation(line: 157, column: 7, scope: !187, inlinedAt: !188)
!190 = !DILocation(line: 157, column: 30, scope: !187, inlinedAt: !188)
!191 = !DILocation(line: 157, column: 33, scope: !187, inlinedAt: !188)
!192 = !{i64 2153368558, i64 2153368583}
!193 = !DILocation(line: 157, column: 6, scope: !187, inlinedAt: !188)
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !DILocation(line: 158, column: 29, scope: !187, inlinedAt: !188)
!196 = !DILocation(line: 135, column: 2, scope: !197, inlinedAt: !199)
!197 = distinct !DISubprogram(name: "instrument_copy_from_user", scope: !198, file: !198, line: 133, type: !143, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!198 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!199 = distinct !DILocation(line: 158, column: 3, scope: !187, inlinedAt: !188)
!200 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !203)
!201 = distinct !DISubprogram(name: "current_thread_info", scope: !202, file: !202, line: 101, type: !143, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!202 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!203 = distinct !DILocation(line: 92, column: 10, scope: !204, inlinedAt: !206)
!204 = distinct !DISubprogram(name: "get_domain", scope: !205, file: !205, line: 85, type: !143, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!205 = !DIFile(filename: "../arch/arm/include/asm/domain.h", directory: "/llk/linux-5.17/build_arm_allyes")
!206 = distinct !DILocation(line: 29, column: 28, scope: !207, inlinedAt: !209)
!207 = distinct !DISubprogram(name: "uaccess_save_and_enable", scope: !208, file: !208, line: 26, type: !143, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!208 = !DIFile(filename: "../arch/arm/include/asm/uaccess.h", directory: "/llk/linux-5.17/build_arm_allyes")
!209 = distinct !DILocation(line: 537, column: 15, scope: !210, inlinedAt: !211)
!210 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !208, file: !208, line: 533, type: !143, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!211 = distinct !DILocation(line: 159, column: 9, scope: !187, inlinedAt: !188)
!212 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !203)
!213 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !203)
!214 = !DILocation(line: 92, column: 33, scope: !204, inlinedAt: !206)
!215 = !DILocation(line: 89, column: 2, scope: !204, inlinedAt: !206)
!216 = !{i64 5864113}
!217 = !DILocation(line: 32, column: 25, scope: !207, inlinedAt: !209)
!218 = !DILocation(line: 32, column: 54, scope: !207, inlinedAt: !209)
!219 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !221)
!220 = distinct !DISubprogram(name: "set_domain", scope: !205, file: !205, line: 97, type: !143, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!221 = distinct !DILocation(line: 32, column: 2, scope: !207, inlinedAt: !209)
!222 = !{i64 5864310}
!223 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !221)
!224 = !{i64 2153349543}
!225 = !DILocation(line: 538, column: 6, scope: !210, inlinedAt: !211)
!226 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !227)
!227 = distinct !DILocation(line: 45, column: 2, scope: !228, inlinedAt: !229)
!228 = distinct !DISubprogram(name: "uaccess_restore", scope: !208, file: !208, line: 41, type: !143, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!229 = distinct !DILocation(line: 539, column: 2, scope: !210, inlinedAt: !211)
!230 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !227)
!231 = !DILocation(line: 161, column: 6, scope: !187, inlinedAt: !188)
!232 = !DILocation(line: 162, column: 10, scope: !187, inlinedAt: !188)
!233 = !DILocation(line: 162, column: 18, scope: !187, inlinedAt: !188)
!234 = !DILocation(line: 162, column: 13, scope: !187, inlinedAt: !188)
!235 = !DILocation(line: 162, column: 3, scope: !187, inlinedAt: !188)
!236 = !DILocation(line: 119, column: 3, scope: !165, inlinedAt: !166)
!237 = !DILocation(line: 121, column: 9, scope: !165, inlinedAt: !166)
!238 = !DILocation(line: 121, column: 2, scope: !165, inlinedAt: !166)
!239 = !DILocation(line: 0, scope: !165, inlinedAt: !166)
!240 = !DILocation(line: 122, column: 1, scope: !165, inlinedAt: !166)
!241 = !DILocation(line: 230, column: 3, scope: !142)
!242 = !DILocation(line: 232, column: 28, scope: !142)
!243 = !DILocation(line: 159, column: 9, scope: !170, inlinedAt: !244)
!244 = distinct !DILocation(line: 232, column: 9, scope: !142)
!245 = !DILocation(line: 233, column: 3, scope: !142)
!246 = !DILocation(line: 235, column: 27, scope: !142)
!247 = !DILocation(line: 88, column: 9, scope: !248, inlinedAt: !249)
!248 = distinct !DISubprogram(name: "regs_return_value", scope: !152, file: !152, line: 86, type: !143, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!249 = distinct !DILocation(line: 235, column: 9, scope: !142)
!250 = !DILocation(line: 236, column: 3, scope: !142)
!251 = !DILocation(line: 238, column: 9, scope: !142)
!252 = !DILocation(line: 238, column: 15, scope: !142)
!253 = !DILocation(line: 239, column: 3, scope: !142)
!254 = !DILocation(line: 241, column: 7, scope: !142)
!255 = !DILocation(line: 242, column: 3, scope: !142)
!256 = !DILocation(line: 244, column: 24, scope: !142)
!257 = !DILocation(line: 244, column: 30, scope: !142)
!258 = !DILocation(line: 244, column: 9, scope: !142)
!259 = !DILocation(line: 245, column: 3, scope: !142)
!260 = !DILocation(line: 247, column: 30, scope: !142)
!261 = !DILocation(line: 247, column: 36, scope: !142)
!262 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !263)
!263 = distinct !DILocation(line: 209, column: 17, scope: !264, inlinedAt: !265)
!264 = distinct !DISubprogram(name: "translate_user_vaddr", scope: !1, file: !1, line: 204, type: !143, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!265 = distinct !DILocation(line: 247, column: 9, scope: !142)
!266 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !263)
!267 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !263)
!268 = !DILocation(line: 209, column: 17, scope: !264, inlinedAt: !265)
!269 = !DILocation(line: 209, column: 26, scope: !264, inlinedAt: !265)
!270 = !DILocation(line: 209, column: 33, scope: !264, inlinedAt: !265)
!271 = !DILocation(line: 209, column: 8, scope: !264, inlinedAt: !265)
!272 = !DILocation(line: 211, column: 19, scope: !264, inlinedAt: !265)
!273 = !DILocation(line: 211, column: 34, scope: !264, inlinedAt: !265)
!274 = !DILocation(line: 211, column: 38, scope: !264, inlinedAt: !265)
!275 = !DILocation(line: 211, column: 27, scope: !264, inlinedAt: !265)
!276 = !DILocation(line: 212, column: 19, scope: !264, inlinedAt: !265)
!277 = !DILocation(line: 248, column: 3, scope: !142)
!278 = !DILocation(line: 250, column: 3, scope: !142)
!279 = !DILocation(line: 0, scope: !142)
!280 = !DILocation(line: 252, column: 6, scope: !142)
!281 = !DILocation(line: 78, column: 2, scope: !282, inlinedAt: !284)
!282 = distinct !DISubprogram(name: "process_fetch_insn_bottom", scope: !283, file: !283, line: 72, type: !143, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!283 = !DIFile(filename: "../kernel/trace/trace_probe_tmpl.h", directory: "/llk/linux-5.17/build_arm_allyes")
!284 = distinct !DILocation(line: 254, column: 9, scope: !142)
!285 = !DILocation(line: 0, scope: !282, inlinedAt: !284)
!286 = !DILocation(line: 77, column: 6, scope: !282, inlinedAt: !284)
!287 = !DILocation(line: 78, column: 16, scope: !282, inlinedAt: !284)
!288 = !DILocation(line: 82, column: 2, scope: !282, inlinedAt: !284)
!289 = !DILocation(line: 83, column: 13, scope: !282, inlinedAt: !284)
!290 = !DILocation(line: 83, column: 7, scope: !282, inlinedAt: !284)
!291 = !DILocation(line: 84, column: 11, scope: !282, inlinedAt: !284)
!292 = !DILocation(line: 85, column: 31, scope: !282, inlinedAt: !284)
!293 = !DILocation(line: 85, column: 51, scope: !282, inlinedAt: !284)
!294 = !DILocation(line: 85, column: 43, scope: !282, inlinedAt: !284)
!295 = !DILocation(line: 221, column: 6, scope: !178, inlinedAt: !296)
!296 = distinct !DILocation(line: 191, column: 6, scope: !181, inlinedAt: !297)
!297 = distinct !DILocation(line: 132, column: 9, scope: !298, inlinedAt: !299)
!298 = distinct !DISubprogram(name: "probe_mem_read", scope: !1, file: !1, line: 128, type: !143, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!299 = distinct !DILocation(line: 85, column: 10, scope: !282, inlinedAt: !284)
!300 = !DILocation(line: 232, column: 20, scope: !178, inlinedAt: !296)
!301 = !DILocation(line: 192, column: 23, scope: !181, inlinedAt: !297)
!302 = !DILocation(line: 156, column: 2, scope: !187, inlinedAt: !303)
!303 = distinct !DILocation(line: 192, column: 7, scope: !181, inlinedAt: !297)
!304 = !DILocation(line: 157, column: 7, scope: !187, inlinedAt: !303)
!305 = !DILocation(line: 157, column: 30, scope: !187, inlinedAt: !303)
!306 = !DILocation(line: 157, column: 33, scope: !187, inlinedAt: !303)
!307 = !DILocation(line: 157, column: 6, scope: !187, inlinedAt: !303)
!308 = !DILocation(line: 158, column: 29, scope: !187, inlinedAt: !303)
!309 = !DILocation(line: 135, column: 2, scope: !197, inlinedAt: !310)
!310 = distinct !DILocation(line: 158, column: 3, scope: !187, inlinedAt: !303)
!311 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !312)
!312 = distinct !DILocation(line: 92, column: 10, scope: !204, inlinedAt: !313)
!313 = distinct !DILocation(line: 29, column: 28, scope: !207, inlinedAt: !314)
!314 = distinct !DILocation(line: 537, column: 15, scope: !210, inlinedAt: !315)
!315 = distinct !DILocation(line: 159, column: 9, scope: !187, inlinedAt: !303)
!316 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !312)
!317 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !312)
!318 = !DILocation(line: 92, column: 33, scope: !204, inlinedAt: !313)
!319 = !DILocation(line: 89, column: 2, scope: !204, inlinedAt: !313)
!320 = !DILocation(line: 32, column: 25, scope: !207, inlinedAt: !314)
!321 = !DILocation(line: 32, column: 54, scope: !207, inlinedAt: !314)
!322 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !323)
!323 = distinct !DILocation(line: 32, column: 2, scope: !207, inlinedAt: !314)
!324 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !323)
!325 = !DILocation(line: 538, column: 6, scope: !210, inlinedAt: !315)
!326 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !327)
!327 = distinct !DILocation(line: 45, column: 2, scope: !228, inlinedAt: !328)
!328 = distinct !DILocation(line: 539, column: 2, scope: !210, inlinedAt: !315)
!329 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !327)
!330 = !DILocation(line: 161, column: 6, scope: !187, inlinedAt: !303)
!331 = !DILocation(line: 162, column: 10, scope: !187, inlinedAt: !303)
!332 = !DILocation(line: 162, column: 18, scope: !187, inlinedAt: !303)
!333 = !DILocation(line: 162, column: 13, scope: !187, inlinedAt: !303)
!334 = !DILocation(line: 162, column: 3, scope: !187, inlinedAt: !303)
!335 = !DILocation(line: 88, column: 11, scope: !282, inlinedAt: !284)
!336 = !DILocation(line: 90, column: 6, scope: !282, inlinedAt: !284)
!337 = !DILocation(line: 90, column: 26, scope: !282, inlinedAt: !284)
!338 = !DILocation(line: 90, column: 18, scope: !282, inlinedAt: !284)
!339 = !DILocation(line: 221, column: 6, scope: !178, inlinedAt: !340)
!340 = distinct !DILocation(line: 191, column: 6, scope: !181, inlinedAt: !341)
!341 = distinct !DILocation(line: 132, column: 9, scope: !298, inlinedAt: !342)
!342 = distinct !DILocation(line: 138, column: 9, scope: !343, inlinedAt: !344)
!343 = distinct !DISubprogram(name: "probe_mem_read_user", scope: !1, file: !1, line: 136, type: !143, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!344 = distinct !DILocation(line: 89, column: 10, scope: !282, inlinedAt: !284)
!345 = !DILocation(line: 232, column: 20, scope: !178, inlinedAt: !340)
!346 = !DILocation(line: 192, column: 23, scope: !181, inlinedAt: !341)
!347 = !DILocation(line: 156, column: 2, scope: !187, inlinedAt: !348)
!348 = distinct !DILocation(line: 192, column: 7, scope: !181, inlinedAt: !341)
!349 = !DILocation(line: 157, column: 7, scope: !187, inlinedAt: !348)
!350 = !DILocation(line: 157, column: 30, scope: !187, inlinedAt: !348)
!351 = !DILocation(line: 157, column: 33, scope: !187, inlinedAt: !348)
!352 = !DILocation(line: 157, column: 6, scope: !187, inlinedAt: !348)
!353 = !DILocation(line: 158, column: 29, scope: !187, inlinedAt: !348)
!354 = !DILocation(line: 135, column: 2, scope: !197, inlinedAt: !355)
!355 = distinct !DILocation(line: 158, column: 3, scope: !187, inlinedAt: !348)
!356 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !357)
!357 = distinct !DILocation(line: 92, column: 10, scope: !204, inlinedAt: !358)
!358 = distinct !DILocation(line: 29, column: 28, scope: !207, inlinedAt: !359)
!359 = distinct !DILocation(line: 537, column: 15, scope: !210, inlinedAt: !360)
!360 = distinct !DILocation(line: 159, column: 9, scope: !187, inlinedAt: !348)
!361 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !357)
!362 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !357)
!363 = !DILocation(line: 92, column: 33, scope: !204, inlinedAt: !358)
!364 = !DILocation(line: 89, column: 2, scope: !204, inlinedAt: !358)
!365 = !DILocation(line: 32, column: 25, scope: !207, inlinedAt: !359)
!366 = !DILocation(line: 32, column: 54, scope: !207, inlinedAt: !359)
!367 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !368)
!368 = distinct !DILocation(line: 32, column: 2, scope: !207, inlinedAt: !359)
!369 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !368)
!370 = !DILocation(line: 538, column: 6, scope: !210, inlinedAt: !360)
!371 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !372)
!372 = distinct !DILocation(line: 45, column: 2, scope: !228, inlinedAt: !373)
!373 = distinct !DILocation(line: 539, column: 2, scope: !210, inlinedAt: !360)
!374 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !372)
!375 = !DILocation(line: 161, column: 6, scope: !187, inlinedAt: !348)
!376 = !DILocation(line: 162, column: 10, scope: !187, inlinedAt: !348)
!377 = !DILocation(line: 162, column: 18, scope: !187, inlinedAt: !348)
!378 = !DILocation(line: 162, column: 13, scope: !187, inlinedAt: !348)
!379 = !DILocation(line: 162, column: 3, scope: !187, inlinedAt: !348)
!380 = !DILocation(line: 93, column: 7, scope: !282, inlinedAt: !284)
!381 = !DILocation(line: 92, column: 4, scope: !282, inlinedAt: !284)
!382 = !DILocation(line: 98, column: 2, scope: !282, inlinedAt: !284)
!383 = !DILocation(line: 94, column: 11, scope: !282, inlinedAt: !284)
!384 = !DILocation(line: 94, column: 4, scope: !282, inlinedAt: !284)
!385 = !DILocation(line: 95, column: 7, scope: !282, inlinedAt: !284)
!386 = !DILocation(line: 96, column: 2, scope: !282, inlinedAt: !284)
!387 = distinct !{!387, !288, !388}
!388 = !DILocation(line: 96, column: 12, scope: !282, inlinedAt: !284)
!389 = !DILocation(line: 101, column: 6, scope: !282, inlinedAt: !284)
!390 = !DILocation(line: 102, column: 7, scope: !282, inlinedAt: !284)
!391 = !DILocation(line: 103, column: 29, scope: !282, inlinedAt: !284)
!392 = !DILocation(line: 103, column: 41, scope: !282, inlinedAt: !284)
!393 = !DILocation(line: 103, column: 33, scope: !282, inlinedAt: !284)
!394 = !DILocation(line: 190, column: 11, scope: !395, inlinedAt: !396)
!395 = distinct !DISubprogram(name: "fetch_store_strlen", scope: !1, file: !1, line: 185, type: !143, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!396 = distinct !DILocation(line: 103, column: 10, scope: !282, inlinedAt: !284)
!397 = !DILocation(line: 190, column: 6, scope: !395, inlinedAt: !396)
!398 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !399)
!399 = distinct !DILocation(line: 191, column: 16, scope: !395, inlinedAt: !396)
!400 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !399)
!401 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !399)
!402 = !DILocation(line: 191, column: 16, scope: !395, inlinedAt: !396)
!403 = !DILocation(line: 191, column: 25, scope: !395, inlinedAt: !396)
!404 = !DILocation(line: 191, column: 9, scope: !395, inlinedAt: !396)
!405 = !DILocation(line: 191, column: 31, scope: !395, inlinedAt: !396)
!406 = !DILocation(line: 191, column: 3, scope: !395, inlinedAt: !396)
!407 = !DILocation(line: 188, column: 23, scope: !395, inlinedAt: !396)
!408 = !DILocation(line: 193, column: 22, scope: !395, inlinedAt: !396)
!409 = !DILocation(line: 193, column: 9, scope: !395, inlinedAt: !396)
!410 = !DILocation(line: 0, scope: !395, inlinedAt: !396)
!411 = !DILocation(line: 195, column: 14, scope: !395, inlinedAt: !396)
!412 = !DILocation(line: 195, column: 9, scope: !395, inlinedAt: !396)
!413 = !DILocation(line: 195, column: 39, scope: !395, inlinedAt: !396)
!414 = !DILocation(line: 107, column: 35, scope: !282, inlinedAt: !284)
!415 = !DILocation(line: 107, column: 47, scope: !282, inlinedAt: !284)
!416 = !DILocation(line: 107, column: 39, scope: !282, inlinedAt: !284)
!417 = !DILocation(line: 190, column: 11, scope: !395, inlinedAt: !418)
!418 = distinct !DILocation(line: 201, column: 9, scope: !419, inlinedAt: !420)
!419 = distinct !DISubprogram(name: "fetch_store_strlen_user", scope: !1, file: !1, line: 199, type: !143, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!420 = distinct !DILocation(line: 107, column: 11, scope: !282, inlinedAt: !284)
!421 = !DILocation(line: 190, column: 6, scope: !395, inlinedAt: !418)
!422 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !423)
!423 = distinct !DILocation(line: 191, column: 16, scope: !395, inlinedAt: !418)
!424 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !423)
!425 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !423)
!426 = !DILocation(line: 191, column: 16, scope: !395, inlinedAt: !418)
!427 = !DILocation(line: 191, column: 25, scope: !395, inlinedAt: !418)
!428 = !DILocation(line: 191, column: 9, scope: !395, inlinedAt: !418)
!429 = !DILocation(line: 191, column: 31, scope: !395, inlinedAt: !418)
!430 = !DILocation(line: 191, column: 3, scope: !395, inlinedAt: !418)
!431 = !DILocation(line: 188, column: 23, scope: !395, inlinedAt: !418)
!432 = !DILocation(line: 193, column: 22, scope: !395, inlinedAt: !418)
!433 = !DILocation(line: 193, column: 9, scope: !395, inlinedAt: !418)
!434 = !DILocation(line: 0, scope: !395, inlinedAt: !418)
!435 = !DILocation(line: 195, column: 14, scope: !395, inlinedAt: !418)
!436 = !DILocation(line: 195, column: 9, scope: !395, inlinedAt: !418)
!437 = !DILocation(line: 195, column: 39, scope: !395, inlinedAt: !418)
!438 = !DILocation(line: 107, column: 8, scope: !282, inlinedAt: !284)
!439 = !DILocation(line: 109, column: 4, scope: !282, inlinedAt: !284)
!440 = !DILocation(line: 111, column: 4, scope: !282, inlinedAt: !284)
!441 = !DILocation(line: 114, column: 2, scope: !282, inlinedAt: !284)
!442 = !DILocation(line: 116, column: 19, scope: !282, inlinedAt: !284)
!443 = !DILocation(line: 9, column: 16, scope: !444, inlinedAt: !445)
!444 = distinct !DISubprogram(name: "fetch_store_raw", scope: !283, file: !283, line: 7, type: !143, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!445 = distinct !DILocation(line: 116, column: 3, scope: !282, inlinedAt: !284)
!446 = !DILocation(line: 9, column: 2, scope: !444, inlinedAt: !445)
!447 = !DILocation(line: 11, column: 20, scope: !444, inlinedAt: !445)
!448 = !DILocation(line: 11, column: 16, scope: !444, inlinedAt: !445)
!449 = !DILocation(line: 11, column: 14, scope: !444, inlinedAt: !445)
!450 = !DILocation(line: 12, column: 3, scope: !444, inlinedAt: !445)
!451 = !DILocation(line: 14, column: 22, scope: !444, inlinedAt: !445)
!452 = !DILocation(line: 14, column: 17, scope: !444, inlinedAt: !445)
!453 = !DILocation(line: 14, column: 15, scope: !444, inlinedAt: !445)
!454 = !DILocation(line: 15, column: 3, scope: !444, inlinedAt: !445)
!455 = !DILocation(line: 17, column: 22, scope: !444, inlinedAt: !445)
!456 = !DILocation(line: 17, column: 15, scope: !444, inlinedAt: !445)
!457 = !DILocation(line: 18, column: 3, scope: !444, inlinedAt: !445)
!458 = !DILocation(line: 21, column: 22, scope: !444, inlinedAt: !445)
!459 = !DILocation(line: 21, column: 17, scope: !444, inlinedAt: !445)
!460 = !DILocation(line: 21, column: 15, scope: !444, inlinedAt: !445)
!461 = !DILocation(line: 22, column: 3, scope: !444, inlinedAt: !445)
!462 = !DILocation(line: 24, column: 27, scope: !444, inlinedAt: !445)
!463 = !DILocation(line: 24, column: 25, scope: !444, inlinedAt: !445)
!464 = !DILocation(line: 25, column: 2, scope: !444, inlinedAt: !445)
!465 = !DILocation(line: 119, column: 18, scope: !282, inlinedAt: !284)
!466 = !DILocation(line: 119, column: 32, scope: !282, inlinedAt: !284)
!467 = !DILocation(line: 119, column: 24, scope: !282, inlinedAt: !284)
!468 = !DILocation(line: 119, column: 44, scope: !282, inlinedAt: !284)
!469 = !DILocation(line: 119, column: 36, scope: !282, inlinedAt: !284)
!470 = !DILocation(line: 119, column: 58, scope: !282, inlinedAt: !284)
!471 = !DILocation(line: 230, column: 6, scope: !178, inlinedAt: !472)
!472 = distinct !DILocation(line: 191, column: 6, scope: !181, inlinedAt: !473)
!473 = distinct !DILocation(line: 132, column: 9, scope: !298, inlinedAt: !474)
!474 = distinct !DILocation(line: 119, column: 3, scope: !282, inlinedAt: !284)
!475 = !DILocation(line: 231, column: 3, scope: !178, inlinedAt: !472)
!476 = !DILocation(line: 232, column: 20, scope: !178, inlinedAt: !472)
!477 = !DILocation(line: 199, column: 23, scope: !478, inlinedAt: !479)
!478 = distinct !DISubprogram(name: "check_object_size", scope: !179, file: !179, line: 195, type: !143, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!479 = distinct !DILocation(line: 232, column: 2, scope: !178, inlinedAt: !472)
!480 = !DILocation(line: 199, column: 3, scope: !478, inlinedAt: !479)
!481 = !DILocation(line: 192, column: 23, scope: !181, inlinedAt: !473)
!482 = !DILocation(line: 156, column: 2, scope: !187, inlinedAt: !483)
!483 = distinct !DILocation(line: 192, column: 7, scope: !181, inlinedAt: !473)
!484 = !DILocation(line: 157, column: 7, scope: !187, inlinedAt: !483)
!485 = !DILocation(line: 157, column: 30, scope: !187, inlinedAt: !483)
!486 = !DILocation(line: 157, column: 33, scope: !187, inlinedAt: !483)
!487 = !DILocation(line: 157, column: 6, scope: !187, inlinedAt: !483)
!488 = !DILocation(line: 158, column: 29, scope: !187, inlinedAt: !483)
!489 = !DILocation(line: 135, column: 2, scope: !197, inlinedAt: !490)
!490 = distinct !DILocation(line: 158, column: 3, scope: !187, inlinedAt: !483)
!491 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !492)
!492 = distinct !DILocation(line: 92, column: 10, scope: !204, inlinedAt: !493)
!493 = distinct !DILocation(line: 29, column: 28, scope: !207, inlinedAt: !494)
!494 = distinct !DILocation(line: 537, column: 15, scope: !210, inlinedAt: !495)
!495 = distinct !DILocation(line: 159, column: 9, scope: !187, inlinedAt: !483)
!496 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !492)
!497 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !492)
!498 = !DILocation(line: 92, column: 33, scope: !204, inlinedAt: !493)
!499 = !DILocation(line: 89, column: 2, scope: !204, inlinedAt: !493)
!500 = !DILocation(line: 32, column: 25, scope: !207, inlinedAt: !494)
!501 = !DILocation(line: 32, column: 54, scope: !207, inlinedAt: !494)
!502 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !503)
!503 = distinct !DILocation(line: 32, column: 2, scope: !207, inlinedAt: !494)
!504 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !503)
!505 = !DILocation(line: 538, column: 6, scope: !210, inlinedAt: !495)
!506 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !507)
!507 = distinct !DILocation(line: 45, column: 2, scope: !228, inlinedAt: !508)
!508 = distinct !DILocation(line: 539, column: 2, scope: !210, inlinedAt: !495)
!509 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !507)
!510 = !DILocation(line: 160, column: 2, scope: !187, inlinedAt: !483)
!511 = !DILocation(line: 0, scope: !187, inlinedAt: !483)
!512 = !DILocation(line: 161, column: 6, scope: !187, inlinedAt: !483)
!513 = !DILocation(line: 162, column: 10, scope: !187, inlinedAt: !483)
!514 = !DILocation(line: 162, column: 18, scope: !187, inlinedAt: !483)
!515 = !DILocation(line: 162, column: 13, scope: !187, inlinedAt: !483)
!516 = !DILocation(line: 162, column: 3, scope: !187, inlinedAt: !483)
!517 = !DILocation(line: 122, column: 23, scope: !282, inlinedAt: !284)
!518 = !DILocation(line: 122, column: 37, scope: !282, inlinedAt: !284)
!519 = !DILocation(line: 122, column: 29, scope: !282, inlinedAt: !284)
!520 = !DILocation(line: 122, column: 49, scope: !282, inlinedAt: !284)
!521 = !DILocation(line: 122, column: 41, scope: !282, inlinedAt: !284)
!522 = !DILocation(line: 122, column: 63, scope: !282, inlinedAt: !284)
!523 = !DILocation(line: 230, column: 6, scope: !178, inlinedAt: !524)
!524 = distinct !DILocation(line: 191, column: 6, scope: !181, inlinedAt: !525)
!525 = distinct !DILocation(line: 132, column: 9, scope: !298, inlinedAt: !526)
!526 = distinct !DILocation(line: 138, column: 9, scope: !343, inlinedAt: !527)
!527 = distinct !DILocation(line: 122, column: 3, scope: !282, inlinedAt: !284)
!528 = !DILocation(line: 231, column: 3, scope: !178, inlinedAt: !524)
!529 = !DILocation(line: 232, column: 20, scope: !178, inlinedAt: !524)
!530 = !DILocation(line: 199, column: 23, scope: !478, inlinedAt: !531)
!531 = distinct !DILocation(line: 232, column: 2, scope: !178, inlinedAt: !524)
!532 = !DILocation(line: 199, column: 3, scope: !478, inlinedAt: !531)
!533 = !DILocation(line: 192, column: 23, scope: !181, inlinedAt: !525)
!534 = !DILocation(line: 156, column: 2, scope: !187, inlinedAt: !535)
!535 = distinct !DILocation(line: 192, column: 7, scope: !181, inlinedAt: !525)
!536 = !DILocation(line: 157, column: 7, scope: !187, inlinedAt: !535)
!537 = !DILocation(line: 157, column: 30, scope: !187, inlinedAt: !535)
!538 = !DILocation(line: 157, column: 33, scope: !187, inlinedAt: !535)
!539 = !DILocation(line: 157, column: 6, scope: !187, inlinedAt: !535)
!540 = !DILocation(line: 158, column: 29, scope: !187, inlinedAt: !535)
!541 = !DILocation(line: 135, column: 2, scope: !197, inlinedAt: !542)
!542 = distinct !DILocation(line: 158, column: 3, scope: !187, inlinedAt: !535)
!543 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !544)
!544 = distinct !DILocation(line: 92, column: 10, scope: !204, inlinedAt: !545)
!545 = distinct !DILocation(line: 29, column: 28, scope: !207, inlinedAt: !546)
!546 = distinct !DILocation(line: 537, column: 15, scope: !210, inlinedAt: !547)
!547 = distinct !DILocation(line: 159, column: 9, scope: !187, inlinedAt: !535)
!548 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !544)
!549 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !544)
!550 = !DILocation(line: 92, column: 33, scope: !204, inlinedAt: !545)
!551 = !DILocation(line: 89, column: 2, scope: !204, inlinedAt: !545)
!552 = !DILocation(line: 32, column: 25, scope: !207, inlinedAt: !546)
!553 = !DILocation(line: 32, column: 54, scope: !207, inlinedAt: !546)
!554 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !555)
!555 = distinct !DILocation(line: 32, column: 2, scope: !207, inlinedAt: !546)
!556 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !555)
!557 = !DILocation(line: 538, column: 6, scope: !210, inlinedAt: !547)
!558 = !DILocation(line: 99, column: 2, scope: !220, inlinedAt: !559)
!559 = distinct !DILocation(line: 45, column: 2, scope: !228, inlinedAt: !560)
!560 = distinct !DILocation(line: 539, column: 2, scope: !210, inlinedAt: !547)
!561 = !DILocation(line: 102, column: 2, scope: !220, inlinedAt: !559)
!562 = !DILocation(line: 160, column: 2, scope: !187, inlinedAt: !535)
!563 = !DILocation(line: 0, scope: !187, inlinedAt: !535)
!564 = !DILocation(line: 161, column: 6, scope: !187, inlinedAt: !535)
!565 = !DILocation(line: 162, column: 10, scope: !187, inlinedAt: !535)
!566 = !DILocation(line: 162, column: 18, scope: !187, inlinedAt: !535)
!567 = !DILocation(line: 162, column: 13, scope: !187, inlinedAt: !535)
!568 = !DILocation(line: 162, column: 3, scope: !187, inlinedAt: !535)
!569 = !DILocation(line: 125, column: 17, scope: !282, inlinedAt: !284)
!570 = !DILocation(line: 125, column: 9, scope: !282, inlinedAt: !284)
!571 = !DILocation(line: 126, column: 28, scope: !282, inlinedAt: !284)
!572 = !DILocation(line: 126, column: 40, scope: !282, inlinedAt: !284)
!573 = !DILocation(line: 126, column: 32, scope: !282, inlinedAt: !284)
!574 = !DILocation(line: 150, column: 16, scope: !575, inlinedAt: !576)
!575 = distinct !DISubprogram(name: "fetch_store_string", scope: !1, file: !1, line: 146, type: !143, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!576 = distinct !DILocation(line: 126, column: 9, scope: !282, inlinedAt: !284)
!577 = !DILocation(line: 66, column: 21, scope: !578, inlinedAt: !580)
!578 = distinct !DISubprogram(name: "get_loc_data", scope: !579, file: !579, line: 64, type: !143, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!579 = !DIFile(filename: "../kernel/trace/trace_probe.h", directory: "/llk/linux-5.17/build_arm_allyes")
!580 = distinct !DILocation(line: 151, column: 12, scope: !575, inlinedAt: !576)
!581 = !DILocation(line: 66, column: 19, scope: !578, inlinedAt: !580)
!582 = !DILocation(line: 152, column: 21, scope: !575, inlinedAt: !576)
!583 = !DILocation(line: 154, column: 6, scope: !575, inlinedAt: !576)
!584 = !DILocation(line: 155, column: 3, scope: !575, inlinedAt: !576)
!585 = !DILocation(line: 157, column: 11, scope: !575, inlinedAt: !576)
!586 = !DILocation(line: 157, column: 6, scope: !575, inlinedAt: !576)
!587 = !DILocation(line: 158, column: 17, scope: !575, inlinedAt: !576)
!588 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !589)
!589 = distinct !DILocation(line: 158, column: 22, scope: !575, inlinedAt: !576)
!590 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !589)
!591 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !589)
!592 = !DILocation(line: 158, column: 22, scope: !575, inlinedAt: !576)
!593 = !DILocation(line: 158, column: 31, scope: !575, inlinedAt: !576)
!594 = !DILocation(line: 158, column: 9, scope: !575, inlinedAt: !576)
!595 = !DILocation(line: 158, column: 3, scope: !575, inlinedAt: !576)
!596 = !DILocation(line: 160, column: 27, scope: !575, inlinedAt: !576)
!597 = !DILocation(line: 160, column: 9, scope: !575, inlinedAt: !576)
!598 = !DILocation(line: 0, scope: !575, inlinedAt: !576)
!599 = !DILocation(line: 161, column: 10, scope: !575, inlinedAt: !576)
!600 = !DILocation(line: 161, column: 6, scope: !575, inlinedAt: !576)
!601 = !DILocation(line: 162, column: 11, scope: !575, inlinedAt: !576)
!602 = !DILocation(line: 162, column: 7, scope: !575, inlinedAt: !576)
!603 = !DILocation(line: 163, column: 4, scope: !575, inlinedAt: !576)
!604 = !DILocation(line: 163, column: 12, scope: !575, inlinedAt: !576)
!605 = !DILocation(line: 163, column: 17, scope: !575, inlinedAt: !576)
!606 = !DILocation(line: 170, column: 7, scope: !575, inlinedAt: !576)
!607 = !DILocation(line: 171, column: 18, scope: !575, inlinedAt: !576)
!608 = !DILocation(line: 171, column: 16, scope: !575, inlinedAt: !576)
!609 = !DILocation(line: 172, column: 2, scope: !575, inlinedAt: !576)
!610 = !DILocation(line: 129, column: 17, scope: !282, inlinedAt: !284)
!611 = !DILocation(line: 129, column: 9, scope: !282, inlinedAt: !284)
!612 = !DILocation(line: 130, column: 33, scope: !282, inlinedAt: !284)
!613 = !DILocation(line: 130, column: 45, scope: !282, inlinedAt: !284)
!614 = !DILocation(line: 130, column: 37, scope: !282, inlinedAt: !284)
!615 = !DILocation(line: 149, column: 12, scope: !575, inlinedAt: !616)
!616 = distinct !DILocation(line: 180, column: 9, scope: !617, inlinedAt: !618)
!617 = distinct !DISubprogram(name: "fetch_store_string_user", scope: !1, file: !1, line: 178, type: !143, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!618 = distinct !DILocation(line: 130, column: 9, scope: !282, inlinedAt: !284)
!619 = !DILocation(line: 150, column: 16, scope: !575, inlinedAt: !616)
!620 = !DILocation(line: 66, column: 21, scope: !578, inlinedAt: !621)
!621 = distinct !DILocation(line: 151, column: 12, scope: !575, inlinedAt: !616)
!622 = !DILocation(line: 66, column: 19, scope: !578, inlinedAt: !621)
!623 = !DILocation(line: 152, column: 21, scope: !575, inlinedAt: !616)
!624 = !DILocation(line: 154, column: 6, scope: !575, inlinedAt: !616)
!625 = !DILocation(line: 155, column: 3, scope: !575, inlinedAt: !616)
!626 = !DILocation(line: 157, column: 11, scope: !575, inlinedAt: !616)
!627 = !DILocation(line: 157, column: 6, scope: !575, inlinedAt: !616)
!628 = !DILocation(line: 158, column: 17, scope: !575, inlinedAt: !616)
!629 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !630)
!630 = distinct !DILocation(line: 158, column: 22, scope: !575, inlinedAt: !616)
!631 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !630)
!632 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !630)
!633 = !DILocation(line: 158, column: 22, scope: !575, inlinedAt: !616)
!634 = !DILocation(line: 158, column: 31, scope: !575, inlinedAt: !616)
!635 = !DILocation(line: 158, column: 9, scope: !575, inlinedAt: !616)
!636 = !DILocation(line: 158, column: 3, scope: !575, inlinedAt: !616)
!637 = !DILocation(line: 160, column: 27, scope: !575, inlinedAt: !616)
!638 = !DILocation(line: 160, column: 9, scope: !575, inlinedAt: !616)
!639 = !DILocation(line: 0, scope: !575, inlinedAt: !616)
!640 = !DILocation(line: 161, column: 10, scope: !575, inlinedAt: !616)
!641 = !DILocation(line: 161, column: 6, scope: !575, inlinedAt: !616)
!642 = !DILocation(line: 162, column: 11, scope: !575, inlinedAt: !616)
!643 = !DILocation(line: 162, column: 7, scope: !575, inlinedAt: !616)
!644 = !DILocation(line: 163, column: 4, scope: !575, inlinedAt: !616)
!645 = !DILocation(line: 163, column: 12, scope: !575, inlinedAt: !616)
!646 = !DILocation(line: 163, column: 17, scope: !575, inlinedAt: !616)
!647 = !DILocation(line: 170, column: 7, scope: !575, inlinedAt: !616)
!648 = !DILocation(line: 171, column: 18, scope: !575, inlinedAt: !616)
!649 = !DILocation(line: 171, column: 16, scope: !575, inlinedAt: !616)
!650 = !DILocation(line: 172, column: 2, scope: !575, inlinedAt: !616)
!651 = !DILocation(line: 133, column: 3, scope: !282, inlinedAt: !284)
!652 = !DILocation(line: 138, column: 12, scope: !282, inlinedAt: !284)
!653 = !DILocation(line: 138, column: 15, scope: !282, inlinedAt: !284)
!654 = !DILocation(line: 138, column: 6, scope: !282, inlinedAt: !284)
!655 = !DILocation(line: 139, column: 24, scope: !282, inlinedAt: !284)
!656 = !DILocation(line: 31, column: 16, scope: !657, inlinedAt: !658)
!657 = distinct !DISubprogram(name: "fetch_apply_bitfield", scope: !283, file: !283, line: 29, type: !143, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!658 = distinct !DILocation(line: 139, column: 3, scope: !282, inlinedAt: !284)
!659 = !DILocation(line: 31, column: 2, scope: !657, inlinedAt: !658)
!660 = !DILocation(line: 33, column: 18, scope: !657, inlinedAt: !658)
!661 = !DILocation(line: 33, column: 24, scope: !657, inlinedAt: !658)
!662 = !DILocation(line: 33, column: 14, scope: !657, inlinedAt: !658)
!663 = !DILocation(line: 34, column: 24, scope: !657, inlinedAt: !658)
!664 = !DILocation(line: 34, column: 18, scope: !657, inlinedAt: !658)
!665 = !DILocation(line: 34, column: 14, scope: !657, inlinedAt: !658)
!666 = !DILocation(line: 35, column: 3, scope: !657, inlinedAt: !658)
!667 = !DILocation(line: 37, column: 19, scope: !657, inlinedAt: !658)
!668 = !DILocation(line: 37, column: 25, scope: !657, inlinedAt: !658)
!669 = !DILocation(line: 37, column: 15, scope: !657, inlinedAt: !658)
!670 = !DILocation(line: 38, column: 25, scope: !657, inlinedAt: !658)
!671 = !DILocation(line: 38, column: 19, scope: !657, inlinedAt: !658)
!672 = !DILocation(line: 38, column: 15, scope: !657, inlinedAt: !658)
!673 = !DILocation(line: 39, column: 3, scope: !657, inlinedAt: !658)
!674 = !DILocation(line: 41, column: 19, scope: !657, inlinedAt: !658)
!675 = !DILocation(line: 41, column: 25, scope: !657, inlinedAt: !658)
!676 = !DILocation(line: 41, column: 15, scope: !657, inlinedAt: !658)
!677 = !DILocation(line: 42, column: 25, scope: !657, inlinedAt: !658)
!678 = !DILocation(line: 42, column: 19, scope: !657, inlinedAt: !658)
!679 = !DILocation(line: 42, column: 15, scope: !657, inlinedAt: !658)
!680 = !DILocation(line: 43, column: 3, scope: !657, inlinedAt: !658)
!681 = !DILocation(line: 45, column: 19, scope: !657, inlinedAt: !658)
!682 = !DILocation(line: 45, column: 25, scope: !657, inlinedAt: !658)
!683 = !DILocation(line: 45, column: 15, scope: !657, inlinedAt: !658)
!684 = !DILocation(line: 46, column: 25, scope: !657, inlinedAt: !658)
!685 = !DILocation(line: 46, column: 15, scope: !657, inlinedAt: !658)
!686 = !DILocation(line: 47, column: 3, scope: !657, inlinedAt: !658)
!687 = !DILocation(line: 145, column: 12, scope: !282, inlinedAt: !284)
!688 = !DILocation(line: 145, column: 15, scope: !282, inlinedAt: !284)
!689 = !DILocation(line: 145, column: 6, scope: !282, inlinedAt: !284)
!690 = !DILocation(line: 146, column: 9, scope: !282, inlinedAt: !284)
!691 = !DILocation(line: 147, column: 7, scope: !282, inlinedAt: !284)
!692 = !DILocation(line: 147, column: 19, scope: !282, inlinedAt: !284)
!693 = !DILocation(line: 147, column: 11, scope: !282, inlinedAt: !284)
!694 = !DILocation(line: 149, column: 12, scope: !282, inlinedAt: !284)
!695 = !DILocation(line: 149, column: 15, scope: !282, inlinedAt: !284)
!696 = !DILocation(line: 149, column: 37, scope: !282, inlinedAt: !284)
!697 = !DILocation(line: 150, column: 8, scope: !282, inlinedAt: !284)
!698 = !DILocation(line: 150, column: 12, scope: !282, inlinedAt: !284)
!699 = !DILocation(line: 150, column: 15, scope: !282, inlinedAt: !284)
!700 = !DILocation(line: 149, column: 8, scope: !282, inlinedAt: !284)
!701 = !DILocation(line: 151, column: 17, scope: !282, inlinedAt: !284)
!702 = !DILocation(line: 151, column: 10, scope: !282, inlinedAt: !284)
!703 = !DILocation(line: 152, column: 9, scope: !282, inlinedAt: !284)
!704 = !DILocation(line: 153, column: 5, scope: !282, inlinedAt: !284)
!705 = !DILocation(line: 155, column: 8, scope: !282, inlinedAt: !284)
!706 = !DILocation(line: 156, column: 15, scope: !282, inlinedAt: !284)
!707 = !DILocation(line: 156, column: 8, scope: !282, inlinedAt: !284)
!708 = !DILocation(line: 157, column: 8, scope: !282, inlinedAt: !284)
!709 = !DILocation(line: 158, column: 10, scope: !282, inlinedAt: !284)
!710 = !DILocation(line: 74, column: 9, scope: !711, inlinedAt: !712)
!711 = distinct !DISubprogram(name: "update_data_loc", scope: !579, file: !579, line: 69, type: !143, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!712 = distinct !DILocation(line: 159, column: 20, scope: !282, inlinedAt: !284)
!713 = !DILocation(line: 159, column: 18, scope: !282, inlinedAt: !284)
!714 = !DILocation(line: 160, column: 4, scope: !282, inlinedAt: !284)
!715 = !DILocation(line: 161, column: 4, scope: !282, inlinedAt: !284)
!716 = !DILocation(line: 163, column: 7, scope: !282, inlinedAt: !284)
!717 = !DILocation(line: 165, column: 2, scope: !282, inlinedAt: !284)
!718 = !DILocation(line: 167, column: 15, scope: !282, inlinedAt: !284)
!719 = !DILocation(line: 167, column: 18, scope: !282, inlinedAt: !284)
!720 = !DILocation(line: 167, column: 9, scope: !282, inlinedAt: !284)
!721 = !DILocation(line: 167, column: 36, scope: !282, inlinedAt: !284)
!722 = !DILocation(line: 168, column: 1, scope: !282, inlinedAt: !284)
!723 = !DILocation(line: 254, column: 2, scope: !142)
!724 = !DILocation(line: 255, column: 1, scope: !142)
!725 = distinct !DISubprogram(name: "bpf_get_uprobe_info", scope: !1, file: !1, line: 1414, type: !143, scopeLine: 1417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!726 = !DILocation(line: 1417, scope: !725)
!727 = !DILocation(line: 1418, column: 47, scope: !725)
!728 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !731)
!729 = distinct !DISubprogram(name: "trace_event_name", scope: !730, file: !730, line: 441, type: !143, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!730 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!731 = distinct !DILocation(line: 1418, column: 23, scope: !725)
!732 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !731)
!733 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !731)
!734 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !731)
!735 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !731)
!736 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !731)
!737 = !DILocation(line: 444, column: 27, scope: !729, inlinedAt: !731)
!738 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !731)
!739 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !731)
!740 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !731)
!741 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !731)
!742 = !DILocation(line: 0, scope: !729, inlinedAt: !731)
!743 = !DILocation(line: 1422, column: 6, scope: !725)
!744 = !DILocation(line: 1419, column: 39, scope: !725)
!745 = !DILocation(line: 1419, column: 46, scope: !725)
!746 = !DILocation(line: 1423, column: 25, scope: !725)
!747 = !DILocation(line: 1423, column: 8, scope: !725)
!748 = !DILocation(line: 1423, column: 3, scope: !725)
!749 = !DILocation(line: 1425, column: 39, scope: !725)
!750 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !752)
!751 = distinct !DISubprogram(name: "trace_probe_primary_from_call", scope: !579, file: !579, line: 301, type: !143, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!752 = distinct !DILocation(line: 325, column: 7, scope: !753, inlinedAt: !754)
!753 = distinct !DISubprogram(name: "trace_uprobe_primary_from_call", scope: !1, file: !1, line: 321, type: !143, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!754 = distinct !DILocation(line: 1425, column: 8, scope: !725)
!755 = !DILocation(line: 326, column: 6, scope: !753, inlinedAt: !754)
!756 = !DILocation(line: 327, column: 3, scope: !753, inlinedAt: !754)
!757 = !DILocation(line: 1426, column: 6, scope: !725)
!758 = !DILocation(line: 329, column: 9, scope: !753, inlinedAt: !754)
!759 = !DILocation(line: 329, column: 2, scope: !753, inlinedAt: !754)
!760 = !DILocation(line: 0, scope: !725)
!761 = !DILocation(line: 1426, column: 7, scope: !725)
!762 = !DILocation(line: 1427, column: 3, scope: !725)
!763 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !765)
!764 = distinct !DISubprogram(name: "is_ret_probe", scope: !1, file: !1, line: 270, type: !143, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!765 = distinct !DILocation(line: 1429, column: 13, scope: !725)
!766 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !765)
!767 = !DILocation(line: 1429, column: 13, scope: !725)
!768 = !DILocation(line: 1429, column: 11, scope: !725)
!769 = !DILocation(line: 1431, column: 18, scope: !725)
!770 = !DILocation(line: 1431, column: 12, scope: !725)
!771 = !DILocation(line: 1432, column: 22, scope: !725)
!772 = !DILocation(line: 1432, column: 18, scope: !725)
!773 = !DILocation(line: 1432, column: 16, scope: !725)
!774 = !DILocation(line: 1433, column: 2, scope: !725)
!775 = !DILocation(line: 1434, column: 1, scope: !725)
!776 = distinct !DISubprogram(name: "find_probe_event", scope: !1, file: !1, line: 373, type: !143, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!777 = !DILocation(line: 374, scope: !776)
!778 = !DILocation(line: 378, column: 2, scope: !776)
!779 = !DILocation(line: 70, column: 13, scope: !780, inlinedAt: !781)
!780 = distinct !DISubprogram(name: "is_trace_uprobe", scope: !1, file: !1, line: 68, type: !143, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!781 = distinct !DILocation(line: 378, column: 2, scope: !776)
!782 = !DILocation(line: 70, column: 17, scope: !780, inlinedAt: !781)
!783 = !DILocation(line: 280, column: 31, scope: !784, inlinedAt: !785)
!784 = distinct !DISubprogram(name: "trace_probe_name", scope: !579, file: !579, line: 278, type: !143, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!785 = distinct !DILocation(line: 379, column: 14, scope: !776)
!786 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !787)
!787 = distinct !DILocation(line: 280, column: 9, scope: !784, inlinedAt: !785)
!788 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !787)
!789 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !787)
!790 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !787)
!791 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !787)
!792 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !787)
!793 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !787)
!794 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !787)
!795 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !787)
!796 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !787)
!797 = !DILocation(line: 0, scope: !729, inlinedAt: !787)
!798 = !DILocation(line: 379, column: 7, scope: !776)
!799 = !DILocation(line: 379, column: 48, scope: !776)
!800 = !DILocation(line: 379, column: 53, scope: !776)
!801 = !DILocation(line: 380, column: 38, scope: !776)
!802 = !DILocation(line: 285, column: 13, scope: !803, inlinedAt: !804)
!803 = distinct !DISubprogram(name: "trace_probe_group_name", scope: !579, file: !579, line: 283, type: !143, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!804 = distinct !DILocation(line: 380, column: 14, scope: !776)
!805 = !DILocation(line: 285, column: 25, scope: !803, inlinedAt: !804)
!806 = !DILocation(line: 285, column: 32, scope: !803, inlinedAt: !804)
!807 = !DILocation(line: 380, column: 7, scope: !776)
!808 = !DILocation(line: 380, column: 54, scope: !776)
!809 = !DILocation(line: 381, column: 11, scope: !776)
!810 = !DILocation(line: 381, column: 4, scope: !776)
!811 = !DILocation(line: 380, column: 57, scope: !776)
!812 = distinct !{!812, !778, !809}
!813 = !DILocation(line: 383, column: 2, scope: !776)
!814 = !DILocation(line: 0, scope: !776)
!815 = !DILocation(line: 384, column: 1, scope: !776)
!816 = distinct !DISubprogram(name: "create_local_trace_uprobe", scope: !1, file: !1, line: 1577, type: !143, scopeLine: 1579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!817 = !DILocation(line: 1579, scope: !816)
!818 = !DILocation(line: 1582, column: 2, scope: !816)
!819 = !DILocation(line: 1582, column: 14, scope: !816)
!820 = !DILocation(line: 1585, column: 8, scope: !816)
!821 = !DILocation(line: 1586, column: 6, scope: !816)
!822 = !DILocation(line: 1587, column: 18, scope: !816)
!823 = !DILocation(line: 26, column: 9, scope: !824, inlinedAt: !826)
!824 = distinct !DISubprogram(name: "ERR_PTR", scope: !825, file: !825, line: 24, type: !143, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!825 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!826 = distinct !DILocation(line: 1587, column: 10, scope: !816)
!827 = !DILocation(line: 1587, column: 3, scope: !816)
!828 = !DILocation(line: 1589, column: 21, scope: !816)
!829 = !DILocation(line: 385, column: 17, scope: !830, inlinedAt: !832)
!830 = distinct !DISubprogram(name: "__d_entry_type", scope: !831, file: !831, line: 383, type: !143, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!831 = !DIFile(filename: "../include/linux/dcache.h", directory: "/llk/linux-5.17/build_arm_allyes")
!832 = distinct !DILocation(line: 420, column: 9, scope: !833, inlinedAt: !834)
!833 = distinct !DISubprogram(name: "d_is_reg", scope: !831, file: !831, line: 418, type: !143, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!834 = distinct !DILocation(line: 1589, column: 7, scope: !816)
!835 = !DILocation(line: 385, column: 25, scope: !830, inlinedAt: !832)
!836 = !DILocation(line: 420, column: 32, scope: !833, inlinedAt: !834)
!837 = !DILocation(line: 1589, column: 6, scope: !816)
!838 = !DILocation(line: 1590, column: 3, scope: !816)
!839 = !DILocation(line: 1591, column: 3, scope: !816)
!840 = !DILocation(line: 1599, column: 7, scope: !816)
!841 = !DILocation(line: 36, column: 9, scope: !842, inlinedAt: !843)
!842 = distinct !DISubprogram(name: "IS_ERR", scope: !825, file: !825, line: 34, type: !143, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!843 = distinct !DILocation(line: 1602, column: 6, scope: !816)
!844 = !DILocation(line: 1602, column: 6, scope: !816)
!845 = !DILocation(line: 1603, column: 3, scope: !816)
!846 = !DILocation(line: 31, column: 9, scope: !847, inlinedAt: !848)
!847 = distinct !DISubprogram(name: "PTR_ERR", scope: !825, file: !825, line: 29, type: !143, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!848 = distinct !DILocation(line: 1603, column: 3, scope: !816)
!849 = !DILocation(line: 1605, column: 3, scope: !816)
!850 = !DILocation(line: 1606, column: 3, scope: !816)
!851 = !DILocation(line: 1609, column: 6, scope: !816)
!852 = !DILocation(line: 1609, column: 13, scope: !816)
!853 = !DILocation(line: 1610, column: 6, scope: !816)
!854 = !DILocation(line: 1610, column: 13, scope: !816)
!855 = !DILocation(line: 1611, column: 6, scope: !816)
!856 = !DILocation(line: 1611, column: 21, scope: !816)
!857 = !DILocation(line: 1612, column: 17, scope: !816)
!858 = !DILocation(line: 1612, column: 6, scope: !816)
!859 = !DILocation(line: 1612, column: 15, scope: !816)
!860 = !DILocation(line: 1613, column: 7, scope: !816)
!861 = !DILocation(line: 1613, column: 6, scope: !816)
!862 = !DILocation(line: 1614, column: 7, scope: !816)
!863 = !DILocation(line: 1615, column: 3, scope: !816)
!864 = !DILocation(line: 291, column: 14, scope: !865, inlinedAt: !866)
!865 = distinct !DISubprogram(name: "trace_probe_event_call", scope: !579, file: !579, line: 289, type: !143, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!866 = distinct !DILocation(line: 1555, column: 34, scope: !867, inlinedAt: !868)
!867 = distinct !DISubprogram(name: "init_trace_event_call", scope: !1, file: !1, line: 1553, type: !143, scopeLine: 1554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!868 = distinct !DILocation(line: 1618, column: 2, scope: !816)
!869 = !DILocation(line: 1556, column: 14, scope: !867, inlinedAt: !868)
!870 = !DILocation(line: 1556, column: 20, scope: !867, inlinedAt: !868)
!871 = !DILocation(line: 1557, column: 8, scope: !867, inlinedAt: !868)
!872 = !DILocation(line: 1557, column: 15, scope: !867, inlinedAt: !868)
!873 = !DILocation(line: 1557, column: 28, scope: !867, inlinedAt: !868)
!874 = !DILocation(line: 1559, column: 8, scope: !867, inlinedAt: !868)
!875 = !DILocation(line: 1559, column: 14, scope: !867, inlinedAt: !868)
!876 = !DILocation(line: 1560, column: 8, scope: !867, inlinedAt: !868)
!877 = !DILocation(line: 1560, column: 15, scope: !867, inlinedAt: !868)
!878 = !DILocation(line: 1560, column: 19, scope: !867, inlinedAt: !868)
!879 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !880)
!880 = distinct !DILocation(line: 1620, column: 10, scope: !816)
!881 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !880)
!882 = !DILocation(line: 1620, column: 10, scope: !816)
!883 = !DILocation(line: 1621, column: 36, scope: !816)
!884 = !DILocation(line: 1621, column: 6, scope: !816)
!885 = !DILocation(line: 1621, column: 47, scope: !816)
!886 = !DILocation(line: 1622, column: 7, scope: !816)
!887 = !DILocation(line: 1623, column: 3, scope: !816)
!888 = !DILocation(line: 1626, column: 33, scope: !816)
!889 = !DILocation(line: 291, column: 14, scope: !865, inlinedAt: !890)
!890 = distinct !DILocation(line: 1626, column: 9, scope: !816)
!891 = !DILocation(line: 291, column: 21, scope: !865, inlinedAt: !890)
!892 = !DILocation(line: 1626, column: 2, scope: !816)
!893 = !DILocation(line: 364, column: 7, scope: !894, inlinedAt: !895)
!894 = distinct !DISubprogram(name: "free_trace_uprobe", scope: !1, file: !1, line: 362, type: !143, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!895 = distinct !DILocation(line: 1628, column: 2, scope: !816)
!896 = !DILocation(line: 364, column: 6, scope: !894, inlinedAt: !895)
!897 = !DILocation(line: 365, column: 3, scope: !894, inlinedAt: !895)
!898 = !DILocation(line: 367, column: 12, scope: !894, inlinedAt: !895)
!899 = !DILocation(line: 367, column: 2, scope: !894, inlinedAt: !895)
!900 = !DILocation(line: 368, column: 27, scope: !894, inlinedAt: !895)
!901 = !DILocation(line: 368, column: 2, scope: !894, inlinedAt: !895)
!902 = !DILocation(line: 369, column: 12, scope: !894, inlinedAt: !895)
!903 = !DILocation(line: 369, column: 2, scope: !894, inlinedAt: !895)
!904 = !DILocation(line: 370, column: 2, scope: !894, inlinedAt: !895)
!905 = !DILocation(line: 371, column: 1, scope: !894, inlinedAt: !895)
!906 = !DILocation(line: 1629, column: 2, scope: !816)
!907 = !DILocation(line: 0, scope: !816)
!908 = !DILocation(line: 1630, column: 1, scope: !816)
!909 = distinct !DISubprogram(name: "alloc_trace_uprobe", scope: !1, file: !1, line: 336, type: !143, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!910 = !DILocation(line: 337, scope: !909)
!911 = !DILocation(line: 173, column: 6, scope: !912, inlinedAt: !914)
!912 = distinct !DISubprogram(name: "__ab_c_size", scope: !913, file: !913, line: 169, type: !143, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!913 = !DIFile(filename: "../include/linux/overflow.h", directory: "/llk/linux-5.17/build_arm_allyes")
!914 = distinct !DILocation(line: 341, column: 15, scope: !909)
!915 = !DILocation(line: 174, column: 3, scope: !912, inlinedAt: !914)
!916 = !DILocation(line: 175, column: 6, scope: !912, inlinedAt: !914)
!917 = !DILocation(line: 176, column: 3, scope: !912, inlinedAt: !914)
!918 = !DILocation(line: 178, column: 9, scope: !912, inlinedAt: !914)
!919 = !DILocation(line: 178, column: 2, scope: !912, inlinedAt: !914)
!920 = !DILocation(line: 0, scope: !912, inlinedAt: !914)
!921 = !DILocation(line: 586, column: 19, scope: !922, inlinedAt: !924)
!922 = distinct !DISubprogram(name: "kmalloc", scope: !923, file: !923, line: 567, type: !143, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!923 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!924 = distinct !DILocation(line: 714, column: 9, scope: !925, inlinedAt: !926)
!925 = distinct !DISubprogram(name: "kzalloc", scope: !923, file: !923, line: 712, type: !143, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!926 = distinct !DILocation(line: 341, column: 7, scope: !909)
!927 = !DILocation(line: 586, column: 9, scope: !922, inlinedAt: !924)
!928 = !DILocation(line: 342, column: 7, scope: !909)
!929 = !DILocation(line: 342, column: 6, scope: !909)
!930 = !DILocation(line: 343, column: 10, scope: !909)
!931 = !DILocation(line: 343, column: 3, scope: !909)
!932 = !DILocation(line: 345, column: 30, scope: !909)
!933 = !DILocation(line: 345, column: 8, scope: !909)
!934 = !DILocation(line: 346, column: 10, scope: !909)
!935 = !DILocation(line: 346, column: 6, scope: !909)
!936 = !DILocation(line: 71, column: 14, scope: !937, inlinedAt: !939)
!937 = distinct !DISubprogram(name: "dyn_event_init", scope: !938, file: !938, line: 69, type: !143, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!938 = !DIFile(filename: "../kernel/trace/trace_dynevent.h", directory: "/llk/linux-5.17/build_arm_allyes")
!939 = distinct !DILocation(line: 349, column: 2, scope: !909)
!940 = !DILocation(line: 74, column: 18, scope: !937, inlinedAt: !939)
!941 = !DILocation(line: 37, column: 2, scope: !942, inlinedAt: !944)
!942 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !943, file: !943, line: 35, type: !143, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!943 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!944 = distinct !DILocation(line: 74, column: 2, scope: !937, inlinedAt: !939)
!945 = !DILocation(line: 38, column: 8, scope: !942, inlinedAt: !944)
!946 = !DILocation(line: 38, column: 13, scope: !942, inlinedAt: !944)
!947 = !DILocation(line: 75, column: 6, scope: !937, inlinedAt: !939)
!948 = !DILocation(line: 75, column: 10, scope: !937, inlinedAt: !939)
!949 = !DILocation(line: 350, column: 6, scope: !909)
!950 = !DILocation(line: 350, column: 23, scope: !909)
!951 = !DILocation(line: 351, column: 6, scope: !909)
!952 = !DILocation(line: 352, column: 3, scope: !909)
!953 = !DILocation(line: 352, column: 16, scope: !909)
!954 = !DILocation(line: 352, column: 28, scope: !909)
!955 = !DILocation(line: 353, column: 27, scope: !909)
!956 = !DILocation(line: 353, column: 34, scope: !909)
!957 = !DILocation(line: 353, column: 41, scope: !909)
!958 = !DILocation(line: 260, column: 2, scope: !959, inlinedAt: !960)
!959 = distinct !DISubprogram(name: "init_trace_uprobe_filter", scope: !1, file: !1, line: 258, type: !143, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!960 = distinct !DILocation(line: 353, column: 2, scope: !909)
!961 = !DILocation(line: 261, column: 10, scope: !959, inlinedAt: !960)
!962 = !DILocation(line: 261, column: 24, scope: !959, inlinedAt: !960)
!963 = !DILocation(line: 262, column: 26, scope: !959, inlinedAt: !960)
!964 = !DILocation(line: 37, column: 2, scope: !942, inlinedAt: !965)
!965 = distinct !DILocation(line: 262, column: 2, scope: !959, inlinedAt: !960)
!966 = !DILocation(line: 38, column: 8, scope: !942, inlinedAt: !965)
!967 = !DILocation(line: 38, column: 13, scope: !942, inlinedAt: !965)
!968 = !DILocation(line: 354, column: 2, scope: !909)
!969 = !DILocation(line: 357, column: 8, scope: !909)
!970 = !DILocation(line: 357, column: 2, scope: !909)
!971 = !DILocation(line: 26, column: 9, scope: !824, inlinedAt: !972)
!972 = distinct !DILocation(line: 359, column: 9, scope: !909)
!973 = !DILocation(line: 359, column: 2, scope: !909)
!974 = !DILocation(line: 0, scope: !909)
!975 = !DILocation(line: 360, column: 1, scope: !909)
!976 = !DILocation(line: 363, scope: !894)
!977 = !DILocation(line: 364, column: 7, scope: !894)
!978 = !DILocation(line: 364, column: 6, scope: !894)
!979 = !DILocation(line: 365, column: 3, scope: !894)
!980 = !DILocation(line: 367, column: 12, scope: !894)
!981 = !DILocation(line: 367, column: 16, scope: !894)
!982 = !DILocation(line: 367, column: 2, scope: !894)
!983 = !DILocation(line: 368, column: 27, scope: !894)
!984 = !DILocation(line: 368, column: 2, scope: !894)
!985 = !DILocation(line: 369, column: 12, scope: !894)
!986 = !DILocation(line: 369, column: 2, scope: !894)
!987 = !DILocation(line: 370, column: 2, scope: !894)
!988 = !DILocation(line: 371, column: 1, scope: !894)
!989 = distinct !DISubprogram(name: "destroy_local_trace_uprobe", scope: !1, file: !1, line: 1632, type: !143, scopeLine: 1633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!990 = !DILocation(line: 1633, scope: !989)
!991 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !992)
!992 = distinct !DILocation(line: 325, column: 7, scope: !753, inlinedAt: !993)
!993 = distinct !DILocation(line: 1636, column: 7, scope: !989)
!994 = !DILocation(line: 326, column: 6, scope: !753, inlinedAt: !993)
!995 = !DILocation(line: 327, column: 3, scope: !753, inlinedAt: !993)
!996 = !DILocation(line: 364, column: 6, scope: !894, inlinedAt: !997)
!997 = distinct !DILocation(line: 1638, column: 2, scope: !989)
!998 = !DILocation(line: 329, column: 9, scope: !753, inlinedAt: !993)
!999 = !DILocation(line: 364, column: 7, scope: !894, inlinedAt: !997)
!1000 = !DILocation(line: 365, column: 3, scope: !894, inlinedAt: !997)
!1001 = !DILocation(line: 367, column: 12, scope: !894, inlinedAt: !997)
!1002 = !DILocation(line: 367, column: 16, scope: !894, inlinedAt: !997)
!1003 = !DILocation(line: 367, column: 2, scope: !894, inlinedAt: !997)
!1004 = !DILocation(line: 368, column: 2, scope: !894, inlinedAt: !997)
!1005 = !DILocation(line: 369, column: 12, scope: !894, inlinedAt: !997)
!1006 = !DILocation(line: 369, column: 2, scope: !894, inlinedAt: !997)
!1007 = !DILocation(line: 370, column: 2, scope: !894, inlinedAt: !997)
!1008 = !DILocation(line: 371, column: 1, scope: !894, inlinedAt: !997)
!1009 = !DILocation(line: 1639, column: 1, scope: !989)
!1010 = distinct !DISubprogram(name: "init_uprobe_trace", scope: !1, file: !1, line: 1643, type: !143, scopeLine: 1644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1011 = !DILocation(line: 1644, scope: !1010)
!1012 = !DILocation(line: 1647, column: 8, scope: !1010)
!1013 = !DILocation(line: 1648, column: 6, scope: !1010)
!1014 = !DILocation(line: 1649, column: 10, scope: !1010)
!1015 = !DILocation(line: 1649, column: 3, scope: !1010)
!1016 = !DILocation(line: 1651, column: 8, scope: !1010)
!1017 = !DILocation(line: 1652, column: 6, scope: !1010)
!1018 = !DILocation(line: 1653, column: 3, scope: !1010)
!1019 = !DILocation(line: 1655, column: 2, scope: !1010)
!1020 = !DILocation(line: 1658, column: 2, scope: !1010)
!1021 = !DILocation(line: 1660, column: 2, scope: !1010)
!1022 = !DILocation(line: 1661, column: 1, scope: !1010)
!1023 = distinct !DISubprogram(name: "trace_uprobe_create", scope: !1, file: !1, line: 718, type: !143, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1024 = !DILocation(line: 719, scope: !1023)
!1025 = !DILocation(line: 720, column: 9, scope: !1023)
!1026 = !DILocation(line: 720, column: 2, scope: !1023)
!1027 = distinct !DISubprogram(name: "trace_uprobe_show", scope: !1, file: !1, line: 742, type: !143, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1028 = !DILocation(line: 743, scope: !1027)
!1029 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 745, column: 11, scope: !1027)
!1031 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1030)
!1032 = !DILocation(line: 748, column: 39, scope: !1027)
!1033 = !DILocation(line: 285, column: 13, scope: !803, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 748, column: 42, scope: !1027)
!1035 = !DILocation(line: 285, column: 25, scope: !803, inlinedAt: !1034)
!1036 = !DILocation(line: 285, column: 32, scope: !803, inlinedAt: !1034)
!1037 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 280, column: 9, scope: !784, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 749, column: 4, scope: !1027)
!1040 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !1038)
!1041 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !1038)
!1042 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !1038)
!1043 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !1038)
!1044 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !1038)
!1045 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !1038)
!1046 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !1038)
!1047 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !1038)
!1048 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !1038)
!1049 = !DILocation(line: 0, scope: !729, inlinedAt: !1038)
!1050 = !DILocation(line: 749, column: 35, scope: !1027)
!1051 = !DILocation(line: 750, column: 35, scope: !1027)
!1052 = !DILocation(line: 748, column: 2, scope: !1027)
!1053 = !DILocation(line: 752, column: 10, scope: !1027)
!1054 = !DILocation(line: 752, column: 6, scope: !1027)
!1055 = !DILocation(line: 753, column: 14, scope: !1027)
!1056 = !DILocation(line: 753, column: 3, scope: !1027)
!1057 = !DILocation(line: 755, column: 25, scope: !1027)
!1058 = !DILocation(line: 755, column: 16, scope: !1027)
!1059 = !DILocation(line: 755, column: 2, scope: !1027)
!1060 = !DILocation(line: 756, column: 27, scope: !1027)
!1061 = !DILocation(line: 756, column: 42, scope: !1027)
!1062 = !DILocation(line: 756, column: 63, scope: !1027)
!1063 = !DILocation(line: 756, column: 3, scope: !1027)
!1064 = !DILocation(line: 755, column: 35, scope: !1027)
!1065 = distinct !{!1065, !1059, !1066}
!1066 = !DILocation(line: 756, column: 67, scope: !1027)
!1067 = !DILocation(line: 758, column: 11, scope: !1027)
!1068 = !DILocation(line: 758, column: 2, scope: !1027)
!1069 = !DILocation(line: 759, column: 2, scope: !1027)
!1070 = distinct !DISubprogram(name: "trace_uprobe_is_busy", scope: !1, file: !1, line: 275, type: !143, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1071 = !DILocation(line: 276, scope: !1070)
!1072 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !1074)
!1073 = distinct !DISubprogram(name: "trace_probe_test_flag", scope: !579, file: !579, line: 255, type: !143, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1074 = distinct !DILocation(line: 275, column: 9, scope: !1075, inlinedAt: !1076)
!1075 = distinct !DISubprogram(name: "trace_probe_is_enabled", scope: !579, file: !579, line: 273, type: !143, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1076 = distinct !DILocation(line: 279, column: 9, scope: !1070)
!1077 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !1074)
!1078 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !1074)
!1079 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !1074)
!1080 = !DILocation(line: 279, column: 2, scope: !1070)
!1081 = distinct !DISubprogram(name: "trace_uprobe_release", scope: !1, file: !1, line: 734, type: !143, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1082 = !DILocation(line: 735, scope: !1081)
!1083 = !DILocation(line: 391, column: 35, scope: !1084, inlinedAt: !1085)
!1084 = distinct !DISubprogram(name: "unregister_trace_uprobe", scope: !1, file: !1, line: 387, type: !143, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1085 = distinct !DILocation(line: 738, column: 9, scope: !1081)
!1086 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !1088)
!1087 = distinct !DISubprogram(name: "trace_probe_probe_list", scope: !579, file: !579, line: 308, type: !143, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1088 = distinct !DILocation(line: 315, column: 27, scope: !1089, inlinedAt: !1090)
!1089 = distinct !DISubprogram(name: "trace_probe_has_sibling", scope: !579, file: !579, line: 313, type: !143, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1090 = distinct !DILocation(line: 391, column: 6, scope: !1084, inlinedAt: !1085)
!1091 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !1088)
!1092 = !DILocation(line: 292, column: 9, scope: !1093, inlinedAt: !1094)
!1093 = distinct !DISubprogram(name: "list_empty", scope: !943, file: !943, line: 290, type: !143, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1094 = distinct !DILocation(line: 317, column: 10, scope: !1089, inlinedAt: !1090)
!1095 = !DILocation(line: 292, column: 31, scope: !1093, inlinedAt: !1094)
!1096 = !DILocation(line: 317, column: 27, scope: !1089, inlinedAt: !1090)
!1097 = !DILocation(line: 317, column: 48, scope: !1089, inlinedAt: !1090)
!1098 = !DILocation(line: 292, column: 9, scope: !1093, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 370, column: 10, scope: !1100, inlinedAt: !1101)
!1100 = distinct !DISubprogram(name: "list_is_singular", scope: !943, file: !943, line: 368, type: !143, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1101 = distinct !DILocation(line: 317, column: 31, scope: !1089, inlinedAt: !1090)
!1102 = !DILocation(line: 292, column: 31, scope: !1093, inlinedAt: !1099)
!1103 = !DILocation(line: 370, column: 27, scope: !1100, inlinedAt: !1101)
!1104 = !DILocation(line: 370, column: 31, scope: !1100, inlinedAt: !1101)
!1105 = !DILocation(line: 370, column: 51, scope: !1100, inlinedAt: !1101)
!1106 = !DILocation(line: 370, column: 42, scope: !1100, inlinedAt: !1101)
!1107 = !DILocation(line: 391, column: 6, scope: !1084, inlinedAt: !1085)
!1108 = !DILocation(line: 291, column: 21, scope: !865, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 395, column: 27, scope: !1084, inlinedAt: !1085)
!1110 = !DILocation(line: 395, column: 6, scope: !1084, inlinedAt: !1085)
!1111 = !DILocation(line: 396, column: 3, scope: !1084, inlinedAt: !1085)
!1112 = !DILocation(line: 323, column: 38, scope: !1113, inlinedAt: !1114)
!1113 = distinct !DISubprogram(name: "trace_probe_unregister_event_call", scope: !579, file: !579, line: 320, type: !143, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1114 = distinct !DILocation(line: 1572, column: 9, scope: !1115, inlinedAt: !1116)
!1115 = distinct !DISubprogram(name: "unregister_uprobe_event", scope: !1, file: !1, line: 1570, type: !143, scopeLine: 1571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1116 = distinct !DILocation(line: 398, column: 8, scope: !1084, inlinedAt: !1085)
!1117 = !DILocation(line: 323, column: 45, scope: !1113, inlinedAt: !1114)
!1118 = !DILocation(line: 323, column: 9, scope: !1113, inlinedAt: !1114)
!1119 = !DILocation(line: 399, column: 6, scope: !1084, inlinedAt: !1085)
!1120 = !DILocation(line: 400, column: 10, scope: !1084, inlinedAt: !1085)
!1121 = !DILocation(line: 400, column: 3, scope: !1084, inlinedAt: !1085)
!1122 = !DILocation(line: 0, scope: !1084, inlinedAt: !1085)
!1123 = !DILocation(line: 94, column: 2, scope: !1124, inlinedAt: !1125)
!1124 = distinct !DISubprogram(name: "dyn_event_remove", scope: !938, file: !938, line: 92, type: !143, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1125 = distinct !DILocation(line: 403, column: 2, scope: !1084, inlinedAt: !1085)
!1126 = !DILocation(line: 283, column: 9, scope: !1127, inlinedAt: !1129)
!1127 = distinct !DISubprogram(name: "lock_is_held", scope: !1128, file: !1128, line: 281, type: !143, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1128 = !DIFile(filename: "../include/linux/lockdep.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1129 = distinct !DILocation(line: 94, column: 2, scope: !1124, inlinedAt: !1125)
!1130 = !DILocation(line: 134, column: 7, scope: !1131, inlinedAt: !1132)
!1131 = distinct !DISubprogram(name: "__list_del_entry", scope: !943, file: !943, line: 132, type: !143, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1132 = distinct !DILocation(line: 206, column: 2, scope: !1133, inlinedAt: !1134)
!1133 = distinct !DISubprogram(name: "list_del_init", scope: !943, file: !943, line: 204, type: !143, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1134 = distinct !DILocation(line: 95, column: 2, scope: !1124, inlinedAt: !1125)
!1135 = !DILocation(line: 134, column: 6, scope: !1131, inlinedAt: !1132)
!1136 = !DILocation(line: 135, column: 3, scope: !1131, inlinedAt: !1132)
!1137 = !DILocation(line: 137, column: 13, scope: !1131, inlinedAt: !1132)
!1138 = !DILocation(line: 137, column: 20, scope: !1131, inlinedAt: !1132)
!1139 = !DILocation(line: 137, column: 33, scope: !1131, inlinedAt: !1132)
!1140 = !DILocation(line: 114, column: 8, scope: !1141, inlinedAt: !1142)
!1141 = distinct !DISubprogram(name: "__list_del", scope: !943, file: !943, line: 112, type: !143, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1142 = distinct !DILocation(line: 137, column: 2, scope: !1131, inlinedAt: !1132)
!1143 = !DILocation(line: 114, column: 13, scope: !1141, inlinedAt: !1142)
!1144 = !DILocation(line: 115, column: 2, scope: !1141, inlinedAt: !1142)
!1145 = !DILocation(line: 138, column: 1, scope: !1131, inlinedAt: !1132)
!1146 = !DILocation(line: 37, column: 2, scope: !942, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 207, column: 2, scope: !1133, inlinedAt: !1134)
!1148 = !DILocation(line: 38, column: 8, scope: !942, inlinedAt: !1147)
!1149 = !DILocation(line: 38, column: 13, scope: !942, inlinedAt: !1147)
!1150 = !DILocation(line: 404, column: 2, scope: !1084, inlinedAt: !1085)
!1151 = !DILocation(line: 364, column: 7, scope: !894, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 405, column: 2, scope: !1084, inlinedAt: !1085)
!1153 = !DILocation(line: 364, column: 6, scope: !894, inlinedAt: !1152)
!1154 = !DILocation(line: 365, column: 3, scope: !894, inlinedAt: !1152)
!1155 = !DILocation(line: 367, column: 12, scope: !894, inlinedAt: !1152)
!1156 = !DILocation(line: 367, column: 16, scope: !894, inlinedAt: !1152)
!1157 = !DILocation(line: 367, column: 2, scope: !894, inlinedAt: !1152)
!1158 = !DILocation(line: 368, column: 2, scope: !894, inlinedAt: !1152)
!1159 = !DILocation(line: 369, column: 12, scope: !894, inlinedAt: !1152)
!1160 = !DILocation(line: 369, column: 2, scope: !894, inlinedAt: !1152)
!1161 = !DILocation(line: 370, column: 2, scope: !894, inlinedAt: !1152)
!1162 = !DILocation(line: 371, column: 1, scope: !894, inlinedAt: !1152)
!1163 = !DILocation(line: 738, column: 2, scope: !1081)
!1164 = distinct !DISubprogram(name: "trace_uprobe_match", scope: !1, file: !1, line: 310, type: !143, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1165 = !DILocation(line: 312, scope: !1164)
!1166 = !DILocation(line: 315, column: 38, scope: !1164)
!1167 = !DILocation(line: 280, column: 31, scope: !784, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 315, column: 16, scope: !1164)
!1169 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 280, column: 9, scope: !784, inlinedAt: !1168)
!1171 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !1170)
!1172 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !1170)
!1173 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !1170)
!1174 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !1170)
!1175 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !1170)
!1176 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !1170)
!1177 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !1170)
!1178 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !1170)
!1179 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !1170)
!1180 = !DILocation(line: 0, scope: !729, inlinedAt: !1170)
!1181 = !DILocation(line: 315, column: 9, scope: !1164)
!1182 = !DILocation(line: 315, column: 50, scope: !1164)
!1183 = !DILocation(line: 315, column: 55, scope: !1164)
!1184 = !DILocation(line: 316, column: 7, scope: !1164)
!1185 = !DILocation(line: 316, column: 14, scope: !1164)
!1186 = !DILocation(line: 316, column: 48, scope: !1164)
!1187 = !DILocation(line: 285, column: 25, scope: !803, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 316, column: 24, scope: !1164)
!1189 = !DILocation(line: 285, column: 32, scope: !803, inlinedAt: !1188)
!1190 = !DILocation(line: 316, column: 17, scope: !1164)
!1191 = !DILocation(line: 316, column: 65, scope: !1164)
!1192 = !DILocation(line: 316, column: 71, scope: !1164)
!1193 = !DILocation(line: 317, column: 37, scope: !1164)
!1194 = !DILocation(line: 285, column: 2, scope: !1195, inlinedAt: !1196)
!1195 = distinct !DISubprogram(name: "trace_uprobe_match_command_head", scope: !1, file: !1, line: 282, type: !143, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1196 = distinct !DILocation(line: 317, column: 5, scope: !1164)
!1197 = !DILocation(line: 285, column: 7, scope: !1195, inlinedAt: !1196)
!1198 = !DILocation(line: 288, column: 7, scope: !1195, inlinedAt: !1196)
!1199 = !DILocation(line: 288, column: 6, scope: !1195, inlinedAt: !1196)
!1200 = !DILocation(line: 289, column: 3, scope: !1195, inlinedAt: !1196)
!1201 = !DILocation(line: 291, column: 15, scope: !1195, inlinedAt: !1196)
!1202 = !DILocation(line: 291, column: 19, scope: !1195, inlinedAt: !1196)
!1203 = !DILocation(line: 291, column: 8, scope: !1195, inlinedAt: !1196)
!1204 = !DILocation(line: 292, column: 28, scope: !1195, inlinedAt: !1196)
!1205 = !DILocation(line: 292, column: 6, scope: !1195, inlinedAt: !1196)
!1206 = !DILocation(line: 292, column: 42, scope: !1195, inlinedAt: !1196)
!1207 = !DILocation(line: 292, column: 45, scope: !1195, inlinedAt: !1196)
!1208 = !DILocation(line: 292, column: 58, scope: !1195, inlinedAt: !1196)
!1209 = !DILocation(line: 295, column: 10, scope: !1195, inlinedAt: !1196)
!1210 = !DILocation(line: 295, column: 25, scope: !1195, inlinedAt: !1196)
!1211 = !DILocation(line: 295, column: 6, scope: !1195, inlinedAt: !1196)
!1212 = !DILocation(line: 296, column: 12, scope: !1195, inlinedAt: !1196)
!1213 = !DILocation(line: 297, column: 36, scope: !1195, inlinedAt: !1196)
!1214 = !DILocation(line: 296, column: 3, scope: !1195, inlinedAt: !1196)
!1215 = !DILocation(line: 300, column: 36, scope: !1195, inlinedAt: !1196)
!1216 = !DILocation(line: 299, column: 3, scope: !1195, inlinedAt: !1196)
!1217 = !DILocation(line: 302, column: 19, scope: !1195, inlinedAt: !1196)
!1218 = !DILocation(line: 302, column: 31, scope: !1195, inlinedAt: !1196)
!1219 = !DILocation(line: 302, column: 6, scope: !1195, inlinedAt: !1196)
!1220 = !DILocation(line: 303, column: 3, scope: !1195, inlinedAt: !1196)
!1221 = !DILocation(line: 305, column: 6, scope: !1195, inlinedAt: !1196)
!1222 = !DILocation(line: 305, column: 14, scope: !1195, inlinedAt: !1196)
!1223 = !DILocation(line: 307, column: 9, scope: !1195, inlinedAt: !1196)
!1224 = !DILocation(line: 307, column: 2, scope: !1195, inlinedAt: !1196)
!1225 = !DILocation(line: 0, scope: !1195, inlinedAt: !1196)
!1226 = !DILocation(line: 308, column: 1, scope: !1195, inlinedAt: !1196)
!1227 = !DILocation(line: 0, scope: !1164)
!1228 = !DILocation(line: 315, column: 2, scope: !1164)
!1229 = distinct !DISubprogram(name: "__trace_uprobe_create", scope: !1, file: !1, line: 537, type: !143, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1230 = !DILocation(line: 538, scope: !1229)
!1231 = !DILocation(line: 540, column: 2, scope: !1229)
!1232 = !DILocation(line: 540, column: 14, scope: !1229)
!1233 = !DILocation(line: 540, column: 29, scope: !1229)
!1234 = !DILocation(line: 542, column: 2, scope: !1229)
!1235 = !DILocation(line: 542, column: 7, scope: !1229)
!1236 = !DILocation(line: 544, column: 2, scope: !1229)
!1237 = !DILocation(line: 544, column: 14, scope: !1229)
!1238 = !DILocation(line: 545, column: 2, scope: !1229)
!1239 = !DILocation(line: 545, column: 16, scope: !1229)
!1240 = !DILocation(line: 550, column: 17, scope: !1229)
!1241 = !DILocation(line: 552, column: 10, scope: !1229)
!1242 = !DILocation(line: 552, column: 2, scope: !1229)
!1243 = !DILocation(line: 554, column: 13, scope: !1229)
!1244 = !DILocation(line: 555, column: 3, scope: !1229)
!1245 = !DILocation(line: 559, column: 3, scope: !1229)
!1246 = !DILocation(line: 562, column: 11, scope: !1229)
!1247 = !DILocation(line: 562, column: 6, scope: !1229)
!1248 = !DILocation(line: 563, column: 3, scope: !1229)
!1249 = !DILocation(line: 565, column: 6, scope: !1229)
!1250 = !DILocation(line: 565, column: 17, scope: !1229)
!1251 = !DILocation(line: 566, column: 12, scope: !1229)
!1252 = !DILocation(line: 566, column: 9, scope: !1229)
!1253 = !DILocation(line: 566, column: 3, scope: !1229)
!1254 = !DILocation(line: 568, column: 14, scope: !1229)
!1255 = !DILocation(line: 568, column: 7, scope: !1229)
!1256 = !DILocation(line: 568, column: 6, scope: !1229)
!1257 = !DILocation(line: 569, column: 3, scope: !1229)
!1258 = !DILocation(line: 571, column: 13, scope: !1229)
!1259 = !DILocation(line: 572, column: 7, scope: !1229)
!1260 = !DILocation(line: 572, column: 6, scope: !1229)
!1261 = !DILocation(line: 573, column: 3, scope: !1229)
!1262 = !DILocation(line: 576, column: 8, scope: !1229)
!1263 = !DILocation(line: 577, column: 7, scope: !1229)
!1264 = !DILocation(line: 577, column: 11, scope: !1229)
!1265 = !DILocation(line: 577, column: 23, scope: !1229)
!1266 = !DILocation(line: 45, column: 13, scope: !1267, inlinedAt: !1269)
!1267 = distinct !DISubprogram(name: "isdigit", scope: !1268, file: !1268, line: 43, type: !143, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1268 = !DIFile(filename: "../include/linux/ctype.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1269 = distinct !DILocation(line: 577, column: 15, scope: !1229)
!1270 = !DILocation(line: 45, column: 18, scope: !1267, inlinedAt: !1269)
!1271 = !DILocation(line: 45, column: 21, scope: !1267, inlinedAt: !1269)
!1272 = !DILocation(line: 45, column: 23, scope: !1267, inlinedAt: !1269)
!1273 = !DILocation(line: 577, column: 6, scope: !1229)
!1274 = !DILocation(line: 578, column: 9, scope: !1229)
!1275 = !DILocation(line: 578, column: 3, scope: !1229)
!1276 = !DILocation(line: 579, column: 3, scope: !1229)
!1277 = !DILocation(line: 582, column: 2, scope: !1229)
!1278 = !DILocation(line: 583, column: 2, scope: !1229)
!1279 = !DILocation(line: 585, column: 9, scope: !1229)
!1280 = !DILocation(line: 586, column: 8, scope: !1229)
!1281 = !DILocation(line: 587, column: 6, scope: !1229)
!1282 = !DILocation(line: 588, column: 3, scope: !1229)
!1283 = !DILocation(line: 589, column: 3, scope: !1229)
!1284 = !DILocation(line: 590, column: 3, scope: !1229)
!1285 = !DILocation(line: 591, column: 3, scope: !1229)
!1286 = !DILocation(line: 593, column: 21, scope: !1229)
!1287 = !DILocation(line: 385, column: 17, scope: !830, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 420, column: 9, scope: !833, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 593, column: 7, scope: !1229)
!1290 = !DILocation(line: 385, column: 25, scope: !830, inlinedAt: !1288)
!1291 = !DILocation(line: 420, column: 32, scope: !833, inlinedAt: !1289)
!1292 = !DILocation(line: 593, column: 6, scope: !1229)
!1293 = !DILocation(line: 594, column: 3, scope: !1229)
!1294 = !DILocation(line: 596, column: 3, scope: !1229)
!1295 = !DILocation(line: 600, column: 9, scope: !1229)
!1296 = !DILocation(line: 601, column: 6, scope: !1229)
!1297 = !DILocation(line: 602, column: 14, scope: !1229)
!1298 = !DILocation(line: 603, column: 8, scope: !1229)
!1299 = !DILocation(line: 603, column: 7, scope: !1229)
!1300 = !DILocation(line: 604, column: 8, scope: !1229)
!1301 = !DILocation(line: 605, column: 22, scope: !1229)
!1302 = !DILocation(line: 605, column: 20, scope: !1229)
!1303 = !DILocation(line: 606, column: 4, scope: !1229)
!1304 = !DILocation(line: 608, column: 4, scope: !1229)
!1305 = !DILocation(line: 609, column: 14, scope: !1229)
!1306 = !DILocation(line: 609, column: 26, scope: !1229)
!1307 = !DILocation(line: 610, column: 8, scope: !1229)
!1308 = !DILocation(line: 611, column: 4, scope: !1229)
!1309 = !DILocation(line: 613, column: 4, scope: !1229)
!1310 = !DILocation(line: 616, column: 8, scope: !1229)
!1311 = !DILocation(line: 616, column: 11, scope: !1229)
!1312 = !DILocation(line: 617, column: 13, scope: !1229)
!1313 = !DILocation(line: 40, column: 10, scope: !1314, inlinedAt: !1316)
!1314 = distinct !DISubprogram(name: "kstrtoul", scope: !1315, file: !1315, line: 30, type: !143, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1315 = !DIFile(filename: "../include/linux/kstrtox.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1316 = distinct !DILocation(line: 618, column: 9, scope: !1229)
!1317 = !DILocation(line: 619, column: 7, scope: !1229)
!1318 = !DILocation(line: 620, column: 4, scope: !1229)
!1319 = !DILocation(line: 621, column: 4, scope: !1229)
!1320 = !DILocation(line: 623, column: 2, scope: !1229)
!1321 = !DILocation(line: 626, column: 8, scope: !1229)
!1322 = !DILocation(line: 627, column: 6, scope: !1229)
!1323 = !DILocation(line: 628, column: 8, scope: !1229)
!1324 = !DILocation(line: 628, column: 7, scope: !1229)
!1325 = !DILocation(line: 629, column: 9, scope: !1229)
!1326 = !DILocation(line: 636, column: 2, scope: !1229)
!1327 = !DILocation(line: 632, column: 4, scope: !1229)
!1328 = !DILocation(line: 634, column: 4, scope: !1229)
!1329 = !DILocation(line: 40, column: 10, scope: !1314, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 639, column: 8, scope: !1229)
!1331 = !DILocation(line: 640, column: 6, scope: !1229)
!1332 = !DILocation(line: 641, column: 3, scope: !1229)
!1333 = !DILocation(line: 642, column: 3, scope: !1229)
!1334 = !DILocation(line: 646, column: 2, scope: !1229)
!1335 = !DILocation(line: 647, column: 6, scope: !1229)
!1336 = !DILocation(line: 649, column: 17, scope: !1229)
!1337 = !DILocation(line: 649, column: 15, scope: !1229)
!1338 = !DILocation(line: 648, column: 9, scope: !1229)
!1339 = !DILocation(line: 650, column: 7, scope: !1229)
!1340 = !DILocation(line: 651, column: 4, scope: !1229)
!1341 = !DILocation(line: 656, column: 18, scope: !1229)
!1342 = !DILocation(line: 656, column: 10, scope: !1229)
!1343 = !DILocation(line: 657, column: 8, scope: !1229)
!1344 = !DILocation(line: 657, column: 7, scope: !1229)
!1345 = !DILocation(line: 662, column: 9, scope: !1229)
!1346 = !DILocation(line: 663, column: 7, scope: !1229)
!1347 = !DILocation(line: 664, column: 5, scope: !1229)
!1348 = !DILocation(line: 664, column: 9, scope: !1229)
!1349 = !DILocation(line: 664, column: 4, scope: !1229)
!1350 = !DILocation(line: 658, column: 8, scope: !1229)
!1351 = !DILocation(line: 666, column: 12, scope: !1229)
!1352 = !DILocation(line: 666, column: 63, scope: !1229)
!1353 = !DILocation(line: 666, column: 3, scope: !1229)
!1354 = !DILocation(line: 667, column: 9, scope: !1229)
!1355 = !DILocation(line: 668, column: 3, scope: !1229)
!1356 = !DILocation(line: 671, column: 7, scope: !1229)
!1357 = !DILocation(line: 672, column: 7, scope: !1229)
!1358 = !DILocation(line: 674, column: 26, scope: !1229)
!1359 = !DILocation(line: 674, column: 33, scope: !1229)
!1360 = !DILocation(line: 674, column: 7, scope: !1229)
!1361 = !DILocation(line: 36, column: 9, scope: !842, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 675, column: 6, scope: !1229)
!1363 = !DILocation(line: 675, column: 6, scope: !1229)
!1364 = !DILocation(line: 31, column: 9, scope: !847, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 676, column: 9, scope: !1229)
!1366 = !DILocation(line: 678, column: 3, scope: !1229)
!1367 = !DILocation(line: 679, column: 3, scope: !1229)
!1368 = !DILocation(line: 681, column: 15, scope: !1229)
!1369 = !DILocation(line: 681, column: 6, scope: !1229)
!1370 = !DILocation(line: 681, column: 13, scope: !1229)
!1371 = !DILocation(line: 682, column: 23, scope: !1229)
!1372 = !DILocation(line: 682, column: 6, scope: !1229)
!1373 = !DILocation(line: 682, column: 21, scope: !1229)
!1374 = !DILocation(line: 683, column: 6, scope: !1229)
!1375 = !DILocation(line: 683, column: 13, scope: !1229)
!1376 = !DILocation(line: 684, column: 6, scope: !1229)
!1377 = !DILocation(line: 684, column: 15, scope: !1229)
!1378 = !DILocation(line: 687, column: 16, scope: !1229)
!1379 = !DILocation(line: 687, column: 23, scope: !1229)
!1380 = !DILocation(line: 687, column: 26, scope: !1229)
!1381 = !DILocation(line: 687, column: 28, scope: !1229)
!1382 = !DILocation(line: 687, column: 2, scope: !1229)
!1383 = !DILocation(line: 688, column: 31, scope: !1229)
!1384 = !DILocation(line: 688, column: 3, scope: !1229)
!1385 = !DILocation(line: 689, column: 48, scope: !1229)
!1386 = !DILocation(line: 689, column: 9, scope: !1229)
!1387 = !DILocation(line: 691, column: 7, scope: !1229)
!1388 = !DILocation(line: 692, column: 4, scope: !1229)
!1389 = !DILocation(line: 693, column: 2, scope: !1229)
!1390 = !DILocation(line: 687, column: 47, scope: !1229)
!1391 = distinct !{!1391, !1382, !1389}
!1392 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 695, column: 10, scope: !1229)
!1394 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1393)
!1395 = !DILocation(line: 695, column: 10, scope: !1229)
!1396 = !DILocation(line: 696, column: 38, scope: !1229)
!1397 = !DILocation(line: 696, column: 8, scope: !1229)
!1398 = !DILocation(line: 697, column: 10, scope: !1229)
!1399 = !DILocation(line: 697, column: 6, scope: !1229)
!1400 = !DILocation(line: 698, column: 3, scope: !1229)
!1401 = !DILocation(line: 700, column: 8, scope: !1229)
!1402 = !DILocation(line: 701, column: 7, scope: !1229)
!1403 = !DILocation(line: 701, column: 6, scope: !1229)
!1404 = !DILocation(line: 702, column: 3, scope: !1229)
!1405 = !DILocation(line: 0, scope: !1229)
!1406 = !DILocation(line: 705, column: 2, scope: !1229)
!1407 = !DILocation(line: 707, column: 2, scope: !1229)
!1408 = !DILocation(line: 708, column: 2, scope: !1229)
!1409 = !DILocation(line: 711, column: 2, scope: !1229)
!1410 = !DILocation(line: 712, column: 2, scope: !1229)
!1411 = !DILocation(line: 713, column: 2, scope: !1229)
!1412 = !DILocation(line: 715, column: 2, scope: !1229)
!1413 = !DILocation(line: 716, column: 1, scope: !1229)
!1414 = distinct !DISubprogram(name: "kbasename", scope: !1415, file: !1415, line: 246, type: !143, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1415 = !DIFile(filename: "../include/linux/string.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1416 = !DILocation(line: 247, scope: !1414)
!1417 = !DILocation(line: 248, column: 21, scope: !1414)
!1418 = !DILocation(line: 249, column: 9, scope: !1414)
!1419 = !DILocation(line: 249, column: 16, scope: !1414)
!1420 = !DILocation(line: 249, column: 21, scope: !1414)
!1421 = !DILocation(line: 249, column: 27, scope: !1414)
!1422 = !DILocation(line: 249, column: 2, scope: !1414)
!1423 = distinct !DISubprogram(name: "register_trace_uprobe", scope: !1, file: !1, line: 490, type: !143, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1424 = !DILocation(line: 491, scope: !1423)
!1425 = !DILocation(line: 495, column: 2, scope: !1423)
!1426 = !DILocation(line: 476, column: 51, scope: !1427, inlinedAt: !1428)
!1427 = distinct !DISubprogram(name: "validate_ref_ctr_offset", scope: !1, file: !1, line: 472, type: !143, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1428 = distinct !DILocation(line: 497, column: 8, scope: !1423)
!1429 = !DILocation(line: 576, column: 6, scope: !1430, inlinedAt: !1431)
!1430 = distinct !DISubprogram(name: "d_real", scope: !831, file: !831, line: 573, type: !143, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1431 = distinct !DILocation(line: 592, column: 25, scope: !1432, inlinedAt: !1433)
!1432 = distinct !DISubprogram(name: "d_real_inode", scope: !831, file: !831, line: 589, type: !143, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1433 = distinct !DILocation(line: 476, column: 28, scope: !1427, inlinedAt: !1428)
!1434 = !DILocation(line: 577, column: 10, scope: !1430, inlinedAt: !1431)
!1435 = !DILocation(line: 577, column: 18, scope: !1430, inlinedAt: !1431)
!1436 = !DILocation(line: 577, column: 24, scope: !1430, inlinedAt: !1431)
!1437 = !DILocation(line: 577, column: 3, scope: !1430, inlinedAt: !1431)
!1438 = !DILocation(line: 579, column: 10, scope: !1430, inlinedAt: !1431)
!1439 = !DILocation(line: 579, column: 3, scope: !1430, inlinedAt: !1431)
!1440 = !DILocation(line: 0, scope: !1430, inlinedAt: !1431)
!1441 = !DILocation(line: 543, column: 31, scope: !1442, inlinedAt: !1443)
!1442 = distinct !DISubprogram(name: "d_backing_inode", scope: !831, file: !831, line: 541, type: !143, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1443 = distinct !DILocation(line: 592, column: 9, scope: !1432, inlinedAt: !1433)
!1444 = !DILocation(line: 478, column: 2, scope: !1427, inlinedAt: !1428)
!1445 = !DILocation(line: 70, column: 13, scope: !780, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 478, column: 2, scope: !1427, inlinedAt: !1428)
!1447 = !DILocation(line: 70, column: 17, scope: !780, inlinedAt: !1446)
!1448 = !DILocation(line: 479, column: 43, scope: !1427, inlinedAt: !1428)
!1449 = !DILocation(line: 576, column: 6, scope: !1430, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 592, column: 25, scope: !1432, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 479, column: 20, scope: !1427, inlinedAt: !1428)
!1452 = !DILocation(line: 577, column: 10, scope: !1430, inlinedAt: !1450)
!1453 = !DILocation(line: 577, column: 18, scope: !1430, inlinedAt: !1450)
!1454 = !DILocation(line: 577, column: 24, scope: !1430, inlinedAt: !1450)
!1455 = !DILocation(line: 577, column: 3, scope: !1430, inlinedAt: !1450)
!1456 = !DILocation(line: 579, column: 10, scope: !1430, inlinedAt: !1450)
!1457 = !DILocation(line: 579, column: 3, scope: !1430, inlinedAt: !1450)
!1458 = !DILocation(line: 0, scope: !1430, inlinedAt: !1450)
!1459 = !DILocation(line: 543, column: 31, scope: !1442, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 592, column: 9, scope: !1432, inlinedAt: !1451)
!1461 = !DILocation(line: 479, column: 17, scope: !1427, inlinedAt: !1428)
!1462 = !DILocation(line: 479, column: 51, scope: !1427, inlinedAt: !1428)
!1463 = !DILocation(line: 480, column: 7, scope: !1427, inlinedAt: !1428)
!1464 = !DILocation(line: 480, column: 12, scope: !1427, inlinedAt: !1428)
!1465 = !DILocation(line: 480, column: 27, scope: !1427, inlinedAt: !1428)
!1466 = !DILocation(line: 480, column: 19, scope: !1427, inlinedAt: !1428)
!1467 = !DILocation(line: 480, column: 34, scope: !1427, inlinedAt: !1428)
!1468 = !DILocation(line: 481, column: 7, scope: !1427, inlinedAt: !1428)
!1469 = !DILocation(line: 481, column: 12, scope: !1427, inlinedAt: !1428)
!1470 = !DILocation(line: 481, column: 35, scope: !1427, inlinedAt: !1428)
!1471 = !DILocation(line: 481, column: 27, scope: !1427, inlinedAt: !1428)
!1472 = !DILocation(line: 479, column: 7, scope: !1427, inlinedAt: !1428)
!1473 = !DILocation(line: 485, column: 2, scope: !1427, inlinedAt: !1428)
!1474 = distinct !{!1474, !1444, !1473}
!1475 = !DILocation(line: 482, column: 4, scope: !1427, inlinedAt: !1428)
!1476 = !DILocation(line: 499, column: 3, scope: !1423)
!1477 = !DILocation(line: 486, column: 2, scope: !1427, inlinedAt: !1428)
!1478 = !DILocation(line: 502, column: 50, scope: !1423)
!1479 = !DILocation(line: 280, column: 31, scope: !784, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 502, column: 28, scope: !1423)
!1481 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 280, column: 9, scope: !784, inlinedAt: !1480)
!1483 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !1482)
!1484 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !1482)
!1485 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !1482)
!1486 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !1482)
!1487 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !1482)
!1488 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !1482)
!1489 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !1482)
!1490 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !1482)
!1491 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !1482)
!1492 = !DILocation(line: 0, scope: !729, inlinedAt: !1482)
!1493 = !DILocation(line: 285, column: 13, scope: !803, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 503, column: 7, scope: !1423)
!1495 = !DILocation(line: 285, column: 25, scope: !803, inlinedAt: !1494)
!1496 = !DILocation(line: 285, column: 32, scope: !803, inlinedAt: !1494)
!1497 = !DILocation(line: 502, column: 11, scope: !1423)
!1498 = !DILocation(line: 504, column: 6, scope: !1423)
!1499 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 505, column: 7, scope: !1423)
!1501 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1500)
!1502 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 505, column: 27, scope: !1423)
!1504 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1503)
!1505 = !DILocation(line: 505, column: 24, scope: !1423)
!1506 = !DILocation(line: 505, column: 7, scope: !1423)
!1507 = !DILocation(line: 506, column: 4, scope: !1423)
!1508 = !DILocation(line: 507, column: 4, scope: !1423)
!1509 = !DILocation(line: 509, column: 3, scope: !1423)
!1510 = !DILocation(line: 510, column: 30, scope: !1423)
!1511 = !DILocation(line: 442, column: 51, scope: !1512, inlinedAt: !1513)
!1512 = distinct !DISubprogram(name: "append_trace_uprobe", scope: !1, file: !1, line: 438, type: !143, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1513 = distinct !DILocation(line: 510, column: 10, scope: !1423)
!1514 = !DILocation(line: 442, column: 8, scope: !1512, inlinedAt: !1513)
!1515 = !DILocation(line: 443, column: 6, scope: !1512, inlinedAt: !1513)
!1516 = !DILocation(line: 445, column: 29, scope: !1512, inlinedAt: !1513)
!1517 = !DILocation(line: 445, column: 33, scope: !1512, inlinedAt: !1513)
!1518 = !DILocation(line: 445, column: 3, scope: !1512, inlinedAt: !1513)
!1519 = !DILocation(line: 446, column: 3, scope: !1512, inlinedAt: !1513)
!1520 = !DILocation(line: 447, column: 3, scope: !1512, inlinedAt: !1513)
!1521 = !DILocation(line: 412, column: 43, scope: !1522, inlinedAt: !1523)
!1522 = distinct !DISubprogram(name: "trace_uprobe_has_same_uprobe", scope: !1, file: !1, line: 409, type: !143, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1523 = distinct !DILocation(line: 449, column: 6, scope: !1512, inlinedAt: !1513)
!1524 = !DILocation(line: 413, column: 53, scope: !1522, inlinedAt: !1523)
!1525 = !DILocation(line: 576, column: 6, scope: !1430, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 592, column: 25, scope: !1432, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 413, column: 29, scope: !1522, inlinedAt: !1523)
!1528 = !DILocation(line: 577, column: 10, scope: !1430, inlinedAt: !1526)
!1529 = !DILocation(line: 577, column: 18, scope: !1430, inlinedAt: !1526)
!1530 = !DILocation(line: 577, column: 24, scope: !1430, inlinedAt: !1526)
!1531 = !DILocation(line: 577, column: 3, scope: !1430, inlinedAt: !1526)
!1532 = !DILocation(line: 579, column: 10, scope: !1430, inlinedAt: !1526)
!1533 = !DILocation(line: 579, column: 3, scope: !1430, inlinedAt: !1526)
!1534 = !DILocation(line: 0, scope: !1430, inlinedAt: !1526)
!1535 = !DILocation(line: 543, column: 31, scope: !1442, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 592, column: 9, scope: !1432, inlinedAt: !1527)
!1537 = !DILocation(line: 416, column: 2, scope: !1522, inlinedAt: !1523)
!1538 = !DILocation(line: 417, column: 45, scope: !1522, inlinedAt: !1523)
!1539 = !DILocation(line: 576, column: 6, scope: !1430, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 592, column: 25, scope: !1432, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 417, column: 21, scope: !1522, inlinedAt: !1523)
!1542 = !DILocation(line: 577, column: 10, scope: !1430, inlinedAt: !1540)
!1543 = !DILocation(line: 577, column: 18, scope: !1430, inlinedAt: !1540)
!1544 = !DILocation(line: 577, column: 24, scope: !1430, inlinedAt: !1540)
!1545 = !DILocation(line: 577, column: 3, scope: !1430, inlinedAt: !1540)
!1546 = !DILocation(line: 579, column: 10, scope: !1430, inlinedAt: !1540)
!1547 = !DILocation(line: 579, column: 3, scope: !1430, inlinedAt: !1540)
!1548 = !DILocation(line: 0, scope: !1430, inlinedAt: !1540)
!1549 = !DILocation(line: 543, column: 31, scope: !1442, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 592, column: 9, scope: !1432, inlinedAt: !1541)
!1551 = !DILocation(line: 417, column: 18, scope: !1522, inlinedAt: !1523)
!1552 = !DILocation(line: 417, column: 53, scope: !1522, inlinedAt: !1523)
!1553 = !DILocation(line: 418, column: 7, scope: !1522, inlinedAt: !1523)
!1554 = !DILocation(line: 418, column: 13, scope: !1522, inlinedAt: !1523)
!1555 = !DILocation(line: 418, column: 29, scope: !1522, inlinedAt: !1523)
!1556 = !DILocation(line: 418, column: 20, scope: !1522, inlinedAt: !1523)
!1557 = !DILocation(line: 417, column: 7, scope: !1522, inlinedAt: !1523)
!1558 = !DILocation(line: 425, column: 28, scope: !1522, inlinedAt: !1523)
!1559 = !DILocation(line: 425, column: 17, scope: !1522, inlinedAt: !1523)
!1560 = !DILocation(line: 425, column: 3, scope: !1522, inlinedAt: !1523)
!1561 = !DILocation(line: 426, column: 32, scope: !1522, inlinedAt: !1523)
!1562 = !DILocation(line: 427, column: 8, scope: !1522, inlinedAt: !1523)
!1563 = !DILocation(line: 427, column: 25, scope: !1522, inlinedAt: !1523)
!1564 = !DILocation(line: 426, column: 8, scope: !1522, inlinedAt: !1523)
!1565 = !DILocation(line: 428, column: 5, scope: !1522, inlinedAt: !1523)
!1566 = !DILocation(line: 429, column: 3, scope: !1522, inlinedAt: !1523)
!1567 = !DILocation(line: 425, column: 38, scope: !1522, inlinedAt: !1523)
!1568 = distinct !{!1568, !1560, !1566}
!1569 = !DILocation(line: 431, column: 21, scope: !1522, inlinedAt: !1523)
!1570 = !DILocation(line: 431, column: 9, scope: !1522, inlinedAt: !1523)
!1571 = !DILocation(line: 431, column: 7, scope: !1522, inlinedAt: !1523)
!1572 = !DILocation(line: 0, scope: !1522, inlinedAt: !1523)
!1573 = distinct !{!1573, !1537, !1574}
!1574 = !DILocation(line: 433, column: 2, scope: !1522, inlinedAt: !1523)
!1575 = !DILocation(line: 432, column: 4, scope: !1522, inlinedAt: !1523)
!1576 = !DILocation(line: 450, column: 3, scope: !1512, inlinedAt: !1513)
!1577 = !DILocation(line: 451, column: 3, scope: !1512, inlinedAt: !1513)
!1578 = !DILocation(line: 452, column: 3, scope: !1512, inlinedAt: !1513)
!1579 = !DILocation(line: 435, column: 2, scope: !1522, inlinedAt: !1523)
!1580 = !DILocation(line: 456, column: 8, scope: !1512, inlinedAt: !1513)
!1581 = !DILocation(line: 457, column: 7, scope: !1512, inlinedAt: !1513)
!1582 = !DILocation(line: 457, column: 6, scope: !1512, inlinedAt: !1513)
!1583 = !DILocation(line: 458, column: 18, scope: !1512, inlinedAt: !1513)
!1584 = !DILocation(line: 291, column: 14, scope: !865, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 458, column: 30, scope: !1512, inlinedAt: !1513)
!1586 = !DILocation(line: 82, column: 2, scope: !1587, inlinedAt: !1588)
!1587 = distinct !DISubprogram(name: "dyn_event_add", scope: !938, file: !938, line: 79, type: !143, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1588 = distinct !DILocation(line: 458, column: 3, scope: !1512, inlinedAt: !1513)
!1589 = !DILocation(line: 283, column: 9, scope: !1127, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 82, column: 2, scope: !1587, inlinedAt: !1588)
!1591 = !DILocation(line: 84, column: 7, scope: !1587, inlinedAt: !1588)
!1592 = !DILocation(line: 84, column: 10, scope: !1587, inlinedAt: !1588)
!1593 = !DILocation(line: 84, column: 14, scope: !1587, inlinedAt: !1588)
!1594 = !DILocation(line: 84, column: 18, scope: !1587, inlinedAt: !1588)
!1595 = !DILocation(line: 84, column: 6, scope: !1587, inlinedAt: !1588)
!1596 = !DILocation(line: 85, column: 3, scope: !1587, inlinedAt: !1588)
!1597 = !DILocation(line: 87, column: 2, scope: !1587, inlinedAt: !1588)
!1598 = !DILocation(line: 87, column: 8, scope: !1587, inlinedAt: !1588)
!1599 = !DILocation(line: 87, column: 14, scope: !1587, inlinedAt: !1588)
!1600 = !DILocation(line: 102, column: 24, scope: !1601, inlinedAt: !1602)
!1601 = distinct !DISubprogram(name: "list_add_tail", scope: !943, file: !943, line: 100, type: !143, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1602 = distinct !DILocation(line: 88, column: 2, scope: !1587, inlinedAt: !1588)
!1603 = !DILocation(line: 69, column: 7, scope: !1604, inlinedAt: !1605)
!1604 = distinct !DISubprogram(name: "__list_add", scope: !943, file: !943, line: 65, type: !143, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1605 = distinct !DILocation(line: 102, column: 2, scope: !1601, inlinedAt: !1602)
!1606 = !DILocation(line: 69, column: 6, scope: !1604, inlinedAt: !1605)
!1607 = !DILocation(line: 72, column: 13, scope: !1604, inlinedAt: !1605)
!1608 = !DILocation(line: 73, column: 12, scope: !1604, inlinedAt: !1605)
!1609 = !DILocation(line: 74, column: 7, scope: !1604, inlinedAt: !1605)
!1610 = !DILocation(line: 74, column: 12, scope: !1604, inlinedAt: !1605)
!1611 = !DILocation(line: 75, column: 2, scope: !1604, inlinedAt: !1605)
!1612 = !DILocation(line: 0, scope: !1604, inlinedAt: !1605)
!1613 = !DILocation(line: 89, column: 2, scope: !1587, inlinedAt: !1588)
!1614 = !DILocation(line: 460, column: 9, scope: !1512, inlinedAt: !1513)
!1615 = !DILocation(line: 460, column: 2, scope: !1512, inlinedAt: !1513)
!1616 = !DILocation(line: 291, column: 14, scope: !865, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 1555, column: 34, scope: !867, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 1565, column: 2, scope: !1619, inlinedAt: !1620)
!1619 = distinct !DISubprogram(name: "register_uprobe_event", scope: !1, file: !1, line: 1563, type: !143, scopeLine: 1564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1620 = distinct !DILocation(line: 515, column: 8, scope: !1423)
!1621 = !DILocation(line: 1556, column: 14, scope: !867, inlinedAt: !1618)
!1622 = !DILocation(line: 1556, column: 20, scope: !867, inlinedAt: !1618)
!1623 = !DILocation(line: 1557, column: 8, scope: !867, inlinedAt: !1618)
!1624 = !DILocation(line: 1557, column: 15, scope: !867, inlinedAt: !1618)
!1625 = !DILocation(line: 1557, column: 28, scope: !867, inlinedAt: !1618)
!1626 = !DILocation(line: 1559, column: 8, scope: !867, inlinedAt: !1618)
!1627 = !DILocation(line: 1559, column: 14, scope: !867, inlinedAt: !1618)
!1628 = !DILocation(line: 1560, column: 8, scope: !867, inlinedAt: !1618)
!1629 = !DILocation(line: 1560, column: 15, scope: !867, inlinedAt: !1618)
!1630 = !DILocation(line: 1560, column: 19, scope: !867, inlinedAt: !1618)
!1631 = !DILocation(line: 1567, column: 9, scope: !1619, inlinedAt: !1620)
!1632 = !DILocation(line: 516, column: 6, scope: !1423)
!1633 = !DILocation(line: 518, column: 4, scope: !1423)
!1634 = !DILocation(line: 519, column: 4, scope: !1423)
!1635 = !DILocation(line: 520, column: 3, scope: !1423)
!1636 = !DILocation(line: 521, column: 4, scope: !1423)
!1637 = !DILocation(line: 525, column: 17, scope: !1423)
!1638 = !DILocation(line: 291, column: 14, scope: !865, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 525, column: 29, scope: !1423)
!1640 = !DILocation(line: 82, column: 2, scope: !1587, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 525, column: 2, scope: !1423)
!1642 = !DILocation(line: 283, column: 9, scope: !1127, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 82, column: 2, scope: !1587, inlinedAt: !1641)
!1644 = !DILocation(line: 84, column: 7, scope: !1587, inlinedAt: !1641)
!1645 = !DILocation(line: 84, column: 10, scope: !1587, inlinedAt: !1641)
!1646 = !DILocation(line: 84, column: 14, scope: !1587, inlinedAt: !1641)
!1647 = !DILocation(line: 84, column: 18, scope: !1587, inlinedAt: !1641)
!1648 = !DILocation(line: 84, column: 6, scope: !1587, inlinedAt: !1641)
!1649 = !DILocation(line: 85, column: 3, scope: !1587, inlinedAt: !1641)
!1650 = !DILocation(line: 87, column: 2, scope: !1587, inlinedAt: !1641)
!1651 = !DILocation(line: 87, column: 8, scope: !1587, inlinedAt: !1641)
!1652 = !DILocation(line: 87, column: 14, scope: !1587, inlinedAt: !1641)
!1653 = !DILocation(line: 102, column: 24, scope: !1601, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 88, column: 2, scope: !1587, inlinedAt: !1641)
!1655 = !DILocation(line: 69, column: 7, scope: !1604, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 102, column: 2, scope: !1601, inlinedAt: !1654)
!1657 = !DILocation(line: 69, column: 6, scope: !1604, inlinedAt: !1656)
!1658 = !DILocation(line: 72, column: 13, scope: !1604, inlinedAt: !1656)
!1659 = !DILocation(line: 73, column: 12, scope: !1604, inlinedAt: !1656)
!1660 = !DILocation(line: 74, column: 7, scope: !1604, inlinedAt: !1656)
!1661 = !DILocation(line: 74, column: 12, scope: !1604, inlinedAt: !1656)
!1662 = !DILocation(line: 75, column: 2, scope: !1604, inlinedAt: !1656)
!1663 = !DILocation(line: 0, scope: !1604, inlinedAt: !1656)
!1664 = !DILocation(line: 89, column: 2, scope: !1587, inlinedAt: !1641)
!1665 = !DILocation(line: 0, scope: !1423)
!1666 = !DILocation(line: 528, column: 2, scope: !1423)
!1667 = !DILocation(line: 530, column: 2, scope: !1423)
!1668 = distinct !DISubprogram(name: "uprobe_dispatcher", scope: !1, file: !1, line: 1471, type: !143, scopeLine: 1472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1669 = !DILocation(line: 1472, scope: !1668)
!1670 = !DILocation(line: 1474, column: 2, scope: !1668)
!1671 = !DILocation(line: 1474, column: 30, scope: !1668)
!1672 = !DILocation(line: 1480, column: 7, scope: !1668)
!1673 = !DILocation(line: 1481, column: 6, scope: !1668)
!1674 = !DILocation(line: 1481, column: 10, scope: !1668)
!1675 = !DILocation(line: 1483, column: 9, scope: !1668)
!1676 = !DILocation(line: 1484, column: 16, scope: !1668)
!1677 = !DILocation(line: 1484, column: 14, scope: !1668)
!1678 = !DILocation(line: 1486, column: 26, scope: !1668)
!1679 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 1486, column: 2, scope: !1668)
!1681 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !1680)
!1682 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !1680)
!1683 = !DILocation(line: 1486, column: 2, scope: !1668)
!1684 = !DILocation(line: 1486, column: 11, scope: !1668)
!1685 = !DILocation(line: 1486, column: 18, scope: !1668)
!1686 = !DILocation(line: 1486, column: 24, scope: !1668)
!1687 = !DILocation(line: 1488, column: 6, scope: !1668)
!1688 = !DILocation(line: 1489, column: 3, scope: !1668)
!1689 = !DILocation(line: 1491, column: 27, scope: !1668)
!1690 = !DILocation(line: 177, column: 22, scope: !1691, inlinedAt: !1692)
!1691 = distinct !DISubprogram(name: "__get_data_size", scope: !283, file: !283, line: 172, type: !143, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1692 = distinct !DILocation(line: 1491, column: 10, scope: !1668)
!1693 = !DILocation(line: 177, column: 16, scope: !1691, inlinedAt: !1692)
!1694 = !DILocation(line: 177, column: 2, scope: !1691, inlinedAt: !1692)
!1695 = !DILocation(line: 179, column: 7, scope: !1691, inlinedAt: !1692)
!1696 = !{i8 0, i8 2}
!1697 = !DILocation(line: 178, column: 18, scope: !1691, inlinedAt: !1692)
!1698 = !DILocation(line: 180, column: 34, scope: !1691, inlinedAt: !1692)
!1699 = !DILocation(line: 180, column: 10, scope: !1691, inlinedAt: !1692)
!1700 = !DILocation(line: 181, column: 12, scope: !1691, inlinedAt: !1692)
!1701 = !DILocation(line: 181, column: 8, scope: !1691, inlinedAt: !1692)
!1702 = !DILocation(line: 182, column: 12, scope: !1691, inlinedAt: !1692)
!1703 = !DILocation(line: 182, column: 9, scope: !1691, inlinedAt: !1692)
!1704 = !DILocation(line: 182, column: 5, scope: !1691, inlinedAt: !1692)
!1705 = !DILocation(line: 0, scope: !1691, inlinedAt: !1692)
!1706 = !DILocation(line: 183, column: 3, scope: !1691, inlinedAt: !1692)
!1707 = !DILocation(line: 177, column: 32, scope: !1691, inlinedAt: !1692)
!1708 = distinct !{!1708, !1694, !1709}
!1709 = !DILocation(line: 184, column: 2, scope: !1691, inlinedAt: !1692)
!1710 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 1492, column: 10, scope: !1668)
!1712 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1711)
!1713 = !DILocation(line: 1492, column: 10, scope: !1668)
!1714 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 928, column: 8, scope: !1716, inlinedAt: !1717)
!1716 = distinct !DISubprogram(name: "uprobe_buffer_get", scope: !1, file: !1, line: 923, type: !143, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1717 = distinct !DILocation(line: 1494, column: 8, scope: !1668)
!1718 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !1715)
!1719 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !1715)
!1720 = !DILocation(line: 928, column: 8, scope: !1716, inlinedAt: !1717)
!1721 = !DILocation(line: 929, column: 8, scope: !1716, inlinedAt: !1717)
!1722 = !DILocation(line: 935, column: 2, scope: !1716, inlinedAt: !1717)
!1723 = !DILocation(line: 1495, column: 24, scope: !1668)
!1724 = !DILocation(line: 195, column: 20, scope: !1725, inlinedAt: !1726)
!1725 = distinct !DISubprogram(name: "store_trace_args", scope: !283, file: !283, line: 191, type: !143, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1726 = distinct !DILocation(line: 1495, column: 2, scope: !1668)
!1727 = !DILocation(line: 200, column: 22, scope: !1725, inlinedAt: !1726)
!1728 = !DILocation(line: 200, column: 16, scope: !1725, inlinedAt: !1726)
!1729 = !DILocation(line: 200, column: 2, scope: !1725, inlinedAt: !1726)
!1730 = !DILocation(line: 196, column: 29, scope: !1725, inlinedAt: !1726)
!1731 = !DILocation(line: 196, column: 23, scope: !1725, inlinedAt: !1726)
!1732 = !DILocation(line: 201, column: 18, scope: !1725, inlinedAt: !1726)
!1733 = !DILocation(line: 202, column: 20, scope: !1725, inlinedAt: !1726)
!1734 = !DILocation(line: 202, column: 13, scope: !1725, inlinedAt: !1726)
!1735 = !DILocation(line: 204, column: 7, scope: !1725, inlinedAt: !1726)
!1736 = !DILocation(line: 205, column: 10, scope: !1725, inlinedAt: !1726)
!1737 = !DILocation(line: 205, column: 8, scope: !1725, inlinedAt: !1726)
!1738 = !DILocation(line: 205, column: 4, scope: !1725, inlinedAt: !1726)
!1739 = !DILocation(line: 206, column: 33, scope: !1725, inlinedAt: !1726)
!1740 = !DILocation(line: 206, column: 9, scope: !1725, inlinedAt: !1726)
!1741 = !DILocation(line: 207, column: 7, scope: !1725, inlinedAt: !1726)
!1742 = !DILocation(line: 208, column: 10, scope: !1725, inlinedAt: !1726)
!1743 = !DILocation(line: 208, column: 8, scope: !1725, inlinedAt: !1726)
!1744 = !DILocation(line: 209, column: 3, scope: !1725, inlinedAt: !1726)
!1745 = !DILocation(line: 210, column: 15, scope: !1725, inlinedAt: !1726)
!1746 = !DILocation(line: 210, column: 12, scope: !1725, inlinedAt: !1726)
!1747 = !DILocation(line: 211, column: 11, scope: !1725, inlinedAt: !1726)
!1748 = !DILocation(line: 0, scope: !1725, inlinedAt: !1726)
!1749 = !DILocation(line: 200, column: 32, scope: !1725, inlinedAt: !1726)
!1750 = distinct !{!1750, !1729, !1751}
!1751 = !DILocation(line: 213, column: 2, scope: !1725, inlinedAt: !1726)
!1752 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 1497, column: 6, scope: !1668)
!1754 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !1753)
!1755 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !1753)
!1756 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !1753)
!1757 = !DILocation(line: 1497, column: 6, scope: !1668)
!1758 = !DILocation(line: 1498, column: 28, scope: !1668)
!1759 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 990, column: 6, scope: !1761, inlinedAt: !1762)
!1761 = distinct !DISubprogram(name: "uprobe_trace_func", scope: !1, file: !1, line: 985, type: !143, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1762 = distinct !DILocation(line: 1498, column: 10, scope: !1668)
!1763 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1760)
!1764 = !DILocation(line: 990, column: 6, scope: !1761, inlinedAt: !1762)
!1765 = !DILocation(line: 991, column: 3, scope: !1761, inlinedAt: !1762)
!1766 = !DILocation(line: 692, column: 2, scope: !1767, inlinedAt: !1769)
!1767 = distinct !DISubprogram(name: "rcu_read_lock", scope: !1768, file: !1768, line: 690, type: !143, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1768 = !DIFile(filename: "../include/linux/rcupdate.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1769 = distinct !DILocation(line: 993, column: 2, scope: !1761, inlinedAt: !1762)
!1770 = !DILocation(line: 68, column: 2, scope: !1771, inlinedAt: !1772)
!1771 = distinct !DISubprogram(name: "__rcu_read_lock", scope: !1768, file: !1768, line: 66, type: !143, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1772 = distinct !DILocation(line: 692, column: 2, scope: !1767, inlinedAt: !1769)
!1773 = !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !1776)
!1774 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !1775, file: !1775, line: 14, type: !143, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1775 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1776 = distinct !DILocation(line: 54, column: 3, scope: !1777, inlinedAt: !1778)
!1777 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1775, file: !1775, line: 52, type: !143, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1778 = distinct !DILocation(line: 68, column: 2, scope: !1771, inlinedAt: !1772)
!1779 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !1776)
!1781 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !1780)
!1782 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !1780)
!1783 = !DILocation(line: 16, column: 33, scope: !1774, inlinedAt: !1776)
!1784 = !DILocation(line: 54, column: 23, scope: !1777, inlinedAt: !1778)
!1785 = !{i64 2149728932}
!1786 = !DILocation(line: 268, column: 2, scope: !1787, inlinedAt: !1788)
!1787 = distinct !DISubprogram(name: "rcu_lock_acquire", scope: !1768, file: !1768, line: 266, type: !143, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1788 = distinct !DILocation(line: 694, column: 2, scope: !1767, inlinedAt: !1769)
!1789 = !DILocation(line: 695, column: 2, scope: !1767, inlinedAt: !1769)
!1790 = !DILocation(line: 994, column: 2, scope: !1761, inlinedAt: !1762)
!1791 = !DILocation(line: 995, column: 23, scope: !1761, inlinedAt: !1762)
!1792 = !DILocation(line: 995, column: 54, scope: !1761, inlinedAt: !1762)
!1793 = !DILocation(line: 995, column: 3, scope: !1761, inlinedAt: !1762)
!1794 = distinct !{!1794, !1790, !1795}
!1795 = !DILocation(line: 995, column: 58, scope: !1761, inlinedAt: !1762)
!1796 = !DILocation(line: 996, column: 2, scope: !1761, inlinedAt: !1762)
!1797 = !DILocation(line: 998, column: 2, scope: !1761, inlinedAt: !1762)
!1798 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 1501, column: 6, scope: !1668)
!1800 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !1799)
!1801 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !1799)
!1802 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !1799)
!1803 = !DILocation(line: 1501, column: 6, scope: !1668)
!1804 = !DILocation(line: 1502, column: 27, scope: !1668)
!1805 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 1399, column: 44, scope: !1807, inlinedAt: !1808)
!1807 = distinct !DISubprogram(name: "uprobe_perf_func", scope: !1, file: !1, line: 1396, type: !143, scopeLine: 1398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1808 = distinct !DILocation(line: 1502, column: 10, scope: !1668)
!1809 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !1806)
!1810 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !1806)
!1811 = !DILocation(line: 1399, column: 44, scope: !1807, inlinedAt: !1808)
!1812 = !DILocation(line: 1399, column: 53, scope: !1807, inlinedAt: !1808)
!1813 = !DILocation(line: 1326, column: 18, scope: !1814, inlinedAt: !1815)
!1814 = distinct !DISubprogram(name: "uprobe_perf_filter", scope: !1, file: !1, line: 1318, type: !143, scopeLine: 1320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1815 = distinct !DILocation(line: 1399, column: 7, scope: !1807, inlinedAt: !1808)
!1816 = !DILocation(line: 1326, column: 25, scope: !1814, inlinedAt: !1815)
!1817 = !DILocation(line: 1328, column: 2, scope: !1814, inlinedAt: !1815)
!1818 = !DILocation(line: 1201, column: 14, scope: !1819, inlinedAt: !1820)
!1819 = distinct !DISubprogram(name: "__uprobe_perf_filter", scope: !1, file: !1, line: 1197, type: !143, scopeLine: 1198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1820 = distinct !DILocation(line: 1329, column: 8, scope: !1814, inlinedAt: !1815)
!1821 = !DILocation(line: 1201, column: 6, scope: !1819, inlinedAt: !1820)
!1822 = !DILocation(line: 1202, column: 3, scope: !1819, inlinedAt: !1820)
!1823 = !DILocation(line: 1204, column: 2, scope: !1819, inlinedAt: !1820)
!1824 = !DILocation(line: 1205, column: 17, scope: !1819, inlinedAt: !1820)
!1825 = !DILocation(line: 1205, column: 25, scope: !1819, inlinedAt: !1820)
!1826 = !DILocation(line: 1205, column: 28, scope: !1819, inlinedAt: !1820)
!1827 = !DILocation(line: 1205, column: 7, scope: !1819, inlinedAt: !1820)
!1828 = !DILocation(line: 1206, column: 4, scope: !1819, inlinedAt: !1820)
!1829 = distinct !{!1829, !1823, !1830}
!1830 = !DILocation(line: 1207, column: 2, scope: !1819, inlinedAt: !1820)
!1831 = !DILocation(line: 1209, column: 2, scope: !1819, inlinedAt: !1820)
!1832 = !DILocation(line: 1330, column: 2, scope: !1814, inlinedAt: !1815)
!1833 = !DILocation(line: 1400, column: 3, scope: !1807, inlinedAt: !1808)
!1834 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 1402, column: 7, scope: !1807, inlinedAt: !1808)
!1836 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1835)
!1837 = !DILocation(line: 1402, column: 6, scope: !1807, inlinedAt: !1808)
!1838 = !DILocation(line: 1403, column: 22, scope: !1807, inlinedAt: !1808)
!1839 = !DILocation(line: 1403, column: 3, scope: !1807, inlinedAt: !1808)
!1840 = !DILocation(line: 0, scope: !1807, inlinedAt: !1808)
!1841 = !DILocation(line: 1502, column: 3, scope: !1668)
!1842 = !DILocation(line: 0, scope: !1668)
!1843 = !DILocation(line: 942, column: 2, scope: !1844, inlinedAt: !1845)
!1844 = distinct !DISubprogram(name: "uprobe_buffer_put", scope: !1, file: !1, line: 940, type: !143, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1845 = distinct !DILocation(line: 1504, column: 2, scope: !1668)
!1846 = !DILocation(line: 1505, column: 2, scope: !1668)
!1847 = !DILocation(line: 1506, column: 1, scope: !1668)
!1848 = distinct !DISubprogram(name: "uretprobe_dispatcher", scope: !1, file: !1, line: 1508, type: !143, scopeLine: 1510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1849 = !DILocation(line: 1510, scope: !1848)
!1850 = !DILocation(line: 1512, column: 2, scope: !1848)
!1851 = !DILocation(line: 1512, column: 30, scope: !1848)
!1852 = !DILocation(line: 1516, column: 7, scope: !1848)
!1853 = !DILocation(line: 1518, column: 9, scope: !1848)
!1854 = !DILocation(line: 1519, column: 14, scope: !1848)
!1855 = !DILocation(line: 1521, column: 26, scope: !1848)
!1856 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 1521, column: 2, scope: !1848)
!1858 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !1857)
!1859 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !1857)
!1860 = !DILocation(line: 1521, column: 2, scope: !1848)
!1861 = !DILocation(line: 1521, column: 11, scope: !1848)
!1862 = !DILocation(line: 1521, column: 18, scope: !1848)
!1863 = !DILocation(line: 1521, column: 24, scope: !1848)
!1864 = !DILocation(line: 1523, column: 6, scope: !1848)
!1865 = !DILocation(line: 1524, column: 3, scope: !1848)
!1866 = !DILocation(line: 1526, column: 27, scope: !1848)
!1867 = !DILocation(line: 177, column: 22, scope: !1691, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 1526, column: 10, scope: !1848)
!1869 = !DILocation(line: 177, column: 16, scope: !1691, inlinedAt: !1868)
!1870 = !DILocation(line: 177, column: 2, scope: !1691, inlinedAt: !1868)
!1871 = !DILocation(line: 179, column: 7, scope: !1691, inlinedAt: !1868)
!1872 = !DILocation(line: 178, column: 18, scope: !1691, inlinedAt: !1868)
!1873 = !DILocation(line: 180, column: 34, scope: !1691, inlinedAt: !1868)
!1874 = !DILocation(line: 180, column: 10, scope: !1691, inlinedAt: !1868)
!1875 = !DILocation(line: 181, column: 12, scope: !1691, inlinedAt: !1868)
!1876 = !DILocation(line: 181, column: 8, scope: !1691, inlinedAt: !1868)
!1877 = !DILocation(line: 182, column: 12, scope: !1691, inlinedAt: !1868)
!1878 = !DILocation(line: 182, column: 9, scope: !1691, inlinedAt: !1868)
!1879 = !DILocation(line: 182, column: 5, scope: !1691, inlinedAt: !1868)
!1880 = !DILocation(line: 0, scope: !1691, inlinedAt: !1868)
!1881 = !DILocation(line: 183, column: 3, scope: !1691, inlinedAt: !1868)
!1882 = !DILocation(line: 177, column: 32, scope: !1691, inlinedAt: !1868)
!1883 = distinct !{!1883, !1870, !1884}
!1884 = !DILocation(line: 184, column: 2, scope: !1691, inlinedAt: !1868)
!1885 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 1527, column: 10, scope: !1848)
!1887 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1886)
!1888 = !DILocation(line: 1527, column: 10, scope: !1848)
!1889 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 928, column: 8, scope: !1716, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 1529, column: 8, scope: !1848)
!1892 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !1890)
!1893 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !1890)
!1894 = !DILocation(line: 928, column: 8, scope: !1716, inlinedAt: !1891)
!1895 = !DILocation(line: 929, column: 8, scope: !1716, inlinedAt: !1891)
!1896 = !DILocation(line: 935, column: 2, scope: !1716, inlinedAt: !1891)
!1897 = !DILocation(line: 1530, column: 24, scope: !1848)
!1898 = !DILocation(line: 195, column: 20, scope: !1725, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 1530, column: 2, scope: !1848)
!1900 = !DILocation(line: 200, column: 22, scope: !1725, inlinedAt: !1899)
!1901 = !DILocation(line: 200, column: 16, scope: !1725, inlinedAt: !1899)
!1902 = !DILocation(line: 200, column: 2, scope: !1725, inlinedAt: !1899)
!1903 = !DILocation(line: 196, column: 29, scope: !1725, inlinedAt: !1899)
!1904 = !DILocation(line: 196, column: 23, scope: !1725, inlinedAt: !1899)
!1905 = !DILocation(line: 201, column: 18, scope: !1725, inlinedAt: !1899)
!1906 = !DILocation(line: 202, column: 20, scope: !1725, inlinedAt: !1899)
!1907 = !DILocation(line: 202, column: 13, scope: !1725, inlinedAt: !1899)
!1908 = !DILocation(line: 204, column: 7, scope: !1725, inlinedAt: !1899)
!1909 = !DILocation(line: 205, column: 10, scope: !1725, inlinedAt: !1899)
!1910 = !DILocation(line: 205, column: 8, scope: !1725, inlinedAt: !1899)
!1911 = !DILocation(line: 205, column: 4, scope: !1725, inlinedAt: !1899)
!1912 = !DILocation(line: 206, column: 33, scope: !1725, inlinedAt: !1899)
!1913 = !DILocation(line: 206, column: 9, scope: !1725, inlinedAt: !1899)
!1914 = !DILocation(line: 207, column: 7, scope: !1725, inlinedAt: !1899)
!1915 = !DILocation(line: 208, column: 10, scope: !1725, inlinedAt: !1899)
!1916 = !DILocation(line: 208, column: 8, scope: !1725, inlinedAt: !1899)
!1917 = !DILocation(line: 209, column: 3, scope: !1725, inlinedAt: !1899)
!1918 = !DILocation(line: 210, column: 15, scope: !1725, inlinedAt: !1899)
!1919 = !DILocation(line: 210, column: 12, scope: !1725, inlinedAt: !1899)
!1920 = !DILocation(line: 211, column: 11, scope: !1725, inlinedAt: !1899)
!1921 = !DILocation(line: 0, scope: !1725, inlinedAt: !1899)
!1922 = !DILocation(line: 200, column: 32, scope: !1725, inlinedAt: !1899)
!1923 = distinct !{!1923, !1902, !1924}
!1924 = !DILocation(line: 213, column: 2, scope: !1725, inlinedAt: !1899)
!1925 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 1532, column: 6, scope: !1848)
!1927 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !1926)
!1928 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !1926)
!1929 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !1926)
!1930 = !DILocation(line: 1532, column: 6, scope: !1848)
!1931 = !DILocation(line: 1533, column: 24, scope: !1848)
!1932 = !DILocation(line: 692, column: 2, scope: !1767, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 1007, column: 2, scope: !1934, inlinedAt: !1935)
!1934 = distinct !DISubprogram(name: "uretprobe_trace_func", scope: !1, file: !1, line: 1001, type: !143, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1935 = distinct !DILocation(line: 1533, column: 3, scope: !1848)
!1936 = !DILocation(line: 68, column: 2, scope: !1771, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 692, column: 2, scope: !1767, inlinedAt: !1933)
!1938 = !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 54, column: 3, scope: !1777, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 68, column: 2, scope: !1771, inlinedAt: !1937)
!1941 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !1939)
!1943 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !1942)
!1944 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !1942)
!1945 = !DILocation(line: 16, column: 33, scope: !1774, inlinedAt: !1939)
!1946 = !DILocation(line: 54, column: 23, scope: !1777, inlinedAt: !1940)
!1947 = !DILocation(line: 268, column: 2, scope: !1787, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 694, column: 2, scope: !1767, inlinedAt: !1933)
!1949 = !DILocation(line: 695, column: 2, scope: !1767, inlinedAt: !1933)
!1950 = !DILocation(line: 1008, column: 2, scope: !1934, inlinedAt: !1935)
!1951 = !DILocation(line: 1009, column: 23, scope: !1934, inlinedAt: !1935)
!1952 = !DILocation(line: 1009, column: 57, scope: !1934, inlinedAt: !1935)
!1953 = !DILocation(line: 1009, column: 3, scope: !1934, inlinedAt: !1935)
!1954 = distinct !{!1954, !1950, !1955}
!1955 = !DILocation(line: 1009, column: 61, scope: !1934, inlinedAt: !1935)
!1956 = !DILocation(line: 1010, column: 2, scope: !1934, inlinedAt: !1935)
!1957 = !DILocation(line: 1533, column: 3, scope: !1848)
!1958 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 1536, column: 6, scope: !1848)
!1960 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !1959)
!1961 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !1959)
!1962 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !1959)
!1963 = !DILocation(line: 1536, column: 6, scope: !1848)
!1964 = !DILocation(line: 1537, column: 23, scope: !1848)
!1965 = !DILocation(line: 1411, column: 2, scope: !1966, inlinedAt: !1967)
!1966 = distinct !DISubprogram(name: "uretprobe_perf_func", scope: !1, file: !1, line: 1407, type: !143, scopeLine: 1410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1967 = distinct !DILocation(line: 1537, column: 3, scope: !1848)
!1968 = !DILocation(line: 1537, column: 3, scope: !1848)
!1969 = !DILocation(line: 942, column: 2, scope: !1844, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 1539, column: 2, scope: !1848)
!1971 = !DILocation(line: 1540, column: 2, scope: !1848)
!1972 = !DILocation(line: 1541, column: 1, scope: !1848)
!1973 = distinct !DISubprogram(name: "__uprobe_trace_func", scope: !1, file: !1, line: 945, type: !143, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1974 = !DILocation(line: 949, scope: !1973)
!1975 = !DILocation(line: 951, column: 2, scope: !1973)
!1976 = !DILocation(line: 951, column: 28, scope: !1973)
!1977 = !DILocation(line: 291, column: 14, scope: !865, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 954, column: 34, scope: !1973)
!1979 = !DILocation(line: 291, column: 21, scope: !865, inlinedAt: !1978)
!1980 = !DILocation(line: 956, column: 2, scope: !1973)
!1981 = !DILocation(line: 958, column: 6, scope: !1973)
!1982 = !DILocation(line: 959, column: 3, scope: !1973)
!1983 = !DILocation(line: 716, column: 31, scope: !1984, inlinedAt: !1985)
!1984 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !730, file: !730, line: 714, type: !143, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!1985 = distinct !DILocation(line: 961, column: 6, scope: !1973)
!1986 = !DILocation(line: 718, column: 6, scope: !1984, inlinedAt: !1985)
!1987 = !DILocation(line: 723, column: 6, scope: !1984, inlinedAt: !1985)
!1988 = !DILocation(line: 726, column: 39, scope: !1984, inlinedAt: !1985)
!1989 = !DILocation(line: 726, column: 9, scope: !1984, inlinedAt: !1985)
!1990 = !DILocation(line: 961, column: 6, scope: !1973)
!1991 = !DILocation(line: 0, scope: !1973)
!1992 = !DILocation(line: 962, column: 3, scope: !1973)
!1993 = !DILocation(line: 0, scope: !1984, inlinedAt: !1985)
!1994 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 964, column: 10, scope: !1973)
!1996 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !1995)
!1997 = !DILocation(line: 964, column: 10, scope: !1973)
!1998 = !DILocation(line: 965, column: 24, scope: !1973)
!1999 = !DILocation(line: 965, column: 15, scope: !1973)
!2000 = !DILocation(line: 965, column: 29, scope: !1973)
!2001 = !DILocation(line: 966, column: 10, scope: !1973)
!2002 = !DILocation(line: 967, column: 7, scope: !1973)
!2003 = !DILocation(line: 967, column: 6, scope: !1973)
!2004 = !DILocation(line: 968, column: 3, scope: !1973)
!2005 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 970, column: 6, scope: !1973)
!2007 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !2006)
!2008 = !DILocation(line: 970, column: 6, scope: !1973)
!2009 = !DILocation(line: 971, column: 21, scope: !1973)
!2010 = !DILocation(line: 971, column: 10, scope: !1973)
!2011 = !DILocation(line: 971, column: 19, scope: !1973)
!2012 = !DILocation(line: 972, column: 21, scope: !1973)
!2013 = !DILocation(line: 972, column: 3, scope: !1973)
!2014 = !DILocation(line: 972, column: 19, scope: !1973)
!2015 = !DILocation(line: 974, column: 2, scope: !1973)
!2016 = !DILocation(line: 975, column: 21, scope: !1973)
!2017 = !DILocation(line: 975, column: 10, scope: !1973)
!2018 = !DILocation(line: 975, column: 19, scope: !1973)
!2019 = !DILocation(line: 979, column: 20, scope: !1973)
!2020 = !DILocation(line: 979, column: 32, scope: !1973)
!2021 = !DILocation(line: 979, column: 37, scope: !1973)
!2022 = !DILocation(line: 979, column: 2, scope: !1973)
!2023 = !DILocation(line: 981, column: 2, scope: !1973)
!2024 = !DILocation(line: 982, column: 1, scope: !1973)
!2025 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !1768, file: !1768, line: 721, type: !143, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2026 = !DILocation(line: 722, scope: !2025)
!2027 = !DILocation(line: 723, column: 2, scope: !2025)
!2028 = !DILocation(line: 73, column: 2, scope: !2029, inlinedAt: !2030)
!2029 = distinct !DISubprogram(name: "__rcu_read_unlock", scope: !1768, file: !1768, line: 71, type: !143, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2030 = distinct !DILocation(line: 726, column: 2, scope: !2025)
!2031 = !{i64 2149729198}
!2032 = !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 59, column: 3, scope: !2034, inlinedAt: !2035)
!2034 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !1775, file: !1775, line: 57, type: !143, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2035 = distinct !DILocation(line: 73, column: 2, scope: !2029, inlinedAt: !2030)
!2036 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2033)
!2038 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !2037)
!2039 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !2037)
!2040 = !DILocation(line: 16, column: 33, scope: !1774, inlinedAt: !2033)
!2041 = !DILocation(line: 59, column: 23, scope: !2034, inlinedAt: !2035)
!2042 = !DILocation(line: 75, column: 3, scope: !2029, inlinedAt: !2030)
!2043 = !DILocation(line: 273, column: 2, scope: !2044, inlinedAt: !2045)
!2044 = distinct !DISubprogram(name: "rcu_lock_release", scope: !1768, file: !1768, line: 271, type: !143, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2045 = distinct !DILocation(line: 727, column: 2, scope: !2025)
!2046 = !DILocation(line: 728, column: 1, scope: !2025)
!2047 = !DILocation(line: 1320, scope: !1814)
!2048 = !DILocation(line: 1326, column: 18, scope: !1814)
!2049 = !DILocation(line: 1326, column: 25, scope: !1814)
!2050 = !DILocation(line: 1328, column: 2, scope: !1814)
!2051 = !DILocation(line: 1201, column: 14, scope: !1819, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 1329, column: 8, scope: !1814)
!2053 = !DILocation(line: 1201, column: 6, scope: !1819, inlinedAt: !2052)
!2054 = !DILocation(line: 1202, column: 3, scope: !1819, inlinedAt: !2052)
!2055 = !DILocation(line: 1204, column: 2, scope: !1819, inlinedAt: !2052)
!2056 = !DILocation(line: 1205, column: 17, scope: !1819, inlinedAt: !2052)
!2057 = !DILocation(line: 1205, column: 25, scope: !1819, inlinedAt: !2052)
!2058 = !DILocation(line: 1205, column: 28, scope: !1819, inlinedAt: !2052)
!2059 = !DILocation(line: 1205, column: 7, scope: !1819, inlinedAt: !2052)
!2060 = !DILocation(line: 1206, column: 4, scope: !1819, inlinedAt: !2052)
!2061 = distinct !{!2061, !2055, !2062}
!2062 = !DILocation(line: 1207, column: 2, scope: !1819, inlinedAt: !2052)
!2063 = !DILocation(line: 1209, column: 2, scope: !1819, inlinedAt: !2052)
!2064 = !DILocation(line: 0, scope: !1819, inlinedAt: !2052)
!2065 = !DILocation(line: 1330, column: 2, scope: !1814)
!2066 = !DILocation(line: 1332, column: 2, scope: !1814)
!2067 = distinct !DISubprogram(name: "__uprobe_perf_func", scope: !1, file: !1, line: 1335, type: !143, scopeLine: 1338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2068 = !DILocation(line: 1338, scope: !2067)
!2069 = !DILocation(line: 291, column: 14, scope: !865, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 1339, column: 34, scope: !2067)
!2071 = !DILocation(line: 1344, column: 2, scope: !2067)
!2072 = !DILocation(line: 1344, column: 6, scope: !2067)
!2073 = !DILocation(line: 436, column: 11, scope: !2074, inlinedAt: !2075)
!2074 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !730, file: !730, line: 417, type: !143, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2075 = distinct !DILocation(line: 1346, column: 6, scope: !2067)
!2076 = !DILocation(line: 436, column: 10, scope: !2074, inlinedAt: !2075)
!2077 = !DILocation(line: 1346, column: 6, scope: !2067)
!2078 = !DILocation(line: 291, column: 21, scope: !865, inlinedAt: !2070)
!2079 = !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 54, column: 3, scope: !1777, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 1349, column: 3, scope: !2067)
!2082 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2080)
!2084 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !2083)
!2085 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !2083)
!2086 = !DILocation(line: 16, column: 33, scope: !1774, inlinedAt: !2080)
!2087 = !DILocation(line: 54, column: 23, scope: !1777, inlinedAt: !2081)
!2088 = !DILocation(line: 1349, column: 3, scope: !2067)
!2089 = !{i64 2156134887}
!2090 = !DILocation(line: 1350, column: 9, scope: !2067)
!2091 = !DILocation(line: 1351, column: 3, scope: !2067)
!2092 = !{i64 2156134984}
!2093 = !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 59, column: 3, scope: !2034, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 1351, column: 3, scope: !2067)
!2096 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2094)
!2098 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !2097)
!2099 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !2097)
!2100 = !DILocation(line: 16, column: 33, scope: !1774, inlinedAt: !2094)
!2101 = !DILocation(line: 59, column: 23, scope: !2034, inlinedAt: !2095)
!2102 = !DILocation(line: 1352, column: 8, scope: !2067)
!2103 = !DILocation(line: 1352, column: 7, scope: !2067)
!2104 = !DILocation(line: 0, scope: !2067)
!2105 = !DILocation(line: 1354, column: 2, scope: !2067)
!2106 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 1356, column: 10, scope: !2067)
!2108 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !2107)
!2109 = !DILocation(line: 1356, column: 10, scope: !2067)
!2110 = !DILocation(line: 1358, column: 24, scope: !2067)
!2111 = !DILocation(line: 1358, column: 15, scope: !2067)
!2112 = !DILocation(line: 1358, column: 29, scope: !2067)
!2113 = !DILocation(line: 1359, column: 9, scope: !2067)
!2114 = !DILocation(line: 1359, column: 48, scope: !2067)
!2115 = !DILocation(line: 1360, column: 6, scope: !2067)
!2116 = !DILocation(line: 1361, column: 3, scope: !2067)
!2117 = !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 54, column: 3, scope: !1777, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 1363, column: 2, scope: !2067)
!2120 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2118)
!2122 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !2121)
!2123 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !2121)
!2124 = !DILocation(line: 16, column: 33, scope: !1774, inlinedAt: !2118)
!2125 = !DILocation(line: 54, column: 23, scope: !1777, inlinedAt: !2119)
!2126 = !DILocation(line: 1363, column: 2, scope: !2067)
!2127 = !{i64 2156136720}
!2128 = !DILocation(line: 1364, column: 9, scope: !2067)
!2129 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 1364, column: 9, scope: !2067)
!2131 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !2130)
!2132 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !2130)
!2133 = !DILocation(line: 840, column: 10, scope: !2134, inlinedAt: !2135)
!2134 = distinct !DISubprogram(name: "hlist_empty", scope: !943, file: !943, line: 838, type: !143, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2135 = distinct !DILocation(line: 1365, column: 6, scope: !2067)
!2136 = !DILocation(line: 840, column: 9, scope: !2134, inlinedAt: !2135)
!2137 = !DILocation(line: 1365, column: 6, scope: !2067)
!2138 = !DILocation(line: 1366, column: 3, scope: !2067)
!2139 = !DILocation(line: 1368, column: 10, scope: !2067)
!2140 = !DILocation(line: 1369, column: 7, scope: !2067)
!2141 = !DILocation(line: 1369, column: 6, scope: !2067)
!2142 = !DILocation(line: 1370, column: 3, scope: !2067)
!2143 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 1372, column: 6, scope: !2067)
!2145 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !2144)
!2146 = !DILocation(line: 1372, column: 6, scope: !2067)
!2147 = !DILocation(line: 1373, column: 21, scope: !2067)
!2148 = !DILocation(line: 1373, column: 10, scope: !2067)
!2149 = !DILocation(line: 1373, column: 19, scope: !2067)
!2150 = !DILocation(line: 1374, column: 21, scope: !2067)
!2151 = !DILocation(line: 1374, column: 3, scope: !2067)
!2152 = !DILocation(line: 1374, column: 19, scope: !2067)
!2153 = !DILocation(line: 1376, column: 2, scope: !2067)
!2154 = !DILocation(line: 1377, column: 21, scope: !2067)
!2155 = !DILocation(line: 1377, column: 10, scope: !2067)
!2156 = !DILocation(line: 1377, column: 19, scope: !2067)
!2157 = !DILocation(line: 1381, column: 20, scope: !2067)
!2158 = !DILocation(line: 1381, column: 32, scope: !2067)
!2159 = !DILocation(line: 1381, column: 37, scope: !2067)
!2160 = !DILocation(line: 1381, column: 2, scope: !2067)
!2161 = !DILocation(line: 1383, column: 11, scope: !2067)
!2162 = !DILocation(line: 1383, column: 28, scope: !2067)
!2163 = !DILocation(line: 1383, column: 33, scope: !2067)
!2164 = !DILocation(line: 1383, column: 19, scope: !2067)
!2165 = !DILocation(line: 1383, column: 6, scope: !2067)
!2166 = !DILocation(line: 1384, column: 3, scope: !2067)
!2167 = !DILocation(line: 1384, column: 20, scope: !2067)
!2168 = !DILocation(line: 1384, column: 25, scope: !2067)
!2169 = !DILocation(line: 1386, column: 15, scope: !2067)
!2170 = !DILocation(line: 1386, column: 38, scope: !2067)
!2171 = !DILocation(line: 1386, column: 3, scope: !2067)
!2172 = !DILocation(line: 1387, column: 2, scope: !2067)
!2173 = !DILocation(line: 1389, column: 37, scope: !2067)
!2174 = !DILocation(line: 1389, column: 55, scope: !2067)
!2175 = !DILocation(line: 1389, column: 43, scope: !2067)
!2176 = !DILocation(line: 900, column: 2, scope: !2177, inlinedAt: !2178)
!2177 = distinct !DISubprogram(name: "perf_trace_buf_submit", scope: !730, file: !730, line: 896, type: !143, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2178 = distinct !DILocation(line: 1389, column: 2, scope: !2067)
!2179 = !DILocation(line: 1389, column: 2, scope: !2067)
!2180 = !DILocation(line: 1392, column: 2, scope: !2067)
!2181 = !{i64 2156138156}
!2182 = !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 59, column: 3, scope: !2034, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 1392, column: 2, scope: !2067)
!2185 = !DILocation(line: 104, column: 4, scope: !201, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 16, column: 10, scope: !1774, inlinedAt: !2183)
!2187 = !DILocation(line: 104, column: 26, scope: !201, inlinedAt: !2186)
!2188 = !DILocation(line: 103, column: 9, scope: !201, inlinedAt: !2186)
!2189 = !DILocation(line: 16, column: 33, scope: !1774, inlinedAt: !2183)
!2190 = !DILocation(line: 59, column: 23, scope: !2034, inlinedAt: !2184)
!2191 = !DILocation(line: 1393, column: 1, scope: !2067)
!2192 = distinct !DISubprogram(name: "trace_uprobe_register", scope: !1, file: !1, line: 1438, type: !143, scopeLine: 1440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2193 = !DILocation(line: 1440, scope: !2192)
!2194 = !DILocation(line: 1443, column: 2, scope: !2192)
!2195 = !DILocation(line: 1445, column: 29, scope: !2192)
!2196 = !DILocation(line: 1445, column: 10, scope: !2192)
!2197 = !DILocation(line: 1445, column: 3, scope: !2192)
!2198 = !DILocation(line: 1448, column: 23, scope: !2192)
!2199 = !DILocation(line: 1448, column: 3, scope: !2192)
!2200 = !DILocation(line: 1449, column: 3, scope: !2192)
!2201 = !DILocation(line: 1453, column: 29, scope: !2192)
!2202 = !DILocation(line: 1453, column: 10, scope: !2192)
!2203 = !DILocation(line: 1453, column: 3, scope: !2192)
!2204 = !DILocation(line: 1456, column: 23, scope: !2192)
!2205 = !DILocation(line: 1456, column: 3, scope: !2192)
!2206 = !DILocation(line: 1457, column: 3, scope: !2192)
!2207 = !DILocation(line: 1460, column: 27, scope: !2192)
!2208 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 1299, column: 7, scope: !2210, inlinedAt: !2211)
!2210 = distinct !DISubprogram(name: "uprobe_perf_open", scope: !1, file: !1, line: 1292, type: !143, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2211 = distinct !DILocation(line: 1460, column: 10, scope: !2192)
!2212 = !DILocation(line: 1300, column: 6, scope: !2210, inlinedAt: !2211)
!2213 = !DILocation(line: 1301, column: 3, scope: !2210, inlinedAt: !2211)
!2214 = !DILocation(line: 1304, column: 37, scope: !2210, inlinedAt: !2211)
!2215 = !DILocation(line: 1304, column: 44, scope: !2210, inlinedAt: !2211)
!2216 = !DILocation(line: 1245, column: 2, scope: !2217, inlinedAt: !2218)
!2217 = distinct !DISubprogram(name: "trace_uprobe_filter_add", scope: !1, file: !1, line: 1240, type: !143, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2218 = distinct !DILocation(line: 1304, column: 6, scope: !2210, inlinedAt: !2211)
!2219 = !DILocation(line: 1246, column: 13, scope: !2217, inlinedAt: !2218)
!2220 = !DILocation(line: 1246, column: 16, scope: !2217, inlinedAt: !2218)
!2221 = !DILocation(line: 1246, column: 6, scope: !2217, inlinedAt: !2218)
!2222 = !DILocation(line: 1255, column: 10, scope: !2217, inlinedAt: !2218)
!2223 = !DILocation(line: 1255, column: 18, scope: !2217, inlinedAt: !2218)
!2224 = !DILocation(line: 1255, column: 32, scope: !2217, inlinedAt: !2218)
!2225 = !DILocation(line: 1256, column: 4, scope: !2217, inlinedAt: !2218)
!2226 = !DILocation(line: 1256, column: 11, scope: !2217, inlinedAt: !2218)
!2227 = !DILocation(line: 1256, column: 18, scope: !2217, inlinedAt: !2218)
!2228 = !DILocation(line: 1256, column: 21, scope: !2217, inlinedAt: !2218)
!2229 = !DILocation(line: 1256, column: 33, scope: !2217, inlinedAt: !2218)
!2230 = !DILocation(line: 1256, column: 48, scope: !2217, inlinedAt: !2218)
!2231 = !DILocation(line: 1257, column: 30, scope: !2217, inlinedAt: !2218)
!2232 = !DILocation(line: 1216, column: 56, scope: !2233, inlinedAt: !2234)
!2233 = distinct !DISubprogram(name: "trace_uprobe_filter_event", scope: !1, file: !1, line: 1213, type: !143, scopeLine: 1215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2234 = distinct !DILocation(line: 1257, column: 4, scope: !2217, inlinedAt: !2218)
!2235 = !DILocation(line: 1204, column: 2, scope: !1819, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 1216, column: 9, scope: !2233, inlinedAt: !2234)
!2237 = !DILocation(line: 1205, column: 17, scope: !1819, inlinedAt: !2236)
!2238 = !DILocation(line: 1205, column: 25, scope: !1819, inlinedAt: !2236)
!2239 = !DILocation(line: 1205, column: 28, scope: !1819, inlinedAt: !2236)
!2240 = !DILocation(line: 1205, column: 7, scope: !1819, inlinedAt: !2236)
!2241 = distinct !{!2241, !2235, !2242}
!2242 = !DILocation(line: 1207, column: 2, scope: !1819, inlinedAt: !2236)
!2243 = !DILocation(line: 0, scope: !1819, inlinedAt: !2236)
!2244 = !DILocation(line: 1258, column: 41, scope: !2217, inlinedAt: !2218)
!2245 = !DILocation(line: 88, column: 30, scope: !2246, inlinedAt: !2247)
!2246 = distinct !DISubprogram(name: "list_add", scope: !943, file: !943, line: 86, type: !143, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2247 = distinct !DILocation(line: 1258, column: 3, scope: !2217, inlinedAt: !2218)
!2248 = !DILocation(line: 69, column: 7, scope: !1604, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 88, column: 2, scope: !2246, inlinedAt: !2247)
!2250 = !DILocation(line: 69, column: 6, scope: !1604, inlinedAt: !2249)
!2251 = !DILocation(line: 72, column: 8, scope: !1604, inlinedAt: !2249)
!2252 = !DILocation(line: 72, column: 13, scope: !1604, inlinedAt: !2249)
!2253 = !DILocation(line: 73, column: 12, scope: !1604, inlinedAt: !2249)
!2254 = !DILocation(line: 74, column: 7, scope: !1604, inlinedAt: !2249)
!2255 = !DILocation(line: 74, column: 12, scope: !1604, inlinedAt: !2249)
!2256 = !DILocation(line: 75, column: 2, scope: !1604, inlinedAt: !2249)
!2257 = !DILocation(line: 0, scope: !1604, inlinedAt: !2249)
!2258 = !DILocation(line: 1263, column: 2, scope: !2217, inlinedAt: !2218)
!2259 = !DILocation(line: 1304, column: 6, scope: !2210, inlinedAt: !2211)
!2260 = !DILocation(line: 1260, column: 10, scope: !2217, inlinedAt: !2218)
!2261 = !DILocation(line: 1260, column: 18, scope: !2217, inlinedAt: !2218)
!2262 = !DILocation(line: 1261, column: 24, scope: !2217, inlinedAt: !2218)
!2263 = !DILocation(line: 1305, column: 3, scope: !2210, inlinedAt: !2211)
!2264 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 1307, column: 2, scope: !2210, inlinedAt: !2211)
!2266 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2265)
!2267 = !DILocation(line: 1307, column: 2, scope: !2210, inlinedAt: !2211)
!2268 = !DILocation(line: 1308, column: 26, scope: !2210, inlinedAt: !2211)
!2269 = !DILocation(line: 1308, column: 37, scope: !2210, inlinedAt: !2211)
!2270 = !DILocation(line: 1308, column: 33, scope: !2210, inlinedAt: !2211)
!2271 = !DILocation(line: 1308, column: 50, scope: !2210, inlinedAt: !2211)
!2272 = !DILocation(line: 1308, column: 9, scope: !2210, inlinedAt: !2211)
!2273 = !DILocation(line: 1309, column: 7, scope: !2210, inlinedAt: !2211)
!2274 = !DILocation(line: 1310, column: 22, scope: !2210, inlinedAt: !2211)
!2275 = !DILocation(line: 1310, column: 4, scope: !2210, inlinedAt: !2211)
!2276 = !DILocation(line: 1311, column: 4, scope: !2210, inlinedAt: !2211)
!2277 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 1307, column: 2, scope: !2210, inlinedAt: !2211)
!2279 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2278)
!2280 = distinct !{!2280, !2267, !2281}
!2281 = !DILocation(line: 1313, column: 2, scope: !2210, inlinedAt: !2211)
!2282 = !DILocation(line: 0, scope: !2210, inlinedAt: !2211)
!2283 = !DILocation(line: 1315, column: 9, scope: !2210, inlinedAt: !2211)
!2284 = !DILocation(line: 1315, column: 2, scope: !2210, inlinedAt: !2211)
!2285 = !DILocation(line: 1463, column: 28, scope: !2192)
!2286 = !DILocation(line: 1463, column: 10, scope: !2192)
!2287 = !DILocation(line: 1463, column: 3, scope: !2192)
!2288 = !DILocation(line: 1467, column: 3, scope: !2192)
!2289 = !DILocation(line: 0, scope: !2192)
!2290 = !DILocation(line: 1469, column: 1, scope: !2192)
!2291 = distinct !DISubprogram(name: "print_uprobe_event", scope: !1, file: !1, line: 1015, type: !143, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2292 = !DILocation(line: 1016, scope: !2291)
!2293 = !DILocation(line: 1018, column: 31, scope: !2291)
!2294 = !DILocation(line: 1022, column: 50, scope: !2291)
!2295 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 325, column: 7, scope: !753, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 1023, column: 7, scope: !2291)
!2298 = !DILocation(line: 326, column: 6, scope: !753, inlinedAt: !2297)
!2299 = !DILocation(line: 327, column: 3, scope: !753, inlinedAt: !2297)
!2300 = !DILocation(line: 1025, column: 6, scope: !2291)
!2301 = !DILocation(line: 329, column: 9, scope: !753, inlinedAt: !2297)
!2302 = !DILocation(line: 1026, column: 3, scope: !2291)
!2303 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 1028, column: 6, scope: !2291)
!2305 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !2304)
!2306 = !DILocation(line: 1028, column: 6, scope: !2291)
!2307 = !DILocation(line: 1029, column: 20, scope: !2291)
!2308 = !DILocation(line: 280, column: 31, scope: !784, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 1030, column: 6, scope: !2291)
!2310 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 280, column: 9, scope: !784, inlinedAt: !2309)
!2312 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !2311)
!2313 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !2311)
!2314 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !2311)
!2315 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !2311)
!2316 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !2311)
!2317 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !2311)
!2318 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !2311)
!2319 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !2311)
!2320 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !2311)
!2321 = !DILocation(line: 0, scope: !729, inlinedAt: !2311)
!2322 = !DILocation(line: 1031, column: 13, scope: !2291)
!2323 = !DILocation(line: 1031, column: 6, scope: !2291)
!2324 = !DILocation(line: 1031, column: 23, scope: !2291)
!2325 = !DILocation(line: 1029, column: 3, scope: !2291)
!2326 = !DILocation(line: 1033, column: 2, scope: !2291)
!2327 = !DILocation(line: 1034, column: 20, scope: !2291)
!2328 = !DILocation(line: 280, column: 31, scope: !784, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1035, column: 6, scope: !2291)
!2330 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 280, column: 9, scope: !784, inlinedAt: !2329)
!2332 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !2331)
!2333 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !2331)
!2334 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !2331)
!2335 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !2331)
!2336 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !2331)
!2337 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !2331)
!2338 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !2331)
!2339 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !2331)
!2340 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !2331)
!2341 = !DILocation(line: 0, scope: !729, inlinedAt: !2331)
!2342 = !DILocation(line: 1036, column: 13, scope: !2291)
!2343 = !DILocation(line: 1036, column: 6, scope: !2291)
!2344 = !DILocation(line: 1034, column: 3, scope: !2291)
!2345 = !DILocation(line: 0, scope: !2291)
!2346 = !DILocation(line: 1040, column: 33, scope: !2291)
!2347 = !DILocation(line: 1040, column: 46, scope: !2291)
!2348 = !DILocation(line: 223, column: 16, scope: !2349, inlinedAt: !2350)
!2349 = distinct !DISubprogram(name: "print_probe_args", scope: !283, file: !283, line: 217, type: !143, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2350 = distinct !DILocation(line: 1040, column: 6, scope: !2291)
!2351 = !DILocation(line: 223, column: 2, scope: !2349, inlinedAt: !2350)
!2352 = !DILocation(line: 226, column: 34, scope: !2349, inlinedAt: !2350)
!2353 = !DILocation(line: 226, column: 3, scope: !2349, inlinedAt: !2350)
!2354 = !DILocation(line: 227, column: 7, scope: !2349, inlinedAt: !2350)
!2355 = !DILocation(line: 228, column: 12, scope: !2349, inlinedAt: !2350)
!2356 = !DILocation(line: 228, column: 18, scope: !2349, inlinedAt: !2350)
!2357 = !DILocation(line: 228, column: 37, scope: !2349, inlinedAt: !2350)
!2358 = !DILocation(line: 228, column: 32, scope: !2349, inlinedAt: !2350)
!2359 = !DILocation(line: 228, column: 9, scope: !2349, inlinedAt: !2350)
!2360 = !DILocation(line: 228, column: 8, scope: !2349, inlinedAt: !2350)
!2361 = !DILocation(line: 232, column: 3, scope: !2349, inlinedAt: !2350)
!2362 = !DILocation(line: 234, column: 22, scope: !2349, inlinedAt: !2350)
!2363 = !DILocation(line: 234, column: 17, scope: !2349, inlinedAt: !2350)
!2364 = !DILocation(line: 234, column: 3, scope: !2349, inlinedAt: !2350)
!2365 = !DILocation(line: 233, column: 17, scope: !2349, inlinedAt: !2350)
!2366 = !DILocation(line: 233, column: 12, scope: !2349, inlinedAt: !2350)
!2367 = !DILocation(line: 235, column: 12, scope: !2349, inlinedAt: !2350)
!2368 = !DILocation(line: 235, column: 18, scope: !2349, inlinedAt: !2350)
!2369 = !DILocation(line: 235, column: 9, scope: !2349, inlinedAt: !2350)
!2370 = !DILocation(line: 235, column: 8, scope: !2349, inlinedAt: !2350)
!2371 = !DILocation(line: 237, column: 30, scope: !2349, inlinedAt: !2350)
!2372 = !DILocation(line: 237, column: 36, scope: !2349, inlinedAt: !2350)
!2373 = !DILocation(line: 237, column: 24, scope: !2349, inlinedAt: !2350)
!2374 = !DILocation(line: 237, column: 22, scope: !2349, inlinedAt: !2350)
!2375 = !DILocation(line: 237, column: 4, scope: !2349, inlinedAt: !2350)
!2376 = !DILocation(line: 238, column: 12, scope: !2349, inlinedAt: !2350)
!2377 = !DILocation(line: 238, column: 18, scope: !2349, inlinedAt: !2350)
!2378 = !DILocation(line: 238, column: 6, scope: !2349, inlinedAt: !2350)
!2379 = !DILocation(line: 234, column: 30, scope: !2349, inlinedAt: !2350)
!2380 = distinct !{!2380, !2364, !2381}
!2381 = !DILocation(line: 239, column: 3, scope: !2349, inlinedAt: !2350)
!2382 = !DILocation(line: 240, column: 2, scope: !2349, inlinedAt: !2350)
!2383 = !DILocation(line: 223, column: 28, scope: !2349, inlinedAt: !2350)
!2384 = distinct !{!2384, !2351, !2382}
!2385 = !DILocation(line: 0, scope: !2349, inlinedAt: !2350)
!2386 = !DILocation(line: 1041, column: 3, scope: !2291)
!2387 = !DILocation(line: 241, column: 2, scope: !2349, inlinedAt: !2350)
!2388 = !DILocation(line: 1043, column: 2, scope: !2291)
!2389 = !DILocation(line: 1046, column: 9, scope: !2291)
!2390 = !DILocation(line: 1046, column: 2, scope: !2291)
!2391 = distinct !DISubprogram(name: "uprobe_event_define_fields", scope: !1, file: !1, line: 1173, type: !143, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2392 = !DILocation(line: 1174, scope: !2391)
!2393 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 325, column: 7, scope: !753, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1179, column: 7, scope: !2391)
!2396 = !DILocation(line: 326, column: 6, scope: !753, inlinedAt: !2395)
!2397 = !DILocation(line: 327, column: 3, scope: !753, inlinedAt: !2395)
!2398 = !DILocation(line: 1180, column: 6, scope: !2391)
!2399 = !DILocation(line: 329, column: 9, scope: !753, inlinedAt: !2395)
!2400 = !DILocation(line: 1181, column: 3, scope: !2391)
!2401 = !DILocation(line: 272, column: 22, scope: !764, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1183, column: 6, scope: !2391)
!2403 = !DILocation(line: 272, column: 34, scope: !764, inlinedAt: !2402)
!2404 = !DILocation(line: 1183, column: 6, scope: !2391)
!2405 = !DILocation(line: 1184, column: 3, scope: !2391)
!2406 = !DILocation(line: 1185, column: 3, scope: !2391)
!2407 = !DILocation(line: 1188, column: 3, scope: !2391)
!2408 = !DILocation(line: 0, scope: !2391)
!2409 = !DILocation(line: 1192, column: 9, scope: !2391)
!2410 = !DILocation(line: 1192, column: 2, scope: !2391)
!2411 = !DILocation(line: 1193, column: 1, scope: !2391)
!2412 = distinct !DISubprogram(name: "probe_event_enable", scope: !1, file: !1, line: 1088, type: !143, scopeLine: 1090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2413 = !DILocation(line: 1090, scope: !2412)
!2414 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 1096, column: 7, scope: !2412)
!2416 = !DILocation(line: 1097, column: 6, scope: !2412)
!2417 = !DILocation(line: 1098, column: 3, scope: !2412)
!2418 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 275, column: 9, scope: !1075, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 1099, column: 12, scope: !2412)
!2421 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !2419)
!2422 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !2419)
!2423 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !2419)
!2424 = !DILocation(line: 1102, column: 6, scope: !2412)
!2425 = !DILocation(line: 0, scope: !2412)
!2426 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1103, column: 7, scope: !2412)
!2428 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !2427)
!2429 = !DILocation(line: 1103, column: 7, scope: !2412)
!2430 = !DILocation(line: 1104, column: 4, scope: !2412)
!2431 = !DILocation(line: 1106, column: 9, scope: !2412)
!2432 = !DILocation(line: 1107, column: 11, scope: !2412)
!2433 = !DILocation(line: 1107, column: 7, scope: !2412)
!2434 = !DILocation(line: 1108, column: 11, scope: !2412)
!2435 = !DILocation(line: 1108, column: 4, scope: !2412)
!2436 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 1110, column: 7, scope: !2412)
!2438 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !2437)
!2439 = !DILocation(line: 1110, column: 7, scope: !2412)
!2440 = !DILocation(line: 1111, column: 4, scope: !2412)
!2441 = !DILocation(line: 1113, column: 24, scope: !2412)
!2442 = !DILocation(line: 264, column: 6, scope: !2443, inlinedAt: !2444)
!2443 = distinct !DISubprogram(name: "trace_probe_set_flag", scope: !579, file: !579, line: 261, type: !143, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2444 = distinct !DILocation(line: 1113, column: 3, scope: !2412)
!2445 = !DILocation(line: 264, column: 19, scope: !2443, inlinedAt: !2444)
!2446 = !DILocation(line: 1117, column: 2, scope: !2412)
!2447 = !DILocation(line: 267, column: 18, scope: !2448, inlinedAt: !2449)
!2448 = distinct !DISubprogram(name: "uprobe_filter_is_empty", scope: !1, file: !1, line: 265, type: !143, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2449 = distinct !DILocation(line: 1117, column: 2, scope: !2412)
!2450 = !DILocation(line: 267, column: 10, scope: !2448, inlinedAt: !2449)
!2451 = !DILocation(line: 267, column: 32, scope: !2448, inlinedAt: !2449)
!2452 = !{!"branch_weights", i32 2146410443, i32 1073205}
!2453 = !DILocation(line: 267, column: 47, scope: !2448, inlinedAt: !2449)
!2454 = !DILocation(line: 267, column: 55, scope: !2448, inlinedAt: !2449)
!2455 = !DILocation(line: 292, column: 9, scope: !1093, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 267, column: 35, scope: !2448, inlinedAt: !2449)
!2457 = !DILocation(line: 292, column: 31, scope: !1093, inlinedAt: !2456)
!2458 = !DILocation(line: 1119, column: 6, scope: !2412)
!2459 = !DILocation(line: 1120, column: 3, scope: !2412)
!2460 = !DILocation(line: 896, column: 2, scope: !2461, inlinedAt: !2462)
!2461 = distinct !DISubprogram(name: "uprobe_buffer_enable", scope: !1, file: !1, line: 892, type: !143, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2462 = distinct !DILocation(line: 1122, column: 8, scope: !2412)
!2463 = !{i64 2156016354, i64 2156016846, i64 2156016391, i64 2156016447, i64 2156016481, i64 2156016505, i64 2156016546, i64 2156016567, i64 2156016595, i64 2156016629}
!2464 = !DILocation(line: 898, column: 26, scope: !2461, inlinedAt: !2462)
!2465 = !DILocation(line: 898, column: 29, scope: !2461, inlinedAt: !2462)
!2466 = !DILocation(line: 898, column: 6, scope: !2461, inlinedAt: !2462)
!2467 = !DILocation(line: 864, column: 22, scope: !2468, inlinedAt: !2469)
!2468 = distinct !DISubprogram(name: "uprobe_buffer_init", scope: !1, file: !1, line: 860, type: !143, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2469 = distinct !DILocation(line: 899, column: 9, scope: !2461, inlinedAt: !2462)
!2470 = !DILocation(line: 864, column: 20, scope: !2468, inlinedAt: !2469)
!2471 = !DILocation(line: 865, column: 24, scope: !2468, inlinedAt: !2469)
!2472 = !DILocation(line: 865, column: 6, scope: !2468, inlinedAt: !2469)
!2473 = !DILocation(line: 0, scope: !2468, inlinedAt: !2469)
!2474 = !DILocation(line: 868, column: 2, scope: !2468, inlinedAt: !2469)
!2475 = !DILocation(line: 866, column: 3, scope: !2468, inlinedAt: !2469)
!2476 = !DILocation(line: 569, column: 2, scope: !2477, inlinedAt: !2479)
!2477 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !2478, file: !2478, line: 567, type: !143, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2478 = !DIFile(filename: "../include/linux/gfp.h", directory: "/llk/linux-5.17/build_arm_allyes")
!2479 = distinct !DILocation(line: 595, column: 9, scope: !2480, inlinedAt: !2481)
!2480 = distinct !DISubprogram(name: "alloc_pages_node", scope: !2478, file: !2478, line: 589, type: !143, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2481 = distinct !DILocation(line: 869, column: 20, scope: !2468, inlinedAt: !2469)
!2482 = !DILocation(line: 572, column: 9, scope: !2477, inlinedAt: !2479)
!2483 = !DILocation(line: 871, column: 9, scope: !2468, inlinedAt: !2469)
!2484 = !DILocation(line: 871, column: 7, scope: !2468, inlinedAt: !2469)
!2485 = !DILocation(line: 875, column: 46, scope: !2468, inlinedAt: !2469)
!2486 = !DILocation(line: 875, column: 3, scope: !2468, inlinedAt: !2469)
!2487 = !DILocation(line: 875, column: 40, scope: !2468, inlinedAt: !2469)
!2488 = !DILocation(line: 875, column: 44, scope: !2468, inlinedAt: !2469)
!2489 = !DILocation(line: 876, column: 3, scope: !2468, inlinedAt: !2469)
!2490 = !DILocation(line: 872, column: 14, scope: !2468, inlinedAt: !2469)
!2491 = !DILocation(line: 882, column: 2, scope: !2468, inlinedAt: !2469)
!2492 = !DILocation(line: 883, column: 11, scope: !2468, inlinedAt: !2469)
!2493 = !DILocation(line: 883, column: 7, scope: !2468, inlinedAt: !2469)
!2494 = !DILocation(line: 884, column: 4, scope: !2468, inlinedAt: !2469)
!2495 = !DILocation(line: 885, column: 3, scope: !2468, inlinedAt: !2469)
!2496 = distinct !{!2496, !2491, !2497}
!2497 = !DILocation(line: 886, column: 2, scope: !2468, inlinedAt: !2469)
!2498 = !DILocation(line: 888, column: 14, scope: !2468, inlinedAt: !2469)
!2499 = !DILocation(line: 888, column: 2, scope: !2468, inlinedAt: !2469)
!2500 = !DILocation(line: 889, column: 2, scope: !2468, inlinedAt: !2469)
!2501 = !DILocation(line: 879, column: 2, scope: !2468, inlinedAt: !2469)
!2502 = !DILocation(line: 902, column: 2, scope: !2461, inlinedAt: !2462)
!2503 = !DILocation(line: 1123, column: 6, scope: !2412)
!2504 = !DILocation(line: 901, column: 24, scope: !2461, inlinedAt: !2462)
!2505 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 1126, column: 2, scope: !2412)
!2507 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2506)
!2508 = !DILocation(line: 1126, column: 2, scope: !2412)
!2509 = !DILocation(line: 1057, column: 6, scope: !2510, inlinedAt: !2511)
!2510 = distinct !DISubprogram(name: "trace_uprobe_enable", scope: !1, file: !1, line: 1053, type: !143, scopeLine: 1054, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2511 = distinct !DILocation(line: 1127, column: 9, scope: !2412)
!2512 = !DILocation(line: 1057, column: 15, scope: !2510, inlinedAt: !2511)
!2513 = !DILocation(line: 1057, column: 22, scope: !2510, inlinedAt: !2511)
!2514 = !DILocation(line: 1058, column: 36, scope: !2510, inlinedAt: !2511)
!2515 = !DILocation(line: 576, column: 6, scope: !1430, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 592, column: 25, scope: !1432, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1058, column: 14, scope: !2510, inlinedAt: !2511)
!2518 = !DILocation(line: 577, column: 10, scope: !1430, inlinedAt: !2516)
!2519 = !DILocation(line: 577, column: 18, scope: !1430, inlinedAt: !2516)
!2520 = !DILocation(line: 577, column: 24, scope: !1430, inlinedAt: !2516)
!2521 = !DILocation(line: 577, column: 3, scope: !1430, inlinedAt: !2516)
!2522 = !DILocation(line: 579, column: 10, scope: !1430, inlinedAt: !2516)
!2523 = !DILocation(line: 579, column: 3, scope: !1430, inlinedAt: !2516)
!2524 = !DILocation(line: 0, scope: !1430, inlinedAt: !2516)
!2525 = !DILocation(line: 543, column: 31, scope: !1442, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 592, column: 9, scope: !1432, inlinedAt: !2517)
!2527 = !DILocation(line: 1058, column: 6, scope: !2510, inlinedAt: !2511)
!2528 = !DILocation(line: 1058, column: 12, scope: !2510, inlinedAt: !2511)
!2529 = !DILocation(line: 1060, column: 10, scope: !2510, inlinedAt: !2511)
!2530 = !DILocation(line: 1060, column: 6, scope: !2510, inlinedAt: !2511)
!2531 = !DILocation(line: 1061, column: 32, scope: !2510, inlinedAt: !2511)
!2532 = !DILocation(line: 1061, column: 47, scope: !2510, inlinedAt: !2511)
!2533 = !DILocation(line: 1061, column: 43, scope: !2510, inlinedAt: !2511)
!2534 = !DILocation(line: 1062, column: 5, scope: !2510, inlinedAt: !2511)
!2535 = !DILocation(line: 1061, column: 9, scope: !2510, inlinedAt: !2511)
!2536 = !DILocation(line: 1061, column: 3, scope: !2510, inlinedAt: !2511)
!2537 = !DILocation(line: 1064, column: 25, scope: !2510, inlinedAt: !2511)
!2538 = !DILocation(line: 1064, column: 40, scope: !2510, inlinedAt: !2511)
!2539 = !DILocation(line: 1064, column: 36, scope: !2510, inlinedAt: !2511)
!2540 = !DILocation(line: 1064, column: 9, scope: !2510, inlinedAt: !2511)
!2541 = !DILocation(line: 0, scope: !2510, inlinedAt: !2511)
!2542 = !DILocation(line: 1066, column: 6, scope: !2510, inlinedAt: !2511)
!2543 = !DILocation(line: 1067, column: 3, scope: !2510, inlinedAt: !2511)
!2544 = !DILocation(line: 1067, column: 13, scope: !2510, inlinedAt: !2511)
!2545 = !DILocation(line: 1129, column: 26, scope: !2412)
!2546 = !DILocation(line: 1129, column: 4, scope: !2412)
!2547 = !DILocation(line: 1137, column: 2, scope: !2412)
!2548 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 1126, column: 2, scope: !2412)
!2550 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2549)
!2551 = distinct !{!2551, !2508, !2552}
!2552 = !DILocation(line: 1132, column: 2, scope: !2412)
!2553 = !DILocation(line: 1134, column: 2, scope: !2412)
!2554 = !DILocation(line: 1140, column: 6, scope: !2412)
!2555 = !DILocation(line: 1141, column: 27, scope: !2412)
!2556 = !DILocation(line: 1141, column: 3, scope: !2412)
!2557 = !DILocation(line: 1143, column: 26, scope: !2412)
!2558 = !DILocation(line: 270, column: 6, scope: !2559, inlinedAt: !2560)
!2559 = distinct !DISubprogram(name: "trace_probe_clear_flag", scope: !579, file: !579, line: 267, type: !143, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2560 = distinct !DILocation(line: 1143, column: 3, scope: !2412)
!2561 = !DILocation(line: 270, column: 19, scope: !2559, inlinedAt: !2560)
!2562 = !DILocation(line: 1146, column: 1, scope: !2412)
!2563 = distinct !DISubprogram(name: "probe_event_disable", scope: !1, file: !1, line: 1148, type: !143, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2564 = !DILocation(line: 1150, scope: !2563)
!2565 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1153, column: 7, scope: !2563)
!2567 = !DILocation(line: 1154, column: 6, scope: !2563)
!2568 = !DILocation(line: 1155, column: 3, scope: !2563)
!2569 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 275, column: 9, scope: !1075, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1157, column: 7, scope: !2563)
!2572 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !2570)
!2573 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !2570)
!2574 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !2570)
!2575 = !DILocation(line: 1157, column: 6, scope: !2563)
!2576 = !DILocation(line: 0, scope: !2563)
!2577 = !DILocation(line: 1158, column: 3, scope: !2563)
!2578 = !DILocation(line: 1160, column: 6, scope: !2563)
!2579 = !DILocation(line: 1161, column: 7, scope: !2563)
!2580 = !DILocation(line: 1161, column: 41, scope: !2563)
!2581 = !DILocation(line: 1162, column: 4, scope: !2563)
!2582 = !DILocation(line: 258, column: 16, scope: !1073, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 275, column: 9, scope: !1075, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1164, column: 7, scope: !2563)
!2585 = !DILocation(line: 258, column: 23, scope: !1073, inlinedAt: !2583)
!2586 = !DILocation(line: 258, column: 29, scope: !1073, inlinedAt: !2583)
!2587 = !DILocation(line: 258, column: 10, scope: !1073, inlinedAt: !2583)
!2588 = !DILocation(line: 1164, column: 7, scope: !2563)
!2589 = !DILocation(line: 1165, column: 4, scope: !2563)
!2590 = !DILocation(line: 1166, column: 2, scope: !2563)
!2591 = !DILocation(line: 1167, column: 26, scope: !2563)
!2592 = !DILocation(line: 270, column: 6, scope: !2559, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 1167, column: 3, scope: !2563)
!2594 = !DILocation(line: 270, column: 19, scope: !2559, inlinedAt: !2593)
!2595 = !DILocation(line: 1169, column: 2, scope: !2563)
!2596 = !DILocation(line: 1170, column: 2, scope: !2563)
!2597 = !DILocation(line: 1171, column: 1, scope: !2563)
!2598 = distinct !DISubprogram(name: "uprobe_perf_close", scope: !1, file: !1, line: 1268, type: !143, scopeLine: 1270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2599 = !DILocation(line: 1270, scope: !2598)
!2600 = !DILocation(line: 305, column: 9, scope: !751, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1275, column: 7, scope: !2598)
!2602 = !DILocation(line: 1276, column: 6, scope: !2598)
!2603 = !DILocation(line: 1277, column: 3, scope: !2598)
!2604 = !DILocation(line: 1280, column: 40, scope: !2598)
!2605 = !DILocation(line: 1280, column: 47, scope: !2598)
!2606 = !DILocation(line: 1224, column: 2, scope: !2607, inlinedAt: !2608)
!2607 = distinct !DISubprogram(name: "trace_uprobe_filter_remove", scope: !1, file: !1, line: 1219, type: !143, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2608 = distinct !DILocation(line: 1280, column: 6, scope: !2598)
!2609 = !DILocation(line: 1225, column: 16, scope: !2607, inlinedAt: !2608)
!2610 = !DILocation(line: 1225, column: 6, scope: !2607, inlinedAt: !2608)
!2611 = !DILocation(line: 1225, column: 13, scope: !2607, inlinedAt: !2608)
!2612 = !DILocation(line: 1226, column: 13, scope: !2607, inlinedAt: !2608)
!2613 = !DILocation(line: 134, column: 7, scope: !1131, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 148, column: 2, scope: !2615, inlinedAt: !2616)
!2615 = distinct !DISubprogram(name: "list_del", scope: !943, file: !943, line: 146, type: !143, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2616 = distinct !DILocation(line: 1226, column: 3, scope: !2607, inlinedAt: !2608)
!2617 = !DILocation(line: 134, column: 6, scope: !1131, inlinedAt: !2614)
!2618 = !DILocation(line: 135, column: 3, scope: !1131, inlinedAt: !2614)
!2619 = !DILocation(line: 137, column: 13, scope: !1131, inlinedAt: !2614)
!2620 = !DILocation(line: 137, column: 20, scope: !1131, inlinedAt: !2614)
!2621 = !DILocation(line: 137, column: 33, scope: !1131, inlinedAt: !2614)
!2622 = !DILocation(line: 114, column: 8, scope: !1141, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 137, column: 2, scope: !1131, inlinedAt: !2614)
!2624 = !DILocation(line: 114, column: 13, scope: !1141, inlinedAt: !2623)
!2625 = !DILocation(line: 115, column: 2, scope: !1141, inlinedAt: !2623)
!2626 = !DILocation(line: 138, column: 1, scope: !1131, inlinedAt: !2614)
!2627 = !DILocation(line: 149, column: 14, scope: !2615, inlinedAt: !2616)
!2628 = !DILocation(line: 150, column: 9, scope: !2615, inlinedAt: !2616)
!2629 = !DILocation(line: 150, column: 14, scope: !2615, inlinedAt: !2616)
!2630 = !DILocation(line: 1227, column: 18, scope: !2607, inlinedAt: !2608)
!2631 = !DILocation(line: 1227, column: 10, scope: !2607, inlinedAt: !2608)
!2632 = !DILocation(line: 1227, column: 32, scope: !2607, inlinedAt: !2608)
!2633 = !DILocation(line: 1228, column: 5, scope: !2607, inlinedAt: !2608)
!2634 = !DILocation(line: 1228, column: 15, scope: !2607, inlinedAt: !2608)
!2635 = !DILocation(line: 1228, column: 23, scope: !2607, inlinedAt: !2608)
!2636 = !DILocation(line: 1228, column: 29, scope: !2607, inlinedAt: !2608)
!2637 = !DILocation(line: 1228, column: 43, scope: !2607, inlinedAt: !2608)
!2638 = !DILocation(line: 1229, column: 30, scope: !2607, inlinedAt: !2608)
!2639 = !DILocation(line: 1216, column: 56, scope: !2233, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1229, column: 4, scope: !2607, inlinedAt: !2608)
!2641 = !DILocation(line: 1204, column: 2, scope: !1819, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 1216, column: 9, scope: !2233, inlinedAt: !2640)
!2643 = !DILocation(line: 1205, column: 17, scope: !1819, inlinedAt: !2642)
!2644 = !DILocation(line: 1205, column: 25, scope: !1819, inlinedAt: !2642)
!2645 = !DILocation(line: 1205, column: 28, scope: !1819, inlinedAt: !2642)
!2646 = !DILocation(line: 1205, column: 7, scope: !1819, inlinedAt: !2642)
!2647 = !DILocation(line: 1206, column: 4, scope: !1819, inlinedAt: !2642)
!2648 = distinct !{!2648, !2641, !2649}
!2649 = !DILocation(line: 1207, column: 2, scope: !1819, inlinedAt: !2642)
!2650 = !DILocation(line: 1209, column: 2, scope: !1819, inlinedAt: !2642)
!2651 = !DILocation(line: 1234, column: 2, scope: !2607, inlinedAt: !2608)
!2652 = !DILocation(line: 1280, column: 6, scope: !2598)
!2653 = !DILocation(line: 1231, column: 3, scope: !2607, inlinedAt: !2608)
!2654 = !DILocation(line: 1231, column: 11, scope: !2607, inlinedAt: !2608)
!2655 = !DILocation(line: 1231, column: 24, scope: !2607, inlinedAt: !2608)
!2656 = !DILocation(line: 1232, column: 10, scope: !2607, inlinedAt: !2608)
!2657 = !DILocation(line: 1281, column: 3, scope: !2598)
!2658 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1283, column: 2, scope: !2598)
!2660 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2659)
!2661 = !DILocation(line: 1283, column: 2, scope: !2598)
!2662 = !DILocation(line: 1284, column: 26, scope: !2598)
!2663 = !DILocation(line: 1284, column: 37, scope: !2598)
!2664 = !DILocation(line: 1284, column: 33, scope: !2598)
!2665 = !DILocation(line: 1284, column: 50, scope: !2598)
!2666 = !DILocation(line: 1284, column: 9, scope: !2598)
!2667 = !DILocation(line: 1285, column: 7, scope: !2598)
!2668 = !DILocation(line: 1286, column: 4, scope: !2598)
!2669 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 1283, column: 2, scope: !2598)
!2671 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2670)
!2672 = distinct !{!2672, !2661, !2673}
!2673 = !DILocation(line: 1287, column: 2, scope: !2598)
!2674 = !DILocation(line: 0, scope: !2598)
!2675 = !DILocation(line: 1289, column: 9, scope: !2598)
!2676 = !DILocation(line: 1289, column: 2, scope: !2598)
!2677 = !DILocation(line: 1290, column: 1, scope: !2598)
!2678 = distinct !DISubprogram(name: "__probe_event_disable", scope: !1, file: !1, line: 1072, type: !143, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2679 = !DILocation(line: 1073, scope: !2678)
!2680 = !DILocation(line: 1077, column: 2, scope: !2678)
!2681 = !DILocation(line: 267, column: 18, scope: !2448, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1077, column: 2, scope: !2678)
!2683 = !DILocation(line: 267, column: 10, scope: !2448, inlinedAt: !2682)
!2684 = !DILocation(line: 267, column: 32, scope: !2448, inlinedAt: !2682)
!2685 = !DILocation(line: 267, column: 47, scope: !2448, inlinedAt: !2682)
!2686 = !DILocation(line: 267, column: 55, scope: !2448, inlinedAt: !2682)
!2687 = !DILocation(line: 292, column: 9, scope: !1093, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 267, column: 35, scope: !2448, inlinedAt: !2682)
!2689 = !DILocation(line: 292, column: 31, scope: !1093, inlinedAt: !2688)
!2690 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 1079, column: 2, scope: !2678)
!2692 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2691)
!2693 = !DILocation(line: 1079, column: 2, scope: !2678)
!2694 = !DILocation(line: 1080, column: 12, scope: !2678)
!2695 = !DILocation(line: 1080, column: 8, scope: !2678)
!2696 = !DILocation(line: 1080, column: 7, scope: !2678)
!2697 = !DILocation(line: 1081, column: 4, scope: !2678)
!2698 = !DILocation(line: 1083, column: 21, scope: !2678)
!2699 = !DILocation(line: 1083, column: 25, scope: !2678)
!2700 = !DILocation(line: 1083, column: 36, scope: !2678)
!2701 = !DILocation(line: 1083, column: 32, scope: !2678)
!2702 = !DILocation(line: 1083, column: 49, scope: !2678)
!2703 = !DILocation(line: 1083, column: 3, scope: !2678)
!2704 = !DILocation(line: 1084, column: 13, scope: !2678)
!2705 = !DILocation(line: 1085, column: 2, scope: !2678)
!2706 = !DILocation(line: 310, column: 14, scope: !1087, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1079, column: 2, scope: !2678)
!2708 = !DILocation(line: 310, column: 21, scope: !1087, inlinedAt: !2707)
!2709 = distinct !{!2709, !2693, !2705}
!2710 = !DILocation(line: 1086, column: 1, scope: !2678)
!2711 = distinct !DISubprogram(name: "uprobe_buffer_disable", scope: !1, file: !1, line: 907, type: !143, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2712 = !DILocation(line: 908, scope: !2711)
!2713 = !DILocation(line: 911, column: 2, scope: !2711)
!2714 = !{i64 2156017994, i64 2156018486, i64 2156018031, i64 2156018087, i64 2156018121, i64 2156018145, i64 2156018186, i64 2156018207, i64 2156018235, i64 2156018269}
!2715 = !DILocation(line: 913, column: 6, scope: !2711)
!2716 = !DILocation(line: 913, column: 29, scope: !2711)
!2717 = !DILocation(line: 914, column: 3, scope: !2711)
!2718 = !DILocation(line: 915, column: 4, scope: !2711)
!2719 = distinct !{!2719, !2717, !2718}
!2720 = !DILocation(line: 918, column: 15, scope: !2711)
!2721 = !DILocation(line: 918, column: 3, scope: !2711)
!2722 = !DILocation(line: 919, column: 21, scope: !2711)
!2723 = !DILocation(line: 920, column: 2, scope: !2711)
!2724 = !DILocation(line: 921, column: 1, scope: !2711)
!2725 = distinct !DISubprogram(name: "probes_write", scope: !1, file: !1, line: 796, type: !143, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2726 = !DILocation(line: 798, scope: !2725)
!2727 = !DILocation(line: 799, column: 9, scope: !2725)
!2728 = !DILocation(line: 799, column: 2, scope: !2725)
!2729 = distinct !DISubprogram(name: "probes_open", scope: !1, file: !1, line: 779, type: !143, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2730 = !DILocation(line: 780, scope: !2729)
!2731 = !DILocation(line: 783, column: 8, scope: !2729)
!2732 = !DILocation(line: 784, column: 6, scope: !2729)
!2733 = !DILocation(line: 785, column: 10, scope: !2729)
!2734 = !DILocation(line: 785, column: 3, scope: !2729)
!2735 = !DILocation(line: 787, column: 13, scope: !2729)
!2736 = !DILocation(line: 787, column: 20, scope: !2729)
!2737 = !DILocation(line: 787, column: 35, scope: !2729)
!2738 = !DILocation(line: 787, column: 39, scope: !2729)
!2739 = !DILocation(line: 787, column: 45, scope: !2729)
!2740 = !DILocation(line: 787, column: 53, scope: !2729)
!2741 = !DILocation(line: 787, column: 6, scope: !2729)
!2742 = !DILocation(line: 788, column: 9, scope: !2729)
!2743 = !DILocation(line: 789, column: 7, scope: !2729)
!2744 = !DILocation(line: 790, column: 11, scope: !2729)
!2745 = !DILocation(line: 790, column: 4, scope: !2729)
!2746 = !DILocation(line: 791, column: 2, scope: !2729)
!2747 = !DILocation(line: 793, column: 18, scope: !2729)
!2748 = !DILocation(line: 793, column: 9, scope: !2729)
!2749 = !DILocation(line: 793, column: 2, scope: !2729)
!2750 = !DILocation(line: 0, scope: !2729)
!2751 = !DILocation(line: 794, column: 1, scope: !2729)
!2752 = distinct !DISubprogram(name: "create_or_delete_trace_uprobe", scope: !1, file: !1, line: 723, type: !143, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2753 = !DILocation(line: 724, scope: !2752)
!2754 = !DILocation(line: 727, column: 6, scope: !2752)
!2755 = !DILocation(line: 727, column: 21, scope: !2752)
!2756 = !DILocation(line: 728, column: 28, scope: !2752)
!2757 = !DILocation(line: 728, column: 10, scope: !2752)
!2758 = !DILocation(line: 728, column: 3, scope: !2752)
!2759 = !DILocation(line: 720, column: 9, scope: !1023, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 730, column: 8, scope: !2752)
!2761 = !DILocation(line: 731, column: 13, scope: !2752)
!2762 = !DILocation(line: 731, column: 9, scope: !2752)
!2763 = !DILocation(line: 731, column: 39, scope: !2752)
!2764 = !DILocation(line: 0, scope: !2752)
!2765 = !DILocation(line: 732, column: 1, scope: !2752)
!2766 = distinct !DISubprogram(name: "probes_seq_show", scope: !1, file: !1, line: 762, type: !143, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2767 = !DILocation(line: 763, scope: !2766)
!2768 = !DILocation(line: 70, column: 13, scope: !780, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 766, column: 7, scope: !2766)
!2770 = !DILocation(line: 70, column: 17, scope: !780, inlinedAt: !2769)
!2771 = !DILocation(line: 766, column: 6, scope: !2766)
!2772 = !DILocation(line: 767, column: 3, scope: !2766)
!2773 = !DILocation(line: 769, column: 27, scope: !2766)
!2774 = !DILocation(line: 769, column: 9, scope: !2766)
!2775 = !DILocation(line: 769, column: 2, scope: !2766)
!2776 = !DILocation(line: 770, column: 1, scope: !2766)
!2777 = distinct !DISubprogram(name: "profile_open", scope: !1, file: !1, line: 834, type: !143, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2778 = !DILocation(line: 835, scope: !2777)
!2779 = !DILocation(line: 838, column: 8, scope: !2777)
!2780 = !DILocation(line: 839, column: 6, scope: !2777)
!2781 = !DILocation(line: 840, column: 10, scope: !2777)
!2782 = !DILocation(line: 840, column: 3, scope: !2777)
!2783 = !DILocation(line: 842, column: 18, scope: !2777)
!2784 = !DILocation(line: 842, column: 9, scope: !2777)
!2785 = !DILocation(line: 842, column: 2, scope: !2777)
!2786 = !DILocation(line: 0, scope: !2777)
!2787 = !DILocation(line: 843, column: 1, scope: !2777)
!2788 = distinct !DISubprogram(name: "probes_profile_seq_show", scope: !1, file: !1, line: 813, type: !143, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!2789 = !DILocation(line: 814, scope: !2788)
!2790 = !DILocation(line: 70, column: 13, scope: !780, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 818, column: 7, scope: !2788)
!2792 = !DILocation(line: 70, column: 17, scope: !780, inlinedAt: !2791)
!2793 = !DILocation(line: 818, column: 6, scope: !2788)
!2794 = !DILocation(line: 819, column: 3, scope: !2788)
!2795 = !DILocation(line: 821, column: 23, scope: !2788)
!2796 = !DILocation(line: 822, column: 42, scope: !2788)
!2797 = !DILocation(line: 280, column: 31, scope: !784, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 823, column: 4, scope: !2788)
!2799 = !DILocation(line: 443, column: 12, scope: !729, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 280, column: 9, scope: !784, inlinedAt: !2798)
!2801 = !DILocation(line: 443, column: 18, scope: !729, inlinedAt: !2800)
!2802 = !DILocation(line: 443, column: 6, scope: !729, inlinedAt: !2800)
!2803 = !DILocation(line: 444, column: 16, scope: !729, inlinedAt: !2800)
!2804 = !DILocation(line: 444, column: 10, scope: !729, inlinedAt: !2800)
!2805 = !DILocation(line: 444, column: 21, scope: !729, inlinedAt: !2800)
!2806 = !DILocation(line: 444, column: 31, scope: !729, inlinedAt: !2800)
!2807 = !DILocation(line: 446, column: 10, scope: !729, inlinedAt: !2800)
!2808 = !DILocation(line: 446, column: 16, scope: !729, inlinedAt: !2800)
!2809 = !DILocation(line: 446, column: 3, scope: !729, inlinedAt: !2800)
!2810 = !DILocation(line: 0, scope: !729, inlinedAt: !2800)
!2811 = !DILocation(line: 823, column: 35, scope: !2788)
!2812 = !DILocation(line: 822, column: 2, scope: !2788)
!2813 = !DILocation(line: 824, column: 2, scope: !2788)
!2814 = !DILocation(line: 825, column: 1, scope: !2788)
