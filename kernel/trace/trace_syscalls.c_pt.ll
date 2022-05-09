; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_syscalls.c_pt.bc'
source_filename = "../kernel/trace/trace_syscalls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.syscall_trace_enter = type { %struct.trace_entry, i32, [0 x i32] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.syscall_trace_exit = type { %struct.trace_entry, i32, i32 }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.79, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.syscall_tp_t = type { i64, i32, [6 x i32] }
%struct.syscall_tp_t.100 = type { i64, i32, i32 }

@enter_syscall_print_funcs = dso_local global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @print_syscall_enter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = dso_local global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @print_syscall_exit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"syscalls\00", [23 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = dso_local local_unnamed_addr global %struct.trace_event_class { ptr @.str, ptr null, ptr null, ptr @syscall_enter_register, ptr @syscall_enter_fields_array, ptr @syscall_get_enter_fields, %struct.list_head zeroinitializer, ptr @init_syscall_trace }, section ".ref.data", align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__syscall_nr\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_syscall_exit = dso_local global %struct.trace_event_class { ptr @.str, ptr null, ptr null, ptr @syscall_exit_register, ptr @.compoundliteral, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_syscall_exit, i64 24), ptr getelementptr (i8, ptr @event_class_syscall_exit, i64 24) }, ptr @init_syscall_trace }, section ".ref.data", align 4
@sys_call_table = external dso_local local_unnamed_addr constant [0 x i32], align 4
@syscalls_metadata = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/trace/trace_syscalls.c\00", [34 x i8] zeroinitializer }, align 32
@print_syscall_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s(\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lx%s\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@print_syscall_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s -> 0x%lx\0A\00", [19 x i8] zeroinitializer }, align 32
@syscall_enter_fields_array = internal global <{ %struct.trace_event_fields, { ptr, { ptr, [16 x i8] } }, %struct.trace_event_fields }> <{ %struct.trace_event_fields { ptr @.str.1, %union.anon { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, { ptr, { ptr, [16 x i8] } } { ptr inttoptr (i32 -1 to ptr), { ptr, [16 x i8] } { ptr @syscall_enter_define_fields, [16 x i8] undef } }, %struct.trace_event_fields zeroinitializer }>, section ".ref.data", align 4
@init_syscall_trace.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trace_syscalls\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init_syscall_trace\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"syscall %s metadata not mapped, disabling ftrace event\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\220x%lx\22, REC->ret\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: 0x%%0%zulx%s\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c", ((unsigned long)(REC->%s))\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__start_syscalls_metadata = external dso_local global [0 x ptr], align 4
@__stop_syscalls_metadata = external dso_local global [0 x ptr], align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_ni_syscall\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_mmap2\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_mmap_pgoff\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_statfs64_wrapper\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_statfs64\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_fstatfs64_wrapper\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_fstatfs64\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_arm_fadvise64_64\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_fadvise64_64\00", [47 x i8] zeroinitializer }, align 32
@reg_event_syscall_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@syscall_trace_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @syscall_trace_lock, i64 52), ptr getelementptr (i8, ptr @syscall_trace_lock, i64 52) }, ptr @syscall_trace_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"syscall_trace_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"syscall_trace_lock\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_sys_enter = external dso_local global %struct.tracepoint, align 4
@ftrace_syscall_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@trace_buffered_event = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@trace_buffered_event_cnt = external dso_local global i32, section ".data..percpu", align 4
@unreg_event_syscall_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sys_perf_refcount_enter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@perf_sysenter_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016event trace: Could not activate syscall entry trace point\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"perf_sysenter_enable\00", [43 x i8] zeroinitializer }, align 32
@perf_sysenter_enable._entry_ptr = internal global ptr @perf_sysenter_enable._entry, section ".printk_index", align 4
@enabled_perf_enter_syscalls = internal global { [15 x i32], [36 x i8] } zeroinitializer, align 32
@reg_event_syscall_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_sys_exit = external dso_local global %struct.tracepoint, align 4
@ftrace_syscall_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@unreg_event_syscall_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sys_perf_refcount_exit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@perf_sysexit_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016event trace: Could not activate syscall exit trace point\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"perf_sysexit_enable\00", [44 x i8] zeroinitializer }, align 32
@perf_sysexit_enable._entry_ptr = internal global ptr @perf_sysexit_enable._entry, section ".printk_index", align 4
@enabled_perf_exit_syscalls = internal global { [15 x i32], [36 x i8] } zeroinitializer, align 32
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.101 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_syscalls.gcda\00", [62 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [71 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 602895017, i32 -1158897881 }, %emit_function_args_ty { i32 1, i32 -852822400, i32 -1158897881 }, %emit_function_args_ty { i32 2, i32 -258058184, i32 -1158897881 }, %emit_function_args_ty { i32 3, i32 521370208, i32 -1158897881 }, %emit_function_args_ty { i32 4, i32 -358843603, i32 -1158897881 }, %emit_function_args_ty { i32 5, i32 -894877170, i32 -1158897881 }, %emit_function_args_ty { i32 6, i32 -603771939, i32 -1158897881 }, %emit_function_args_ty { i32 7, i32 1422383586, i32 -1158897881 }, %emit_function_args_ty { i32 8, i32 -1646980305, i32 -1158897881 }, %emit_function_args_ty { i32 9, i32 -859590550, i32 -1158897881 }, %emit_function_args_ty { i32 10, i32 1366964667, i32 -1158897881 }, %emit_function_args_ty { i32 11, i32 510901217, i32 -1158897881 }, %emit_function_args_ty { i32 12, i32 1217139955, i32 -1158897881 }, %emit_function_args_ty { i32 13, i32 812839554, i32 -1158897881 }, %emit_function_args_ty { i32 14, i32 -47734423, i32 -1158897881 }, %emit_function_args_ty { i32 15, i32 -570621114, i32 -1158897881 }, %emit_function_args_ty { i32 16, i32 -270078279, i32 -1158897881 }, %emit_function_args_ty { i32 17, i32 735847176, i32 -1158897881 }, %emit_function_args_ty { i32 18, i32 -1765846592, i32 -1158897881 }, %emit_function_args_ty { i32 19, i32 -400554785, i32 -1158897881 }, %emit_function_args_ty { i32 20, i32 -1782918348, i32 -1158897881 }, %emit_function_args_ty { i32 21, i32 795548855, i32 -1158897881 }, %emit_function_args_ty { i32 22, i32 727036892, i32 -1158897881 }, %emit_function_args_ty { i32 23, i32 1841983822, i32 -1158897881 }, %emit_function_args_ty { i32 24, i32 1624494247, i32 -1158897881 }, %emit_function_args_ty { i32 25, i32 -963894156, i32 -1158897881 }, %emit_function_args_ty { i32 26, i32 -2128255985, i32 -1158897881 }, %emit_function_args_ty { i32 27, i32 1473378369, i32 -1158897881 }, %emit_function_args_ty { i32 28, i32 -2018542119, i32 -1158897881 }, %emit_function_args_ty { i32 29, i32 -198927705, i32 -1158897881 }, %emit_function_args_ty { i32 30, i32 782300592, i32 -1158897881 }, %emit_function_args_ty { i32 31, i32 1418925403, i32 -1158897881 }, %emit_function_args_ty { i32 32, i32 -1465302465, i32 -1158897881 }, %emit_function_args_ty { i32 33, i32 -1451624710, i32 -1158897881 }, %emit_function_args_ty { i32 34, i32 -1023291710, i32 -1158897881 }, %emit_function_args_ty { i32 35, i32 1887896702, i32 -1158897881 }, %emit_function_args_ty { i32 36, i32 288547376, i32 -1158897881 }, %emit_function_args_ty { i32 37, i32 858041679, i32 -1158897881 }, %emit_function_args_ty { i32 38, i32 1249662737, i32 -1158897881 }, %emit_function_args_ty { i32 39, i32 167243435, i32 -1158897881 }, %emit_function_args_ty { i32 40, i32 -993535926, i32 -1158897881 }, %emit_function_args_ty { i32 41, i32 -495075636, i32 -1158897881 }, %emit_function_args_ty { i32 42, i32 835031753, i32 -1158897881 }, %emit_function_args_ty { i32 43, i32 -1846855200, i32 -1158897881 }, %emit_function_args_ty { i32 44, i32 81157262, i32 -1158897881 }, %emit_function_args_ty { i32 45, i32 -1810048733, i32 -1158897881 }, %emit_function_args_ty { i32 46, i32 -2113064956, i32 -1158897881 }, %emit_function_args_ty { i32 47, i32 -2010760686, i32 -1158897881 }, %emit_function_args_ty { i32 48, i32 -1567486560, i32 -1158897881 }, %emit_function_args_ty { i32 49, i32 1333844298, i32 -1158897881 }, %emit_function_args_ty { i32 50, i32 1403380823, i32 -1158897881 }, %emit_function_args_ty { i32 51, i32 -743251458, i32 -1158897881 }, %emit_function_args_ty { i32 52, i32 -1208743970, i32 -1158897881 }, %emit_function_args_ty { i32 53, i32 -1111025999, i32 -1158897881 }, %emit_function_args_ty { i32 54, i32 -1332429168, i32 -1158897881 }, %emit_function_args_ty { i32 55, i32 -2031440538, i32 -1158897881 }, %emit_function_args_ty { i32 56, i32 491662117, i32 -1158897881 }, %emit_function_args_ty { i32 57, i32 1710487500, i32 -1158897881 }, %emit_function_args_ty { i32 58, i32 -584910999, i32 -1158897881 }, %emit_function_args_ty { i32 59, i32 1599838572, i32 -1158897881 }, %emit_function_args_ty { i32 60, i32 1315555644, i32 -1158897881 }, %emit_function_args_ty { i32 61, i32 1587012528, i32 -1158897881 }, %emit_function_args_ty { i32 62, i32 -161400553, i32 -1158897881 }, %emit_function_args_ty { i32 63, i32 710084445, i32 -1158897881 }, %emit_function_args_ty { i32 64, i32 -1710264173, i32 -1158897881 }, %emit_function_args_ty { i32 65, i32 -255271799, i32 -1158897881 }, %emit_function_args_ty { i32 66, i32 -119260321, i32 -1158897881 }, %emit_function_args_ty { i32 67, i32 -1839342626, i32 -1158897881 }, %emit_function_args_ty { i32 68, i32 718442906, i32 -1158897881 }, %emit_function_args_ty { i32 69, i32 -1166355283, i32 -1158897881 }, %emit_function_args_ty { i32 70, i32 -1393183784, i32 -1158897881 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [71 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.85 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.86 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.87 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.88 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.89 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.90 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.95 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.96 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.97 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.98 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.99 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.100 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.101 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.102 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.103 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.104 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.105 }]
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.106 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"enter_syscall_print_funcs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 491, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"exit_syscall_print_funcs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 495, i32 30 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 500, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 511, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 512, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"syscalls_metadata\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 35, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 536, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 149, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 158, i32 24 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 161, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 163, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 163, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 197, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 466, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 246, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 220, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 222, i32 43 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 230, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 94, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 63, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 64, i32 9 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 65, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 66, i32 9 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 67, i32 24 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 68, i32 9 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 69, i32 24 }
@___asan_gen_.199 = private unnamed_addr constant [33 x i8] c"../arch/arm/include/asm/ftrace.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 70, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant [19 x i8] c"syscall_trace_lock\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 16, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 311, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant [24 x i8] c"sys_perf_refcount_enter\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 565, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 648, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [28 x i8] c"enabled_perf_enter_syscalls\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 563, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant [23 x i8] c"sys_perf_refcount_exit\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 566, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 744, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [27 x i8] c"enabled_perf_exit_syscalls\00", align 1
@___asan_gen_.241 = private constant [33 x i8] c"../kernel/trace/trace_syscalls.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 564, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @perf_sysenter_enable._entry, ptr @perf_sysenter_enable._entry_ptr, ptr @perf_sysexit_enable._entry, ptr @perf_sysexit_enable._entry_ptr, ptr @enter_syscall_print_funcs, ptr @exit_syscall_print_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral, ptr @syscalls_metadata, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @syscall_trace_lock, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @sys_perf_refcount_enter, ptr @.str.32, ptr @.str.33, ptr @enabled_perf_enter_syscalls, ptr @sys_perf_refcount_exit, ptr @.str.34, ptr @.str.35, ptr @enabled_perf_exit_syscalls], section "llvm.metadata"
@1 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enter_syscall_print_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_syscall_print_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscalls_metadata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscall_trace_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_perf_refcount_enter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_sysenter_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enabled_perf_enter_syscalls to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_perf_refcount_exit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_sysexit_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enabled_perf_exit_syscalls to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_syscall_name(i32 noundef %syscall) local_unnamed_addr #0 align 64 !dbg !117 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !120
  %0 = load ptr, ptr @syscalls_metadata, align 4, !dbg !121
  %tobool.not.i = icmp eq ptr %0, null, !dbg !121
  br i1 %tobool.not.i, label %entry.syscall_nr_to_meta.exit.thread_crit_edge, label %lor.lhs.false.i, !dbg !124

entry.syscall_nr_to_meta.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !124
  br label %syscall_nr_to_meta.exit.thread, !dbg !124

lor.lhs.false.i:                                  ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !125
  %1 = add i64 %gcov_ctr.i, 1, !dbg !125
  store i64 %1, ptr @__llvm_gcov_ctr.36, align 16, !dbg !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %syscall), !dbg !126
  %cmp.i = icmp sgt i32 %syscall, 451, !dbg !126
  br i1 %cmp.i, label %lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge, label %lor.lhs.false1.i, !dbg !127

lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !127
  br label %syscall_nr_to_meta.exit.thread, !dbg !127

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !128
  %2 = add i64 %gcov_ctr3.i, 1, !dbg !128
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %syscall), !dbg !129
  %cmp2.i = icmp slt i32 %syscall, 0, !dbg !129
  br i1 %cmp2.i, label %lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge, label %syscall_nr_to_meta.exit, !dbg !130

lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !130
  br label %syscall_nr_to_meta.exit.thread, !dbg !130

syscall_nr_to_meta.exit.thread:                   ; preds = %lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge, %lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge, %entry.syscall_nr_to_meta.exit.thread_crit_edge
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !131
  %3 = add i64 %gcov_ctr5.i, 1, !dbg !131
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !131
  br label %if.then, !dbg !132

syscall_nr_to_meta.exit:                          ; preds = %lor.lhs.false1.i
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !133
  %4 = add i64 %gcov_ctr4.i, 1, !dbg !133
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !133
  %arrayidx.i = getelementptr ptr, ptr %0, i32 %syscall, !dbg !133
  %5 = ptrtoint ptr %arrayidx.i to i32, !dbg !133
  call void @__asan_load4_noabort(i32 %5), !dbg !133
  %6 = load ptr, ptr %arrayidx.i, align 4, !dbg !133
  %tobool.not = icmp eq ptr %6, null, !dbg !134
  br i1 %tobool.not, label %syscall_nr_to_meta.exit.if.then_crit_edge, label %if.end, !dbg !132

syscall_nr_to_meta.exit.if.then_crit_edge:        ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !132
  br label %if.then, !dbg !132

if.then:                                          ; preds = %syscall_nr_to_meta.exit.if.then_crit_edge, %syscall_nr_to_meta.exit.thread
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8, !dbg !135
  %7 = add i64 %gcov_ctr, 1, !dbg !135
  store i64 %7, ptr @__llvm_gcov_ctr, align 8, !dbg !135
  br label %cleanup, !dbg !135

if.end:                                           ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !136
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !136
  %8 = add i64 %gcov_ctr2, 1, !dbg !136
  store i64 %8, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !136
  %9 = ptrtoint ptr %6 to i32, !dbg !137
  call void @__asan_load4_noabort(i32 %9), !dbg !137
  %10 = load ptr, ptr %6, align 4, !dbg !137
  br label %cleanup, !dbg !138

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %10, %if.end ], [ null, %if.then ], !dbg !139
  ret ptr %retval.0, !dbg !140
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @print_syscall_enter(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readnone %event) #2 align 64 !dbg !141 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !142
  %0 = ptrtoint ptr %iter to i32, !dbg !143
  call void @__asan_load4_noabort(i32 %0), !dbg !143
  %1 = load ptr, ptr %iter, align 8, !dbg !143
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !144
  %ent2 = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !145
  %2 = ptrtoint ptr %ent2 to i32, !dbg !145
  call void @__asan_load4_noabort(i32 %2), !dbg !145
  %3 = load ptr, ptr %ent2, align 8, !dbg !145
  %nr = getelementptr inbounds %struct.syscall_trace_enter, ptr %3, i32 0, i32 1, !dbg !146
  %4 = ptrtoint ptr %nr to i32, !dbg !146
  call void @__asan_load4_noabort(i32 %4), !dbg !146
  %5 = load i32, ptr %nr, align 4, !dbg !146
  %6 = load ptr, ptr @syscalls_metadata, align 4, !dbg !147
  %tobool.not.i = icmp eq ptr %6, null, !dbg !147
  br i1 %tobool.not.i, label %entry.syscall_nr_to_meta.exit.thread_crit_edge, label %lor.lhs.false.i, !dbg !149

entry.syscall_nr_to_meta.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !149
  br label %syscall_nr_to_meta.exit.thread, !dbg !149

lor.lhs.false.i:                                  ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !150
  %7 = add i64 %gcov_ctr.i, 1, !dbg !150
  store i64 %7, ptr @__llvm_gcov_ctr.36, align 16, !dbg !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %5), !dbg !151
  %cmp.i = icmp sgt i32 %5, 451, !dbg !151
  br i1 %cmp.i, label %lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge, label %lor.lhs.false1.i, !dbg !152

lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !152
  br label %syscall_nr_to_meta.exit.thread, !dbg !152

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !153
  %8 = add i64 %gcov_ctr3.i, 1, !dbg !153
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !154
  %cmp2.i = icmp slt i32 %5, 0, !dbg !154
  br i1 %cmp2.i, label %lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge, label %syscall_nr_to_meta.exit, !dbg !155

lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !155
  br label %syscall_nr_to_meta.exit.thread, !dbg !155

syscall_nr_to_meta.exit.thread:                   ; preds = %lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge, %lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge, %entry.syscall_nr_to_meta.exit.thread_crit_edge
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !156
  %9 = add i64 %gcov_ctr5.i, 1, !dbg !156
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !156
  br label %if.then, !dbg !157

syscall_nr_to_meta.exit:                          ; preds = %lor.lhs.false1.i
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !158
  %10 = add i64 %gcov_ctr4.i, 1, !dbg !158
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !158
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %5, !dbg !158
  %11 = ptrtoint ptr %arrayidx.i to i32, !dbg !158
  call void @__asan_load4_noabort(i32 %11), !dbg !158
  %12 = load ptr, ptr %arrayidx.i, align 4, !dbg !158
  %tobool.not = icmp eq ptr %12, null, !dbg !159
  br i1 %tobool.not, label %syscall_nr_to_meta.exit.if.then_crit_edge, label %if.end, !dbg !157

syscall_nr_to_meta.exit.if.then_crit_edge:        ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !157
  br label %if.then, !dbg !157

if.then:                                          ; preds = %syscall_nr_to_meta.exit.if.then_crit_edge, %syscall_nr_to_meta.exit.thread
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.37, align 16, !dbg !160
  %13 = add i64 %gcov_ctr, 1, !dbg !160
  store i64 %13, ptr @__llvm_gcov_ctr.37, align 16, !dbg !160
  br label %end, !dbg !160

if.end:                                           ; preds = %syscall_nr_to_meta.exit
  %enter_event = getelementptr inbounds %struct.syscall_metadata, ptr %12, i32 0, i32 6, !dbg !161
  %14 = ptrtoint ptr %enter_event to i32, !dbg !161
  call void @__asan_load4_noabort(i32 %14), !dbg !161
  %15 = load ptr, ptr %enter_event, align 4, !dbg !161
  %type = getelementptr inbounds %struct.trace_event_call, ptr %15, i32 0, i32 3, i32 2, !dbg !162
  %16 = ptrtoint ptr %type to i32, !dbg !162
  call void @__asan_load4_noabort(i32 %16), !dbg !162
  %17 = load i32, ptr %type, align 4, !dbg !162
  %18 = ptrtoint ptr %3 to i32, !dbg !163
  call void @__asan_load2_noabort(i32 %18), !dbg !163
  %19 = load i16, ptr %3, align 4, !dbg !163
  %conv = zext i16 %19 to i32, !dbg !164
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv), !dbg !165
  %cmp.not = icmp eq i32 %17, %conv, !dbg !165
  br i1 %cmp.not, label %if.end44, label %land.rhs, !dbg !166

land.rhs:                                         ; preds = %if.end
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !167
  %20 = add i64 %gcov_ctr60, 1, !dbg !167
  store i64 %20, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !167
  %.b91 = load i1, ptr @print_syscall_enter.__already_done, align 1, !dbg !167
  br i1 %.b91, label %land.rhs.if.end36_crit_edge, label %if.then14, !dbg !167, !prof !168

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18, !dbg !167
  br label %if.end36, !dbg !167

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18, !dbg !167
  store i1 true, ptr @print_syscall_enter.__already_done, align 1, !dbg !167
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !167
  %21 = add i64 %gcov_ctr61, 1, !dbg !167
  store i64 %21, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !167
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 145, i32 noundef 9, ptr noundef null) #19, !dbg !167
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !167
  %22 = add i64 %gcov_ctr62, 1, !dbg !167
  store i64 %22, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !167
  br label %if.end36, !dbg !167

if.end36:                                         ; preds = %if.then14, %land.rhs.if.end36_crit_edge
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !167
  %23 = add i64 %gcov_ctr63, 1, !dbg !167
  store i64 %23, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !167
  br label %end, !dbg !169

if.end44:                                         ; preds = %if.end
  %24 = ptrtoint ptr %12 to i32, !dbg !170
  call void @__asan_load4_noabort(i32 %24), !dbg !170
  %25 = load ptr, ptr %12, align 4, !dbg !170
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, ptr noundef %25) #19, !dbg !171
  %nb_args = getelementptr inbounds %struct.syscall_metadata, ptr %12, i32 0, i32 2
  %26 = ptrtoint ptr %nb_args to i32, !dbg !172
  call void @__asan_load4_noabort(i32 %26), !dbg !172
  %27 = load i32, ptr %nb_args, align 4, !dbg !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27), !dbg !173
  %cmp4596 = icmp sgt i32 %27, 0, !dbg !173
  br i1 %cmp4596, label %for.body.lr.ph, label %if.end44.for.end_crit_edge, !dbg !174

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18, !dbg !174
  br label %for.end, !dbg !174

for.body.lr.ph:                                   ; preds = %if.end44
  %full.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, i32 2
  %len.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, i32 1, i32 2
  %size.i.i = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, i32 1, i32 1
  %trace_flags = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 24
  %types = getelementptr inbounds %struct.syscall_metadata, ptr %12, i32 0, i32 3
  %args = getelementptr inbounds %struct.syscall_metadata, ptr %12, i32 0, i32 4
  br label %for.body, !dbg !174

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end52.for.body_crit_edge ]
  %gcov_ctr.i92 = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %28 = add i64 %gcov_ctr.i92, 1
  store i64 %28, ptr @__llvm_gcov_ctr.47, align 8
  %29 = ptrtoint ptr %full.i to i32, !dbg !175
  call void @__asan_load4_noabort(i32 %29), !dbg !175
  %30 = load i32, ptr %full.i, align 8, !dbg !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30), !dbg !179
  %tobool.not.i93 = icmp eq i32 %30, 0, !dbg !179
  br i1 %tobool.not.i93, label %trace_seq_has_overflowed.exit, label %for.body.if.then48_crit_edge, !dbg !180

for.body.if.then48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !180
  br label %if.then48, !dbg !180

trace_seq_has_overflowed.exit:                    ; preds = %for.body
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 1), align 8, !dbg !181
  %31 = add i64 %gcov_ctr1.i, 1, !dbg !181
  store i64 %31, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 1), align 8, !dbg !181
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %32 = add i64 %gcov_ctr.i.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.48, align 8
  %33 = ptrtoint ptr %len.i.i to i32, !dbg !182
  call void @__asan_load4_noabort(i32 %33), !dbg !182
  %34 = load i32, ptr %len.i.i, align 8, !dbg !182
  %35 = ptrtoint ptr %size.i.i to i32, !dbg !186
  call void @__asan_load4_noabort(i32 %35), !dbg !186
  %36 = load i32, ptr %size.i.i, align 4, !dbg !186
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36), !dbg !187
  %cmp.i.i = icmp ugt i32 %34, %36, !dbg !187
  br i1 %cmp.i.i, label %trace_seq_has_overflowed.exit.if.then48_crit_edge, label %if.end49, !dbg !188

trace_seq_has_overflowed.exit.if.then48_crit_edge: ; preds = %trace_seq_has_overflowed.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !188
  br label %if.then48, !dbg !188

if.then48:                                        ; preds = %trace_seq_has_overflowed.exit.if.then48_crit_edge, %for.body.if.then48_crit_edge
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 6), align 16, !dbg !189
  %37 = add i64 %gcov_ctr65, 1, !dbg !189
  store i64 %37, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 6), align 16, !dbg !189
  br label %end, !dbg !189

if.end49:                                         ; preds = %trace_seq_has_overflowed.exit
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !190
  %38 = add i64 %gcov_ctr64, 1, !dbg !190
  store i64 %38, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !190
  %39 = ptrtoint ptr %trace_flags to i32, !dbg !191
  call void @__asan_load4_noabort(i32 %39), !dbg !191
  %40 = load i32, ptr %trace_flags, align 4, !dbg !191
  %and = and i32 %40, 8, !dbg !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !192
  %tobool50.not = icmp eq i32 %and, 0, !dbg !192
  br i1 %tobool50.not, label %if.end49.if.end52_crit_edge, label %if.then51, !dbg !190

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18, !dbg !190
  br label %if.end52, !dbg !190

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18, !dbg !193
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 7), align 8, !dbg !193
  %41 = add i64 %gcov_ctr66, 1, !dbg !193
  store i64 %41, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 7), align 8, !dbg !193
  %42 = ptrtoint ptr %types to i32, !dbg !194
  call void @__asan_load4_noabort(i32 %42), !dbg !194
  %43 = load ptr, ptr %types, align 4, !dbg !194
  %arrayidx = getelementptr ptr, ptr %43, i32 %i.097, !dbg !195
  %44 = ptrtoint ptr %arrayidx to i32, !dbg !195
  call void @__asan_load4_noabort(i32 %44), !dbg !195
  %45 = load ptr, ptr %arrayidx, align 4, !dbg !195
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, ptr noundef %45) #19, !dbg !196
  br label %if.end52, !dbg !196

if.end52:                                         ; preds = %if.then51, %if.end49.if.end52_crit_edge
  %46 = ptrtoint ptr %args to i32, !dbg !197
  call void @__asan_load4_noabort(i32 %46), !dbg !197
  %47 = load ptr, ptr %args, align 4, !dbg !197
  %arrayidx53 = getelementptr ptr, ptr %47, i32 %i.097, !dbg !198
  %48 = ptrtoint ptr %arrayidx53 to i32, !dbg !198
  call void @__asan_load4_noabort(i32 %48), !dbg !198
  %49 = load ptr, ptr %arrayidx53, align 4, !dbg !198
  %arrayidx55 = getelementptr %struct.syscall_trace_enter, ptr %3, i32 0, i32 2, i32 %i.097, !dbg !199
  %50 = ptrtoint ptr %arrayidx55 to i32, !dbg !199
  call void @__asan_load4_noabort(i32 %50), !dbg !199
  %51 = load i32, ptr %arrayidx55, align 4, !dbg !199
  %52 = ptrtoint ptr %nb_args to i32, !dbg !200
  call void @__asan_load4_noabort(i32 %52), !dbg !200
  %53 = load i32, ptr %nb_args, align 4, !dbg !200
  %sub = add i32 %53, -1, !dbg !201
  call void @__sanitizer_cov_trace_cmp4(i32 %i.097, i32 %sub), !dbg !202
  %cmp57 = icmp eq i32 %i.097, %sub, !dbg !202
  %cond = select i1 %cmp57, ptr @.str.9, ptr @.str.10, !dbg !203
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, ptr noundef %49, i32 noundef %51, ptr noundef nonnull %cond) #19, !dbg !204
  %inc = add nuw nsw i32 %i.097, 1, !dbg !205
  %54 = ptrtoint ptr %nb_args to i32, !dbg !172
  call void @__asan_load4_noabort(i32 %54), !dbg !172
  %55 = load i32, ptr %nb_args, align 4, !dbg !172
  %cmp45 = icmp slt i32 %inc, %55, !dbg !173
  br i1 %cmp45, label %if.end52.for.body_crit_edge, label %if.end52.for.end_crit_edge, !dbg !174, !llvm.loop !206

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18, !dbg !174
  br label %for.end, !dbg !174

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18, !dbg !174
  br label %for.body, !dbg !174

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %if.end44.for.end_crit_edge
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 8), align 16, !dbg !208
  %56 = add i64 %gcov_ctr67, 1, !dbg !208
  store i64 %56, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 8), align 16, !dbg !208
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 41) #19, !dbg !209
  br label %end, !dbg !209

end:                                              ; preds = %for.end, %if.then48, %if.end36, %if.then
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #19, !dbg !210
  %call59 = tail call i32 @trace_handle_return(ptr noundef %seq) #19, !dbg !211
  ret i32 %call59, !dbg !212
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @print_syscall_exit(ptr noundef %iter, i32 noundef %flags, ptr nocapture noundef readnone %event) #2 align 64 !dbg !213 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !214
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15, !dbg !215
  %ent1 = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16, !dbg !216
  %0 = ptrtoint ptr %ent1 to i32, !dbg !216
  call void @__asan_load4_noabort(i32 %0), !dbg !216
  %1 = load ptr, ptr %ent1, align 8, !dbg !216
  %nr = getelementptr inbounds %struct.syscall_trace_exit, ptr %1, i32 0, i32 1, !dbg !217
  %2 = ptrtoint ptr %nr to i32, !dbg !217
  call void @__asan_load4_noabort(i32 %2), !dbg !217
  %3 = load i32, ptr %nr, align 4, !dbg !217
  %4 = load ptr, ptr @syscalls_metadata, align 4, !dbg !218
  %tobool.not.i = icmp eq ptr %4, null, !dbg !218
  br i1 %tobool.not.i, label %entry.syscall_nr_to_meta.exit.thread_crit_edge, label %lor.lhs.false.i, !dbg !220

entry.syscall_nr_to_meta.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !220
  br label %syscall_nr_to_meta.exit.thread, !dbg !220

lor.lhs.false.i:                                  ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !221
  %5 = add i64 %gcov_ctr.i, 1, !dbg !221
  store i64 %5, ptr @__llvm_gcov_ctr.36, align 16, !dbg !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %3), !dbg !222
  %cmp.i = icmp sgt i32 %3, 451, !dbg !222
  br i1 %cmp.i, label %lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge, label %lor.lhs.false1.i, !dbg !223

lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !223
  br label %syscall_nr_to_meta.exit.thread, !dbg !223

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !224
  %6 = add i64 %gcov_ctr3.i, 1, !dbg !224
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !225
  %cmp2.i = icmp slt i32 %3, 0, !dbg !225
  br i1 %cmp2.i, label %lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge, label %syscall_nr_to_meta.exit, !dbg !226

lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !226
  br label %syscall_nr_to_meta.exit.thread, !dbg !226

syscall_nr_to_meta.exit.thread:                   ; preds = %lor.lhs.false1.i.syscall_nr_to_meta.exit.thread_crit_edge, %lor.lhs.false.i.syscall_nr_to_meta.exit.thread_crit_edge, %entry.syscall_nr_to_meta.exit.thread_crit_edge
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !227
  %7 = add i64 %gcov_ctr5.i, 1, !dbg !227
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !227
  br label %if.then, !dbg !228

syscall_nr_to_meta.exit:                          ; preds = %lor.lhs.false1.i
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !229
  %8 = add i64 %gcov_ctr4.i, 1, !dbg !229
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !229
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %3, !dbg !229
  %9 = ptrtoint ptr %arrayidx.i to i32, !dbg !229
  call void @__asan_load4_noabort(i32 %9), !dbg !229
  %10 = load ptr, ptr %arrayidx.i, align 4, !dbg !229
  %tobool.not = icmp eq ptr %10, null, !dbg !230
  br i1 %tobool.not, label %syscall_nr_to_meta.exit.if.then_crit_edge, label %if.end, !dbg !228

syscall_nr_to_meta.exit.if.then_crit_edge:        ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !228
  br label %if.then, !dbg !228

if.then:                                          ; preds = %syscall_nr_to_meta.exit.if.then_crit_edge, %syscall_nr_to_meta.exit.thread
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.38, align 16, !dbg !231
  %11 = add i64 %gcov_ctr, 1, !dbg !231
  store i64 %11, ptr @__llvm_gcov_ctr.38, align 16, !dbg !231
  tail call void @trace_seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #19, !dbg !232
  br label %out, !dbg !233

if.end:                                           ; preds = %syscall_nr_to_meta.exit
  %exit_event = getelementptr inbounds %struct.syscall_metadata, ptr %10, i32 0, i32 7, !dbg !234
  %12 = ptrtoint ptr %exit_event to i32, !dbg !234
  call void @__asan_load4_noabort(i32 %12), !dbg !234
  %13 = load ptr, ptr %exit_event, align 4, !dbg !234
  %type = getelementptr inbounds %struct.trace_event_call, ptr %13, i32 0, i32 3, i32 2, !dbg !235
  %14 = ptrtoint ptr %type to i32, !dbg !235
  call void @__asan_load4_noabort(i32 %14), !dbg !235
  %15 = load i32, ptr %type, align 4, !dbg !235
  %16 = ptrtoint ptr %1 to i32, !dbg !236
  call void @__asan_load2_noabort(i32 %16), !dbg !236
  %17 = load i16, ptr %1, align 4, !dbg !236
  %conv = zext i16 %17 to i32, !dbg !237
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv), !dbg !238
  %cmp.not = icmp eq i32 %15, %conv, !dbg !238
  br i1 %cmp.not, label %if.end43, label %land.rhs, !dbg !239

land.rhs:                                         ; preds = %if.end
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !240
  %18 = add i64 %gcov_ctr49, 1, !dbg !240
  store i64 %18, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !240
  %.b63 = load i1, ptr @print_syscall_exit.__already_done, align 1, !dbg !240
  br i1 %.b63, label %land.rhs.if.end35_crit_edge, label %if.then13, !dbg !240, !prof !168

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18, !dbg !240
  br label %if.end35, !dbg !240

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18, !dbg !240
  store i1 true, ptr @print_syscall_exit.__already_done, align 1, !dbg !240
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 2), align 16, !dbg !240
  %19 = add i64 %gcov_ctr50, 1, !dbg !240
  store i64 %19, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 2), align 16, !dbg !240
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 193, i32 noundef 9, ptr noundef null) #19, !dbg !240
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 3), align 8, !dbg !240
  %20 = add i64 %gcov_ctr51, 1, !dbg !240
  store i64 %20, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 3), align 8, !dbg !240
  br label %if.end35, !dbg !240

