; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/smp.c_pt.bc'
source_filename = "../arch/arm/kernel/smp.c"
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
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.secondary_data = type { %union.anon.103, i32, ptr, ptr }
%union.anon.103 = type { i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mm_struct = type { %struct.anon.15, [0 x i32] }
%struct.anon.15 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.cpuinfo_arm = type { %struct.cpu, i32, i32 }
%struct.cpu = type { i32, i32, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.irq_cpustat_t = type { i32, [124 x i8] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_ipi_raise = type { %struct.trace_entry, i32, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_ipi_handler = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.proc_info_list = type { i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.cpufreq_freqs = type { ptr, i32, i32, i8 }

@__tpstrtab_ipi_raise = internal constant [10 x i8] c"ipi_raise\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ipi_raise = dso_local global %struct.static_call_key { ptr @__traceiter_ipi_raise }, align 4
@__tracepoint_ipi_raise = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ipi_raise, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ipi_raise, ptr null, ptr @__traceiter_ipi_raise, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ipi_raise = internal constant ptr @__tracepoint_ipi_raise, section "__tracepoints_ptrs", align 4
@__tpstrtab_ipi_entry = internal constant [10 x i8] c"ipi_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ipi_entry = dso_local global %struct.static_call_key { ptr @__traceiter_ipi_entry }, align 4
@__tracepoint_ipi_entry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ipi_entry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ipi_entry, ptr null, ptr @__traceiter_ipi_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ipi_entry = internal constant ptr @__tracepoint_ipi_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_ipi_exit = internal constant [9 x i8] c"ipi_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ipi_exit = dso_local global %struct.static_call_key { ptr @__traceiter_ipi_exit }, align 4
@__tracepoint_ipi_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ipi_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ipi_exit, ptr null, ptr @__traceiter_ipi_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ipi_exit = internal constant ptr @__tracepoint_ipi_exit, section "__tracepoints_ptrs", align 4
@str__ipi__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipi\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_ipi_raise = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon.0 { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.0 { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_ipi_raise = internal global %struct.trace_event_class { ptr @str__ipi__trace_system_name, ptr @trace_event_raw_event_ipi_raise, ptr @perf_trace_ipi_raise, ptr @trace_event_reg, ptr @trace_event_fields_ipi_raise, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ipi_raise, i64 24), ptr getelementptr (i8, ptr @event_class_ipi_raise, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ipi_raise = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ipi_raise, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ipi_raise = internal global { [63 x i8], [33 x i8] } { [63 x i8] c"\22target_mask=%s (%s)\22, __get_bitmask(target_cpus), REC->reason\00", [33 x i8] zeroinitializer }, align 32
@event_ipi_raise = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ipi_raise, %union.anon.1 { ptr @__tracepoint_ipi_raise }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ipi_raise }, ptr @print_fmt_ipi_raise, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ipi_raise = internal global ptr @event_ipi_raise, section "_ftrace_events", align 4
@trace_event_fields_ipi_handler = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.0 { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_ipi_handler = internal global %struct.trace_event_class { ptr @str__ipi__trace_system_name, ptr @trace_event_raw_event_ipi_handler, ptr @perf_trace_ipi_handler, ptr @trace_event_reg, ptr @trace_event_fields_ipi_handler, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ipi_handler, i64 24), ptr getelementptr (i8, ptr @event_class_ipi_handler, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ipi_handler = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ipi_handler, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ipi_handler = internal global { [20 x i8], [44 x i8] } { [20 x i8] c"\22(%s)\22, REC->reason\00", [44 x i8] zeroinitializer }, align 32
@event_ipi_entry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ipi_handler, %union.anon.1 { ptr @__tracepoint_ipi_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ipi_handler }, ptr @print_fmt_ipi_handler, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ipi_entry = internal global ptr @event_ipi_entry, section "_ftrace_events", align 4
@event_ipi_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ipi_handler, %union.anon.1 { ptr @__tracepoint_ipi_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ipi_handler }, ptr @print_fmt_ipi_handler, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ipi_exit = internal global ptr @event_ipi_exit, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ipi_raise = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_ipi_raise, ptr @__bpf_trace_ipi_raise, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ipi_entry = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_ipi_entry, ptr @__bpf_trace_ipi_handler, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ipi_exit = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_ipi_exit, ptr @__bpf_trace_ipi_handler, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@smp_ops = internal unnamed_addr global %struct.smp_operations zeroinitializer, section ".data..ro_after_init", align 4
@secondary_data = dso_local global { %struct.secondary_data, [40 x i8] } zeroinitializer, align 32
@idmap_pgd = external dso_local local_unnamed_addr global ptr, align 4
@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@cpu_running = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @cpu_running, i64 48), ptr getelementptr (i8, ptr @cpu_running, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@__cpu_up._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 172, ptr null, ptr null }, align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012CPU%u: failed to come online\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"__cpu_up\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arch/arm/kernel/smp.c\00", [42 x i8] zeroinitializer }, align 32
@__cpu_up._entry_ptr = internal global ptr @__cpu_up._entry, section ".printk_index", align 4
@__cpu_up._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, align 1
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013CPU%u: failed to boot: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__cpu_up._entry_ptr.5 = internal global ptr @__cpu_up._entry.3, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__cpu_die._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 298, ptr null, ptr null }, align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013CPU%u: cpu didn't die\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__cpu_die\00", [22 x i8] zeroinitializer }, align 32
@__cpu_die._entry_ptr = internal global ptr @__cpu_die._entry, section ".printk_index", align 4
@__cpu_die.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smp\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPU%u: shutdown\0A\00", [47 x i8] zeroinitializer }, align 32
@__cpu_die._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 312, ptr null, ptr null }, align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013CPU%u: unable to kill\0A\00", [39 x i8] zeroinitializer }, align 32
@__cpu_die._entry_ptr.12 = internal global ptr @__cpu_die._entry.10, section ".printk_index", align 4
@arch_cpu_idle_dead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014CPU%u: smp_ops.cpu_die() returned, trying to resuscitate\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arch_cpu_idle_dead\00", [45 x i8] zeroinitializer }, align 32
@arch_cpu_idle_dead._entry_ptr = internal global ptr @arch_cpu_idle_dead._entry, section ".printk_index", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@secondary_start_kernel.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"secondary_start_kernel\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CPU%u: Booted secondary processor\0A\00", [61 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_data = external dso_local global %struct.cpuinfo_arm, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@smp_cpus_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016SMP: Total of %d processors activated (%lu.%02lu BogoMIPS).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smp_cpus_done\00", [18 x i8] zeroinitializer }, align 32
@smp_cpus_done._entry_ptr = internal global ptr @smp_cpus_done._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CPU wakeup interrupts\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Timer broadcast interrupts\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rescheduling interrupts\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Function call interrupts\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CPU stop interrupts\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQ work interrupts\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"completion interrupts\00", [42 x i8] zeroinitializer }, align 32
@ipi_types = internal global [7 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "__tracepoint_str", align 4
@ipi_desc = internal unnamed_addr global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%*s%u: \00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IPI\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%10u \00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s\0A\00", [27 x i8] zeroinitializer }, align 32
@cpu_completion = weak dso_local global ptr null, section ".data..percpu", align 4
@nr_ipi = internal unnamed_addr global i32 7, section ".data..read_mostly", align 4
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 128
@ipi_irq_base = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@smp_send_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014SMP: failed to stop secondary CPUs\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smp_send_stop\00", [18 x i8] zeroinitializer }, align 32
@smp_send_stop._entry_ptr = internal global ptr @smp_send_stop._entry, section ".printk_index", align 4
@panic_smp_self_stop.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panic_smp_self_stop\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"CPU %u will stop doing anything useful since another CPU has paniced\0A\00", [58 x i8] zeroinitializer }, align 32
@__initcall__kmod_smp__293_851_register_cpufreq_notifier1 = internal global ptr @register_cpufreq_notifier, section ".initcall1.init", align 4
@__pcpu_unique_cpu_completion = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_l_p_j_ref = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@l_p_j_ref = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_unique_l_p_j_ref_freq = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@l_p_j_ref_freq = weak dso_local global i32 0, section ".data..percpu", align 4
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__data_loc unsigned long[]\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"target_cpus\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reason\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"target_mask=%s (%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(%s)\0A\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(cpu_running).wait.lock\00", [40 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@ipi_teardown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@init_proc_vtable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/include/asm/proc-fns.h\00", [32 x i8] zeroinitializer }, align 32
@init_proc_vtable.__already_done.43 = internal unnamed_addr global i1 false, section ".data.once", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@do_handle_IPI._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012CPU%u: Unknown IPI message 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_handle_IPI\00", [18 x i8] zeroinitializer }, align 32
@do_handle_IPI._entry_ptr = internal global ptr @do_handle_IPI._entry, section ".printk_index", align 4
@trace_ipi_entry_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/ipi.h\00", [37 x i8] zeroinitializer }, align 32
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@stop_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@ipi_cpu_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\012CPU%u: stopping\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipi_cpu_stop\00", [19 x i8] zeroinitializer }, align 32
@ipi_cpu_stop._entry_ptr = internal global ptr @ipi_cpu_stop._entry, section ".printk_index", align 4
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stop_lock\00", [22 x i8] zeroinitializer }, align 32
@trace_ipi_exit_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_ipi_raise_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipi_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpufreq_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cpufreq_callback, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@global_l_p_j_ref = internal global { i32, [28 x i8] } zeroinitializer, align 32
@global_l_p_j_ref_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"str__ipi__trace_system_name\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 36, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [29 x i8] c"trace_event_fields_ipi_raise\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_ipi_raise\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"print_fmt_ipi_raise\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"event_ipi_raise\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"trace_event_fields_ipi_handler\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_ipi_handler\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"print_fmt_ipi_handler\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"event_ipi_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"event_ipi_exit\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 80, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"secondary_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 59, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"cpu_running\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 172, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 176, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 298, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 301, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 312, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 369, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 439, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 486, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 532, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 533, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 534, i32 21 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 535, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 536, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 537, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 538, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 551, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 551, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 554, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 556, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 771, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 782, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 19, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 38, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 89, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 108, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [35 x i8] c"../arch/arm/include/asm/proc-fns.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 120, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 682, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [30 x i8] c"../include/trace/events/ipi.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 64, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [10 x i8] c"stop_lock\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 599, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 590, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"cpufreq_notifier\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 842, i32 30 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"global_l_p_j_ref\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 801, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant [22 x i8] c"global_l_p_j_ref_freq\00", align 1
@___asan_gen_.249 = private constant [25 x i8] c"../arch/arm/kernel/smp.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 802, i32 22 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__bpf_trace_tp_map_ipi_entry, ptr @__bpf_trace_tp_map_ipi_exit, ptr @__bpf_trace_tp_map_ipi_raise, ptr @__cpu_die._entry, ptr @__cpu_die._entry.10, ptr @__cpu_die._entry_ptr, ptr @__cpu_die._entry_ptr.12, ptr @__cpu_up._entry, ptr @__cpu_up._entry.3, ptr @__cpu_up._entry_ptr, ptr @__cpu_up._entry_ptr.5, ptr @__event_ipi_entry, ptr @__event_ipi_exit, ptr @__event_ipi_raise, ptr @__initcall__kmod_smp__293_851_register_cpufreq_notifier1, ptr @__tracepoint_ipi_entry, ptr @__tracepoint_ipi_exit, ptr @__tracepoint_ipi_raise, ptr @__tracepoint_ptr_ipi_entry, ptr @__tracepoint_ptr_ipi_exit, ptr @__tracepoint_ptr_ipi_raise, ptr @arch_cpu_idle_dead._entry, ptr @arch_cpu_idle_dead._entry_ptr, ptr @do_handle_IPI._entry, ptr @do_handle_IPI._entry_ptr, ptr @event_class_ipi_handler, ptr @event_class_ipi_raise, ptr @event_ipi_entry, ptr @event_ipi_exit, ptr @event_ipi_raise, ptr @ipi_cpu_stop._entry, ptr @ipi_cpu_stop._entry_ptr, ptr @ipi_types, ptr @smp_cpus_done._entry, ptr @smp_cpus_done._entry_ptr, ptr @smp_send_stop._entry, ptr @smp_send_stop._entry_ptr, ptr @str__ipi__trace_system_name, ptr @trace_event_fields_ipi_raise, ptr @trace_event_type_funcs_ipi_raise, ptr @print_fmt_ipi_raise, ptr @trace_event_fields_ipi_handler, ptr @trace_event_type_funcs_ipi_handler, ptr @print_fmt_ipi_handler, ptr @secondary_data, ptr @cpu_running, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @stop_lock, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @cpufreq_notifier, ptr @global_l_p_j_ref, ptr @global_l_p_j_ref_freq], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__ipi__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ipi_raise to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ipi_raise to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ipi_raise to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ipi_raise to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ipi_handler to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ipi_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ipi_handler to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ipi_entry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ipi_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secondary_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_running to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_cpu_idle_dead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_cpus_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_send_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_handle_IPI._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipi_cpu_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_l_p_j_ref to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_l_p_j_ref_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ipi_raise(ptr nocapture readnone %__data, ptr noundef %mask, ptr noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_raise, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  tail call void %2(ptr noundef %4, ptr noundef %mask, ptr noundef %reason) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ipi_entry(ptr nocapture readnone %__data, ptr noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_entry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  tail call void %2(ptr noundef %4, ptr noundef %reason) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ipi_exit(ptr nocapture readnone %__data, ptr noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  tail call void %2(ptr noundef %4, ptr noundef %reason) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ipi_raise(ptr noundef %__data, ptr nocapture noundef readonly %mask, ptr noundef %reason) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !184

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !185

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %add.i = add i32 %3, 7
  %div1.i = lshr i32 %add.i, 3
  %add2.i = add nuw nsw i32 %div1.i, 3
  %div32.i = and i32 %add2.i, 1073741820
  %add = add nuw nsw i32 %div32.i, 16
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %shl.i = shl i32 %div32.i, 16
  %or.i = or i32 %shl.i, 16
  %__data_loc_target_cpus = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_target_cpus to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i, ptr %__data_loc_target_cpus, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %add7 = add i32 %5, 7
  %div22 = lshr i32 %add7, 3
  %add8 = add nuw nsw i32 %div22, 3
  %div923 = and i32 %add8, 1073741820
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %mask, i32 %div923)
  %reason10 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %reason10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reason, ptr %reason10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ipi_raise(ptr noundef %__data, ptr nocapture noundef readonly %mask, ptr noundef %reason) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %add.i = add i32 %2, 7
  %div1.i = lshr i32 %add.i, 3
  %add2.i = add nuw nsw i32 %div1.i, 3
  %div32.i = and i32 %add2.i, 1073741820
  %shl.i = shl i32 %div32.i, 16
  %or.i = or i32 %shl.i, 16
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %3 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %perf_events, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %13 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %14, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %12, align 4
  %tobool.not.i.not = icmp eq ptr %16, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add nuw nsw i32 %div32.i, 27
  %and = and i32 %add12, 2147483640
  %sub = add nsw i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__regs, align 4
  %19 = call ptr @llvm.returnaddress(i32 0) #18
  %20 = ptrtoint ptr %19 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %18, i32 0, i32 15
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.i, align 4
  %22 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %23 = ptrtoint ptr %22 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %18, i32 0, i32 11
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx2.i, align 4
  %25 = call i32 @llvm.read_register.i32(metadata !174) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %18, i32 0, i32 13
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %18, i32 0, i32 16
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_target_cpus = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %__data_loc_target_cpus to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %__data_loc_target_cpus, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %add19 = add i32 %29, 7
  %div46 = lshr i32 %add19, 3
  %add20 = add nuw nsw i32 %div46, 3
  %div2147 = and i32 %add20, 1073741820
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %mask, i32 %div2147)
  %reason22 = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %reason22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reason, ptr %reason22, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ipi_handler(ptr noundef %__data, ptr noundef %reason) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !184

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !185

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %reason6 = getelementptr inbounds %struct.trace_event_raw_ipi_handler, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %reason6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reason, ptr %reason6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ipi_handler(ptr noundef %__data, ptr noundef %reason) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !186
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !174) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #18
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !174) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %reason17 = getelementptr inbounds %struct.trace_event_raw_ipi_handler, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %reason17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %reason, ptr %reason17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ipi_raise(ptr noundef %__data, ptr noundef %mask, ptr noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %mask to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %reason to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ipi_handler(ptr noundef %__data, ptr noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %reason to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #18
  ret void
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smp_set_ops(ptr noundef readonly %ops) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = call ptr @memcpy(ptr @smp_ops, ptr %ops, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cpu_up(i32 noundef %cpu, ptr noundef %idle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 3), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %secondary_biglittle_prepare.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

secondary_biglittle_prepare.exit:                 ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 52) #21
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool3.not.i.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i.not, label %secondary_biglittle_prepare.exit.cleanup_crit_edge, label %secondary_biglittle_prepare.exit.if.end3_crit_edge

secondary_biglittle_prepare.exit.if.end3_crit_edge: ; preds = %secondary_biglittle_prepare.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

secondary_biglittle_prepare.exit.cleanup_crit_edge: ; preds = %secondary_biglittle_prepare.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %secondary_biglittle_prepare.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %stack = getelementptr inbounds %struct.task_struct, ptr %idle, i32 0, i32 1
  %5 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16376
  store ptr %add.ptr, ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @idmap_pgd to i32))
  %7 = load ptr, ptr @idmap_pgd, align 4
  %8 = ptrtoint ptr %7 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %8) #18
  %conv = zext i32 %call.i to i64
  store i64 %conv, ptr @secondary_data, align 8
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @swapper_pg_dir to i32)) #18
  store i32 %call.i.i, ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 0, i32 1), align 8
  store ptr %idle, ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 0, i32 3), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %9(ptr noundef nonnull @secondary_data, i32 noundef 24) #18
  %call.i31 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @secondary_data to i32)) #18
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (%struct.secondary_data, ptr @secondary_data, i32 1, i32 0, i32 0) to i32)) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end3.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

