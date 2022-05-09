; ModuleID = '/llk/IR_all_yes/kernel/rseq.c_pt.bc'
source_filename = "../kernel/rseq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.22 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_rseq_update = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_rseq_ip_fixup = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.rseq_cs = type { i32, i32, i64, i64, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rseq = type { i32, i32, %union.anon.89, i32, [12 x i8] }
%union.anon.89 = type { i64 }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.kernel_siginfo = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.81 }
%struct.anon.81 = type { i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_rseq_update = internal constant [12 x i8] c"rseq_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rseq_update = dso_local global %struct.static_call_key { ptr @__traceiter_rseq_update }, align 4
@__tracepoint_rseq_update = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rseq_update, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rseq_update, ptr null, ptr @__traceiter_rseq_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rseq_update = internal constant ptr @__tracepoint_rseq_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_rseq_ip_fixup = internal constant [14 x i8] c"rseq_ip_fixup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rseq_ip_fixup = dso_local global %struct.static_call_key { ptr @__traceiter_rseq_ip_fixup }, align 4
@__tracepoint_rseq_ip_fixup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rseq_ip_fixup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rseq_ip_fixup, ptr null, ptr @__traceiter_rseq_ip_fixup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rseq_ip_fixup = internal constant ptr @__tracepoint_rseq_ip_fixup, section "__tracepoints_ptrs", align 4
@str__rseq__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rseq\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_rseq_update = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.19 { %struct.anon.20 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_rseq_update = internal global %struct.trace_event_class { ptr @str__rseq__trace_system_name, ptr @trace_event_raw_event_rseq_update, ptr @perf_trace_rseq_update, ptr @trace_event_reg, ptr @trace_event_fields_rseq_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rseq_update, i64 24), ptr getelementptr (i8, ptr @event_class_rseq_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rseq_update = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rseq_update, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rseq_update = internal global { [25 x i8], [39 x i8] } { [25 x i8] c"\22cpu_id=%d\22, REC->cpu_id\00", [39 x i8] zeroinitializer }, align 32
@event_rseq_update = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rseq_update, %union.anon.21 { ptr @__tracepoint_rseq_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rseq_update }, ptr @print_fmt_rseq_update, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rseq_update = internal global ptr @event_rseq_update, section "_ftrace_events", align 4
@trace_event_fields_rseq_ip_fixup = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.19 { %struct.anon.20 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.19 { %struct.anon.20 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.19 { %struct.anon.20 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.19 { %struct.anon.20 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_rseq_ip_fixup = internal global %struct.trace_event_class { ptr @str__rseq__trace_system_name, ptr @trace_event_raw_event_rseq_ip_fixup, ptr @perf_trace_rseq_ip_fixup, ptr @trace_event_reg, ptr @trace_event_fields_rseq_ip_fixup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rseq_ip_fixup, i64 24), ptr getelementptr (i8, ptr @event_class_rseq_ip_fixup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rseq_ip_fixup = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rseq_ip_fixup, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rseq_ip_fixup = internal global { [138 x i8], [54 x i8] } { [138 x i8] c"\22regs_ip=0x%lx start_ip=0x%lx post_commit_offset=%lu abort_ip=0x%lx\22, REC->regs_ip, REC->start_ip, REC->post_commit_offset, REC->abort_ip\00", [54 x i8] zeroinitializer }, align 32
@event_rseq_ip_fixup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rseq_ip_fixup, %union.anon.21 { ptr @__tracepoint_rseq_ip_fixup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rseq_ip_fixup }, ptr @print_fmt_rseq_ip_fixup, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rseq_ip_fixup = internal global ptr @event_rseq_ip_fixup, section "_ftrace_events", align 4
@__bpf_trace_tp_map_rseq_update = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_rseq_update, ptr @__bpf_trace_rseq_update, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rseq_ip_fixup = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_rseq_ip_fixup, ptr @__bpf_trace_rseq_ip_fixup, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_rseq\00", [17 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__rseq = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 4, ptr @types__rseq, ptr @args__rseq, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__rseq, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__rseq, i64 20) }, ptr @event_enter__rseq, ptr @event_exit__rseq }, align 4
@event_enter__rseq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__rseq, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__rseq = internal global ptr @event_enter__rseq, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_rseq\00", [18 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__rseq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__rseq, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__rseq = internal global ptr @event_exit__rseq, section "_ftrace_events", align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_rseq\00", [23 x i8] zeroinitializer }, align 32
@types__rseq = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@args__rseq = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__rseq = internal global ptr @__syscall_meta__rseq, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpu_id\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu_id=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regs_ip\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"start_ip\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"post_commit_offset\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"abort_ip\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"regs_ip=0x%lx start_ip=0x%lx post_commit_offset=%lu abort_ip=0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel/rseq.c\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/rseq.h\00", [36 x i8] zeroinitializer }, align 32
@trace_rseq_ip_fixup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_rseq_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rseq_get_rseq_cs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rseq_get_rseq_cs = private unnamed_addr constant [17 x i8] c"rseq_get_rseq_cs\00", align 1
@rseq_get_rseq_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.rseq_get_rseq_cs, ptr @.str.12, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014Possible attack attempt. Unexpected rseq signature 0x%x, expecting 0x%x (pid=%d, addr=%p).\0A\00", [34 x i8] zeroinitializer }, align 32
@rseq_get_rseq_cs._entry_ptr = internal global ptr @rseq_get_rseq_cs._entry, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"struct rseq *\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rseq\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rseq_len\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sig\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"str__rseq__trace_system_name\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 36, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"trace_event_fields_rseq_update\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_rseq_update\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"print_fmt_rseq_update\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"event_rseq_update\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [33 x i8] c"trace_event_fields_rseq_ip_fixup\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_rseq_ip_fixup\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"print_fmt_rseq_ip_fixup\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"event_rseq_ip_fixup\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"event_enter__rseq\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"event_exit__rseq\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"types__rseq\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"args__rseq\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 11, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 179, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant [31 x i8] c"../include/trace/events/rseq.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 28, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 165, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 156, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [17 x i8] c"../kernel/rseq.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 328, i32 1 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__bpf_trace_tp_map_rseq_ip_fixup, ptr @__bpf_trace_tp_map_rseq_update, ptr @__event_enter__rseq, ptr @__event_exit__rseq, ptr @__event_rseq_ip_fixup, ptr @__event_rseq_update, ptr @__p_syscall_meta__rseq, ptr @__syscall_meta__rseq, ptr @__tracepoint_ptr_rseq_ip_fixup, ptr @__tracepoint_ptr_rseq_update, ptr @__tracepoint_rseq_ip_fixup, ptr @__tracepoint_rseq_update, ptr @event_class_rseq_ip_fixup, ptr @event_class_rseq_update, ptr @event_enter__rseq, ptr @event_exit__rseq, ptr @event_rseq_ip_fixup, ptr @event_rseq_update, ptr @rseq_get_rseq_cs._entry, ptr @rseq_get_rseq_cs._entry_ptr, ptr @str__rseq__trace_system_name, ptr @trace_event_fields_rseq_update, ptr @trace_event_type_funcs_rseq_update, ptr @print_fmt_rseq_update, ptr @trace_event_fields_rseq_ip_fixup, ptr @trace_event_type_funcs_rseq_ip_fixup, ptr @print_fmt_rseq_ip_fixup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__rseq, ptr @args__rseq, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rseq_get_rseq_cs._rs, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__rseq__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rseq_update to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rseq_update to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rseq_update to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rseq_update to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rseq_ip_fixup to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rseq_ip_fixup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rseq_ip_fixup to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rseq_ip_fixup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__rseq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__rseq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__rseq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__rseq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rseq_get_rseq_cs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rseq_get_rseq_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_rseq = dso_local alias i32 (ptr, i32, i32, i32), ptr @__se_sys_rseq

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rseq_update(ptr nocapture readnone %__data, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_update, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %t) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rseq_ip_fixup(ptr nocapture readnone %__data, i32 noundef %regs_ip, i32 noundef %start_ip, i32 noundef %post_commit_offset, i32 noundef %abort_ip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_ip_fixup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %regs_ip, i32 noundef %start_ip, i32 noundef %post_commit_offset, i32 noundef %abort_ip) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rseq_update(ptr noundef %__data, ptr nocapture noundef readnone %t) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !89

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !90

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i13 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i13 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %cpu_id = getelementptr inbounds %struct.trace_event_raw_rseq_update, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %cpu_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cpu_id, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rseq_update(ptr noundef %__data, ptr nocapture noundef readnone %t) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !91
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !79) #7
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
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !79) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %cpu_id = getelementptr inbounds %struct.trace_event_raw_rseq_update, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cpu_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cpu_id, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rseq_ip_fixup(ptr noundef %__data, i32 noundef %regs_ip, i32 noundef %start_ip, i32 noundef %post_commit_offset, i32 noundef %abort_ip) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !89

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !90

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regs_ip6 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %regs_ip6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %regs_ip, ptr %regs_ip6, align 4
  %start_ip7 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %start_ip7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %start_ip, ptr %start_ip7, align 4
  %post_commit_offset8 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %post_commit_offset8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %post_commit_offset, ptr %post_commit_offset8, align 4
  %abort_ip9 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %abort_ip9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %abort_ip, ptr %abort_ip9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rseq_ip_fixup(ptr noundef %__data, i32 noundef %regs_ip, i32 noundef %start_ip, i32 noundef %post_commit_offset, i32 noundef %abort_ip) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !91
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !79) #7
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
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !79) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %regs_ip17 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %regs_ip17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %regs_ip, ptr %regs_ip17, align 4
  %start_ip18 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %start_ip18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %start_ip, ptr %start_ip18, align 4
  %post_commit_offset19 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %post_commit_offset19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %post_commit_offset, ptr %post_commit_offset19, align 4
  %abort_ip20 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %abort_ip20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %abort_ip, ptr %abort_ip20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rseq_update(ptr noundef %__data, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %t to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rseq_ip_fixup(ptr noundef %__data, i32 noundef %regs_ip, i32 noundef %start_ip, i32 noundef %post_commit_offset, i32 noundef %abort_ip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %regs_ip to i64
  %conv4 = zext i32 %start_ip to i64
  %conv8 = zext i32 %post_commit_offset to i64
  %conv12 = zext i32 %abort_ip to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rseq_handle_notify_resume(ptr noundef readonly %ksig, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  %rseq_cs.i = alloca %struct.rseq_cs, align 32
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !89

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %regs, null
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rseq_cs.i) #7
  %8 = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs.i, i32 0, i32 4
  %12 = call ptr @memset(ptr %rseq_cs.i, i32 255, i32 32)
  %call1.i = call fastcc i32 @rseq_get_rseq_cs(ptr noundef %3, ptr noundef nonnull %rseq_cs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.rseq_ip_fixup.exit_crit_edge

if.then4.rseq_ip_fixup.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit

if.end.i:                                         ; preds = %if.then4
  %conv.i.i = zext i32 %7 to i64
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %9, align 8
  %sub.i.i = sub i64 %conv.i.i, %14
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %10, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %16)
  %cmp.i.i = icmp ult i64 %sub.i.i, %16
  br i1 %cmp.i.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %rseq.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 174
  %17 = ptrtoint ptr %rseq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rseq.i.i, align 8
  %rseq_cs.i.i = getelementptr inbounds %struct.rseq, ptr %18, i32 0, i32 2
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %rseq_cs.i.i, i32 8, i32 -1226833920) #10, !srcloc !92
  %asmresult.i.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %clear_user.exit.i.i, label %if.then3.i.rseq_ip_fixup.exit.thread_crit_edge

if.then3.i.rseq_ip_fixup.exit.thread_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit.thread

clear_user.exit.i.i:                              ; preds = %if.then3.i
  %20 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !93
  %and.i.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %call1.i.i.i.i = call i32 @arm_clear_user(ptr noundef %rseq_cs.i.i, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %clear_user.exit.i.i.rseq_ip_fixup.exit.thread40_crit_edge, label %clear_user.exit.i.i.rseq_ip_fixup.exit.thread_crit_edge

clear_user.exit.i.i.rseq_ip_fixup.exit.thread_crit_edge: ; preds = %clear_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit.thread

clear_user.exit.i.i.rseq_ip_fixup.exit.thread40_crit_edge: ; preds = %clear_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit.thread40

if.end5.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %8, align 4
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 179) #7
  %rseq.i30.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 174
  %25 = ptrtoint ptr %rseq.i30.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rseq.i30.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.rseq, ptr %26, i32 0, i32 3
  %27 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i31.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i31.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #4, !srcloc !93
  %and.i.i.i = and i32 %29, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %30 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %flags1.i.i, i32 -1226833921) #7, !srcloc !96
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i32.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i.i, label %if.end5.i.rseq_need_restart.exit.i_crit_edge

if.end5.i.rseq_need_restart.exit.i_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_need_restart.exit.i

if.end.i.i:                                       ; preds = %if.end5.i
  %asmresult2.i.i = extractvalue { i32, i32 } %30, 1
  %or.i.i = or i32 %asmresult2.i.i, %24
  %and.i33.i = and i32 %or.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool4.not.i.i = icmp ne i32 %and.i33.i, 0
  %and5.i.i = and i32 %or.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and5.i.i)
  %cmp.i34.i = icmp ne i32 %and5.i.i, 5
  %31 = and i1 %tobool4.not.i.i, %cmp.i34.i
  br i1 %31, label %if.end.i.i.rseq_ip_fixup.exit.thread_crit_edge, label %do.body.i.i, !prof !90

if.end.i.i.rseq_ip_fixup.exit.thread_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit.thread

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i28.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i28.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !97
  %rseq_event_mask.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 176
  %36 = ptrtoint ptr %rseq_event_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rseq_event_mask.i.i, align 32
  store i32 0, ptr %rseq_event_mask.i.i, align 32
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !98
  %38 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i29.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i30.i.i, align 4
  %neg.i.i = xor i32 %or.i.i, -1
  %and14.i.i = and i32 %37, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.i.i = icmp ne i32 %and14.i.i, 0
  %lnot.ext19.i.i = zext i1 %tobool15.i.i to i32
  br label %rseq_need_restart.exit.i

rseq_need_restart.exit.i:                         ; preds = %do.body.i.i, %if.end5.i.rseq_need_restart.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %lnot.ext19.i.i, %do.body.i.i ], [ %asmresult.i.i, %if.end5.i.rseq_need_restart.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 1
  br i1 %cmp.i, label %rseq_need_restart.exit.i.rseq_ip_fixup.exit_crit_edge, label %if.end8.i

rseq_need_restart.exit.i.rseq_ip_fixup.exit_crit_edge: ; preds = %rseq_need_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit

if.end8.i:                                        ; preds = %rseq_need_restart.exit.i
  %42 = ptrtoint ptr %rseq.i30.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rseq.i30.i, align 8
  %rseq_cs.i36.i = getelementptr inbounds %struct.rseq, ptr %43, i32 0, i32 2
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %rseq_cs.i36.i, i32 8, i32 -1226833920) #10, !srcloc !92
  %asmresult.i.i37.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i37.i)
  %cmp.i.i38.i = icmp eq i32 %asmresult.i.i37.i, 0
  br i1 %cmp.i.i38.i, label %clear_user.exit.i46.i, label %if.end8.i.rseq_ip_fixup.exit.thread_crit_edge