if.end35:                                         ; preds = %if.then13, %land.rhs.if.end35_crit_edge
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 4), align 16, !dbg !240
  %21 = add i64 %gcov_ctr52, 1, !dbg !240
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 4), align 16, !dbg !240
  br label %cleanup, !dbg !241

if.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !242
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 5), align 8, !dbg !242
  %22 = add i64 %gcov_ctr53, 1, !dbg !242
  store i64 %22, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 5), align 8, !dbg !242
  %23 = ptrtoint ptr %10 to i32, !dbg !243
  call void @__asan_load4_noabort(i32 %23), !dbg !243
  %24 = load ptr, ptr %10, align 4, !dbg !243
  %ret = getelementptr inbounds %struct.syscall_trace_exit, ptr %1, i32 0, i32 2, !dbg !244
  %25 = ptrtoint ptr %ret to i32, !dbg !244
  call void @__asan_load4_noabort(i32 %25), !dbg !244
  %26 = load i32, ptr %ret, align 4, !dbg !244
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, ptr noundef %24, i32 noundef %26) #19, !dbg !245
  br label %out, !dbg !245

out:                                              ; preds = %if.end43, %if.then
  %call44 = tail call i32 @trace_handle_return(ptr noundef %seq) #19, !dbg !246
  br label %cleanup, !dbg !247

cleanup:                                          ; preds = %out, %if.end35
  %retval.0 = phi i32 [ 2, %if.end35 ], [ %call44, %out ], !dbg !248
  ret i32 %retval.0, !dbg !249
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscall_enter_register(ptr nocapture noundef readonly %event, i32 noundef %type, ptr noundef %data) #2 align 64 !dbg !250 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !251
  %0 = zext i32 %type to i64, !dbg !252
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values), !dbg !252
  switch i32 %type, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge46
    i32 6, label %entry.sw.bb5_crit_edge47
    i32 7, label %entry.sw.bb5_crit_edge48
  ], !dbg !252

entry.sw.bb5_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !252
  br label %sw.bb5, !dbg !252

entry.sw.bb5_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !252
  br label %sw.bb5, !dbg !252

entry.sw.bb5_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !252
  br label %sw.bb5, !dbg !252

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !252
  br label %sw.bb5, !dbg !252

sw.bb:                                            ; preds = %entry
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !253
  %1 = add i64 %gcov_ctr10, 1, !dbg !253
  store i64 %1, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !253
  %tr1.i = getelementptr inbounds %struct.trace_event_file, ptr %data, i32 0, i32 4, !dbg !254
  %2 = ptrtoint ptr %tr1.i to i32, !dbg !254
  call void @__asan_load4_noabort(i32 %2), !dbg !254
  %3 = load ptr, ptr %tr1.i, align 4, !dbg !254
  %data.i = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !257
  %4 = ptrtoint ptr %data.i to i32, !dbg !257
  call void @__asan_load4_noabort(i32 %4), !dbg !257
  %5 = load ptr, ptr %data.i, align 4, !dbg !257
  %syscall_nr.i = getelementptr inbounds %struct.syscall_metadata, ptr %5, i32 0, i32 1, !dbg !258
  %6 = ptrtoint ptr %syscall_nr.i to i32, !dbg !258
  call void @__asan_load4_noabort(i32 %6), !dbg !258
  %7 = load i32, ptr %syscall_nr.i, align 4, !dbg !258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !259
  %cmp.i = icmp slt i32 %7, 0, !dbg !259
  br i1 %cmp.i, label %sw.bb.land.rhs.i_crit_edge, label %lor.rhs.i, !dbg !259

sw.bb.land.rhs.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18, !dbg !259
  br label %land.rhs.i, !dbg !259

lor.rhs.i:                                        ; preds = %sw.bb
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.64, align 16, !dbg !259
  %8 = add i64 %gcov_ctr.i, 1, !dbg !259
  store i64 %8, ptr @__llvm_gcov_ctr.64, align 16, !dbg !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %7), !dbg !259
  %cmp2.i = icmp ugt i32 %7, 451, !dbg !259
  br i1 %cmp2.i, label %lor.rhs.i.land.rhs.i_crit_edge, label %if.end39.i, !dbg !259

lor.rhs.i.land.rhs.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !259
  br label %land.rhs.i, !dbg !259

land.rhs.i:                                       ; preds = %lor.rhs.i.land.rhs.i_crit_edge, %sw.bb.land.rhs.i_crit_edge
  %gcov_ctr88.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 1), align 8, !dbg !259
  %9 = add i64 %gcov_ctr88.i, 1, !dbg !259
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 1), align 8, !dbg !259
  %.b106.i = load i1, ptr @reg_event_syscall_enter.__already_done, align 1, !dbg !259
  br i1 %.b106.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then.i, !dbg !259, !prof !168

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !259
  br label %if.then38.i, !dbg !259

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !259
  store i1 true, ptr @reg_event_syscall_enter.__already_done, align 1, !dbg !259
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 391, i32 noundef 9, ptr noundef null) #19, !dbg !259
  %gcov_ctr89.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 2), align 16, !dbg !259
  %10 = add i64 %gcov_ctr89.i, 1, !dbg !259
  store i64 %10, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 2), align 16, !dbg !259
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 3), align 8, !dbg !259
  %11 = add i64 %gcov_ctr90.i, 1, !dbg !259
  store i64 %11, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 3), align 8, !dbg !259
  br label %if.then38.i, !dbg !259

if.then38.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then38.i_crit_edge
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 4), align 16, !dbg !260
  %12 = add i64 %gcov_ctr91.i, 1, !dbg !260
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 4), align 16, !dbg !260
  br label %cleanup, !dbg !260

if.end39.i:                                       ; preds = %lor.rhs.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !261
  %sys_refcount_enter.i = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 13, !dbg !262
  %13 = ptrtoint ptr %sys_refcount_enter.i to i32, !dbg !262
  call void @__asan_load4_noabort(i32 %13), !dbg !262
  %14 = load i32, ptr %sys_refcount_enter.i, align 8, !dbg !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14), !dbg !263
  %tobool40.not.i = icmp eq i32 %14, 0, !dbg !263
  br i1 %tobool40.not.i, label %if.end43.i, label %if.end39.i.do.body46.i_crit_edge, !dbg !264

if.end39.i.do.body46.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !264
  br label %do.body46.i, !dbg !264

if.end43.i:                                       ; preds = %if.end39.i
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 5), align 8, !dbg !265
  %15 = add i64 %gcov_ctr92.i, 1, !dbg !265
  store i64 %15, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 5), align 8, !dbg !265
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.68, align 8
  %16 = add i64 %gcov_ctr.i.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.68, align 8
  %call.i.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sys_enter, ptr noundef nonnull @ftrace_syscall_enter, ptr noundef %3) #19, !dbg !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !270
  %tobool44.not.i = icmp eq i32 %call.i.i, 0, !dbg !270
  br i1 %tobool44.not.i, label %if.end43.i.do.body46.i_crit_edge, label %if.end43.i.if.end85.i_crit_edge, !dbg !271

if.end43.i.if.end85.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !271
  br label %if.end85.i, !dbg !271

if.end43.i.do.body46.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !271
  br label %do.body46.i, !dbg !271

do.body46.i:                                      ; preds = %if.end43.i.do.body46.i_crit_edge, %if.end39.i.do.body46.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !dbg !272, !srcloc !273
  %arrayidx72.i = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 %7, !dbg !272
  %17 = ptrtoint ptr %arrayidx72.i to i32, !dbg !272
  call void @__asan_store4_noabort(i32 %17), !dbg !272
  store volatile ptr %data, ptr %arrayidx72.i, align 4, !dbg !272
  %gcov_ctr95.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 8), align 16
  %18 = add i64 %gcov_ctr95.i, 1
  store i64 %18, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 8), align 16
  %19 = ptrtoint ptr %sys_refcount_enter.i to i32, !dbg !274
  call void @__asan_load4_noabort(i32 %19), !dbg !274
  %20 = load i32, ptr %sys_refcount_enter.i, align 8, !dbg !274
  %inc.i = add i32 %20, 1, !dbg !274
  store i32 %inc.i, ptr %sys_refcount_enter.i, align 8, !dbg !274
  br label %if.end85.i, !dbg !275

if.end85.i:                                       ; preds = %do.body46.i, %if.end43.i.if.end85.i_crit_edge
  %ret.0110.i = phi i32 [ 0, %do.body46.i ], [ %call.i.i, %if.end43.i.if.end85.i_crit_edge ]
  %gcov_ctr96.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 9), align 8, !dbg !276
  %21 = add i64 %gcov_ctr96.i, 1, !dbg !276
  store i64 %21, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 9), align 8, !dbg !276
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !276
  br label %cleanup, !dbg !277

sw.bb1:                                           ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.39, align 16, !dbg !278
  %22 = add i64 %gcov_ctr, 1, !dbg !278
  store i64 %22, ptr @__llvm_gcov_ctr.39, align 16, !dbg !278
  %tr1.i17 = getelementptr inbounds %struct.trace_event_file, ptr %data, i32 0, i32 4, !dbg !279
  %23 = ptrtoint ptr %tr1.i17 to i32, !dbg !279
  call void @__asan_load4_noabort(i32 %23), !dbg !279
  %24 = load ptr, ptr %tr1.i17, align 4, !dbg !279
  %data.i18 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !282
  %25 = ptrtoint ptr %data.i18 to i32, !dbg !282
  call void @__asan_load4_noabort(i32 %25), !dbg !282
  %26 = load ptr, ptr %data.i18, align 4, !dbg !282
  %syscall_nr.i19 = getelementptr inbounds %struct.syscall_metadata, ptr %26, i32 0, i32 1, !dbg !283
  %27 = ptrtoint ptr %syscall_nr.i19 to i32, !dbg !283
  call void @__asan_load4_noabort(i32 %27), !dbg !283
  %28 = load i32, ptr %syscall_nr.i19, align 4, !dbg !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28), !dbg !284
  %cmp.i20 = icmp slt i32 %28, 0, !dbg !284
  br i1 %cmp.i20, label %sw.bb1.land.rhs.i24_crit_edge, label %lor.rhs.i23, !dbg !284

sw.bb1.land.rhs.i24_crit_edge:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18, !dbg !284
  br label %land.rhs.i24, !dbg !284

lor.rhs.i23:                                      ; preds = %sw.bb1
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.65, align 16, !dbg !284
  %29 = add i64 %gcov_ctr.i21, 1, !dbg !284
  store i64 %29, ptr @__llvm_gcov_ctr.65, align 16, !dbg !284
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %28), !dbg !284
  %cmp2.i22 = icmp ugt i32 %28, 451, !dbg !284
  br i1 %cmp2.i22, label %lor.rhs.i23.land.rhs.i24_crit_edge, label %if.end39.i28, !dbg !284

lor.rhs.i23.land.rhs.i24_crit_edge:               ; preds = %lor.rhs.i23
  call void @__sanitizer_cov_trace_pc() #18, !dbg !284
  br label %land.rhs.i24, !dbg !284

land.rhs.i24:                                     ; preds = %lor.rhs.i23.land.rhs.i24_crit_edge, %sw.bb1.land.rhs.i24_crit_edge
  %gcov_ctr58.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !284
  %30 = add i64 %gcov_ctr58.i, 1, !dbg !284
  store i64 %30, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 1), align 8, !dbg !284
  %.b72.i = load i1, ptr @unreg_event_syscall_enter.__already_done, align 1, !dbg !284
  br i1 %.b72.i, label %land.rhs.i24.if.then38.i26_crit_edge, label %if.then.i25, !dbg !284, !prof !168

land.rhs.i24.if.then38.i26_crit_edge:             ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !284
  br label %if.then38.i26, !dbg !284

if.then.i25:                                      ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !284
  store i1 true, ptr @unreg_event_syscall_enter.__already_done, align 1, !dbg !284
  %gcov_ctr59.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 2), align 16, !dbg !284
  %31 = add i64 %gcov_ctr59.i, 1, !dbg !284
  store i64 %31, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 2), align 16, !dbg !284
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 411, i32 noundef 9, ptr noundef null) #19, !dbg !284
  %gcov_ctr60.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 3), align 8, !dbg !284
  %32 = add i64 %gcov_ctr60.i, 1, !dbg !284
  store i64 %32, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 3), align 8, !dbg !284
  br label %if.then38.i26, !dbg !284

if.then38.i26:                                    ; preds = %if.then.i25, %land.rhs.i24.if.then38.i26_crit_edge
  %gcov_ctr61.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 4), align 16
  %33 = add i64 %gcov_ctr61.i, 1
  store i64 %33, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 4), align 16
  br label %cleanup, !dbg !285

if.end39.i28:                                     ; preds = %lor.rhs.i23
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !286
  %sys_refcount_enter.i27 = getelementptr inbounds %struct.trace_array, ptr %24, i32 0, i32 13, !dbg !287
  %34 = ptrtoint ptr %sys_refcount_enter.i27 to i32, !dbg !288
  call void @__asan_load4_noabort(i32 %34), !dbg !288
  %35 = load i32, ptr %sys_refcount_enter.i27, align 8, !dbg !288
  %dec.i = add i32 %35, -1, !dbg !288
  store i32 %dec.i, ptr %sys_refcount_enter.i27, align 8, !dbg !288
  %arrayidx.i = getelementptr %struct.trace_array, ptr %24, i32 0, i32 15, i32 %28, !dbg !289
  %36 = ptrtoint ptr %arrayidx.i to i32, !dbg !289
  call void @__asan_store4_noabort(i32 %36), !dbg !289
  store volatile ptr null, ptr %arrayidx.i, align 4, !dbg !289
  %37 = load i32, ptr %sys_refcount_enter.i27, align 8, !dbg !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37), !dbg !291
  %tobool53.not.i = icmp eq i32 %37, 0, !dbg !291
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end39.i28.if.end56.i_crit_edge, !dbg !292

if.end39.i28.if.end56.i_crit_edge:                ; preds = %if.end39.i28
  call void @__sanitizer_cov_trace_pc() #18, !dbg !292
  br label %if.end56.i, !dbg !292

if.then54.i:                                      ; preds = %if.end39.i28
  call void @__sanitizer_cov_trace_pc() #18, !dbg !293
  %gcov_ctr62.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 5), align 8, !dbg !293
  %38 = add i64 %gcov_ctr62.i, 1, !dbg !293
  store i64 %38, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 5), align 8, !dbg !293
  %gcov_ctr.i.i29 = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %39 = add i64 %gcov_ctr.i.i29, 1
  store i64 %39, ptr @__llvm_gcov_ctr.89, align 8
  %call.i.i30 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sys_enter, ptr noundef nonnull @ftrace_syscall_enter, ptr noundef %24) #19, !dbg !294
  br label %if.end56.i, !dbg !297

if.end56.i:                                       ; preds = %if.then54.i, %if.end39.i28.if.end56.i_crit_edge
  %gcov_ctr63.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 6), align 16, !dbg !298
  %40 = add i64 %gcov_ctr63.i, 1, !dbg !298
  store i64 %40, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.65, i32 0, i32 6), align 16, !dbg !298
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !298
  br label %cleanup, !dbg !299

sw.bb2:                                           ; preds = %entry
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8, !dbg !300
  %41 = add i64 %gcov_ctr8, 1, !dbg !300
  store i64 %41, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8, !dbg !300
  %data.i31 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !301
  %42 = ptrtoint ptr %data.i31 to i32, !dbg !301
  call void @__asan_load4_noabort(i32 %42), !dbg !301
  %43 = load ptr, ptr %data.i31, align 4, !dbg !301
  %syscall_nr.i32 = getelementptr inbounds %struct.syscall_metadata, ptr %43, i32 0, i32 1, !dbg !304
  %44 = ptrtoint ptr %syscall_nr.i32 to i32, !dbg !304
  call void @__asan_load4_noabort(i32 %44), !dbg !304
  %45 = load i32, ptr %syscall_nr.i32, align 4, !dbg !304
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !305
  %46 = load i32, ptr @sys_perf_refcount_enter, align 4, !dbg !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46), !dbg !306
  %tobool.not.i = icmp eq i32 %46, 0, !dbg !306
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb2.if.else.i_crit_edge, !dbg !307

sw.bb2.if.else.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18, !dbg !307
  br label %if.else.i, !dbg !307

if.end.i:                                         ; preds = %sw.bb2
  %gcov_ctr.i33 = load i64, ptr @__llvm_gcov_ctr.66, align 16, !dbg !308
  %47 = add i64 %gcov_ctr.i33, 1, !dbg !308
  store i64 %47, ptr @__llvm_gcov_ctr.66, align 16, !dbg !308
  %gcov_ctr.i.i34 = load i64, ptr @__llvm_gcov_ctr.68, align 8
  %48 = add i64 %gcov_ctr.i.i34, 1
  store i64 %48, ptr @__llvm_gcov_ctr.68, align 8
  %call.i.i35 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sys_enter, ptr noundef nonnull @perf_syscall_enter, ptr noundef null) #19, !dbg !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35), !dbg !311
  %tobool2.not.i = icmp eq i32 %call.i.i35, 0, !dbg !311
  br i1 %tobool2.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then3.i, !dbg !311

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !311
  br label %if.else.i, !dbg !311

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !312
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !312
  %49 = add i64 %gcov_ctr6.i, 1, !dbg !312
  store i64 %49, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !312
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #20, !dbg !312
  br label %perf_sysenter_enable.exit, !dbg !313

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %sw.bb2.if.else.i_crit_edge
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 2), align 16, !dbg !314
  %50 = add i64 %gcov_ctr7.i, 1, !dbg !314
  store i64 %50, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 2), align 16, !dbg !314
  tail call void @_set_bit(i32 noundef %45, ptr noundef nonnull @enabled_perf_enter_syscalls) #19, !dbg !314
  %51 = load i32, ptr @sys_perf_refcount_enter, align 4, !dbg !315
  %inc.i36 = add i32 %51, 1, !dbg !315
  store i32 %inc.i36, ptr @sys_perf_refcount_enter, align 4, !dbg !315
  br label %perf_sysenter_enable.exit

perf_sysenter_enable.exit:                        ; preds = %if.else.i, %if.then3.i
  %ret.011.i = phi i32 [ 0, %if.else.i ], [ %call.i.i35, %if.then3.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !316
  br label %cleanup, !dbg !317

sw.bb4:                                           ; preds = %entry
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !318
  %52 = add i64 %gcov_ctr9, 1, !dbg !318
  store i64 %52, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !318
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %53 = add i64 %gcov_ctr.i37, 1
  store i64 %53, ptr @__llvm_gcov_ctr.67, align 8
  %data.i38 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !319
  %54 = ptrtoint ptr %data.i38 to i32, !dbg !319
  call void @__asan_load4_noabort(i32 %54), !dbg !319
  %55 = load ptr, ptr %data.i38, align 4, !dbg !319
  %syscall_nr.i39 = getelementptr inbounds %struct.syscall_metadata, ptr %55, i32 0, i32 1, !dbg !322
  %56 = ptrtoint ptr %syscall_nr.i39 to i32, !dbg !322
  call void @__asan_load4_noabort(i32 %56), !dbg !322
  %57 = load i32, ptr %syscall_nr.i39, align 4, !dbg !322
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !323
  %58 = load i32, ptr @sys_perf_refcount_enter, align 4, !dbg !324
  %dec.i40 = add i32 %58, -1, !dbg !324
  store i32 %dec.i40, ptr @sys_perf_refcount_enter, align 4, !dbg !324
  tail call void @_clear_bit(i32 noundef %57, ptr noundef nonnull @enabled_perf_enter_syscalls) #19, !dbg !325
  %59 = load i32, ptr @sys_perf_refcount_enter, align 4, !dbg !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59), !dbg !326
  %tobool.not.i41 = icmp eq i32 %59, 0, !dbg !326
  br i1 %tobool.not.i41, label %if.then.i44, label %sw.bb4.perf_sysenter_disable.exit_crit_edge, !dbg !327

sw.bb4.perf_sysenter_disable.exit_crit_edge:      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !327
  br label %perf_sysenter_disable.exit, !dbg !327

if.then.i44:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !328
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !328
  %60 = add i64 %gcov_ctr2.i, 1, !dbg !328
  store i64 %60, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !328
  %gcov_ctr.i.i42 = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %61 = add i64 %gcov_ctr.i.i42, 1
  store i64 %61, ptr @__llvm_gcov_ctr.89, align 8
  %call.i.i43 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sys_enter, ptr noundef nonnull @perf_syscall_enter, ptr noundef null) #19, !dbg !329
  br label %perf_sysenter_disable.exit, !dbg !328

perf_sysenter_disable.exit:                       ; preds = %if.then.i44, %sw.bb4.perf_sysenter_disable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !331
  br label %cleanup, !dbg !332

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge46, %entry.sw.bb5_crit_edge47, %entry.sw.bb5_crit_edge48
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 4), align 16, !dbg !333
  %62 = add i64 %gcov_ctr11, 1, !dbg !333
  store i64 %62, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 4), align 16, !dbg !333
  br label %cleanup, !dbg !333

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !334
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 5), align 8, !dbg !334
  %63 = add i64 %gcov_ctr12, 1, !dbg !334
  store i64 %63, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 5), align 8, !dbg !334
  br label %cleanup, !dbg !334

cleanup:                                          ; preds = %sw.epilog, %sw.bb5, %perf_sysenter_disable.exit, %perf_sysenter_enable.exit, %if.end56.i, %if.then38.i26, %if.end85.i, %if.then38.i
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %sw.bb5 ], [ 0, %perf_sysenter_disable.exit ], [ %ret.011.i, %perf_sysenter_enable.exit ], [ -38, %if.then38.i ], [ %ret.0110.i, %if.end85.i ], [ 0, %if.then38.i26 ], [ 0, %if.end56.i ], !dbg !335
  ret i32 %retval.0, !dbg !336
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @syscall_get_enter_fields(ptr nocapture noundef readonly %call) #0 align 64 !dbg !337 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !338
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.40, align 8
  %data = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 7, !dbg !339
  %1 = ptrtoint ptr %data to i32, !dbg !339
  call void @__asan_load4_noabort(i32 %1), !dbg !339
  %2 = load ptr, ptr %data, align 4, !dbg !339
  %enter_fields = getelementptr inbounds %struct.syscall_metadata, ptr %2, i32 0, i32 5, !dbg !340
  ret ptr %enter_fields, !dbg !341
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_syscall_trace(ptr noundef %call) #3 section ".init.text" align 64 !dbg !342 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !343
  %data = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 7, !dbg !344
  %0 = ptrtoint ptr %data to i32, !dbg !344
  call void @__asan_load4_noabort(i32 %0), !dbg !344
  %1 = load ptr, ptr %data, align 4, !dbg !344
  %syscall_nr = getelementptr inbounds %struct.syscall_metadata, ptr %1, i32 0, i32 1, !dbg !345
  %2 = ptrtoint ptr %syscall_nr to i32, !dbg !345
  call void @__asan_load4_noabort(i32 %2), !dbg !345
  %3 = load i32, ptr %syscall_nr, align 4, !dbg !345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !346
  %cmp = icmp slt i32 %3, 0, !dbg !346
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false, !dbg !347

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !347
  br label %do.body, !dbg !347

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.41, align 16, !dbg !348
  %4 = add i64 %gcov_ctr, 1, !dbg !348
  store i64 %4, ptr @__llvm_gcov_ctr.41, align 16, !dbg !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %3), !dbg !349
  %cmp1 = icmp ugt i32 %3, 451, !dbg !349
  br i1 %cmp1, label %lor.lhs.false.do.body_crit_edge, label %if.end7, !dbg !350

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18, !dbg !350
  br label %do.body, !dbg !350

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_syscall_trace.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_syscall_trace, %if.then5)) #19
          to label %arch_static_branch.exit [label %if.then5], !dbg !351, !srcloc !355

arch_static_branch.exit:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !356
  %gcov_ctr1.i = load i64, ptr @__llvm_gcov_ctr.50, align 8, !dbg !356
  %5 = add i64 %gcov_ctr1.i, 1, !dbg !356
  store i64 %5, ptr @__llvm_gcov_ctr.50, align 8, !dbg !356
  br label %do.end, !dbg !357

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !356
  %gcov_ctr1.i31 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !356
  %6 = add i64 %gcov_ctr1.i31, 1, !dbg !356
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !356
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !357
  %7 = add i64 %gcov_ctr17, 1, !dbg !357
  store i64 %7, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !357
  %8 = ptrtoint ptr %data to i32, !dbg !357
  call void @__asan_load4_noabort(i32 %8), !dbg !357
  %9 = load ptr, ptr %data, align 4, !dbg !357
  %10 = ptrtoint ptr %9 to i32, !dbg !357
  call void @__asan_load4_noabort(i32 %10), !dbg !357
  %11 = load ptr, ptr %9, align 4, !dbg !357
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_syscall_trace.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.15, ptr noundef %11) #19, !dbg !357
  br label %do.end, !dbg !357

do.end:                                           ; preds = %if.then5, %arch_static_branch.exit
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !358
  %12 = add i64 %gcov_ctr18, 1, !dbg !358
  store i64 %12, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !358
  br label %cleanup, !dbg !358

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call fastcc i32 @set_syscall_print_fmt(ptr noundef %call) #21, !dbg !359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8), !dbg !360
  %cmp9 = icmp slt i32 %call8, 0, !dbg !360
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !359

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18, !dbg !361
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 3), align 8, !dbg !361
  %13 = add i64 %gcov_ctr19, 1, !dbg !361
  store i64 %13, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 3), align 8, !dbg !361
  br label %cleanup, !dbg !361

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @trace_event_raw_init(ptr noundef %call) #19, !dbg !362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12), !dbg !363
  %cmp13 = icmp slt i32 %call12, 0, !dbg !363
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !364

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18, !dbg !365
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 4), align 16, !dbg !365
  %14 = add i64 %gcov_ctr20, 1, !dbg !365
  store i64 %14, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 4), align 16, !dbg !365
  tail call fastcc void @free_syscall_print_fmt(ptr noundef %call) #21, !dbg !366
  br label %cleanup, !dbg !367

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18, !dbg !368
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 5), align 8, !dbg !368
  %15 = add i64 %gcov_ctr21, 1, !dbg !368
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 5), align 8, !dbg !368
  br label %cleanup, !dbg !369

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then10, %do.end
  %retval.0 = phi i32 [ -38, %do.end ], [ -12, %if.then10 ], [ %call12, %if.then14 ], [ %call12, %if.end15 ], !dbg !370
  ret i32 %retval.0, !dbg !371
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscall_exit_register(ptr nocapture noundef readonly %event, i32 noundef %type, ptr noundef %data) #2 align 64 !dbg !372 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !373
  %0 = zext i32 %type to i64, !dbg !374
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.106), !dbg !374
  switch i32 %type, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge46
    i32 6, label %entry.sw.bb5_crit_edge47
    i32 7, label %entry.sw.bb5_crit_edge48
  ], !dbg !374

entry.sw.bb5_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !374
  br label %sw.bb5, !dbg !374

entry.sw.bb5_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !374
  br label %sw.bb5, !dbg !374

entry.sw.bb5_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !374
  br label %sw.bb5, !dbg !374

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !374
  br label %sw.bb5, !dbg !374

sw.bb:                                            ; preds = %entry
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !375
  %1 = add i64 %gcov_ctr10, 1, !dbg !375
  store i64 %1, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !375
  %tr1.i = getelementptr inbounds %struct.trace_event_file, ptr %data, i32 0, i32 4, !dbg !376
  %2 = ptrtoint ptr %tr1.i to i32, !dbg !376
  call void @__asan_load4_noabort(i32 %2), !dbg !376
  %3 = load ptr, ptr %tr1.i, align 4, !dbg !376
  %data.i = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !379
  %4 = ptrtoint ptr %data.i to i32, !dbg !379
  call void @__asan_load4_noabort(i32 %4), !dbg !379
  %5 = load ptr, ptr %data.i, align 4, !dbg !379
  %syscall_nr.i = getelementptr inbounds %struct.syscall_metadata, ptr %5, i32 0, i32 1, !dbg !380
  %6 = ptrtoint ptr %syscall_nr.i to i32, !dbg !380
  call void @__asan_load4_noabort(i32 %6), !dbg !380
  %7 = load i32, ptr %syscall_nr.i, align 4, !dbg !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !381
  %cmp.i = icmp slt i32 %7, 0, !dbg !381
  br i1 %cmp.i, label %sw.bb.land.rhs.i_crit_edge, label %lor.rhs.i, !dbg !381

sw.bb.land.rhs.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18, !dbg !381
  br label %land.rhs.i, !dbg !381

lor.rhs.i:                                        ; preds = %sw.bb
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.96, align 16, !dbg !381
  %8 = add i64 %gcov_ctr.i, 1, !dbg !381
  store i64 %8, ptr @__llvm_gcov_ctr.96, align 16, !dbg !381
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %7), !dbg !381
  %cmp2.i = icmp ugt i32 %7, 451, !dbg !381
  br i1 %cmp2.i, label %lor.rhs.i.land.rhs.i_crit_edge, label %if.end39.i, !dbg !381

lor.rhs.i.land.rhs.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !381
  br label %land.rhs.i, !dbg !381

land.rhs.i:                                       ; preds = %lor.rhs.i.land.rhs.i_crit_edge, %sw.bb.land.rhs.i_crit_edge
  %gcov_ctr88.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 1), align 8, !dbg !381
  %9 = add i64 %gcov_ctr88.i, 1, !dbg !381
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 1), align 8, !dbg !381
  %.b106.i = load i1, ptr @reg_event_syscall_exit.__already_done, align 1, !dbg !381
  br i1 %.b106.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then.i, !dbg !381, !prof !168

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !381
  br label %if.then38.i, !dbg !381

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !381
  store i1 true, ptr @reg_event_syscall_exit.__already_done, align 1, !dbg !381
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 429, i32 noundef 9, ptr noundef null) #19, !dbg !381
  %gcov_ctr89.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 2), align 16, !dbg !381
  %10 = add i64 %gcov_ctr89.i, 1, !dbg !381
  store i64 %10, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 2), align 16, !dbg !381
  %gcov_ctr90.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 3), align 8, !dbg !381
  %11 = add i64 %gcov_ctr90.i, 1, !dbg !381
  store i64 %11, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 3), align 8, !dbg !381
  br label %if.then38.i, !dbg !381

if.then38.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then38.i_crit_edge
  %gcov_ctr91.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 4), align 16, !dbg !382
  %12 = add i64 %gcov_ctr91.i, 1, !dbg !382
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 4), align 16, !dbg !382
  br label %cleanup, !dbg !382

if.end39.i:                                       ; preds = %lor.rhs.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !383
  %sys_refcount_exit.i = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 14, !dbg !384
  %13 = ptrtoint ptr %sys_refcount_exit.i to i32, !dbg !384
  call void @__asan_load4_noabort(i32 %13), !dbg !384
  %14 = load i32, ptr %sys_refcount_exit.i, align 4, !dbg !384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14), !dbg !385
  %tobool40.not.i = icmp eq i32 %14, 0, !dbg !385
  br i1 %tobool40.not.i, label %if.end43.i, label %if.end39.i.do.body46.i_crit_edge, !dbg !386

if.end39.i.do.body46.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !386
  br label %do.body46.i, !dbg !386

if.end43.i:                                       ; preds = %if.end39.i
  %gcov_ctr92.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 5), align 8, !dbg !387
  %15 = add i64 %gcov_ctr92.i, 1, !dbg !387
  store i64 %15, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 5), align 8, !dbg !387
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8
  %16 = add i64 %gcov_ctr.i.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.100, align 8
  %call.i.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sys_exit, ptr noundef nonnull @ftrace_syscall_exit, ptr noundef %3) #19, !dbg !388
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !391
  %tobool44.not.i = icmp eq i32 %call.i.i, 0, !dbg !391
  br i1 %tobool44.not.i, label %if.end43.i.do.body46.i_crit_edge, label %if.end43.i.if.end85.i_crit_edge, !dbg !392

if.end43.i.if.end85.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !392
  br label %if.end85.i, !dbg !392

if.end43.i.do.body46.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !392
  br label %do.body46.i, !dbg !392

do.body46.i:                                      ; preds = %if.end43.i.do.body46.i_crit_edge, %if.end39.i.do.body46.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !dbg !393, !srcloc !394
  %arrayidx72.i = getelementptr %struct.trace_array, ptr %3, i32 0, i32 16, i32 %7, !dbg !393
  %17 = ptrtoint ptr %arrayidx72.i to i32, !dbg !393
  call void @__asan_store4_noabort(i32 %17), !dbg !393
  store volatile ptr %data, ptr %arrayidx72.i, align 4, !dbg !393
  %gcov_ctr95.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 8), align 16
  %18 = add i64 %gcov_ctr95.i, 1
  store i64 %18, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 8), align 16
  %19 = ptrtoint ptr %sys_refcount_exit.i to i32, !dbg !395
  call void @__asan_load4_noabort(i32 %19), !dbg !395
  %20 = load i32, ptr %sys_refcount_exit.i, align 4, !dbg !395
  %inc.i = add i32 %20, 1, !dbg !395
  store i32 %inc.i, ptr %sys_refcount_exit.i, align 4, !dbg !395
  br label %if.end85.i, !dbg !396

if.end85.i:                                       ; preds = %do.body46.i, %if.end43.i.if.end85.i_crit_edge
  %ret.0110.i = phi i32 [ 0, %do.body46.i ], [ %call.i.i, %if.end43.i.if.end85.i_crit_edge ]
  %gcov_ctr96.i = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 9), align 8, !dbg !397
  %21 = add i64 %gcov_ctr96.i, 1, !dbg !397
  store i64 %21, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 9), align 8, !dbg !397
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !397
  br label %cleanup, !dbg !398

