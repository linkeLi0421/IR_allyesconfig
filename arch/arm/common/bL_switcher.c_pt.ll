; ModuleID = '/llk/IR_all_yes/arch/arm/common/bL_switcher.c_pt.bc'
source_filename = "../arch/arm/common/bL_switcher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bL_switch_request_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_bL_switch_request_cb\09\09\09\09"
module asm "\09.long\09__crc_bL_switch_request_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bL_switch_request_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22bL_switch_request_cb\22\09\09\09\09\09"
module asm "__kstrtabns_bL_switch_request_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bL_switcher_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_bL_switcher_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_bL_switcher_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bL_switcher_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22bL_switcher_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_bL_switcher_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bL_switcher_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_bL_switcher_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_bL_switcher_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bL_switcher_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22bL_switcher_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_bL_switcher_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bL_switcher_trace_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_bL_switcher_trace_trigger\09\09\09\09"
module asm "\09.long\09__crc_bL_switcher_trace_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bL_switcher_trace_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22bL_switcher_trace_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_bL_switcher_trace_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bL_switcher_get_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_bL_switcher_get_enabled\09\09\09\09"
module asm "\09.long\09__crc_bL_switcher_get_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bL_switcher_get_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22bL_switcher_get_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_bL_switcher_get_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bL_switcher_put_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_bL_switcher_put_enabled\09\09\09\09"
module asm "\09.long\09__crc_bL_switcher_put_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bL_switcher_put_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22bL_switcher_put_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_bL_switcher_put_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bL_thread = type { %struct.spinlock, ptr, %struct.wait_queue_head, i32, %struct.completion, ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cpu_migrate = type { %struct.trace_entry, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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