if.end8.i.rseq_ip_fixup.exit.thread_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit.thread

clear_user.exit.i46.i:                            ; preds = %if.end8.i
  %45 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i39.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i39.i to ptr
  %cpu_domain.i.i.i.i.i40.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i40.i) #4, !srcloc !93
  %and.i.i.i.i41.i = and i32 %47, -13
  %or.i.i.i.i42.i = or i32 %and.i.i.i.i41.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i42.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %call1.i.i.i43.i = call i32 @arm_clear_user(ptr noundef %rseq_cs.i36.i, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call1.i.i.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.end12.i, label %clear_user.exit.i46.i.rseq_ip_fixup.exit.thread_crit_edge

clear_user.exit.i46.i.rseq_ip_fixup.exit.thread_crit_edge: ; preds = %clear_user.exit.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rseq_ip_fixup.exit.thread

if.end12.i:                                       ; preds = %clear_user.exit.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %9, align 8
  %conv.i = trunc i64 %49 to i32
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %10, align 16
  %conv13.i = trunc i64 %51 to i32
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %11, align 8
  %conv14.i = trunc i64 %53 to i32
  call fastcc void @trace_rseq_ip_fixup(i32 noundef %7, i32 noundef %conv.i, i32 noundef %conv13.i, i32 noundef %conv14.i) #7
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %11, align 8
  %conv16.i = trunc i64 %55 to i32
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv16.i, ptr %arrayidx.i, align 4
  br label %rseq_ip_fixup.exit.thread40

rseq_ip_fixup.exit.thread:                        ; preds = %clear_user.exit.i46.i.rseq_ip_fixup.exit.thread_crit_edge, %if.end8.i.rseq_ip_fixup.exit.thread_crit_edge, %if.end.i.i.rseq_ip_fixup.exit.thread_crit_edge, %clear_user.exit.i.i.rseq_ip_fixup.exit.thread_crit_edge, %if.then3.i.rseq_ip_fixup.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rseq_cs.i) #7
  br label %error