if.end3.__sync_cache_range_w.exit_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %10(i32 noundef %call.i31, i32 noundef %call1.i) #18
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %if.end3.__sync_cache_range_w.exit_crit_edge
  %11 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 3), align 4
  %call6 = tail call i32 %11(i32 noundef %cpu, ptr noundef %idle) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then8, label %do.end17

if.then8:                                         ; preds = %__sync_cache_range_w.exit
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef nonnull @cpu_running, i32 noundef 100) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %12, %cpu
  br i1 %cmp.not.i.i.i.i, label %if.then8.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

if.then8.cpu_online.exit_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %if.then8
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %if.then8.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %15 = shl nuw i32 1, %and.i.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %do.end, label %cpu_online.exit.if.end20_crit_edge

cpu_online.exit.if.end20_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

do.end:                                           ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cpu) #22
  br label %if.end20

do.end17:                                         ; preds = %__sync_cache_range_w.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %cpu, i32 noundef %call6) #22
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %do.end, %cpu_online.exit.if.end20_crit_edge
  %ret.0 = phi i32 [ 0, %cpu_online.exit.if.end20_crit_edge ], [ -5, %do.end ], [ %call6, %do.end17 ]
  %17 = call ptr @memset(ptr @secondary_data, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %secondary_biglittle_prepare.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end20 ], [ -38, %entry.cleanup_crit_edge ], [ -12, %secondary_biglittle_prepare.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_init_cpus() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @smp_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %0() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @platform_can_secondary_boot() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 3), align 4
  %tobool = icmp ne ptr %0, null
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @platform_can_cpu_hotplug() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 4), align 4
  %tobool.not = icmp ne ptr %0, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @platform_can_hotplug_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 5), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 6), align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call zeroext i1 %1(i32 noundef %cpu) #18
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp ne i32 %cpu, 0
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %entry.return_crit_edge
  %retval.0.shrunk = phi i1 [ %call, %if.then2 ], [ %cmp, %if.end3 ], [ false, %entry.return_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cpu_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %platform_cpu_disable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

platform_cpu_disable.exit:                        ; preds = %entry
  %call.i = tail call i32 %4(i32 noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %platform_cpu_disable.exit.if.end_crit_edge, label %platform_cpu_disable.exit.cleanup_crit_edge

platform_cpu_disable.exit.cleanup_crit_edge:      ; preds = %platform_cpu_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

platform_cpu_disable.exit.if.end_crit_edge:       ; preds = %platform_cpu_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %platform_cpu_disable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @remove_cpu_topology(i32 noundef %3) #18
  tail call void @set_cpu_online(i32 noundef %3, i1 noundef zeroext false) #18
  %5 = load i32, ptr @ipi_irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i8 = icmp eq i32 %5, 0
  br i1 %tobool.not.i8, label %land.rhs.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %6 = load i32, ptr @nr_ipi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp sgt i32 %6, 0
  br i1 %cmp3.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ipi_teardown.exit_crit_edge

for.cond.preheader.i.ipi_teardown.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_teardown.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @ipi_teardown.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.ipi_teardown.exit_crit_edge, label %if.then.i9, !prof !184

land.rhs.i.ipi_teardown.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_teardown.exit

if.then.i9:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @ipi_teardown.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 243, i32 noundef 9, ptr noundef null) #18
  br label %ipi_teardown.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %7 = load i32, ptr @ipi_irq_base, align 4
  %add.i = add i32 %7, %i.04.i
  tail call void @disable_percpu_irq(i32 noundef %add.i) #18
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %8 = load i32, ptr @nr_ipi, align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ipi_teardown.exit_crit_edge

for.body.i.ipi_teardown.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_teardown.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

ipi_teardown.exit:                                ; preds = %for.body.i.ipi_teardown.exit_crit_edge, %if.then.i9, %land.rhs.i.ipi_teardown.exit_crit_edge, %for.cond.preheader.i.ipi_teardown.exit_crit_edge
  tail call void @irq_migrate_all_off_this_cpu() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %9() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %11, i32 4608) #18, !srcloc !188
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %11, i32 9216) #18, !srcloc !189
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %11, i32 18432) #18, !srcloc !190
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %10, i32 2097152) #18, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %ipi_teardown.exit, %platform_cpu_disable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipi_teardown.exit ], [ %call.i, %platform_cpu_disable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_cpu_topology(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpu_online(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_migrate_all_off_this_cpu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cpu_die(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cpu_wait_death(i32 noundef %cpu, i32 noundef 5) #18
  br i1 %call, label %do.body2, label %entry.if.end17.sink.split_crit_edge