@__tpstrtab_cpu_migrate_begin = internal constant [18 x i8] c"cpu_migrate_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpu_migrate_begin = dso_local global %struct.static_call_key { ptr @__traceiter_cpu_migrate_begin }, align 4
@__tracepoint_cpu_migrate_begin = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cpu_migrate_begin, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cpu_migrate_begin, ptr null, ptr @__traceiter_cpu_migrate_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpu_migrate_begin = internal constant ptr @__tracepoint_cpu_migrate_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpu_migrate_finish = internal constant [19 x i8] c"cpu_migrate_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpu_migrate_finish = dso_local global %struct.static_call_key { ptr @__traceiter_cpu_migrate_finish }, align 4
@__tracepoint_cpu_migrate_finish = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cpu_migrate_finish, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cpu_migrate_finish, ptr null, ptr @__traceiter_cpu_migrate_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpu_migrate_finish = internal constant ptr @__tracepoint_cpu_migrate_finish, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpu_migrate_current = internal constant [20 x i8] c"cpu_migrate_current\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpu_migrate_current = dso_local global %struct.static_call_key { ptr @__traceiter_cpu_migrate_current }, align 4
@__tracepoint_cpu_migrate_current = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cpu_migrate_current, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cpu_migrate_current, ptr null, ptr @__traceiter_cpu_migrate_current, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpu_migrate_current = internal constant ptr @__tracepoint_cpu_migrate_current, section "__tracepoints_ptrs", align 4
@str__power__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_cpu_migrate = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.0 { %struct.anon { ptr @.str.4, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cpu_migrate = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_cpu_migrate, ptr @perf_trace_cpu_migrate, ptr @trace_event_reg, ptr @trace_event_fields_cpu_migrate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpu_migrate, i64 24), ptr getelementptr (i8, ptr @event_class_cpu_migrate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpu_migrate = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cpu_migrate, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cpu_migrate = internal global { [100 x i8], [60 x i8] } { [100 x i8] c"\22timestamp=%llu cpu_hwid=0x%08lX\22, (unsigned long long)REC->timestamp, (unsigned long)REC->cpu_hwid\00", [60 x i8] zeroinitializer }, align 32
@event_cpu_migrate_begin = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu_migrate, %union.anon.1 { ptr @__tracepoint_cpu_migrate_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu_migrate }, ptr @print_fmt_cpu_migrate, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cpu_migrate_begin = internal global ptr @event_cpu_migrate_begin, section "_ftrace_events", align 4
@event_cpu_migrate_finish = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu_migrate, %union.anon.1 { ptr @__tracepoint_cpu_migrate_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu_migrate }, ptr @print_fmt_cpu_migrate, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cpu_migrate_finish = internal global ptr @event_cpu_migrate_finish, section "_ftrace_events", align 4
@event_cpu_migrate_current = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu_migrate, %union.anon.1 { ptr @__tracepoint_cpu_migrate_current }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu_migrate }, ptr @print_fmt_cpu_migrate, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cpu_migrate_current = internal global ptr @event_cpu_migrate_current, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cpu_migrate_begin = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_cpu_migrate_begin, ptr @__bpf_trace_cpu_migrate, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cpu_migrate_finish = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_cpu_migrate_finish, ptr @__bpf_trace_cpu_migrate, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cpu_migrate_current = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_cpu_migrate_current, ptr @__bpf_trace_cpu_migrate, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@bL_switch_request_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: cpu %d out of bounds\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bL_switch_request_cb\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/common/bL_switcher.c\00", [34 x i8] zeroinitializer }, align 32
@bL_switch_request_cb._entry_ptr = internal global ptr @bL_switch_request_cb._entry, section ".printk_index", align 4
@bL_threads = internal global { [4 x %struct.bL_thread], [160 x i8] } zeroinitializer, align 32
@__kstrtab_bL_switch_request_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_bL_switch_request_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_bL_switch_request_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bL_switch_request_cb to i32), ptr @__kstrtab_bL_switch_request_cb, ptr @__kstrtabns_bL_switch_request_cb }, section "___ksymtab_gpl+bL_switch_request_cb", align 4
@bL_activation_notifier = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @bL_activation_notifier, i64 56), ptr getelementptr (i8, ptr @bL_activation_notifier, i64 56) }, ptr @bL_activation_notifier, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_bL_switcher_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_bL_switcher_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_bL_switcher_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bL_switcher_register_notifier to i32), ptr @__kstrtab_bL_switcher_register_notifier, ptr @__kstrtabns_bL_switcher_register_notifier }, section "___ksymtab_gpl+bL_switcher_register_notifier", align 4
@__kstrtab_bL_switcher_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_bL_switcher_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_bL_switcher_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bL_switcher_unregister_notifier to i32), ptr @__kstrtab_bL_switcher_unregister_notifier, ptr @__kstrtabns_bL_switcher_unregister_notifier }, section "___ksymtab_gpl+bL_switcher_unregister_notifier", align 4
@bL_switcher_active = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bL_switcher_cpu_pairing = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@__kstrtab_bL_switcher_trace_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_bL_switcher_trace_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_bL_switcher_trace_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bL_switcher_trace_trigger to i32), ptr @__kstrtab_bL_switcher_trace_trigger, ptr @__kstrtabns_bL_switcher_trace_trigger }, section "___ksymtab_gpl+bL_switcher_trace_trigger", align 4
@bL_switcher_activation_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bL_switcher_activation_lock, i64 52), ptr getelementptr (i8, ptr @bL_switcher_activation_lock, i64 52) }, ptr @bL_switcher_activation_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_bL_switcher_get_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_bL_switcher_get_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_bL_switcher_get_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bL_switcher_get_enabled to i32), ptr @__kstrtab_bL_switcher_get_enabled, ptr @__kstrtabns_bL_switcher_get_enabled }, section "___ksymtab_gpl+bL_switcher_get_enabled", align 4
@__kstrtab_bL_switcher_put_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_bL_switcher_put_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_bL_switcher_put_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bL_switcher_put_enabled to i32), ptr @__kstrtab_bL_switcher_put_enabled, ptr @__kstrtabns_bL_switcher_put_enabled }, section "___ksymtab_gpl+bL_switcher_put_enabled", align 4
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_bL_switcher = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_bL_switcher = internal constant %struct.kernel_param { ptr @___asan_gen_.123, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @no_bL_switcher } }, section "__param", align 4
@__initcall__kmod_bL_switcher__271_803_bL_switcher_init7 = internal global ptr @bL_switcher_init, section ".initcall7.init", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timestamp\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu_hwid\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timestamp=%llu cpu_hwid=0x%08lX\0A\00", [63 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(bL_activation_notifier).rwsem.wait_lock\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(bL_activation_notifier).rwsem\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"include/trace/events/power_cpu_migrate.h\00", [55 x i8] zeroinitializer }, align 32
@trace_cpu_migrate_current.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bL_switcher_activation_lock.wait_lock\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bL_switcher_activation_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm/bl:prepare\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm/bl:predown\00", [17 x i8] zeroinitializer }, align 32
@bL_switcher_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013bL_switcher: Failed to allocate a hotplug state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bL_switcher_init\00", [47 x i8] zeroinitializer }, align 32
@bL_switcher_init._entry_ptr = internal global ptr @bL_switcher_init._entry, section ".printk_index", align 4
@bL_switcher_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: unable to create sysfs entry\0A\00", [60 x i8] zeroinitializer }, align 32
@bL_switcher_init._entry_ptr.21 = internal global ptr @bL_switcher_init._entry.19, section ".printk_index", align 4
@bL_switcher_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016big.LITTLE switcher initializing\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bL_switcher_enable\00", [45 x i8] zeroinitializer }, align 32
@bL_switcher_enable._entry_ptr = internal global ptr @bL_switcher_enable._entry, section ".printk_index", align 4
@bL_switcher_enable.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&t->lock\00", [23 x i8] zeroinitializer }, align 32
@bL_switcher_enable.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"&t->wq\00", [25 x i8] zeroinitializer }, align 32
@bL_switcher_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016big.LITTLE switcher initialized\0A\00", [61 x i8] zeroinitializer }, align 32
@bL_switcher_enable._entry_ptr.29 = internal global ptr @bL_switcher_enable._entry.27, section ".printk_index", align 4
@bL_switcher_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014big.LITTLE switcher initialization failed\0A\00", [51 x i8] zeroinitializer }, align 32
@bL_switcher_enable._entry_ptr.32 = internal global ptr @bL_switcher_enable._entry.30, section ".printk_index", align 4
@bL_activation_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: notifier chain failed with status 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bL_activation_notify\00", [43 x i8] zeroinitializer }, align 32
@bL_activation_notify._entry_ptr = internal global ptr @bL_activation_notify._entry, section ".printk_index", align 4
@bL_switcher_halve_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: only dual cluster systems are supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bL_switcher_halve_cpus\00", [41 x i8] zeroinitializer }, align 32
@bL_switcher_halve_cpus._entry_ptr = internal global ptr @bL_switcher_halve_cpus._entry, section ".printk_index", align 4
@bL_switcher_halve_cpus._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: no CPU pairing possible\0A\00", [33 x i8] zeroinitializer }, align 32
@bL_switcher_halve_cpus._entry_ptr.39 = internal global ptr @bL_switcher_halve_cpus._entry.37, section ".printk_index", align 4
@bL_switcher_halve_cpus._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016CPU%d paired with CPU%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bL_switcher_halve_cpus._entry_ptr.42 = internal global ptr @bL_switcher_halve_cpus._entry.40, section ".printk_index", align 4
@bL_switcher_removed_logical_cpus = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@bL_switcher_halve_cpus._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: bad GIC ID for CPU %d\0A\00", [35 x i8] zeroinitializer }, align 32
@bL_switcher_halve_cpus._entry_ptr.45 = internal global ptr @bL_switcher_halve_cpus._entry.43, section ".printk_index", align 4
@bL_gic_id = internal global { [4 x [4 x i32]], [32 x i8] } zeroinitializer, align 32
@bL_switcher_halve_cpus._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016GIC ID for CPU %u cluster %u is %u\0A\00", [58 x i8] zeroinitializer }, align 32
@bL_switcher_halve_cpus._entry_ptr.48 = internal global ptr @bL_switcher_halve_cpus._entry.46, section ".printk_index", align 4
@bL_switcher_cpu_original_cluster = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@bL_switcher_restore_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 415, ptr @.str.51, ptr @.str.52 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"switcher: unable to restore CPU\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bL_switcher_restore_cpus\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bL_switcher_restore_cpus._entry_ptr = internal global ptr @bL_switcher_restore_cpus._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kswitcher_%d\00", [19 x i8] zeroinitializer }, align 32
@bL_switcher_thread_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s failed for CPU %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bL_switcher_thread_create\00", [38 x i8] zeroinitializer }, align 32
@bL_switcher_thread_create._entry_ptr = internal global ptr @bL_switcher_thread_create._entry, section ".printk_index", align 4
@bL_switch_to.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bL_switcher\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bL_switch_to\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"before switch: CPU %d MPIDR %#x -> %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@bL_switch_to._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: mcpm_cpu_power_up() returned %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bL_switch_to._entry_ptr = internal global ptr @bL_switch_to._entry, section ".printk_index", align 4
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: cpu_pm_enter() returned %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: cpu_suspend() returned %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bL_switch_to.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"after switch: CPU %d MPIDR %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@bL_switch_to._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.58, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s exiting with error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bL_switch_to._entry_ptr.66 = internal global ptr @bL_switch_to._entry.64, section ".printk_index", align 4
@trace_cpu_migrate_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bL_do_switch.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bL_do_switch\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@trace_cpu_migrate_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@bL_switcher_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bL_switcher_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bL_switcher_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bL_switcher_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bL_switcher_active_attr, ptr @bL_switcher_trace_trigger_attr, ptr null], [20 x i8] zeroinitializer }, align 32
@bL_switcher_active_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bL_switcher_active_show, ptr @bL_switcher_active_store }, [36 x i8] zeroinitializer }, align 32
@bL_switcher_trace_trigger_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.76, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bL_switcher_trace_trigger_store }, [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@bL_switcher_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\012%s: unable to restore original cluster for CPU %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bL_switcher_disable\00", [44 x i8] zeroinitializer }, align 32
@bL_switcher_disable._entry_ptr = internal global ptr @bL_switcher_disable._entry, section ".printk_index", align 4
@bL_switcher_disable._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012%s: CPU %d can't be restored\0A\00", [32 x i8] zeroinitializer }, align 32
@bL_switcher_disable._entry_ptr.75 = internal global ptr @bL_switcher_disable._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trace_trigger\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@___asan_gen_.77 = private unnamed_addr constant [30 x i8] c"str__power__trace_system_name\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 36, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"trace_event_fields_cpu_migrate\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_cpu_migrate\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"print_fmt_cpu_migrate\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"event_cpu_migrate_begin\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 44, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"event_cpu_migrate_finish\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 45, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"event_cpu_migrate_current\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 349, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"bL_threads\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 268, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"bL_activation_notifier\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"bL_switcher_active\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [24 x i8] c"bL_switcher_cpu_pairing\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 138, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [28 x i8] c"bL_switcher_activation_lock\00", align 1
@___asan_gen_.123 = private constant [15 x i8] c"no_bL_switcher\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 769, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 17, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 379, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant [44 x i8] c"../include/trace/events/power_cpu_migrate.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 46, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 108, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 378, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 779, i32 50 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 781, i32 55 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 785, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 797, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 564, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 578, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 579, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 587, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 591, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 402, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 431, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 439, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 474, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [33 x i8] c"bL_switcher_removed_logical_cpus\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 382, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 490, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant [10 x i8] c"bL_gic_id\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 137, i32 21 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 495, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [33 x i8] c"bL_switcher_cpu_original_cluster\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 381, i32 21 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 415, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 87, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 311, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 316, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 169, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 190, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 224, i32 9 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 233, i32 9 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 237, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 254, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 67, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"bL_switcher_kobj\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 719, i32 24 }
@___asan_gen_.339 = private unnamed_addr constant [23 x i8] c"bL_switcher_attr_group\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 715, i32 31 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"bL_switcher_attrs\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 709, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant [24 x i8] c"bL_switcher_active_attr\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 703, i32 30 }
@___asan_gen_.348 = private unnamed_addr constant [31 x i8] c"bL_switcher_trace_trigger_attr\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 706, i32 30 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 704, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 672, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 651, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 653, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [33 x i8] c"../arch/arm/common/bL_switcher.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 707, i32 2 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__bpf_trace_tp_map_cpu_migrate_begin, ptr @__bpf_trace_tp_map_cpu_migrate_current, ptr @__bpf_trace_tp_map_cpu_migrate_finish, ptr @__event_cpu_migrate_begin, ptr @__event_cpu_migrate_current, ptr @__event_cpu_migrate_finish, ptr @__initcall__kmod_bL_switcher__271_803_bL_switcher_init7, ptr @__ksymtab_bL_switch_request_cb, ptr @__ksymtab_bL_switcher_get_enabled, ptr @__ksymtab_bL_switcher_put_enabled, ptr @__ksymtab_bL_switcher_register_notifier, ptr @__ksymtab_bL_switcher_trace_trigger, ptr @__ksymtab_bL_switcher_unregister_notifier, ptr @__param_no_bL_switcher, ptr @__tracepoint_cpu_migrate_begin, ptr @__tracepoint_cpu_migrate_current, ptr @__tracepoint_cpu_migrate_finish, ptr @__tracepoint_ptr_cpu_migrate_begin, ptr @__tracepoint_ptr_cpu_migrate_current, ptr @__tracepoint_ptr_cpu_migrate_finish, ptr @bL_activation_notify._entry, ptr @bL_activation_notify._entry_ptr, ptr @bL_switch_request_cb._entry, ptr @bL_switch_request_cb._entry_ptr, ptr @bL_switch_to._entry, ptr @bL_switch_to._entry.64, ptr @bL_switch_to._entry_ptr, ptr @bL_switch_to._entry_ptr.66, ptr @bL_switcher_disable._entry, ptr @bL_switcher_disable._entry.73, ptr @bL_switcher_disable._entry_ptr, ptr @bL_switcher_disable._entry_ptr.75, ptr @bL_switcher_enable._entry, ptr @bL_switcher_enable._entry.27, ptr @bL_switcher_enable._entry.30, ptr @bL_switcher_enable._entry_ptr, ptr @bL_switcher_enable._entry_ptr.29, ptr @bL_switcher_enable._entry_ptr.32, ptr @bL_switcher_halve_cpus._entry, ptr @bL_switcher_halve_cpus._entry.37, ptr @bL_switcher_halve_cpus._entry.40, ptr @bL_switcher_halve_cpus._entry.43, ptr @bL_switcher_halve_cpus._entry.46, ptr @bL_switcher_halve_cpus._entry_ptr, ptr @bL_switcher_halve_cpus._entry_ptr.39, ptr @bL_switcher_halve_cpus._entry_ptr.42, ptr @bL_switcher_halve_cpus._entry_ptr.45, ptr @bL_switcher_halve_cpus._entry_ptr.48, ptr @bL_switcher_init._entry, ptr @bL_switcher_init._entry.19, ptr @bL_switcher_init._entry_ptr, ptr @bL_switcher_init._entry_ptr.21, ptr @bL_switcher_restore_cpus._entry, ptr @bL_switcher_restore_cpus._entry_ptr, ptr @bL_switcher_thread_create._entry, ptr @bL_switcher_thread_create._entry_ptr, ptr @event_class_cpu_migrate, ptr @event_cpu_migrate_begin, ptr @event_cpu_migrate_current, ptr @event_cpu_migrate_finish, ptr @str__power__trace_system_name, ptr @trace_event_fields_cpu_migrate, ptr @trace_event_type_funcs_cpu_migrate, ptr @print_fmt_cpu_migrate, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bL_threads, ptr @bL_activation_notifier, ptr @bL_switcher_active, ptr @bL_switcher_cpu_pairing, ptr @bL_switcher_activation_lock, ptr @no_bL_switcher, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @bL_switcher_enable.__key, ptr @.str.24, ptr @bL_switcher_enable.__key.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @bL_switcher_removed_logical_cpus, ptr @.str.44, ptr @bL_gic_id, ptr @.str.47, ptr @bL_switcher_cpu_original_cluster, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @init_completion.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @bL_switcher_kobj, ptr @bL_switcher_attr_group, ptr @bL_switcher_attrs, ptr @bL_switcher_active_attr, ptr @bL_switcher_trace_trigger_attr, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__power__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cpu_migrate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cpu_migrate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cpu_migrate to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cpu_migrate_begin to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cpu_migrate_finish to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cpu_migrate_current to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switch_request_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_threads to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_activation_notifier to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_active to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_cpu_pairing to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_activation_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_bL_switcher to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_enable.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_enable.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_activation_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_halve_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_halve_cpus._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_halve_cpus._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_removed_logical_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_halve_cpus._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_gic_id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_halve_cpus._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_cpu_original_cluster to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_restore_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_thread_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switch_to._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switch_to._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_active_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_trace_trigger_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bL_switcher_disable._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpu_migrate_begin(ptr nocapture readnone %__data, i64 noundef %timestamp, i32 noundef %cpu_hwid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_begin, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, i64 noundef %timestamp, i32 noundef %cpu_hwid) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpu_migrate_finish(ptr nocapture readnone %__data, i64 noundef %timestamp, i32 noundef %cpu_hwid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_finish, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, i64 noundef %timestamp, i32 noundef %cpu_hwid) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpu_migrate_current(ptr nocapture readnone %__data, i64 noundef %timestamp, i32 noundef %cpu_hwid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_current, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, i64 noundef %timestamp, i32 noundef %cpu_hwid) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpu_migrate(ptr noundef %__data, i64 noundef %timestamp, i32 noundef %cpu_hwid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !226

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !227

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %timestamp6 = getelementptr inbounds %struct.trace_event_raw_cpu_migrate, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %timestamp6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %timestamp, ptr %timestamp6, align 8
  %cpu_hwid7 = getelementptr inbounds %struct.trace_event_raw_cpu_migrate, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %cpu_hwid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cpu_hwid, ptr %cpu_hwid7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cpu_migrate(ptr noundef %__data, i64 noundef %timestamp, i32 noundef %cpu_hwid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !228
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !216) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %timestamp17 = getelementptr inbounds %struct.trace_event_raw_cpu_migrate, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %timestamp17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %timestamp, ptr %timestamp17, align 8
  %cpu_hwid18 = getelementptr inbounds %struct.trace_event_raw_cpu_migrate, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %cpu_hwid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cpu_hwid, ptr %cpu_hwid18, align 8
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cpu_migrate(ptr noundef %__data, i64 noundef %timestamp, i32 noundef %cpu_hwid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i32 %cpu_hwid to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %timestamp, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bL_switch_request_cb(i32 noundef %cpu, i32 noundef %new_cluster_id, ptr noundef %completer, ptr noundef %completer_cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %cpu) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %cpu
  %task = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %cpu, i32 1
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #15
  %completer9 = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %cpu, i32 5
  %3 = ptrtoint ptr %completer9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %completer9, align 4
  %tobool10.not = icmp eq ptr %4, null
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %completer9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %completer, ptr %completer9, align 4
  %completer_cookie15 = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %cpu, i32 6
  %6 = ptrtoint ptr %completer_cookie15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %completer_cookie, ptr %completer_cookie15, align 4
  %wanted_cluster = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %cpu, i32 3
  %7 = ptrtoint ptr %wanted_cluster to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_cluster_id, ptr %wanted_cluster, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #15
  %wq = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %cpu, i32 2
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.end5.cleanup_crit_edge, %if.then2, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %2, %if.then2 ], [ -16, %if.then11 ], [ 0, %if.end13 ], [ -3, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bL_switcher_register_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @bL_activation_notifier, ptr noundef %nb) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bL_switcher_unregister_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @bL_activation_notifier, ptr noundef %nb) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bL_switcher_get_logical_index(i32 noundef %mpidr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @bL_switcher_active, align 4
  br i1 %.b, label %if.end, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup10

if.end:                                           ; preds = %entry
  %and = and i32 %mpidr, 16777215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %0)
  %cmp22 = icmp ult i32 %call21, %0
  br i1 %cmp22, label %if.end.for.body_crit_edge, label %if.end.cleanup10_crit_edge

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup10

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %call23 = phi i32 [ %call, %cleanup.for.body_crit_edge ], [ %call21, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @bL_switcher_cpu_pairing, i32 0, i32 %call23
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %arrayidx4 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call23
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %4)
  %cmp5 = icmp eq i32 %and, %4
  br i1 %cmp5, label %if.end3.cleanup10_crit_edge, label %lor.lhs.false

