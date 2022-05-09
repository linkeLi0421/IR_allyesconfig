; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/ptrace.c_pt.bc'
source_filename = "../arch/arm/kernel/ptrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%struct.pt_regs_offset = type { ptr, i32 }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_sys_enter = type { %struct.trace_entry, i32, [6 x i32], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_event_raw_sys_exit = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.83, i64, i64, i64, %union.anon.84, i32, %union.anon.85, %union.anon.86, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.83 = type { i64 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i64 }
%union.anon.86 = type { i64 }
%struct.pt_regs = type { [18 x i32] }
%struct.anon.15 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.hw_perf_event = type { %union.anon.87, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.94, i64, i64, i64, i64 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i64, %struct.local64_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.arch_hw_breakpoint = type { i32, i32, %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl }
%struct.arch_hw_breakpoint_ctrl = type { i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_sys_enter = internal constant [10 x i8] c"sys_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sys_enter = dso_local global %struct.static_call_key { ptr @__traceiter_sys_enter }, align 4
@__tracepoint_sys_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_sys_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_sys_enter, ptr null, ptr @__traceiter_sys_enter, ptr @syscall_regfunc, ptr @syscall_unregfunc, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sys_enter = internal constant ptr @__tracepoint_sys_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_sys_exit = internal constant [9 x i8] c"sys_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sys_exit = dso_local global %struct.static_call_key { ptr @__traceiter_sys_exit }, align 4
@__tracepoint_sys_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_sys_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_sys_exit, ptr null, ptr @__traceiter_sys_exit, ptr @syscall_regfunc, ptr @syscall_unregfunc, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sys_exit = internal constant ptr @__tracepoint_sys_exit, section "__tracepoints_ptrs", align 4
@__initcall__kmod_ptrace__326_42_trace_init_flags_sys_enterearly = internal global ptr @trace_init_flags_sys_enter, section ".initcallearly.init", align 4
@__initcall__kmod_ptrace__327_66_trace_init_flags_sys_exitearly = internal global ptr @trace_init_flags_sys_exit, section ".initcallearly.init", align 4
@str__raw_syscalls__trace_system_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"raw_syscalls\00", [19 x i8] zeroinitializer }, align 32
@trace_event_fields_sys_enter = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.4, i32 24, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_sys_enter = internal global %struct.trace_event_class { ptr @str__raw_syscalls__trace_system_name, ptr @trace_event_raw_event_sys_enter, ptr @perf_trace_sys_enter, ptr @trace_event_reg, ptr @trace_event_fields_sys_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sys_enter, i64 24), ptr getelementptr (i8, ptr @event_class_sys_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sys_enter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_sys_enter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_sys_enter = internal global { [133 x i8], [59 x i8] } { [133 x i8] c"\22NR %ld (%lx, %lx, %lx, %lx, %lx, %lx)\22, REC->id, REC->args[0], REC->args[1], REC->args[2], REC->args[3], REC->args[4], REC->args[5]\00", [59 x i8] zeroinitializer }, align 32
@event_sys_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sys_enter, %union.anon.1 { ptr @__tracepoint_sys_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sys_enter }, ptr @print_fmt_sys_enter, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_sys_enter = internal global ptr @event_sys_enter, section "_ftrace_events", align 4
@trace_event_fields_sys_exit = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_sys_exit = internal global %struct.trace_event_class { ptr @str__raw_syscalls__trace_system_name, ptr @trace_event_raw_event_sys_exit, ptr @perf_trace_sys_exit, ptr @trace_event_reg, ptr @trace_event_fields_sys_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sys_exit, i64 24), ptr getelementptr (i8, ptr @event_class_sys_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sys_exit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_sys_exit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_sys_exit = internal global { [34 x i8], [62 x i8] } { [34 x i8] c"\22NR %ld = %ld\22, REC->id, REC->ret\00", [62 x i8] zeroinitializer }, align 32
@event_sys_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sys_exit, %union.anon.1 { ptr @__tracepoint_sys_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sys_exit }, ptr @print_fmt_sys_exit, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_sys_exit = internal global ptr @event_sys_exit, section "_ftrace_events", align 4
@__bpf_trace_tp_map_sys_enter = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_sys_enter, ptr @__bpf_trace_sys_enter, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_sys_exit = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_sys_exit, ptr @__bpf_trace_sys_exit, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@regoffset_table = internal constant { [19 x %struct.pt_regs_offset], [40 x i8] } { [19 x %struct.pt_regs_offset] [%struct.pt_regs_offset { ptr @.str.8, i32 0 }, %struct.pt_regs_offset { ptr @.str.9, i32 4 }, %struct.pt_regs_offset { ptr @.str.10, i32 8 }, %struct.pt_regs_offset { ptr @.str.11, i32 12 }, %struct.pt_regs_offset { ptr @.str.12, i32 16 }, %struct.pt_regs_offset { ptr @.str.13, i32 20 }, %struct.pt_regs_offset { ptr @.str.14, i32 24 }, %struct.pt_regs_offset { ptr @.str.15, i32 28 }, %struct.pt_regs_offset { ptr @.str.16, i32 32 }, %struct.pt_regs_offset { ptr @.str.17, i32 36 }, %struct.pt_regs_offset { ptr @.str.18, i32 40 }, %struct.pt_regs_offset { ptr @.str.19, i32 44 }, %struct.pt_regs_offset { ptr @.str.20, i32 48 }, %struct.pt_regs_offset { ptr @.str.21, i32 52 }, %struct.pt_regs_offset { ptr @.str.22, i32 56 }, %struct.pt_regs_offset { ptr @.str.23, i32 60 }, %struct.pt_regs_offset { ptr @.str.24, i32 64 }, %struct.pt_regs_offset { ptr @.str.25, i32 68 }, %struct.pt_regs_offset zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_ptrace__328_245_ptrace_break_init1 = internal global ptr @ptrace_break_init, section ".initcall1.init", align 4
@user_arm_view = internal constant { %struct.user_regset_view, [44 x i8] } { %struct.user_regset_view { ptr @.str.26, ptr @arm_regsets, i32 3, i32 0, i16 40, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/kernel/ptrace.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unsigned long[6]\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"args\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NR %ld (%lx, %lx, %lx, %lx, %lx, %lx)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NR %ld = %ld\0A\00", [18 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r0\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r1\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r2\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r3\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r4\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r5\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r6\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r7\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r8\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r9\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"r10\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fp\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ip\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sp\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lr\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpsr\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ORIG_r0\00", [24 x i8] zeroinitializer }, align 32
@arm_break_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 268435455, i32 133169648, i32 32, i32 0, ptr @break_trap }, [36 x i8] zeroinitializer }, align 32
@thumb_break_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 -1, i32 56833, i32 32, i32 32, ptr @break_trap }, [36 x i8] zeroinitializer }, align 32
@thumb2_break_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 -1, i32 -135225344, i32 32, i32 32, ptr @break_trap }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@arm_regsets = internal constant { [3 x %struct.user_regset], [52 x i8] } { [3 x %struct.user_regset] [%struct.user_regset { ptr @gpr_get, ptr @gpr_set, ptr null, ptr null, i32 18, i32 4, i32 4, i32 0, i32 1 }, %struct.user_regset { ptr @fpa_get, ptr @fpa_set, ptr null, ptr null, i32 29, i32 4, i32 4, i32 0, i32 2 }, %struct.user_regset { ptr @vfp_get, ptr @vfp_set, ptr null, ptr null, i32 65, i32 4, i32 4, i32 0, i32 1024 }], [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/trace/events/syscalls.h\00", [32 x i8] zeroinitializer }, align 32
@trace_sys_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_sys_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.regs_query_register_name = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 3, i64 6, i64 12, i64 13, i64 14, i64 15, i64 18, i64 19, i64 22, i64 23, i64 27, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 65540, i64 65544]
@___asan_gen_.34 = private unnamed_addr constant [37 x i8] c"str__raw_syscalls__trace_system_name\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 36, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"trace_event_fields_sys_enter\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_sys_enter\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"print_fmt_sys_enter\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"event_sys_enter\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"trace_event_fields_sys_exit\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_sys_exit\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"print_fmt_sys_exit\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"event_sys_exit\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"regoffset_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 69, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"user_arm_view\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 720, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 784, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 44, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 70, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 71, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 72, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 73, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 74, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 75, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 76, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 77, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 78, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 79, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 80, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 81, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 82, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 83, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 84, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 85, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 86, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 87, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"arm_break_hook\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 213, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"thumb_break_hook\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 221, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"thumb2_break_hook\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 229, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 721, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"arm_regsets\00", align 1
@___asan_gen_.158 = private constant [28 x i8] c"../arch/arm/kernel/ptrace.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 683, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 109, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [35 x i8] c"../include/trace/events/syscalls.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 18, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 108, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [38 x i8] c"switch.table.regs_query_register_name\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__bpf_trace_tp_map_sys_enter, ptr @__bpf_trace_tp_map_sys_exit, ptr @__event_sys_enter, ptr @__event_sys_exit, ptr @__initcall__kmod_ptrace__326_42_trace_init_flags_sys_enterearly, ptr @__initcall__kmod_ptrace__327_66_trace_init_flags_sys_exitearly, ptr @__initcall__kmod_ptrace__328_245_ptrace_break_init1, ptr @__tracepoint_ptr_sys_enter, ptr @__tracepoint_ptr_sys_exit, ptr @__tracepoint_sys_enter, ptr @__tracepoint_sys_exit, ptr @event_class_sys_enter, ptr @event_class_sys_exit, ptr @event_sys_enter, ptr @event_sys_exit, ptr @str__raw_syscalls__trace_system_name, ptr @trace_event_fields_sys_enter, ptr @trace_event_type_funcs_sys_enter, ptr @print_fmt_sys_enter, ptr @trace_event_fields_sys_exit, ptr @trace_event_type_funcs_sys_exit, ptr @print_fmt_sys_exit, ptr @regoffset_table, ptr @user_arm_view, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @arm_break_hook, ptr @thumb_break_hook, ptr @thumb2_break_hook, ptr @.str.26, ptr @arm_regsets, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.regs_query_register_name], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__raw_syscalls__trace_system_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_sys_enter to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_sys_enter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_sys_enter to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_sys_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_sys_exit to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_sys_exit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_sys_exit to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_sys_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regoffset_table to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_arm_view to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_break_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thumb_break_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thumb2_break_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_regsets to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.regs_query_register_name to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sys_enter(ptr nocapture readnone %__data, ptr noundef %regs, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_enter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void %2(ptr noundef %4, ptr noundef %regs, i32 noundef %id) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @syscall_regfunc() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscall_unregfunc() #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sys_exit(ptr nocapture readnone %__data, ptr noundef %regs, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void %2(ptr noundef %4, ptr noundef %regs, i32 noundef %ret) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @trace_init_flags_sys_enter() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_enter, i32 0, i32 8), align 4
  %or = or i32 %0, 2
  store i32 %or, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_enter, i32 0, i32 8), align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @trace_init_flags_sys_exit() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_exit, i32 0, i32 8), align 4
  %or = or i32 %0, 2
  store i32 %or, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_exit, i32 0, i32 8), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sys_enter(ptr noundef %__data, ptr nocapture noundef readonly %regs, i32 noundef %id) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !117

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !118

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %id6 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id6, align 4
  %args = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %call3, i32 0, i32 2
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 17
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %args, align 4
  %incdec.ptr.i = getelementptr %struct.trace_event_raw_sys_enter, ptr %call3, i32 0, i32 2, i32 1
  %add.ptr.i = getelementptr i32, ptr %regs, i32 1
  %7 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %add.ptr.i, i32 20)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_sys_enter(ptr noundef %__data, ptr nocapture noundef readonly %regs, i32 noundef %id) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !119
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !107) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id17 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %id, ptr %id17, align 4
  %args = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %call13, i32 0, i32 2
  %arrayidx.i40 = getelementptr [18 x i32], ptr %regs, i32 0, i32 17
  %28 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i40, align 4
  %30 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %args, align 4
  %incdec.ptr.i = getelementptr %struct.trace_event_raw_sys_enter, ptr %call13, i32 0, i32 2, i32 1
  %add.ptr.i = getelementptr i32, ptr %regs, i32 1
  %31 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %add.ptr.i, i32 20)
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sys_exit(ptr noundef %__data, ptr nocapture noundef readnone %regs, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !117

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !118

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %3 = call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i18 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i18 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i, align 4
  %abi_syscall.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %abi_syscall.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %abi_syscall.i, align 4
  %and.i19 = and i32 %10, 1048575
  %id = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i19, ptr %id, align 4
  %ret8 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %ret8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ret, ptr %ret8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_sys_exit(ptr noundef %__data, ptr nocapture noundef readnone %regs, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !119
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !107) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stack.i, align 4
  %abi_syscall.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %abi_syscall.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %abi_syscall.i, align 4
  %and.i41 = and i32 %32, 1048575
  %id = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i41, ptr %id, align 4
  %ret19 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ret19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %ret, ptr %ret19, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_sys_enter(ptr noundef %__data, ptr noundef %regs, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %regs to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %id to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_sys_exit(ptr noundef %__data, ptr noundef %regs, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %regs to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regs_query_register_offset(ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.8, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %for.inc.16.if.then_crit_edge, %for.inc.15.if.then_crit_edge, %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %roff.07.lcssa = phi ptr [ @regoffset_table, %entry.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 1), %for.inc.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 2), %for.inc.1.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 3), %for.inc.2.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 4), %for.inc.3.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 5), %for.inc.4.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 6), %for.inc.5.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 7), %for.inc.6.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 8), %for.inc.7.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 9), %for.inc.8.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 10), %for.inc.9.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 11), %for.inc.10.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 12), %for.inc.11.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 13), %for.inc.12.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 14), %for.inc.13.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 15), %for.inc.14.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 16), %for.inc.15.if.then_crit_edge ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 17), %for.inc.16.if.then_crit_edge ]
  %offset = getelementptr inbounds %struct.pt_regs_offset, ptr %roff.07.lcssa, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.9, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.10, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.11, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.12, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.13, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.14, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.15, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.16, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.17, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %call.10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.18, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %call.11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.19, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %tobool.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool.not.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %call.12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.20, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %tobool.not.12 = icmp eq i32 %call.12, 0
  br i1 %tobool.not.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %call.13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.21, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13)
  %tobool.not.13 = icmp eq i32 %call.13, 0
  br i1 %tobool.not.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %call.14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.22, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14)
  %tobool.not.14 = icmp eq i32 %call.14, 0
  br i1 %tobool.not.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %call.15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.23, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.15)
  %tobool.not.15 = icmp eq i32 %call.15, 0
  br i1 %tobool.not.15, label %for.inc.14.if.then_crit_edge, label %for.inc.15

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.15:                                       ; preds = %for.inc.14
  %call.16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.24, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.16)
  %tobool.not.16 = icmp eq i32 %call.16, 0
  br i1 %tobool.not.16, label %for.inc.15.if.then_crit_edge, label %for.inc.16