entry.if.end17.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.sink.split

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cpu_die.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cpu_die, %if.then7)) #18
          to label %do.end9 [label %if.then7], !srcloc !194

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cpu_die.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.9, i32 noundef %cpu) #18
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body2
  tail call void @clear_tasks_mm_cpumask(i32 noundef %cpu) #18
  %0 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 4), align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %do.end9.if.end17_crit_edge, label %platform_cpu_kill.exit

do.end9.if.end17_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

platform_cpu_kill.exit:                           ; preds = %do.end9
  %call.i = tail call i32 %0(i32 noundef %cpu) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %platform_cpu_kill.exit.if.end17.sink.split_crit_edge, label %platform_cpu_kill.exit.if.end17_crit_edge

platform_cpu_kill.exit.if.end17_crit_edge:        ; preds = %platform_cpu_kill.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

platform_cpu_kill.exit.if.end17.sink.split_crit_edge: ; preds = %platform_cpu_kill.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %platform_cpu_kill.exit.if.end17.sink.split_crit_edge, %entry.if.end17.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %entry.if.end17.sink.split_crit_edge ], [ @.str.11, %platform_cpu_kill.exit.if.end17.sink.split_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink, i32 noundef %cpu) #22
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %platform_cpu_kill.exit.if.end17_crit_edge, %do.end9.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_wait_death(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_tasks_mm_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_cpu_idle_dead() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  tail call void @idle_task_exit() #18
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !195
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #18, !srcloc !196
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %5() #18
  %call4 = tail call zeroext i1 @cpu_report_death() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %6() #18
  %7 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 5), align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.do.end10_crit_edge, label %if.then6

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %7(i32 noundef %3) #18
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %if.end.do.end10_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %3) #22
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %stack = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 16376
  tail call void asm sideeffect "mov\09sp, $0\0A\09mov\09fp, #0\0A\09mov\09r0, $1\0A\09b\09secondary_start_kernel", "r,r,~{r0}"(ptr %add.ptr13, ptr %9) #18, !srcloc !197
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_task_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_report_death() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @secondary_start_kernel(ptr nocapture noundef readnone %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #23, !srcloc !198
  %call1.i = tail call ptr @lookup_processor(i32 noundef %0) #18
  %proc.i = getelementptr inbounds %struct.proc_info_list, ptr %call1.i, i32 0, i32 9
  %1 = ptrtoint ptr %proc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %proc.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu1.i.i, align 4
  %arrayidx.i.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %9 = call ptr @memcpy(ptr %8, ptr %2, i32 52)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %dcache_clean_area.i.i = getelementptr inbounds %struct.processor, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %dcache_clean_area.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcache_clean_area.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %13 = load ptr, ptr @cpu_vtable, align 4
  %dcache_clean_area3.i.i = getelementptr inbounds %struct.processor, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %dcache_clean_area3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcache_clean_area3.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, %15
  br i1 %cmp.not.i.i, label %entry.if.end30.i.i_crit_edge, label %land.rhs.i.i

entry.if.end30.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b102.i.i = load i1, ptr @init_proc_vtable.__already_done, align 1
  br i1 %.b102.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then.i.i, !prof !184

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @init_proc_vtable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 121, i32 noundef 9, ptr noundef null) #18
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %entry.if.end30.i.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_pte_ext.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %20 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext40.i.i = getelementptr inbounds %struct.processor, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %set_pte_ext40.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_pte_ext40.i.i, align 4
  %cmp41.not.i.i = icmp eq ptr %19, %22
  br i1 %cmp41.not.i.i, label %if.end30.i.i.secondary_biglittle_init.exit_crit_edge, label %land.rhs48.i.i

if.end30.i.i.secondary_biglittle_init.exit_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %secondary_biglittle_init.exit

land.rhs48.i.i:                                   ; preds = %if.end30.i.i
  %.b100101.i.i = load i1, ptr @init_proc_vtable.__already_done.43, align 1
  br i1 %.b100101.i.i, label %land.rhs48.i.i.secondary_biglittle_init.exit_crit_edge, label %if.then59.i.i, !prof !184

land.rhs48.i.i.secondary_biglittle_init.exit_crit_edge: ; preds = %land.rhs48.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %secondary_biglittle_init.exit

if.then59.i.i:                                    ; preds = %land.rhs48.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @init_proc_vtable.__already_done.43, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 123, i32 noundef 9, ptr noundef null) #18
  br label %secondary_biglittle_init.exit