if.end3.cleanup10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup10

lor.lhs.false:                                    ; preds = %if.end3
  %arrayidx6 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp7 = icmp eq i32 %and, %6
  br i1 %cmp7, label %lor.lhs.false.cleanup10_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.cleanup10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup10

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call23, ptr noundef nonnull @__cpu_online_mask) #19
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup10_crit_edge

cleanup.cleanup10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup10

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup10:                                        ; preds = %cleanup.cleanup10_crit_edge, %lor.lhs.false.cleanup10_crit_edge, %if.end3.cleanup10_crit_edge, %if.end.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ -49, %entry.cleanup10_crit_edge ], [ -22, %if.end.cleanup10_crit_edge ], [ -22, %cleanup.cleanup10_crit_edge ], [ %call23, %if.end3.cleanup10_crit_edge ], [ %call23, %lor.lhs.false.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bL_switcher_trace_trigger() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !229
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #15
  %4 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 5", "=r"() #15, !srcloc !230
  %and.i.i = and i32 %4, 16777215
  tail call fastcc void @trace_cpu_migrate_current(i64 noundef %call.i.i.i, i32 noundef %and.i.i) #15
  tail call void @smp_call_function(ptr noundef nonnull @bL_switcher_trace_trigger_cpu, ptr noundef null, i32 noundef 1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !231
  %5 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i3 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i3 to ptr
  %preempt_count.i.i4 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i4, align 4
  %sub.i = add i32 %8, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bL_switcher_trace_trigger_cpu(ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #15
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 5", "=r"() #15, !srcloc !230
  %and.i = and i32 %0, 16777215
  tail call fastcc void @trace_cpu_migrate_current(i64 noundef %call.i.i, i32 noundef %and.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bL_switcher_get_enabled() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bL_switcher_activation_lock, i32 noundef 0) #15
  %.b = load i1, ptr @bL_switcher_active, align 4
  ret i1 %.b
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bL_switcher_put_enabled() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @bL_switcher_activation_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switcher_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mcpm_is_available() #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 61, ptr noundef nonnull @.str.15, i1 noundef zeroext false, ptr noundef nonnull @bL_switcher_cpu_pre, ptr noundef null, i1 noundef zeroext false) #15
  %call.i25 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.16, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @bL_switcher_cpu_pre, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp = icmp slt i32 %call.i25, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__cpuhp_remove_state(i32 noundef 61, i1 noundef zeroext false) #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = load i8, ptr @no_bL_switcher, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then6, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then6:                                         ; preds = %if.end5
  %call7 = tail call fastcc i32 @bL_switcher_enable()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %call12 = tail call fastcc i32 @bL_switcher_sysfs_init() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i25, %if.then3 ], [ -19, %entry.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ 0, %do.end17 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cpu_migrate(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %timestamp = getelementptr inbounds %struct.trace_event_raw_cpu_migrate, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timestamp, align 8
  %cpu_hwid = getelementptr inbounds %struct.trace_event_raw_cpu_migrate, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cpu_hwid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu_hwid, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, i64 noundef %3, i32 noundef %5) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cpu_migrate_current(i64 noundef %timestamp, i32 noundef %cpu_hwid) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_current, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cpu_migrate_current, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !233

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !234
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_current, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i64 noundef %timestamp, i32 noundef %cpu_hwid) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !235
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !235
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !236
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_current, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cpu_migrate_current.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_cpu_migrate_current.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 46, ptr noundef nonnull @.str.11) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !237
  %38 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mcpm_is_available() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bL_switcher_cpu_pre(i32 noundef %cpu) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @bL_switcher_active, align 4
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [4 x i32], ptr @bL_switcher_cpu_pairing, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  %. = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bL_switcher_enable() unnamed_addr #0 align 64 {
entry:
  %available_cpus.i = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bL_switcher_activation_lock, i32 noundef 0) #15
  tail call void @lock_device_hotplug() #15
  %.b = load i1, ptr @bL_switcher_active, align 4
  br i1 %.b, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unlock_device_hotplug() #15
  tail call void @mutex_unlock(ptr noundef nonnull @bL_switcher_activation_lock) #15
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  %call.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @bL_activation_notifier, i32 noundef 0, ptr noundef null) #15
  %and.i = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.bL_activation_notify.exit_crit_edge, label %do.end.i

do.end.bL_activation_notify.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %bL_activation_notify.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call.i) #18
  br label %bL_activation_notify.exit

bL_activation_notify.exit:                        ; preds = %do.end.i, %do.end.bL_activation_notify.exit_crit_edge
  %and.i.i = and i32 %call.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool2.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %bL_activation_notify.exit.do.end27_crit_edge

bL_activation_notify.exit.do.end27_crit_edge:     ; preds = %bL_activation_notify.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

if.end4:                                          ; preds = %bL_activation_notify.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_cpus.i) #15
  %0 = ptrtoint ptr %available_cpus.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %available_cpus.i, align 4, !annotation !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call184.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call184.i, i32 %1)
  %cmp185.i = icmp ult i32 %call184.i, %1
  br i1 %cmp185.i, label %if.end4.for.body.i_crit_edge, label %if.end4.do.end38.i_crit_edge

if.end4.do.end38.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38.i

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end33.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %call187.i = phi i32 [ %call.i44, %if.end33.i.for.body.i_crit_edge ], [ %call184.i, %if.end4.for.body.i_crit_edge ]
  %mask.0186.i = phi i32 [ %or.i, %if.end33.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call187.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %shr2.i = lshr i32 %3, 8
  %and3.i = and i32 %shr2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3.i)
  %cmp4.i = icmp ugt i32 %and3.i, 1
  br i1 %cmp4.i, label %do.end.i42, label %if.end.i

do.end.i42:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #18
  br label %bL_switcher_halve_cpus.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %and.i43 = and i32 %3, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %cmp6.not.i = icmp eq i32 %and.i43, 0
  br i1 %cmp6.not.i, label %if.end33.i, label %do.end17.i, !prof !226

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 434, i32 noundef 9, ptr noundef null) #15
  br label %bL_switcher_halve_cpus.exit.thread

if.end33.i:                                       ; preds = %if.end.i
  %shl.i = shl nuw nsw i32 1, %and3.i
  %or.i = or i32 %shl.i, %mask.0186.i
  %call.i44 = tail call i32 @cpumask_next(i32 noundef %call187.i, ptr noundef nonnull @__cpu_online_mask) #19
  %cmp.i = icmp ult i32 %call.i44, %1
  br i1 %cmp.i, label %if.end33.i.for.body.i_crit_edge, label %for.end.i

if.end33.i.for.body.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i)
  %phi.cmp.i = icmp eq i32 %or.i, 3
  br i1 %phi.cmp.i, label %if.end41.i, label %for.end.i.do.end38.i_crit_edge

for.end.i.do.end38.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38.i

do.end38.i:                                       ; preds = %for.end.i.do.end38.i_crit_edge, %if.end4.do.end38.i_crit_edge
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #18
  br label %bL_switcher_halve_cpus.exit.thread

if.end41.i:                                       ; preds = %for.end.i
  %4 = call ptr @memset(ptr @bL_switcher_cpu_pairing, i32 255, i32 16)
  %sub.i.i.i = add i32 %1, 31
  %5 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %5, 536870908
  %6 = call ptr @memcpy(ptr %available_cpus.i, ptr @__cpu_online_mask, i32 %mul.i.i.i)
  %call43195.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %available_cpus.i) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call43195.i, i32 %1)
  %cmp44196.i = icmp ult i32 %call43195.i, %1
  br i1 %cmp44196.i, label %if.end41.i.for.body45.i_crit_edge, label %if.end41.i.for.end75.i_crit_edge

if.end41.i.for.end75.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end75.i

if.end41.i.for.body45.i_crit_edge:                ; preds = %if.end41.i
  br label %for.body45.i

for.body45.i:                                     ; preds = %cleanup.i.for.body45.i_crit_edge, %if.end41.i.for.body45.i_crit_edge
  %call43198.i = phi i32 [ %call43.i, %cleanup.i.for.body45.i_crit_edge ], [ %call43195.i, %if.end41.i.for.body45.i_crit_edge ]
  %cluster_0.0197.i = phi i32 [ %spec.select.i, %cleanup.i.for.body45.i_crit_edge ], [ -1, %if.end41.i.for.body45.i_crit_edge ]
  %arrayidx46.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call43198.i
  %7 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx46.i, align 4
  %shr47.i = lshr i32 %8, 8
  %and48.i = and i32 %shr47.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cluster_0.0197.i)
  %cmp49.i = icmp eq i32 %cluster_0.0197.i, -1
  %spec.select.i = select i1 %cmp49.i, i32 %and48.i, i32 %cluster_0.0197.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and48.i, i32 %spec.select.i)
  %cmp52.not.i = icmp eq i32 %and48.i, %spec.select.i
  br i1 %cmp52.not.i, label %cpumask_clear_cpu.exit.i, label %for.body45.i.cleanup.i_crit_edge