sw.bb1:                                           ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !399
  %22 = add i64 %gcov_ctr, 1, !dbg !399
  store i64 %22, ptr @__llvm_gcov_ctr.42, align 16, !dbg !399
  %tr1.i17 = getelementptr inbounds %struct.trace_event_file, ptr %data, i32 0, i32 4, !dbg !400
  %23 = ptrtoint ptr %tr1.i17 to i32, !dbg !400
  call void @__asan_load4_noabort(i32 %23), !dbg !400
  %24 = load ptr, ptr %tr1.i17, align 4, !dbg !400
  %data.i18 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !403
  %25 = ptrtoint ptr %data.i18 to i32, !dbg !403
  call void @__asan_load4_noabort(i32 %25), !dbg !403
  %26 = load ptr, ptr %data.i18, align 4, !dbg !403
  %syscall_nr.i19 = getelementptr inbounds %struct.syscall_metadata, ptr %26, i32 0, i32 1, !dbg !404
  %27 = ptrtoint ptr %syscall_nr.i19 to i32, !dbg !404
  call void @__asan_load4_noabort(i32 %27), !dbg !404
  %28 = load i32, ptr %syscall_nr.i19, align 4, !dbg !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28), !dbg !405
  %cmp.i20 = icmp slt i32 %28, 0, !dbg !405
  br i1 %cmp.i20, label %sw.bb1.land.rhs.i24_crit_edge, label %lor.rhs.i23, !dbg !405

sw.bb1.land.rhs.i24_crit_edge:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18, !dbg !405
  br label %land.rhs.i24, !dbg !405

lor.rhs.i23:                                      ; preds = %sw.bb1
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.97, align 16, !dbg !405
  %29 = add i64 %gcov_ctr.i21, 1, !dbg !405
  store i64 %29, ptr @__llvm_gcov_ctr.97, align 16, !dbg !405
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %28), !dbg !405
  %cmp2.i22 = icmp ugt i32 %28, 451, !dbg !405
  br i1 %cmp2.i22, label %lor.rhs.i23.land.rhs.i24_crit_edge, label %if.end39.i28, !dbg !405

lor.rhs.i23.land.rhs.i24_crit_edge:               ; preds = %lor.rhs.i23
  call void @__sanitizer_cov_trace_pc() #18, !dbg !405
  br label %land.rhs.i24, !dbg !405

land.rhs.i24:                                     ; preds = %lor.rhs.i23.land.rhs.i24_crit_edge, %sw.bb1.land.rhs.i24_crit_edge
  %gcov_ctr58.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !405
  %30 = add i64 %gcov_ctr58.i, 1, !dbg !405
  store i64 %30, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !405
  %.b72.i = load i1, ptr @unreg_event_syscall_exit.__already_done, align 1, !dbg !405
  br i1 %.b72.i, label %land.rhs.i24.if.then38.i26_crit_edge, label %if.then.i25, !dbg !405, !prof !168

land.rhs.i24.if.then38.i26_crit_edge:             ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !405
  br label %if.then38.i26, !dbg !405

if.then.i25:                                      ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !405
  store i1 true, ptr @unreg_event_syscall_exit.__already_done, align 1, !dbg !405
  %gcov_ctr59.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 2), align 16, !dbg !405
  %31 = add i64 %gcov_ctr59.i, 1, !dbg !405
  store i64 %31, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 2), align 16, !dbg !405
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 449, i32 noundef 9, ptr noundef null) #19, !dbg !405
  %gcov_ctr60.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 3), align 8, !dbg !405
  %32 = add i64 %gcov_ctr60.i, 1, !dbg !405
  store i64 %32, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 3), align 8, !dbg !405
  br label %if.then38.i26, !dbg !405

if.then38.i26:                                    ; preds = %if.then.i25, %land.rhs.i24.if.then38.i26_crit_edge
  %gcov_ctr61.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 4), align 16
  %33 = add i64 %gcov_ctr61.i, 1
  store i64 %33, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 4), align 16
  br label %cleanup, !dbg !406

if.end39.i28:                                     ; preds = %lor.rhs.i23
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !407
  %sys_refcount_exit.i27 = getelementptr inbounds %struct.trace_array, ptr %24, i32 0, i32 14, !dbg !408
  %34 = ptrtoint ptr %sys_refcount_exit.i27 to i32, !dbg !409
  call void @__asan_load4_noabort(i32 %34), !dbg !409
  %35 = load i32, ptr %sys_refcount_exit.i27, align 4, !dbg !409
  %dec.i = add i32 %35, -1, !dbg !409
  store i32 %dec.i, ptr %sys_refcount_exit.i27, align 4, !dbg !409
  %arrayidx.i = getelementptr %struct.trace_array, ptr %24, i32 0, i32 16, i32 %28, !dbg !410
  %36 = ptrtoint ptr %arrayidx.i to i32, !dbg !410
  call void @__asan_store4_noabort(i32 %36), !dbg !410
  store volatile ptr null, ptr %arrayidx.i, align 4, !dbg !410
  %37 = load i32, ptr %sys_refcount_exit.i27, align 4, !dbg !411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37), !dbg !412
  %tobool53.not.i = icmp eq i32 %37, 0, !dbg !412
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end39.i28.if.end56.i_crit_edge, !dbg !413

if.end39.i28.if.end56.i_crit_edge:                ; preds = %if.end39.i28
  call void @__sanitizer_cov_trace_pc() #18, !dbg !413
  br label %if.end56.i, !dbg !413

if.then54.i:                                      ; preds = %if.end39.i28
  call void @__sanitizer_cov_trace_pc() #18, !dbg !414
  %gcov_ctr62.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 5), align 8, !dbg !414
  %38 = add i64 %gcov_ctr62.i, 1, !dbg !414
  store i64 %38, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 5), align 8, !dbg !414
  %gcov_ctr.i.i29 = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %39 = add i64 %gcov_ctr.i.i29, 1
  store i64 %39, ptr @__llvm_gcov_ctr.103, align 8
  %call.i.i30 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sys_exit, ptr noundef nonnull @ftrace_syscall_exit, ptr noundef %24) #19, !dbg !415
  br label %if.end56.i, !dbg !418

if.end56.i:                                       ; preds = %if.then54.i, %if.end39.i28.if.end56.i_crit_edge
  %gcov_ctr63.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 6), align 16, !dbg !419
  %40 = add i64 %gcov_ctr63.i, 1, !dbg !419
  store i64 %40, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 6), align 16, !dbg !419
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !419
  br label %cleanup, !dbg !420

sw.bb2:                                           ; preds = %entry
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !421
  %41 = add i64 %gcov_ctr8, 1, !dbg !421
  store i64 %41, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !421
  %data.i31 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !422
  %42 = ptrtoint ptr %data.i31 to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %42), !dbg !422
  %43 = load ptr, ptr %data.i31, align 4, !dbg !422
  %syscall_nr.i32 = getelementptr inbounds %struct.syscall_metadata, ptr %43, i32 0, i32 1, !dbg !425
  %44 = ptrtoint ptr %syscall_nr.i32 to i32, !dbg !425
  call void @__asan_load4_noabort(i32 %44), !dbg !425
  %45 = load i32, ptr %syscall_nr.i32, align 4, !dbg !425
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !426
  %46 = load i32, ptr @sys_perf_refcount_exit, align 4, !dbg !427
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46), !dbg !427
  %tobool.not.i = icmp eq i32 %46, 0, !dbg !427
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb2.if.else.i_crit_edge, !dbg !428

sw.bb2.if.else.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18, !dbg !428
  br label %if.else.i, !dbg !428

if.end.i:                                         ; preds = %sw.bb2
  %gcov_ctr.i33 = load i64, ptr @__llvm_gcov_ctr.98, align 16, !dbg !429
  %47 = add i64 %gcov_ctr.i33, 1, !dbg !429
  store i64 %47, ptr @__llvm_gcov_ctr.98, align 16, !dbg !429
  %gcov_ctr.i.i34 = load i64, ptr @__llvm_gcov_ctr.100, align 8
  %48 = add i64 %gcov_ctr.i.i34, 1
  store i64 %48, ptr @__llvm_gcov_ctr.100, align 8
  %call.i.i35 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sys_exit, ptr noundef nonnull @perf_syscall_exit, ptr noundef null) #19, !dbg !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35), !dbg !432
  %tobool2.not.i = icmp eq i32 %call.i.i35, 0, !dbg !432
  br i1 %tobool2.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then3.i, !dbg !432

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !432
  br label %if.else.i, !dbg !432

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !433
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !433
  %49 = add i64 %gcov_ctr6.i, 1, !dbg !433
  store i64 %49, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), align 8, !dbg !433
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #20, !dbg !433
  br label %perf_sysexit_enable.exit, !dbg !434

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %sw.bb2.if.else.i_crit_edge
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 2), align 16, !dbg !435
  %50 = add i64 %gcov_ctr7.i, 1, !dbg !435
  store i64 %50, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 2), align 16, !dbg !435
  tail call void @_set_bit(i32 noundef %45, ptr noundef nonnull @enabled_perf_exit_syscalls) #19, !dbg !435
  %51 = load i32, ptr @sys_perf_refcount_exit, align 4, !dbg !436
  %inc.i36 = add i32 %51, 1, !dbg !436
  store i32 %inc.i36, ptr @sys_perf_refcount_exit, align 4, !dbg !436
  br label %perf_sysexit_enable.exit

perf_sysexit_enable.exit:                         ; preds = %if.else.i, %if.then3.i
  %ret.011.i = phi i32 [ 0, %if.else.i ], [ %call.i.i35, %if.then3.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !437
  br label %cleanup, !dbg !438

sw.bb4:                                           ; preds = %entry
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !439
  %52 = add i64 %gcov_ctr9, 1, !dbg !439
  store i64 %52, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !439
  %gcov_ctr.i37 = load i64, ptr @__llvm_gcov_ctr.99, align 8
  %53 = add i64 %gcov_ctr.i37, 1
  store i64 %53, ptr @__llvm_gcov_ctr.99, align 8
  %data.i38 = getelementptr inbounds %struct.trace_event_call, ptr %event, i32 0, i32 7, !dbg !440
  %54 = ptrtoint ptr %data.i38 to i32, !dbg !440
  call void @__asan_load4_noabort(i32 %54), !dbg !440
  %55 = load ptr, ptr %data.i38, align 4, !dbg !440
  %syscall_nr.i39 = getelementptr inbounds %struct.syscall_metadata, ptr %55, i32 0, i32 1, !dbg !443
  %56 = ptrtoint ptr %syscall_nr.i39 to i32, !dbg !443
  call void @__asan_load4_noabort(i32 %56), !dbg !443
  %57 = load i32, ptr %syscall_nr.i39, align 4, !dbg !443
  tail call void @mutex_lock_nested(ptr noundef nonnull @syscall_trace_lock, i32 noundef 0) #19, !dbg !444
  %58 = load i32, ptr @sys_perf_refcount_exit, align 4, !dbg !445
  %dec.i40 = add i32 %58, -1, !dbg !445
  store i32 %dec.i40, ptr @sys_perf_refcount_exit, align 4, !dbg !445
  tail call void @_clear_bit(i32 noundef %57, ptr noundef nonnull @enabled_perf_exit_syscalls) #19, !dbg !446
  %59 = load i32, ptr @sys_perf_refcount_exit, align 4, !dbg !447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59), !dbg !447
  %tobool.not.i41 = icmp eq i32 %59, 0, !dbg !447
  br i1 %tobool.not.i41, label %if.then.i44, label %sw.bb4.perf_sysexit_disable.exit_crit_edge, !dbg !448

sw.bb4.perf_sysexit_disable.exit_crit_edge:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !448
  br label %perf_sysexit_disable.exit, !dbg !448

if.then.i44:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !449
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !449
  %60 = add i64 %gcov_ctr2.i, 1, !dbg !449
  store i64 %60, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !449
  %gcov_ctr.i.i42 = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %61 = add i64 %gcov_ctr.i.i42, 1
  store i64 %61, ptr @__llvm_gcov_ctr.103, align 8
  %call.i.i43 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sys_exit, ptr noundef nonnull @perf_syscall_exit, ptr noundef null) #19, !dbg !450
  br label %perf_sysexit_disable.exit, !dbg !449

perf_sysexit_disable.exit:                        ; preds = %if.then.i44, %sw.bb4.perf_sysexit_disable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @syscall_trace_lock) #19, !dbg !452
  br label %cleanup, !dbg !453

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge46, %entry.sw.bb5_crit_edge47, %entry.sw.bb5_crit_edge48
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 4), align 16, !dbg !454
  %62 = add i64 %gcov_ctr11, 1, !dbg !454
  store i64 %62, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 4), align 16, !dbg !454
  br label %cleanup, !dbg !454

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !455
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 5), align 8, !dbg !455
  %63 = add i64 %gcov_ctr12, 1, !dbg !455
  store i64 %63, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 5), align 8, !dbg !455
  br label %cleanup, !dbg !455

cleanup:                                          ; preds = %sw.epilog, %sw.bb5, %perf_sysexit_disable.exit, %perf_sysexit_enable.exit, %if.end56.i, %if.then38.i26, %if.end85.i, %if.then38.i
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %sw.bb5 ], [ 0, %perf_sysexit_disable.exit ], [ %ret.011.i, %perf_sysexit_enable.exit ], [ -38, %if.then38.i ], [ %ret.0110.i, %if.end85.i ], [ 0, %if.then38.i26 ], [ 0, %if.end56.i ], !dbg !456
  ret i32 %retval.0, !dbg !457
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_syscall_addr(i32 noundef %nr) local_unnamed_addr #3 section ".init.text" align 64 !dbg !458 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !459
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.43, align 8
  %arrayidx = getelementptr [0 x i32], ptr @sys_call_table, i32 0, i32 %nr, !dbg !460
  %1 = ptrtoint ptr %arrayidx to i32, !dbg !460
  call void @__asan_load4_noabort(i32 %1), !dbg !460
  %2 = load i32, ptr %arrayidx, align 4, !dbg !460
  ret i32 %2, !dbg !461
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_ftrace_syscalls() local_unnamed_addr #3 section ".init.text" align 64 !dbg !462 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !463
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.45, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %1 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.62, align 8
  %gcov_ctr9.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !464
  %2 = add i64 %gcov_ctr9.i.i, 1, !dbg !464
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !464
  %gcov_ctr10.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), align 16, !dbg !470
  %3 = add i64 %gcov_ctr10.i.i, 1, !dbg !470
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), align 16, !dbg !470
  %gcov_ctr88.i.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 10), align 16, !dbg !471
  %4 = add i64 %gcov_ctr88.i.i.i.i, 1, !dbg !471
  store i64 %4, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 10), align 16, !dbg !471
  %gcov_ctr11.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 2), align 16, !dbg !476
  %5 = add i64 %gcov_ctr11.i.i.i, 1, !dbg !476
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 2), align 16, !dbg !476
  %gcov_ctr.i24.i.i.i = load i64, ptr @__llvm_gcov_ctr.57, align 16, !dbg !477
  %6 = add i64 %gcov_ctr.i24.i.i.i, 1, !dbg !477
  store i64 %6, ptr @__llvm_gcov_ctr.57, align 16, !dbg !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !480
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !480
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1808) #22, !dbg !481
  store ptr %call7.i.i.i, ptr @syscalls_metadata, align 4, !dbg !482
  %tobool.not = icmp eq ptr %call7.i.i.i, null, !dbg !483
  br i1 %tobool.not, label %do.end, label %entry.for.body_crit_edge, !dbg !484

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !484

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !485
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 536, i32 noundef 9, ptr noundef null) #19, !dbg !485
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.44, align 16, !dbg !485
  %8 = add i64 %gcov_ctr, 1, !dbg !485
  store i64 %8, ptr @__llvm_gcov_ctr.44, align 16, !dbg !485
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !485
  %9 = add i64 %gcov_ctr26, 1, !dbg !485
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !485
  br label %cleanup, !dbg !486

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call18 = tail call i32 @arch_syscall_addr(i32 noundef %i.038) #21, !dbg !487
  %call19 = tail call fastcc ptr @find_syscall_meta(i32 noundef %call18) #21, !dbg !488
  %tobool20.not = icmp eq ptr %call19, null, !dbg !489
  br i1 %tobool20.not, label %if.then21, label %if.end22, !dbg !490

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !491
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !491
  %10 = add i64 %gcov_ctr28, 1, !dbg !491
  store i64 %10, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !491
  br label %for.inc, !dbg !491

if.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !492
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !492
  %11 = add i64 %gcov_ctr27, 1, !dbg !492
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !492
  %syscall_nr = getelementptr inbounds %struct.syscall_metadata, ptr %call19, i32 0, i32 1, !dbg !493
  %12 = ptrtoint ptr %syscall_nr to i32, !dbg !494
  call void @__asan_store4_noabort(i32 %12), !dbg !494
  store i32 %i.038, ptr %syscall_nr, align 4, !dbg !494
  %13 = load ptr, ptr @syscalls_metadata, align 4, !dbg !495
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.038, !dbg !495
  %14 = ptrtoint ptr %arrayidx to i32, !dbg !496
  call void @__asan_store4_noabort(i32 %14), !dbg !496
  store ptr %call19, ptr %arrayidx, align 4, !dbg !496
  br label %for.inc, !dbg !497

for.inc:                                          ; preds = %if.end22, %if.then21
  %inc = add nuw nsw i32 %i.038, 1, !dbg !498
  %exitcond.not = icmp eq i32 %inc, 452, !dbg !499
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge, !dbg !500, !llvm.loop !501

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18, !dbg !500
  br label %for.body, !dbg !500

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18, !dbg !502
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !502
  %15 = add i64 %gcov_ctr29, 1, !dbg !502
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !502
  br label %cleanup, !dbg !502

cleanup:                                          ; preds = %for.end, %do.end
  ret void, !dbg !502
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_syscall_meta(i32 noundef %syscall) unnamed_addr #3 section ".init.text" align 64 !dbg !503 {
entry:
  %str = alloca [266 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18, !dbg !504
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %str) #19, !dbg !505
  %0 = call ptr @memset(ptr %str, i32 255, i32 266), !dbg !506
  %call = call ptr @kallsyms_lookup(i32 noundef %syscall, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %str) #19, !dbg !507
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %str, ptr noundef nonnull dereferenceable(10) @.str.21, i32 10) #23, !dbg !508
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp), !dbg !508
  %tobool.not.i = icmp eq i32 %bcmp, 0, !dbg !508
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i, !dbg !512

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !513
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.63, align 16, !dbg !513
  %1 = add i64 %gcov_ctr.i, 1, !dbg !513
  store i64 %1, ptr @__llvm_gcov_ctr.63, align 16, !dbg !513
  br label %arch_syscall_match_sym_name.exit, !dbg !514

if.else.i:                                        ; preds = %entry
  %bcmp44 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %str, ptr noundef nonnull dereferenceable(21) @.str.23, i32 21) #23, !dbg !515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp44), !dbg !515
  %tobool2.not.i = icmp eq i32 %bcmp44, 0, !dbg !515
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else4.i, !dbg !516

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !517
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !517
  %2 = add i64 %gcov_ctr17.i, 1, !dbg !517
  store i64 %2, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !517
  br label %arch_syscall_match_sym_name.exit, !dbg !518

if.else4.i:                                       ; preds = %if.else.i
  %bcmp45 = call i32 @bcmp(ptr noundef nonnull dereferenceable(22) %str, ptr noundef nonnull dereferenceable(22) @.str.25, i32 22) #23, !dbg !519
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp45), !dbg !519
  %tobool6.not.i = icmp eq i32 %bcmp45, 0, !dbg !519
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else8.i, !dbg !520

if.then7.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !521
  %gcov_ctr18.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16, !dbg !521
  %3 = add i64 %gcov_ctr18.i, 1, !dbg !521
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16, !dbg !521
  br label %arch_syscall_match_sym_name.exit, !dbg !522

if.else8.i:                                       ; preds = %if.else4.i
  %bcmp46 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %str, ptr noundef nonnull dereferenceable(21) @.str.27, i32 21) #23, !dbg !523
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp46), !dbg !523
  %tobool10.not.i = icmp eq i32 %bcmp46, 0, !dbg !523
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else8.i.if.end.i_crit_edge, !dbg !524

if.else8.i.if.end.i_crit_edge:                    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !524
  br label %if.end.i, !dbg !524

if.then11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !525
  %gcov_ctr19.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 3), align 8, !dbg !525
  %4 = add i64 %gcov_ctr19.i, 1, !dbg !525
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 3), align 8, !dbg !525
  br label %if.end.i, !dbg !526

if.end.i:                                         ; preds = %if.then11.i, %if.else8.i.if.end.i_crit_edge
  %sym.addr.0.i = phi ptr [ %str, %if.else8.i.if.end.i_crit_edge ], [ @.str.28, %if.then11.i ]
  %gcov_ctr20.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 4), align 16
  %5 = add i64 %gcov_ctr20.i, 1
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 4), align 16
  br label %arch_syscall_match_sym_name.exit

arch_syscall_match_sym_name.exit:                 ; preds = %if.end.i, %if.then7.i, %if.then3.i, %if.then.i
  %sym.addr.1.i = phi ptr [ %sym.addr.0.i, %if.end.i ], [ @.str.26, %if.then7.i ], [ @.str.24, %if.then3.i ], [ @.str.22, %if.then.i ]
  %call15.i = call i32 @strcasecmp(ptr noundef %sym.addr.1.i, ptr noundef nonnull @.str.20) #19, !dbg !527
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i), !dbg !528
  %tobool16.not.i = icmp eq i32 %call15.i, 0, !dbg !528
  %brmerge = or i1 %tobool16.not.i, icmp uge (ptr @__start_syscalls_metadata, ptr @__stop_syscalls_metadata), !dbg !529
  %__llvm_gcov_ctr.46.mux = select i1 %tobool16.not.i, ptr @__llvm_gcov_ctr.46, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 4), !dbg !529
  br i1 %brmerge, label %arch_syscall_match_sym_name.exit.cleanup_crit_edge, label %arch_syscall_match_sym_name.exit.for.body_crit_edge, !dbg !529

arch_syscall_match_sym_name.exit.for.body_crit_edge: ; preds = %arch_syscall_match_sym_name.exit
  br label %for.body, !dbg !529

arch_syscall_match_sym_name.exit.cleanup_crit_edge: ; preds = %arch_syscall_match_sym_name.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !529
  br label %cleanup, !dbg !529

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %arch_syscall_match_sym_name.exit.for.body_crit_edge
  %start.050 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__start_syscalls_metadata, %arch_syscall_match_sym_name.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %start.050 to i32, !dbg !530
  call void @__asan_load4_noabort(i32 %6), !dbg !530
  %7 = load ptr, ptr %start.050, align 4, !dbg !530
  %8 = ptrtoint ptr %7 to i32, !dbg !531
  call void @__asan_load4_noabort(i32 %8), !dbg !531
  %9 = load ptr, ptr %7, align 4, !dbg !531
  %tobool.not = icmp eq ptr %9, null, !dbg !532
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true, !dbg !533

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !533
  br label %for.inc, !dbg !533

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !534
  %10 = add i64 %gcov_ctr10, 1, !dbg !534
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !534
  %11 = ptrtoint ptr %7 to i32, !dbg !535
  call void @__asan_load4_noabort(i32 %11), !dbg !535
  %12 = load ptr, ptr %7, align 4, !dbg !535
  br i1 %tobool.not.i, label %if.then.i21, label %if.else.i24, !dbg !536

if.then.i21:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18, !dbg !538
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.63, align 16, !dbg !538
  %13 = add i64 %gcov_ctr.i20, 1, !dbg !538
  store i64 %13, ptr @__llvm_gcov_ctr.63, align 16, !dbg !538
  br label %arch_syscall_match_sym_name.exit43, !dbg !539

if.else.i24:                                      ; preds = %land.lhs.true
  %bcmp47 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %str, ptr noundef nonnull dereferenceable(21) @.str.23, i32 21) #23, !dbg !540
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp47), !dbg !540
  %tobool2.not.i23 = icmp eq i32 %bcmp47, 0, !dbg !540
  br i1 %tobool2.not.i23, label %if.then3.i26, label %if.else4.i29, !dbg !541

if.then3.i26:                                     ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !542
  %gcov_ctr17.i25 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !542
  %14 = add i64 %gcov_ctr17.i25, 1, !dbg !542
  store i64 %14, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 1), align 8, !dbg !542
  br label %arch_syscall_match_sym_name.exit43, !dbg !543

if.else4.i29:                                     ; preds = %if.else.i24
  %bcmp48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(22) %str, ptr noundef nonnull dereferenceable(22) @.str.25, i32 22) #23, !dbg !544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48), !dbg !544
  %tobool6.not.i28 = icmp eq i32 %bcmp48, 0, !dbg !544
  br i1 %tobool6.not.i28, label %if.then7.i31, label %if.else8.i34, !dbg !545

if.then7.i31:                                     ; preds = %if.else4.i29
  call void @__sanitizer_cov_trace_pc() #18, !dbg !546
  %gcov_ctr18.i30 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16, !dbg !546
  %15 = add i64 %gcov_ctr18.i30, 1, !dbg !546
  store i64 %15, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 2), align 16, !dbg !546
  br label %arch_syscall_match_sym_name.exit43, !dbg !547

if.else8.i34:                                     ; preds = %if.else4.i29
  %bcmp49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %str, ptr noundef nonnull dereferenceable(21) @.str.27, i32 21) #23, !dbg !548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49), !dbg !548
  %tobool10.not.i33 = icmp eq i32 %bcmp49, 0, !dbg !548
  br i1 %tobool10.not.i33, label %if.then11.i36, label %if.else8.i34.if.end.i39_crit_edge, !dbg !549

if.else8.i34.if.end.i39_crit_edge:                ; preds = %if.else8.i34
  call void @__sanitizer_cov_trace_pc() #18, !dbg !549
  br label %if.end.i39, !dbg !549

if.then11.i36:                                    ; preds = %if.else8.i34
  call void @__sanitizer_cov_trace_pc() #18, !dbg !550
  %gcov_ctr19.i35 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 3), align 8, !dbg !550
  %16 = add i64 %gcov_ctr19.i35, 1, !dbg !550
  store i64 %16, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 3), align 8, !dbg !550
  br label %if.end.i39, !dbg !551

if.end.i39:                                       ; preds = %if.then11.i36, %if.else8.i34.if.end.i39_crit_edge
  %sym.addr.0.i37 = phi ptr [ %str, %if.else8.i34.if.end.i39_crit_edge ], [ @.str.28, %if.then11.i36 ]
  %gcov_ctr20.i38 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 4), align 16
  %17 = add i64 %gcov_ctr20.i38, 1
  store i64 %17, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.63, i32 0, i32 4), align 16
  br label %arch_syscall_match_sym_name.exit43

arch_syscall_match_sym_name.exit43:               ; preds = %if.end.i39, %if.then7.i31, %if.then3.i26, %if.then.i21
  %sym.addr.1.i40 = phi ptr [ %sym.addr.0.i37, %if.end.i39 ], [ @.str.26, %if.then7.i31 ], [ @.str.24, %if.then3.i26 ], [ @.str.22, %if.then.i21 ]
  %call15.i41 = call i32 @strcasecmp(ptr noundef %sym.addr.1.i40, ptr noundef %12) #19, !dbg !552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i41), !dbg !553
  %tobool16.not.i42 = icmp eq i32 %call15.i41, 0, !dbg !553
  br i1 %tobool16.not.i42, label %arch_syscall_match_sym_name.exit43.cleanup_crit_edge, label %arch_syscall_match_sym_name.exit43.for.inc_crit_edge, !dbg !532

arch_syscall_match_sym_name.exit43.for.inc_crit_edge: ; preds = %arch_syscall_match_sym_name.exit43
  call void @__sanitizer_cov_trace_pc() #18, !dbg !532
  br label %for.inc, !dbg !532

arch_syscall_match_sym_name.exit43.cleanup_crit_edge: ; preds = %arch_syscall_match_sym_name.exit43
  call void @__sanitizer_cov_trace_pc() #18, !dbg !532
  br label %cleanup, !dbg !532

for.inc:                                          ; preds = %arch_syscall_match_sym_name.exit43.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 3), align 8, !dbg !554
  %18 = add i64 %gcov_ctr12, 1, !dbg !554
  store i64 %18, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 3), align 8, !dbg !554
  %incdec.ptr = getelementptr ptr, ptr %start.050, i32 1, !dbg !554
  %cmp = icmp ult ptr %incdec.ptr, @__stop_syscalls_metadata, !dbg !555
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge, !dbg !556, !llvm.loop !557

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18, !dbg !556
  br label %cleanup, !dbg !556

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18, !dbg !556
  br label %for.body, !dbg !556

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %arch_syscall_match_sym_name.exit43.cleanup_crit_edge, %arch_syscall_match_sym_name.exit.cleanup_crit_edge
  %.sink = phi ptr [ %__llvm_gcov_ctr.46.mux, %arch_syscall_match_sym_name.exit.cleanup_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), %arch_syscall_match_sym_name.exit43.cleanup_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 4), %for.inc.cleanup_crit_edge ]
  %retval.0 = phi ptr [ null, %arch_syscall_match_sym_name.exit.cleanup_crit_edge ], [ %7, %arch_syscall_match_sym_name.exit43.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], !dbg !559
  %19 = ptrtoint ptr %.sink to i32, !dbg !559
  call void @__asan_load8_noabort(i32 %19), !dbg !559
  %gcov_ctr13 = load i64, ptr %.sink, align 16, !dbg !559
  %20 = add i64 %gcov_ctr13, 1, !dbg !559
  store i64 %20, ptr %.sink, align 16, !dbg !559
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %str) #19, !dbg !560
  ret ptr %retval.0, !dbg !560
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @syscall_enter_define_fields(ptr noundef %call) #3 section ".init.text" align 64 !dbg !561 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !562
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.49, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.49, align 16
  %data = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 7, !dbg !563
  %1 = ptrtoint ptr %data to i32, !dbg !563
  call void @__asan_load4_noabort(i32 %1), !dbg !563
  %2 = load ptr, ptr %data, align 4, !dbg !563
  %nb_args = getelementptr inbounds %struct.syscall_metadata, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %nb_args to i32, !dbg !564
  call void @__asan_load4_noabort(i32 %3), !dbg !564
  %4 = load i32, ptr %nb_args, align 4, !dbg !564
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4), !dbg !565
  %cmp13 = icmp sgt i32 %4, 0, !dbg !565
  br i1 %cmp13, label %for.body.lr.ph, label %entry.for.end_crit_edge, !dbg !566

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !566
  br label %for.end, !dbg !566

for.body.lr.ph:                                   ; preds = %entry
  %types = getelementptr inbounds %struct.syscall_metadata, ptr %2, i32 0, i32 3
  %args = getelementptr inbounds %struct.syscall_metadata, ptr %2, i32 0, i32 4
  br label %for.body, !dbg !566

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %offset.014 = phi i32 [ 12, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %types to i32, !dbg !567
  call void @__asan_load4_noabort(i32 %5), !dbg !567
  %6 = load ptr, ptr %types, align 4, !dbg !567
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.015, !dbg !568
  %7 = ptrtoint ptr %arrayidx to i32, !dbg !568
  call void @__asan_load4_noabort(i32 %7), !dbg !568
  %8 = load ptr, ptr %arrayidx, align 4, !dbg !568
  %9 = ptrtoint ptr %args to i32, !dbg !569
  call void @__asan_load4_noabort(i32 %9), !dbg !569
  %10 = load ptr, ptr %args, align 4, !dbg !569
  %arrayidx1 = getelementptr ptr, ptr %10, i32 %i.015, !dbg !570
  %11 = ptrtoint ptr %arrayidx1 to i32, !dbg !570
  call void @__asan_load4_noabort(i32 %11), !dbg !570
  %12 = load ptr, ptr %arrayidx1, align 4, !dbg !570
  %call2 = tail call i32 @trace_define_field(ptr noundef %call, ptr noundef %8, ptr noundef %12, i32 noundef %offset.014, i32 noundef 4, i32 noundef 0, i32 noundef 0) #19, !dbg !571
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !572
  %tobool.not = icmp eq i32 %call2, 0, !dbg !572
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !572

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !573
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !573
  %13 = add i64 %gcov_ctr3, 1, !dbg !573
  store i64 %13, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !573
  br label %for.end, !dbg !573

if.end:                                           ; preds = %for.body
  %add = add i32 %offset.014, 4, !dbg !574
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !575
  %14 = add i64 %gcov_ctr4, 1, !dbg !575
  store i64 %14, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !575
  %inc = add nuw nsw i32 %i.015, 1, !dbg !575
  %15 = ptrtoint ptr %nb_args to i32, !dbg !564
  call void @__asan_load4_noabort(i32 %15), !dbg !564
  %16 = load i32, ptr %nb_args, align 4, !dbg !564
  %cmp = icmp slt i32 %inc, %16, !dbg !565
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge, !dbg !566, !llvm.loop !576

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !566
  br label %for.end, !dbg !566

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !566
  br label %for.body, !dbg !566

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call2, %if.then ], [ 0, %entry.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], !dbg !578
  ret i32 %ret.1, !dbg !579
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_define_field(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_syscall_print_fmt(ptr noundef %call) unnamed_addr #3 section ".init.text" align 64 !dbg !580 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !581
  %data = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 7, !dbg !582
  %0 = ptrtoint ptr %data to i32, !dbg !582
  call void @__asan_load4_noabort(i32 %0), !dbg !582
  %1 = load ptr, ptr %data, align 4, !dbg !582
  %enter_event = getelementptr inbounds %struct.syscall_metadata, ptr %1, i32 0, i32 6, !dbg !583
  %2 = ptrtoint ptr %enter_event to i32, !dbg !583
  call void @__asan_load4_noabort(i32 %2), !dbg !583
  %3 = load ptr, ptr %enter_event, align 4, !dbg !583
  %cmp.not = icmp eq ptr %3, %call, !dbg !584
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !585

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !586
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.51, align 16, !dbg !586
  %4 = add i64 %gcov_ctr, 1, !dbg !586
  store i64 %4, ptr @__llvm_gcov_ctr.51, align 16, !dbg !586
  %print_fmt2 = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 4, !dbg !587
  %5 = ptrtoint ptr %print_fmt2 to i32, !dbg !588
  call void @__asan_store4_noabort(i32 %5), !dbg !588
  store ptr @.str.16, ptr %print_fmt2, align 4, !dbg !588
  br label %cleanup, !dbg !589

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @__set_enter_print_fmt(ptr noundef %1, ptr noundef null, i32 noundef 0) #21, !dbg !590
  %add = add i32 %call3, 1, !dbg !591
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 3), align 8, !dbg !592
  %6 = add i64 %gcov_ctr12.i, 1, !dbg !592
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 3), align 8, !dbg !592
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #24, !dbg !594
  %tobool.not = icmp eq ptr %call9.i, null, !dbg !595
  br i1 %tobool.not, label %if.then5, label %if.end6, !dbg !596

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !597
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !597
  %7 = add i64 %gcov_ctr12, 1, !dbg !597
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !597
  br label %cleanup, !dbg !597

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !598
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 2), align 16, !dbg !598
  %8 = add i64 %gcov_ctr13, 1, !dbg !598
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 2), align 16, !dbg !598
  %call8 = tail call fastcc i32 @__set_enter_print_fmt(ptr noundef %1, ptr noundef nonnull %call9.i, i32 noundef %add) #21, !dbg !599
  %print_fmt9 = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 4, !dbg !600
  %9 = ptrtoint ptr %print_fmt9 to i32, !dbg !601
  call void @__asan_store4_noabort(i32 %9), !dbg !601
  store ptr %call9.i, ptr %print_fmt9, align 4, !dbg !601
  br label %cleanup, !dbg !602

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end6 ], [ -12, %if.then5 ], !dbg !603
  ret i32 %retval.0, !dbg !604
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_syscall_print_fmt(ptr noundef readonly %call) unnamed_addr #3 section ".init.text" align 64 !dbg !605 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !606
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.52, align 8
  %data = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 7, !dbg !607
  %1 = ptrtoint ptr %data to i32, !dbg !607
  call void @__asan_load4_noabort(i32 %1), !dbg !607
  %2 = load ptr, ptr %data, align 4, !dbg !607
  %enter_event = getelementptr inbounds %struct.syscall_metadata, ptr %2, i32 0, i32 6, !dbg !608
  %3 = ptrtoint ptr %enter_event to i32, !dbg !608
  call void @__asan_load4_noabort(i32 %3), !dbg !608
  %4 = load ptr, ptr %enter_event, align 4, !dbg !608
  %cmp = icmp eq ptr %4, %call, !dbg !609
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !610

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !610
  br label %if.end, !dbg !610

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !611
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !611
  %5 = add i64 %gcov_ctr2, 1, !dbg !611
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !611
  %print_fmt = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 4, !dbg !612
  %6 = ptrtoint ptr %print_fmt to i32, !dbg !612
  call void @__asan_load4_noabort(i32 %6), !dbg !612
  %7 = load ptr, ptr %print_fmt, align 4, !dbg !612
  tail call void @kfree(ptr noundef %7) #19, !dbg !613
  br label %if.end, !dbg !613

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void, !dbg !614
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_enter_print_fmt(ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %buf, i32 noundef %len) unnamed_addr #5 section ".init.text" align 64 !dbg !615 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len), !dbg !617
  %tobool.not = icmp eq i32 %len, 0, !dbg !617
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !dbg !617

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !617
  br label %cond.end, !dbg !617

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !617
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.53, align 16, !dbg !617
  %0 = add i64 %gcov_ctr, 1, !dbg !617
  store i64 %0, ptr @__llvm_gcov_ctr.53, align 16, !dbg !617
  br label %cond.end, !dbg !617

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.17), !dbg !618
  %nb_args = getelementptr inbounds %struct.syscall_metadata, ptr %entry1, i32 0, i32 2
  %1 = ptrtoint ptr %nb_args to i32, !dbg !619
  call void @__asan_load4_noabort(i32 %1), !dbg !619
  %2 = load i32, ptr %nb_args, align 4, !dbg !619
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2), !dbg !620
  %cmp80 = icmp sgt i32 %2, 0, !dbg !620
  br i1 %cmp80, label %for.body.lr.ph, label %cond.end.for.end_crit_edge, !dbg !621

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !621
  br label %for.end, !dbg !621