for.inc.15.if.then_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.16:                                       ; preds = %for.inc.15
  %call.17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.25, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.17)
  %tobool.not.17 = icmp eq i32 %call.17, 0
  br i1 %tobool.not.17, label %for.inc.16.if.then_crit_edge, label %for.inc.16.cleanup_crit_edge

for.inc.16.cleanup_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc.16.if.then_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

cleanup:                                          ; preds = %for.inc.16.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -22, %for.inc.16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @regs_query_register_name(i32 noundef %offset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call i32 @llvm.fshl.i32(i32 %offset, i32 %offset, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %0)
  %1 = icmp ult i32 %0, 18
  br i1 %1, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [18 x ptr], ptr @switch.table.regs_query_register_name, i32 0, i32 %0
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %.lcssa = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @regs_within_kernel_stack(ptr nocapture noundef readonly %regs, i32 noundef %addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = xor i32 %1, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %2)
  %cmp = icmp ult i32 %2, 16384
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @regs_get_kernel_stack_nth(ptr nocapture noundef readonly %regs, i32 noundef %n) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i32, ptr %2, i32 %n
  %3 = ptrtoint ptr %add.ptr to i32
  %4 = xor i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %4)
  %cmp.i = icmp ult i32 %4, 16384
  br i1 %cmp.i, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ptrace_disable(ptr nocapture noundef %child) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ptrace_break(ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 @force_sig_fault(i32 noundef 5, i32 noundef 1, ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ptrace_break_init() #10 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_undef_hook(ptr noundef nonnull @arm_break_hook) #17
  tail call void @register_undef_hook(ptr noundef nonnull @thumb_break_hook) #17
  tail call void @register_undef_hook(ptr noundef nonnull @thumb2_break_hook) #17
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @clear_ptrace_hw_breakpoint(ptr nocapture noundef writeonly %tsk) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 219, i32 3
  %0 = call ptr @memset(ptr %debug, i32 0, i32 128)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_ptrace_hw_breakpoint(ptr nocapture noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 219, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %debug, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @unregister_hw_breakpoint(ptr noundef nonnull %1) #17
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @task_user_regset_view(ptr nocapture noundef readnone %task) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @user_arm_view
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_ptrace(ptr noundef %child, i32 noundef %request, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %attr.i.i = alloca %struct.perf_event_attr, align 8
  %gen_len.i = alloca i32, align 4
  %gen_type.i = alloca i32, align 4
  %attr.i = alloca %struct.perf_event_attr, align 8
  %newregs.i.i = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %1 = zext i32 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %request, label %sw.default [
    i32 3, label %sw.bb
    i32 6, label %sw.bb1
    i32 12, label %sw.bb3
    i32 13, label %sw.bb5
    i32 14, label %sw.bb7
    i32 15, label %sw.bb9
    i32 18, label %sw.bb11
    i32 19, label %sw.bb13
    i32 22, label %sw.bb15
    i32 23, label %sw.bb18
    i32 27, label %sw.bb20
    i32 28, label %sw.bb22
    i32 29, label %sw.bb24
    i32 30, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  %and.i62 = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %2 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %addr, label %if.else9.i [
    i32 65536, label %if.then1.i
    i32 65540, label %if.then3.i
    i32 65544, label %if.then7.i
  ]

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 53
  %3 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm.i, align 8
  %start_code.i = getelementptr inbounds %struct.anon.15, ptr %4, i32 0, i32 28
  %5 = ptrtoint ptr %start_code.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_code.i, align 4
  br label %if.end19.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %mm4.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 53
  %7 = ptrtoint ptr %mm4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mm4.i, align 8
  %start_data.i = getelementptr inbounds %struct.anon.15, ptr %8, i32 0, i32 30
  %9 = ptrtoint ptr %start_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_data.i, align 4
  br label %if.end19.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %mm8.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 53
  %11 = ptrtoint ptr %mm8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mm8.i, align 8
  %end_code.i = getelementptr inbounds %struct.anon.15, ptr %12, i32 0, i32 29
  %13 = ptrtoint ptr %end_code.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end_code.i, align 8
  br label %if.end19.i

if.else9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %addr)
  %cmp10.i = icmp ult i32 %addr, 72
  br i1 %cmp10.i, label %if.then11.i, label %if.else12.i

if.then11.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #19
  %shr.i = lshr i32 %addr, 2
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %16, i32 16304
  %arrayidx.i.i = getelementptr [18 x i32], ptr %add.ptr1.i.i, i32 0, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end19.i

if.else12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 295, i32 %addr)
  %cmp13.i = icmp ugt i32 %addr, 295
  br i1 %cmp13.i, label %if.else12.i.sw.epilog_crit_edge, label %if.else12.i.if.end19.i_crit_edge

if.else12.i.if.end19.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

if.else12.i.sw.epilog_crit_edge:                  ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end19.i:                                       ; preds = %if.else12.i.if.end19.i_crit_edge, %if.then11.i, %if.then7.i, %if.then3.i, %if.then1.i
  %tmp.0.i = phi i32 [ %6, %if.then1.i ], [ %10, %if.then3.i ], [ %14, %if.then7.i ], [ %18, %if.then11.i ], [ 0, %if.else12.i.if.end19.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 271) #17
  %19 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #14, !srcloc !120
  %and.i.i = and i32 %21, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %tmp.0.i, i32 -1226833921) #17, !srcloc !123
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %and.i63 = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp ne i32 %and.i63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 295, i32 %addr)
  %cmp.i = icmp ugt i32 %addr, 295
  %or.cond.i = or i1 %cmp.i, %tobool.not.i64
  br i1 %or.cond.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i65

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i65:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %addr)
  %cmp1.i = icmp ugt i32 %addr, 71
  br i1 %cmp1.i, label %if.end.i65.sw.epilog_crit_edge, label %if.end3.i

if.end.i65.sw.epilog_crit_edge:                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i65
  %shr.i66 = lshr i32 %addr, 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %newregs.i.i) #17
  %stack.i.i67 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %23 = ptrtoint ptr %stack.i.i67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i.i67, align 4
  %add.ptr1.i.i68 = getelementptr i8, ptr %24, i32 16304
  %25 = call ptr @memcpy(ptr %newregs.i.i, ptr %add.ptr1.i.i68, i32 72)
  %arrayidx.i.i69 = getelementptr [18 x i32], ptr %newregs.i.i, i32 0, i32 %shr.i66
  %26 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %data, ptr %arrayidx.i.i69, align 4
  %arrayidx.i.i.i = getelementptr inbounds [18 x i32], ptr %newregs.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i70 = and i32 %28, 31
  %and6.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end3.i.put_user_reg.exit.i_crit_edge

if.end3.i.put_user_reg.exit.i_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_user_reg.exit.i

if.then.i.i.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i.i70)
  %cmp7.i.i.i = icmp eq i32 %and.i.i.i70, 16
  br i1 %cmp7.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %29 = load i32, ptr @elf_hwcap, align 4
  %and9.i.i.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool.not.i.i.i = icmp ne i32 %and9.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i70)
  %cmp10.i.i.i = icmp eq i32 %and.i.i.i70, 0
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 %cmp10.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %if.end.i.i.i.put_user_reg.exit.i_crit_edge

if.end.i.i.i.put_user_reg.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_user_reg.exit.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i.i.i.if.then.i.i_crit_edge, %if.then.i.i.i.if.then.i.i_crit_edge
  %arrayidx3.i.i = getelementptr [18 x i32], ptr %add.ptr1.i.i68, i32 0, i32 %shr.i66
  %30 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %data, ptr %arrayidx3.i.i, align 4
  br label %put_user_reg.exit.i