for.body45.i.cleanup.i_crit_edge:                 ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cpumask_clear_cpu.exit.i:                         ; preds = %for.body45.i
  call void @_clear_bit(i32 noundef %call43198.i, ptr noundef nonnull %available_cpus.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call56189.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %available_cpus.i) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call56189.i, i32 %9)
  %cmp57190.i = icmp ult i32 %call56189.i, %9
  br i1 %cmp57190.i, label %cpumask_clear_cpu.exit.i.for.body58.i_crit_edge, label %cpumask_clear_cpu.exit.i.cleanup.i_crit_edge

cpumask_clear_cpu.exit.i.cleanup.i_crit_edge:     ; preds = %cpumask_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cpumask_clear_cpu.exit.i.for.body58.i_crit_edge:  ; preds = %cpumask_clear_cpu.exit.i
  br label %for.body58.i

for.body58.i:                                     ; preds = %for.body58.i.for.body58.i_crit_edge, %cpumask_clear_cpu.exit.i.for.body58.i_crit_edge
  %call56192.i = phi i32 [ %call56.i, %for.body58.i.for.body58.i_crit_edge ], [ %call56189.i, %cpumask_clear_cpu.exit.i.for.body58.i_crit_edge ]
  %match.0191.i = phi i32 [ %spec.select163.i, %for.body58.i.for.body58.i_crit_edge ], [ -1, %cpumask_clear_cpu.exit.i.for.body58.i_crit_edge ]
  %arrayidx59.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call56192.i
  %10 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx59.i, align 4
  %shr60.i = lshr i32 %11, 8
  %and61.i = and i32 %shr60.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and61.i, i32 %and48.i)
  %cmp62.not.i = icmp eq i32 %and61.i, %and48.i
  %spec.select163.i = select i1 %cmp62.not.i, i32 %match.0191.i, i32 %call56192.i
  %call56.i = call i32 @cpumask_next(i32 noundef %call56192.i, ptr noundef nonnull %available_cpus.i) #19
  %cmp57.i = icmp ult i32 %call56.i, %9
  br i1 %cmp57.i, label %for.body58.i.for.body58.i_crit_edge, label %for.end65.i

for.body58.i.for.body58.i_crit_edge:              ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body58.i

for.end65.i:                                      ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select163.i)
  %cmp66.not.i = icmp eq i32 %spec.select163.i, -1
  br i1 %cmp66.not.i, label %for.end65.i.cleanup.i_crit_edge, label %if.then67.i

for.end65.i.cleanup.i_crit_edge:                  ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then67.i:                                      ; preds = %for.end65.i
  %arrayidx68.i = getelementptr [4 x i32], ptr @bL_switcher_cpu_pairing, i32 0, i32 %call43198.i
  %12 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select163.i, ptr %arrayidx68.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %spec.select163.i)
  %cmp.not.i.i.i164.i = icmp ugt i32 %9, %spec.select163.i
  br i1 %cmp.not.i.i.i164.i, label %if.then67.i.cpumask_clear_cpu.exit168.i_crit_edge, label %land.rhs.i.i.i166.i

if.then67.i.cpumask_clear_cpu.exit168.i_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_clear_cpu.exit168.i

land.rhs.i.i.i166.i:                              ; preds = %if.then67.i
  %.b37.i.i.i165.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i165.i, label %land.rhs.i.i.i166.i.cpumask_clear_cpu.exit168.i_crit_edge, label %if.then.i.i.i167.i, !prof !226

land.rhs.i.i.i166.i.cpumask_clear_cpu.exit168.i_crit_edge: ; preds = %land.rhs.i.i.i166.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_clear_cpu.exit168.i

if.then.i.i.i167.i:                               ; preds = %land.rhs.i.i.i166.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_clear_cpu.exit168.i

cpumask_clear_cpu.exit168.i:                      ; preds = %if.then.i.i.i167.i, %land.rhs.i.i.i166.i.cpumask_clear_cpu.exit168.i_crit_edge, %if.then67.i.cpumask_clear_cpu.exit168.i_crit_edge
  call void @_clear_bit(i32 noundef %spec.select163.i, ptr noundef nonnull %available_cpus.i) #15
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %call43198.i, i32 noundef %spec.select163.i) #18
  br label %cleanup.i

cleanup.i:                                        ; preds = %cpumask_clear_cpu.exit168.i, %for.end65.i.cleanup.i_crit_edge, %cpumask_clear_cpu.exit.i.cleanup.i_crit_edge, %for.body45.i.cleanup.i_crit_edge
  %call43.i = call i32 @cpumask_next(i32 noundef %call43198.i, ptr noundef nonnull %available_cpus.i) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp44.i = icmp ult i32 %call43.i, %13
  br i1 %cmp44.i, label %cleanup.i.for.body45.i_crit_edge, label %for.end75.i.loopexit

cleanup.i.for.body45.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body45.i

for.end75.i.loopexit:                             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  %.pre = add i32 %13, 31
  %.pre70 = lshr i32 %.pre, 3
  %.pre71 = and i32 %.pre70, 536870908
  br label %for.end75.i

for.end75.i:                                      ; preds = %for.end75.i.loopexit, %if.end41.i.for.end75.i_crit_edge
  %mul.i.i170.i.pre-phi = phi i32 [ %.pre71, %for.end75.i.loopexit ], [ %mul.i.i.i, %if.end41.i.for.end75.i_crit_edge ]
  %14 = call ptr @memset(ptr @bL_switcher_removed_logical_cpus, i32 0, i32 %mul.i.i170.i.pre-phi)
  %call77200.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call77200.i, i32 %15)
  %cmp78201.i = icmp ult i32 %call77200.i, %15
  br i1 %cmp78201.i, label %for.end75.i.for.body79.i_crit_edge, label %for.end75.i.if.end8_crit_edge

for.end75.i.if.end8_crit_edge:                    ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.end75.i.for.body79.i_crit_edge:               ; preds = %for.end75.i
  br label %for.body79.i

for.body79.i:                                     ; preds = %for.cond76.backedge.i.for.body79.i_crit_edge, %for.end75.i.for.body79.i_crit_edge
  %call77202.i = phi i32 [ %call77.i, %for.cond76.backedge.i.for.body79.i_crit_edge ], [ %call77200.i, %for.end75.i.for.body79.i_crit_edge ]
  %arrayidx80.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call77202.i
  %16 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx80.i, align 4
  %shr84.i = lshr i32 %17, 8
  %and85.i = and i32 %shr84.i, 255
  %call86.i = call i32 @gic_get_cpu_id(i32 noundef %call77202.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.i = icmp slt i32 %call86.i, 0
  br i1 %cmp87.i, label %do.end91.i, label %if.end94.i

do.end91.i:                                       ; preds = %for.body79.i
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.36, i32 noundef %call77202.i) #18
  %call6.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %18)
  %cmp7.i.i = icmp ult i32 %call6.i.i, %18
  br i1 %cmp7.i.i, label %do.end91.i.for.body.i.i_crit_edge, label %do.end91.i.bL_switcher_halve_cpus.exit.thread_crit_edge

do.end91.i.bL_switcher_halve_cpus.exit.thread_crit_edge: ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bL_switcher_halve_cpus.exit.thread

do.end91.i.for.body.i.i_crit_edge:                ; preds = %do.end91.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %do.end91.i.for.body.i.i_crit_edge
  %call8.i.i = phi i32 [ %call.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %call6.i.i, %do.end91.i.for.body.i.i_crit_edge ]
  %call1.i.i = call ptr @get_cpu_device(i32 noundef %call8.i.i) #15
  %call2.i.i = call i32 @device_online(ptr noundef %call1.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %do.end.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i.i, ptr noundef nonnull @.str.49) #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %call.i.i = call i32 @cpumask_next(i32 noundef %call8.i.i, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i45 = icmp ult i32 %call.i.i, %19
  br i1 %cmp.i.i45, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.bL_switcher_halve_cpus.exit.thread_crit_edge

if.end.i.i.bL_switcher_halve_cpus.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bL_switcher_halve_cpus.exit.thread

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end94.i:                                       ; preds = %for.body79.i
  %and82.i = and i32 %17, 255
  %arrayidx96.i = getelementptr [4 x [4 x i32]], ptr @bL_gic_id, i32 0, i32 %and82.i, i32 %and85.i
  %20 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call86.i, ptr %arrayidx96.i, align 4
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %and82.i, i32 noundef %and85.i, i32 noundef %call86.i) #18
  %arrayidx102.i = getelementptr [4 x i32], ptr @bL_switcher_cpu_pairing, i32 0, i32 %call77202.i
  %21 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp103.not.i = icmp eq i32 %22, -1
  br i1 %cmp103.not.i, label %if.end106.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx105.i = getelementptr [4 x i32], ptr @bL_switcher_cpu_original_cluster, i32 0, i32 %call77202.i
  %23 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and85.i, ptr %arrayidx105.i, align 4
  br label %for.cond76.backedge.i

for.cond76.backedge.i:                            ; preds = %cpumask_set_cpu.exit.i, %if.then104.i
  %call77.i = call i32 @cpumask_next(i32 noundef %call77202.i, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp78.i = icmp ult i32 %call77.i, %24
  br i1 %cmp78.i, label %for.cond76.backedge.i.for.body79.i_crit_edge, label %for.cond76.backedge.i.if.end8_crit_edge

for.cond76.backedge.i.if.end8_crit_edge:          ; preds = %for.cond76.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.cond76.backedge.i.for.body79.i_crit_edge:     ; preds = %for.cond76.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body79.i

if.end106.i:                                      ; preds = %if.end94.i
  %call107.i = call ptr @get_cpu_device(i32 noundef %call77202.i) #15
  %call108.i = call i32 @device_offline(ptr noundef %call107.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %if.end111.i, label %if.then110.i

if.then110.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @bL_switcher_restore_cpus() #15
  br label %bL_switcher_halve_cpus.exit.thread

if.end111.i:                                      ; preds = %if.end106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %call77202.i)
  %cmp.not.i.i.i171.i = icmp ugt i32 %25, %call77202.i
  br i1 %cmp.not.i.i.i171.i, label %if.end111.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i173.i

if.end111.i.cpumask_set_cpu.exit.i_crit_edge:     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i173.i:                              ; preds = %if.end111.i
  %.b37.i.i.i172.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i172.i, label %land.rhs.i.i.i173.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i174.i, !prof !226

land.rhs.i.i.i173.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i173.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i174.i:                               ; preds = %land.rhs.i.i.i173.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i174.i, %land.rhs.i.i.i173.i.cpumask_set_cpu.exit.i_crit_edge, %if.end111.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %call77202.i, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #15
  br label %for.cond76.backedge.i

bL_switcher_halve_cpus.exit.thread:               ; preds = %if.then110.i, %if.end.i.i.bL_switcher_halve_cpus.exit.thread_crit_edge, %do.end91.i.bL_switcher_halve_cpus.exit.thread_crit_edge, %do.end38.i, %do.end17.i, %do.end.i42
  %retval.0.i.ph = phi i32 [ -22, %do.end91.i.bL_switcher_halve_cpus.exit.thread_crit_edge ], [ %call108.i, %if.then110.i ], [ -22, %do.end38.i ], [ -22, %do.end17.i ], [ -22, %do.end.i42 ], [ -22, %if.end.i.i.bL_switcher_halve_cpus.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_cpus.i) #15
  br label %do.end27

if.end8:                                          ; preds = %for.cond76.backedge.i.if.end8_crit_edge, %for.end75.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_cpus.i) #15
  %call9 = call i32 @bL_switcher_trace_trigger()
  %call1065 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1065, i32 %26)
  %cmp66 = icmp ult i32 %call1065, %26
  br i1 %cmp66, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %bL_switcher_thread_create.exit.for.body_crit_edge, %if.end8.for.body_crit_edge
  %call1067 = phi i32 [ %call10, %bL_switcher_thread_create.exit.for.body_crit_edge ], [ %call1065, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call1067
  call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.24, ptr noundef nonnull @bL_switcher_enable.__key, i16 noundef signext 3) #15
  %wq = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call1067, i32 2
  call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.26, ptr noundef nonnull @bL_switcher_enable.__key.25) #15
  %started = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call1067, i32 4
  %27 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %started, align 4
  %wait.i = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call1067, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_completion.__key) #15
  %wanted_cluster = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call1067, i32 3
  %28 = ptrtoint ptr %wanted_cluster to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %wanted_cluster, align 4
  %call.i46 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bL_switcher_thread, ptr noundef %arrayidx, i32 noundef 0, ptr noundef nonnull @.str.54, i32 noundef %call1067) #15
  %cmp.i.i47 = icmp ugt ptr %call.i46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47, label %do.end.i48, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @kthread_bind(ptr noundef %call.i46, i32 noundef %call1067) #15
  %call2.i = call i32 @wake_up_process(ptr noundef %call.i46) #15
  br label %bL_switcher_thread_create.exit