rseq_ip_fixup.exit.thread40:                      ; preds = %if.end12.i, %clear_user.exit.i.i.rseq_ip_fixup.exit.thread40_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rseq_cs.i) #7
  br label %if.end14

rseq_ip_fixup.exit:                               ; preds = %rseq_need_restart.exit.i.rseq_ip_fixup.exit_crit_edge, %if.then4.rseq_ip_fixup.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then4.rseq_ip_fixup.exit_crit_edge ], [ %retval.0.i.i, %rseq_need_restart.exit.i.rseq_ip_fixup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rseq_cs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %rseq_ip_fixup.exit.error_crit_edge, label %rseq_ip_fixup.exit.if.end14_crit_edge, !prof !90

rseq_ip_fixup.exit.if.end14_crit_edge:            ; preds = %rseq_ip_fixup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

rseq_ip_fixup.exit.error_crit_edge:               ; preds = %rseq_ip_fixup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end14:                                         ; preds = %rseq_ip_fixup.exit.if.end14_crit_edge, %rseq_ip_fixup.exit.thread40, %if.end.if.end14_crit_edge
  %57 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i56.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i56.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i, align 4
  %rseq1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 174
  %61 = ptrtoint ptr %rseq1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rseq1.i, align 8
  %63 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %62, i32 32, i32 -1226833920) #10, !srcloc !99
  %asmresult.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i32 = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i32, label %do.body.i, label %if.end14.error_crit_edge