for.body.lr.ph:                                   ; preds = %cond.end
  %args = getelementptr inbounds %struct.syscall_metadata, ptr %entry1, i32 0, i32 4
  br label %for.body, !dbg !621

for.body:                                         ; preds = %cond.end7.for.body_crit_edge, %for.body.lr.ph
  %pos.082 = phi i32 [ %call, %for.body.lr.ph ], [ %add14, %cond.end7.for.body_crit_edge ]
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end7.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %pos.082, !dbg !622
  br i1 %tobool.not, label %cond.false6, label %cond.true4, !dbg !623

cond.true4:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !623
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 2), align 16, !dbg !623
  %3 = add i64 %gcov_ctr43, 1, !dbg !623
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 2), align 16, !dbg !623
  %sub5 = sub i32 %len, %pos.082, !dbg !623
  br label %cond.end7, !dbg !623

cond.false6:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !623
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 1), align 8, !dbg !623
  %4 = add i64 %gcov_ctr42, 1, !dbg !623
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 1), align 8, !dbg !623
  br label %cond.end7, !dbg !623

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi i32 [ %sub5, %cond.true4 ], [ 0, %cond.false6 ], !dbg !623
  %5 = ptrtoint ptr %args to i32, !dbg !624
  call void @__asan_load4_noabort(i32 %5), !dbg !624
  %6 = load ptr, ptr %args, align 4, !dbg !624
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.081, !dbg !625
  %7 = ptrtoint ptr %arrayidx to i32, !dbg !625
  call void @__asan_load4_noabort(i32 %7), !dbg !625
  %8 = load ptr, ptr %arrayidx, align 4, !dbg !625
  %9 = ptrtoint ptr %nb_args to i32, !dbg !626
  call void @__asan_load4_noabort(i32 %9), !dbg !626
  %10 = load i32, ptr %nb_args, align 4, !dbg !626
  %sub10 = add i32 %10, -1, !dbg !627
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081, i32 %sub10), !dbg !628
  %cmp11 = icmp eq i32 %i.081, %sub10, !dbg !628
  %cond12 = select i1 %cmp11, ptr @.str.9, ptr @.str.10, !dbg !629
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef %cond8, ptr noundef nonnull @.str.18, ptr noundef %8, i32 noundef 4, ptr noundef nonnull %cond12), !dbg !630
  %add14 = add i32 %call13, %pos.082, !dbg !631
  %inc = add nuw nsw i32 %i.081, 1, !dbg !632
  %11 = ptrtoint ptr %nb_args to i32, !dbg !619
  call void @__asan_load4_noabort(i32 %11), !dbg !619
  %12 = load i32, ptr %nb_args, align 4, !dbg !619
  %cmp = icmp slt i32 %inc, %12, !dbg !620
  br i1 %cmp, label %cond.end7.for.body_crit_edge, label %cond.end7.for.end_crit_edge, !dbg !621, !llvm.loop !633

cond.end7.for.end_crit_edge:                      ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #18, !dbg !621
  br label %for.end, !dbg !621

cond.end7.for.body_crit_edge:                     ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #18, !dbg !621
  br label %for.body, !dbg !621

for.end:                                          ; preds = %cond.end7.for.end_crit_edge, %cond.end.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %call, %cond.end.for.end_crit_edge ], [ %add14, %cond.end7.for.end_crit_edge ], !dbg !635
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %pos.0.lcssa, !dbg !636
  br i1 %tobool.not, label %cond.false19, label %cond.true17, !dbg !637

cond.true17:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !637
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 4), align 16, !dbg !637
  %13 = add i64 %gcov_ctr45, 1, !dbg !637
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 4), align 16, !dbg !637
  %sub18 = sub i32 %len, %pos.0.lcssa, !dbg !637
  br label %cond.end20, !dbg !637

cond.false19:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !637
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 3), align 8, !dbg !637
  %14 = add i64 %gcov_ctr44, 1, !dbg !637
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 3), align 8, !dbg !637
  br label %cond.end20, !dbg !637

cond.end20:                                       ; preds = %cond.false19, %cond.true17
  %cond21 = phi i32 [ %sub18, %cond.true17 ], [ 0, %cond.false19 ], !dbg !637
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr15, i32 noundef %cond21, ptr noundef nonnull @.str.17), !dbg !638
  %add23 = add i32 %call22, %pos.0.lcssa, !dbg !639
  %15 = ptrtoint ptr %nb_args to i32, !dbg !640
  call void @__asan_load4_noabort(i32 %15), !dbg !640
  %16 = load i32, ptr %nb_args, align 4, !dbg !640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16), !dbg !641
  %cmp2684 = icmp sgt i32 %16, 0, !dbg !641
  br i1 %cmp2684, label %for.body27.lr.ph, label %cond.end20.for.end41_crit_edge, !dbg !642

cond.end20.for.end41_crit_edge:                   ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #18, !dbg !642
  br label %for.end41, !dbg !642

for.body27.lr.ph:                                 ; preds = %cond.end20
  %args35 = getelementptr inbounds %struct.syscall_metadata, ptr %entry1, i32 0, i32 4
  br label %for.body27, !dbg !642

for.body27:                                       ; preds = %cond.end33.for.body27_crit_edge, %for.body27.lr.ph
  %pos.186 = phi i32 [ %add23, %for.body27.lr.ph ], [ %add38, %cond.end33.for.body27_crit_edge ]
  %i.185 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc40, %cond.end33.for.body27_crit_edge ]
  %add.ptr28 = getelementptr i8, ptr %buf, i32 %pos.186, !dbg !643
  br i1 %tobool.not, label %cond.false32, label %cond.true30, !dbg !644

cond.true30:                                      ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18, !dbg !644
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 6), align 16, !dbg !644
  %17 = add i64 %gcov_ctr47, 1, !dbg !644
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 6), align 16, !dbg !644
  %sub31 = sub i32 %len, %pos.186, !dbg !644
  br label %cond.end33, !dbg !644

cond.false32:                                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18, !dbg !644
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 5), align 8, !dbg !644
  %18 = add i64 %gcov_ctr46, 1, !dbg !644
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.53, i32 0, i32 5), align 8, !dbg !644
  br label %cond.end33, !dbg !644

cond.end33:                                       ; preds = %cond.false32, %cond.true30
  %cond34 = phi i32 [ %sub31, %cond.true30 ], [ 0, %cond.false32 ], !dbg !644
  %19 = ptrtoint ptr %args35 to i32, !dbg !645
  call void @__asan_load4_noabort(i32 %19), !dbg !645
  %20 = load ptr, ptr %args35, align 4, !dbg !645
  %arrayidx36 = getelementptr ptr, ptr %20, i32 %i.185, !dbg !646
  %21 = ptrtoint ptr %arrayidx36 to i32, !dbg !646
  call void @__asan_load4_noabort(i32 %21), !dbg !646
  %22 = load ptr, ptr %arrayidx36, align 4, !dbg !646
  %call37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr28, i32 noundef %cond34, ptr noundef nonnull @.str.19, ptr noundef %22), !dbg !647
  %add38 = add i32 %call37, %pos.186, !dbg !648
  %inc40 = add nuw nsw i32 %i.185, 1, !dbg !649
  %23 = ptrtoint ptr %nb_args to i32, !dbg !640
  call void @__asan_load4_noabort(i32 %23), !dbg !640
  %24 = load i32, ptr %nb_args, align 4, !dbg !640
  %cmp26 = icmp slt i32 %inc40, %24, !dbg !641
  br i1 %cmp26, label %cond.end33.for.body27_crit_edge, label %cond.end33.for.end41_crit_edge, !dbg !642, !llvm.loop !650

cond.end33.for.end41_crit_edge:                   ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #18, !dbg !642
  br label %for.end41, !dbg !642

cond.end33.for.body27_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #18, !dbg !642
  br label %for.body27, !dbg !642

for.end41:                                        ; preds = %cond.end33.for.end41_crit_edge, %cond.end20.for.end41_crit_edge
  %pos.1.lcssa = phi i32 [ %add23, %cond.end20.for.end41_crit_edge ], [ %add38, %cond.end33.for.end41_crit_edge ], !dbg !635
  ret i32 %pos.1.lcssa, !dbg !652
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kallsyms_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_syscall_enter(ptr noundef %data, ptr nocapture noundef readonly %regs, i32 noundef %id) #2 align 64 !dbg !653 {
entry:
  %buffer = alloca ptr, align 4
  %args = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !654
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #19, !dbg !655
  %0 = ptrtoint ptr %buffer to i32, !dbg !656
  call void @__asan_store4_noabort(i32 %0), !dbg !656
  store ptr inttoptr (i32 -1 to ptr), ptr %buffer, align 4, !dbg !656, !annotation !657
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args), !dbg !658
  %args.4.args.4..sroa_idx = getelementptr inbounds i8, ptr %args, i32 4, !dbg !659
  %1 = call ptr @memset(ptr %args, i32 255, i32 24), !dbg !659
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !660
  %2 = add i64 %gcov_ctr.i75, 1, !dbg !660
  store i64 %2, ptr @__llvm_gcov_ctr.71, align 8, !dbg !660
  %3 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !660
  %and.i76 = and i32 %3, -16384, !dbg !664
  %4 = inttoptr i32 %and.i76 to ptr, !dbg !665
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2, !dbg !666
  %5 = ptrtoint ptr %task to i32, !dbg !666
  call void @__asan_load4_noabort(i32 %5), !dbg !666
  %6 = load ptr, ptr %task, align 8, !dbg !666
  %gcov_ctr.i77 = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %7 = add i64 %gcov_ctr.i77, 1
  store i64 %7, ptr @__llvm_gcov_ctr.70, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %8 = add i64 %gcov_ctr.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.76, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1, !dbg !667
  %9 = ptrtoint ptr %stack.i.i to i32, !dbg !667
  call void @__asan_load4_noabort(i32 %9), !dbg !667
  %10 = load ptr, ptr %stack.i.i, align 4, !dbg !667
  %abi_syscall.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 6, !dbg !673
  %11 = ptrtoint ptr %abi_syscall.i.i to i32, !dbg !673
  call void @__asan_load4_noabort(i32 %11), !dbg !673
  %12 = load i32, ptr %abi_syscall.i.i, align 4, !dbg !673
  %and.i.i = and i32 %12, 1048575, !dbg !674
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.69, align 16, !dbg !675
  %13 = add i64 %gcov_ctr, 1, !dbg !675
  store i64 %13, ptr @__llvm_gcov_ctr.69, align 16, !dbg !675
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %and.i.i), !dbg !676
  %cmp3 = icmp ugt i32 %and.i.i, 451, !dbg !676
  br i1 %cmp3, label %if.then, label %if.end, !dbg !677

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !678
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8
  %14 = add i64 %gcov_ctr48, 1
  store i64 %14, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8
  br label %cleanup, !dbg !679

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.trace_array, ptr %data, i32 0, i32 15, i32 %and.i.i, !dbg !680
  %15 = ptrtoint ptr %arrayidx to i32, !dbg !680
  call void @__asan_load4_noabort(i32 %15), !dbg !680
  %16 = load volatile ptr, ptr %arrayidx, align 4, !dbg !680
  %call5 = tail call i32 @rcu_read_lock_sched_held() #19, !dbg !680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !680
  %tobool.not = icmp eq i32 %call5, 0, !dbg !680
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end13_crit_edge, !dbg !680

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !680
  br label %do.end13, !dbg !680

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 2), align 16, !dbg !680
  %17 = add i64 %gcov_ctr49, 1, !dbg !680
  store i64 %17, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 2), align 16, !dbg !680
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #19, !dbg !680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6), !dbg !680
  %tobool7.not = icmp eq i32 %call6, 0, !dbg !680
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8, !dbg !680

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18, !dbg !680
  br label %do.end13, !dbg !680

land.lhs.true8:                                   ; preds = %land.lhs.true
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 3), align 8, !dbg !680
  %18 = add i64 %gcov_ctr50, 1, !dbg !680
  store i64 %18, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 3), align 8, !dbg !680
  %.b74 = load i1, ptr @ftrace_syscall_enter.__warned, align 1, !dbg !680
  br i1 %.b74, label %land.lhs.true8.do.end13_crit_edge, label %if.then10, !dbg !680

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18, !dbg !680
  br label %do.end13, !dbg !680

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18, !dbg !680
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 4), align 16, !dbg !680
  %19 = add i64 %gcov_ctr51, 1, !dbg !680
  store i64 %19, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 4), align 16, !dbg !680
  store i1 true, ptr @ftrace_syscall_enter.__warned, align 1, !dbg !680
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 311, ptr noundef nonnull @.str.31) #19, !dbg !680
  br label %do.end13, !dbg !680

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %16, null, !dbg !681
  br i1 %tobool15.not, label %if.then16, label %if.end17, !dbg !682

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #18, !dbg !678
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 5), align 8
  %20 = add i64 %gcov_ctr52, 1
  store i64 %20, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 5), align 8
  br label %cleanup, !dbg !683

if.end17:                                         ; preds = %do.end13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %16, i32 0, i32 7, !dbg !684
  %21 = ptrtoint ptr %flags.i to i32, !dbg !684
  call void @__asan_load4_noabort(i32 %21), !dbg !684
  %22 = load i32, ptr %flags.i, align 4, !dbg !684
  %and.i = and i32 %22, 704, !dbg !688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !688
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !688
  br i1 %tobool.not.i, label %if.end17.if.end20.sink.split_crit_edge, label %if.end.i, !dbg !688, !prof !168

if.end17.if.end20.sink.split_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18, !dbg !688
  br label %if.end20.sink.split, !dbg !688

if.end.i:                                         ; preds = %if.end17
  %and4.i = and i32 %22, 256, !dbg !689
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i), !dbg !689
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !689
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end20.sink.split_crit_edge, !dbg !689, !prof !690

if.end.i.if.end20.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !689
  br label %if.end20.sink.split, !dbg !689

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !691
  %23 = add i64 %gcov_ctr14.i, 1, !dbg !691
  store i64 %23, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !691
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef nonnull %16) #19, !dbg !692
  br i1 %call.i, label %if.then19, label %trace_trigger_soft_disabled.exit.if.end20_crit_edge, !dbg !693

trace_trigger_soft_disabled.exit.if.end20_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !693
  br label %if.end20, !dbg !693

if.then19:                                        ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !678
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 6), align 16
  %24 = add i64 %gcov_ctr53, 1
  store i64 %24, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 6), align 16
  br label %cleanup, !dbg !694

if.end20.sink.split:                              ; preds = %if.end.i.if.end20.sink.split_crit_edge, %if.end17.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.72, %if.end17.if.end20.sink.split_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), %if.end.i.if.end20.sink.split_crit_edge ]
  %25 = ptrtoint ptr %.sink to i32, !dbg !695
  call void @__asan_load8_noabort(i32 %25), !dbg !695
  %gcov_ctr15.i = load i64, ptr %.sink, align 16, !dbg !695
  %26 = add i64 %gcov_ctr15.i, 1, !dbg !695
  store i64 %26, ptr %.sink, align 16, !dbg !695
  br label %if.end20, !dbg !696

if.end20:                                         ; preds = %if.end20.sink.split, %trace_trigger_soft_disabled.exit.if.end20_crit_edge
  %27 = load ptr, ptr @syscalls_metadata, align 4, !dbg !696
  %tobool.not.i78 = icmp eq ptr %27, null, !dbg !696
  br i1 %tobool.not.i78, label %syscall_nr_to_meta.exit.thread, label %syscall_nr_to_meta.exit, !dbg !698

syscall_nr_to_meta.exit.thread:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18, !dbg !699
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !699
  %28 = add i64 %gcov_ctr5.i, 1, !dbg !699
  store i64 %28, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !699
  br label %if.then23, !dbg !700

syscall_nr_to_meta.exit:                          ; preds = %if.end20
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !701
  %29 = add i64 %gcov_ctr.i79, 1, !dbg !701
  store i64 %29, ptr @__llvm_gcov_ctr.36, align 16, !dbg !701
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !702
  %30 = add i64 %gcov_ctr3.i, 1, !dbg !702
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !702
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !703
  %31 = add i64 %gcov_ctr4.i, 1, !dbg !703
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !703
  %arrayidx.i = getelementptr ptr, ptr %27, i32 %and.i.i, !dbg !703
  %32 = ptrtoint ptr %arrayidx.i to i32, !dbg !703
  call void @__asan_load4_noabort(i32 %32), !dbg !703
  %33 = load ptr, ptr %arrayidx.i, align 4, !dbg !703
  %tobool22.not = icmp eq ptr %33, null, !dbg !704
  br i1 %tobool22.not, label %syscall_nr_to_meta.exit.if.then23_crit_edge, label %if.end24, !dbg !700

syscall_nr_to_meta.exit.if.then23_crit_edge:      ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !700
  br label %if.then23, !dbg !700

if.then23:                                        ; preds = %syscall_nr_to_meta.exit.if.then23_crit_edge, %syscall_nr_to_meta.exit.thread
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 7), align 8
  %34 = add i64 %gcov_ctr54, 1
  store i64 %34, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 7), align 8
  br label %cleanup, !dbg !705

if.end24:                                         ; preds = %syscall_nr_to_meta.exit
  %nb_args = getelementptr inbounds %struct.syscall_metadata, ptr %33, i32 0, i32 2, !dbg !706
  %35 = ptrtoint ptr %nb_args to i32, !dbg !706
  call void @__asan_load4_noabort(i32 %35), !dbg !706
  %36 = load i32, ptr %nb_args, align 4, !dbg !706
  %mul = shl i32 %36, 2, !dbg !707
  %add = add i32 %mul, 12, !dbg !708
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.73, align 8, !dbg !709
  %37 = add i64 %gcov_ctr.i83, 1, !dbg !709
  store i64 %37, ptr @__llvm_gcov_ctr.73, align 8, !dbg !709
  %gcov_ctr.i.i84 = load i64, ptr @__llvm_gcov_ctr.77, align 8
  %38 = add i64 %gcov_ctr.i.i84, 1
  store i64 %38, ptr @__llvm_gcov_ctr.77, align 8
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !dbg !712, !srcloc !716
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %40 = add i64 %gcov_ctr.i2.i, 1
  store i64 %40, ptr @__llvm_gcov_ctr.78, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %41 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %41, ptr @__llvm_gcov_ctr.79, align 8
  %and.i.i.i = lshr i32 %39, 7, !dbg !717
  %and.i.lobit.i.i = and i32 %and.i.i.i, 1, !dbg !717
  %call2.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i) #19, !dbg !720
  %enter_event = getelementptr inbounds %struct.syscall_metadata, ptr %33, i32 0, i32 6, !dbg !721
  %42 = ptrtoint ptr %enter_event to i32, !dbg !721
  call void @__asan_load4_noabort(i32 %42), !dbg !721
  %43 = load ptr, ptr %enter_event, align 4, !dbg !721
  %type = getelementptr inbounds %struct.trace_event_call, ptr %43, i32 0, i32 3, i32 2, !dbg !722
  %44 = ptrtoint ptr %type to i32, !dbg !722
  call void @__asan_load4_noabort(i32 %44), !dbg !722
  %45 = load i32, ptr %type, align 4, !dbg !722
  %call27 = call ptr @trace_event_buffer_lock_reserve(ptr noundef nonnull %buffer, ptr noundef nonnull %16, i32 noundef %45, i32 noundef %add, i32 noundef %call2.i.i) #19, !dbg !723
  %tobool28.not = icmp eq ptr %call27, null, !dbg !724
  br i1 %tobool28.not, label %if.then29, label %if.end30, !dbg !725

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !678
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 8), align 16
  %46 = add i64 %gcov_ctr55, 1
  store i64 %46, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 8), align 16
  br label %cleanup, !dbg !726

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !727
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 9), align 8, !dbg !727
  %47 = add i64 %gcov_ctr56, 1, !dbg !727
  store i64 %47, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 9), align 8, !dbg !727
  %call31 = call ptr @ring_buffer_event_data(ptr noundef nonnull %call27) #19, !dbg !728
  %nr = getelementptr inbounds %struct.syscall_trace_enter, ptr %call31, i32 0, i32 1, !dbg !729
  %48 = ptrtoint ptr %nr to i32, !dbg !730
  call void @__asan_store4_noabort(i32 %48), !dbg !730
  store i32 %and.i.i, ptr %nr, align 4, !dbg !730
  %gcov_ctr.i85 = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %49 = add i64 %gcov_ctr.i85, 1
  store i64 %49, ptr @__llvm_gcov_ctr.74, align 8
  %arrayidx.i86 = getelementptr [18 x i32], ptr %regs, i32 0, i32 17, !dbg !731
  %50 = ptrtoint ptr %arrayidx.i86 to i32, !dbg !731
  call void @__asan_load4_noabort(i32 %50), !dbg !731
  %51 = load i32, ptr %arrayidx.i86, align 4, !dbg !731
  %52 = ptrtoint ptr %args to i32, !dbg !734
  call void @__asan_store4_noabort(i32 %52), !dbg !734
  store i32 %51, ptr %args, align 4, !dbg !734
  %add.ptr.i = getelementptr i32, ptr %regs, i32 1, !dbg !735
  %53 = call ptr @memcpy(ptr %args.4.args.4..sroa_idx, ptr %add.ptr.i, i32 20), !dbg !736
  %args34 = getelementptr inbounds %struct.syscall_trace_enter, ptr %call31, i32 0, i32 2, !dbg !737
  %54 = ptrtoint ptr %nb_args to i32, !dbg !738
  call void @__asan_load4_noabort(i32 %54), !dbg !738
  %55 = load i32, ptr %nb_args, align 4, !dbg !738
  %mul38 = shl i32 %55, 2, !dbg !739
  %56 = call ptr @memcpy(ptr %args34, ptr %args, i32 %mul38), !dbg !740
  %57 = ptrtoint ptr %buffer to i32, !dbg !741
  call void @__asan_load4_noabort(i32 %57), !dbg !741
  %58 = load ptr, ptr %buffer, align 4, !dbg !741
  call fastcc void @event_trigger_unlock_commit(ptr noundef nonnull %16, ptr noundef %58, ptr noundef nonnull %call27, ptr noundef %call31, i32 noundef %call2.i.i), !dbg !742
  br label %cleanup, !dbg !743

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then23, %if.then19, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args), !dbg !743
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #19, !dbg !743
  ret void, !dbg !743
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_lock_reserve(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @event_trigger_unlock_commit(ptr noundef %file, ptr noundef %buffer, ptr noundef %event, ptr noundef %entry1, i32 noundef %trace_ctx) unnamed_addr #10 align 64 !dbg !744 {
entry:
  call void @__sanitizer_cov_trace_pc() #18, !dbg !746
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.75, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.75, align 16
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !747
  %1 = ptrtoint ptr %flags.i to i32, !dbg !747
  call void @__asan_load4_noabort(i32 %1), !dbg !747
  %2 = load i32, ptr %flags.i, align 4, !dbg !747
  %and.i = and i32 %2, 256, !dbg !750
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !750
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !750
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i, !dbg !751

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !751
  br label %if.end.i, !dbg !751

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !752
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.80, align 16, !dbg !752
  %3 = add i64 %gcov_ctr.i, 1, !dbg !752
  store i64 %3, ptr @__llvm_gcov_ctr.80, align 16, !dbg !752
  %call.i = tail call i32 @event_triggers_call(ptr noundef %file, ptr noundef %buffer, ptr noundef %entry1, ptr noundef %event) #19, !dbg !753
  br label %if.end.i, !dbg !754

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %tt.0 = phi i32 [ 0, %entry.if.end.i_crit_edge ], [ %call.i, %if.then.i ], !dbg !755
  %4 = ptrtoint ptr %flags.i to i32, !dbg !756
  call void @__asan_load4_noabort(i32 %4), !dbg !756
  %5 = load i32, ptr %flags.i, align 4, !dbg !756
  %and3.i = and i32 %5, 584, !dbg !756
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i), !dbg !756
  %tobool4.not.i = icmp eq i32 %and3.i, 0, !dbg !756
  br i1 %tobool4.not.i, label %if.end.i.if.then_crit_edge, label %if.end9.i, !dbg !756, !prof !168

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !756
  br label %if.then, !dbg !756

if.end9.i:                                        ; preds = %if.end.i
  %and11.i = and i32 %5, 64, !dbg !757
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i), !dbg !757
  %tobool12.not.i = icmp eq i32 %and11.i, 0, !dbg !757
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.discard.i_crit_edge, !dbg !758

if.end9.i.discard.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !758
  br label %discard.i, !dbg !758

if.end14.i:                                       ; preds = %if.end9.i
  %and16.i = and i32 %5, 8, !dbg !759
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i), !dbg !759
  %tobool17.not.i = icmp eq i32 %and16.i, 0, !dbg !759
  br i1 %tobool17.not.i, label %if.end14.i.if.end21.i_crit_edge, label %land.lhs.true.i, !dbg !760

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !760
  br label %if.end21.i, !dbg !760

land.lhs.true.i:                                  ; preds = %if.end14.i
  %gcov_ctr31.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !761
  %6 = add i64 %gcov_ctr31.i, 1, !dbg !761
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !761
  %filter.i = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 2, !dbg !762
  %7 = ptrtoint ptr %filter.i to i32, !dbg !762
  call void @__asan_load4_noabort(i32 %7), !dbg !762
  %8 = load ptr, ptr %filter.i, align 4, !dbg !762
  %call18.i = tail call i32 @filter_match_preds(ptr noundef %8, ptr noundef %entry1) #19, !dbg !763
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i), !dbg !763
  %tobool19.not.i = icmp eq i32 %call18.i, 0, !dbg !763
  br i1 %tobool19.not.i, label %land.lhs.true.i.discard.i_crit_edge, label %land.lhs.true.i.if.end21.i_crit_edge, !dbg !764

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !764
  br label %if.end21.i, !dbg !764

land.lhs.true.i.discard.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !764
  br label %discard.i, !dbg !764

if.end21.i:                                       ; preds = %land.lhs.true.i.if.end21.i_crit_edge, %if.end14.i.if.end21.i_crit_edge
  %9 = ptrtoint ptr %flags.i to i32, !dbg !765
  call void @__asan_load4_noabort(i32 %9), !dbg !765
  %10 = load i32, ptr %flags.i, align 4, !dbg !765
  %and23.i = and i32 %10, 512, !dbg !766
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i), !dbg !766
  %tobool24.not.i = icmp eq i32 %and23.i, 0, !dbg !766
  br i1 %tobool24.not.i, label %if.end21.i.if.then_crit_edge, label %land.lhs.true25.i, !dbg !767

if.end21.i.if.then_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !767
  br label %if.then, !dbg !767

land.lhs.true25.i:                                ; preds = %if.end21.i
  %gcov_ctr33.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 5), align 8, !dbg !768
  %11 = add i64 %gcov_ctr33.i, 1, !dbg !768
  store i64 %11, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 5), align 8, !dbg !768
  %call26.i = tail call zeroext i1 @trace_event_ignore_this_pid(ptr noundef %file) #19, !dbg !769
  br i1 %call26.i, label %land.lhs.true25.i.discard.i_crit_edge, label %land.lhs.true25.i.if.then_crit_edge, !dbg !770

land.lhs.true25.i.if.then_crit_edge:              ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !770
  br label %if.then, !dbg !770

land.lhs.true25.i.discard.i_crit_edge:            ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !770
  br label %discard.i, !dbg !770

discard.i:                                        ; preds = %land.lhs.true25.i.discard.i_crit_edge, %land.lhs.true.i.discard.i_crit_edge, %if.end9.i.discard.i_crit_edge
  %.sink.i = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 2), %if.end9.i.discard.i_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 4), %land.lhs.true.i.discard.i_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 6), %land.lhs.true25.i.discard.i_crit_edge ]
  %12 = ptrtoint ptr %.sink.i to i32, !dbg !771
  call void @__asan_load8_noabort(i32 %12), !dbg !771
  %gcov_ctr34.i = load i64, ptr %.sink.i, align 16, !dbg !771
  %13 = add i64 %gcov_ctr34.i, 1, !dbg !771
  store i64 %13, ptr %.sink.i, align 16, !dbg !771
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %14 = add i64 %gcov_ctr.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.83, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.88, align 8, !dbg !772
  %15 = add i64 %gcov_ctr.i.i.i, 1, !dbg !772
  store i64 %15, ptr @__llvm_gcov_ctr.88, align 8, !dbg !772
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !780
  %16 = add i64 %gcov_ctr.i.i.i.i, 1, !dbg !780
  store i64 %16, ptr @__llvm_gcov_ctr.71, align 8, !dbg !780
  %17 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !780
  %and.i.i.i.i = and i32 %17, -16384, !dbg !782
  %18 = inttoptr i32 %and.i.i.i.i to ptr, !dbg !783
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1, !dbg !784
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32, !dbg !785
  call void @__asan_load4_noabort(i32 %19), !dbg !785
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4, !dbg !785
  %add.i.i = add i32 %20, 1, !dbg !785
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4, !dbg !785
  tail call void asm sideeffect "", "~{memory}"() #19, !dbg !786, !srcloc !787
  %gcov_ctr.i84.i = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !788
  %21 = add i64 %gcov_ctr.i84.i, 1, !dbg !788
  store i64 %21, ptr @__llvm_gcov_ctr.71, align 8, !dbg !788
  %22 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !788
  %and.i.i = and i32 %22, -16384, !dbg !790
  %23 = inttoptr i32 %and.i.i to ptr, !dbg !791
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3, !dbg !786
  %24 = ptrtoint ptr %cpu.i to i32, !dbg !786
  call void @__asan_load4_noabort(i32 %24), !dbg !786
  %25 = load i32, ptr %cpu.i, align 4, !dbg !786
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25, !dbg !786
  %26 = ptrtoint ptr %arrayidx.i to i32, !dbg !786
  call void @__asan_load4_noabort(i32 %26), !dbg !786
  %27 = load i32, ptr %arrayidx.i, align 4, !dbg !786
  %add.i = add i32 %27, ptrtoint (ptr @trace_buffered_event to i32), !dbg !786
  %28 = inttoptr i32 %add.i to ptr, !dbg !786
  %29 = ptrtoint ptr %28 to i32, !dbg !786
  call void @__asan_load4_noabort(i32 %29), !dbg !786
  %30 = load volatile ptr, ptr %28, align 4, !dbg !786
  tail call void asm sideeffect "", "~{memory}"() #19, !dbg !786, !srcloc !792
  %gcov_ctr.i73.i = load i64, ptr @__llvm_gcov_ctr.84, align 8
  %31 = add i64 %gcov_ctr.i73.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.84, align 8
  %gcov_ctr.i.i74.i = load i64, ptr @__llvm_gcov_ctr.88, align 8, !dbg !793
  %32 = add i64 %gcov_ctr.i.i74.i, 1, !dbg !793
  store i64 %32, ptr @__llvm_gcov_ctr.88, align 8, !dbg !793
  %gcov_ctr.i.i.i75.i = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !797
  %33 = add i64 %gcov_ctr.i.i.i75.i, 1, !dbg !797
  store i64 %33, ptr @__llvm_gcov_ctr.71, align 8, !dbg !797
  %34 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !797
  %and.i.i.i76.i = and i32 %34, -16384, !dbg !799
  %35 = inttoptr i32 %and.i.i.i76.i to ptr, !dbg !800
  %preempt_count.i.i77.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1, !dbg !801
  %36 = ptrtoint ptr %preempt_count.i.i77.i to i32, !dbg !802
  call void @__asan_load4_noabort(i32 %36), !dbg !802
  %37 = load volatile i32, ptr %preempt_count.i.i77.i, align 4, !dbg !802
  %sub.i.i = add i32 %37, -1, !dbg !802
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i77.i, align 4, !dbg !802
  %cmp.i = icmp eq ptr %30, %event, !dbg !803
  br i1 %cmp.i, label %do.body20.i, label %if.end69.i, !dbg !786