do.end.i48:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %call1067) #18
  br label %bL_switcher_thread_create.exit

bL_switcher_thread_create.exit:                   ; preds = %do.end.i48, %if.then.i
  %task = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call1067, i32 1
  %29 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i46, ptr %task, align 4
  %call10 = call i32 @cpumask_next(i32 noundef %call1067, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call10, %30
  br i1 %cmp, label %bL_switcher_thread_create.exit.for.body_crit_edge, label %bL_switcher_thread_create.exit.for.end_crit_edge

bL_switcher_thread_create.exit.for.end_crit_edge: ; preds = %bL_switcher_thread_create.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

bL_switcher_thread_create.exit.for.body_crit_edge: ; preds = %bL_switcher_thread_create.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %bL_switcher_thread_create.exit.for.end_crit_edge, %if.end8.for.end_crit_edge
  store i1 true, ptr @bL_switcher_active, align 4
  %call19 = call fastcc i32 @bL_activation_notify(i32 noundef 1)
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #18
  br label %out

do.end27:                                         ; preds = %bL_switcher_halve_cpus.exit.thread, %bL_activation_notify.exit.do.end27_crit_edge
  %ret.0 = phi i32 [ %spec.select.i.i, %bL_activation_notify.exit.do.end27_crit_edge ], [ %retval.0.i.ph, %bL_switcher_halve_cpus.exit.thread ]
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #18
  %call.i50 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @bL_activation_notifier, i32 noundef 3, ptr noundef null) #15
  %and.i51 = and i32 %call.i50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %do.end27.out_crit_edge, label %do.end.i54

do.end27.out_crit_edge:                           ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end.i54:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call.i50) #18
  br label %out

out:                                              ; preds = %do.end.i54, %do.end27.out_crit_edge, %for.end
  %ret.1 = phi i32 [ 0, %for.end ], [ %ret.0, %do.end27.out_crit_edge ], [ %ret.0, %do.end.i54 ]
  call void @unlock_device_hotplug() #15
  call void @mutex_unlock(ptr noundef nonnull @bL_switcher_activation_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bL_switcher_sysfs_init() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.57, ptr noundef %0) #15
  store ptr %call, ptr @bL_switcher_kobj, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call, ptr noundef nonnull @bL_switcher_attr_group) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %1 = load ptr, ptr @bL_switcher_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_device_hotplug() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_device_hotplug() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bL_activation_notify(i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @bL_activation_notifier, i32 noundef %val, ptr noundef null) #15
  %and = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and.i = and i32 %call, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_get_cpu_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bL_switcher_restore_cpus() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %0)
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %call8 = phi i32 [ %call, %if.end.for.body_crit_edge ], [ %call6, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @get_cpu_device(i32 noundef %call8) #15
  %call2 = tail call i32 @device_online(ptr noundef %call1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.49) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call8, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switcher_thread(ptr noundef %arg) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %3) #15
  %started = getelementptr inbounds %struct.bL_thread, ptr %arg, i32 0, i32 4
  tail call void @complete(ptr noundef %started) #15
  %wanted_cluster = getelementptr inbounds %struct.bL_thread, ptr %arg, i32 0, i32 3
  %wq = getelementptr inbounds %struct.bL_thread, ptr %arg, i32 0, i32 2
  %completer27 = getelementptr inbounds %struct.bL_thread, ptr %arg, i32 0, i32 5
  %completer_cookie28 = getelementptr inbounds %struct.bL_thread, ptr %arg, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.cond39.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %do.body.if.then_crit_edge, !prof !226

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

signal_pending.exit:                              ; preds = %do.body
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %7, align 4
  %and1.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.if.end_crit_edge, label %signal_pending.exit.if.then_crit_edge

signal_pending.exit.if.then_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

signal_pending.exit.if.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %signal_pending.exit.if.then_crit_edge, %do.body.if.then_crit_edge
  call void @flush_signals(ptr noundef %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %signal_pending.exit.if.end_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 285) #15
  %13 = ptrtoint ptr %wanted_cluster to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wanted_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

lor.lhs.false:                                    ; preds = %if.end
  %call10 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call10, label %lor.lhs.false.if.end24_crit_edge, label %if.then11

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then11:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call1369 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %16 = ptrtoint ptr %wanted_cluster to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wanted_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp15.not70 = icmp eq i32 %17, -1
  br i1 %cmp15.not70, label %if.then11.lor.lhs.false16_crit_edge, label %if.then11.for.end_crit_edge

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then11.lor.lhs.false16_crit_edge:              ; preds = %if.then11
  br label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %cleanup.lor.lhs.false16_crit_edge, %if.then11.lor.lhs.false16_crit_edge
  %call1371 = phi i32 [ %call13, %cleanup.lor.lhs.false16_crit_edge ], [ %call1369, %if.then11.lor.lhs.false16_crit_edge ]
  %call17 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call17, label %lor.lhs.false16.for.end_crit_edge, label %if.end19

lor.lhs.false16.for.end_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end19:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1371)
  %tobool20.not = icmp eq i32 %call1371, 0
  br i1 %tobool20.not, label %cleanup, label %if.end19.__out_crit_edge

if.end19.__out_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %__out

cleanup:                                          ; preds = %if.end19
  call void @schedule() #15
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %18 = ptrtoint ptr %wanted_cluster to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wanted_cluster, align 4
  %cmp15.not = icmp eq i32 %19, -1
  br i1 %cmp15.not, label %cleanup.lor.lhs.false16_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.lor.lhs.false16_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false16

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false16.for.end_crit_edge, %if.then11.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #15
  br label %__out

__out:                                            ; preds = %for.end, %if.end19.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end24

if.end24:                                         ; preds = %__out, %lor.lhs.false.if.end24_crit_edge, %if.end.if.end24_crit_edge
  call void @_raw_spin_lock(ptr noundef %arg) #15
  %20 = ptrtoint ptr %wanted_cluster to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wanted_cluster, align 4
  %22 = ptrtoint ptr %completer27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %completer27, align 4
  %24 = ptrtoint ptr %completer_cookie28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %completer_cookie28, align 4
  store i32 -1, ptr %wanted_cluster, align 4
  store ptr null, ptr %completer27, align 4
  call void @_raw_spin_unlock(ptr noundef %arg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp32.not = icmp eq i32 %21, -1
  br i1 %cmp32.not, label %if.end24.do.cond39_crit_edge, label %if.then33

if.end24.do.cond39_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond39

if.then33:                                        ; preds = %if.end24
  call fastcc void @bL_switch_to(i32 noundef %21)
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %if.then33.do.cond39_crit_edge, label %if.then36

if.then33.do.cond39_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond39

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  call void %23(ptr noundef %25) #15
  br label %do.cond39

do.cond39:                                        ; preds = %if.then36, %if.then33.do.cond39_crit_edge, %if.end24.do.cond39_crit_edge
  %call40 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call40, label %do.end41, label %do.cond39.do.body_crit_edge

do.cond39.do.body_crit_edge:                      ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end41:                                         ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bL_switch_to(i32 noundef %new_cluster_id) unnamed_addr #0 align 64 {
entry:
  %inbound_alive = alloca %struct.completion, align 4
  %handshake_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %inbound_alive) #15
  %0 = getelementptr inbounds i8, ptr %inbound_alive, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handshake_ptr) #15
  %2 = ptrtoint ptr %handshake_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %handshake_ptr, align 4, !annotation !228
  %3 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %7 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 5", "=r"() #15, !srcloc !230
  %and.i4 = and i32 %7, 16777215
  %and = and i32 %7, 255
  %shr2 = lshr i32 %7, 8
  %and3 = and i32 %shr2, 255
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and.i4)
  %cmp.not = icmp eq i32 %9, %and.i4
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !226

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/bL_switcher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #15, !srcloc !238
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %new_cluster_id)
  %cmp11 = icmp eq i32 %and3, %new_cluster_id
  br i1 %cmp11, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %arrayidx14 = getelementptr [4 x i32], ptr @bL_switcher_cpu_pairing, i32 0, i32 %6
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 4
  %and17 = and i32 %13, 255
  %shr18 = lshr i32 %13, 8
  %and19 = and i32 %shr18, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bL_switch_to.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bL_switch_to, %if.then29)) #15
          to label %do.end32 [label %if.then29], !srcloc !233

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bL_switch_to.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.59, i32 noundef %6, i32 noundef %and.i4, i32 noundef %13) #15
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %if.end13
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  tail call void @mcpm_set_entry_vector(i32 noundef %and, i32 noundef %and3, ptr noundef null) #15
  tail call void @mcpm_set_entry_vector(i32 noundef %and17, i32 noundef %and19, ptr noundef null) #15
  %16 = ptrtoint ptr %inbound_alive to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %inbound_alive, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %inbound_alive, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_completion.__key) #15
  %call35 = call i32 @register_ipi_completion(ptr noundef nonnull %inbound_alive, i32 noundef %15) #15
  %arrayidx37 = getelementptr [4 x [4 x i32]], ptr @bL_gic_id, i32 0, i32 %and, i32 %and3
  %17 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx37, align 4
  %shl = shl i32 65536, %18
  %or = or i32 %shl, %call35
  %call38 = call i32 @gic_get_sgir_physaddr() #15
  call void @mcpm_set_early_poke(i32 noundef %and17, i32 noundef %and19, i32 noundef %call38, i32 noundef %or) #15
  %call39 = call i32 @mcpm_cpu_power_up(i32 noundef %and17, i32 noundef %and19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %call39) #18
  br label %cleanup