if.end14.error_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.body.i:                                        ; preds = %if.end14
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 91) #7
  %64 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !93
  %and.i.i33 = and i32 %66, -13
  %or.i.i34 = or i32 %and.i.i33, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i34) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %67 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %62, i32 %60, i32 -1226833921) #7, !srcloc !100
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i35 = icmp eq i32 %67, 0
  br i1 %tobool.not.i35, label %do.body13.i, label %do.body.i.error_crit_edge, !prof !89

do.body.i.error_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.body13.i:                                      ; preds = %do.body.i
  %cpu_id17.i = getelementptr inbounds %struct.rseq, ptr %62, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 92) #7
  %68 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i52.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i52.i to ptr
  %cpu_domain.i.i53.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i53.i) #4, !srcloc !93
  %and.i54.i = and i32 %70, -13
  %or.i55.i = or i32 %and.i54.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i55.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %71 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %cpu_id17.i, i32 %60, i32 -1226833921) #7, !srcloc !101
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool30.not.i = icmp eq i32 %71, 0
  br i1 %tobool30.not.i, label %rseq_update_cpu_id.exit, label %do.body13.i.error_crit_edge, !prof !89

do.body13.i.error_crit_edge:                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

rseq_update_cpu_id.exit:                          ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @trace_rseq_update(ptr noundef %3) #7
  br label %cleanup

error:                                            ; preds = %do.body13.i.error_crit_edge, %do.body.i.error_crit_edge, %if.end14.error_crit_edge, %rseq_ip_fixup.exit.error_crit_edge, %rseq_ip_fixup.exit.thread
  %tobool25.not = icmp eq ptr %ksig, null
  br i1 %tobool25.not, label %error.cond.end_crit_edge, label %cond.true