do.body20.i:                                      ; preds = %discard.i
  %gcov_ctr.i85.i = load i64, ptr @__llvm_gcov_ctr.85, align 8
  %38 = add i64 %gcov_ctr.i85.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.85, align 8
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !dbg !804, !srcloc !807
  %40 = ptrtoint ptr %cpu.i to i32, !dbg !808
  call void @__asan_load4_noabort(i32 %40), !dbg !808
  %41 = load i32, ptr %cpu.i, align 4, !dbg !808
  %arrayidx41.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41, !dbg !808
  %42 = ptrtoint ptr %arrayidx41.i to i32, !dbg !808
  call void @__asan_load4_noabort(i32 %42), !dbg !808
  %43 = load i32, ptr %arrayidx41.i, align 4, !dbg !808
  %add42.i = add i32 %43, ptrtoint (ptr @trace_buffered_event_cnt to i32), !dbg !808
  %44 = inttoptr i32 %add42.i to ptr, !dbg !808
  %45 = ptrtoint ptr %44 to i32, !dbg !808
  call void @__asan_load4_noabort(i32 %45), !dbg !808
  %46 = load i32, ptr %44, align 4, !dbg !808
  %add43.i = add i32 %46, -1, !dbg !808
  store i32 %add43.i, ptr %44, align 4, !dbg !808
  %gcov_ctr.i86.i = load i64, ptr @__llvm_gcov_ctr.86, align 8, !dbg !809
  %47 = add i64 %gcov_ctr.i86.i, 1, !dbg !809
  store i64 %47, ptr @__llvm_gcov_ctr.86, align 8, !dbg !809
  %gcov_ctr.i.i87.i = load i64, ptr @__llvm_gcov_ctr.77, align 8
  %48 = add i64 %gcov_ctr.i.i87.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.77, align 8
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !dbg !813, !srcloc !716
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %50 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.79, align 8
  %and.i.i.i = and i32 %49, 128, !dbg !815
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i), !dbg !808
  %tobool.not.i11 = icmp eq i32 %and.i.i.i, 0, !dbg !808
  br i1 %tobool.not.i11, label %if.then57.i, label %do.body20.i.do.end59.i_crit_edge, !dbg !808, !prof !690

do.body20.i.do.end59.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !808
  br label %do.end59.i, !dbg !808

if.then57.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !808
  %gcov_ctr.i12 = load i64, ptr @__llvm_gcov_ctr.82, align 16, !dbg !808
  %51 = add i64 %gcov_ctr.i12, 1, !dbg !808
  store i64 %51, ptr @__llvm_gcov_ctr.82, align 16, !dbg !808
  tail call void @warn_bogus_irq_restore() #19, !dbg !808
  br label %do.end59.i, !dbg !808

do.end59.i:                                       ; preds = %if.then57.i, %do.body20.i.do.end59.i_crit_edge
  %gcov_ctr.i88.i = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %52 = add i64 %gcov_ctr.i88.i, 1
  store i64 %52, ptr @__llvm_gcov_ctr.87, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #19, !dbg !818, !srcloc !821
  tail call void asm sideeffect "", "~{memory}"() #19, !dbg !822, !srcloc !823
  %gcov_ctr.i78.i = load i64, ptr @__llvm_gcov_ctr.84, align 8
  %53 = add i64 %gcov_ctr.i78.i, 1
  store i64 %53, ptr @__llvm_gcov_ctr.84, align 8
  %gcov_ctr.i.i79.i = load i64, ptr @__llvm_gcov_ctr.88, align 8, !dbg !824
  %54 = add i64 %gcov_ctr.i.i79.i, 1, !dbg !824
  store i64 %54, ptr @__llvm_gcov_ctr.88, align 8, !dbg !824
  %gcov_ctr.i.i.i80.i = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !827
  %55 = add i64 %gcov_ctr.i.i.i80.i, 1, !dbg !827
  store i64 %55, ptr @__llvm_gcov_ctr.71, align 8, !dbg !827
  %56 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !827
  %and.i.i.i81.i = and i32 %56, -16384, !dbg !829
  %57 = inttoptr i32 %and.i.i.i81.i to ptr, !dbg !830
  %preempt_count.i.i82.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1, !dbg !831
  %58 = ptrtoint ptr %preempt_count.i.i82.i to i32, !dbg !832
  call void @__asan_load4_noabort(i32 %58), !dbg !832
  %59 = load volatile i32, ptr %preempt_count.i.i82.i, align 4, !dbg !832
  %sub.i83.i = add i32 %59, -1, !dbg !832
  store volatile i32 %sub.i83.i, ptr %preempt_count.i.i82.i, align 4, !dbg !832
  %gcov_ctr70.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !833
  %60 = add i64 %gcov_ctr70.i, 1, !dbg !833
  store i64 %60, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !833
  br label %if.end, !dbg !833

if.end69.i:                                       ; preds = %discard.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !834
  %gcov_ctr71.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !834
  %61 = add i64 %gcov_ctr71.i, 1, !dbg !834
  store i64 %61, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !834
  tail call void @ring_buffer_discard_commit(ptr noundef %buffer, ptr noundef %event) #19, !dbg !835
  br label %if.end, !dbg !836

if.then:                                          ; preds = %land.lhs.true25.i.if.then_crit_edge, %if.end21.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 1), %if.end.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 7), %land.lhs.true25.i.if.then_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 7), %if.end21.i.if.then_crit_edge ]
  %62 = ptrtoint ptr %.sink to i32, !dbg !771
  call void @__asan_load8_noabort(i32 %62), !dbg !771
  %gcov_ctr35.i = load i64, ptr %.sink, align 8, !dbg !771
  %63 = add i64 %gcov_ctr35.i, 1, !dbg !771
  store i64 %63, ptr %.sink, align 8, !dbg !771
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !837
  %64 = add i64 %gcov_ctr4, 1, !dbg !837
  store i64 %64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !837
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 4, !dbg !838
  %65 = ptrtoint ptr %tr to i32, !dbg !838
  call void @__asan_load4_noabort(i32 %65), !dbg !838
  %66 = load ptr, ptr %tr, align 4, !dbg !838
  %gcov_ctr.i10 = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %67 = add i64 %gcov_ctr.i10, 1
  store i64 %67, ptr @__llvm_gcov_ctr.81, align 8
  tail call void @trace_buffer_unlock_commit_regs(ptr noundef %66, ptr noundef %buffer, ptr noundef %event, i32 noundef %trace_ctx, ptr noundef null) #19, !dbg !839
  br label %if.end, !dbg !842

if.end:                                           ; preds = %if.then, %if.end69.i, %do.end59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tt.0), !dbg !843
  %tobool.not = icmp eq i32 %tt.0, 0, !dbg !843
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2, !dbg !843

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !843
  br label %if.end3, !dbg !843

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !844
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 2), align 16, !dbg !844
  %68 = add i64 %gcov_ctr5, 1, !dbg !844
  store i64 %68, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 2), align 16, !dbg !844
  tail call void @event_triggers_post_call(ptr noundef %file, i32 noundef %tt.0) #19, !dbg !845
  br label %if.end3, !dbg !845

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void, !dbg !846
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @event_triggers_post_call(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @event_triggers_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_match_preds(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_ignore_this_pid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_discard_commit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffer_unlock_commit_regs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_syscall_enter(ptr nocapture noundef readnone %ignore, ptr noundef %regs, i32 noundef %id) #2 align 64 !dbg !847 {
entry:
  %param.i = alloca %struct.syscall_tp_t, align 8
  %args = alloca [6 x i32], align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !848
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args), !dbg !849
  %args.4.args.4..sroa_idx = getelementptr inbounds i8, ptr %args, i32 4, !dbg !850
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #19, !dbg !851
  %0 = ptrtoint ptr %rctx to i32, !dbg !852
  call void @__asan_store4_noabort(i32 %0), !dbg !852
  store i32 -1, ptr %rctx, align 4, !dbg !852, !annotation !657
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !853
  %1 = add i64 %gcov_ctr.i84, 1, !dbg !853
  store i64 %1, ptr @__llvm_gcov_ctr.71, align 8, !dbg !853
  %2 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !853
  %and.i85 = and i32 %2, -16384, !dbg !855
  %3 = inttoptr i32 %and.i85 to ptr, !dbg !856
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2, !dbg !857
  %4 = ptrtoint ptr %task to i32, !dbg !857
  call void @__asan_load4_noabort(i32 %4), !dbg !857
  %5 = load ptr, ptr %task, align 8, !dbg !857
  %gcov_ctr.i86 = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %6 = add i64 %gcov_ctr.i86, 1
  store i64 %6, ptr @__llvm_gcov_ctr.70, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.76, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1, !dbg !858
  %8 = ptrtoint ptr %stack.i.i to i32, !dbg !858
  call void @__asan_load4_noabort(i32 %8), !dbg !858
  %9 = load ptr, ptr %stack.i.i, align 4, !dbg !858
  %abi_syscall.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 6, !dbg !861
  %10 = ptrtoint ptr %abi_syscall.i.i to i32, !dbg !861
  call void @__asan_load4_noabort(i32 %10), !dbg !861
  %11 = load i32, ptr %abi_syscall.i.i, align 4, !dbg !861
  %and.i.i = and i32 %11, 1048575, !dbg !862
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.90, align 16, !dbg !863
  %12 = add i64 %gcov_ctr, 1, !dbg !863
  store i64 %12, ptr @__llvm_gcov_ctr.90, align 16, !dbg !863
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %and.i.i), !dbg !864
  %cmp2 = icmp ugt i32 %and.i.i, 451, !dbg !864
  br i1 %cmp2, label %if.then, label %if.end, !dbg !865

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !866
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 1), align 8
  %13 = add i64 %gcov_ctr50, 1
  store i64 %13, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 1), align 8
  br label %cleanup, !dbg !867

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %14 = add i64 %gcov_ctr.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.91, align 8
  %div3.i = lshr i32 %and.i.i, 5, !dbg !868
  %arrayidx.i = getelementptr i32, ptr @enabled_perf_enter_syscalls, i32 %div3.i, !dbg !872
  %15 = ptrtoint ptr %arrayidx.i to i32, !dbg !872
  call void @__asan_load4_noabort(i32 %15), !dbg !872
  %16 = load volatile i32, ptr %arrayidx.i, align 4, !dbg !872
  %and.i = and i32 %11, 31, !dbg !873
  %17 = shl nuw i32 1, %and.i, !dbg !874
  %18 = and i32 %16, %17, !dbg !874
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !874
  %tobool.not = icmp eq i32 %18, 0, !dbg !874
  br i1 %tobool.not, label %if.then4, label %if.end5, !dbg !875

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !866
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 2), align 16
  %19 = add i64 %gcov_ctr51, 1
  store i64 %19, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 2), align 16
  br label %cleanup, !dbg !876

if.end5:                                          ; preds = %if.end
  %20 = load ptr, ptr @syscalls_metadata, align 4, !dbg !877
  %tobool.not.i = icmp eq ptr %20, null, !dbg !877
  br i1 %tobool.not.i, label %syscall_nr_to_meta.exit.thread, label %syscall_nr_to_meta.exit, !dbg !879

syscall_nr_to_meta.exit.thread:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18, !dbg !880
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !880
  %21 = add i64 %gcov_ctr5.i, 1, !dbg !880
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !880
  br label %if.then8, !dbg !881

syscall_nr_to_meta.exit:                          ; preds = %if.end5
  %gcov_ctr.i87 = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !882
  %22 = add i64 %gcov_ctr.i87, 1, !dbg !882
  store i64 %22, ptr @__llvm_gcov_ctr.36, align 16, !dbg !882
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !883
  %23 = add i64 %gcov_ctr3.i, 1, !dbg !883
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !883
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !884
  %24 = add i64 %gcov_ctr4.i, 1, !dbg !884
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !884
  %arrayidx.i88 = getelementptr ptr, ptr %20, i32 %and.i.i, !dbg !884
  %25 = ptrtoint ptr %arrayidx.i88 to i32, !dbg !884
  call void @__asan_load4_noabort(i32 %25), !dbg !884
  %26 = load ptr, ptr %arrayidx.i88, align 4, !dbg !884
  %tobool7.not = icmp eq ptr %26, null, !dbg !885
  br i1 %tobool7.not, label %syscall_nr_to_meta.exit.if.then8_crit_edge, label %do.body, !dbg !881

syscall_nr_to_meta.exit.if.then8_crit_edge:       ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !881
  br label %if.then8, !dbg !881

if.then8:                                         ; preds = %syscall_nr_to_meta.exit.if.then8_crit_edge, %syscall_nr_to_meta.exit.thread
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 3), align 8
  %27 = add i64 %gcov_ctr52, 1
  store i64 %27, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 3), align 8
  br label %cleanup, !dbg !886

do.body:                                          ; preds = %syscall_nr_to_meta.exit
  %enter_event = getelementptr inbounds %struct.syscall_metadata, ptr %26, i32 0, i32 6, !dbg !887
  %28 = ptrtoint ptr %enter_event to i32, !dbg !887
  call void @__asan_load4_noabort(i32 %28), !dbg !887
  %29 = load ptr, ptr %enter_event, align 4, !dbg !887
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %29, i32 0, i32 10, !dbg !887
  %30 = ptrtoint ptr %perf_events to i32, !dbg !887
  call void @__asan_load4_noabort(i32 %30), !dbg !887
  %31 = load ptr, ptr %perf_events, align 4, !dbg !887
  %32 = ptrtoint ptr %31 to i32, !dbg !887
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3, !dbg !887
  %33 = ptrtoint ptr %cpu to i32, !dbg !887
  call void @__asan_load4_noabort(i32 %33), !dbg !887
  %34 = load i32, ptr %cpu, align 4, !dbg !887
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34, !dbg !887
  %35 = ptrtoint ptr %arrayidx to i32, !dbg !887
  call void @__asan_load4_noabort(i32 %35), !dbg !887
  %36 = load i32, ptr %arrayidx, align 4, !dbg !887
  %add = add i32 %36, %32, !dbg !887
  %37 = inttoptr i32 %add to ptr, !dbg !887
  %gcov_ctr.i89 = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %38 = add i64 %gcov_ctr.i89, 1
  store i64 %38, ptr @__llvm_gcov_ctr.92, align 8
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %29, i32 0, i32 11, !dbg !888
  %39 = ptrtoint ptr %prog_array.i to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %39), !dbg !888
  %40 = load volatile ptr, ptr %prog_array.i, align 4, !dbg !888
  %tobool.i.not = icmp eq ptr %40, null, !dbg !891
  br i1 %tobool.i.not, label %land.lhs.true, label %do.body.if.end18_crit_edge, !dbg !892

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !892
  br label %if.end18, !dbg !892

land.lhs.true:                                    ; preds = %do.body
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 4), align 16, !dbg !893
  %41 = add i64 %gcov_ctr53, 1, !dbg !893
  store i64 %41, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 4), align 16, !dbg !893
  %gcov_ctr.i90 = load i64, ptr @__llvm_gcov_ctr.93, align 8
  %42 = add i64 %gcov_ctr.i90, 1
  store i64 %42, ptr @__llvm_gcov_ctr.93, align 8
  %43 = ptrtoint ptr %37 to i32, !dbg !894
  call void @__asan_load4_noabort(i32 %43), !dbg !894
  %44 = load volatile ptr, ptr %37, align 4, !dbg !894
  %tobool.not.i91.not = icmp eq ptr %44, null, !dbg !898
  br i1 %tobool.not.i91.not, label %if.then17, label %land.lhs.true.if.end18_crit_edge, !dbg !899

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18, !dbg !899
  br label %if.end18, !dbg !899

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18, !dbg !866
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 5), align 8
  %45 = add i64 %gcov_ctr54, 1
  store i64 %45, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 5), align 8
  br label %cleanup, !dbg !900

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %nb_args = getelementptr inbounds %struct.syscall_metadata, ptr %26, i32 0, i32 2, !dbg !901
  %46 = ptrtoint ptr %nb_args to i32, !dbg !901
  call void @__asan_load4_noabort(i32 %46), !dbg !901
  %47 = load i32, ptr %nb_args, align 4, !dbg !901
  %mul = shl i32 %47, 2, !dbg !902
  %add21 = add i32 %mul, 23, !dbg !903
  %and = and i32 %add21, -8, !dbg !903
  %sub = add i32 %and, -4, !dbg !904
  %call22 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef null, ptr noundef nonnull %rctx) #19, !dbg !905
  %tobool23.not = icmp eq ptr %call22, null, !dbg !906
  br i1 %tobool23.not, label %if.then24, label %if.end25, !dbg !907

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18, !dbg !866
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 6), align 16
  %48 = add i64 %gcov_ctr55, 1
  store i64 %48, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 6), align 16
  br label %cleanup, !dbg !908

if.end25:                                         ; preds = %if.end18
  %nr = getelementptr inbounds %struct.syscall_trace_enter, ptr %call22, i32 0, i32 1, !dbg !909
  %49 = ptrtoint ptr %nr to i32, !dbg !910
  call void @__asan_store4_noabort(i32 %49), !dbg !910
  store i32 %and.i.i, ptr %nr, align 4, !dbg !910
  %gcov_ctr.i92 = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %50 = add i64 %gcov_ctr.i92, 1
  store i64 %50, ptr @__llvm_gcov_ctr.74, align 8
  %arrayidx.i93 = getelementptr [18 x i32], ptr %regs, i32 0, i32 17, !dbg !911
  %51 = ptrtoint ptr %arrayidx.i93 to i32, !dbg !911
  call void @__asan_load4_noabort(i32 %51), !dbg !911
  %52 = load i32, ptr %arrayidx.i93, align 4, !dbg !911
  %53 = ptrtoint ptr %args to i32, !dbg !913
  call void @__asan_store4_noabort(i32 %53), !dbg !913
  store i32 %52, ptr %args, align 4, !dbg !913
  %add.ptr.i = getelementptr i32, ptr %regs, i32 1, !dbg !914
  %54 = call ptr @memcpy(ptr %args.4.args.4..sroa_idx, ptr %add.ptr.i, i32 20), !dbg !915
  %args28 = getelementptr inbounds %struct.syscall_trace_enter, ptr %call22, i32 0, i32 2, !dbg !916
  %55 = ptrtoint ptr %nb_args to i32, !dbg !917
  call void @__asan_load4_noabort(i32 %55), !dbg !917
  %56 = load i32, ptr %nb_args, align 4, !dbg !917
  %mul31 = shl i32 %56, 2, !dbg !918
  %57 = call ptr @memcpy(ptr %args28, ptr %args, i32 %mul31), !dbg !919
  br i1 %tobool.i.not, label %if.end25.lor.lhs.false37_crit_edge, label %land.lhs.true33, !dbg !920

if.end25.lor.lhs.false37_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18, !dbg !920
  br label %lor.lhs.false37, !dbg !920

land.lhs.true33:                                  ; preds = %if.end25
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 7), align 8, !dbg !921
  %58 = add i64 %gcov_ctr56, 1, !dbg !921
  store i64 %58, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 7), align 8, !dbg !921
  %59 = ptrtoint ptr %enter_event to i32, !dbg !922
  call void @__asan_load4_noabort(i32 %59), !dbg !922
  %60 = load ptr, ptr %enter_event, align 4, !dbg !922
  %gcov_ctr.i94 = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %61 = add i64 %gcov_ctr.i94, 1
  store i64 %61, ptr @__llvm_gcov_ctr.94, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %param.i) #19, !dbg !923
  %62 = call ptr @memset(ptr %param.i, i32 255, i32 40), !dbg !926
  %63 = ptrtoint ptr %param.i to i32, !dbg !927
  call void @__asan_store4_noabort(i32 %63), !dbg !927
  store ptr %regs, ptr %param.i, align 8, !dbg !927
  %64 = ptrtoint ptr %nr to i32, !dbg !928
  call void @__asan_load4_noabort(i32 %64), !dbg !928
  %65 = load i32, ptr %nr, align 4, !dbg !928
  %syscall_nr.i = getelementptr inbounds %struct.syscall_tp_t, ptr %param.i, i32 0, i32 1, !dbg !929
  %66 = ptrtoint ptr %syscall_nr.i to i32, !dbg !930
  call void @__asan_store4_noabort(i32 %66), !dbg !930
  store i32 %65, ptr %syscall_nr.i, align 8, !dbg !930
  %67 = ptrtoint ptr %nb_args to i32, !dbg !931
  call void @__asan_load4_noabort(i32 %67), !dbg !931
  %68 = load i32, ptr %nb_args, align 4, !dbg !931
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68), !dbg !932
  %cmp9.i = icmp sgt i32 %68, 0, !dbg !932
  br i1 %cmp9.i, label %land.lhs.true33.for.body.i_crit_edge, label %land.lhs.true33.perf_call_bpf_enter.exit_crit_edge, !dbg !933

land.lhs.true33.perf_call_bpf_enter.exit_crit_edge: ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #18, !dbg !933
  br label %perf_call_bpf_enter.exit, !dbg !933

land.lhs.true33.for.body.i_crit_edge:             ; preds = %land.lhs.true33
  br label %for.body.i, !dbg !933

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %land.lhs.true33.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.lhs.true33.for.body.i_crit_edge ]
  %arrayidx.i95 = getelementptr %struct.syscall_trace_enter, ptr %call22, i32 0, i32 2, i32 %i.010.i, !dbg !934
  %69 = ptrtoint ptr %arrayidx.i95 to i32, !dbg !934
  call void @__asan_load4_noabort(i32 %69), !dbg !934
  %70 = load i32, ptr %arrayidx.i95, align 4, !dbg !934
  %arrayidx2.i = getelementptr %struct.syscall_tp_t, ptr %param.i, i32 0, i32 2, i32 %i.010.i, !dbg !935
  %71 = ptrtoint ptr %arrayidx2.i to i32, !dbg !936
  call void @__asan_store4_noabort(i32 %71), !dbg !936
  store i32 %70, ptr %arrayidx2.i, align 4, !dbg !936
  %gcov_ctr4.i96 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !937
  %72 = add i64 %gcov_ctr4.i96, 1, !dbg !937
  store i64 %72, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !937
  %inc.i = add nuw nsw i32 %i.010.i, 1, !dbg !937
  %73 = ptrtoint ptr %nb_args to i32, !dbg !931
  call void @__asan_load4_noabort(i32 %73), !dbg !931
  %74 = load i32, ptr %nb_args, align 4, !dbg !931
  %cmp.i97 = icmp slt i32 %inc.i, %74, !dbg !932
  br i1 %cmp.i97, label %for.body.i.for.body.i_crit_edge, label %for.body.i.perf_call_bpf_enter.exit_crit_edge, !dbg !933, !llvm.loop !938

for.body.i.perf_call_bpf_enter.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !933
  br label %perf_call_bpf_enter.exit, !dbg !933

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !933
  br label %for.body.i, !dbg !933

perf_call_bpf_enter.exit:                         ; preds = %for.body.i.perf_call_bpf_enter.exit_crit_edge, %land.lhs.true33.perf_call_bpf_enter.exit_crit_edge
  %call3.i = call i32 @trace_call_bpf(ptr noundef %60, ptr noundef nonnull %param.i) #19, !dbg !940
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %param.i) #19, !dbg !941
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i), !dbg !942
  %tobool36.not = icmp eq i32 %call3.i, 0, !dbg !942
  br i1 %tobool36.not, label %perf_call_bpf_enter.exit.if.then40_crit_edge, label %perf_call_bpf_enter.exit.lor.lhs.false37_crit_edge, !dbg !943

perf_call_bpf_enter.exit.lor.lhs.false37_crit_edge: ; preds = %perf_call_bpf_enter.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !943
  br label %lor.lhs.false37, !dbg !943

perf_call_bpf_enter.exit.if.then40_crit_edge:     ; preds = %perf_call_bpf_enter.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !943
  br label %if.then40, !dbg !943

lor.lhs.false37:                                  ; preds = %perf_call_bpf_enter.exit.lor.lhs.false37_crit_edge, %if.end25.lor.lhs.false37_crit_edge
  %gcov_ctr.i98 = load i64, ptr @__llvm_gcov_ctr.93, align 8
  %75 = add i64 %gcov_ctr.i98, 1
  store i64 %75, ptr @__llvm_gcov_ctr.93, align 8
  %76 = ptrtoint ptr %37 to i32, !dbg !944
  call void @__asan_load4_noabort(i32 %76), !dbg !944
  %77 = load volatile ptr, ptr %37, align 4, !dbg !944
  %tobool.not.i99.not = icmp eq ptr %77, null, !dbg !946
  br i1 %tobool.not.i99.not, label %lor.lhs.false37.if.then40_crit_edge, label %if.end41, !dbg !947

lor.lhs.false37.if.then40_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #18, !dbg !947
  br label %if.then40, !dbg !947

if.then40:                                        ; preds = %lor.lhs.false37.if.then40_crit_edge, %perf_call_bpf_enter.exit.if.then40_crit_edge
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 8), align 16, !dbg !948
  %78 = add i64 %gcov_ctr57, 1, !dbg !948
  store i64 %78, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 8), align 16, !dbg !948
  %79 = ptrtoint ptr %rctx to i32, !dbg !948
  call void @__asan_load4_noabort(i32 %79), !dbg !948
  %80 = load i32, ptr %rctx, align 4, !dbg !948
  call void @perf_swevent_put_recursion_context(i32 noundef %80) #19, !dbg !949
  br label %cleanup, !dbg !950

if.end41:                                         ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #18, !dbg !951
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 9), align 8, !dbg !951
  %81 = add i64 %gcov_ctr58, 1, !dbg !951
  store i64 %81, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 9), align 8, !dbg !951
  %82 = ptrtoint ptr %rctx to i32, !dbg !952
  call void @__asan_load4_noabort(i32 %82), !dbg !952
  %83 = load i32, ptr %rctx, align 4, !dbg !952
  %84 = ptrtoint ptr %enter_event to i32, !dbg !953
  call void @__asan_load4_noabort(i32 %84), !dbg !953
  %85 = load ptr, ptr %enter_event, align 4, !dbg !953
  %type = getelementptr inbounds %struct.trace_event_call, ptr %85, i32 0, i32 3, i32 2, !dbg !954
  %86 = ptrtoint ptr %type to i32, !dbg !954
  call void @__asan_load4_noabort(i32 %86), !dbg !954
  %87 = load i32, ptr %type, align 4, !dbg !954
  %conv = trunc i32 %87 to i16, !dbg !955
  %gcov_ctr.i101 = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %88 = add i64 %gcov_ctr.i101, 1
  store i64 %88, ptr @__llvm_gcov_ctr.95, align 8
  call void @perf_tp_event(i16 noundef zeroext %conv, i64 noundef 1, ptr noundef nonnull %call22, i32 noundef %sub, ptr noundef %regs, ptr noundef %37, i32 noundef %83, ptr noundef null) #19, !dbg !956
  br label %cleanup, !dbg !959

cleanup:                                          ; preds = %if.end41, %if.then40, %if.then24, %if.then17, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #19, !dbg !959
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args), !dbg !959
  ret void, !dbg !959
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_swevent_put_recursion_context(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_call_bpf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_tp_event(i16 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftrace_syscall_exit(ptr noundef %data, ptr nocapture noundef readonly %regs, i32 noundef %ret) #2 align 64 !dbg !960 {
entry:
  %buffer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !961
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #19, !dbg !962
  %0 = ptrtoint ptr %buffer to i32, !dbg !963
  call void @__asan_store4_noabort(i32 %0), !dbg !963
  store ptr inttoptr (i32 -1 to ptr), ptr %buffer, align 4, !dbg !963, !annotation !657
  %gcov_ctr.i68 = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !964
  %1 = add i64 %gcov_ctr.i68, 1, !dbg !964
  store i64 %1, ptr @__llvm_gcov_ctr.71, align 8, !dbg !964
  %2 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !964
  %and.i69 = and i32 %2, -16384, !dbg !966
  %3 = inttoptr i32 %and.i69 to ptr, !dbg !967
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2, !dbg !968
  %4 = ptrtoint ptr %task to i32, !dbg !968
  call void @__asan_load4_noabort(i32 %4), !dbg !968
  %5 = load ptr, ptr %task, align 8, !dbg !968
  %gcov_ctr.i70 = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %6 = add i64 %gcov_ctr.i70, 1
  store i64 %6, ptr @__llvm_gcov_ctr.70, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.76, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1, !dbg !969
  %8 = ptrtoint ptr %stack.i.i to i32, !dbg !969
  call void @__asan_load4_noabort(i32 %8), !dbg !969
  %9 = load ptr, ptr %stack.i.i, align 4, !dbg !969
  %abi_syscall.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 6, !dbg !972
  %10 = ptrtoint ptr %abi_syscall.i.i to i32, !dbg !972
  call void @__asan_load4_noabort(i32 %10), !dbg !972
  %11 = load i32, ptr %abi_syscall.i.i, align 4, !dbg !972
  %and.i.i = and i32 %11, 1048575, !dbg !973
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.101, align 16, !dbg !974
  %12 = add i64 %gcov_ctr, 1, !dbg !974
  store i64 %12, ptr @__llvm_gcov_ctr.101, align 16, !dbg !974
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %and.i.i), !dbg !975
  %cmp3 = icmp ugt i32 %and.i.i, 451, !dbg !975
  br i1 %cmp3, label %if.then, label %if.end, !dbg !976

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !977
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 1), align 8
  %13 = add i64 %gcov_ctr43, 1
  store i64 %13, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 1), align 8
  br label %cleanup, !dbg !978

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.trace_array, ptr %data, i32 0, i32 16, i32 %and.i.i, !dbg !979
  %14 = ptrtoint ptr %arrayidx to i32, !dbg !979
  call void @__asan_load4_noabort(i32 %14), !dbg !979
  %15 = load volatile ptr, ptr %arrayidx, align 4, !dbg !979
  %call5 = tail call i32 @rcu_read_lock_sched_held() #19, !dbg !979
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !979
  %tobool.not = icmp eq i32 %call5, 0, !dbg !979
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end13_crit_edge, !dbg !979

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !979
  br label %do.end13, !dbg !979

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 2), align 16, !dbg !979
  %16 = add i64 %gcov_ctr44, 1, !dbg !979
  store i64 %16, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 2), align 16, !dbg !979
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #19, !dbg !979
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6), !dbg !979
  %tobool7.not = icmp eq i32 %call6, 0, !dbg !979
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8, !dbg !979

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18, !dbg !979
  br label %do.end13, !dbg !979

land.lhs.true8:                                   ; preds = %land.lhs.true
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 3), align 8, !dbg !979
  %17 = add i64 %gcov_ctr45, 1, !dbg !979
  store i64 %17, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 3), align 8, !dbg !979
  %.b67 = load i1, ptr @ftrace_syscall_exit.__warned, align 1, !dbg !979
  br i1 %.b67, label %land.lhs.true8.do.end13_crit_edge, label %if.then10, !dbg !979

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18, !dbg !979
  br label %do.end13, !dbg !979

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18, !dbg !979
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 4), align 16, !dbg !979
  %18 = add i64 %gcov_ctr46, 1, !dbg !979
  store i64 %18, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 4), align 16, !dbg !979
  store i1 true, ptr @ftrace_syscall_exit.__warned, align 1, !dbg !979
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 356, ptr noundef nonnull @.str.31) #19, !dbg !979
  br label %do.end13, !dbg !979

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %15, null, !dbg !980
  br i1 %tobool15.not, label %if.then16, label %if.end17, !dbg !981

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #18, !dbg !977
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 5), align 8
  %19 = add i64 %gcov_ctr47, 1
  store i64 %19, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 5), align 8
  br label %cleanup, !dbg !982

if.end17:                                         ; preds = %do.end13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %15, i32 0, i32 7, !dbg !983
  %20 = ptrtoint ptr %flags.i to i32, !dbg !983
  call void @__asan_load4_noabort(i32 %20), !dbg !983
  %21 = load i32, ptr %flags.i, align 4, !dbg !983
  %and.i = and i32 %21, 704, !dbg !985
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !985
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !985
  br i1 %tobool.not.i, label %if.end17.if.end20.sink.split_crit_edge, label %if.end.i, !dbg !985, !prof !168

if.end17.if.end20.sink.split_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18, !dbg !985
  br label %if.end20.sink.split, !dbg !985

if.end.i:                                         ; preds = %if.end17
  %and4.i = and i32 %21, 256, !dbg !986
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i), !dbg !986
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !986
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end20.sink.split_crit_edge, !dbg !986, !prof !690

if.end.i.if.end20.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18, !dbg !986
  br label %if.end20.sink.split, !dbg !986

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !987
  %22 = add i64 %gcov_ctr14.i, 1, !dbg !987
  store i64 %22, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !987
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef nonnull %15) #19, !dbg !988
  br i1 %call.i, label %if.then19, label %trace_trigger_soft_disabled.exit.if.end20_crit_edge, !dbg !989

trace_trigger_soft_disabled.exit.if.end20_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !989
  br label %if.end20, !dbg !989

if.then19:                                        ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !977
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 6), align 16
  %23 = add i64 %gcov_ctr48, 1
  store i64 %23, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 6), align 16
  br label %cleanup, !dbg !990

if.end20.sink.split:                              ; preds = %if.end.i.if.end20.sink.split_crit_edge, %if.end17.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.72, %if.end17.if.end20.sink.split_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), %if.end.i.if.end20.sink.split_crit_edge ]
  %24 = ptrtoint ptr %.sink to i32, !dbg !991
  call void @__asan_load8_noabort(i32 %24), !dbg !991
  %gcov_ctr15.i = load i64, ptr %.sink, align 16, !dbg !991
  %25 = add i64 %gcov_ctr15.i, 1, !dbg !991
  store i64 %25, ptr %.sink, align 16, !dbg !991
  br label %if.end20, !dbg !992

if.end20:                                         ; preds = %if.end20.sink.split, %trace_trigger_soft_disabled.exit.if.end20_crit_edge
  %26 = load ptr, ptr @syscalls_metadata, align 4, !dbg !992
  %tobool.not.i71 = icmp eq ptr %26, null, !dbg !992
  br i1 %tobool.not.i71, label %syscall_nr_to_meta.exit.thread, label %syscall_nr_to_meta.exit, !dbg !994

syscall_nr_to_meta.exit.thread:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18, !dbg !995
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !995
  %27 = add i64 %gcov_ctr5.i, 1, !dbg !995
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !995
  br label %if.then23, !dbg !996