if.end47:                                         ; preds = %do.end32
  %arrayidx49 = getelementptr [4 x [4 x i32]], ptr @bL_gic_id, i32 0, i32 %and17, i32 %and19
  %19 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx49, align 4
  call void @gic_send_sgi(i32 noundef %20, i32 noundef 0) #15
  call void @wait_for_completion(ptr noundef nonnull %inbound_alive) #15
  call void @mcpm_set_early_poke(i32 noundef %and17, i32 noundef %and19, i32 noundef 0, i32 noundef 0) #15
  %21 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !239
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool52.not = icmp eq i32 %and.i.i, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !240
  br i1 %tobool52.not, label %if.then55, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  call void @trace_hardirqs_off() #15
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end47.if.end56_crit_edge
  call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #15, !srcloc !241
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #15
  call fastcc void @trace_cpu_migrate_begin(i64 noundef %call.i.i, i32 noundef %and.i4)
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx49, align 4
  call void @gic_migrate_target(i32 noundef %23) #15
  call void @tick_suspend_local() #15
  %call62 = call i32 @cpu_pm_enter() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.58, i32 noundef %call62) #21
  unreachable

if.end65:                                         ; preds = %if.end56
  %arrayidx66 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %15
  %24 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %13, ptr %arrayidx66, align 4
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i4, ptr %arrayidx15, align 4
  %26 = ptrtoint ptr %handshake_ptr to i32
  %call68 = call i32 @cpu_suspend(i32 noundef %26, ptr noundef nonnull @bL_switchpoint) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp sgt i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58, i32 noundef %call68) #21
  unreachable

if.end71:                                         ; preds = %if.end65
  %27 = call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 5", "=r"() #15, !srcloc !230
  %and.i5 = and i32 %27, 16777215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bL_switch_to.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bL_switch_to, %if.then85)) #15
          to label %do.body89 [label %if.then85], !srcloc !233

if.then85:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bL_switch_to.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.63, i32 noundef %15, i32 noundef %and.i5) #15
  br label %do.body89

do.body89:                                        ; preds = %if.then85, %if.end71
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i5, i32 %13)
  %cmp90.not = icmp eq i32 %and.i5, %13
  br i1 %cmp90.not, label %do.end106, label %do.body98, !prof !226

do.body98:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/bL_switcher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #15, !srcloc !242
  unreachable

do.end106:                                        ; preds = %do.body89
  %call107 = call i32 @mcpm_cpu_powered_up() #15
  %call108 = call i32 @cpu_pm_exit() #15
  call void @tick_resume_local() #15
  %call.i.i6 = call i64 @ktime_get_with_offset(i32 noundef 0) #15
  call fastcc void @trace_cpu_migrate_finish(i64 noundef %call.i.i6, i32 noundef %13)
  call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #15, !srcloc !243
  call void @trace_hardirqs_on() #15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !244
  %28 = ptrtoint ptr %handshake_ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handshake_ptr, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %29, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !245
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool113.not = icmp eq i32 %call108, 0
  br i1 %tobool113.not, label %do.end106.cleanup_crit_edge, label %do.end117

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end117:                                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #17
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.58, i32 noundef %call108) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %do.end106.cleanup_crit_edge, %do.end44, %do.end10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handshake_ptr) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %inbound_alive) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_set_entry_vector(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ipi_completion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_set_early_poke(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_get_sgir_physaddr() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_power_up(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_send_sgi(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cpu_migrate_begin(i64 noundef %timestamp, i32 noundef %cpu_hwid) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_begin, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cpu_migrate_begin, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !233

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !247
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_begin, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i64 noundef %timestamp, i32 noundef %cpu_hwid) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !248
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !248
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !236
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cpu_migrate_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_cpu_migrate_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 44, ptr noundef nonnull @.str.11) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !237
  %38 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
declare dso_local void @gic_migrate_target(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_suspend_local() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switchpoint(i32 noundef %_arg) #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 5", "=r"() #15, !srcloc !230
  %1 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i10 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i10 to ptr
  %add.ptr = getelementptr %struct.thread_info, ptr %2, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  %add = add nuw nsw i32 %3, 127
  %and2 = and i32 %add, -15744
  %4 = inttoptr i32 %and2 to ptr
  %and.i = shl i32 %0, 1
  %mul = and i32 %and.i, 130560
  %add3 = add nuw nsw i32 %mul, 512
  %add.ptr4 = getelementptr i8, ptr %4, i32 %add3
  %5 = inttoptr i32 %_arg to ptr
  tail call void @call_with_stack(ptr noundef nonnull @bL_do_switch, ptr noundef %5, ptr noundef %add.ptr4) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/bL_switcher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #15, !srcloc !249
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_powered_up() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_resume_local() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cpu_migrate_finish(i64 noundef %timestamp, i32 noundef %cpu_hwid) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_finish, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cpu_migrate_finish, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !233

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !250
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_finish, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i64 noundef %timestamp, i32 noundef %cpu_hwid) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !251
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !251
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !236
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cpu_migrate_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cpu_migrate_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_cpu_migrate_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 45, ptr noundef nonnull @.str.11) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !237
  %38 = tail call i32 @llvm.read_register.i32(metadata !216) #15
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
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_with_stack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bL_do_switch(ptr noundef writeonly %_arg) #12 align 64 {
entry:
  %handshake = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handshake) #15
  %0 = ptrtoint ptr %handshake to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %handshake, align 4, !annotation !228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bL_do_switch.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bL_do_switch, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !233

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bL_do_switch.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 255
  %shr4 = lshr i32 %6, 8
  %and5 = and i32 %shr4, 255
  %tobool6.not = icmp eq ptr %_arg, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %handshake to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %handshake, align 4
  %8 = ptrtoint ptr %_arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %handshake, ptr %_arg, align 4
  br label %if.end8

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %handshake to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1, ptr %handshake, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  call void @mcpm_set_entry_vector(i32 noundef %and, i32 noundef %and5, ptr noundef nonnull @cpu_resume) #15
  call void asm sideeffect "sev", "~{memory}"() #15, !srcloc !252
  %10 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %handshake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not27 = icmp eq i32 %11, 0
  br i1 %tobool9.not27, label %if.end8.while.body_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end8.while.body_crit_edge
  call void asm sideeffect "wfe", "~{memory}"() #15, !srcloc !253
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !254
  %12 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %handshake, align 4
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end8.while.end_crit_edge
  call void @mcpm_cpu_power_down() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/bL_switcher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 110, 0\0A.popsection", ""() #15, !srcloc !255
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_cpu_power_down() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switcher_active_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @bL_switcher_active, align 4
  %0 = zext i1 %.b to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.70, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switcher_active_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog.thread6_crit_edge [
    i8 48, label %sw.bb
    i8 49, label %sw.epilog
  ]

entry.sw.epilog.thread6_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread6

sw.bb:                                            ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bL_switcher_activation_lock, i32 noundef 0) #15
  tail call void @lock_device_hotplug() #15
  %.b.i = load i1, ptr @bL_switcher_active, align 4
  br i1 %.b.i, label %if.end.i, label %sw.bb.sw.epilog.thread_crit_edge

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %sw.bb
  %call.i.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @bL_activation_notifier, i32 noundef 2, ptr noundef null) #15
  %and.i.i = and i32 %call.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.bL_activation_notify.exit.i_crit_edge, label %do.end.i.i

if.end.i.bL_activation_notify.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bL_activation_notify.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #18
  br label %bL_activation_notify.exit.i

bL_activation_notify.exit.i:                      ; preds = %do.end.i.i, %if.end.i.bL_activation_notify.exit.i_crit_edge
  %and.i.i.i = and i32 %call.i.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp slt i32 %and.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.end3.i, label %if.then1.i

if.then1.i:                                       ; preds = %bL_activation_notify.exit.i
  %call.i63.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @bL_activation_notifier, i32 noundef 1, ptr noundef null) #15
  %and.i64.i = and i32 %call.i63.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64.i)
  %tobool.not.i65.i = icmp eq i32 %and.i64.i, 0
  br i1 %tobool.not.i65.i, label %if.then1.i.sw.epilog.thread_crit_edge, label %if.then1.i.out.sink.split.i_crit_edge

if.then1.i.out.sink.split.i_crit_edge:            ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split.i

if.then1.i.sw.epilog.thread_crit_edge:            ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread

if.end3.i:                                        ; preds = %bL_activation_notify.exit.i
  store i1 false, ptr @bL_switcher_active, align 4
  %call496.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call496.i, i32 %3)
  %cmp597.i = icmp ult i32 %call496.i, %3
  br i1 %cmp597.i, label %if.end3.i.for.body.i_crit_edge, label %if.end3.i.for.end.i_crit_edge

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %call498.i = phi i32 [ %call4.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %call496.i, %if.end3.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call498.i
  %task6.i = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call498.i, i32 1
  %4 = ptrtoint ptr %task6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task6.i, align 4
  store ptr null, ptr %task6.i, align 4
  %tobool8.not.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %tobool8.not.i, %cmp.i.i
  br i1 %or.cond.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %if.end11.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge.i

if.end11.i:                                       ; preds = %for.body.i
  %call12.i = tail call i32 @kthread_stop(ptr noundef nonnull %5) #15
  %arrayidx13.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %call498.i
  %6 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13.i, align 4
  %shr.i = lshr i32 %7, 8
  %and.i = and i32 %shr.i, 255
  %arrayidx14.i = getelementptr [4 x i32], ptr @bL_switcher_cpu_original_cluster, i32 0, i32 %call498.i
  %8 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %9)
  %cmp15.i = icmp eq i32 %and.i, %9
  br i1 %cmp15.i, label %if.end11.i.for.cond.backedge.i_crit_edge, label %if.end17.i

if.end11.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge.i

if.end17.i:                                       ; preds = %if.end11.i
  %started.i = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call498.i, i32 4
  %10 = ptrtoint ptr %started.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %started.i, align 4
  %wait.i.i = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call498.i, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_completion.__key) #15
  %11 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx14.i, align 4
  %wanted_cluster.i = getelementptr [4 x %struct.bL_thread], ptr @bL_threads, i32 0, i32 %call498.i, i32 3
  %13 = ptrtoint ptr %wanted_cluster.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %wanted_cluster.i, align 4
  %call.i73.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bL_switcher_thread, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef nonnull @.str.54, i32 noundef %call498.i) #15
  %cmp.i.i74.i = icmp ugt ptr %call.i73.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i74.i, label %bL_switcher_thread_create.exit.thread.i, label %if.then21.i

bL_switcher_thread_create.exit.thread.i:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %call498.i) #18
  br label %do.end.i

if.then21.i:                                      ; preds = %if.end17.i
  tail call void @kthread_bind(ptr noundef %call.i73.i, i32 noundef %call498.i) #15
  %call2.i.i = tail call i32 @wake_up_process(ptr noundef %call.i73.i) #15
  tail call void @wait_for_completion(ptr noundef %started.i) #15
  %call23.i = tail call i32 @kthread_stop(ptr noundef %call.i73.i) #15
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13.i, align 4
  %shr25.i = lshr i32 %15, 8
  %and26.i = and i32 %shr25.i, 255
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and26.i, i32 %17)
  %cmp28.i = icmp eq i32 %and26.i, %17
  br i1 %cmp28.i, label %if.then21.i.for.cond.backedge.i_crit_edge, label %if.then21.i.do.end.i_crit_edge

if.then21.i.do.end.i_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then21.i.for.cond.backedge.i_crit_edge:        ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.backedge.i