put_user_reg.exit.i:                              ; preds = %if.then.i.i, %if.end.i.i.i.put_user_reg.exit.i_crit_edge, %if.end3.i.put_user_reg.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ 0, %if.then.i.i ], [ -22, %if.end.i.i.i.put_user_reg.exit.i_crit_edge ], [ -22, %if.end3.i.put_user_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %newregs.i.i) #17
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 @copy_regset_to_user(ptr noundef %child, ptr noundef nonnull @user_arm_view, i32 noundef 0, i32 noundef 0, i32 noundef 72, ptr noundef %0) #17
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 72, i32 -1226833920) #21, !srcloc !124
  %asmresult.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i72 = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i72, label %if.end3.i74, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end3.i74:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 @gpr_set(ptr noundef %child, ptr noundef nonnull @arm_regsets, i32 noundef 0, i32 noundef 72, ptr noundef null, ptr noundef %0) #17
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = tail call i32 @copy_regset_to_user(ptr noundef %child, ptr noundef nonnull @user_arm_view, i32 noundef 1, i32 noundef 0, i32 noundef 152, ptr noundef %0) #17
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 152, i32 -1226833920) #21, !srcloc !124
  %asmresult.i76 = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i76)
  %cmp.i77 = icmp eq i32 %asmresult.i76, 0
  br i1 %cmp.i77, label %if.end3.i80, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end3.i80:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #19
  %call.i79 = tail call i32 @fpa_set(ptr noundef %child, ptr noundef getelementptr inbounds ([3 x %struct.user_regset], ptr @arm_regsets, i32 0, i32 1), i32 noundef 0, i32 noundef 152, ptr noundef null, ptr noundef %0) #17
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %33 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stack.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i83 = icmp eq i32 %37, 0
  br i1 %tobool.not.i83, label %sw.bb11.sw.epilog_crit_edge, label %if.end.i84

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i84:                                       ; preds = %sw.bb11
  tail call void @iwmmxt_task_disable(ptr noundef %34) #17
  %fpstate.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 9
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #17
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i, label %if.end.i84.sw.epilog_crit_edge, label %if.end.i.i.i87

if.end.i84.sw.epilog_crit_edge:                   ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i.i.i87:                                   ; preds = %if.end.i84
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 152, i32 -1226833920) #21, !srcloc !125
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i86 = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i86, label %copy_to_user.exit.i, label %if.end.i.i.i87.sw.epilog_crit_edge

if.end.i.i.i87.sw.epilog_crit_edge:               ; preds = %if.end.i.i.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i87
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fpstate.i, i32 noundef 152) #17
  %call.i1.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %fpstate.i, i32 noundef 152) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %stack.i89 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %39 = ptrtoint ptr %stack.i89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stack.i89, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i90 = icmp eq i32 %43, 0
  br i1 %tobool.not.i90, label %sw.bb13.sw.epilog_crit_edge, label %if.end.i93

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i93:                                       ; preds = %sw.bb13
  tail call void @iwmmxt_task_release(ptr noundef %40) #17
  %fpstate.i91 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 9
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #17
  %call.i.i.i95 = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i95, label %if.end.i93.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i93.if.then11.i.i.i_crit_edge:             ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i93
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 152, i32 -1226833920) #21, !srcloc !126
  %asmresult.i.i.i97 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i97)
  %cmp.i.i.i98 = icmp eq i32 %asmresult.i.i.i97, 0
  br i1 %cmp.i.i.i98, label %if.end.i.i.i100, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !117

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

if.end.i.i.i100:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i99 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fpstate.i91, i32 noundef 152) #17
  %45 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #14, !srcloc !120
  %and.i.i.i.i.i = and i32 %47, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %fpstate.i91, ptr noundef %0, i32 noundef 152) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i100.sw.epilog_crit_edge, label %if.end.i.i.i100.if.then11.i.i.i_crit_edge, !prof !117

if.end.i.i.i100.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

if.end.i.i.i100.sw.epilog_crit_edge:              ; preds = %if.end.i.i.i100
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i100.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i93.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i100.if.then11.i.i.i_crit_edge ], [ 152, %if.end.i93.if.then11.i.i.i_crit_edge ], [ 152, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 152, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %fpstate.i91, i32 %sub.i.i.i
  %48 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %stack = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %49 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stack, align 4
  %tp_value = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %tp_value to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tp_value, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 785) #17
  %53 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #14, !srcloc !120
  %and.i = and i32 %55, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %56 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %52, i32 -1226833921) #17, !srcloc !127
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and = and i32 %data, 1048575
  %stack19 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 1
  %57 = ptrtoint ptr %stack19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stack19, align 4
  %abi_syscall = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %abi_syscall to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and, ptr %abi_syscall, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call21 = tail call i32 @copy_regset_to_user(ptr noundef %child, ptr noundef nonnull @user_arm_view, i32 noundef 2, i32 noundef 0, i32 noundef 260, ptr noundef %0) #17
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %60 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 260, i32 -1226833920) #21, !srcloc !124
  %asmresult.i102 = extractvalue { i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i102)
  %cmp.i103 = icmp eq i32 %asmresult.i102, 0
  br i1 %cmp.i103, label %if.end3.i106, label %sw.bb22.sw.epilog_crit_edge

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end3.i106:                                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #19
  %call.i105 = tail call i32 @vfp_set(ptr noundef %child, ptr noundef getelementptr inbounds ([3 x %struct.user_regset], ptr @arm_regsets, i32 0, i32 2), i32 noundef 0, i32 noundef 260, ptr noundef null, ptr noundef %0) #17
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp.i109 = icmp eq i32 %addr, 0
  br i1 %cmp.i109, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 @hw_breakpoint_slots(i32 noundef 0) #17
  %call1.i.i = tail call i32 @hw_breakpoint_slots(i32 noundef 1) #17
  %call3.i.i = tail call zeroext i8 @arch_get_debug_arch() #17
  %call4.i.i = tail call zeroext i8 @arch_get_max_wp_len() #17
  %conv5.i.i = zext i8 %call3.i.i to i32
  %conv6.i.i = zext i8 %call4.i.i to i32
  %61 = shl nuw nsw i32 %conv5.i.i, 16
  %62 = shl nuw nsw i32 %conv6.i.i, 8
  %shl8.i.i = or i32 %62, %61
  %conv9.i.i = and i32 %call1.i.i, 255
  %or10.i.i = or i32 %shl8.i.i, %conv9.i.i
  %shl11.i.i = shl nuw i32 %or10.i.i, 8
  %conv12.i.i = and i32 %call.i.i, 255
  %or13.i.i = or i32 %shl11.i.i, %conv12.i.i
  br label %put.i

if.else.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp.i.i = icmp slt i32 %addr, 0
  %sub.i.i = sub i32 32, %addr
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %addr
  %sub1.i.i = add i32 %spec.select.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub1.i.i)
  %63 = icmp ugt i32 %sub1.i.i, 63
  br i1 %63, label %if.else.i.sw.epilog_crit_edge, label %if.end.i111

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i111:                                      ; preds = %if.else.i
  %shr.i37.i = lshr i32 %sub1.i.i, 1
  %debug.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 219, i32 3
  %arrayidx.i = getelementptr [32 x ptr], ptr %debug.i, i32 0, i32 %shr.i37.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i110 = icmp eq ptr %65, null
  br i1 %tobool.not.i110, label %if.end.i111.put.i_crit_edge, label %if.end6.i

if.end.i111.put.i_crit_edge:                      ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #19
  br label %put.i

if.end6.i:                                        ; preds = %if.end.i111
  %hw.i.i = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 25
  %ctrl.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %arch_ctrl.sroa.0.0.copyload.i = load i32, ptr %ctrl.i, align 4
  %67 = and i32 %arch_ctrl.sroa.0.0.copyload.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool8.not35.i = icmp eq i32 %67, 0
  br i1 %tobool8.not35.i, label %if.end6.i.while.body.i_crit_edge, label %if.end6.i.while.end.i_crit_edge

if.end6.i.while.end.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end6.i.while.body.i_crit_edge
  %arch_ctrl.sroa.0.036.i = phi i32 [ %bf.set.i, %while.body.i.while.body.i_crit_edge ], [ %arch_ctrl.sroa.0.0.copyload.i, %if.end6.i.while.body.i_crit_edge ]
  %68 = lshr i32 %arch_ctrl.sroa.0.036.i, 1
  %bf.shl.i = and i32 %68, 4064
  %bf.clear13.i = and i32 %arch_ctrl.sroa.0.036.i, -8161
  %bf.set.i = or i32 %bf.shl.i, %bf.clear13.i
  %69 = and i32 %arch_ctrl.sroa.0.036.i, 64
  %tobool8.not.i = icmp eq i32 %69, 0
  br i1 %tobool8.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end6.i.while.end.i_crit_edge
  %arch_ctrl.sroa.0.0.lcssa.i = phi i32 [ %arch_ctrl.sroa.0.0.copyload.i, %if.end6.i.while.end.i_crit_edge ], [ %bf.set.i, %while.body.i.while.end.i_crit_edge ]
  %and14.i = and i32 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else17.i, label %if.then16.i

if.then16.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %70 = getelementptr inbounds %struct.perf_event, ptr %65, i32 0, i32 21, i32 9
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %70, align 8
  %conv.i = trunc i64 %72 to i32
  br label %put.i

if.else17.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %or17.i.i = and i32 %arch_ctrl.sroa.0.0.lcssa.i, 4202495
  br label %put.i

put.i:                                            ; preds = %if.else17.i, %if.then16.i, %if.end.i111.put.i_crit_edge, %if.then.i
  %reg.0.i = phi i32 [ %or13.i.i, %if.then.i ], [ %conv.i, %if.then16.i ], [ %or17.i.i, %if.else17.i ], [ 0, %if.end.i111.put.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 471) #17
  %73 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i112 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i112 to ptr
  %cpu_domain.i.i.i113 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i113) #14, !srcloc !120
  %and.i.i114 = and i32 %75, -13
  %or.i.i115 = or i32 %and.i.i114, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i115) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %76 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %reg.0.i, i32 -1226833921) #17, !srcloc !128
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool23.not.i = icmp eq i32 %76, 0
  %spec.select.i116 = select i1 %tobool23.not.i, i32 0, i32 -14
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen_len.i) #17
  %77 = ptrtoint ptr %gen_len.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %gen_len.i, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen_type.i) #17
  %78 = ptrtoint ptr %gen_type.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %gen_type.i, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %attr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp.i117 = icmp eq i32 %addr, 0
  br i1 %cmp.i117, label %sw.bb26.ptrace_sethbpregs.exit_crit_edge, label %if.else.i122

sw.bb26.ptrace_sethbpregs.exit_crit_edge:         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #19
  br label %ptrace_sethbpregs.exit

if.else.i122:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp1.i118 = icmp slt i32 %addr, 0
  %..i = select i1 %cmp1.i118, i32 3, i32 4
  %sub.i.i119 = sub i32 32, %addr
  %spec.select.i.i120 = select i1 %cmp1.i118, i32 %sub.i.i119, i32 %addr
  %sub1.i.i121 = add i32 %spec.select.i.i120, -1
  %shr.i.i = ashr i32 %sub1.i.i121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub1.i.i121)
  %79 = icmp ugt i32 %sub1.i.i121, 63
  br i1 %79, label %if.else.i122.ptrace_sethbpregs.exit_crit_edge, label %if.end8.i

if.else.i122.ptrace_sethbpregs.exit_crit_edge:    ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #19
  br label %ptrace_sethbpregs.exit