syscall_nr_to_meta.exit:                          ; preds = %if.end20
  %gcov_ctr.i72 = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !997
  %28 = add i64 %gcov_ctr.i72, 1, !dbg !997
  store i64 %28, ptr @__llvm_gcov_ctr.36, align 16, !dbg !997
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !998
  %29 = add i64 %gcov_ctr3.i, 1, !dbg !998
  store i64 %29, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !998
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !999
  %30 = add i64 %gcov_ctr4.i, 1, !dbg !999
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !999
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %and.i.i, !dbg !999
  %31 = ptrtoint ptr %arrayidx.i to i32, !dbg !999
  call void @__asan_load4_noabort(i32 %31), !dbg !999
  %32 = load ptr, ptr %arrayidx.i, align 4, !dbg !999
  %tobool22.not = icmp eq ptr %32, null, !dbg !1000
  br i1 %tobool22.not, label %syscall_nr_to_meta.exit.if.then23_crit_edge, label %if.end24, !dbg !996

syscall_nr_to_meta.exit.if.then23_crit_edge:      ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !996
  br label %if.then23, !dbg !996

if.then23:                                        ; preds = %syscall_nr_to_meta.exit.if.then23_crit_edge, %syscall_nr_to_meta.exit.thread
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 7), align 8
  %33 = add i64 %gcov_ctr49, 1
  store i64 %33, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 7), align 8
  br label %cleanup, !dbg !1001

if.end24:                                         ; preds = %syscall_nr_to_meta.exit
  %gcov_ctr.i76 = load i64, ptr @__llvm_gcov_ctr.73, align 8, !dbg !1002
  %34 = add i64 %gcov_ctr.i76, 1, !dbg !1002
  store i64 %34, ptr @__llvm_gcov_ctr.73, align 8, !dbg !1002
  %gcov_ctr.i.i77 = load i64, ptr @__llvm_gcov_ctr.77, align 8
  %35 = add i64 %gcov_ctr.i.i77, 1
  store i64 %35, ptr @__llvm_gcov_ctr.77, align 8
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !dbg !1004, !srcloc !716
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %37 = add i64 %gcov_ctr.i2.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.78, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %38 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.79, align 8
  %and.i.i.i = lshr i32 %36, 7, !dbg !1006
  %and.i.lobit.i.i = and i32 %and.i.i.i, 1, !dbg !1006
  %call2.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i) #19, !dbg !1008
  %exit_event = getelementptr inbounds %struct.syscall_metadata, ptr %32, i32 0, i32 7, !dbg !1009
  %39 = ptrtoint ptr %exit_event to i32, !dbg !1009
  call void @__asan_load4_noabort(i32 %39), !dbg !1009
  %40 = load ptr, ptr %exit_event, align 4, !dbg !1009
  %type = getelementptr inbounds %struct.trace_event_call, ptr %40, i32 0, i32 3, i32 2, !dbg !1010
  %41 = ptrtoint ptr %type to i32, !dbg !1010
  call void @__asan_load4_noabort(i32 %41), !dbg !1010
  %42 = load i32, ptr %type, align 4, !dbg !1010
  %call27 = call ptr @trace_event_buffer_lock_reserve(ptr noundef nonnull %buffer, ptr noundef nonnull %15, i32 noundef %42, i32 noundef 16, i32 noundef %call2.i.i) #19, !dbg !1011
  %tobool28.not = icmp eq ptr %call27, null, !dbg !1012
  br i1 %tobool28.not, label %if.then29, label %if.end30, !dbg !1013

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !977
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 8), align 16
  %43 = add i64 %gcov_ctr50, 1
  store i64 %43, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 8), align 16
  br label %cleanup, !dbg !1014

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1015
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 9), align 8, !dbg !1015
  %44 = add i64 %gcov_ctr51, 1, !dbg !1015
  store i64 %44, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.101, i32 0, i32 9), align 8, !dbg !1015
  %call31 = call ptr @ring_buffer_event_data(ptr noundef nonnull %call27) #19, !dbg !1016
  %nr = getelementptr inbounds %struct.syscall_trace_exit, ptr %call31, i32 0, i32 1, !dbg !1017
  %45 = ptrtoint ptr %nr to i32, !dbg !1018
  call void @__asan_store4_noabort(i32 %45), !dbg !1018
  store i32 %and.i.i, ptr %nr, align 4, !dbg !1018
  %gcov_ctr.i78 = load i64, ptr @__llvm_gcov_ctr.102, align 8
  %46 = add i64 %gcov_ctr.i78, 1
  store i64 %46, ptr @__llvm_gcov_ctr.102, align 8
  %47 = ptrtoint ptr %regs to i32, !dbg !1019
  call void @__asan_load4_noabort(i32 %47), !dbg !1019
  %48 = load i32, ptr %regs, align 4, !dbg !1019
  %ret35 = getelementptr inbounds %struct.syscall_trace_exit, ptr %call31, i32 0, i32 2, !dbg !1022
  %49 = ptrtoint ptr %ret35 to i32, !dbg !1023
  call void @__asan_store4_noabort(i32 %49), !dbg !1023
  store i32 %48, ptr %ret35, align 4, !dbg !1023
  %50 = ptrtoint ptr %buffer to i32, !dbg !1024
  call void @__asan_load4_noabort(i32 %50), !dbg !1024
  %51 = load ptr, ptr %buffer, align 4, !dbg !1024
  call fastcc void @event_trigger_unlock_commit(ptr noundef nonnull %15, ptr noundef %51, ptr noundef nonnull %call27, ptr noundef %call31, i32 noundef %call2.i.i), !dbg !1025
  br label %cleanup, !dbg !1026

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then23, %if.then19, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #19, !dbg !1026
  ret void, !dbg !1026
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_syscall_exit(ptr nocapture noundef readnone %ignore, ptr noundef %regs, i32 noundef %ret) #2 align 64 !dbg !1027 {
entry:
  %param.i = alloca %struct.syscall_tp_t.100, align 8
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1028
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #19, !dbg !1029
  %0 = ptrtoint ptr %rctx to i32, !dbg !1030
  call void @__asan_store4_noabort(i32 %0), !dbg !1030
  store i32 -1, ptr %rctx, align 4, !dbg !1030, !annotation !657
  %gcov_ctr.i74 = load i64, ptr @__llvm_gcov_ctr.71, align 8, !dbg !1031
  %1 = add i64 %gcov_ctr.i74, 1, !dbg !1031
  store i64 %1, ptr @__llvm_gcov_ctr.71, align 8, !dbg !1031
  %2 = tail call i32 @llvm.read_register.i32(metadata !106) #19, !dbg !1031
  %and.i75 = and i32 %2, -16384, !dbg !1033
  %3 = inttoptr i32 %and.i75 to ptr, !dbg !1034
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2, !dbg !1035
  %4 = ptrtoint ptr %task to i32, !dbg !1035
  call void @__asan_load4_noabort(i32 %4), !dbg !1035
  %5 = load ptr, ptr %task, align 8, !dbg !1035
  %gcov_ctr.i76 = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %6 = add i64 %gcov_ctr.i76, 1
  store i64 %6, ptr @__llvm_gcov_ctr.70, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.76, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1, !dbg !1036
  %8 = ptrtoint ptr %stack.i.i to i32, !dbg !1036
  call void @__asan_load4_noabort(i32 %8), !dbg !1036
  %9 = load ptr, ptr %stack.i.i, align 4, !dbg !1036
  %abi_syscall.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 6, !dbg !1039
  %10 = ptrtoint ptr %abi_syscall.i.i to i32, !dbg !1039
  call void @__asan_load4_noabort(i32 %10), !dbg !1039
  %11 = load i32, ptr %abi_syscall.i.i, align 4, !dbg !1039
  %and.i.i = and i32 %11, 1048575, !dbg !1040
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.104, align 16, !dbg !1041
  %12 = add i64 %gcov_ctr, 1, !dbg !1041
  store i64 %12, ptr @__llvm_gcov_ctr.104, align 16, !dbg !1041
  call void @__sanitizer_cov_trace_const_cmp4(i32 451, i32 %and.i.i), !dbg !1042
  %cmp2 = icmp ugt i32 %and.i.i, 451, !dbg !1042
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1043

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1044
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 1), align 8
  %13 = add i64 %gcov_ctr44, 1
  store i64 %13, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 1), align 8
  br label %cleanup, !dbg !1045

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.91, align 8
  %14 = add i64 %gcov_ctr.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.91, align 8
  %div3.i = lshr i32 %and.i.i, 5, !dbg !1046
  %arrayidx.i = getelementptr i32, ptr @enabled_perf_exit_syscalls, i32 %div3.i, !dbg !1048
  %15 = ptrtoint ptr %arrayidx.i to i32, !dbg !1048
  call void @__asan_load4_noabort(i32 %15), !dbg !1048
  %16 = load volatile i32, ptr %arrayidx.i, align 4, !dbg !1048
  %and.i = and i32 %11, 31, !dbg !1049
  %17 = shl nuw i32 1, %and.i, !dbg !1050
  %18 = and i32 %16, %17, !dbg !1050
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18), !dbg !1050
  %tobool.not = icmp eq i32 %18, 0, !dbg !1050
  br i1 %tobool.not, label %if.then4, label %if.end5, !dbg !1051

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1044
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 2), align 16
  %19 = add i64 %gcov_ctr45, 1
  store i64 %19, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 2), align 16
  br label %cleanup, !dbg !1052

if.end5:                                          ; preds = %if.end
  %20 = load ptr, ptr @syscalls_metadata, align 4, !dbg !1053
  %tobool.not.i = icmp eq ptr %20, null, !dbg !1053
  br i1 %tobool.not.i, label %syscall_nr_to_meta.exit.thread, label %syscall_nr_to_meta.exit, !dbg !1055

syscall_nr_to_meta.exit.thread:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1056
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !1056
  %21 = add i64 %gcov_ctr5.i, 1, !dbg !1056
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !1056
  br label %if.then8, !dbg !1057

syscall_nr_to_meta.exit:                          ; preds = %if.end5
  %gcov_ctr.i77 = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !1058
  %22 = add i64 %gcov_ctr.i77, 1, !dbg !1058
  store i64 %22, ptr @__llvm_gcov_ctr.36, align 16, !dbg !1058
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !1059
  %23 = add i64 %gcov_ctr3.i, 1, !dbg !1059
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !1059
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !1060
  %24 = add i64 %gcov_ctr4.i, 1, !dbg !1060
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !1060
  %arrayidx.i78 = getelementptr ptr, ptr %20, i32 %and.i.i, !dbg !1060
  %25 = ptrtoint ptr %arrayidx.i78 to i32, !dbg !1060
  call void @__asan_load4_noabort(i32 %25), !dbg !1060
  %26 = load ptr, ptr %arrayidx.i78, align 4, !dbg !1060
  %tobool7.not = icmp eq ptr %26, null, !dbg !1061
  br i1 %tobool7.not, label %syscall_nr_to_meta.exit.if.then8_crit_edge, label %do.body, !dbg !1057

syscall_nr_to_meta.exit.if.then8_crit_edge:       ; preds = %syscall_nr_to_meta.exit
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1057
  br label %if.then8, !dbg !1057

if.then8:                                         ; preds = %syscall_nr_to_meta.exit.if.then8_crit_edge, %syscall_nr_to_meta.exit.thread
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 3), align 8
  %27 = add i64 %gcov_ctr46, 1
  store i64 %27, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 3), align 8
  br label %cleanup, !dbg !1062

do.body:                                          ; preds = %syscall_nr_to_meta.exit
  %exit_event = getelementptr inbounds %struct.syscall_metadata, ptr %26, i32 0, i32 7, !dbg !1063
  %28 = ptrtoint ptr %exit_event to i32, !dbg !1063
  call void @__asan_load4_noabort(i32 %28), !dbg !1063
  %29 = load ptr, ptr %exit_event, align 4, !dbg !1063
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %29, i32 0, i32 10, !dbg !1063
  %30 = ptrtoint ptr %perf_events to i32, !dbg !1063
  call void @__asan_load4_noabort(i32 %30), !dbg !1063
  %31 = load ptr, ptr %perf_events, align 4, !dbg !1063
  %32 = ptrtoint ptr %31 to i32, !dbg !1063
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3, !dbg !1063
  %33 = ptrtoint ptr %cpu to i32, !dbg !1063
  call void @__asan_load4_noabort(i32 %33), !dbg !1063
  %34 = load i32, ptr %cpu, align 4, !dbg !1063
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34, !dbg !1063
  %35 = ptrtoint ptr %arrayidx to i32, !dbg !1063
  call void @__asan_load4_noabort(i32 %35), !dbg !1063
  %36 = load i32, ptr %arrayidx, align 4, !dbg !1063
  %add = add i32 %36, %32, !dbg !1063
  %37 = inttoptr i32 %add to ptr, !dbg !1063
  %gcov_ctr.i79 = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %38 = add i64 %gcov_ctr.i79, 1
  store i64 %38, ptr @__llvm_gcov_ctr.92, align 8
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %29, i32 0, i32 11, !dbg !1064
  %39 = ptrtoint ptr %prog_array.i to i32, !dbg !1064
  call void @__asan_load4_noabort(i32 %39), !dbg !1064
  %40 = load volatile ptr, ptr %prog_array.i, align 4, !dbg !1064
  %tobool.i.not = icmp eq ptr %40, null, !dbg !1066
  br i1 %tobool.i.not, label %land.lhs.true, label %do.body.if.end18_crit_edge, !dbg !1067

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1067
  br label %if.end18, !dbg !1067

land.lhs.true:                                    ; preds = %do.body
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 4), align 16, !dbg !1068
  %41 = add i64 %gcov_ctr47, 1, !dbg !1068
  store i64 %41, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 4), align 16, !dbg !1068
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.93, align 8
  %42 = add i64 %gcov_ctr.i80, 1
  store i64 %42, ptr @__llvm_gcov_ctr.93, align 8
  %43 = ptrtoint ptr %37 to i32, !dbg !1069
  call void @__asan_load4_noabort(i32 %43), !dbg !1069
  %44 = load volatile ptr, ptr %37, align 4, !dbg !1069
  %tobool.not.i81.not = icmp eq ptr %44, null, !dbg !1071
  br i1 %tobool.not.i81.not, label %if.then17, label %land.lhs.true.if.end18_crit_edge, !dbg !1072

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1072
  br label %if.end18, !dbg !1072

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1044
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 5), align 8
  %45 = add i64 %gcov_ctr48, 1
  store i64 %45, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 5), align 8
  br label %cleanup, !dbg !1073

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %call19 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef null, ptr noundef nonnull %rctx) #19, !dbg !1074
  %tobool20.not = icmp eq ptr %call19, null, !dbg !1075
  br i1 %tobool20.not, label %if.then21, label %if.end22, !dbg !1076

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1044
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 6), align 16
  %46 = add i64 %gcov_ctr49, 1
  store i64 %46, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 6), align 16
  br label %cleanup, !dbg !1077

if.end22:                                         ; preds = %if.end18
  %nr = getelementptr inbounds %struct.syscall_trace_exit, ptr %call19, i32 0, i32 1, !dbg !1078
  %47 = ptrtoint ptr %nr to i32, !dbg !1079
  call void @__asan_store4_noabort(i32 %47), !dbg !1079
  store i32 %and.i.i, ptr %nr, align 4, !dbg !1079
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.102, align 8
  %48 = add i64 %gcov_ctr.i82, 1
  store i64 %48, ptr @__llvm_gcov_ctr.102, align 8
  %49 = ptrtoint ptr %regs to i32, !dbg !1080
  call void @__asan_load4_noabort(i32 %49), !dbg !1080
  %50 = load i32, ptr %regs, align 4, !dbg !1080
  %ret26 = getelementptr inbounds %struct.syscall_trace_exit, ptr %call19, i32 0, i32 2, !dbg !1082
  %51 = ptrtoint ptr %ret26 to i32, !dbg !1083
  call void @__asan_store4_noabort(i32 %51), !dbg !1083
  store i32 %50, ptr %ret26, align 4, !dbg !1083
  br i1 %tobool.i.not, label %if.end22.lor.lhs.false32_crit_edge, label %land.lhs.true28, !dbg !1084

if.end22.lor.lhs.false32_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1084
  br label %lor.lhs.false32, !dbg !1084

land.lhs.true28:                                  ; preds = %if.end22
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 7), align 8, !dbg !1085
  %52 = add i64 %gcov_ctr50, 1, !dbg !1085
  store i64 %52, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 7), align 8, !dbg !1085
  %53 = ptrtoint ptr %exit_event to i32, !dbg !1086
  call void @__asan_load4_noabort(i32 %53), !dbg !1086
  %54 = load ptr, ptr %exit_event, align 4, !dbg !1086
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %55 = add i64 %gcov_ctr.i83, 1
  store i64 %55, ptr @__llvm_gcov_ctr.105, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %param.i) #19, !dbg !1087
  %56 = getelementptr inbounds %struct.syscall_tp_t.100, ptr %param.i, i32 0, i32 1, !dbg !1090
  %57 = getelementptr inbounds %struct.syscall_tp_t.100, ptr %param.i, i32 0, i32 2, !dbg !1090
  %58 = ptrtoint ptr %param.i to i32, !dbg !1090
  call void @__asan_store8_noabort(i32 %58), !dbg !1090
  store i64 -1, ptr %param.i, align 8, !dbg !1090
  store ptr %regs, ptr %param.i, align 8, !dbg !1091
  %59 = ptrtoint ptr %nr to i32, !dbg !1092
  call void @__asan_load4_noabort(i32 %59), !dbg !1092
  %60 = load i32, ptr %nr, align 4, !dbg !1092
  %61 = ptrtoint ptr %56 to i32, !dbg !1093
  call void @__asan_store4_noabort(i32 %61), !dbg !1093
  store i32 %60, ptr %56, align 8, !dbg !1093
  %62 = ptrtoint ptr %ret26 to i32, !dbg !1094
  call void @__asan_load4_noabort(i32 %62), !dbg !1094
  %63 = load i32, ptr %ret26, align 4, !dbg !1094
  %64 = ptrtoint ptr %57 to i32, !dbg !1095
  call void @__asan_store4_noabort(i32 %64), !dbg !1095
  store i32 %63, ptr %57, align 4, !dbg !1095
  %call2.i = call i32 @trace_call_bpf(ptr noundef %54, ptr noundef nonnull %param.i) #19, !dbg !1096
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %param.i) #19, !dbg !1097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i), !dbg !1098
  %tobool31.not = icmp eq i32 %call2.i, 0, !dbg !1098
  br i1 %tobool31.not, label %land.lhs.true28.if.then35_crit_edge, label %land.lhs.true28.lor.lhs.false32_crit_edge, !dbg !1099

land.lhs.true28.lor.lhs.false32_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1099
  br label %lor.lhs.false32, !dbg !1099

land.lhs.true28.if.then35_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1099
  br label %if.then35, !dbg !1099

lor.lhs.false32:                                  ; preds = %land.lhs.true28.lor.lhs.false32_crit_edge, %if.end22.lor.lhs.false32_crit_edge
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.93, align 8
  %65 = add i64 %gcov_ctr.i84, 1
  store i64 %65, ptr @__llvm_gcov_ctr.93, align 8
  %66 = ptrtoint ptr %37 to i32, !dbg !1100
  call void @__asan_load4_noabort(i32 %66), !dbg !1100
  %67 = load volatile ptr, ptr %37, align 4, !dbg !1100
  %tobool.not.i85.not = icmp eq ptr %67, null, !dbg !1102
  br i1 %tobool.not.i85.not, label %lor.lhs.false32.if.then35_crit_edge, label %if.end36, !dbg !1103

lor.lhs.false32.if.then35_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1103
  br label %if.then35, !dbg !1103

if.then35:                                        ; preds = %lor.lhs.false32.if.then35_crit_edge, %land.lhs.true28.if.then35_crit_edge
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 8), align 16, !dbg !1104
  %68 = add i64 %gcov_ctr51, 1, !dbg !1104
  store i64 %68, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 8), align 16, !dbg !1104
  %69 = ptrtoint ptr %rctx to i32, !dbg !1104
  call void @__asan_load4_noabort(i32 %69), !dbg !1104
  %70 = load i32, ptr %rctx, align 4, !dbg !1104
  call void @perf_swevent_put_recursion_context(i32 noundef %70) #19, !dbg !1105
  br label %cleanup, !dbg !1106

if.end36:                                         ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #18, !dbg !1107
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 9), align 8, !dbg !1107
  %71 = add i64 %gcov_ctr52, 1, !dbg !1107
  store i64 %71, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.104, i32 0, i32 9), align 8, !dbg !1107
  %72 = ptrtoint ptr %rctx to i32, !dbg !1108
  call void @__asan_load4_noabort(i32 %72), !dbg !1108
  %73 = load i32, ptr %rctx, align 4, !dbg !1108
  %74 = ptrtoint ptr %exit_event to i32, !dbg !1109
  call void @__asan_load4_noabort(i32 %74), !dbg !1109
  %75 = load ptr, ptr %exit_event, align 4, !dbg !1109
  %type = getelementptr inbounds %struct.trace_event_call, ptr %75, i32 0, i32 3, i32 2, !dbg !1110
  %76 = ptrtoint ptr %type to i32, !dbg !1110
  call void @__asan_load4_noabort(i32 %76), !dbg !1110
  %77 = load i32, ptr %type, align 4, !dbg !1110
  %conv = trunc i32 %77 to i16, !dbg !1111
  %gcov_ctr.i87 = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %78 = add i64 %gcov_ctr.i87, 1
  store i64 %78, ptr @__llvm_gcov_ctr.95, align 8
  call void @perf_tp_event(i16 noundef zeroext %conv, i64 noundef 1, ptr noundef nonnull %call19, i32 noundef 20, ptr noundef %regs, ptr noundef %37, i32 noundef %73, ptr noundef null) #19, !dbg !1112
  br label %cleanup, !dbg !1114