do.end.i:                                         ; preds = %if.then21.i.do.end.i_crit_edge, %bL_switcher_thread_create.exit.thread.i
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %call498.i) #18
  %arrayidx37.i = getelementptr [4 x i32], ptr @bL_switcher_cpu_pairing, i32 0, i32 %call498.i
  %18 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx37.i, align 4
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %19) #18
  %20 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx37.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %21)
  %cmp.not.i.i.i.i = icmp ugt i32 %22, %21
  br i1 %cmp.not.i.i.i.i, label %do.end.i.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

do.end.i.cpumask_clear_cpu.exit.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %do.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, %do.end.i.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %21, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #15
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %cpumask_clear_cpu.exit.i, %if.then21.i.for.cond.backedge.i_crit_edge, %if.end11.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %call4.i = tail call i32 @cpumask_next(i32 noundef %call498.i, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp5.i = icmp ult i32 %call4.i, %23
  br i1 %cmp5.i, label %for.cond.backedge.i.for.body.i_crit_edge, label %for.cond.backedge.i.for.end.i_crit_edge

for.cond.backedge.i.for.end.i_crit_edge:          ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.cond.backedge.i.for.end.i_crit_edge, %if.end3.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %3, %if.end3.i.for.end.i_crit_edge ], [ %23, %for.cond.backedge.i.for.end.i_crit_edge ]
  %call6.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %.lcssa.i)
  %cmp7.i.i = icmp ult i32 %call6.i.i, %.lcssa.i
  br i1 %cmp7.i.i, label %for.end.i.for.body.i.i_crit_edge, label %for.end.i.bL_switcher_restore_cpus.exit.i_crit_edge

for.end.i.bL_switcher_restore_cpus.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bL_switcher_restore_cpus.exit.i

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %call8.i.i = phi i32 [ %call.i81.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %call6.i.i, %for.end.i.for.body.i.i_crit_edge ]
  %call1.i77.i = tail call ptr @get_cpu_device(i32 noundef %call8.i.i) #15
  %call2.i78.i = tail call i32 @device_online(ptr noundef %call1.i77.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i78.i)
  %tobool.not.i79.i = icmp eq i32 %call2.i78.i, 0
  br i1 %tobool.not.i79.i, label %for.body.i.i.if.end.i.i_crit_edge, label %do.end.i80.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

do.end.i80.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i77.i, ptr noundef nonnull @.str.49) #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i80.i, %for.body.i.i.if.end.i.i_crit_edge
  %call.i81.i = tail call i32 @cpumask_next(i32 noundef %call8.i.i, ptr noundef nonnull @bL_switcher_removed_logical_cpus) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i82.i = icmp ult i32 %call.i81.i, %24
  br i1 %cmp.i82.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.bL_switcher_restore_cpus.exit.i_crit_edge

if.end.i.i.bL_switcher_restore_cpus.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bL_switcher_restore_cpus.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

bL_switcher_restore_cpus.exit.i:                  ; preds = %if.end.i.i.bL_switcher_restore_cpus.exit.i_crit_edge, %for.end.i.bL_switcher_restore_cpus.exit.i_crit_edge
  %25 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !229
  %call.i.i.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #15
  %29 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 5", "=r"() #15, !srcloc !230
  %and.i.i.i.i = and i32 %29, 16777215
  tail call fastcc void @trace_cpu_migrate_current(i64 noundef %call.i.i.i.i.i, i32 noundef %and.i.i.i.i) #15
  tail call void @smp_call_function(ptr noundef nonnull @bL_switcher_trace_trigger_cpu, ptr noundef null, i32 noundef 1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !231
  %30 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i3.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %sub.i.i83.i = add i32 %33, -1
  store volatile i32 %sub.i.i83.i, ptr %preempt_count.i.i4.i.i, align 4
  %call.i84.i = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @bL_activation_notifier, i32 noundef 3, ptr noundef null) #15
  %and.i85.i = and i32 %call.i84.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i)
  %tobool.not.i86.i = icmp eq i32 %and.i85.i, 0
  br i1 %tobool.not.i86.i, label %bL_switcher_restore_cpus.exit.i.sw.epilog.thread_crit_edge, label %bL_switcher_restore_cpus.exit.i.out.sink.split.i_crit_edge

bL_switcher_restore_cpus.exit.i.out.sink.split.i_crit_edge: ; preds = %bL_switcher_restore_cpus.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split.i

bL_switcher_restore_cpus.exit.i.sw.epilog.thread_crit_edge: ; preds = %bL_switcher_restore_cpus.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread

out.sink.split.i:                                 ; preds = %bL_switcher_restore_cpus.exit.i.out.sink.split.i_crit_edge, %if.then1.i.out.sink.split.i_crit_edge
  %call.i84.sink.i = phi i32 [ %call.i63.i, %if.then1.i.out.sink.split.i_crit_edge ], [ %call.i84.i, %bL_switcher_restore_cpus.exit.i.out.sink.split.i_crit_edge ]
  %call1.i87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call.i84.sink.i) #18
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %out.sink.split.i, %bL_switcher_restore_cpus.exit.i.sw.epilog.thread_crit_edge, %if.then1.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  tail call void @unlock_device_hotplug() #15
  tail call void @mutex_unlock(ptr noundef nonnull @bL_switcher_activation_lock) #15
  br label %34

sw.epilog:                                        ; preds = %entry
  %call = tail call fastcc i32 @bL_switcher_enable()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %sw.epilog._crit_edge, label %sw.epilog.sw.epilog.thread6_crit_edge

sw.epilog.sw.epilog.thread6_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread6

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %34

34:                                               ; preds = %sw.epilog._crit_edge, %sw.epilog.thread
  br label %sw.epilog.thread6