error.cond.end_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %sig26 = getelementptr inbounds %struct.ksignal, ptr %ksig, i32 0, i32 2
  %72 = ptrtoint ptr %sig26 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sig26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %error.cond.end_crit_edge
  %cond = phi i32 [ %73, %cond.true ], [ 0, %error.cond.end_crit_edge ]
  call void @force_sigsegv(i32 noundef %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %rseq_update_cpu_id.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sigsegv(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rseq_syscall(ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  %rseq_cs = alloca %struct.rseq_cs, align 32
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rseq_cs) #7
  %6 = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs, i32 0, i32 3
  %rseq = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 174
  %8 = call ptr @memset(ptr %rseq_cs, i32 255, i32 32)
  %9 = ptrtoint ptr %rseq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rseq, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @rseq_get_rseq_cs(ptr noundef %5, ptr noundef nonnull %rseq_cs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %conv.i = zext i32 %1 to i64
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %6, align 8
  %sub.i = sub i64 %conv.i, %12
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %7, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %14)
  %cmp.i = icmp ult i64 %sub.i, %14
  br i1 %cmp.i, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  call void @force_sig(i32 noundef 11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rseq_cs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rseq_get_rseq_cs(ptr nocapture noundef readonly %t, ptr noundef %rseq_cs) unnamed_addr #0 align 64 {
entry:
  %ptr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr) #7
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ptr, align 8, !annotation !91
  %rseq = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 174
  %1 = ptrtoint ptr %rseq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rseq, align 8
  %rseq_cs1 = getelementptr inbounds %struct.rseq, ptr %2, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %rseq_cs1, i32 8, i32 -1226833920) #10, !srcloc !102
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !89

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ptr, i32 noundef 8) #7
  %4 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !93
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ptr, ptr noundef %rseq_cs1, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !89

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i113 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i113
  %add.ptr.i.i = getelementptr i8, ptr %ptr, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i113)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool2.not = icmp eq i64 %9, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memset(ptr %rseq_cs, i32 0, i32 32)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 3068133375, i64 %9)
  %cmp = icmp ugt i64 %9, 3068133375
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %conv = trunc i64 %9 to i32
  %11 = inttoptr i32 %conv to ptr
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #7
  %call.i.i91 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i91, label %if.end6.if.then11.i.i107_crit_edge, label %land.lhs.true.i.i94

if.end6.if.then11.i.i107_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i107

land.lhs.true.i.i94:                              ; preds = %if.end6
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 32, i32 -1226833920) #10, !srcloc !102
  %asmresult.i.i92 = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i92)
  %cmp.i6.i93 = icmp eq i32 %asmresult.i.i92, 0
  br i1 %cmp.i6.i93, label %if.end.i.i104, label %land.lhs.true.i.i94.if.then11.i.i107_crit_edge, !prof !89

land.lhs.true.i.i94.if.then11.i.i107_crit_edge:   ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i107

if.end.i.i104:                                    ; preds = %land.lhs.true.i.i94
  %call.i.i.i95 = call zeroext i1 @__kasan_check_write(ptr noundef %rseq_cs, i32 noundef 32) #7
  %13 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i96 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i96 to ptr
  %cpu_domain.i.i.i.i.i97 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i97) #4, !srcloc !93
  %and.i.i.i.i98 = and i32 %15, -13
  %or.i.i.i.i99 = or i32 %and.i.i.i.i98, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i99) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %call1.i.i.i100 = call i32 @arm_copy_from_user(ptr noundef %rseq_cs, ptr noundef %11, i32 noundef 32) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i100)
  %tobool4.not.i.i103 = icmp eq i32 %call1.i.i.i100, 0
  br i1 %tobool4.not.i.i103, label %if.end10, label %if.end.i.i104.if.then11.i.i107_crit_edge, !prof !89

if.end.i.i104.if.then11.i.i107_crit_edge:         ; preds = %if.end.i.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i107