cleanup:                                          ; preds = %if.end36, %if.then35, %if.then21, %if.then17, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #19, !dbg !1114
  ret void, !dbg !1114
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #13 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -1158897881) #19
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #19
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #19
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 71
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #18
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @llvm_gcda_summary_info() #19
  tail call void @llvm_gcda_end_file() #19
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #14 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.36, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.37, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.38, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.39, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.40, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.41, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.42, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.44, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.46, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.47, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.49, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.50, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.51, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.52, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.53, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.54, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.55, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.56, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.57, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.58, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.59, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.60, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.61, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.62, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.63, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.64, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.65, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.66, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.67, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.68, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.69, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.70, align 8
  store i64 0, ptr @__llvm_gcov_ctr.71, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.72, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.73, align 8
  store i64 0, ptr @__llvm_gcov_ctr.74, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.75, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.76, align 8
  store i64 0, ptr @__llvm_gcov_ctr.77, align 8
  store i64 0, ptr @__llvm_gcov_ctr.78, align 8
  store i64 0, ptr @__llvm_gcov_ctr.79, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.80, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.81, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.82, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.83, align 8
  store i64 0, ptr @__llvm_gcov_ctr.84, align 8
  store i64 0, ptr @__llvm_gcov_ctr.85, align 8
  store i64 0, ptr @__llvm_gcov_ctr.86, align 8
  store i64 0, ptr @__llvm_gcov_ctr.87, align 8
  store i64 0, ptr @__llvm_gcov_ctr.88, align 8
  store i64 0, ptr @__llvm_gcov_ctr.89, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.90, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.91, align 8
  store i64 0, ptr @__llvm_gcov_ctr.92, align 8
  store i64 0, ptr @__llvm_gcov_ctr.93, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.94, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.95, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.96, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.97, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.98, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.99, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.100, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.101, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.102, align 8
  store i64 0, ptr @__llvm_gcov_ctr.103, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.104, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.105, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #13 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #19
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 47)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { noinline nounwind uwtable(sync) }
attributes #14 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind uwtable(sync) }
attributes #18 = { nomerge }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { cold }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }
attributes #24 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104}
!llvm.named.register.sp = !{!106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.gcov = !{!115}
!llvm.ident = !{!116}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_syscalls.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @enter_syscall_print_funcs, !3, !"enter_syscall_print_funcs", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_syscalls.c", i32 491, i32 30}
!4 = !{ptr @exit_syscall_print_funcs, !5, !"exit_syscall_print_funcs", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_syscalls.c", i32 495, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_syscalls.c", i32 500, i32 13}
!8 = !{ptr @event_class_syscall_enter, !9, !"event_class_syscall_enter", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_syscalls.c", i32 499, i32 36}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_syscalls.c", i32 511, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/trace/trace_syscalls.c", i32 512, i32 3}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @event_class_syscall_exit, !17, !"event_class_syscall_exit", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_syscalls.c", i32 507, i32 36}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_syscalls.c", i32 536, i32 4}
!20 = !{ptr @syscalls_metadata, !21, !"syscalls_metadata", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_syscalls.c", i32 35, i32 34}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_syscalls.c", i32 145, i32 3}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_syscalls.c", i32 149, i32 22}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_syscalls.c", i32 158, i32 24}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_syscalls.c", i32 161, i32 23}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_syscalls.c", i32 163, i32 32}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_syscalls.c", i32 163, i32 37}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_syscalls.c", i32 193, i32 3}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_syscalls.c", i32 197, i32 22}
!38 = !{ptr @syscall_enter_fields_array, !39, !"syscall_enter_fields_array", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_syscalls.c", i32 484, i32 44}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_syscalls.c", i32 466, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @init_syscall_trace.__UNIQUE_ID_ddebug278, !41, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/trace/trace_syscalls.c", i32 246, i32 21}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/trace/trace_syscalls.c", i32 220, i32 42}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/trace/trace_syscalls.c", i32 222, i32 43}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_syscalls.c", i32 230, i32 5}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/trace/trace_syscalls.c", i32 94, i32 39}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/include/asm/ftrace.h", i32 63, i32 19}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/include/asm/ftrace.h", i32 64, i32 9}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/include/asm/ftrace.h", i32 65, i32 24}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/include/asm/ftrace.h", i32 66, i32 9}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/include/asm/ftrace.h", i32 67, i32 24}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/include/asm/ftrace.h", i32 68, i32 9}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/include/asm/ftrace.h", i32 69, i32 24}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/include/asm/ftrace.h", i32 70, i32 9}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../kernel/trace/trace_syscalls.c", i32 391, i32 6}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/trace/trace_syscalls.c", i32 16, i32 8}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @syscall_trace_lock, !74, !"syscall_trace_lock", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../kernel/trace/trace_syscalls.c", i32 311, i32 15}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../kernel/trace/trace_syscalls.c", i32 411, i32 6}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/trace/trace_syscalls.c", i32 648, i32 3}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @perf_sysenter_enable._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @perf_sysenter_enable._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @sys_perf_refcount_enter, !88, !"sys_perf_refcount_enter", i1 false, i1 false}
!88 = !{!"../kernel/trace/trace_syscalls.c", i32 565, i32 12}
!89 = !{ptr @enabled_perf_enter_syscalls, !90, !"enabled_perf_enter_syscalls", i1 false, i1 false}
!90 = !{!"../kernel/trace/trace_syscalls.c", i32 563, i32 8}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../kernel/trace/trace_syscalls.c", i32 429, i32 6}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../kernel/trace/trace_syscalls.c", i32 356, i32 15}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../kernel/trace/trace_syscalls.c", i32 449, i32 6}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../kernel/trace/trace_syscalls.c", i32 744, i32 3}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @perf_sysexit_enable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @perf_sysexit_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @sys_perf_refcount_exit, !103, !"sys_perf_refcount_exit", i1 false, i1 false}
!103 = !{!"../kernel/trace/trace_syscalls.c", i32 566, i32 12}
!104 = !{ptr @enabled_perf_exit_syscalls, !105, !"enabled_perf_exit_syscalls", i1 false, i1 false}
!105 = !{!"../kernel/trace/trace_syscalls.c", i32 564, i32 8}
!106 = !{!"sp"}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_syscalls.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_syscalls.gcda", !0}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = distinct !DISubprogram(name: "get_syscall_name", scope: !1, file: !1, line: 115, type: !118, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!118 = !DISubroutineType(types: !119)
!119 = !{}
!120 = !DILocation(line: 116, scope: !117)
!121 = !DILocation(line: 109, column: 7, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "syscall_nr_to_meta", scope: !1, file: !1, line: 104, type: !118, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!123 = distinct !DILocation(line: 119, column: 10, scope: !117)
!124 = !DILocation(line: 109, column: 25, scope: !122, inlinedAt: !123)
!125 = !DILocation(line: 109, column: 28, scope: !122, inlinedAt: !123)
!126 = !DILocation(line: 109, column: 31, scope: !122, inlinedAt: !123)
!127 = !DILocation(line: 109, column: 46, scope: !122, inlinedAt: !123)
!128 = !DILocation(line: 109, column: 49, scope: !122, inlinedAt: !123)
!129 = !DILocation(line: 109, column: 52, scope: !122, inlinedAt: !123)
!130 = !DILocation(line: 109, column: 6, scope: !122, inlinedAt: !123)
!131 = !DILocation(line: 110, column: 3, scope: !122, inlinedAt: !123)
!132 = !DILocation(line: 120, column: 6, scope: !117)
!133 = !DILocation(line: 112, column: 9, scope: !122, inlinedAt: !123)
!134 = !DILocation(line: 120, column: 7, scope: !117)
!135 = !DILocation(line: 121, column: 3, scope: !117)
!136 = !DILocation(line: 123, column: 9, scope: !117)
!137 = !DILocation(line: 123, column: 16, scope: !117)
!138 = !DILocation(line: 123, column: 2, scope: !117)
!139 = !DILocation(line: 0, scope: !117)
!140 = !DILocation(line: 124, column: 1, scope: !117)
!141 = distinct !DISubprogram(name: "print_syscall_enter", scope: !1, file: !1, line: 127, type: !118, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!142 = !DILocation(line: 129, scope: !141)
!143 = !DILocation(line: 130, column: 33, scope: !141)
!144 = !DILocation(line: 131, column: 31, scope: !141)
!145 = !DILocation(line: 132, column: 34, scope: !141)
!146 = !DILocation(line: 138, column: 19, scope: !141)
!147 = !DILocation(line: 109, column: 7, scope: !122, inlinedAt: !148)
!148 = distinct !DILocation(line: 139, column: 10, scope: !141)
!149 = !DILocation(line: 109, column: 25, scope: !122, inlinedAt: !148)
!150 = !DILocation(line: 109, column: 28, scope: !122, inlinedAt: !148)
!151 = !DILocation(line: 109, column: 31, scope: !122, inlinedAt: !148)
!152 = !DILocation(line: 109, column: 46, scope: !122, inlinedAt: !148)
!153 = !DILocation(line: 109, column: 49, scope: !122, inlinedAt: !148)
!154 = !DILocation(line: 109, column: 52, scope: !122, inlinedAt: !148)
!155 = !DILocation(line: 109, column: 6, scope: !122, inlinedAt: !148)
!156 = !DILocation(line: 110, column: 3, scope: !122, inlinedAt: !148)
!157 = !DILocation(line: 141, column: 6, scope: !141)
!158 = !DILocation(line: 112, column: 9, scope: !122, inlinedAt: !148)
!159 = !DILocation(line: 141, column: 7, scope: !141)
!160 = !DILocation(line: 142, column: 3, scope: !141)
!161 = !DILocation(line: 144, column: 13, scope: !141)
!162 = !DILocation(line: 144, column: 32, scope: !141)
!163 = !DILocation(line: 144, column: 45, scope: !141)
!164 = !DILocation(line: 144, column: 40, scope: !141)
!165 = !DILocation(line: 144, column: 37, scope: !141)
!166 = !DILocation(line: 144, column: 6, scope: !141)
!167 = !DILocation(line: 145, column: 3, scope: !141)
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !DILocation(line: 146, column: 3, scope: !141)
!170 = !DILocation(line: 149, column: 36, scope: !141)
!171 = !DILocation(line: 149, column: 2, scope: !141)
!172 = !DILocation(line: 151, column: 25, scope: !141)
!173 = !DILocation(line: 151, column: 16, scope: !141)
!174 = !DILocation(line: 151, column: 2, scope: !141)
!175 = !DILocation(line: 69, column: 12, scope: !176, inlinedAt: !178)
!176 = distinct !DISubprogram(name: "trace_seq_has_overflowed", scope: !177, file: !177, line: 67, type: !118, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!177 = !DIFile(filename: "../include/linux/trace_seq.h", directory: "/llk/linux-5.17/build_arm_allyes")
!178 = distinct !DILocation(line: 153, column: 7, scope: !141)
!179 = !DILocation(line: 69, column: 9, scope: !176, inlinedAt: !178)
!180 = !DILocation(line: 69, column: 17, scope: !176, inlinedAt: !178)
!181 = !DILocation(line: 69, column: 44, scope: !176, inlinedAt: !178)
!182 = !DILocation(line: 47, column: 12, scope: !183, inlinedAt: !185)
!183 = distinct !DISubprogram(name: "seq_buf_has_overflowed", scope: !184, file: !184, line: 45, type: !118, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!184 = !DIFile(filename: "../include/linux/seq_buf.h", directory: "/llk/linux-5.17/build_arm_allyes")
!185 = distinct !DILocation(line: 69, column: 20, scope: !176, inlinedAt: !178)
!186 = !DILocation(line: 47, column: 21, scope: !183, inlinedAt: !185)
!187 = !DILocation(line: 47, column: 16, scope: !183, inlinedAt: !185)
!188 = !DILocation(line: 153, column: 7, scope: !141)
!189 = !DILocation(line: 154, column: 4, scope: !141)
!190 = !DILocation(line: 157, column: 7, scope: !141)
!191 = !DILocation(line: 157, column: 11, scope: !141)
!192 = !DILocation(line: 157, column: 23, scope: !141)
!193 = !DILocation(line: 158, column: 21, scope: !141)
!194 = !DILocation(line: 158, column: 38, scope: !141)
!195 = !DILocation(line: 158, column: 31, scope: !141)
!196 = !DILocation(line: 158, column: 4, scope: !141)
!197 = !DILocation(line: 161, column: 43, scope: !141)
!198 = !DILocation(line: 161, column: 36, scope: !141)
!199 = !DILocation(line: 162, column: 6, scope: !141)
!200 = !DILocation(line: 163, column: 18, scope: !141)
!201 = !DILocation(line: 163, column: 26, scope: !141)
!202 = !DILocation(line: 163, column: 8, scope: !141)
!203 = !DILocation(line: 163, column: 6, scope: !141)
!204 = !DILocation(line: 161, column: 3, scope: !141)
!205 = !DILocation(line: 151, column: 35, scope: !141)
!206 = distinct !{!206, !174, !207}
!207 = !DILocation(line: 164, column: 2, scope: !141)
!208 = !DILocation(line: 166, column: 17, scope: !141)
!209 = !DILocation(line: 166, column: 2, scope: !141)
!210 = !DILocation(line: 168, column: 2, scope: !141)
!211 = !DILocation(line: 170, column: 9, scope: !141)
!212 = !DILocation(line: 170, column: 2, scope: !141)
!213 = distinct !DISubprogram(name: "print_syscall_exit", scope: !1, file: !1, line: 174, type: !118, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!214 = !DILocation(line: 176, scope: !213)
!215 = !DILocation(line: 177, column: 31, scope: !213)
!216 = !DILocation(line: 178, column: 34, scope: !213)
!217 = !DILocation(line: 184, column: 19, scope: !213)
!218 = !DILocation(line: 109, column: 7, scope: !122, inlinedAt: !219)
!219 = distinct !DILocation(line: 185, column: 10, scope: !213)
!220 = !DILocation(line: 109, column: 25, scope: !122, inlinedAt: !219)
!221 = !DILocation(line: 109, column: 28, scope: !122, inlinedAt: !219)
!222 = !DILocation(line: 109, column: 31, scope: !122, inlinedAt: !219)
!223 = !DILocation(line: 109, column: 46, scope: !122, inlinedAt: !219)
!224 = !DILocation(line: 109, column: 49, scope: !122, inlinedAt: !219)
!225 = !DILocation(line: 109, column: 52, scope: !122, inlinedAt: !219)
!226 = !DILocation(line: 109, column: 6, scope: !122, inlinedAt: !219)
!227 = !DILocation(line: 110, column: 3, scope: !122, inlinedAt: !219)
!228 = !DILocation(line: 187, column: 6, scope: !213)
!229 = !DILocation(line: 112, column: 9, scope: !122, inlinedAt: !219)
!230 = !DILocation(line: 187, column: 7, scope: !213)
!231 = !DILocation(line: 188, column: 18, scope: !213)
!232 = !DILocation(line: 188, column: 3, scope: !213)
!233 = !DILocation(line: 189, column: 3, scope: !213)
!234 = !DILocation(line: 192, column: 13, scope: !213)
!235 = !DILocation(line: 192, column: 31, scope: !213)
!236 = !DILocation(line: 192, column: 44, scope: !213)
!237 = !DILocation(line: 192, column: 39, scope: !213)
!238 = !DILocation(line: 192, column: 36, scope: !213)
!239 = !DILocation(line: 192, column: 6, scope: !213)
!240 = !DILocation(line: 193, column: 3, scope: !213)
!241 = !DILocation(line: 194, column: 3, scope: !213)
!242 = !DILocation(line: 197, column: 19, scope: !213)
!243 = !DILocation(line: 197, column: 46, scope: !213)
!244 = !DILocation(line: 198, column: 12, scope: !213)
!245 = !DILocation(line: 197, column: 2, scope: !213)
!246 = !DILocation(line: 201, column: 9, scope: !213)
!247 = !DILocation(line: 201, column: 2, scope: !213)
!248 = !DILocation(line: 0, scope: !213)
!249 = !DILocation(line: 202, column: 1, scope: !213)
!250 = distinct !DISubprogram(name: "syscall_enter_register", scope: !1, file: !1, line: 769, type: !118, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!251 = !DILocation(line: 771, scope: !250)
!252 = !DILocation(line: 774, column: 2, scope: !250)
!253 = !DILocation(line: 776, column: 34, scope: !250)
!254 = !DILocation(line: 386, column: 33, scope: !255, inlinedAt: !256)
!255 = distinct !DISubprogram(name: "reg_event_syscall_enter", scope: !1, file: !1, line: 383, type: !118, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!256 = distinct !DILocation(line: 776, column: 10, scope: !250)
!257 = !DILocation(line: 390, column: 42, scope: !255, inlinedAt: !256)
!258 = !DILocation(line: 390, column: 49, scope: !255, inlinedAt: !256)
!259 = !DILocation(line: 391, column: 6, scope: !255, inlinedAt: !256)
!260 = !DILocation(line: 392, column: 3, scope: !255, inlinedAt: !256)
!261 = !DILocation(line: 393, column: 2, scope: !255, inlinedAt: !256)
!262 = !DILocation(line: 394, column: 11, scope: !255, inlinedAt: !256)
!263 = !DILocation(line: 394, column: 7, scope: !255, inlinedAt: !256)
!264 = !DILocation(line: 394, column: 6, scope: !255, inlinedAt: !256)
!265 = !DILocation(line: 395, column: 56, scope: !255, inlinedAt: !256)
!266 = !DILocation(line: 18, column: 1, scope: !267, inlinedAt: !269)
!267 = distinct !DISubprogram(name: "register_trace_sys_enter", scope: !268, file: !268, line: 18, type: !118, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!268 = !DIFile(filename: "../include/trace/events/syscalls.h", directory: "/llk/linux-5.17/build_arm_allyes")
!269 = distinct !DILocation(line: 395, column: 9, scope: !255, inlinedAt: !256)
!270 = !DILocation(line: 396, column: 7, scope: !255, inlinedAt: !256)
!271 = !DILocation(line: 396, column: 6, scope: !255, inlinedAt: !256)
!272 = !DILocation(line: 397, column: 3, scope: !255, inlinedAt: !256)
!273 = !{i64 2155462329}
!274 = !DILocation(line: 398, column: 25, scope: !255, inlinedAt: !256)
!275 = !DILocation(line: 399, column: 2, scope: !255, inlinedAt: !256)
!276 = !DILocation(line: 400, column: 2, scope: !255, inlinedAt: !256)
!277 = !DILocation(line: 401, column: 2, scope: !255, inlinedAt: !256)
!278 = !DILocation(line: 778, column: 29, scope: !250)
!279 = !DILocation(line: 407, column: 33, scope: !280, inlinedAt: !281)
!280 = distinct !DISubprogram(name: "unreg_event_syscall_enter", scope: !1, file: !1, line: 404, type: !118, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!281 = distinct !DILocation(line: 778, column: 3, scope: !250)
!282 = !DILocation(line: 410, column: 42, scope: !280, inlinedAt: !281)
!283 = !DILocation(line: 410, column: 49, scope: !280, inlinedAt: !281)
!284 = !DILocation(line: 411, column: 6, scope: !280, inlinedAt: !281)
!285 = !DILocation(line: 412, column: 3, scope: !280, inlinedAt: !281)
!286 = !DILocation(line: 413, column: 2, scope: !280, inlinedAt: !281)
!287 = !DILocation(line: 414, column: 6, scope: !280, inlinedAt: !281)
!288 = !DILocation(line: 414, column: 24, scope: !280, inlinedAt: !281)
!289 = !DILocation(line: 415, column: 2, scope: !280, inlinedAt: !281)
!290 = !DILocation(line: 416, column: 11, scope: !280, inlinedAt: !281)
!291 = !DILocation(line: 416, column: 7, scope: !280, inlinedAt: !281)
!292 = !DILocation(line: 416, column: 6, scope: !280, inlinedAt: !281)
!293 = !DILocation(line: 417, column: 52, scope: !280, inlinedAt: !281)
!294 = !DILocation(line: 18, column: 1, scope: !295, inlinedAt: !296)
!295 = distinct !DISubprogram(name: "unregister_trace_sys_enter", scope: !268, file: !268, line: 18, type: !118, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!296 = distinct !DILocation(line: 417, column: 3, scope: !280, inlinedAt: !281)
!297 = !DILocation(line: 417, column: 3, scope: !280, inlinedAt: !281)
!298 = !DILocation(line: 418, column: 2, scope: !280, inlinedAt: !281)
!299 = !DILocation(line: 419, column: 1, scope: !280, inlinedAt: !281)
!300 = !DILocation(line: 783, column: 31, scope: !250)
!301 = !DILocation(line: 642, column: 42, scope: !302, inlinedAt: !303)
!302 = distinct !DISubprogram(name: "perf_sysenter_enable", scope: !1, file: !1, line: 637, type: !118, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!303 = distinct !DILocation(line: 783, column: 10, scope: !250)
!304 = !DILocation(line: 642, column: 49, scope: !302, inlinedAt: !303)
!305 = !DILocation(line: 644, column: 2, scope: !302, inlinedAt: !303)
!306 = !DILocation(line: 645, column: 7, scope: !302, inlinedAt: !303)
!307 = !DILocation(line: 645, column: 6, scope: !302, inlinedAt: !303)
!308 = !DILocation(line: 646, column: 9, scope: !302, inlinedAt: !303)
!309 = !DILocation(line: 18, column: 1, scope: !267, inlinedAt: !310)
!310 = distinct !DILocation(line: 646, column: 9, scope: !302, inlinedAt: !303)
!311 = !DILocation(line: 647, column: 6, scope: !302, inlinedAt: !303)
!312 = !DILocation(line: 648, column: 3, scope: !302, inlinedAt: !303)
!313 = !DILocation(line: 649, column: 2, scope: !302, inlinedAt: !303)
!314 = !DILocation(line: 650, column: 3, scope: !302, inlinedAt: !303)
!315 = !DILocation(line: 651, column: 26, scope: !302, inlinedAt: !303)
!316 = !DILocation(line: 653, column: 2, scope: !302, inlinedAt: !303)
!317 = !DILocation(line: 783, column: 3, scope: !250)
!318 = !DILocation(line: 785, column: 25, scope: !250)
!319 = !DILocation(line: 661, column: 42, scope: !320, inlinedAt: !321)
!320 = distinct !DISubprogram(name: "perf_sysenter_disable", scope: !1, file: !1, line: 657, type: !118, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!321 = distinct !DILocation(line: 785, column: 3, scope: !250)
!322 = !DILocation(line: 661, column: 49, scope: !320, inlinedAt: !321)
!323 = !DILocation(line: 663, column: 2, scope: !320, inlinedAt: !321)
!324 = !DILocation(line: 664, column: 25, scope: !320, inlinedAt: !321)
!325 = !DILocation(line: 665, column: 2, scope: !320, inlinedAt: !321)
!326 = !DILocation(line: 666, column: 7, scope: !320, inlinedAt: !321)
!327 = !DILocation(line: 666, column: 6, scope: !320, inlinedAt: !321)
!328 = !DILocation(line: 667, column: 3, scope: !320, inlinedAt: !321)
!329 = !DILocation(line: 18, column: 1, scope: !295, inlinedAt: !330)
!330 = distinct !DILocation(line: 667, column: 3, scope: !320, inlinedAt: !321)
!331 = !DILocation(line: 668, column: 2, scope: !320, inlinedAt: !321)
!332 = !DILocation(line: 786, column: 3, scope: !250)
!333 = !DILocation(line: 791, column: 3, scope: !250)
!334 = !DILocation(line: 794, column: 2, scope: !250)
!335 = !DILocation(line: 0, scope: !250)
!336 = !DILocation(line: 795, column: 1, scope: !250)
!337 = distinct !DISubprogram(name: "syscall_get_enter_fields", scope: !1, file: !1, line: 24, type: !118, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!338 = !DILocation(line: 25, scope: !337)
!339 = !DILocation(line: 26, column: 41, scope: !337)
!340 = !DILocation(line: 28, column: 17, scope: !337)
!341 = !DILocation(line: 28, column: 2, scope: !337)
!342 = distinct !DISubprogram(name: "init_syscall_trace", scope: !1, file: !1, line: 459, type: !118, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!343 = !DILocation(line: 460, scope: !342)
!344 = !DILocation(line: 464, column: 42, scope: !342)
!345 = !DILocation(line: 464, column: 49, scope: !342)
!346 = !DILocation(line: 465, column: 10, scope: !342)
!347 = !DILocation(line: 465, column: 14, scope: !342)
!348 = !DILocation(line: 465, column: 17, scope: !342)
!349 = !DILocation(line: 465, column: 21, scope: !342)
!350 = !DILocation(line: 465, column: 6, scope: !342)
!351 = !DILocation(line: 14, column: 2, scope: !352, inlinedAt: !354)
!352 = distinct !DISubprogram(name: "arch_static_branch", scope: !353, file: !353, line: 12, type: !118, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!353 = !DIFile(filename: "../arch/arm/include/asm/jump_label.h", directory: "/llk/linux-5.17/build_arm_allyes")
!354 = distinct !DILocation(line: 466, column: 3, scope: !342)
!355 = !{i64 2148863403, i64 2148863408, i64 2148863421, i64 2148863465, i64 2148863499, i64 2148863520}
!356 = !DILocation(line: 0, scope: !352, inlinedAt: !354)
!357 = !DILocation(line: 466, column: 3, scope: !342)
!358 = !DILocation(line: 468, column: 3, scope: !342)
!359 = !DILocation(line: 471, column: 6, scope: !342)
!360 = !DILocation(line: 471, column: 34, scope: !342)
!361 = !DILocation(line: 472, column: 3, scope: !342)
!362 = !DILocation(line: 474, column: 7, scope: !342)
!363 = !DILocation(line: 476, column: 9, scope: !342)
!364 = !DILocation(line: 476, column: 6, scope: !342)
!365 = !DILocation(line: 477, column: 26, scope: !342)
!366 = !DILocation(line: 477, column: 3, scope: !342)
!367 = !DILocation(line: 478, column: 3, scope: !342)
!368 = !DILocation(line: 481, column: 9, scope: !342)
!369 = !DILocation(line: 481, column: 2, scope: !342)
!370 = !DILocation(line: 0, scope: !342)
!371 = !DILocation(line: 482, column: 1, scope: !342)
!372 = distinct !DISubprogram(name: "syscall_exit_register", scope: !1, file: !1, line: 797, type: !118, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!373 = !DILocation(line: 799, scope: !372)
!374 = !DILocation(line: 802, column: 2, scope: !372)
!375 = !DILocation(line: 804, column: 33, scope: !372)
!376 = !DILocation(line: 424, column: 33, scope: !377, inlinedAt: !378)
!377 = distinct !DISubprogram(name: "reg_event_syscall_exit", scope: !1, file: !1, line: 421, type: !118, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!378 = distinct !DILocation(line: 804, column: 10, scope: !372)
!379 = !DILocation(line: 428, column: 42, scope: !377, inlinedAt: !378)
!380 = !DILocation(line: 428, column: 49, scope: !377, inlinedAt: !378)
!381 = !DILocation(line: 429, column: 6, scope: !377, inlinedAt: !378)
!382 = !DILocation(line: 430, column: 3, scope: !377, inlinedAt: !378)
!383 = !DILocation(line: 431, column: 2, scope: !377, inlinedAt: !378)
!384 = !DILocation(line: 432, column: 11, scope: !377, inlinedAt: !378)
!385 = !DILocation(line: 432, column: 7, scope: !377, inlinedAt: !378)
!386 = !DILocation(line: 432, column: 6, scope: !377, inlinedAt: !378)
!387 = !DILocation(line: 433, column: 54, scope: !377, inlinedAt: !378)
!388 = !DILocation(line: 44, column: 1, scope: !389, inlinedAt: !390)
!389 = distinct !DISubprogram(name: "register_trace_sys_exit", scope: !268, file: !268, line: 44, type: !118, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!390 = distinct !DILocation(line: 433, column: 9, scope: !377, inlinedAt: !378)
!391 = !DILocation(line: 434, column: 7, scope: !377, inlinedAt: !378)
!392 = !DILocation(line: 434, column: 6, scope: !377, inlinedAt: !378)
!393 = !DILocation(line: 435, column: 3, scope: !377, inlinedAt: !378)
!394 = !{i64 2155476167}
!395 = !DILocation(line: 436, column: 24, scope: !377, inlinedAt: !378)
!396 = !DILocation(line: 437, column: 2, scope: !377, inlinedAt: !378)
!397 = !DILocation(line: 438, column: 2, scope: !377, inlinedAt: !378)
!398 = !DILocation(line: 439, column: 2, scope: !377, inlinedAt: !378)
!399 = !DILocation(line: 806, column: 28, scope: !372)
!400 = !DILocation(line: 445, column: 33, scope: !401, inlinedAt: !402)
!401 = distinct !DISubprogram(name: "unreg_event_syscall_exit", scope: !1, file: !1, line: 442, type: !118, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!402 = distinct !DILocation(line: 806, column: 3, scope: !372)
!403 = !DILocation(line: 448, column: 42, scope: !401, inlinedAt: !402)
!404 = !DILocation(line: 448, column: 49, scope: !401, inlinedAt: !402)
!405 = !DILocation(line: 449, column: 6, scope: !401, inlinedAt: !402)
!406 = !DILocation(line: 450, column: 3, scope: !401, inlinedAt: !402)
!407 = !DILocation(line: 451, column: 2, scope: !401, inlinedAt: !402)
!408 = !DILocation(line: 452, column: 6, scope: !401, inlinedAt: !402)
!409 = !DILocation(line: 452, column: 23, scope: !401, inlinedAt: !402)
!410 = !DILocation(line: 453, column: 2, scope: !401, inlinedAt: !402)
!411 = !DILocation(line: 454, column: 11, scope: !401, inlinedAt: !402)
!412 = !DILocation(line: 454, column: 7, scope: !401, inlinedAt: !402)
!413 = !DILocation(line: 454, column: 6, scope: !401, inlinedAt: !402)
!414 = !DILocation(line: 455, column: 50, scope: !401, inlinedAt: !402)
!415 = !DILocation(line: 44, column: 1, scope: !416, inlinedAt: !417)
!416 = distinct !DISubprogram(name: "unregister_trace_sys_exit", scope: !268, file: !268, line: 44, type: !118, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!417 = distinct !DILocation(line: 455, column: 3, scope: !401, inlinedAt: !402)
!418 = !DILocation(line: 455, column: 3, scope: !401, inlinedAt: !402)
!419 = !DILocation(line: 456, column: 2, scope: !401, inlinedAt: !402)
!420 = !DILocation(line: 457, column: 1, scope: !401, inlinedAt: !402)
!421 = !DILocation(line: 811, column: 30, scope: !372)
!422 = !DILocation(line: 738, column: 42, scope: !423, inlinedAt: !424)
!423 = distinct !DISubprogram(name: "perf_sysexit_enable", scope: !1, file: !1, line: 733, type: !118, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!424 = distinct !DILocation(line: 811, column: 10, scope: !372)
!425 = !DILocation(line: 738, column: 49, scope: !423, inlinedAt: !424)
!426 = !DILocation(line: 740, column: 2, scope: !423, inlinedAt: !424)
!427 = !DILocation(line: 741, column: 7, scope: !423, inlinedAt: !424)
!428 = !DILocation(line: 741, column: 6, scope: !423, inlinedAt: !424)
!429 = !DILocation(line: 742, column: 9, scope: !423, inlinedAt: !424)
!430 = !DILocation(line: 44, column: 1, scope: !389, inlinedAt: !431)
!431 = distinct !DILocation(line: 742, column: 9, scope: !423, inlinedAt: !424)
!432 = !DILocation(line: 743, column: 6, scope: !423, inlinedAt: !424)
!433 = !DILocation(line: 744, column: 3, scope: !423, inlinedAt: !424)
!434 = !DILocation(line: 745, column: 2, scope: !423, inlinedAt: !424)
!435 = !DILocation(line: 746, column: 3, scope: !423, inlinedAt: !424)
!436 = !DILocation(line: 747, column: 25, scope: !423, inlinedAt: !424)
!437 = !DILocation(line: 749, column: 2, scope: !423, inlinedAt: !424)
!438 = !DILocation(line: 811, column: 3, scope: !372)
!439 = !DILocation(line: 813, column: 24, scope: !372)
!440 = !DILocation(line: 757, column: 42, scope: !441, inlinedAt: !442)
!441 = distinct !DISubprogram(name: "perf_sysexit_disable", scope: !1, file: !1, line: 753, type: !118, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!442 = distinct !DILocation(line: 813, column: 3, scope: !372)
!443 = !DILocation(line: 757, column: 49, scope: !441, inlinedAt: !442)
!444 = !DILocation(line: 759, column: 2, scope: !441, inlinedAt: !442)
!445 = !DILocation(line: 760, column: 24, scope: !441, inlinedAt: !442)
!446 = !DILocation(line: 761, column: 2, scope: !441, inlinedAt: !442)
!447 = !DILocation(line: 762, column: 7, scope: !441, inlinedAt: !442)
!448 = !DILocation(line: 762, column: 6, scope: !441, inlinedAt: !442)
!449 = !DILocation(line: 763, column: 3, scope: !441, inlinedAt: !442)
!450 = !DILocation(line: 44, column: 1, scope: !416, inlinedAt: !451)
!451 = distinct !DILocation(line: 763, column: 3, scope: !441, inlinedAt: !442)
!452 = !DILocation(line: 764, column: 2, scope: !441, inlinedAt: !442)
!453 = !DILocation(line: 814, column: 3, scope: !372)
!454 = !DILocation(line: 819, column: 3, scope: !372)
!455 = !DILocation(line: 822, column: 2, scope: !372)
!456 = !DILocation(line: 0, scope: !372)
!457 = !DILocation(line: 823, column: 1, scope: !372)
!458 = distinct !DISubprogram(name: "arch_syscall_addr", scope: !1, file: !1, line: 519, type: !118, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!459 = !DILocation(line: 520, scope: !458)
!460 = !DILocation(line: 521, column: 24, scope: !458)
!461 = !DILocation(line: 521, column: 2, scope: !458)
!462 = distinct !DISubprogram(name: "init_ftrace_syscalls", scope: !1, file: !1, line: 524, type: !118, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!463 = !DILocation(line: 525, scope: !462)
!464 = !DILocation(line: 619, column: 54, scope: !465, inlinedAt: !467)
!465 = distinct !DISubprogram(name: "kmalloc_array", scope: !466, file: !466, line: 613, type: !118, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!466 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!467 = distinct !DILocation(line: 652, column: 9, scope: !468, inlinedAt: !469)
!468 = distinct !DISubprogram(name: "kcalloc", scope: !466, file: !466, line: 650, type: !118, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!469 = distinct !DILocation(line: 532, column: 23, scope: !462)
!470 = !DILocation(line: 620, column: 18, scope: !465, inlinedAt: !467)
!471 = !DILocation(line: 390, column: 26, scope: !472, inlinedAt: !473)
!472 = distinct !DISubprogram(name: "__kmalloc_index", scope: !466, file: !466, line: 369, type: !118, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!473 = distinct !DILocation(line: 576, column: 11, scope: !474, inlinedAt: !475)
!474 = distinct !DISubprogram(name: "kmalloc", scope: !466, file: !466, line: 567, type: !118, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!475 = distinct !DILocation(line: 620, column: 10, scope: !465, inlinedAt: !467)
!476 = !DILocation(line: 582, column: 33, scope: !474, inlinedAt: !475)
!477 = !DILocation(line: 339, column: 3, scope: !478, inlinedAt: !479)
!478 = distinct !DISubprogram(name: "kmalloc_type", scope: !466, file: !466, line: 332, type: !118, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!479 = distinct !DILocation(line: 582, column: 20, scope: !474, inlinedAt: !475)
!480 = !DILocation(line: 582, column: 5, scope: !474, inlinedAt: !475)
!481 = !DILocation(line: 581, column: 10, scope: !474, inlinedAt: !475)
!482 = !DILocation(line: 532, column: 21, scope: !462)
!483 = !DILocation(line: 535, column: 8, scope: !462)
!484 = !DILocation(line: 535, column: 7, scope: !462)
!485 = !DILocation(line: 536, column: 4, scope: !462)
!486 = !DILocation(line: 537, column: 4, scope: !462)
!487 = !DILocation(line: 542, column: 10, scope: !462)
!488 = !DILocation(line: 543, column: 10, scope: !462)
!489 = !DILocation(line: 544, column: 8, scope: !462)
!490 = !DILocation(line: 544, column: 7, scope: !462)
!491 = !DILocation(line: 545, column: 4, scope: !462)
!492 = !DILocation(line: 547, column: 22, scope: !462)
!493 = !DILocation(line: 547, column: 9, scope: !462)
!494 = !DILocation(line: 547, column: 20, scope: !462)
!495 = !DILocation(line: 550, column: 4, scope: !462)
!496 = !DILocation(line: 550, column: 25, scope: !462)
!497 = !DILocation(line: 558, column: 2, scope: !462)
!498 = !DILocation(line: 541, column: 32, scope: !462)
!499 = !DILocation(line: 541, column: 16, scope: !462)
!500 = !DILocation(line: 541, column: 2, scope: !462)
!501 = distinct !{!501, !500, !497}
!502 = !DILocation(line: 559, column: 1, scope: !462)
!503 = distinct !DISubprogram(name: "find_syscall_meta", scope: !1, file: !1, line: 83, type: !118, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!504 = !DILocation(line: 84, scope: !503)
!505 = !DILocation(line: 87, column: 2, scope: !503)
!506 = !DILocation(line: 87, column: 7, scope: !503)
!507 = !DILocation(line: 92, column: 2, scope: !503)
!508 = !DILocation(line: 63, column: 7, scope: !509, inlinedAt: !511)
!509 = distinct !DISubprogram(name: "arch_syscall_match_sym_name", scope: !510, file: !510, line: 60, type: !118, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!510 = !DIFile(filename: "../arch/arm/include/asm/ftrace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!511 = distinct !DILocation(line: 94, column: 6, scope: !503)
!512 = !DILocation(line: 63, column: 6, scope: !509, inlinedAt: !511)
!513 = !DILocation(line: 64, column: 7, scope: !509, inlinedAt: !511)
!514 = !DILocation(line: 64, column: 3, scope: !509, inlinedAt: !511)
!515 = !DILocation(line: 65, column: 12, scope: !509, inlinedAt: !511)
!516 = !DILocation(line: 65, column: 11, scope: !509, inlinedAt: !511)
!517 = !DILocation(line: 66, column: 7, scope: !509, inlinedAt: !511)
!518 = !DILocation(line: 66, column: 3, scope: !509, inlinedAt: !511)
!519 = !DILocation(line: 67, column: 12, scope: !509, inlinedAt: !511)
!520 = !DILocation(line: 67, column: 11, scope: !509, inlinedAt: !511)
!521 = !DILocation(line: 68, column: 7, scope: !509, inlinedAt: !511)
!522 = !DILocation(line: 68, column: 3, scope: !509, inlinedAt: !511)
!523 = !DILocation(line: 69, column: 12, scope: !509, inlinedAt: !511)
!524 = !DILocation(line: 69, column: 11, scope: !509, inlinedAt: !511)
!525 = !DILocation(line: 70, column: 7, scope: !509, inlinedAt: !511)
!526 = !DILocation(line: 70, column: 3, scope: !509, inlinedAt: !511)
!527 = !DILocation(line: 73, column: 10, scope: !509, inlinedAt: !511)
!528 = !DILocation(line: 73, column: 9, scope: !509, inlinedAt: !511)
!529 = !DILocation(line: 94, column: 6, scope: !503)
!530 = !DILocation(line: 98, column: 8, scope: !503)
!531 = !DILocation(line: 98, column: 17, scope: !503)
!532 = !DILocation(line: 98, column: 7, scope: !503)
!533 = !DILocation(line: 98, column: 22, scope: !503)
!534 = !DILocation(line: 98, column: 53, scope: !503)
!535 = !DILocation(line: 98, column: 68, scope: !503)
!536 = !DILocation(line: 63, column: 6, scope: !509, inlinedAt: !537)
!537 = distinct !DILocation(line: 98, column: 25, scope: !503)
!538 = !DILocation(line: 64, column: 7, scope: !509, inlinedAt: !537)
!539 = !DILocation(line: 64, column: 3, scope: !509, inlinedAt: !537)
!540 = !DILocation(line: 65, column: 12, scope: !509, inlinedAt: !537)
!541 = !DILocation(line: 65, column: 11, scope: !509, inlinedAt: !537)
!542 = !DILocation(line: 66, column: 7, scope: !509, inlinedAt: !537)
!543 = !DILocation(line: 66, column: 3, scope: !509, inlinedAt: !537)
!544 = !DILocation(line: 67, column: 12, scope: !509, inlinedAt: !537)
!545 = !DILocation(line: 67, column: 11, scope: !509, inlinedAt: !537)
!546 = !DILocation(line: 68, column: 7, scope: !509, inlinedAt: !537)
!547 = !DILocation(line: 68, column: 3, scope: !509, inlinedAt: !537)
!548 = !DILocation(line: 69, column: 12, scope: !509, inlinedAt: !537)
!549 = !DILocation(line: 69, column: 11, scope: !509, inlinedAt: !537)
!550 = !DILocation(line: 70, column: 7, scope: !509, inlinedAt: !537)
!551 = !DILocation(line: 70, column: 3, scope: !509, inlinedAt: !537)
!552 = !DILocation(line: 73, column: 10, scope: !509, inlinedAt: !537)
!553 = !DILocation(line: 73, column: 9, scope: !509, inlinedAt: !537)
!554 = !DILocation(line: 97, column: 29, scope: !503)
!555 = !DILocation(line: 97, column: 16, scope: !503)
!556 = !DILocation(line: 97, column: 2, scope: !503)
!557 = distinct !{!557, !556, !558}
!558 = !DILocation(line: 100, column: 2, scope: !503)
!559 = !DILocation(line: 0, scope: !503)
!560 = !DILocation(line: 102, column: 1, scope: !503)
!561 = distinct !DISubprogram(name: "syscall_enter_define_fields", scope: !1, file: !1, line: 272, type: !118, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!562 = !DILocation(line: 273, scope: !561)
!563 = !DILocation(line: 275, column: 40, scope: !561)
!564 = !DILocation(line: 280, column: 24, scope: !561)
!565 = !DILocation(line: 280, column: 16, scope: !561)
!566 = !DILocation(line: 280, column: 2, scope: !561)
!567 = !DILocation(line: 281, column: 40, scope: !561)
!568 = !DILocation(line: 281, column: 34, scope: !561)
!569 = !DILocation(line: 282, column: 13, scope: !561)
!570 = !DILocation(line: 282, column: 7, scope: !561)
!571 = !DILocation(line: 281, column: 9, scope: !561)
!572 = !DILocation(line: 285, column: 7, scope: !561)
!573 = !DILocation(line: 286, column: 4, scope: !561)
!574 = !DILocation(line: 287, column: 10, scope: !561)
!575 = !DILocation(line: 280, column: 34, scope: !561)
!576 = distinct !{!576, !566, !577}
!577 = !DILocation(line: 288, column: 2, scope: !561)
!578 = !DILocation(line: 0, scope: !561)
!579 = !DILocation(line: 290, column: 2, scope: !561)
!580 = distinct !DISubprogram(name: "set_syscall_print_fmt", scope: !1, file: !1, line: 239, type: !118, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!581 = !DILocation(line: 240, scope: !580)
!582 = !DILocation(line: 243, column: 41, scope: !580)
!583 = !DILocation(line: 245, column: 13, scope: !580)
!584 = !DILocation(line: 245, column: 25, scope: !580)
!585 = !DILocation(line: 245, column: 6, scope: !580)
!586 = !DILocation(line: 246, column: 3, scope: !580)
!587 = !DILocation(line: 246, column: 9, scope: !580)
!588 = !DILocation(line: 246, column: 19, scope: !580)
!589 = !DILocation(line: 247, column: 3, scope: !580)
!590 = !DILocation(line: 251, column: 8, scope: !580)
!591 = !DILocation(line: 253, column: 26, scope: !580)
!592 = !DILocation(line: 586, column: 19, scope: !474, inlinedAt: !593)
!593 = distinct !DILocation(line: 253, column: 14, scope: !580)
!594 = !DILocation(line: 586, column: 9, scope: !474, inlinedAt: !593)
!595 = !DILocation(line: 254, column: 7, scope: !580)
!596 = !DILocation(line: 254, column: 6, scope: !580)
!597 = !DILocation(line: 255, column: 3, scope: !580)
!598 = !DILocation(line: 258, column: 24, scope: !580)
!599 = !DILocation(line: 258, column: 2, scope: !580)
!600 = !DILocation(line: 259, column: 8, scope: !580)
!601 = !DILocation(line: 259, column: 18, scope: !580)
!602 = !DILocation(line: 261, column: 2, scope: !580)
!603 = !DILocation(line: 0, scope: !580)
!604 = !DILocation(line: 262, column: 1, scope: !580)
!605 = distinct !DISubprogram(name: "free_syscall_print_fmt", scope: !1, file: !1, line: 264, type: !118, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!606 = !DILocation(line: 265, scope: !605)
!607 = !DILocation(line: 266, column: 41, scope: !605)
!608 = !DILocation(line: 268, column: 13, scope: !605)
!609 = !DILocation(line: 268, column: 25, scope: !605)
!610 = !DILocation(line: 268, column: 6, scope: !605)
!611 = !DILocation(line: 269, column: 9, scope: !605)
!612 = !DILocation(line: 269, column: 15, scope: !605)
!613 = !DILocation(line: 269, column: 3, scope: !605)
!614 = !DILocation(line: 270, column: 1, scope: !605)
!615 = distinct !DISubprogram(name: "__set_enter_print_fmt", scope: !1, file: !1, line: 212, type: !118, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!616 = !DILocation(line: 213, scope: !615)
!617 = !DILocation(line: 220, column: 29, scope: !615)
!618 = !DILocation(line: 220, column: 9, scope: !615)
!619 = !DILocation(line: 221, column: 25, scope: !615)
!620 = !DILocation(line: 221, column: 16, scope: !615)
!621 = !DILocation(line: 221, column: 2, scope: !615)
!622 = !DILocation(line: 222, column: 23, scope: !615)
!623 = !DILocation(line: 222, column: 30, scope: !615)
!624 = !DILocation(line: 223, column: 12, scope: !615)
!625 = !DILocation(line: 223, column: 5, scope: !615)
!626 = !DILocation(line: 224, column: 17, scope: !615)
!627 = !DILocation(line: 224, column: 25, scope: !615)
!628 = !DILocation(line: 224, column: 7, scope: !615)
!629 = !DILocation(line: 224, column: 5, scope: !615)
!630 = !DILocation(line: 222, column: 10, scope: !615)
!631 = !DILocation(line: 222, column: 7, scope: !615)
!632 = !DILocation(line: 221, column: 35, scope: !615)
!633 = distinct !{!633, !621, !634}
!634 = !DILocation(line: 225, column: 2, scope: !615)
!635 = !DILocation(line: 0, scope: !615)
!636 = !DILocation(line: 226, column: 22, scope: !615)
!637 = !DILocation(line: 226, column: 29, scope: !615)
!638 = !DILocation(line: 226, column: 9, scope: !615)
!639 = !DILocation(line: 226, column: 6, scope: !615)
!640 = !DILocation(line: 228, column: 25, scope: !615)
!641 = !DILocation(line: 228, column: 16, scope: !615)
!642 = !DILocation(line: 228, column: 2, scope: !615)
!643 = !DILocation(line: 229, column: 23, scope: !615)
!644 = !DILocation(line: 229, column: 30, scope: !615)
!645 = !DILocation(line: 230, column: 44, scope: !615)
!646 = !DILocation(line: 230, column: 37, scope: !615)
!647 = !DILocation(line: 229, column: 10, scope: !615)
!648 = !DILocation(line: 229, column: 7, scope: !615)
!649 = !DILocation(line: 228, column: 35, scope: !615)
!650 = distinct !{!650, !642, !651}
!651 = !DILocation(line: 231, column: 2, scope: !615)
!652 = !DILocation(line: 236, column: 2, scope: !615)
!653 = distinct !DISubprogram(name: "ftrace_syscall_enter", scope: !1, file: !1, line: 293, type: !118, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!654 = !DILocation(line: 294, scope: !653)
!655 = !DILocation(line: 300, column: 2, scope: !653)
!656 = !DILocation(line: 300, column: 23, scope: !653)
!657 = !{!"auto-init"}
!658 = !DILocation(line: 302, column: 2, scope: !653)
!659 = !DILocation(line: 302, column: 16, scope: !653)
!660 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !663)
!661 = distinct !DISubprogram(name: "current_thread_info", scope: !662, file: !662, line: 101, type: !118, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!662 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!663 = distinct !DILocation(line: 306, column: 36, scope: !653)
!664 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !663)
!665 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !663)
!666 = !DILocation(line: 306, column: 36, scope: !653)
!667 = !DILocation(line: 28, column: 9, scope: !668, inlinedAt: !670)
!668 = distinct !DISubprogram(name: "syscall_get_nr", scope: !669, file: !669, line: 22, type: !118, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!669 = !DIFile(filename: "../arch/arm/include/asm/syscall.h", directory: "/llk/linux-5.17/build_arm_allyes")
!670 = distinct !DILocation(line: 78, column: 9, scope: !671, inlinedAt: !672)
!671 = distinct !DISubprogram(name: "trace_get_syscall_nr", scope: !1, file: !1, line: 76, type: !118, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!672 = distinct !DILocation(line: 306, column: 15, scope: !653)
!673 = !DILocation(line: 28, column: 33, scope: !668, inlinedAt: !670)
!674 = !DILocation(line: 28, column: 45, scope: !668, inlinedAt: !670)
!675 = !DILocation(line: 307, column: 24, scope: !653)
!676 = !DILocation(line: 307, column: 35, scope: !653)
!677 = !DILocation(line: 307, column: 6, scope: !653)
!678 = !DILocation(line: 0, scope: !653)
!679 = !DILocation(line: 308, column: 3, scope: !653)
!680 = !DILocation(line: 311, column: 15, scope: !653)
!681 = !DILocation(line: 312, column: 7, scope: !653)
!682 = !DILocation(line: 312, column: 6, scope: !653)
!683 = !DILocation(line: 313, column: 3, scope: !653)
!684 = !DILocation(line: 716, column: 31, scope: !685, inlinedAt: !687)
!685 = distinct !DISubprogram(name: "trace_trigger_soft_disabled", scope: !686, file: !686, line: 714, type: !118, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!686 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!687 = distinct !DILocation(line: 315, column: 6, scope: !653)
!688 = !DILocation(line: 718, column: 6, scope: !685, inlinedAt: !687)
!689 = !DILocation(line: 723, column: 6, scope: !685, inlinedAt: !687)
!690 = !{!"branch_weights", i32 1, i32 2000}
!691 = !DILocation(line: 726, column: 39, scope: !685, inlinedAt: !687)
!692 = !DILocation(line: 726, column: 9, scope: !685, inlinedAt: !687)
!693 = !DILocation(line: 315, column: 6, scope: !653)
!694 = !DILocation(line: 316, column: 3, scope: !653)
!695 = !DILocation(line: 0, scope: !685, inlinedAt: !687)
!696 = !DILocation(line: 109, column: 7, scope: !122, inlinedAt: !697)
!697 = distinct !DILocation(line: 318, column: 13, scope: !653)
!698 = !DILocation(line: 109, column: 25, scope: !122, inlinedAt: !697)
!699 = !DILocation(line: 110, column: 3, scope: !122, inlinedAt: !697)
!700 = !DILocation(line: 319, column: 6, scope: !653)
!701 = !DILocation(line: 109, column: 28, scope: !122, inlinedAt: !697)
!702 = !DILocation(line: 109, column: 49, scope: !122, inlinedAt: !697)
!703 = !DILocation(line: 112, column: 9, scope: !122, inlinedAt: !697)
!704 = !DILocation(line: 319, column: 7, scope: !653)
!705 = !DILocation(line: 320, column: 3, scope: !653)
!706 = !DILocation(line: 322, column: 60, scope: !653)
!707 = !DILocation(line: 322, column: 48, scope: !653)
!708 = !DILocation(line: 322, column: 24, scope: !653)
!709 = !DILocation(line: 189, column: 2, scope: !710, inlinedAt: !711)
!710 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !686, file: !686, line: 185, type: !118, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!711 = distinct !DILocation(line: 324, column: 14, scope: !653)
!712 = !DILocation(line: 159, column: 2, scope: !713, inlinedAt: !715)
!713 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !714, file: !714, line: 156, type: !118, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!714 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!715 = distinct !DILocation(line: 189, column: 2, scope: !710, inlinedAt: !711)
!716 = !{i64 787163}
!717 = !DILocation(line: 181, column: 28, scope: !718, inlinedAt: !719)
!718 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !686, file: !686, line: 179, type: !118, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!719 = distinct !DILocation(line: 190, column: 9, scope: !710, inlinedAt: !711)
!720 = !DILocation(line: 183, column: 9, scope: !718, inlinedAt: !719)
!721 = !DILocation(line: 327, column: 14, scope: !653)
!722 = !DILocation(line: 327, column: 33, scope: !653)
!723 = !DILocation(line: 326, column: 10, scope: !653)
!724 = !DILocation(line: 328, column: 7, scope: !653)
!725 = !DILocation(line: 328, column: 6, scope: !653)
!726 = !DILocation(line: 329, column: 3, scope: !653)
!727 = !DILocation(line: 331, column: 33, scope: !653)
!728 = !DILocation(line: 331, column: 10, scope: !653)
!729 = !DILocation(line: 332, column: 9, scope: !653)
!730 = !DILocation(line: 332, column: 12, scope: !653)
!731 = !DILocation(line: 74, column: 12, scope: !732, inlinedAt: !733)
!732 = distinct !DISubprogram(name: "syscall_get_arguments", scope: !669, file: !669, line: 70, type: !118, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!733 = distinct !DILocation(line: 333, column: 2, scope: !653)
!734 = !DILocation(line: 74, column: 10, scope: !732, inlinedAt: !733)
!735 = !DILocation(line: 77, column: 29, scope: !732, inlinedAt: !733)
!736 = !DILocation(line: 77, column: 2, scope: !732, inlinedAt: !733)
!737 = !DILocation(line: 334, column: 16, scope: !653)
!738 = !DILocation(line: 334, column: 62, scope: !653)
!739 = !DILocation(line: 334, column: 50, scope: !653)
!740 = !DILocation(line: 334, column: 2, scope: !653)
!741 = !DILocation(line: 336, column: 42, scope: !653)
!742 = !DILocation(line: 336, column: 2, scope: !653)
!743 = !DILocation(line: 338, column: 1, scope: !653)
!744 = distinct !DISubprogram(name: "event_trigger_unlock_commit", scope: !745, file: !745, line: 1408, type: !118, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!745 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!746 = !DILocation(line: 1412, scope: !744)
!747 = !DILocation(line: 1368, column: 31, scope: !748, inlinedAt: !749)
!748 = distinct !DISubprogram(name: "__event_trigger_test_discard", scope: !745, file: !745, line: 1362, type: !118, scopeLine: 1367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!749 = distinct !DILocation(line: 1415, column: 7, scope: !744)
!750 = !DILocation(line: 1370, column: 13, scope: !748, inlinedAt: !749)
!751 = !DILocation(line: 1370, column: 6, scope: !748, inlinedAt: !749)
!752 = !DILocation(line: 1371, column: 29, scope: !748, inlinedAt: !749)
!753 = !DILocation(line: 1371, column: 9, scope: !748, inlinedAt: !749)
!754 = !DILocation(line: 1371, column: 3, scope: !748, inlinedAt: !749)
!755 = !DILocation(line: 0, scope: !744)
!756 = !DILocation(line: 1373, column: 6, scope: !748, inlinedAt: !749)
!757 = !DILocation(line: 1378, column: 18, scope: !748, inlinedAt: !749)
!758 = !DILocation(line: 1378, column: 6, scope: !748, inlinedAt: !749)
!759 = !DILocation(line: 1381, column: 18, scope: !748, inlinedAt: !749)
!760 = !DILocation(line: 1381, column: 43, scope: !748, inlinedAt: !749)
!761 = !DILocation(line: 1382, column: 26, scope: !748, inlinedAt: !749)
!762 = !DILocation(line: 1382, column: 32, scope: !748, inlinedAt: !749)
!763 = !DILocation(line: 1382, column: 7, scope: !748, inlinedAt: !749)
!764 = !DILocation(line: 1381, column: 6, scope: !748, inlinedAt: !749)
!765 = !DILocation(line: 1385, column: 13, scope: !748, inlinedAt: !749)
!766 = !DILocation(line: 1385, column: 19, scope: !748, inlinedAt: !749)
!767 = !DILocation(line: 1385, column: 47, scope: !748, inlinedAt: !749)
!768 = !DILocation(line: 1386, column: 34, scope: !748, inlinedAt: !749)
!769 = !DILocation(line: 1386, column: 6, scope: !748, inlinedAt: !749)
!770 = !DILocation(line: 1385, column: 6, scope: !748, inlinedAt: !749)
!771 = !DILocation(line: 0, scope: !748, inlinedAt: !749)
!772 = !DILocation(line: 16, column: 10, scope: !773, inlinedAt: !775)
!773 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !774, file: !774, line: 14, type: !118, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!774 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!775 = distinct !DILocation(line: 54, column: 3, scope: !776, inlinedAt: !777)
!776 = distinct !DISubprogram(name: "__preempt_count_add", scope: !774, file: !774, line: 52, type: !118, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!777 = distinct !DILocation(line: 1338, column: 6, scope: !778, inlinedAt: !779)
!778 = distinct !DISubprogram(name: "__trace_event_discard_commit", scope: !745, file: !745, line: 1335, type: !118, scopeLine: 1337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!779 = distinct !DILocation(line: 1391, column: 2, scope: !748, inlinedAt: !749)
!780 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !781)
!781 = distinct !DILocation(line: 16, column: 10, scope: !773, inlinedAt: !775)
!782 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !781)
!783 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !781)
!784 = !DILocation(line: 16, column: 33, scope: !773, inlinedAt: !775)
!785 = !DILocation(line: 54, column: 23, scope: !776, inlinedAt: !777)
!786 = !DILocation(line: 1338, column: 6, scope: !778, inlinedAt: !779)
!787 = !{i64 2155368008}
!788 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !789)
!789 = distinct !DILocation(line: 1338, column: 6, scope: !778, inlinedAt: !779)
!790 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !789)
!791 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !789)
!792 = !{i64 2155385361}
!793 = !DILocation(line: 16, column: 10, scope: !773, inlinedAt: !794)
!794 = distinct !DILocation(line: 59, column: 3, scope: !795, inlinedAt: !796)
!795 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !774, file: !774, line: 57, type: !118, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!796 = distinct !DILocation(line: 1338, column: 6, scope: !778, inlinedAt: !779)
!797 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !798)
!798 = distinct !DILocation(line: 16, column: 10, scope: !773, inlinedAt: !794)
!799 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !798)
!800 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !798)
!801 = !DILocation(line: 16, column: 33, scope: !773, inlinedAt: !794)
!802 = !DILocation(line: 59, column: 23, scope: !795, inlinedAt: !796)
!803 = !DILocation(line: 1338, column: 42, scope: !778, inlinedAt: !779)
!804 = !DILocation(line: 29, column: 2, scope: !805, inlinedAt: !806)
!805 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !714, file: !714, line: 25, type: !118, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!806 = distinct !DILocation(line: 1340, column: 3, scope: !778, inlinedAt: !779)
!807 = !{i64 784431, i64 784492}
!808 = !DILocation(line: 1340, column: 3, scope: !778, inlinedAt: !779)
!809 = !DILocation(line: 63, column: 34, scope: !810, inlinedAt: !812)
!810 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !811, file: !811, line: 61, type: !118, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!811 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!812 = distinct !DILocation(line: 1340, column: 3, scope: !778, inlinedAt: !779)
!813 = !DILocation(line: 159, column: 2, scope: !713, inlinedAt: !814)
!814 = distinct !DILocation(line: 63, column: 34, scope: !810, inlinedAt: !812)
!815 = !DILocation(line: 181, column: 15, scope: !816, inlinedAt: !817)
!816 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !714, file: !714, line: 179, type: !118, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!817 = distinct !DILocation(line: 63, column: 9, scope: !810, inlinedAt: !812)
!818 = !DILocation(line: 171, column: 2, scope: !819, inlinedAt: !820)
!819 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !714, file: !714, line: 169, type: !118, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!820 = distinct !DILocation(line: 1340, column: 3, scope: !778, inlinedAt: !779)
!821 = !{i64 787448}
!822 = !DILocation(line: 1341, column: 3, scope: !778, inlinedAt: !779)
!823 = !{i64 2155417713}
!824 = !DILocation(line: 16, column: 10, scope: !773, inlinedAt: !825)
!825 = distinct !DILocation(line: 59, column: 3, scope: !795, inlinedAt: !826)
!826 = distinct !DILocation(line: 1341, column: 3, scope: !778, inlinedAt: !779)
!827 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !828)
!828 = distinct !DILocation(line: 16, column: 10, scope: !773, inlinedAt: !825)
!829 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !828)
!830 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !828)
!831 = !DILocation(line: 16, column: 33, scope: !773, inlinedAt: !825)
!832 = !DILocation(line: 59, column: 23, scope: !795, inlinedAt: !826)
!833 = !DILocation(line: 1342, column: 3, scope: !778, inlinedAt: !779)
!834 = !DILocation(line: 1345, column: 29, scope: !778, inlinedAt: !779)
!835 = !DILocation(line: 1345, column: 2, scope: !778, inlinedAt: !779)
!836 = !DILocation(line: 1346, column: 1, scope: !778, inlinedAt: !779)
!837 = !DILocation(line: 1416, column: 30, scope: !744)
!838 = !DILocation(line: 1416, column: 36, scope: !744)
!839 = !DILocation(line: 1326, column: 2, scope: !840, inlinedAt: !841)
!840 = distinct !DISubprogram(name: "trace_buffer_unlock_commit", scope: !745, file: !745, line: 1321, type: !118, scopeLine: 1325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!841 = distinct !DILocation(line: 1416, column: 3, scope: !744)
!842 = !DILocation(line: 1416, column: 3, scope: !744)
!843 = !DILocation(line: 1418, column: 6, scope: !744)
!844 = !DILocation(line: 1419, column: 28, scope: !744)
!845 = !DILocation(line: 1419, column: 3, scope: !744)
!846 = !DILocation(line: 1420, column: 1, scope: !744)
!847 = distinct !DISubprogram(name: "perf_syscall_enter", scope: !1, file: !1, line: 586, type: !118, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!848 = !DILocation(line: 587, scope: !847)
!849 = !DILocation(line: 591, column: 2, scope: !847)
!850 = !DILocation(line: 591, column: 16, scope: !847)
!851 = !DILocation(line: 594, column: 2, scope: !847)
!852 = !DILocation(line: 594, column: 6, scope: !847)
!853 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !854)
!854 = distinct !DILocation(line: 597, column: 36, scope: !847)
!855 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !854)
!856 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !854)
!857 = !DILocation(line: 597, column: 36, scope: !847)
!858 = !DILocation(line: 28, column: 9, scope: !668, inlinedAt: !859)
!859 = distinct !DILocation(line: 78, column: 9, scope: !671, inlinedAt: !860)
!860 = distinct !DILocation(line: 597, column: 15, scope: !847)
!861 = !DILocation(line: 28, column: 33, scope: !668, inlinedAt: !859)
!862 = !DILocation(line: 28, column: 45, scope: !668, inlinedAt: !859)
!863 = !DILocation(line: 598, column: 24, scope: !847)
!864 = !DILocation(line: 598, column: 35, scope: !847)
!865 = !DILocation(line: 598, column: 6, scope: !847)
!866 = !DILocation(line: 0, scope: !847)
!867 = !DILocation(line: 599, column: 3, scope: !847)
!868 = !DILocation(line: 118, column: 21, scope: !869, inlinedAt: !871)
!869 = distinct !DISubprogram(name: "arch_test_bit", scope: !870, file: !870, line: 116, type: !118, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!870 = !DIFile(filename: "../include/asm-generic/bitops/non-atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!871 = distinct !DILocation(line: 600, column: 7, scope: !847)
!872 = !DILocation(line: 118, column: 16, scope: !869, inlinedAt: !871)
!873 = !DILocation(line: 118, column: 42, scope: !869, inlinedAt: !871)
!874 = !DILocation(line: 600, column: 7, scope: !847)
!875 = !DILocation(line: 600, column: 6, scope: !847)
!876 = !DILocation(line: 601, column: 3, scope: !847)
!877 = !DILocation(line: 109, column: 7, scope: !122, inlinedAt: !878)
!878 = distinct !DILocation(line: 603, column: 13, scope: !847)
!879 = !DILocation(line: 109, column: 25, scope: !122, inlinedAt: !878)
!880 = !DILocation(line: 110, column: 3, scope: !122, inlinedAt: !878)
!881 = !DILocation(line: 604, column: 6, scope: !847)
!882 = !DILocation(line: 109, column: 28, scope: !122, inlinedAt: !878)
!883 = !DILocation(line: 109, column: 49, scope: !122, inlinedAt: !878)
!884 = !DILocation(line: 112, column: 9, scope: !122, inlinedAt: !878)
!885 = !DILocation(line: 604, column: 7, scope: !847)
!886 = !DILocation(line: 605, column: 3, scope: !847)
!887 = !DILocation(line: 607, column: 9, scope: !847)
!888 = !DILocation(line: 436, column: 11, scope: !889, inlinedAt: !890)
!889 = distinct !DISubprogram(name: "bpf_prog_array_valid", scope: !686, file: !686, line: 417, type: !118, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!890 = distinct !DILocation(line: 608, column: 21, scope: !847)
!891 = !DILocation(line: 436, column: 10, scope: !889, inlinedAt: !890)
!892 = !DILocation(line: 609, column: 24, scope: !847)
!893 = !DILocation(line: 609, column: 39, scope: !847)
!894 = !DILocation(line: 840, column: 10, scope: !895, inlinedAt: !897)
!895 = distinct !DISubprogram(name: "hlist_empty", scope: !896, file: !896, line: 838, type: !118, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!896 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!897 = distinct !DILocation(line: 609, column: 27, scope: !847)
!898 = !DILocation(line: 840, column: 9, scope: !895, inlinedAt: !897)
!899 = !DILocation(line: 609, column: 6, scope: !847)
!900 = !DILocation(line: 610, column: 3, scope: !847)
!901 = !DILocation(line: 613, column: 43, scope: !847)
!902 = !DILocation(line: 613, column: 31, scope: !847)
!903 = !DILocation(line: 614, column: 9, scope: !847)
!904 = !DILocation(line: 615, column: 7, scope: !847)
!905 = !DILocation(line: 617, column: 8, scope: !847)
!906 = !DILocation(line: 618, column: 7, scope: !847)
!907 = !DILocation(line: 618, column: 6, scope: !847)
!908 = !DILocation(line: 619, column: 3, scope: !847)
!909 = !DILocation(line: 621, column: 7, scope: !847)
!910 = !DILocation(line: 621, column: 10, scope: !847)
!911 = !DILocation(line: 74, column: 12, scope: !732, inlinedAt: !912)
!912 = distinct !DILocation(line: 622, column: 2, scope: !847)
!913 = !DILocation(line: 74, column: 10, scope: !732, inlinedAt: !912)
!914 = !DILocation(line: 77, column: 29, scope: !732, inlinedAt: !912)
!915 = !DILocation(line: 77, column: 2, scope: !732, inlinedAt: !912)
!916 = !DILocation(line: 623, column: 15, scope: !847)
!917 = !DILocation(line: 623, column: 61, scope: !847)
!918 = !DILocation(line: 623, column: 49, scope: !847)
!919 = !DILocation(line: 623, column: 2, scope: !847)
!920 = !DILocation(line: 625, column: 24, scope: !847)
!921 = !DILocation(line: 626, column: 28, scope: !847)
!922 = !DILocation(line: 626, column: 38, scope: !847)
!923 = !DILocation(line: 572, column: 2, scope: !924, inlinedAt: !925)
!924 = distinct !DISubprogram(name: "perf_call_bpf_enter", scope: !1, file: !1, line: 568, type: !118, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!925 = distinct !DILocation(line: 626, column: 8, scope: !847)
!926 = !DILocation(line: 576, column: 4, scope: !924, inlinedAt: !925)
!927 = !DILocation(line: 579, column: 29, scope: !924, inlinedAt: !925)
!928 = !DILocation(line: 580, column: 26, scope: !924, inlinedAt: !925)
!929 = !DILocation(line: 580, column: 8, scope: !924, inlinedAt: !925)
!930 = !DILocation(line: 580, column: 19, scope: !924, inlinedAt: !925)
!931 = !DILocation(line: 581, column: 28, scope: !924, inlinedAt: !925)
!932 = !DILocation(line: 581, column: 16, scope: !924, inlinedAt: !925)
!933 = !DILocation(line: 581, column: 2, scope: !924, inlinedAt: !925)
!934 = !DILocation(line: 582, column: 19, scope: !924, inlinedAt: !925)
!935 = !DILocation(line: 582, column: 3, scope: !924, inlinedAt: !925)
!936 = !DILocation(line: 582, column: 17, scope: !924, inlinedAt: !925)
!937 = !DILocation(line: 581, column: 38, scope: !924, inlinedAt: !925)
!938 = distinct !{!938, !933, !939}
!939 = !DILocation(line: 582, column: 30, scope: !924, inlinedAt: !925)
!940 = !DILocation(line: 583, column: 9, scope: !924, inlinedAt: !925)
!941 = !DILocation(line: 584, column: 1, scope: !924, inlinedAt: !925)
!942 = !DILocation(line: 626, column: 8, scope: !847)
!943 = !DILocation(line: 626, column: 73, scope: !847)
!944 = !DILocation(line: 840, column: 10, scope: !895, inlinedAt: !945)
!945 = distinct !DILocation(line: 627, column: 6, scope: !847)
!946 = !DILocation(line: 840, column: 9, scope: !895, inlinedAt: !945)
!947 = !DILocation(line: 625, column: 6, scope: !847)
!948 = !DILocation(line: 628, column: 38, scope: !847)
!949 = !DILocation(line: 628, column: 3, scope: !847)
!950 = !DILocation(line: 629, column: 3, scope: !847)
!951 = !DILocation(line: 632, column: 24, scope: !847)
!952 = !DILocation(line: 632, column: 35, scope: !847)
!953 = !DILocation(line: 633, column: 20, scope: !847)
!954 = !DILocation(line: 633, column: 39, scope: !847)
!955 = !DILocation(line: 633, column: 10, scope: !847)
!956 = !DILocation(line: 900, column: 2, scope: !957, inlinedAt: !958)
!957 = distinct !DISubprogram(name: "perf_trace_buf_submit", scope: !686, file: !686, line: 896, type: !118, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!958 = distinct !DILocation(line: 632, column: 2, scope: !847)
!959 = !DILocation(line: 635, column: 1, scope: !847)
!960 = distinct !DISubprogram(name: "ftrace_syscall_exit", scope: !1, file: !1, line: 340, type: !118, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!961 = !DILocation(line: 341, scope: !960)
!962 = !DILocation(line: 347, column: 2, scope: !960)
!963 = !DILocation(line: 347, column: 23, scope: !960)
!964 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !965)
!965 = distinct !DILocation(line: 351, column: 36, scope: !960)
!966 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !965)
!967 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !965)
!968 = !DILocation(line: 351, column: 36, scope: !960)
!969 = !DILocation(line: 28, column: 9, scope: !668, inlinedAt: !970)
!970 = distinct !DILocation(line: 78, column: 9, scope: !671, inlinedAt: !971)
!971 = distinct !DILocation(line: 351, column: 15, scope: !960)
!972 = !DILocation(line: 28, column: 33, scope: !668, inlinedAt: !970)
!973 = !DILocation(line: 28, column: 45, scope: !668, inlinedAt: !970)
!974 = !DILocation(line: 352, column: 24, scope: !960)
!975 = !DILocation(line: 352, column: 35, scope: !960)
!976 = !DILocation(line: 352, column: 6, scope: !960)
!977 = !DILocation(line: 0, scope: !960)
!978 = !DILocation(line: 353, column: 3, scope: !960)
!979 = !DILocation(line: 356, column: 15, scope: !960)
!980 = !DILocation(line: 357, column: 7, scope: !960)
!981 = !DILocation(line: 357, column: 6, scope: !960)
!982 = !DILocation(line: 358, column: 3, scope: !960)
!983 = !DILocation(line: 716, column: 31, scope: !685, inlinedAt: !984)
!984 = distinct !DILocation(line: 360, column: 6, scope: !960)
!985 = !DILocation(line: 718, column: 6, scope: !685, inlinedAt: !984)
!986 = !DILocation(line: 723, column: 6, scope: !685, inlinedAt: !984)
!987 = !DILocation(line: 726, column: 39, scope: !685, inlinedAt: !984)
!988 = !DILocation(line: 726, column: 9, scope: !685, inlinedAt: !984)
!989 = !DILocation(line: 360, column: 6, scope: !960)
!990 = !DILocation(line: 361, column: 3, scope: !960)
!991 = !DILocation(line: 0, scope: !685, inlinedAt: !984)
!992 = !DILocation(line: 109, column: 7, scope: !122, inlinedAt: !993)
!993 = distinct !DILocation(line: 363, column: 13, scope: !960)
!994 = !DILocation(line: 109, column: 25, scope: !122, inlinedAt: !993)
!995 = !DILocation(line: 110, column: 3, scope: !122, inlinedAt: !993)
!996 = !DILocation(line: 364, column: 6, scope: !960)
!997 = !DILocation(line: 109, column: 28, scope: !122, inlinedAt: !993)
!998 = !DILocation(line: 109, column: 49, scope: !122, inlinedAt: !993)
!999 = !DILocation(line: 112, column: 9, scope: !122, inlinedAt: !993)
!1000 = !DILocation(line: 364, column: 7, scope: !960)
!1001 = !DILocation(line: 365, column: 3, scope: !960)
!1002 = !DILocation(line: 189, column: 2, scope: !710, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 367, column: 14, scope: !960)
!1004 = !DILocation(line: 159, column: 2, scope: !713, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 189, column: 2, scope: !710, inlinedAt: !1003)
!1006 = !DILocation(line: 181, column: 28, scope: !718, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 190, column: 9, scope: !710, inlinedAt: !1003)
!1008 = !DILocation(line: 183, column: 9, scope: !718, inlinedAt: !1007)
!1009 = !DILocation(line: 370, column: 14, scope: !960)
!1010 = !DILocation(line: 370, column: 32, scope: !960)
!1011 = !DILocation(line: 369, column: 10, scope: !960)
!1012 = !DILocation(line: 372, column: 7, scope: !960)
!1013 = !DILocation(line: 372, column: 6, scope: !960)
!1014 = !DILocation(line: 373, column: 3, scope: !960)
!1015 = !DILocation(line: 375, column: 33, scope: !960)
!1016 = !DILocation(line: 375, column: 10, scope: !960)
!1017 = !DILocation(line: 376, column: 9, scope: !960)
!1018 = !DILocation(line: 376, column: 12, scope: !960)
!1019 = !DILocation(line: 58, column: 9, scope: !1020, inlinedAt: !1021)
!1020 = distinct !DISubprogram(name: "syscall_get_return_value", scope: !669, file: !669, line: 55, type: !118, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1021 = distinct !DILocation(line: 377, column: 15, scope: !960)
!1022 = !DILocation(line: 377, column: 9, scope: !960)
!1023 = !DILocation(line: 377, column: 13, scope: !960)
!1024 = !DILocation(line: 379, column: 42, scope: !960)
!1025 = !DILocation(line: 379, column: 2, scope: !960)
!1026 = !DILocation(line: 381, column: 1, scope: !960)
!1027 = distinct !DISubprogram(name: "perf_syscall_exit", scope: !1, file: !1, line: 686, type: !118, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1028 = !DILocation(line: 687, scope: !1027)
!1029 = !DILocation(line: 693, column: 2, scope: !1027)
!1030 = !DILocation(line: 693, column: 6, scope: !1027)
!1031 = !DILocation(line: 104, column: 4, scope: !661, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 696, column: 36, scope: !1027)
!1033 = !DILocation(line: 104, column: 26, scope: !661, inlinedAt: !1032)
!1034 = !DILocation(line: 103, column: 9, scope: !661, inlinedAt: !1032)
!1035 = !DILocation(line: 696, column: 36, scope: !1027)
!1036 = !DILocation(line: 28, column: 9, scope: !668, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 78, column: 9, scope: !671, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 696, column: 15, scope: !1027)
!1039 = !DILocation(line: 28, column: 33, scope: !668, inlinedAt: !1037)
!1040 = !DILocation(line: 28, column: 45, scope: !668, inlinedAt: !1037)
!1041 = !DILocation(line: 697, column: 24, scope: !1027)
!1042 = !DILocation(line: 697, column: 35, scope: !1027)
!1043 = !DILocation(line: 697, column: 6, scope: !1027)
!1044 = !DILocation(line: 0, scope: !1027)
!1045 = !DILocation(line: 698, column: 3, scope: !1027)
!1046 = !DILocation(line: 118, column: 21, scope: !869, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 699, column: 7, scope: !1027)
!1048 = !DILocation(line: 118, column: 16, scope: !869, inlinedAt: !1047)
!1049 = !DILocation(line: 118, column: 42, scope: !869, inlinedAt: !1047)
!1050 = !DILocation(line: 699, column: 7, scope: !1027)
!1051 = !DILocation(line: 699, column: 6, scope: !1027)
!1052 = !DILocation(line: 700, column: 3, scope: !1027)
!1053 = !DILocation(line: 109, column: 7, scope: !122, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 702, column: 13, scope: !1027)
!1055 = !DILocation(line: 109, column: 25, scope: !122, inlinedAt: !1054)
!1056 = !DILocation(line: 110, column: 3, scope: !122, inlinedAt: !1054)
!1057 = !DILocation(line: 703, column: 6, scope: !1027)
!1058 = !DILocation(line: 109, column: 28, scope: !122, inlinedAt: !1054)
!1059 = !DILocation(line: 109, column: 49, scope: !122, inlinedAt: !1054)
!1060 = !DILocation(line: 112, column: 9, scope: !122, inlinedAt: !1054)
!1061 = !DILocation(line: 703, column: 7, scope: !1027)
!1062 = !DILocation(line: 704, column: 3, scope: !1027)
!1063 = !DILocation(line: 706, column: 9, scope: !1027)
!1064 = !DILocation(line: 436, column: 11, scope: !889, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 707, column: 21, scope: !1027)
!1066 = !DILocation(line: 436, column: 10, scope: !889, inlinedAt: !1065)
!1067 = !DILocation(line: 708, column: 24, scope: !1027)
!1068 = !DILocation(line: 708, column: 39, scope: !1027)
!1069 = !DILocation(line: 840, column: 10, scope: !895, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 708, column: 27, scope: !1027)
!1071 = !DILocation(line: 840, column: 9, scope: !895, inlinedAt: !1070)
!1072 = !DILocation(line: 708, column: 6, scope: !1027)
!1073 = !DILocation(line: 709, column: 3, scope: !1027)
!1074 = !DILocation(line: 715, column: 8, scope: !1027)
!1075 = !DILocation(line: 716, column: 7, scope: !1027)
!1076 = !DILocation(line: 716, column: 6, scope: !1027)
!1077 = !DILocation(line: 717, column: 3, scope: !1027)
!1078 = !DILocation(line: 719, column: 7, scope: !1027)
!1079 = !DILocation(line: 719, column: 10, scope: !1027)
!1080 = !DILocation(line: 58, column: 9, scope: !1020, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 720, column: 13, scope: !1027)
!1082 = !DILocation(line: 720, column: 7, scope: !1027)
!1083 = !DILocation(line: 720, column: 11, scope: !1027)
!1084 = !DILocation(line: 722, column: 24, scope: !1027)
!1085 = !DILocation(line: 723, column: 27, scope: !1027)
!1086 = !DILocation(line: 723, column: 37, scope: !1027)
!1087 = !DILocation(line: 674, column: 2, scope: !1088, inlinedAt: !1089)
!1088 = distinct !DISubprogram(name: "perf_call_bpf_exit", scope: !1, file: !1, line: 671, type: !118, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1089 = distinct !DILocation(line: 723, column: 8, scope: !1027)
!1090 = !DILocation(line: 678, column: 4, scope: !1088, inlinedAt: !1089)
!1091 = !DILocation(line: 680, column: 29, scope: !1088, inlinedAt: !1089)
!1092 = !DILocation(line: 681, column: 26, scope: !1088, inlinedAt: !1089)
!1093 = !DILocation(line: 681, column: 19, scope: !1088, inlinedAt: !1089)
!1094 = !DILocation(line: 682, column: 19, scope: !1088, inlinedAt: !1089)
!1095 = !DILocation(line: 682, column: 12, scope: !1088, inlinedAt: !1089)
!1096 = !DILocation(line: 683, column: 9, scope: !1088, inlinedAt: !1089)
!1097 = !DILocation(line: 684, column: 1, scope: !1088, inlinedAt: !1089)
!1098 = !DILocation(line: 723, column: 8, scope: !1027)
!1099 = !DILocation(line: 723, column: 61, scope: !1027)
!1100 = !DILocation(line: 840, column: 10, scope: !895, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 724, column: 6, scope: !1027)
!1102 = !DILocation(line: 840, column: 9, scope: !895, inlinedAt: !1101)
!1103 = !DILocation(line: 722, column: 6, scope: !1027)
!1104 = !DILocation(line: 725, column: 38, scope: !1027)
!1105 = !DILocation(line: 725, column: 3, scope: !1027)
!1106 = !DILocation(line: 726, column: 3, scope: !1027)
!1107 = !DILocation(line: 729, column: 24, scope: !1027)
!1108 = !DILocation(line: 729, column: 35, scope: !1027)
!1109 = !DILocation(line: 729, column: 51, scope: !1027)
!1110 = !DILocation(line: 729, column: 69, scope: !1027)
!1111 = !DILocation(line: 729, column: 41, scope: !1027)
!1112 = !DILocation(line: 900, column: 2, scope: !957, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 729, column: 2, scope: !1027)
!1114 = !DILocation(line: 731, column: 1, scope: !1027)