if.end8.i:                                        ; preds = %if.else.i122
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 500) #17
  %80 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i123 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i123 to ptr
  %cpu_domain.i.i.i124 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i124) #14, !srcloc !120
  %and.i.i125 = and i32 %82, -13
  %or.i.i126 = or i32 %and.i.i125, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i126) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %83 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #17, !srcloc !129
  %asmresult.i127 = extractvalue { i32, i32 } %83, 0
  %asmresult10.i = extractvalue { i32, i32 } %83, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i127)
  %tobool.not.i128 = icmp eq i32 %asmresult.i127, 0
  br i1 %tobool.not.i128, label %if.end13.i, label %if.end8.i.ptrace_sethbpregs.exit_crit_edge

if.end8.i.ptrace_sethbpregs.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ptrace_sethbpregs.exit

if.end13.i:                                       ; preds = %if.end8.i
  %debug.i129 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 219, i32 3
  %arrayidx.i130 = getelementptr [32 x ptr], ptr %debug.i129, i32 0, i32 %shr.i.i
  %84 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i130, align 4
  %tobool14.not.i = icmp eq ptr %85, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end13.i.if.end25.i_crit_edge

if.end13.i.if.end25.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %attr.i.i) #17
  %86 = getelementptr inbounds i8, ptr %attr.i.i, i32 8
  %87 = call ptr @memset(ptr %86, i32 0, i32 120)
  %88 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 5, ptr %attr.i.i, align 8
  %size.i.i.i.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 128, ptr %size.i.i.i.i, align 4
  %pinned.i.i.i.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i.i, i32 0, i32 6
  %90 = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 1, ptr %90, align 8
  %92 = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i.i, i32 0, i32 10
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 4, ptr %92, align 8
  %bp_type.i.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i.i, i32 0, i32 8
  %94 = ptrtoint ptr %bp_type.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %..i, ptr %bp_type.i.i, align 4
  %95 = ptrtoint ptr %pinned.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 -6629298651489370112, ptr %pinned.i.i.i.i, align 8
  %call.i.i131 = call ptr @register_user_hw_breakpoint(ptr noundef nonnull %attr.i.i, ptr noundef nonnull @ptrace_hbptriggered, ptr noundef null, ptr noundef %child) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %attr.i.i) #17
  %cmp.i62.i = icmp ugt ptr %call.i.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  %96 = ptrtoint ptr %call.i.i131 to i32
  br label %ptrace_sethbpregs.exit

if.end20.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  %97 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i.i131, ptr %arrayidx.i130, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end20.i, %if.end13.i.if.end25.i_crit_edge
  %bp.0.i = phi ptr [ %85, %if.end13.i.if.end25.i_crit_edge ], [ %call.i.i131, %if.end20.i ]
  %attr26.i = getelementptr inbounds %struct.perf_event, ptr %bp.0.i, i32 0, i32 21
  %98 = call ptr @memcpy(ptr %attr.i, ptr %attr26.i, i32 128)
  %and.i132 = and i32 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i132)
  %tobool27.not.i = icmp eq i32 %and.i132, 0
  br i1 %tobool27.not.i, label %if.else29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i133 = zext i32 %asmresult10.i to i64
  %99 = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i, i32 0, i32 9
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv.i133, ptr %99, align 8
  br label %if.end44.i

if.else29.i:                                      ; preds = %if.end25.i
  %bf.set26.i.i = or i32 %asmresult10.i, -4202496
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %bf.set26.i.i, 0
  %call30.i = call i32 @arch_bp_generic_fields([1 x i32] %.fca.0.insert.i, ptr noundef nonnull %gen_len.i, ptr noundef nonnull %gen_type.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.else29.i.ptrace_sethbpregs.exit_crit_edge

if.else29.i.ptrace_sethbpregs.exit_crit_edge:     ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ptrace_sethbpregs.exit

if.end33.i:                                       ; preds = %if.else29.i
  %101 = ptrtoint ptr %gen_type.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %gen_type.i, align 4
  %and34.i = and i32 %102, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i, i32 %102)
  %cmp35.not.i = icmp eq i32 %and34.i, %102
  br i1 %cmp35.not.i, label %if.end38.i, label %if.end33.i.ptrace_sethbpregs.exit_crit_edge

if.end33.i.ptrace_sethbpregs.exit_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ptrace_sethbpregs.exit

if.end38.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  %103 = ptrtoint ptr %gen_len.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %gen_len.i, align 4
  %conv39.i = sext i32 %104 to i64
  %105 = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i, i32 0, i32 10
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv39.i, ptr %105, align 8
  %bp_type.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i, i32 0, i32 8
  %107 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %102, ptr %bp_type.i, align 4
  %disabled.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr.i, i32 0, i32 6
  %108 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %bf.load42.i = load i64, ptr %disabled.i, align 8
  %109 = xor i32 %asmresult10.i, -1
  %bf.value.i = zext i32 %109 to i64
  %bf.shl.i134 = shl i64 %bf.value.i, 63
  %bf.clear43.i = and i64 %bf.load42.i, 9223372036854775807
  %bf.set.i135 = or i64 %bf.clear43.i, %bf.shl.i134
  store i64 %bf.set.i135, ptr %disabled.i, align 8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end38.i, %if.then28.i
  %call45.i = call i32 @modify_user_hw_breakpoint(ptr noundef %bp.0.i, ptr noundef nonnull %attr.i) #17
  br label %ptrace_sethbpregs.exit

ptrace_sethbpregs.exit:                           ; preds = %if.end44.i, %if.end33.i.ptrace_sethbpregs.exit_crit_edge, %if.else29.i.ptrace_sethbpregs.exit_crit_edge, %if.then18.i, %if.end8.i.ptrace_sethbpregs.exit_crit_edge, %if.else.i122.ptrace_sethbpregs.exit_crit_edge, %sw.bb26.ptrace_sethbpregs.exit_crit_edge
  %ret.0.i136 = phi i32 [ 0, %sw.bb26.ptrace_sethbpregs.exit_crit_edge ], [ %call45.i, %if.end44.i ], [ %call30.i, %if.else29.i.ptrace_sethbpregs.exit_crit_edge ], [ %96, %if.then18.i ], [ -22, %if.else.i122.ptrace_sethbpregs.exit_crit_edge ], [ -14, %if.end8.i.ptrace_sethbpregs.exit_crit_edge ], [ -22, %if.end33.i.ptrace_sethbpregs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %attr.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_type.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_len.i) #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = tail call i32 @ptrace_request(ptr noundef %child, i32 noundef %request, i32 noundef %addr, i32 noundef %data) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %ptrace_sethbpregs.exit, %put.i, %if.else.i.sw.epilog_crit_edge, %if.end3.i106, %sw.bb22.sw.epilog_crit_edge, %sw.bb20, %sw.bb18, %sw.bb15, %if.then11.i.i.i, %if.end.i.i.i100.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %copy_to_user.exit.i, %if.end.i.i.i87.sw.epilog_crit_edge, %if.end.i84.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %if.end3.i80, %sw.bb9.sw.epilog_crit_edge, %sw.bb7, %if.end3.i74, %sw.bb5.sw.epilog_crit_edge, %sw.bb3, %put_user_reg.exit.i, %if.end.i65.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end19.i, %if.else12.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call28, %sw.default ], [ %ret.0.i136, %ptrace_sethbpregs.exit ], [ %call21, %sw.bb20 ], [ 0, %sw.bb18 ], [ %56, %sw.bb15 ], [ %call8, %sw.bb7 ], [ %call4, %sw.bb3 ], [ %22, %if.end19.i ], [ -5, %sw.bb.sw.epilog_crit_edge ], [ -5, %if.else12.i.sw.epilog_crit_edge ], [ %ret.0.i.i, %put_user_reg.exit.i ], [ -5, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.end.i65.sw.epilog_crit_edge ], [ %call.i, %if.end3.i74 ], [ -14, %sw.bb5.sw.epilog_crit_edge ], [ %call.i79, %if.end3.i80 ], [ -14, %sw.bb9.sw.epilog_crit_edge ], [ -61, %sw.bb11.sw.epilog_crit_edge ], [ -14, %if.end.i84.sw.epilog_crit_edge ], [ -14, %if.end.i.i.i87.sw.epilog_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ -13, %sw.bb13.sw.epilog_crit_edge ], [ 0, %if.end.i.i.i100.sw.epilog_crit_edge ], [ -14, %if.then11.i.i.i ], [ %call.i105, %if.end3.i106 ], [ -14, %sw.bb22.sw.epilog_crit_edge ], [ -22, %if.else.i.sw.epilog_crit_edge ], [ %spec.select.i116, %put.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_regset_to_user(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptrace_request(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @syscall_trace_enter(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 16384
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  store i32 0, ptr %arrayidx.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i, align 8
  %ptrace1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ptrace1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptrace1.i.i.i, align 16
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.tracehook_report_syscall.exit_crit_edge, label %if.end.i.i23.i

if.then.tracehook_report_syscall.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %tracehook_report_syscall.exit

if.end.i.i23.i:                                   ; preds = %if.then
  %ptrace_message.i.i18.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 153
  %13 = ptrtoint ptr %ptrace_message.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ptrace_message.i.i18.i, align 32
  %and4.i.i19.i = shl i32 %12, 4
  %14 = and i32 %and4.i.i19.i, 128
  %or.i.i20.i = or i32 %14, 5
  tail call void @ptrace_notify(i32 noundef %or.i.i20.i) #17
  %15 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i, align 8
  %exit_code.i.i21.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 58
  %17 = ptrtoint ptr %exit_code.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %exit_code.i.i21.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not.i.i22.i = icmp eq i32 %18, 0
  br i1 %tobool8.not.i.i22.i, label %if.end.i.i23.i.if.end19.i.i29.i_crit_edge, label %if.then9.i.i26.i

if.end.i.i23.i.if.end19.i.i29.i_crit_edge:        ; preds = %if.end.i.i23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i.i29.i

if.then9.i.i26.i:                                 ; preds = %if.end.i.i23.i
  call void @__sanitizer_cov_trace_pc() #19
  %call15.i.i24.i = tail call i32 @send_sig(i32 noundef %18, ptr noundef %16, i32 noundef 1) #17
  %19 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i, align 8
  %exit_code18.i.i25.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 58
  %21 = ptrtoint ptr %exit_code18.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %exit_code18.i.i25.i, align 16
  br label %if.end19.i.i29.i

if.end19.i.i29.i:                                 ; preds = %if.then9.i.i26.i, %if.end.i.i23.i.if.end19.i.i29.i_crit_edge
  %22 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i, align 8
  %ptrace_message22.i.i27.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 153
  %24 = ptrtoint ptr %ptrace_message22.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ptrace_message22.i.i27.i, align 32
  %25 = load ptr, ptr %task.i.i.i, align 8
  %stack.i.i.i.i.i28.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i.i.i.i28.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end19.i.i29.i.tracehook_report_syscall.exit_crit_edge, label %tracehook_report_syscall_entry.exit.i

if.end19.i.i29.i.tracehook_report_syscall.exit_crit_edge: ; preds = %if.end19.i.i29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tracehook_report_syscall.exit

tracehook_report_syscall_entry.exit.i:            ; preds = %if.end19.i.i29.i
  %signal.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 116, i32 1
  %30 = ptrtoint ptr %signal.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %signal.i.i.i.i.i, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %tracehook_report_syscall_entry.exit.i.tracehook_report_syscall.exit_crit_edge, label %if.then3.i