if.then11.i.i107:                                 ; preds = %if.end.i.i104.if.then11.i.i107_crit_edge, %land.lhs.true.i.i94.if.then11.i.i107_crit_edge, %if.end6.if.then11.i.i107_crit_edge
  %res.0.i.i102118 = phi i32 [ %call1.i.i.i100, %if.end.i.i104.if.then11.i.i107_crit_edge ], [ 32, %if.end6.if.then11.i.i107_crit_edge ], [ 32, %land.lhs.true.i.i94.if.then11.i.i107_crit_edge ]
  %sub.i.i105 = sub i32 32, %res.0.i.i102118
  %add.ptr.i.i106 = getelementptr i8, ptr %rseq_cs, i32 %sub.i.i105
  %16 = call ptr @memset(ptr %add.ptr.i.i106, i32 0, i32 %res.0.i.i102118)
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i104
  %start_ip = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs, i32 0, i32 2
  %17 = ptrtoint ptr %start_ip to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start_ip, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3068133375, i64 %18)
  %cmp11 = icmp ugt i64 %18, 3068133375
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %post_commit_offset = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs, i32 0, i32 3
  %19 = ptrtoint ptr %post_commit_offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %post_commit_offset, align 16
  %add = add i64 %20, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 3068133375, i64 %add)
  %cmp14 = icmp ugt i64 %add, 3068133375
  br i1 %cmp14, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %abort_ip = getelementptr inbounds %struct.rseq_cs, ptr %rseq_cs, i32 0, i32 4
  %21 = ptrtoint ptr %abort_ip to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %abort_ip, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3068133375, i64 %22)
  %cmp17 = icmp ugt i64 %22, 3068133375
  br i1 %cmp17, label %lor.lhs.false16.cleanup_crit_edge, label %lor.lhs.false19

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %23 = ptrtoint ptr %rseq_cs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rseq_cs, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp20.not = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %18)
  %cmp28 = icmp ult i64 %add, %18
  %or.cond = select i1 %cmp20.not, i1 true, i1 %cmp28
  %sub = sub nsw i64 %22, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %20)
  %cmp35 = icmp ult i64 %sub, %20
  %or.cond86 = select i1 %or.cond, i1 true, i1 %cmp35
  br i1 %or.cond86, label %lor.lhs.false19.cleanup_crit_edge, label %if.end38

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false19
  %25 = trunc i64 %22 to i32
  %conv41 = add i32 %25, -4
  %26 = inttoptr i32 %conv41 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 160) #7
  %27 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !93
  %and.i = and i32 %29, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %30 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %26, i32 -1226833921) #7, !srcloc !103
  %asmresult = extractvalue { i32, i32 } %30, 0
  %asmresult43 = extractvalue { i32, i32 } %30, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #7, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool45.not = icmp eq i32 %asmresult, 0
  br i1 %tobool45.not, label %if.end47, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %31 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i110 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i110 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %rseq_sig = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 175
  %35 = ptrtoint ptr %rseq_sig to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rseq_sig, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %asmresult43)
  %cmp49.not = icmp eq i32 %36, %asmresult43
  br i1 %cmp49.not, label %if.end47.cleanup_crit_edge, label %if.then51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %if.end47
  %call52 = call i32 @___ratelimit(ptr noundef nonnull @rseq_get_rseq_cs._rs, ptr noundef nonnull @__func__.rseq_get_rseq_cs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.cleanup_crit_edge, label %do.end

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %rseq_sig58 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 175
  %39 = ptrtoint ptr %rseq_sig58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rseq_sig58, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %41 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid, align 8
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %asmresult43, i32 noundef %40, i32 noundef %42, ptr noundef %26) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then11.i.i107, %if.end4.cleanup_crit_edge, %if.then3, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %asmresult, %if.end38.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then51.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sig(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rseq(i32 noundef %rseq, i32 noundef %rseq_len, i32 noundef %flags, i32 noundef %sig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rseq to ptr
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end31.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool2.not.i = icmp ult i32 %flags, 2
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.__do_sys_rseq.exit_crit_edge

if.then.i.__do_sys_rseq.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end.i:                                         ; preds = %if.then.i
  %1 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %rseq4.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 174
  %5 = ptrtoint ptr %rseq4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rseq4.i, align 8
  %cmp.not.i = icmp eq ptr %6, %0
  %tobool8.not.i = icmp ne ptr %6, null
  %or.cond.not.i = and i1 %cmp.not.i, %tobool8.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rseq_len)
  %cmp11.not.i = icmp eq i32 %rseq_len, 32
  %or.cond90.i = and i1 %cmp11.not.i, %or.cond.not.i
  br i1 %or.cond90.i, label %if.end13.i, label %if.end.i.__do_sys_rseq.exit_crit_edge

if.end.i.__do_sys_rseq.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end13.i:                                       ; preds = %if.end.i
  %rseq_sig.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 175
  %7 = ptrtoint ptr %rseq_sig.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rseq_sig.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sig)
  %cmp16.not.i = icmp eq i32 %8, %sig
  br i1 %cmp16.not.i, label %if.end18.i, label %if.end13.i.__do_sys_rseq.exit_crit_edge

if.end13.i.__do_sys_rseq.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end18.i:                                       ; preds = %if.end13.i
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 110) #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #4, !srcloc !93
  %and.i.i.i = and i32 %11, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %0, i32 0, i32 -1226833921) #7, !srcloc !104
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.i.__do_sys_rseq.exit_crit_edge

if.end18.i.__do_sys_rseq.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end.i.i:                                       ; preds = %if.end18.i
  %13 = ptrtoint ptr %rseq4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rseq4.i, align 8
  %cpu_id7.i.i = getelementptr inbounds %struct.rseq, ptr %14, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 117) #7
  %15 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i25.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i25.i.i to ptr
  %cpu_domain.i.i26.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i26.i.i) #4, !srcloc !93
  %and.i27.i.i = and i32 %17, -13
  %or.i28.i.i = or i32 %and.i27.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i28.i.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %cpu_id7.i.i, i32 -1, i32 -1226833921) #7, !srcloc !105
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool20.not.i.i, label %if.end24.i, label %if.end.i.i.__do_sys_rseq.exit_crit_edge

if.end.i.i.__do_sys_rseq.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end24.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %rseq27.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 174
  %21 = ptrtoint ptr %rseq27.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rseq27.i, align 8
  %22 = load ptr, ptr %task.i, align 8
  %rseq_sig30.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 175
  %23 = ptrtoint ptr %rseq_sig30.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rseq_sig30.i, align 4
  br label %__do_sys_rseq.exit

if.end31.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool32.not.i = icmp eq i32 %flags, 0
  br i1 %tobool32.not.i, label %if.end36.i, label %if.end31.i.__do_sys_rseq.exit_crit_edge, !prof !89

if.end31.i.__do_sys_rseq.exit_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end36.i:                                       ; preds = %if.end31.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i91.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i91.i to ptr
  %task38.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task38.i, align 8
  %rseq39.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 174
  %28 = ptrtoint ptr %rseq39.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rseq39.i, align 8
  %tobool40.not.i = icmp eq ptr %29, null
  br i1 %tobool40.not.i, label %if.end56.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end36.i
  %cmp45.not.i = icmp eq ptr %29, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rseq_len)
  %cmp47.not.i = icmp eq i32 %rseq_len, 32
  %or.cond88.i = and i1 %cmp47.not.i, %cmp45.not.i
  br i1 %or.cond88.i, label %if.end49.i, label %if.then41.i.__do_sys_rseq.exit_crit_edge