secondary_biglittle_init.exit:                    ; preds = %if.then59.i.i, %land.rhs48.i.i.secondary_biglittle_init.exit_crit_edge, %if.end30.i.i.secondary_biglittle_init.exit_crit_edge
  %23 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %switch_mm = getelementptr inbounds %struct.processor, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %switch_mm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %switch_mm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %32 = ptrtoint ptr %31 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %32) #18
  tail call void %30(i32 noundef %call.i, ptr noundef nonnull @init_mm) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %33 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and1.i.i = and i32 %33, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %secondary_biglittle_init.exit.__local_flush_bp_all.exit.i_crit_edge, label %if.then.i.i30

secondary_biglittle_init.exit.__local_flush_bp_all.exit.i_crit_edge: ; preds = %secondary_biglittle_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %__local_flush_bp_all.exit.i

if.then.i.i30:                                    ; preds = %secondary_biglittle_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #18, !srcloc !199
  br label %__local_flush_bp_all.exit.i

__local_flush_bp_all.exit.i:                      ; preds = %if.then.i.i30, %secondary_biglittle_init.exit.__local_flush_bp_all.exit.i_crit_edge
  %and1.i = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge, label %if.then.i

__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge: ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %local_flush_bp_all.exit

if.then.i:                                        ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #18, !srcloc !200
  br label %local_flush_bp_all.exit

local_flush_bp_all.exit:                          ; preds = %if.then.i, %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge
  %task4 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %34 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %35 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %35, i32 4608) #18, !srcloc !188
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %35, i32 9216) #18, !srcloc !189
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %35, i32 18432) #18, !srcloc !190
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %34, i32 2097152) #18, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !193
  %36 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu1, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), i32 1, i32 3, i32 1) #18
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11)) #18, !srcloc !201
  %39 = ptrtoint ptr %task4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task4, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 54
  %41 = ptrtoint ptr %active_mm to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @init_mm, ptr %active_mm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %37)
  %cmp.not.i.i.i = icmp ugt i32 %42, %37
  br i1 %cmp.not.i.i.i, label %local_flush_bp_all.exit.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

local_flush_bp_all.exit.cpumask_set_cpu.exit_crit_edge: ; preds = %local_flush_bp_all.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %local_flush_bp_all.exit
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !184

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %local_flush_bp_all.exit.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %37, ptr noundef getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 1, i32 0, i32 0)) #18
  tail call void @cpu_init() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @secondary_start_kernel.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@secondary_start_kernel, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @secondary_start_kernel.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.16, i32 noundef %37) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %cpumask_set_cpu.exit
  tail call void @trace_hardirqs_off() #18
  %43 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 2), align 4
  %tobool13.not = icmp eq ptr %43, null
  br i1 %tobool13.not, label %do.end.if.end15_crit_edge, label %if.then14

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %43(i32 noundef %37) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end.if.end15_crit_edge
  tail call void @notify_cpu_starting(i32 noundef %37) #18
  %44 = load i32, ptr @ipi_irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i31 = icmp eq i32 %44, 0
  br i1 %tobool.not.i31, label %land.rhs.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end15
  %45 = load i32, ptr @nr_ipi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp3.i = icmp sgt i32 %45, 0
  br i1 %cmp3.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ipi_setup.exit_crit_edge

for.cond.preheader.i.ipi_setup.exit_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_setup.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

land.rhs.i:                                       ; preds = %if.end15
  %.b1.i = load i1, ptr @ipi_setup.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.ipi_setup.exit_crit_edge, label %if.then.i32, !prof !184

land.rhs.i.ipi_setup.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_setup.exit

if.then.i32:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @ipi_setup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 719, i32 noundef 9, ptr noundef null) #18
  br label %ipi_setup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %46 = load i32, ptr @ipi_irq_base, align 4
  %add.i = add i32 %46, %i.04.i
  tail call void @enable_percpu_irq(i32 noundef %add.i, i32 noundef 0) #18
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %47 = load i32, ptr @nr_ipi, align 4
  %cmp.i = icmp slt i32 %inc.i, %47
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ipi_setup.exit_crit_edge

for.body.i.ipi_setup.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_setup.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

ipi_setup.exit:                                   ; preds = %for.body.i.ipi_setup.exit_crit_edge, %if.then.i32, %land.rhs.i.ipi_setup.exit_crit_edge, %for.cond.preheader.i.ipi_setup.exit_crit_edge
  tail call void @calibrate_delay() #18
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add.i33 = add i32 %49, ptrtoint (ptr @cpu_data to i32)
  %50 = inttoptr i32 %add.i33 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %51 = load i32, ptr @loops_per_jiffy, align 4
  %loops_per_jiffy.i = getelementptr inbounds %struct.cpuinfo_arm, ptr %50, i32 0, i32 2
  %52 = ptrtoint ptr %loops_per_jiffy.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %loops_per_jiffy.i, align 4
  %cpuid2.i = getelementptr inbounds %struct.cpuinfo_arm, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %cpuid2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %0, ptr %cpuid2.i, align 8
  tail call void @store_cpu_topology(i32 noundef %37) #18
  tail call void @check_cpu_icache_size(i32 noundef %37) #18
  tail call void @set_cpu_online(i32 noundef %37, i1 noundef zeroext true) #18
  tail call void @check_other_bugs() #18
  tail call void @complete(ptr noundef nonnull @cpu_running) #18
  tail call void @trace_hardirqs_on() #18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !202
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #18, !srcloc !203
  tail call void asm sideeffect "cpsie a\09@ __sta", "~{memory},~{cc}"() #18, !srcloc !204
  tail call void @cpu_startup_entry(i32 noundef 151) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_cpu_starting(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @calibrate_delay() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_other_bugs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_startup_entry(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_cpus_done(i32 noundef %max_cpus) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call14 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #24
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %0)
  %cmp15 = icmp ult i32 %call14, %0
  br i1 %cmp15, label %entry.do.body_crit_edge, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end5

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call17 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call14, %entry.do.body_crit_edge ]
  %bogosum.016 = phi i32 [ %add2, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call17
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @cpu_data to i32)
  %3 = inttoptr i32 %add to ptr
  %loops_per_jiffy = getelementptr inbounds %struct.cpuinfo_arm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %loops_per_jiffy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loops_per_jiffy, align 4
  %add2 = add i32 %5, %bogosum.016
  %call = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_online_mask) #24
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end5

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.end5:                                          ; preds = %do.body.do.end5_crit_edge, %entry.do.end5_crit_edge
  %bogosum.0.lcssa = phi i32 [ 0, %entry.do.end5_crit_edge ], [ %add2, %do.body.do.end5_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %div = udiv i32 %bogosum.0.lcssa, 5000
  %div8 = udiv i32 %bogosum.0.lcssa, 50
  %rem = urem i32 %div8, 100
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %6, i32 noundef %div, i32 noundef %rem) #22
  tail call void @hyp_mode_check() #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @hyp_mode_check() local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smp_prepare_boot_cpu() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_prepare_cpus(i32 noundef %max_cpus) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #18
  tail call void @init_cpu_topology() #18
  %1 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @cpu_data to i32)
  %7 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %8 = load i32, ptr @loops_per_jiffy, align 4
  %loops_per_jiffy.i = getelementptr inbounds %struct.cpuinfo_arm, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %loops_per_jiffy.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %loops_per_jiffy.i, align 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #23, !srcloc !198
  %cpuid2.i = getelementptr inbounds %struct.cpuinfo_arm, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %cpuid2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cpuid2.i, align 8
  tail call void @store_cpu_topology(i32 noundef %4) #18
  tail call void @check_cpu_icache_size(i32 noundef %4) #18
  %12 = tail call i32 @llvm.umin.i32(i32 %call4.i.i, i32 %max_cpus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i.i)
  %cmp2 = icmp ult i32 %call4.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end7_crit_edge, label %if.then3

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then3:                                         ; preds = %entry
  tail call void @init_cpu_present(ptr noundef nonnull @__cpu_possible_mask) #18
  %13 = load ptr, ptr getelementptr inbounds (%struct.smp_operations, ptr @smp_ops, i32 0, i32 1), align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.then3.if.end7_crit_edge, label %if.then5

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %13(i32 noundef %12) #18
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cpu_topology() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cpu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @show_ipi_list(ptr noundef %p, i32 noundef %prec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %prec, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @ipi_desc, i32 0, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %for.body
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.26, i32 noundef %sub, ptr noundef nonnull @.str.27, i32 noundef %i.020) #18
  %call17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %2)
  %cmp218 = icmp ult i32 %call17, %2
  br i1 %cmp218, label %if.end.for.body3_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end.for.body3_crit_edge:                       ; preds = %if.end
  br label %for.body3

for.body3:                                        ; preds = %irq_desc_kstat_cpu.exit.for.body3_crit_edge, %if.end.for.body3_crit_edge
  %call19 = phi i32 [ %call, %irq_desc_kstat_cpu.exit.for.body3_crit_edge ], [ %call17, %if.end.for.body3_crit_edge ]
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %kstat_irqs.i = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %kstat_irqs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kstat_irqs.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body3.irq_desc_kstat_cpu.exit_crit_edge, label %do.body.i

for.body3.irq_desc_kstat_cpu.exit_crit_edge:      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #20
  br label %irq_desc_kstat_cpu.exit

do.body.i:                                        ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %6 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %7
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  br label %irq_desc_kstat_cpu.exit