sw.epilog.thread6:                                ; preds = %34, %sw.epilog.sw.epilog.thread6_crit_edge, %entry.sw.epilog.thread6_crit_edge
  %35 = phi i32 [ %count, %34 ], [ %call, %sw.epilog.sw.epilog.thread6_crit_edge ], [ -22, %entry.sw.epilog.thread6_crit_edge ]
  ret i32 %35
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bL_switcher_trace_trigger_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !229
  %call.i.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #15
  %4 = tail call i32 asm sideeffect "mrc p15, 0, $0, c0, c0, 5", "=r"() #15, !srcloc !230
  %and.i.i.i = and i32 %4, 16777215
  tail call fastcc void @trace_cpu_migrate_current(i64 noundef %call.i.i.i.i, i32 noundef %and.i.i.i) #15
  tail call void @smp_call_function(ptr noundef nonnull @bL_switcher_trace_trigger_cpu, ptr noundef null, i32 noundef 1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !231
  %5 = tail call i32 @llvm.read_register.i32(metadata !216) #15
  %and.i.i.i3.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %sub.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i4.i, align 4
  ret i32 %count
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold }
attributes #21 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !148, !149, !151, !153, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !176, !178, !179, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !193, !195, !197, !199, !201, !203, !205, !206, !207, !208, !210, !211, !212, !214}
!llvm.named.register.sp = !{!216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @__tracepoint_cpu_migrate_begin, !1, !"__tracepoint_cpu_migrate_begin", i1 false, i1 false}
!1 = !{!"../include/trace/events/power_cpu_migrate.h", i32 44, i32 1}
!2 = !{ptr @__tracepoint_ptr_cpu_migrate_begin, !1, !"__tracepoint_ptr_cpu_migrate_begin", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cpu_migrate_begin, !1, !"__SCK__tp_func_cpu_migrate_begin", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cpu_migrate_finish, !5, !"__tracepoint_cpu_migrate_finish", i1 false, i1 false}
!5 = !{!"../include/trace/events/power_cpu_migrate.h", i32 45, i32 1}
!6 = !{ptr @__tracepoint_ptr_cpu_migrate_finish, !5, !"__tracepoint_ptr_cpu_migrate_finish", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cpu_migrate_finish, !5, !"__SCK__tp_func_cpu_migrate_finish", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cpu_migrate_current, !9, !"__tracepoint_cpu_migrate_current", i1 false, i1 false}
!9 = !{!"../include/trace/events/power_cpu_migrate.h", i32 46, i32 1}
!10 = !{ptr @__tracepoint_ptr_cpu_migrate_current, !9, !"__tracepoint_ptr_cpu_migrate_current", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cpu_migrate_current, !9, !"__SCK__tp_func_cpu_migrate_current", i1 false, i1 false}
!12 = !{ptr @event_class_cpu_migrate, !13, !"event_class_cpu_migrate", i1 false, i1 false}
!13 = !{!"../include/trace/events/power_cpu_migrate.h", i32 17, i32 1}
!14 = !{ptr @event_cpu_migrate_begin, !1, !"event_cpu_migrate_begin", i1 false, i1 false}
!15 = !{ptr @__event_cpu_migrate_begin, !1, !"__event_cpu_migrate_begin", i1 false, i1 false}
!16 = !{ptr @event_cpu_migrate_finish, !5, !"event_cpu_migrate_finish", i1 false, i1 false}
!17 = !{ptr @__event_cpu_migrate_finish, !5, !"__event_cpu_migrate_finish", i1 false, i1 false}
!18 = !{ptr @event_cpu_migrate_current, !9, !"event_cpu_migrate_current", i1 false, i1 false}
!19 = !{ptr @__event_cpu_migrate_current, !9, !"__event_cpu_migrate_current", i1 false, i1 false}
!20 = !{ptr @__bpf_trace_tp_map_cpu_migrate_begin, !1, !"__bpf_trace_tp_map_cpu_migrate_begin", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_cpu_migrate_finish, !5, !"__bpf_trace_tp_map_cpu_migrate_finish", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_cpu_migrate_current, !9, !"__bpf_trace_tp_map_cpu_migrate_current", i1 false, i1 false}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/common/bL_switcher.c", i32 349, i32 3}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bL_switch_request_cb._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @bL_switch_request_cb._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_bL_switch_request_cb, !30, !"__ksymtab_bL_switch_request_cb", i1 false, i1 false}
!30 = !{!"../arch/arm/common/bL_switcher.c", i32 372, i32 1}
!31 = !{ptr @__ksymtab_bL_switcher_register_notifier, !32, !"__ksymtab_bL_switcher_register_notifier", i1 false, i1 false}
!32 = !{!"../arch/arm/common/bL_switcher.c", i32 388, i32 1}
!33 = !{ptr @__ksymtab_bL_switcher_unregister_notifier, !34, !"__ksymtab_bL_switcher_unregister_notifier", i1 false, i1 false}
!34 = !{!"../arch/arm/common/bL_switcher.c", i32 394, i32 1}
!35 = !{ptr @__ksymtab_bL_switcher_trace_trigger, !36, !"__ksymtab_bL_switcher_trace_trigger", i1 false, i1 false}
!36 = !{!"../arch/arm/common/bL_switcher.c", i32 550, i32 1}
!37 = !{ptr @__ksymtab_bL_switcher_get_enabled, !38, !"__ksymtab_bL_switcher_get_enabled", i1 false, i1 false}
!38 = !{!"../arch/arm/common/bL_switcher.c", i32 742, i32 1}
!39 = !{ptr @__ksymtab_bL_switcher_put_enabled, !40, !"__ksymtab_bL_switcher_put_enabled", i1 false, i1 false}
!40 = !{!"../arch/arm/common/bL_switcher.c", i32 748, i32 1}
!41 = !{ptr @__param_no_bL_switcher, !42, !"__param_no_bL_switcher", i1 false, i1 false}
!42 = !{!"../arch/arm/common/bL_switcher.c", i32 770, i32 1}
!43 = !{ptr @__initcall__kmod_bL_switcher__271_803_bL_switcher_init7, !44, !"__initcall__kmod_bL_switcher__271_803_bL_switcher_init7", i1 false, i1 false}
!44 = !{!"../arch/arm/common/bL_switcher.c", i32 803, i32 1}
!45 = !{ptr @bL_switcher_cpu_pairing, !46, !"bL_switcher_cpu_pairing", i1 false, i1 false}
!46 = !{!"../arch/arm/common/bL_switcher.c", i32 138, i32 12}
!47 = !{ptr @bL_threads, !48, !"bL_threads", i1 false, i1 false}
!48 = !{!"../arch/arm/common/bL_switcher.c", i32 268, i32 25}
!49 = distinct !{null, !50, !"bL_switcher_active", i1 false, i1 false}
!50 = !{!"../arch/arm/common/bL_switcher.c", i32 380, i32 21}
!51 = !{ptr @no_bL_switcher, !52, !"no_bL_switcher", i1 false, i1 false}
!52 = !{!"../arch/arm/common/bL_switcher.c", i32 769, i32 13}
!53 = !{ptr @__tpstrtab_cpu_migrate_begin, !1, !"__tpstrtab_cpu_migrate_begin", i1 false, i1 false}
!54 = !{ptr @__tpstrtab_cpu_migrate_finish, !5, !"__tpstrtab_cpu_migrate_finish", i1 false, i1 false}
!55 = !{ptr @__tpstrtab_cpu_migrate_current, !9, !"__tpstrtab_cpu_migrate_current", i1 false, i1 false}
!56 = !{ptr @str__power__trace_system_name, !57, !"str__power__trace_system_name", i1 false, i1 false}
!57 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!58 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @trace_event_fields_cpu_migrate, !13, !"trace_event_fields_cpu_migrate", i1 false, i1 false}
!63 = !{ptr @trace_event_type_funcs_cpu_migrate, !13, !"trace_event_type_funcs_cpu_migrate", i1 false, i1 false}
!64 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @print_fmt_cpu_migrate, !13, !"print_fmt_cpu_migrate", i1 false, i1 false}
!66 = !{ptr @.str.8, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/common/bL_switcher.c", i32 379, i32 8}
!68 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @bL_activation_notifier, !67, !"bL_activation_notifier", i1 false, i1 false}
!70 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!71 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.12, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/common/bL_switcher.c", i32 378, i32 8}
!79 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bL_switcher_activation_lock, !78, !"bL_switcher_activation_lock", i1 false, i1 false}
!81 = !{ptr @___asan_gen_.123, !42, !"__param_str_no_bL_switcher", i1 false, i1 false}
!82 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/common/bL_switcher.c", i32 779, i32 50}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/common/bL_switcher.c", i32 781, i32 55}
!86 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/common/bL_switcher.c", i32 785, i32 3}
!88 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @bL_switcher_init._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @bL_switcher_init._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/common/bL_switcher.c", i32 797, i32 3}
!93 = !{ptr @bL_switcher_init._entry.19, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bL_switcher_init._entry_ptr.21, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.22, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/common/bL_switcher.c", i32 564, i32 2}
!97 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @bL_switcher_enable._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @bL_switcher_enable._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @bL_switcher_enable.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../arch/arm/common/bL_switcher.c", i32 578, i32 3}
!102 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @bL_switcher_enable.__key.25, !104, !"__key", i1 false, i1 false}
!104 = !{!"../arch/arm/common/bL_switcher.c", i32 579, i32 3}
!105 = !{ptr @.str.26, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/common/bL_switcher.c", i32 587, i32 2}
!108 = !{ptr @bL_switcher_enable._entry.27, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @bL_switcher_enable._entry_ptr.29, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/common/bL_switcher.c", i32 591, i32 2}
!112 = !{ptr @bL_switcher_enable._entry.30, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @bL_switcher_enable._entry_ptr.32, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.33, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../arch/arm/common/bL_switcher.c", i32 402, i32 3}
!116 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @bL_activation_notify._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @bL_activation_notify._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/common/bL_switcher.c", i32 431, i32 4}
!121 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @bL_switcher_halve_cpus._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @bL_switcher_halve_cpus._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../arch/arm/common/bL_switcher.c", i32 439, i32 3}
!126 = !{ptr @bL_switcher_halve_cpus._entry.37, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @bL_switcher_halve_cpus._entry_ptr.39, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../arch/arm/common/bL_switcher.c", i32 474, i32 4}
!130 = !{ptr @bL_switcher_halve_cpus._entry.40, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @bL_switcher_halve_cpus._entry_ptr.42, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../arch/arm/common/bL_switcher.c", i32 490, i32 4}
!134 = !{ptr @bL_switcher_halve_cpus._entry.43, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @bL_switcher_halve_cpus._entry_ptr.45, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../arch/arm/common/bL_switcher.c", i32 495, i32 3}
!138 = !{ptr @bL_switcher_halve_cpus._entry.46, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @bL_switcher_halve_cpus._entry_ptr.48, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @bL_switcher_removed_logical_cpus, !141, !"bL_switcher_removed_logical_cpus", i1 false, i1 false}
!141 = !{!"../arch/arm/common/bL_switcher.c", i32 382, i32 18}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/common/bL_switcher.c", i32 415, i32 4}
!144 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @bL_switcher_restore_cpus._entry, !143, !"_entry", i1 false, i1 false}
!148 = !{ptr @bL_switcher_restore_cpus._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @bL_gic_id, !150, !"bL_gic_id", i1 false, i1 false}
!150 = !{!"../arch/arm/common/bL_switcher.c", i32 137, i32 21}
!151 = !{ptr @bL_switcher_cpu_original_cluster, !152, !"bL_switcher_cpu_original_cluster", i1 false, i1 false}
!152 = !{!"../arch/arm/common/bL_switcher.c", i32 381, i32 21}
!153 = !{ptr @init_completion.__key, !154, !"__key", i1 false, i1 false}
!154 = !{!"../include/linux/completion.h", i32 87, i32 2}
!155 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.54, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../arch/arm/common/bL_switcher.c", i32 311, i32 29}
!158 = !{ptr @.str.55, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../arch/arm/common/bL_switcher.c", i32 316, i32 3}
!160 = !{ptr @.str.56, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @bL_switcher_thread_create._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @bL_switcher_thread_create._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../arch/arm/common/bL_switcher.c", i32 169, i32 2}
!165 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.59, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @bL_switch_to.__UNIQUE_ID_ddebug269, !164, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!168 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../arch/arm/common/bL_switcher.c", i32 190, i32 3}
!170 = !{ptr @bL_switch_to._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @bL_switch_to._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.61, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../arch/arm/common/bL_switcher.c", i32 224, i32 9}
!174 = !{ptr @.str.62, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../arch/arm/common/bL_switcher.c", i32 233, i32 9}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../arch/arm/common/bL_switcher.c", i32 237, i32 2}
!178 = !{ptr @bL_switch_to.__UNIQUE_ID_ddebug270, !177, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../arch/arm/common/bL_switcher.c", i32 254, i32 3}
!181 = !{ptr @bL_switch_to._entry.64, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @bL_switch_to._entry_ptr.66, !180, !"_entry_ptr", i1 false, i1 false}
!183 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!184 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../arch/arm/common/bL_switcher.c", i32 67, i32 2}
!187 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @bL_do_switch.__UNIQUE_ID_ddebug268, !186, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!189 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!190 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!191 = !{ptr @bL_switcher_kobj, !192, !"bL_switcher_kobj", i1 false, i1 false}
!192 = !{!"../arch/arm/common/bL_switcher.c", i32 719, i32 24}
!193 = !{ptr @bL_switcher_attr_group, !194, !"bL_switcher_attr_group", i1 false, i1 false}
!194 = !{!"../arch/arm/common/bL_switcher.c", i32 715, i32 31}
!195 = !{ptr @bL_switcher_attrs, !196, !"bL_switcher_attrs", i1 false, i1 false}
!196 = !{!"../arch/arm/common/bL_switcher.c", i32 709, i32 26}
!197 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../arch/arm/common/bL_switcher.c", i32 704, i32 2}
!199 = !{ptr @bL_switcher_active_attr, !200, !"bL_switcher_active_attr", i1 false, i1 false}
!200 = !{!"../arch/arm/common/bL_switcher.c", i32 703, i32 30}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../arch/arm/common/bL_switcher.c", i32 672, i32 22}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../arch/arm/common/bL_switcher.c", i32 651, i32 3}
!205 = !{ptr @.str.72, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @bL_switcher_disable._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @bL_switcher_disable._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../arch/arm/common/bL_switcher.c", i32 653, i32 3}
!210 = !{ptr @bL_switcher_disable._entry.73, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @bL_switcher_disable._entry_ptr.75, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../arch/arm/common/bL_switcher.c", i32 707, i32 2}
!214 = !{ptr @bL_switcher_trace_trigger_attr, !215, !"bL_switcher_trace_trigger_attr", i1 false, i1 false}
!215 = !{!"../arch/arm/common/bL_switcher.c", i32 706, i32 30}
!216 = !{!"sp"}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{!"branch_weights", i32 1, i32 2000}
!228 = !{!"auto-init"}
!229 = !{i64 2155506106}
!230 = !{i64 1372}
!231 = !{i64 2155506227}
!232 = !{i8 0, i8 2}
!233 = !{i64 2148710397, i64 2148710402, i64 2148710415, i64 2148710459, i64 2148710493, i64 2148710514}
!234 = !{i64 2154407708}
!235 = !{i64 2154407959}
!236 = !{i64 2149383610}
!237 = !{i64 2149384646}
!238 = !{i64 2155466565, i64 2155467059, i64 2155466602, i64 2155466658, i64 2155466692, i64 2155466716, i64 2155466757, i64 2155466778, i64 2155466806, i64 2155466840}
!239 = !{i64 593317}
!240 = !{i64 591020}
!241 = !{i64 2155472600}
!242 = !{i64 2155475370, i64 2155475864, i64 2155475407, i64 2155475463, i64 2155475497, i64 2155475521, i64 2155475562, i64 2155475583, i64 2155475611, i64 2155475645}
!243 = !{i64 2155476695}
!244 = !{i64 590830}
!245 = !{i64 2149245117}
!246 = !{i64 2149245216, i64 2149245243, i64 2149245290, i64 2149245312, i64 2149245340, i64 2149245360}
!247 = !{i64 2154373484}
!248 = !{i64 2154373731}
!249 = !{i64 2155464562, i64 2155465056, i64 2155464599, i64 2155464655, i64 2155464689, i64 2155464713, i64 2155464754, i64 2155464775, i64 2155464803, i64 2155464837}
!250 = !{i64 2154390549}
!251 = !{i64 2154390798}
!252 = !{i64 2155462049}
!253 = !{i64 2155462093}
!254 = !{i64 2155462204}
!255 = !{i64 2155462458, i64 2155462952, i64 2155462495, i64 2155462551, i64 2155462585, i64 2155462609, i64 2155462650, i64 2155462671, i64 2155462699, i64 2155462733}