if.then41.i.__do_sys_rseq.exit_crit_edge:         ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end49.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %rseq_sig52.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 175
  %30 = ptrtoint ptr %rseq_sig52.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rseq_sig52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %sig)
  %cmp53.not.i = icmp eq i32 %31, %sig
  %..i = select i1 %cmp53.not.i, i32 -16, i32 -1
  br label %__do_sys_rseq.exit

if.end56.i:                                       ; preds = %if.end36.i
  %and57.i = and i32 %rseq, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %cmp58.i = icmp eq i32 %and57.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rseq_len)
  %cmp60.not.i = icmp eq i32 %rseq_len, 32
  %or.cond89.i = and i1 %cmp60.not.i, %cmp58.i
  br i1 %or.cond89.i, label %if.end62.i, label %if.end56.i.__do_sys_rseq.exit_crit_edge

if.end56.i.__do_sys_rseq.exit_crit_edge:          ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end62.i:                                       ; preds = %if.end56.i
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 32, i32 -1226833920) #10, !srcloc !106
  %asmresult.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp64.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp64.i, label %if.end66.i, label %if.end62.i.__do_sys_rseq.exit_crit_edge

if.end62.i.__do_sys_rseq.exit_crit_edge:          ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.end66.i:                                       ; preds = %if.end62.i
  %33 = ptrtoint ptr %rseq39.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %0, ptr %rseq39.i, align 8
  %34 = ptrtoint ptr %task38.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task38.i, align 8
  %rseq_sig72.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 175
  %36 = ptrtoint ptr %rseq_sig72.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sig, ptr %rseq_sig72.i, align 4
  %37 = load ptr, ptr %task38.i, align 8
  %rseq.i92.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 174
  %38 = ptrtoint ptr %rseq.i92.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rseq.i92.i, align 8
  %tobool.not.i93.i = icmp eq ptr %39, null
  br i1 %tobool.not.i93.i, label %if.end66.i.__do_sys_rseq.exit_crit_edge, label %if.then.i.i

if.end66.i.__do_sys_rseq.exit_crit_edge:          ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_rseq.exit

if.then.i.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i.i, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %41) #7
  br label %__do_sys_rseq.exit

__do_sys_rseq.exit:                               ; preds = %if.then.i.i, %if.end66.i.__do_sys_rseq.exit_crit_edge, %if.end62.i.__do_sys_rseq.exit_crit_edge, %if.end56.i.__do_sys_rseq.exit_crit_edge, %if.end49.i, %if.then41.i.__do_sys_rseq.exit_crit_edge, %if.end31.i.__do_sys_rseq.exit_crit_edge, %if.end24.i, %if.end.i.i.__do_sys_rseq.exit_crit_edge, %if.end18.i.__do_sys_rseq.exit_crit_edge, %if.end13.i.__do_sys_rseq.exit_crit_edge, %if.end.i.__do_sys_rseq.exit_crit_edge, %if.then.i.__do_sys_rseq.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end24.i ], [ -22, %if.then.i.__do_sys_rseq.exit_crit_edge ], [ -22, %if.end.i.__do_sys_rseq.exit_crit_edge ], [ -1, %if.end13.i.__do_sys_rseq.exit_crit_edge ], [ -22, %if.end31.i.__do_sys_rseq.exit_crit_edge ], [ -22, %if.then41.i.__do_sys_rseq.exit_crit_edge ], [ %..i, %if.end49.i ], [ -22, %if.end56.i.__do_sys_rseq.exit_crit_edge ], [ -14, %if.end62.i.__do_sys_rseq.exit_crit_edge ], [ 0, %if.end66.i.__do_sys_rseq.exit_crit_edge ], [ 0, %if.then.i.i ], [ -14, %if.end18.i.__do_sys_rseq.exit_crit_edge ], [ -14, %if.end.i.i.__do_sys_rseq.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rseq_update(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cpu_id = getelementptr inbounds %struct.trace_event_raw_rseq_update, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpu_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, i32 noundef %3) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rseq_ip_fixup(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %regs_ip = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs_ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regs_ip, align 4
  %start_ip = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %start_ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_ip, align 4
  %post_commit_offset = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %post_commit_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %post_commit_offset, align 4
  %abort_ip = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %abort_ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %abort_ip, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rseq_ip_fixup(i32 noundef %regs_ip, i32 noundef %start_ip, i32 noundef %post_commit_offset, i32 noundef %abort_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_ip_fixup, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rseq_ip_fixup, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !108
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_ip_fixup, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %regs_ip, i32 noundef %start_ip, i32 noundef %post_commit_offset, i32 noundef %abort_ip) #7
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !109
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !109
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !110
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_ip_fixup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rseq_ip_fixup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rseq_ip_fixup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 52, ptr noundef nonnull @.str.14) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !111
  %38 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rseq_update(ptr noundef %t) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_update, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rseq_update, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !112
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_update, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %t) #7
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !113
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !113
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !110
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rseq_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rseq_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_rseq_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 26, ptr noundef nonnull @.str.14) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !111
  %38 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__tracepoint_rseq_update, !1, !"__tracepoint_rseq_update", i1 false, i1 false}