irq_desc_kstat_cpu.exit:                          ; preds = %do.body.i, %for.body3.irq_desc_kstat_cpu.exit_crit_edge
  %cond.i = phi i32 [ %12, %do.body.i ], [ 0, %for.body3.irq_desc_kstat_cpu.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.28, i32 noundef %cond.i) #18
  %call = tail call i32 @cpumask_next(i32 noundef %call19, ptr noundef nonnull @__cpu_online_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call, %13
  br i1 %cmp2, label %irq_desc_kstat_cpu.exit.for.body3_crit_edge, label %irq_desc_kstat_cpu.exit.for.end_crit_edge

irq_desc_kstat_cpu.exit.for.end_crit_edge:        ; preds = %irq_desc_kstat_cpu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

irq_desc_kstat_cpu.exit.for.body3_crit_edge:      ; preds = %irq_desc_kstat_cpu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body3

for.end:                                          ; preds = %irq_desc_kstat_cpu.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %arrayidx6 = getelementptr [7 x ptr], ptr @ipi_types, i32 0, i32 %i.020
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.29, ptr noundef %15) #18
  br label %for.inc

for.inc:                                          ; preds = %for.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end7, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end7:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_send_call_function_ipi_mask(ptr noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @ipi_types, i32 0, i32 3), align 4
  tail call fastcc void @trace_ipi_raise_rcuidle(ptr noundef %mask, ptr noundef %0) #18
  %1 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 3), align 4
  %call.i = tail call i32 @__ipi_send_mask(ptr noundef %1, ptr noundef %mask) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_send_wakeup_ipi_mask(ptr noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ipi_types, align 4
  tail call fastcc void @trace_ipi_raise_rcuidle(ptr noundef %mask, ptr noundef %0) #18
  %1 = load ptr, ptr @ipi_desc, align 4
  %call.i = tail call i32 @__ipi_send_mask(ptr noundef %1, ptr noundef %mask) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_send_call_function_single_ipi(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %0 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @ipi_types, i32 0, i32 3), align 4
  tail call fastcc void @trace_ipi_raise_rcuidle(ptr noundef %add.ptr.i, ptr noundef %0) #18
  %1 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 3), align 4
  %call.i = tail call i32 @__ipi_send_mask(ptr noundef %1, ptr noundef %add.ptr.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_irq_work_raise() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %1 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %rem.i = and i32 %4, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %4, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %5 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @ipi_types, i32 0, i32 5), align 4
  tail call fastcc void @trace_ipi_raise_rcuidle(ptr noundef %add.ptr.i, ptr noundef %5) #18
  %6 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 5), align 4
  %call.i = tail call i32 @__ipi_send_mask(ptr noundef %6, ptr noundef %add.ptr.i) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_broadcast(ptr noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @ipi_types, i32 0, i32 1), align 4
  tail call fastcc void @trace_ipi_raise_rcuidle(ptr noundef %mask, ptr noundef %0) #18
  %1 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 1), align 4
  %call.i = tail call i32 @__ipi_send_mask(ptr noundef %1, ptr noundef %mask) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @register_ipi_completion(ptr noundef %completion, i32 noundef %cpu) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_completion to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %completion, ptr %2, align 4
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_IPI(i32 noundef %ipinr, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  store ptr %regs, ptr %6, align 4
  tail call void @irq_enter() #18
  tail call fastcc void @do_handle_IPI(i32 noundef %ipinr) #18
  tail call void @irq_exit() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i2.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i2.i to ptr
  %cpu.i3.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i3.i, align 4
  %arrayidx.i4.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i4.i, align 4
  %add.i5.i = add i32 %14, ptrtoint (ptr @__irq_regs to i32)
  %15 = inttoptr i32 %add.i5.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @handle_IPI(i32 noundef %ipinr, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  store ptr %regs, ptr %6, align 4
  tail call void @irq_enter() #18
  tail call fastcc void @do_handle_IPI(i32 noundef %ipinr)
  tail call void @irq_exit() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i2 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i2 to ptr
  %cpu.i3 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i3, align 4
  %arrayidx.i4 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i4, align 4
  %add.i5 = add i32 %14, ptrtoint (ptr @__irq_regs to i32)
  %15 = inttoptr i32 %add.i5 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_enter() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_handle_IPI(i32 noundef %ipinr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ipinr)
  %cmp = icmp ult i32 %ipinr, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [7 x ptr], ptr @ipi_types, i32 0, i32 %ipinr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @trace_ipi_entry_rcuidle(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = zext i32 %ipinr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ipinr, label %do.end [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 @tick_receive_broadcast() #18
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %7 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 16384
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @generic_smp_call_function_single_interrupt() #18
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %11 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i = icmp ult i32 %11, 4
  br i1 %cmp.i, label %if.then.i, label %sw.bb5.if.end.i_crit_edge

sw.bb5.if.end.i_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_lock(ptr noundef nonnull @stop_lock) #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %3) #22
  tail call void @dump_stack() #22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @stop_lock) #18
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb5.if.end.i_crit_edge
  tail call void @set_cpu_online(i32 noundef %3, i1 noundef zeroext false) #18
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #18, !srcloc !205
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !195
  %and.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #18, !srcloc !196
  br i1 %tobool.not.i, label %if.then4.i, label %if.end.i.while.body.i.preheader_crit_edge

if.end.i.while.body.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.preheader

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then4.i, %if.end.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !206
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !207
  tail call void asm sideeffect "wfe", "~{memory}"() #18, !srcloc !208
  br label %while.body.i

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @irq_work_run() #18
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @cpu_completion to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @complete(ptr noundef %17) #18
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__printk_safe_enter() #18
  %18 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i23 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i23 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx.i24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i24, align 4
  %add.i25 = add i32 %23, ptrtoint (ptr @__irq_regs to i32)
  %24 = inttoptr i32 %add.i25 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call10 = tail call zeroext i1 @nmi_cpu_backtrace(ptr noundef %26) #18
  tail call void @__printk_safe_exit() #18
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %3, i32 noundef %ipinr) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  br i1 %cmp, label %if.then13, label %sw.epilog.if.end15_crit_edge

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx14 = getelementptr [7 x ptr], ptr @ipi_types, i32 0, i32 %ipinr
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx14, align 4
  tail call fastcc void @trace_ipi_exit_rcuidle(ptr noundef %28)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sw.epilog.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @set_smp_ipi_range(i32 noundef %ipi_base, i32 noundef %n) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %n)
  %cmp = icmp slt i32 %n, 8
  br i1 %cmp, label %if.end, label %if.end.thread, !prof !185

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  store i32 8, ptr @nr_ipi, align 4
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 730, i32 noundef 9, ptr noundef null) #18
  store i32 %n, ptr @nr_ipi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp2170 = icmp sgt i32 %n, 0
  br i1 %cmp2170, label %if.end.for.body.preheader_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %if.end.thread
  br label %for.body

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %for.body.preheader
  %i.071 = phi i32 [ %inc, %if.end45.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add i32 %i.071, %ipi_base
  %call.i = tail call i32 @__request_percpu_irq(i32 noundef %add, ptr noundef nonnull @ipi_handler, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @irq_stat) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %for.body.if.end45_crit_edge, label %do.end39, !prof !184

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

do.end39:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 738, i32 noundef 9, ptr noundef null) #18
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %for.body.if.end45_crit_edge
  %call54 = tail call ptr @irq_to_desc(i32 noundef %add) #18
  %arrayidx = getelementptr [8 x ptr], ptr @ipi_desc, i32 0, i32 %i.071
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call54, ptr %arrayidx, align 4
  tail call void @irq_modify_status(i32 noundef %add, i32 noundef 0, i32 noundef 1048576) #18
  %inc = add nuw nsw i32 %i.071, 1
  %.pr = load i32, ptr @nr_ipi, align 4
  %cmp21 = icmp slt i32 %inc, %.pr
  br i1 %cmp21, label %if.end45.for.body_crit_edge, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end45.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %n, %if.end.for.end_crit_edge ], [ %.pr, %if.end45.for.end_crit_edge ]
  store i32 %ipi_base, ptr @ipi_irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ipi_base)
  %tobool.not.i = icmp eq i32 %ipi_base, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %cmp3.i = icmp sgt i32 %.lcssa, 0
  br i1 %cmp3.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ipi_setup.exit_crit_edge

for.cond.preheader.i.ipi_setup.exit_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_setup.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

land.rhs.i:                                       ; preds = %for.end
  %.b1.i = load i1, ptr @ipi_setup.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.ipi_setup.exit_crit_edge, label %if.then.i, !prof !184

land.rhs.i.ipi_setup.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_setup.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @ipi_setup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 719, i32 noundef 9, ptr noundef null) #18
  br label %ipi_setup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %1 = load i32, ptr @ipi_irq_base, align 4
  %add.i = add i32 %1, %i.04.i
  tail call void @enable_percpu_irq(i32 noundef %add.i, i32 noundef 0) #18
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %2 = load i32, ptr @nr_ipi, align 4
  %cmp.i = icmp slt i32 %inc.i, %2
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ipi_setup.exit_crit_edge

for.body.i.ipi_setup.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ipi_setup.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