tracehook_report_syscall_entry.exit.i.tracehook_report_syscall.exit_crit_edge: ; preds = %tracehook_report_syscall_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tracehook_report_syscall.exit

if.then3.i:                                       ; preds = %tracehook_report_syscall_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %33 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %abi_syscall.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %abi_syscall.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %abi_syscall.i, align 4
  br label %tracehook_report_syscall.exit

tracehook_report_syscall.exit:                    ; preds = %if.then3.i, %tracehook_report_syscall_entry.exit.i.tracehook_report_syscall.exit_crit_edge, %if.end19.i.i29.i.tracehook_report_syscall.exit_crit_edge, %if.then.tracehook_report_syscall.exit_crit_edge
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %6, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %tracehook_report_syscall.exit, %entry.if.end_crit_edge
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stack.i, align 4
  %abi_syscall.i27 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %abi_syscall.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %abi_syscall.i27, align 4
  %and.i28 = and i32 %42, 1048575
  tail call void @secure_computing_strict(i32 noundef %and.i28) #17
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %stack.i29 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %stack.i29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stack.i29, align 4
  %abi_syscall.i30 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %abi_syscall.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %abi_syscall.i30, align 4
  %and.i31 = and i32 %48, 1048575
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %1, align 16384
  %51 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool9.not = icmp eq i32 %51, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @trace_sys_enter(ptr noundef %regs, i32 noundef %and.i31)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  ret i32 %and.i31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @secure_computing_strict(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sys_enter(ptr noundef %regs, i32 noundef %id) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_enter, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_sys_enter, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !130

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !131
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_enter, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %regs, i32 noundef %id) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !132
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !132
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !133
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sys_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_sys_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 40, ptr noundef nonnull @.str.31) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !134
  %38 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @syscall_trace_exit(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 16384
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regs, align 4
  tail call fastcc void @trace_sys_exit(ptr noundef %regs, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %1, align 16384
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  store i32 1, ptr %arrayidx.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %ptrace1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ptrace1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptrace1.i.i.i, align 16
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then6.tracehook_report_syscall.exit_crit_edge, label %if.end.i.i.i

if.then6.tracehook_report_syscall.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %tracehook_report_syscall.exit

if.end.i.i.i:                                     ; preds = %if.then6
  %ptrace_message.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 153
  %18 = ptrtoint ptr %ptrace_message.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %ptrace_message.i.i.i, align 32
  %and4.i.i.i = shl i32 %17, 4
  %19 = and i32 %and4.i.i.i, 128
  %or.i.i.i = or i32 %19, 5
  tail call void @ptrace_notify(i32 noundef %or.i.i.i) #17
  %20 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i, align 8
  %exit_code.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 58
  %22 = ptrtoint ptr %exit_code.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %exit_code.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i.if.end19.i.i.i_crit_edge, label %if.then9.i.i.i

if.end.i.i.i.if.end19.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call15.i.i.i = tail call i32 @send_sig(i32 noundef %23, ptr noundef %21, i32 noundef 1) #17
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %exit_code18.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 58
  %26 = ptrtoint ptr %exit_code18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %exit_code18.i.i.i, align 16
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.end.i.i.i.if.end19.i.i.i_crit_edge
  %27 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i, align 8
  %ptrace_message22.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 153
  %29 = ptrtoint ptr %ptrace_message22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ptrace_message22.i.i.i, align 32
  %30 = load ptr, ptr %task.i.i.i, align 8
  %stack.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %stack.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stack.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  br label %tracehook_report_syscall.exit

tracehook_report_syscall.exit:                    ; preds = %if.end19.i.i.i, %if.then6.tracehook_report_syscall.exit_crit_edge
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %11, ptr %arrayidx.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %tracehook_report_syscall.exit, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sys_exit(ptr noundef %regs, i32 noundef %ret) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_exit, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_sys_exit, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !130

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !117

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !135
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_exit, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %regs, i32 noundef %ret) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !136
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !136
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !117

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !133
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sys_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sys_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_sys_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 64, ptr noundef nonnull @.str.31) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !134
  %38 = tail call i32 @llvm.read_register.i32(metadata !107) #17
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
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sys_enter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %args = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.trace_event_raw_sys_enter, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.trace_event_raw_sys_enter, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.trace_event_raw_sys_enter, ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.trace_event_raw_sys_enter, ptr %1, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.trace_event_raw_sys_enter, ptr %1, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #17
  %call11 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sys_exit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %ret1 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5) #17
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #13

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @break_trap(ptr nocapture noundef readonly %regs, i32 noundef %instr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %call.i = tail call i32 @force_sig_fault(i32 noundef 5, i32 noundef 1, ptr noundef %2) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpr_get(ptr nocapture noundef readonly %target, ptr nocapture noundef readnone %regset, [2 x i32] %to.coerce) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %to.coerce.fca.1.extract = extractvalue [2 x i32] %to.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.coerce.fca.1.extract)
  %tobool.not.i = icmp eq i32 %to.coerce.fca.1.extract, 0
  br i1 %tobool.not.i, label %entry.membuf_write.exit_crit_edge, label %if.then.i

entry.membuf_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %membuf_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %stack = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 16304
  %to.coerce.fca.0.extract = extractvalue [2 x i32] %to.coerce, 0
  %2 = inttoptr i32 %to.coerce.fca.0.extract to ptr
  %3 = tail call i32 @llvm.umin.i32(i32 %to.coerce.fca.1.extract, i32 72) #17
  %4 = call ptr @memcpy(ptr %2, ptr %add.ptr1, i32 %3)
  %sub.i = sub i32 %to.coerce.fca.1.extract, %3
  br label %membuf_write.exit

membuf_write.exit:                                ; preds = %if.then.i, %entry.membuf_write.exit_crit_edge
  %to.sroa.4.0 = phi i32 [ 0, %entry.membuf_write.exit_crit_edge ], [ %sub.i, %if.then.i ]
  ret i32 %to.sroa.4.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpr_set(ptr nocapture noundef readonly %target, ptr nocapture noundef readnone %regset, i32 noundef %pos, i32 noundef %count, ptr noundef %kbuf, ptr noundef %ubuf) #0 align 64 {
entry:
  %kbuf.addr = alloca ptr, align 4
  %ubuf.addr = alloca ptr, align 4
  %newregs = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kbuf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %kbuf, ptr %kbuf.addr, align 4
  %1 = ptrtoint ptr %ubuf.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ubuf, ptr %ubuf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %newregs) #17
  %stack = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %2 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 16304
  %4 = call ptr @memcpy(ptr %newregs, ptr %add.ptr1, i32 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp ne i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %pos)
  %cmp10.i = icmp ult i32 %pos, 72
  %or.cond = and i1 %cmp10.i, %cmp.i
  br i1 %or.cond, label %cond.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

cond.false.i:                                     ; preds = %entry
  %sub.i = sub nuw nsw i32 72, %pos
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 %sub.i) #17
  %add.ptr.i = getelementptr i8, ptr %newregs, i32 %pos
  %tobool19.not.i = icmp eq ptr %kbuf, null
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %kbuf, i32 %5)
  br label %cleanup.thread.i

if.else.i:                                        ; preds = %cond.false.i
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 109) #17
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.else.i.cleanup_crit_edge, label %if.end.i.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %5) #17
  call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %5, i1 noundef zeroext false) #17
  %7 = call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #14, !srcloc !120
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #17, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %ubuf, i32 noundef %5) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #17, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool22.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool22.not.i, label %if.end.i.i.cleanup.thread.i_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i.cleanup.thread.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i.i.cleanup.thread.i_crit_edge, %if.then20.i
  %kbuf.sink57.i = phi ptr [ %kbuf.addr, %if.then20.i ], [ %ubuf.addr, %if.end.i.i.cleanup.thread.i_crit_edge ]
  %10 = ptrtoint ptr %kbuf.sink57.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kbuf.sink57.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %11, i32 %5
  store ptr %add.ptr21.i, ptr %kbuf.sink57.i, align 4
  br label %if.end

if.end:                                           ; preds = %cleanup.thread.i, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr inbounds [18 x i32], ptr %newregs, i32 0, i32 16
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %13, 31
  %and3.i = and i32 %13, -321
  store i32 %and3.i, ptr %arrayidx.i, align 4
  %and6.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp.i12 = icmp eq i32 %and6.i, 0
  br i1 %cmp.i12, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 16
  br i1 %cmp7.i, label %if.then.i.if.end5_crit_edge, label %if.end.i

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.end.i:                                         ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %14 = load i32, ptr @elf_hwcap, align 4
  %and9.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp ne i32 %and9.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i13 = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp10.i13, i1 false
  br i1 %or.cond.i, label %if.end.i.if.end5_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %if.then.i.if.end5_crit_edge
  %15 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 16304
  %17 = call ptr @memcpy(ptr %add.ptr8, ptr %newregs, i32 72)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.else.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %newregs) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fpa_get(ptr nocapture noundef readonly %target, ptr nocapture noundef readnone %regset, [2 x i32] %to.coerce) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %to.coerce.fca.1.extract = extractvalue [2 x i32] %to.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.coerce.fca.1.extract)
  %tobool.not.i = icmp eq i32 %to.coerce.fca.1.extract, 0
  br i1 %tobool.not.i, label %entry.membuf_write.exit_crit_edge, label %if.then.i

entry.membuf_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %membuf_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %stack = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack, align 4
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  %to.coerce.fca.0.extract = extractvalue [2 x i32] %to.coerce, 0
  %2 = inttoptr i32 %to.coerce.fca.0.extract to ptr
  %3 = tail call i32 @llvm.umin.i32(i32 %to.coerce.fca.1.extract, i32 116) #17
  %4 = call ptr @memcpy(ptr %2, ptr %fpstate, i32 %3)
  %sub.i = sub i32 %to.coerce.fca.1.extract, %3
  br label %membuf_write.exit

membuf_write.exit:                                ; preds = %if.then.i, %entry.membuf_write.exit_crit_edge
  %to.sroa.4.0 = phi i32 [ 0, %entry.membuf_write.exit_crit_edge ], [ %sub.i, %if.then.i ]
  ret i32 %to.sroa.4.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fpa_set(ptr nocapture noundef readonly %target, ptr nocapture noundef readnone %regset, i32 noundef %pos, i32 noundef %count, ptr noundef %kbuf, ptr noundef %ubuf) #0 align 64 {
entry:
  %kbuf.addr = alloca ptr, align 4
  %ubuf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kbuf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %kbuf, ptr %kbuf.addr, align 4
  %1 = ptrtoint ptr %ubuf.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ubuf, ptr %ubuf.addr, align 4
  %stack = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %2 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack, align 4
  %arrayidx = getelementptr %struct.thread_info, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.thread_info, ptr %3, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp ne i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %pos)
  %cmp10.i = icmp ult i32 %pos, 116
  %or.cond = and i1 %cmp10.i, %cmp.i
  br i1 %or.cond, label %cond.false.i, label %entry.user_regset_copyin.exit_crit_edge

entry.user_regset_copyin.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_regset_copyin.exit