!1 = !{!"../include/trace/events/rseq.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_rseq_update, !1, !"__tracepoint_ptr_rseq_update", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_rseq_update, !1, !"__SCK__tp_func_rseq_update", i1 false, i1 false}
!4 = !{ptr @__tracepoint_rseq_ip_fixup, !5, !"__tracepoint_rseq_ip_fixup", i1 false, i1 false}
!5 = !{!"../include/trace/events/rseq.h", i32 28, i32 1}
!6 = !{ptr @__tracepoint_ptr_rseq_ip_fixup, !5, !"__tracepoint_ptr_rseq_ip_fixup", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_rseq_ip_fixup, !5, !"__SCK__tp_func_rseq_ip_fixup", i1 false, i1 false}
!8 = !{ptr @event_class_rseq_update, !1, !"event_class_rseq_update", i1 false, i1 false}
!9 = !{ptr @event_rseq_update, !1, !"event_rseq_update", i1 false, i1 false}
!10 = !{ptr @__event_rseq_update, !1, !"__event_rseq_update", i1 false, i1 false}
!11 = !{ptr @event_class_rseq_ip_fixup, !5, !"event_class_rseq_ip_fixup", i1 false, i1 false}
!12 = !{ptr @event_rseq_ip_fixup, !5, !"event_rseq_ip_fixup", i1 false, i1 false}
!13 = !{ptr @__event_rseq_ip_fixup, !5, !"__event_rseq_ip_fixup", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_rseq_update, !1, !"__bpf_trace_tp_map_rseq_update", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_rseq_ip_fixup, !5, !"__bpf_trace_tp_map_rseq_ip_fixup", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/rseq.c", i32 328, i32 1}
!18 = !{ptr @event_enter__rseq, !17, !"event_enter__rseq", i1 false, i1 false}
!19 = !{ptr @__event_enter__rseq, !17, !"__event_enter__rseq", i1 false, i1 false}
!20 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @event_exit__rseq, !17, !"event_exit__rseq", i1 false, i1 false}
!22 = !{ptr @__event_exit__rseq, !17, !"__event_exit__rseq", i1 false, i1 false}
!23 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__syscall_meta__rseq, !17, !"__syscall_meta__rseq", i1 false, i1 false}
!25 = !{ptr @__p_syscall_meta__rseq, !17, !"__p_syscall_meta__rseq", i1 false, i1 false}
!26 = !{ptr @__tpstrtab_rseq_update, !1, !"__tpstrtab_rseq_update", i1 false, i1 false}
!27 = !{ptr @__tpstrtab_rseq_ip_fixup, !5, !"__tpstrtab_rseq_ip_fixup", i1 false, i1 false}
!28 = !{ptr @str__rseq__trace_system_name, !29, !"str__rseq__trace_system_name", i1 false, i1 false}
!29 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!30 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @trace_event_fields_rseq_update, !1, !"trace_event_fields_rseq_update", i1 false, i1 false}
!33 = !{ptr @trace_event_type_funcs_rseq_update, !1, !"trace_event_type_funcs_rseq_update", i1 false, i1 false}
!34 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @print_fmt_rseq_update, !1, !"print_fmt_rseq_update", i1 false, i1 false}
!36 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @trace_event_fields_rseq_ip_fixup, !5, !"trace_event_fields_rseq_ip_fixup", i1 false, i1 false}
!42 = !{ptr @trace_event_type_funcs_rseq_ip_fixup, !5, !"trace_event_type_funcs_rseq_ip_fixup", i1 false, i1 false}
!43 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @print_fmt_rseq_ip_fixup, !5, !"print_fmt_rseq_ip_fixup", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/rseq.c", i32 179, i32 8}
!47 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!48 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!50 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!55 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/rseq.c", i32 165, i32 3}
!58 = !{ptr @rseq_get_rseq_cs._rs, !57, !"_rs", i1 false, i1 false}
!59 = !{ptr @__func__.rseq_get_rseq_cs, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rseq_get_rseq_cs._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @rseq_get_rseq_cs._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!65 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!70 = !{ptr @.str.21, !17, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !17, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !17, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @types__rseq, !17, !"types__rseq", i1 false, i1 false}
!74 = !{ptr @.str.24, !17, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.25, !17, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.26, !17, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.27, !17, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @args__rseq, !17, !"args__rseq", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{!"auto-init"}
!92 = !{i64 2150503330, i64 2150503355}
!93 = !{i64 3002083}
!94 = !{i64 3002280}
!95 = !{i64 2150487513}
!96 = !{i64 2155390646, i64 2155390926, i64 2155391260, i64 2155391594}
!97 = !{i64 2155394867}
!98 = !{i64 2155394964}
!99 = !{i64 2155299065, i64 2155299090}
!100 = !{i64 2155318855, i64 2155319165, i64 2155319479, i64 2155319793}
!101 = !{i64 2155340620, i64 2155340930, i64 2155341244, i64 2155341558}
!102 = !{i64 2150506528, i64 2150506553}
!103 = !{i64 2155375320, i64 2155375600, i64 2155375934, i64 2155376268}
!104 = !{i64 2155349290, i64 2155349570, i64 2155349904, i64 2155350238}
!105 = !{i64 2155362186, i64 2155362466, i64 2155362800, i64 2155363134}
!106 = !{i64 2155411263, i64 2155411288}
!107 = !{i64 2148241239, i64 2148241244, i64 2148241257, i64 2148241301, i64 2148241335, i64 2148241356}
!108 = !{i64 2154927225}
!109 = !{i64 2154927508}
!110 = !{i64 2149263919}
!111 = !{i64 2149264955}
!112 = !{i64 2154909948}
!113 = !{i64 2154910135}