ipi_setup.exit:                                   ; preds = %for.body.i.ipi_setup.exit_crit_edge, %if.then.i, %land.rhs.i.ipi_setup.exit_crit_edge, %for.cond.preheader.i.ipi_setup.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipi_handler(i32 noundef %irq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipi_irq_base, align 4
  %sub = sub i32 %irq, %0
  tail call fastcc void @do_handle_IPI(i32 noundef %sub)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_send_reschedule(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %0 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @ipi_types, i32 0, i32 2), align 4
  tail call fastcc void @trace_ipi_raise_rcuidle(ptr noundef %add.ptr.i, ptr noundef %0) #18
  %1 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 2), align 4
  %call.i = tail call i32 @__ipi_send_mask(ptr noundef %1, ptr noundef %add.ptr.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_send_stop() local_unnamed_addr #0 align 64 {
entry:
  %mask = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #18
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %1, 31
  %2 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %2, 536870908
  %3 = call ptr @memcpy(ptr %mask, ptr @__cpu_online_mask, i32 %mul.i.i)
  %4 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp.not.i.i.i = icmp ugt i32 %1, %7
  br i1 %cmp.not.i.i.i, label %entry.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_clear_cpu.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !184

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %entry.cpumask_clear_cpu.exit_crit_edge
  call void @_clear_bit(i32 noundef %7, ptr noundef nonnull %mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull %mask, i32 noundef %8) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %8)
  %cmp4.i.i = icmp eq i32 %call.i.i, %8
  br i1 %cmp4.i.i, label %cpumask_clear_cpu.exit.if.end_crit_edge, label %if.then

cpumask_clear_cpu.exit.if.end_crit_edge:          ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @ipi_types, i32 0, i32 4), align 4
  call fastcc void @trace_ipi_raise_rcuidle(ptr noundef nonnull %mask, ptr noundef %9) #18
  %10 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 4), align 4
  %call.i = call i32 @__ipi_send_mask(ptr noundef %10, ptr noundef nonnull %mask) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %cpumask_clear_cpu.exit.if.end_crit_edge
  %call.i.i.i10 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %11 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp11 = icmp ult i32 %11, 2
  br i1 %cmp11, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %timeout.012 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000000, %if.end.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.012, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748) #18
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %13 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp ult i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %call.i.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %14 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp4 = icmp ugt i32 %14, 1
  br i1 %cmp4, label %do.end, label %while.end.if.end7_crit_edge

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #22
  br label %if.end7

if.end7:                                          ; preds = %do.end, %while.end.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #18
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panic_smp_self_stop() local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @panic_smp_self_stop.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@panic_smp_self_stop, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @panic_smp_self_stop.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.33, i32 noundef %3) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i12 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i12 to ptr
  %cpu5 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu5, align 4
  tail call void @set_cpu_online(i32 noundef %7, i1 noundef zeroext false) #18
  br label %while.body

while.body:                                       ; preds = %while.body, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !209
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !210
  br label %while.body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @setup_profiling_timer(i32 noundef %multiplier) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @register_cpufreq_notifier() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_register_notifier(ptr noundef nonnull @cpufreq_notifier, i32 noundef 0) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_trigger_cpumask_backtrace(ptr noundef %mask, i1 noundef zeroext %exclude_self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nmi_trigger_cpumask_backtrace(ptr noundef %mask, i1 noundef zeroext %exclude_self, ptr noundef nonnull @raise_nmi) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nmi_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raise_nmi(ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ipi_desc, i32 0, i32 7), align 4
  %call = tail call i32 @__ipi_send_mask(ptr noundef %0, ptr noundef %mask) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ipi_raise(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_target_cpus = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_target_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_target_cpus, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %shr = lshr i32 %3, 16
  %call3 = tail call ptr @trace_print_bitmask_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %shr) #18
  %reason = getelementptr inbounds %struct.trace_event_raw_ipi_raise, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reason, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %call3, ptr noundef %5) #18
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_bitmask_seq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ipi_handler(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %reason = getelementptr inbounds %struct.trace_event_raw_ipi_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reason, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, ptr noundef %3) #18
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
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
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_processor(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @store_cpu_topology(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_cpu_icache_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ipi_entry_rcuidle(ptr noundef %reason) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_entry, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ipi_entry_rcuidle, %do.body)) #18
          to label %if.end53 [label %do.body], !srcloc !194

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_ipi_entry_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !184

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_ipi_entry_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 69, i32 noundef 9, ptr noundef null) #18
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !211
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #18
  tail call void @rcu_irq_enter_irqson() #18
  %17 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_entry, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end35.__traceiter_ipi_entry.exit_crit_edge, label %if.end35.do.body2.i_crit_edge

if.end35.do.body2.i_crit_edge:                    ; preds = %if.end35
  br label %do.body2.i

if.end35.__traceiter_ipi_entry.exit_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %__traceiter_ipi_entry.exit

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end35.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %17, %if.end35.do.body2.i_crit_edge ]
  %18 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  tail call void %19(ptr noundef %21, ptr noundef %reason) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %do.body2.i.__traceiter_ipi_entry.exit_crit_edge, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

do.body2.i.__traceiter_ipi_entry.exit_crit_edge:  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__traceiter_ipi_entry.exit

__traceiter_ipi_entry.exit:                       ; preds = %do.body2.i.__traceiter_ipi_entry.exit_crit_edge, %if.end35.__traceiter_ipi_entry.exit_crit_edge
  tail call void @rcu_irq_exit_irqson() #18
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !212
  %24 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i57 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %27, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %__traceiter_ipi_entry.exit, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_receive_broadcast() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_smp_call_function_single_interrupt() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nmi_cpu_backtrace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_exit() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ipi_exit_rcuidle(ptr noundef %reason) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_exit, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ipi_exit_rcuidle, %do.body)) #18
          to label %if.end53 [label %do.body], !srcloc !194

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_ipi_exit_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !184

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_ipi_exit_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 85, i32 noundef 9, ptr noundef null) #18
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !213
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #18
  tail call void @rcu_irq_enter_irqson() #18
  %17 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_exit, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end35.__traceiter_ipi_exit.exit_crit_edge, label %if.end35.do.body2.i_crit_edge

if.end35.do.body2.i_crit_edge:                    ; preds = %if.end35
  br label %do.body2.i

if.end35.__traceiter_ipi_exit.exit_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %__traceiter_ipi_exit.exit

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end35.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %17, %if.end35.do.body2.i_crit_edge ]
  %18 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  tail call void %19(ptr noundef %21, ptr noundef %reason) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %do.body2.i.__traceiter_ipi_exit.exit_crit_edge, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

do.body2.i.__traceiter_ipi_exit.exit_crit_edge:   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__traceiter_ipi_exit.exit

__traceiter_ipi_exit.exit:                        ; preds = %do.body2.i.__traceiter_ipi_exit.exit_crit_edge, %if.end35.__traceiter_ipi_exit.exit_crit_edge
  tail call void @rcu_irq_exit_irqson() #18
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !214
  %24 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i57 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %27, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %__traceiter_ipi_exit.exit, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ipi_raise_rcuidle(ptr noundef %mask, ptr noundef %reason) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_raise, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ipi_raise_rcuidle, %do.body)) #18
          to label %if.end53 [label %do.body], !srcloc !194

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !184

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_ipi_raise_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !184

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_ipi_raise_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 36, i32 noundef 9, ptr noundef null) #18
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !215
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #18
  tail call void @rcu_irq_enter_irqson() #18
  %17 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ipi_raise, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end35.__traceiter_ipi_raise.exit_crit_edge, label %if.end35.do.body2.i_crit_edge

if.end35.do.body2.i_crit_edge:                    ; preds = %if.end35
  br label %do.body2.i

if.end35.__traceiter_ipi_raise.exit_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %__traceiter_ipi_raise.exit

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end35.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %17, %if.end35.do.body2.i_crit_edge ]
  %18 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  tail call void %19(ptr noundef %21, ptr noundef %mask, ptr noundef %reason) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %do.body2.i.__traceiter_ipi_raise.exit_crit_edge, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

do.body2.i.__traceiter_ipi_raise.exit_crit_edge:  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__traceiter_ipi_raise.exit

__traceiter_ipi_raise.exit:                       ; preds = %do.body2.i.__traceiter_ipi_raise.exit_crit_edge, %if.end35.__traceiter_ipi_raise.exit_crit_edge
  tail call void @rcu_irq_exit_irqson() #18
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !216
  %24 = tail call i32 @llvm.read_register.i32(metadata !174) #18
  %and.i.i.i57 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %27, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %__traceiter_ipi_raise.exit, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipi_send_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_callback(ptr nocapture noundef readnone %nb, i32 noundef %val, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %3, i32 noundef %4) #18
  %flags = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @l_p_j_ref to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %do.body.if.end38_crit_edge

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