cond.false.i:                                     ; preds = %entry
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 9
  %sub.i = sub nuw nsw i32 116, %pos
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 %sub.i) #17
  %add.ptr.i = getelementptr i8, ptr %fpstate, i32 %pos
  %tobool19.not.i = icmp eq ptr %kbuf, null
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %7 = call ptr @memcpy(ptr %add.ptr.i, ptr %kbuf, i32 %6)
  br label %cleanup.thread.i

if.else.i:                                        ; preds = %cond.false.i
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 109) #17
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.else.i.user_regset_copyin.exit_crit_edge, label %if.end.i.i

if.else.i.user_regset_copyin.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_regset_copyin.exit

if.end.i.i:                                       ; preds = %if.else.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %6) #17
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %6, i1 noundef zeroext false) #17
  %8 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #14, !srcloc !120
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %ubuf, i32 noundef %6) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #17, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool22.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool22.not.i, label %if.end.i.i.cleanup.thread.i_crit_edge, label %if.end.i.i.user_regset_copyin.exit_crit_edge

if.end.i.i.user_regset_copyin.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_regset_copyin.exit

if.end.i.i.cleanup.thread.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i.i.cleanup.thread.i_crit_edge, %if.then20.i
  %kbuf.sink57.i = phi ptr [ %kbuf.addr, %if.then20.i ], [ %ubuf.addr, %if.end.i.i.cleanup.thread.i_crit_edge ]
  %11 = ptrtoint ptr %kbuf.sink57.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kbuf.sink57.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %12, i32 %6
  store ptr %add.ptr21.i, ptr %kbuf.sink57.i, align 4
  br label %user_regset_copyin.exit

user_regset_copyin.exit:                          ; preds = %cleanup.thread.i, %if.end.i.i.user_regset_copyin.exit_crit_edge, %if.else.i.user_regset_copyin.exit_crit_edge, %entry.user_regset_copyin.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %entry.user_regset_copyin.exit_crit_edge ], [ -14, %if.end.i.i.user_regset_copyin.exit_crit_edge ], [ 0, %cleanup.thread.i ], [ -14, %if.else.i.user_regset_copyin.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_get(ptr nocapture noundef readonly %target, ptr nocapture noundef readnone %regset, [2 x i32] %to.coerce) #0 align 64 {
entry:
  %__v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %to.coerce.fca.1.extract = extractvalue [2 x i32] %to.coerce, 1
  %stack = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack, align 4
  tail call void @vfp_sync_hwstate(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to.coerce.fca.1.extract)
  %tobool.not.i = icmp eq i32 %to.coerce.fca.1.extract, 0
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %membuf_write.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

membuf_write.exit:                                ; preds = %entry
  %vfpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10
  %to.coerce.fca.0.extract = extractvalue [2 x i32] %to.coerce, 0
  %2 = inttoptr i32 %to.coerce.fca.0.extract to ptr
  %3 = tail call i32 @llvm.umin.i32(i32 %to.coerce.fca.1.extract, i32 256) #17
  %4 = call ptr @memcpy(ptr %2, ptr %vfpstate, i32 %3)
  %add.ptr.i = getelementptr i8, ptr %2, i32 %3
  %sub.i = sub i32 %to.coerce.fca.1.extract, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not = icmp eq i32 %sub.i, 0
  br i1 %tobool.not, label %membuf_write.exit.if.end10_crit_edge, label %if.then

membuf_write.exit.if.end10_crit_edge:             ; preds = %membuf_write.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then:                                          ; preds = %membuf_write.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__v)
  %fpscr = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 2
  %5 = ptrtoint ptr %fpscr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fpscr, align 4
  %7 = ptrtoint ptr %__v to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %__v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 4
  br i1 %cmp, label %if.then5, label %if.else, !prof !118

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %__v, i32 %sub.i)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %__size.0 = phi i32 [ %sub.i, %if.then5 ], [ 4, %if.else ]
  %sub = sub i32 %sub.i, %__size.0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__v)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %membuf_write.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %to.sroa.8.1 = phi i32 [ 0, %membuf_write.exit.if.end10_crit_edge ], [ %sub, %if.end ], [ 0, %entry.if.end10_crit_edge ]
  ret i32 %to.sroa.8.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_set(ptr nocapture noundef readonly %target, ptr nocapture noundef readnone %regset, i32 noundef %pos, i32 noundef %count, ptr noundef %kbuf, ptr noundef %ubuf) #0 align 64 {
entry:
  %kbuf.addr = alloca ptr, align 4
  %ubuf.addr = alloca ptr, align 4
  %new_vfp = alloca %struct.vfp_hard_struct, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kbuf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %kbuf, ptr %kbuf.addr, align 4
  %1 = ptrtoint ptr %ubuf.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ubuf, ptr %ubuf.addr, align 4
  %stack = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 1
  %2 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack, align 4
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %new_vfp) #17
  tail call void @vfp_sync_hwstate(ptr noundef %3) #17
  %vfpstate = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 10
  %4 = call ptr @memcpy(ptr %new_vfp, ptr %vfpstate, i32 280)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp eq i32 %count, 0
  br i1 %cmp.i, label %entry.if.end8_crit_edge, label %do.body.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %pos)
  %cmp10.i = icmp ult i32 %pos, 256
  br i1 %cmp10.i, label %cond.false.i, label %do.body.i.lor.lhs.false.i_crit_edge

do.body.i.lor.lhs.false.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

cond.false.i:                                     ; preds = %do.body.i
  %sub.i = sub nuw nsw i32 256, %pos
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 %sub.i) #17
  %add.ptr.i = getelementptr i8, ptr %new_vfp, i32 %pos
  %tobool19.not.i = icmp eq ptr %kbuf, null
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %kbuf, i32 %5)
  br label %if.end

if.else.i:                                        ; preds = %cond.false.i
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 109) #17
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.else.i.cleanup_crit_edge, label %if.end.i.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %5) #17
  call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %5, i1 noundef zeroext false) #17
  %7 = call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #14, !srcloc !120
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #17, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %ubuf, i32 noundef %5) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #17, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool22.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool22.not.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.if.end_crit_edge, %if.then20.i
  %kbuf.sink57.i = phi ptr [ %kbuf.addr, %if.then20.i ], [ %ubuf.addr, %if.end.i.i.if.end_crit_edge ]
  %10 = ptrtoint ptr %kbuf.sink57.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kbuf.sink57.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %11, i32 %5
  store ptr %add.ptr21.i, ptr %kbuf.sink57.i, align 4
  %sub28.i = sub i32 %count, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28.i)
  %cmp.i22 = icmp eq i32 %sub28.i, 0
  br i1 %cmp.i22, label %if.end.if.end8_crit_edge, label %do.body.i23

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

do.body.i23:                                      ; preds = %if.end
  %add.i = add nuw nsw i32 %5, %pos
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp1.i = icmp ult i32 %add.i, 256
  br i1 %cmp1.i, label %do.body4.i, label %do.body.i23.lor.lhs.false.i_crit_edge, !prof !118

do.body.i23.lor.lhs.false.i_crit_edge:            ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

do.body4.i:                                       ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/regset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 287, 0\0A.popsection", ""() #17, !srcloc !137
  unreachable

lor.lhs.false.i:                                  ; preds = %do.body.i23.lor.lhs.false.i_crit_edge, %do.body.i.lor.lhs.false.i_crit_edge
  %count.addr.0.ph7799109 = phi i32 [ %sub28.i, %do.body.i23.lor.lhs.false.i_crit_edge ], [ %count, %do.body.i.lor.lhs.false.i_crit_edge ]
  %pos.addr.0.ph76100108 = phi i32 [ %add.i, %do.body.i23.lor.lhs.false.i_crit_edge ], [ %pos, %do.body.i.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %pos.addr.0.ph76100108)
  %cmp10.i28 = icmp ult i32 %pos.addr.0.ph76100108, 260
  br i1 %cmp10.i28, label %cond.false.i32, label %lor.lhs.false.i.if.end8_crit_edge

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

cond.false.i32:                                   ; preds = %lor.lhs.false.i
  %12 = getelementptr inbounds %struct.vfp_hard_struct, ptr %new_vfp, i32 0, i32 2
  %sub.i29 = sub nuw nsw i32 260, %pos.addr.0.ph76100108
  %13 = call i32 @llvm.umin.i32(i32 %count.addr.0.ph7799109, i32 %sub.i29) #17
  %sub18.i = add nsw i32 %pos.addr.0.ph76100108, -256
  %add.ptr.i30 = getelementptr i8, ptr %12, i32 %sub18.i
  %14 = ptrtoint ptr %kbuf.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %kbuf.addr.0.kbuf.addr.0.56 = load ptr, ptr %kbuf.addr, align 4
  %tobool19.not.i31 = icmp eq ptr %kbuf.addr.0.kbuf.addr.0.56, null
  br i1 %tobool19.not.i31, label %if.else.i35, label %if.then20.i33

if.then20.i33:                                    ; preds = %cond.false.i32
  call void @__sanitizer_cov_trace_pc() #19
  %15 = call ptr @memcpy(ptr %add.ptr.i30, ptr %kbuf.addr.0.kbuf.addr.0.56, i32 %13)
  br label %cleanup.thread.i52

if.else.i35:                                      ; preds = %cond.false.i32
  %16 = ptrtoint ptr %ubuf.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %ubuf.addr.0.ubuf.addr.0.55 = load ptr, ptr %ubuf.addr, align 4
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 109) #17
  %call.i.i34 = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i34, label %if.else.i35.cleanup_crit_edge, label %if.end.i.i37

if.else.i35.cleanup_crit_edge:                    ; preds = %if.else.i35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i37:                                     ; preds = %if.else.i35
  %call.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i30, i32 noundef %13) #17
  call void @__check_object_size(ptr noundef %add.ptr.i30, i32 noundef %13, i1 noundef zeroext false) #17
  %17 = call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i.i.i.i.i.i39 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i39 to ptr
  %cpu_domain.i.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i40) #14, !srcloc !120
  %and.i.i.i.i41 = and i32 %19, -13
  %or.i.i.i.i42 = or i32 %and.i.i.i.i41, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i42) #17, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %call1.i.i.i43 = call i32 @arm_copy_from_user(ptr noundef %add.ptr.i30, ptr noundef %ubuf.addr.0.ubuf.addr.0.55, i32 noundef %13) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #17, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i43)
  %tobool22.not.i46 = icmp eq i32 %call1.i.i.i43, 0
  br i1 %tobool22.not.i46, label %if.end.i.i37.cleanup.thread.i52_crit_edge, label %if.end.i.i37.cleanup_crit_edge

if.end.i.i37.cleanup_crit_edge:                   ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i37.cleanup.thread.i52_crit_edge:        ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread.i52

cleanup.thread.i52:                               ; preds = %if.end.i.i37.cleanup.thread.i52_crit_edge, %if.then20.i33
  %kbuf.sink57.i48 = phi ptr [ %kbuf.addr, %if.then20.i33 ], [ %ubuf.addr, %if.end.i.i37.cleanup.thread.i52_crit_edge ]
  %20 = ptrtoint ptr %kbuf.sink57.i48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kbuf.sink57.i48, align 4
  %add.ptr21.i49 = getelementptr i8, ptr %21, i32 %13
  store ptr %add.ptr21.i49, ptr %kbuf.sink57.i48, align 4
  br label %if.end8