for.cond.preheader:                               ; preds = %do.body
  %call5235 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5235, i32 %13)
  %cmp236 = icmp ult i32 %call5235, %13
  br i1 %cmp236, label %do.body7.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.body7.lr.ph:                                   ; preds = %for.cond.preheader
  %old = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 1
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %do.body7.lr.ph
  %call5237 = phi i32 [ %call5235, %do.body7.lr.ph ], [ %call5, %do.body7.do.body7_crit_edge ]
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call5237
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %15, ptrtoint (ptr @cpu_data to i32)
  %16 = inttoptr i32 %add15 to ptr
  %loops_per_jiffy = getelementptr inbounds %struct.cpuinfo_arm, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %loops_per_jiffy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %loops_per_jiffy, align 4
  %add24 = add i32 %15, ptrtoint (ptr @l_p_j_ref to i32)
  %19 = inttoptr i32 %add24 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %19, align 4
  %21 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old, align 4
  %23 = load i32, ptr %arrayidx14, align 4
  %add33 = add i32 %23, ptrtoint (ptr @l_p_j_ref_freq to i32)
  %24 = inttoptr i32 %add33 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %24, align 4
  %call5 = tail call i32 @cpumask_next(i32 noundef %call5237, ptr noundef %3) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call5, %26
  br i1 %cmp, label %do.body7.do.body7_crit_edge, label %do.body7.for.end_crit_edge

do.body7.for.end_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body7

for.end:                                          ; preds = %do.body7.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = load i32, ptr @global_l_p_j_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool34.not = icmp eq i32 %27, 0
  br i1 %tobool34.not, label %if.then35, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %28 = load i32, ptr @loops_per_jiffy, align 4
  store i32 %28, ptr @global_l_p_j_ref, align 4
  %old36 = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %old36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old36, align 4
  store i32 %30, ptr @global_l_p_j_ref_freq, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %for.end.if.end38_crit_edge, %do.body.if.end38_crit_edge
  %31 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %val, label %if.end38.cleanup_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true46
  ]

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end38
  %old41 = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %old41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old41, align 4
  %new = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 2
  %34 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp42 = icmp ult i32 %33, %35
  br i1 %cmp42, label %land.lhs.true.if.then51_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.then51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then51

land.lhs.true46:                                  ; preds = %if.end38
  %old47 = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %old47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %old47, align 4
  %new48 = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %new48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %new48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp49 = icmp ugt i32 %37, %39
  br i1 %cmp49, label %land.lhs.true46.if.then51_crit_edge, label %land.lhs.true46.cleanup_crit_edge

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true46.if.then51_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then51

if.then51:                                        ; preds = %land.lhs.true46.if.then51_crit_edge, %land.lhs.true.if.then51_crit_edge
  %40 = load i32, ptr @global_l_p_j_ref, align 4
  %41 = load i32, ptr @global_l_p_j_ref_freq, align 4
  %new52 = getelementptr inbounds %struct.cpufreq_freqs, ptr %data, i32 0, i32 2
  %42 = ptrtoint ptr %new52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %new52, align 4
  %conv.i = zext i32 %40 to i64
  %conv1.i = zext i32 %43 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp169.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !184

if.then173.i:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #20
  %conv174.i = trunc i64 %mul.i to i32
  %div177.i = udiv i32 %conv174.i, %41
  br label %cpufreq_scale.exit

if.else179.i:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #20
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %mul.i) #23, !srcloc !217
  %asmresult1.i.i = extractvalue { i64, i64 } %44, 1
  %extract.t290.i = trunc i64 %asmresult1.i.i to i32
  br label %cpufreq_scale.exit

cpufreq_scale.exit:                               ; preds = %if.else179.i, %if.then173.i
  %result.0.off0.i = phi i32 [ %div177.i, %if.then173.i ], [ %extract.t290.i, %if.else179.i ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  store i32 %result.0.off0.i, ptr @loops_per_jiffy, align 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %add62 = add i32 %46, ptrtoint (ptr @l_p_j_ref to i32)
  %47 = inttoptr i32 %add62 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add71 = add i32 %46, ptrtoint (ptr @l_p_j_ref_freq to i32)
  %50 = inttoptr i32 %add71 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %conv.i116 = zext i32 %49 to i64
  %mul.i118 = mul nuw i64 %conv.i116, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i118)
  %cmp169.i225 = icmp ult i64 %mul.i118, 4294967296
  br i1 %cmp169.i225, label %if.then173.i229, label %if.else179.i232, !prof !184

if.then173.i229:                                  ; preds = %cpufreq_scale.exit
  call void @__sanitizer_cov_trace_pc() #20
  %conv174.i227 = trunc i64 %mul.i118 to i32
  %div177.i228 = udiv i32 %conv174.i227, %52
  br label %cpufreq_scale.exit234

if.else179.i232:                                  ; preds = %cpufreq_scale.exit
  call void @__sanitizer_cov_trace_pc() #20
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %52, i64 %mul.i118) #23, !srcloc !217
  %asmresult1.i.i230 = extractvalue { i64, i64 } %53, 1
  %extract.t290.i231 = trunc i64 %asmresult1.i.i230 to i32
  br label %cpufreq_scale.exit234

cpufreq_scale.exit234:                            ; preds = %if.else179.i232, %if.then173.i229
  %result.0.off0.i233 = phi i32 [ %div177.i228, %if.then173.i229 ], [ %extract.t290.i231, %if.else179.i232 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %call75238 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #24
  call void @__sanitizer_cov_trace_cmp4(i32 %call75238, i32 %54)
  %cmp76239 = icmp ult i32 %call75238, %54
  br i1 %cmp76239, label %cpufreq_scale.exit234.for.body78_crit_edge, label %cpufreq_scale.exit234.cleanup_crit_edge

cpufreq_scale.exit234.cleanup_crit_edge:          ; preds = %cpufreq_scale.exit234
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cpufreq_scale.exit234.for.body78_crit_edge:       ; preds = %cpufreq_scale.exit234
  br label %for.body78

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %cpufreq_scale.exit234.for.body78_crit_edge
  %call75240 = phi i32 [ %call75, %for.body78.for.body78_crit_edge ], [ %call75238, %cpufreq_scale.exit234.for.body78_crit_edge ]
  %arrayidx86 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call75240
  %55 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx86, align 4
  %add87 = add i32 %56, ptrtoint (ptr @cpu_data to i32)
  %57 = inttoptr i32 %add87 to ptr
  %loops_per_jiffy88 = getelementptr inbounds %struct.cpuinfo_arm, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %loops_per_jiffy88 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %result.0.off0.i233, ptr %loops_per_jiffy88, align 4
  %call75 = tail call i32 @cpumask_next(i32 noundef %call75240, ptr noundef %3) #24
  %cmp76 = icmp ult i32 %call75, %54
  br i1 %cmp76, label %for.body78.for.body78_crit_edge, label %for.body78.cleanup_crit_edge

for.body78.cleanup_crit_edge:                     ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body78

cleanup:                                          ; preds = %for.body78.cleanup_crit_edge, %cpufreq_scale.exit234.cleanup_crit_edge, %land.lhs.true46.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind readnone }
attributes #24 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !107, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !133, !135, !136, !138, !140, !141, !143, !145, !147, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !168, !170, !172}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__tracepoint_ipi_raise, !1, !"__tracepoint_ipi_raise", i1 false, i1 false}
!1 = !{!"../include/trace/events/ipi.h", i32 19, i32 1}
!2 = !{ptr @__tracepoint_ptr_ipi_raise, !1, !"__tracepoint_ptr_ipi_raise", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_ipi_raise, !1, !"__SCK__tp_func_ipi_raise", i1 false, i1 false}
!4 = !{ptr @__tracepoint_ipi_entry, !5, !"__tracepoint_ipi_entry", i1 false, i1 false}
!5 = !{!"../include/trace/events/ipi.h", i32 64, i32 1}
!6 = !{ptr @__tracepoint_ptr_ipi_entry, !5, !"__tracepoint_ptr_ipi_entry", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_ipi_entry, !5, !"__SCK__tp_func_ipi_entry", i1 false, i1 false}
!8 = !{ptr @__tracepoint_ipi_exit, !9, !"__tracepoint_ipi_exit", i1 false, i1 false}
!9 = !{!"../include/trace/events/ipi.h", i32 80, i32 1}
!10 = !{ptr @__tracepoint_ptr_ipi_exit, !9, !"__tracepoint_ptr_ipi_exit", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_ipi_exit, !9, !"__SCK__tp_func_ipi_exit", i1 false, i1 false}
!12 = !{ptr @event_class_ipi_raise, !1, !"event_class_ipi_raise", i1 false, i1 false}
!13 = !{ptr @event_ipi_raise, !1, !"event_ipi_raise", i1 false, i1 false}
!14 = !{ptr @__event_ipi_raise, !1, !"__event_ipi_raise", i1 false, i1 false}
!15 = !{ptr @event_class_ipi_handler, !16, !"event_class_ipi_handler", i1 false, i1 false}
!16 = !{!"../include/trace/events/ipi.h", i32 38, i32 1}
!17 = !{ptr @event_ipi_entry, !5, !"event_ipi_entry", i1 false, i1 false}
!18 = !{ptr @__event_ipi_entry, !5, !"__event_ipi_entry", i1 false, i1 false}
!19 = !{ptr @event_ipi_exit, !9, !"event_ipi_exit", i1 false, i1 false}
!20 = !{ptr @__event_ipi_exit, !9, !"__event_ipi_exit", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_ipi_raise, !1, !"__bpf_trace_tp_map_ipi_raise", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_ipi_entry, !5, !"__bpf_trace_tp_map_ipi_entry", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_ipi_exit, !9, !"__bpf_trace_tp_map_ipi_exit", i1 false, i1 false}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/smp.c", i32 172, i32 4}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__cpu_up._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @__cpu_up._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/smp.c", i32 176, i32 3}
!32 = !{ptr @__cpu_up._entry.3, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @__cpu_up._entry_ptr.5, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/kernel/smp.c", i32 298, i32 3}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__cpu_die._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @__cpu_die._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/smp.c", i32 301, i32 2}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__cpu_die.__UNIQUE_ID_ddebug288, !40, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/kernel/smp.c", i32 312, i32 3}
!45 = !{ptr @__cpu_die._entry.10, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @__cpu_die._entry_ptr.12, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/smp.c", i32 369, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @arch_cpu_idle_dead._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @arch_cpu_idle_dead._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/kernel/smp.c", i32 439, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @secondary_start_kernel.__UNIQUE_ID_ddebug289, !53, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/kernel/smp.c", i32 486, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @smp_cpus_done._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @smp_cpus_done._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/kernel/smp.c", i32 532, i32 18}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/kernel/smp.c", i32 533, i32 17}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/kernel/smp.c", i32 534, i32 21}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/kernel/smp.c", i32 535, i32 21}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/kernel/smp.c", i32 536, i32 20}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/kernel/smp.c", i32 537, i32 20}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/kernel/smp.c", i32 538, i32 21}
!75 = !{ptr @ipi_types, !76, !"ipi_types", i1 false, i1 false}
!76 = !{!"../arch/arm/kernel/smp.c", i32 531, i32 20}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/kernel/smp.c", i32 551, i32 17}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/kernel/smp.c", i32 551, i32 38}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/kernel/smp.c", i32 554, i32 18}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/kernel/smp.c", i32 556, i32 17}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/kernel/smp.c", i32 771, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @smp_send_stop._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @smp_send_stop._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/kernel/smp.c", i32 782, i32 2}
!92 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @panic_smp_self_stop.__UNIQUE_ID_ddebug292, !91, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!94 = !{ptr @__initcall__kmod_smp__293_851_register_cpufreq_notifier1, !95, !"__initcall__kmod_smp__293_851_register_cpufreq_notifier1", i1 false, i1 false}
!95 = !{!"../arch/arm/kernel/smp.c", i32 851, i32 1}
!96 = !{ptr @secondary_data, !97, !"secondary_data", i1 false, i1 false}
!97 = !{!"../arch/arm/kernel/smp.c", i32 59, i32 23}
!98 = !{ptr @ipi_irq_base, !99, !"ipi_irq_base", i1 false, i1 false}
!99 = !{!"../arch/arm/kernel/smp.c", i32 83, i32 12}
!100 = !{ptr @ipi_desc, !101, !"ipi_desc", i1 false, i1 false}
!101 = !{!"../arch/arm/kernel/smp.c", i32 85, i32 25}
!102 = !{ptr @smp_ops, !103, !"smp_ops", i1 false, i1 false}
!103 = !{!"../arch/arm/kernel/smp.c", i32 91, i32 30}
!104 = !{ptr @__pcpu_unique_cpu_completion, !105, !"__pcpu_unique_cpu_completion", i1 false, i1 false}
!105 = !{!"../arch/arm/kernel/smp.c", i32 615, i32 8}
!106 = !{ptr @cpu_completion, !105, !"cpu_completion", i1 false, i1 false}
!107 = !{ptr @__pcpu_unique_l_p_j_ref, !108, !"__pcpu_unique_l_p_j_ref", i1 false, i1 false}
!108 = !{!"../arch/arm/kernel/smp.c", i32 799, i32 8}
!109 = !{ptr @l_p_j_ref, !108, !"l_p_j_ref", i1 false, i1 false}
!110 = !{ptr @__pcpu_unique_l_p_j_ref_freq, !111, !"__pcpu_unique_l_p_j_ref_freq", i1 false, i1 false}
!111 = !{!"../arch/arm/kernel/smp.c", i32 800, i32 8}
!112 = !{ptr @l_p_j_ref_freq, !111, !"l_p_j_ref_freq", i1 false, i1 false}
!113 = !{ptr @__tpstrtab_ipi_raise, !1, !"__tpstrtab_ipi_raise", i1 false, i1 false}
!114 = !{ptr @__tpstrtab_ipi_entry, !5, !"__tpstrtab_ipi_entry", i1 false, i1 false}
!115 = !{ptr @__tpstrtab_ipi_exit, !9, !"__tpstrtab_ipi_exit", i1 false, i1 false}
!116 = !{ptr @str__ipi__trace_system_name, !117, !"str__ipi__trace_system_name", i1 false, i1 false}
!117 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!118 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @trace_event_fields_ipi_raise, !1, !"trace_event_fields_ipi_raise", i1 false, i1 false}
!123 = !{ptr @trace_event_type_funcs_ipi_raise, !1, !"trace_event_type_funcs_ipi_raise", i1 false, i1 false}
!124 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @print_fmt_ipi_raise, !1, !"print_fmt_ipi_raise", i1 false, i1 false}
!126 = !{ptr @trace_event_fields_ipi_handler, !16, !"trace_event_fields_ipi_handler", i1 false, i1 false}
!127 = !{ptr @trace_event_type_funcs_ipi_handler, !16, !"trace_event_type_funcs_ipi_handler", i1 false, i1 false}
!128 = !{ptr @.str.39, !16, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @print_fmt_ipi_handler, !16, !"print_fmt_ipi_handler", i1 false, i1 false}
!130 = !{ptr @.str.40, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/kernel/smp.c", i32 89, i32 8}
!132 = !{ptr @cpu_running, !131, !"cpu_running", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!135 = !{ptr @.str.41, !134, !"<string literal>", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../arch/arm/kernel/smp.c", i32 243, i32 6}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../arch/arm/include/asm/proc-fns.h", i32 120, i32 2}
!140 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../arch/arm/include/asm/proc-fns.h", i32 122, i32 2}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/asm-generic/irq_regs.h", i32 28, i32 13}
!145 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/asm-generic/irq_regs.h", i32 29, i32 2}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../arch/arm/kernel/smp.c", i32 682, i32 3}
!149 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @do_handle_IPI._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @do_handle_IPI._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!153 = !{ptr @.str.48, !5, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../arch/arm/kernel/smp.c", i32 599, i32 3}
!156 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ipi_cpu_stop._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @ipi_cpu_stop._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.51, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../arch/arm/kernel/smp.c", i32 590, i32 8}
!161 = !{ptr @stop_lock, !160, !"stop_lock", i1 false, i1 false}
!162 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!163 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../arch/arm/kernel/smp.c", i32 719, i32 6}
!166 = !{ptr @nr_ipi, !167, !"nr_ipi", i1 false, i1 false}
!167 = !{!"../arch/arm/kernel/smp.c", i32 84, i32 12}
!168 = !{ptr @cpufreq_notifier, !169, !"cpufreq_notifier", i1 false, i1 false}
!169 = !{!"../arch/arm/kernel/smp.c", i32 842, i32 30}
!170 = !{ptr @global_l_p_j_ref, !171, !"global_l_p_j_ref", i1 false, i1 false}
!171 = !{!"../arch/arm/kernel/smp.c", i32 801, i32 22}
!172 = !{ptr @global_l_p_j_ref_freq, !173, !"global_l_p_j_ref_freq", i1 false, i1 false}
!173 = !{!"../arch/arm/kernel/smp.c", i32 802, i32 22}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{!"auto-init"}
!187 = !{i64 2152536884}
!188 = !{i64 2152528231, i64 2152528244}
!189 = !{i64 2152530509, i64 2152530522}
!190 = !{i64 2152532790, i64 2152532803}
!191 = !{i64 2152537180, i64 2152537193}
!192 = !{i64 2152541051}
!193 = !{i64 2152541136}
!194 = !{i64 2148970950, i64 2148970955, i64 2148970968, i64 2148971012, i64 2148971046, i64 2148971067}
!195 = !{i64 764005}
!196 = !{i64 761708}
!197 = !{i64 8865, i64 8882, i64 8899, i64 8916}
!198 = !{i64 2154573653}
!199 = !{i64 5039025}
!200 = !{i64 5039252}
!201 = !{i64 2148357573, i64 2148357599, i64 2148357628, i64 2148357662, i64 2148357693, i64 2148357716}
!202 = !{i64 761518}
!203 = !{i64 2155772098}
!204 = !{i64 2155772146}
!205 = !{i64 2155778432}
!206 = !{i64 2155778907}
!207 = !{i64 2155778749}
!208 = !{i64 2155778992}
!209 = !{i64 2155792400}
!210 = !{i64 2155792242}
!211 = !{i64 2154712496}
!212 = !{i64 2154712689}
!213 = !{i64 2154731937}
!214 = !{i64 2154732128}
!215 = !{i64 2154697023}
!216 = !{i64 2154697228}
!217 = !{i64 2148203997, i64 2148204277, i64 2148204611, i64 2148204945}