if.end8:                                          ; preds = %cleanup.thread.i52, %lor.lhs.false.i.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %22 = call ptr @memcpy(ptr %vfpstate, ptr %new_vfp, i32 280)
  call void @vfp_flush_hwstate(ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.i.i37.cleanup_crit_edge, %if.else.i35.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i37.cleanup_crit_edge ], [ -14, %if.else.i.cleanup_crit_edge ], [ -14, %if.else.i35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %new_vfp) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_sync_hwstate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_flush_hwstate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_slots(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @arch_get_debug_arch() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @arch_get_max_wp_len() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_bp_generic_fields([1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @modify_user_hw_breakpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_user_hw_breakpoint(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptrace_hbptriggered(ptr noundef readonly %bp, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %debug = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 219, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug, align 4
  %cmp2 = icmp eq ptr %5, %bp
  br i1 %cmp2, label %entry.cond.false_crit_edge, label %for.inc

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp eq ptr %7, %bp
  br i1 %cmp2.1, label %for.inc.cond.false_crit_edge, label %for.inc.1

for.inc.cond.false_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.2 = icmp eq ptr %9, %bp
  br i1 %cmp2.2, label %for.inc.1.cond.false_crit_edge, label %for.inc.2

for.inc.1.cond.false_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.3 = icmp eq ptr %11, %bp
  br i1 %cmp2.3, label %for.inc.2.cond.false_crit_edge, label %for.inc.3

for.inc.2.cond.false_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %cmp2.4 = icmp eq ptr %13, %bp
  br i1 %cmp2.4, label %for.inc.3.cond.false_crit_edge, label %for.inc.4

for.inc.3.cond.false_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  %cmp2.5 = icmp eq ptr %15, %bp
  br i1 %cmp2.5, label %for.inc.4.cond.false_crit_edge, label %for.inc.5

for.inc.4.cond.false_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  %cmp2.6 = icmp eq ptr %17, %bp
  br i1 %cmp2.6, label %for.inc.5.cond.false_crit_edge, label %for.inc.6

for.inc.5.cond.false_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7, align 4
  %cmp2.7 = icmp eq ptr %19, %bp
  br i1 %cmp2.7, label %for.inc.6.cond.false_crit_edge, label %for.inc.7

for.inc.6.cond.false_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.8, align 4
  %cmp2.8 = icmp eq ptr %21, %bp
  br i1 %cmp2.8, label %for.inc.7.cond.false_crit_edge, label %for.inc.8

for.inc.7.cond.false_crit_edge:                   ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 9
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.9, align 4
  %cmp2.9 = icmp eq ptr %23, %bp
  br i1 %cmp2.9, label %for.inc.8.cond.false_crit_edge, label %for.inc.9

for.inc.8.cond.false_crit_edge:                   ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 10
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.10, align 4
  %cmp2.10 = icmp eq ptr %25, %bp
  br i1 %cmp2.10, label %for.inc.9.cond.false_crit_edge, label %for.inc.10

for.inc.9.cond.false_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.11, align 4
  %cmp2.11 = icmp eq ptr %27, %bp
  br i1 %cmp2.11, label %for.inc.10.cond.false_crit_edge, label %for.inc.11

for.inc.10.cond.false_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 12
  %28 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.12, align 4
  %cmp2.12 = icmp eq ptr %29, %bp
  br i1 %cmp2.12, label %for.inc.11.cond.false_crit_edge, label %for.inc.12

for.inc.11.cond.false_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 13
  %30 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.13, align 4
  %cmp2.13 = icmp eq ptr %31, %bp
  br i1 %cmp2.13, label %for.inc.12.cond.false_crit_edge, label %for.inc.13

for.inc.12.cond.false_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 14
  %32 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.14, align 4
  %cmp2.14 = icmp eq ptr %33, %bp
  br i1 %cmp2.14, label %for.inc.13.cond.false_crit_edge, label %for.inc.14

for.inc.13.cond.false_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 15
  %34 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.15, align 4
  %cmp2.15 = icmp eq ptr %35, %bp
  br i1 %cmp2.15, label %for.inc.14.cond.false_crit_edge, label %for.inc.15

for.inc.14.cond.false_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx.16 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 16
  %36 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.16, align 4
  %cmp2.16 = icmp eq ptr %37, %bp
  br i1 %cmp2.16, label %for.inc.15.cond.false_crit_edge, label %for.inc.16

for.inc.15.cond.false_crit_edge:                  ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.16:                                       ; preds = %for.inc.15
  %arrayidx.17 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 17
  %38 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.17, align 4
  %cmp2.17 = icmp eq ptr %39, %bp
  br i1 %cmp2.17, label %for.inc.16.cond.false_crit_edge, label %for.inc.17

for.inc.16.cond.false_crit_edge:                  ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.17:                                       ; preds = %for.inc.16
  %arrayidx.18 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 18
  %40 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.18, align 4
  %cmp2.18 = icmp eq ptr %41, %bp
  br i1 %cmp2.18, label %for.inc.17.cond.false_crit_edge, label %for.inc.18

for.inc.17.cond.false_crit_edge:                  ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.18:                                       ; preds = %for.inc.17
  %arrayidx.19 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 19
  %42 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.19, align 4
  %cmp2.19 = icmp eq ptr %43, %bp
  br i1 %cmp2.19, label %for.inc.18.cond.false_crit_edge, label %for.inc.19

for.inc.18.cond.false_crit_edge:                  ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.19:                                       ; preds = %for.inc.18
  %arrayidx.20 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 20
  %44 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.20, align 4
  %cmp2.20 = icmp eq ptr %45, %bp
  br i1 %cmp2.20, label %for.inc.19.cond.false_crit_edge, label %for.inc.20

for.inc.19.cond.false_crit_edge:                  ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.20:                                       ; preds = %for.inc.19
  %arrayidx.21 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 21
  %46 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.21, align 4
  %cmp2.21 = icmp eq ptr %47, %bp
  br i1 %cmp2.21, label %for.inc.20.cond.false_crit_edge, label %for.inc.21

for.inc.20.cond.false_crit_edge:                  ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.21:                                       ; preds = %for.inc.20
  %arrayidx.22 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 22
  %48 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.22, align 4
  %cmp2.22 = icmp eq ptr %49, %bp
  br i1 %cmp2.22, label %for.inc.21.cond.false_crit_edge, label %for.inc.22

for.inc.21.cond.false_crit_edge:                  ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.22:                                       ; preds = %for.inc.21
  %arrayidx.23 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 23
  %50 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.23, align 4
  %cmp2.23 = icmp eq ptr %51, %bp
  br i1 %cmp2.23, label %for.inc.22.cond.false_crit_edge, label %for.inc.23

for.inc.22.cond.false_crit_edge:                  ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.23:                                       ; preds = %for.inc.22
  %arrayidx.24 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 24
  %52 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.24, align 4
  %cmp2.24 = icmp eq ptr %53, %bp
  br i1 %cmp2.24, label %for.inc.23.cond.false_crit_edge, label %for.inc.24

for.inc.23.cond.false_crit_edge:                  ; preds = %for.inc.23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.24:                                       ; preds = %for.inc.23
  %arrayidx.25 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 25
  %54 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.25, align 4
  %cmp2.25 = icmp eq ptr %55, %bp
  br i1 %cmp2.25, label %for.inc.24.cond.false_crit_edge, label %for.inc.25

for.inc.24.cond.false_crit_edge:                  ; preds = %for.inc.24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.25:                                       ; preds = %for.inc.24
  %arrayidx.26 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 26
  %56 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.26, align 4
  %cmp2.26 = icmp eq ptr %57, %bp
  br i1 %cmp2.26, label %for.inc.25.cond.false_crit_edge, label %for.inc.26

for.inc.25.cond.false_crit_edge:                  ; preds = %for.inc.25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.26:                                       ; preds = %for.inc.25
  %arrayidx.27 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 27
  %58 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.27, align 4
  %cmp2.27 = icmp eq ptr %59, %bp
  br i1 %cmp2.27, label %for.inc.26.cond.false_crit_edge, label %for.inc.27

for.inc.26.cond.false_crit_edge:                  ; preds = %for.inc.26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.27:                                       ; preds = %for.inc.26
  %arrayidx.28 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 28
  %60 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.28, align 4
  %cmp2.28 = icmp eq ptr %61, %bp
  br i1 %cmp2.28, label %for.inc.27.cond.false_crit_edge, label %for.inc.28

for.inc.27.cond.false_crit_edge:                  ; preds = %for.inc.27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.28:                                       ; preds = %for.inc.27
  %arrayidx.29 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 29
  %62 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.29, align 4
  %cmp2.29 = icmp eq ptr %63, %bp
  br i1 %cmp2.29, label %for.inc.28.cond.false_crit_edge, label %for.inc.29

for.inc.28.cond.false_crit_edge:                  ; preds = %for.inc.28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.29:                                       ; preds = %for.inc.28
  %arrayidx.30 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 30
  %64 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.30, align 4
  %cmp2.30 = icmp eq ptr %65, %bp
  br i1 %cmp2.30, label %for.inc.29.cond.false_crit_edge, label %for.inc.30

for.inc.29.cond.false_crit_edge:                  ; preds = %for.inc.29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

for.inc.30:                                       ; preds = %for.inc.29
  %arrayidx.31 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 219, i32 3, i32 0, i32 31
  %66 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.31, align 4
  %cmp2.31 = icmp eq ptr %67, %bp
  br i1 %cmp2.31, label %for.inc.30.cond.false_crit_edge, label %for.inc.30.cond.end_crit_edge

for.inc.30.cond.end_crit_edge:                    ; preds = %for.inc.30
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

for.inc.30.cond.false_crit_edge:                  ; preds = %for.inc.30
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

cond.false:                                       ; preds = %for.inc.30.cond.false_crit_edge, %for.inc.29.cond.false_crit_edge, %for.inc.28.cond.false_crit_edge, %for.inc.27.cond.false_crit_edge, %for.inc.26.cond.false_crit_edge, %for.inc.25.cond.false_crit_edge, %for.inc.24.cond.false_crit_edge, %for.inc.23.cond.false_crit_edge, %for.inc.22.cond.false_crit_edge, %for.inc.21.cond.false_crit_edge, %for.inc.20.cond.false_crit_edge, %for.inc.19.cond.false_crit_edge, %for.inc.18.cond.false_crit_edge, %for.inc.17.cond.false_crit_edge, %for.inc.16.cond.false_crit_edge, %for.inc.15.cond.false_crit_edge, %for.inc.14.cond.false_crit_edge, %for.inc.13.cond.false_crit_edge, %for.inc.12.cond.false_crit_edge, %for.inc.11.cond.false_crit_edge, %for.inc.10.cond.false_crit_edge, %for.inc.9.cond.false_crit_edge, %for.inc.8.cond.false_crit_edge, %for.inc.7.cond.false_crit_edge, %for.inc.6.cond.false_crit_edge, %for.inc.5.cond.false_crit_edge, %for.inc.4.cond.false_crit_edge, %for.inc.3.cond.false_crit_edge, %for.inc.2.cond.false_crit_edge, %for.inc.1.cond.false_crit_edge, %for.inc.cond.false_crit_edge, %entry.cond.false_crit_edge
  %cmp.i = phi i1 [ false, %entry.cond.false_crit_edge ], [ false, %for.inc.cond.false_crit_edge ], [ false, %for.inc.1.cond.false_crit_edge ], [ false, %for.inc.2.cond.false_crit_edge ], [ false, %for.inc.3.cond.false_crit_edge ], [ false, %for.inc.4.cond.false_crit_edge ], [ false, %for.inc.5.cond.false_crit_edge ], [ false, %for.inc.6.cond.false_crit_edge ], [ false, %for.inc.7.cond.false_crit_edge ], [ false, %for.inc.8.cond.false_crit_edge ], [ false, %for.inc.9.cond.false_crit_edge ], [ false, %for.inc.10.cond.false_crit_edge ], [ false, %for.inc.11.cond.false_crit_edge ], [ false, %for.inc.12.cond.false_crit_edge ], [ false, %for.inc.13.cond.false_crit_edge ], [ false, %for.inc.14.cond.false_crit_edge ], [ true, %for.inc.15.cond.false_crit_edge ], [ true, %for.inc.16.cond.false_crit_edge ], [ true, %for.inc.17.cond.false_crit_edge ], [ true, %for.inc.18.cond.false_crit_edge ], [ true, %for.inc.19.cond.false_crit_edge ], [ true, %for.inc.20.cond.false_crit_edge ], [ true, %for.inc.21.cond.false_crit_edge ], [ true, %for.inc.22.cond.false_crit_edge ], [ true, %for.inc.23.cond.false_crit_edge ], [ true, %for.inc.24.cond.false_crit_edge ], [ true, %for.inc.25.cond.false_crit_edge ], [ true, %for.inc.26.cond.false_crit_edge ], [ true, %for.inc.27.cond.false_crit_edge ], [ true, %for.inc.28.cond.false_crit_edge ], [ true, %for.inc.29.cond.false_crit_edge ], [ true, %for.inc.30.cond.false_crit_edge ]
  %i.014.lcssa = phi i32 [ 1, %entry.cond.false_crit_edge ], [ 3, %for.inc.cond.false_crit_edge ], [ 5, %for.inc.1.cond.false_crit_edge ], [ 7, %for.inc.2.cond.false_crit_edge ], [ 9, %for.inc.3.cond.false_crit_edge ], [ 11, %for.inc.4.cond.false_crit_edge ], [ 13, %for.inc.5.cond.false_crit_edge ], [ 15, %for.inc.6.cond.false_crit_edge ], [ 17, %for.inc.7.cond.false_crit_edge ], [ 19, %for.inc.8.cond.false_crit_edge ], [ 21, %for.inc.9.cond.false_crit_edge ], [ 23, %for.inc.10.cond.false_crit_edge ], [ 25, %for.inc.11.cond.false_crit_edge ], [ 27, %for.inc.12.cond.false_crit_edge ], [ 29, %for.inc.13.cond.false_crit_edge ], [ 31, %for.inc.14.cond.false_crit_edge ], [ 33, %for.inc.15.cond.false_crit_edge ], [ 35, %for.inc.16.cond.false_crit_edge ], [ 37, %for.inc.17.cond.false_crit_edge ], [ 39, %for.inc.18.cond.false_crit_edge ], [ 41, %for.inc.19.cond.false_crit_edge ], [ 43, %for.inc.20.cond.false_crit_edge ], [ 45, %for.inc.21.cond.false_crit_edge ], [ 47, %for.inc.22.cond.false_crit_edge ], [ 49, %for.inc.23.cond.false_crit_edge ], [ 51, %for.inc.24.cond.false_crit_edge ], [ 53, %for.inc.25.cond.false_crit_edge ], [ 55, %for.inc.26.cond.false_crit_edge ], [ 57, %for.inc.27.cond.false_crit_edge ], [ 59, %for.inc.28.cond.false_crit_edge ], [ 61, %for.inc.29.cond.false_crit_edge ], [ 63, %for.inc.30.cond.false_crit_edge ]
  %sub.i = sub nsw i32 32, %i.014.lcssa
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 %i.014.lcssa
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.inc.30.cond.end_crit_edge
  %cond = phi i32 [ %cond.i, %cond.false ], [ 0, %for.inc.30.cond.end_crit_edge ]
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25
  %trigger = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i, i32 0, i32 1
  %68 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %trigger, align 4
  %70 = inttoptr i32 %69 to ptr
  %call5 = tail call i32 @force_sig_ptrace_errno_trap(i32 noundef %cond, ptr noundef %70) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_ptrace_errno_trap(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__tracepoint_sys_enter, !1, !"__tracepoint_sys_enter", i1 false, i1 false}
!1 = !{!"../include/trace/events/syscalls.h", i32 18, i32 1}
!2 = !{ptr @__tracepoint_ptr_sys_enter, !1, !"__tracepoint_ptr_sys_enter", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_sys_enter, !1, !"__SCK__tp_func_sys_enter", i1 false, i1 false}
!4 = !{ptr @__tracepoint_sys_exit, !5, !"__tracepoint_sys_exit", i1 false, i1 false}
!5 = !{!"../include/trace/events/syscalls.h", i32 44, i32 1}
!6 = !{ptr @__tracepoint_ptr_sys_exit, !5, !"__tracepoint_ptr_sys_exit", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_sys_exit, !5, !"__SCK__tp_func_sys_exit", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_ptrace__326_42_trace_init_flags_sys_enterearly, !9, !"__initcall__kmod_ptrace__326_42_trace_init_flags_sys_enterearly", i1 false, i1 false}
!9 = !{!"../include/trace/events/syscalls.h", i32 42, i32 1}
!10 = !{ptr @__initcall__kmod_ptrace__327_66_trace_init_flags_sys_exitearly, !11, !"__initcall__kmod_ptrace__327_66_trace_init_flags_sys_exitearly", i1 false, i1 false}
!11 = !{!"../include/trace/events/syscalls.h", i32 66, i32 1}
!12 = !{ptr @event_class_sys_enter, !1, !"event_class_sys_enter", i1 false, i1 false}
!13 = !{ptr @event_sys_enter, !1, !"event_sys_enter", i1 false, i1 false}
!14 = !{ptr @__event_sys_enter, !1, !"__event_sys_enter", i1 false, i1 false}
!15 = !{ptr @event_class_sys_exit, !5, !"event_class_sys_exit", i1 false, i1 false}
!16 = !{ptr @event_sys_exit, !5, !"event_sys_exit", i1 false, i1 false}
!17 = !{ptr @__event_sys_exit, !5, !"__event_sys_exit", i1 false, i1 false}
!18 = !{ptr @__bpf_trace_tp_map_sys_enter, !1, !"__bpf_trace_tp_map_sys_enter", i1 false, i1 false}
!19 = !{ptr @__bpf_trace_tp_map_sys_exit, !5, !"__bpf_trace_tp_map_sys_exit", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_ptrace__328_245_ptrace_break_init1, !21, !"__initcall__kmod_ptrace__328_245_ptrace_break_init1", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/ptrace.c", i32 245, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/ptrace.c", i32 784, i32 10}
!24 = !{ptr @__tpstrtab_sys_enter, !1, !"__tpstrtab_sys_enter", i1 false, i1 false}
!25 = !{ptr @__tpstrtab_sys_exit, !5, !"__tpstrtab_sys_exit", i1 false, i1 false}
!26 = !{ptr @str__raw_syscalls__trace_system_name, !27, !"str__raw_syscalls__trace_system_name", i1 false, i1 false}
!27 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!28 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @trace_event_fields_sys_enter, !1, !"trace_event_fields_sys_enter", i1 false, i1 false}
!33 = !{ptr @trace_event_type_funcs_sys_enter, !1, !"trace_event_type_funcs_sys_enter", i1 false, i1 false}
!34 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @print_fmt_sys_enter, !1, !"print_fmt_sys_enter", i1 false, i1 false}
!36 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @trace_event_fields_sys_exit, !5, !"trace_event_fields_sys_exit", i1 false, i1 false}
!38 = !{ptr @trace_event_type_funcs_sys_exit, !5, !"trace_event_type_funcs_sys_exit", i1 false, i1 false}
!39 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @print_fmt_sys_exit, !5, !"print_fmt_sys_exit", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/kernel/ptrace.c", i32 70, i32 2}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/kernel/ptrace.c", i32 71, i32 2}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/kernel/ptrace.c", i32 72, i32 2}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/ptrace.c", i32 73, i32 2}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/kernel/ptrace.c", i32 74, i32 2}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/kernel/ptrace.c", i32 75, i32 2}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/kernel/ptrace.c", i32 76, i32 2}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/kernel/ptrace.c", i32 77, i32 2}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/kernel/ptrace.c", i32 78, i32 2}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/kernel/ptrace.c", i32 79, i32 2}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/kernel/ptrace.c", i32 80, i32 2}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/kernel/ptrace.c", i32 81, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/kernel/ptrace.c", i32 82, i32 2}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/kernel/ptrace.c", i32 83, i32 2}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/kernel/ptrace.c", i32 84, i32 2}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/kernel/ptrace.c", i32 85, i32 2}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/kernel/ptrace.c", i32 86, i32 2}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/kernel/ptrace.c", i32 87, i32 2}
!77 = !{ptr @regoffset_table, !78, !"regoffset_table", i1 false, i1 false}
!78 = !{!"../arch/arm/kernel/ptrace.c", i32 69, i32 36}
!79 = !{ptr @arm_break_hook, !80, !"arm_break_hook", i1 false, i1 false}
!80 = !{!"../arch/arm/kernel/ptrace.c", i32 213, i32 26}
!81 = !{ptr @thumb_break_hook, !82, !"thumb_break_hook", i1 false, i1 false}
!82 = !{!"../arch/arm/kernel/ptrace.c", i32 221, i32 26}
!83 = !{ptr @thumb2_break_hook, !84, !"thumb2_break_hook", i1 false, i1 false}
!84 = !{!"../arch/arm/kernel/ptrace.c", i32 229, i32 26}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/kernel/ptrace.c", i32 721, i32 10}
!87 = !{ptr @user_arm_view, !88, !"user_arm_view", i1 false, i1 false}
!88 = !{!"../arch/arm/kernel/ptrace.c", i32 720, i32 38}
!89 = !{ptr @arm_regsets, !90, !"arm_regsets", i1 false, i1 false}
!90 = !{!"../arch/arm/kernel/ptrace.c", i32 683, i32 33}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/uaccess.h", i32 109, i32 2}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!95 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!98 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!99 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!101 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!104 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!106 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{!"auto-init"}
!120 = !{i64 3067250}
!121 = !{i64 3067447}
!122 = !{i64 2150552680}
!123 = !{i64 2155966465, i64 2155966745, i64 2155967079, i64 2155967413}
!124 = !{i64 2154724309, i64 2154724334}
!125 = !{i64 2150572376, i64 2150572401}
!126 = !{i64 2150571695, i64 2150571720}
!127 = !{i64 2156002908, i64 2156003188, i64 2156003522, i64 2156003856}
!128 = !{i64 2155975569, i64 2155975849, i64 2155976183, i64 2155976517}
!129 = !{i64 2155987125, i64 2155987405, i64 2155987739, i64 2155988073}
!130 = !{i64 2148711182, i64 2148711187, i64 2148711200, i64 2148711244, i64 2148711278, i64 2148711299}
!131 = !{i64 2155453944}
!132 = !{i64 2155454141}
!133 = !{i64 2149213282}
!134 = !{i64 2149214318}
!135 = !{i64 2155469615}
!136 = !{i64 2155469812}
!137 = !{i64 2154721281, i64 2154721768, i64 2154721318, i64 2154721374, i64 2154721408, i64 2154721432, i64 2154721473, i64 2154721494, i64 2154721522, i64 2154721556}
