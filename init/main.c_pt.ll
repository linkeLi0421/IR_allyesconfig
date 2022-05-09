; ModuleID = '/llk/IR_all_yes/init/main.c_pt.bc'
source_filename = "../init/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+system_state\22, \22a\22\09"
module asm "\09.weak\09__crc_system_state\09\09\09\09"
module asm "\09.long\09__crc_system_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_state:\09\09\09\09\09"
module asm "\09.asciz \09\22system_state\22\09\09\09\09\09"
module asm "__kstrtabns_system_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+static_key_initialized\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_initialized\09\09\09\09"
module asm "\09.long\09__crc_static_key_initialized\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_initialized\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reset_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_reset_devices\09\09\09\09"
module asm "\09.long\09__crc_reset_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_devices\22\09\09\09\09\09"
module asm "__kstrtabns_reset_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+loops_per_jiffy\22, \22a\22\09"
module asm "\09.weak\09__crc_loops_per_jiffy\09\09\09\09"
module asm "\09.long\09__crc_loops_per_jiffy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_loops_per_jiffy:\09\09\09\09\09"
module asm "\09.asciz \09\22loops_per_jiffy\22\09\09\09\09\09"
module asm "__kstrtabns_loops_per_jiffy:\09\09\09\09\09"
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
%union.anon.110 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_initcall_level = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_initcall_start = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_initcall_finish = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.blacklist_entry = type { %struct.list_head, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.anon.6 = type { [16 x i8], %struct.lockdep_map }

@__tpstrtab_initcall_level = internal constant [15 x i8] c"initcall_level\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_initcall_level = dso_local global %struct.static_call_key { ptr @__traceiter_initcall_level }, align 4
@__tracepoint_initcall_level = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_initcall_level, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_initcall_level, ptr null, ptr @__traceiter_initcall_level, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_initcall_level = internal constant ptr @__tracepoint_initcall_level, section "__tracepoints_ptrs", align 4
@__tpstrtab_initcall_start = internal constant [15 x i8] c"initcall_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_initcall_start = dso_local global %struct.static_call_key { ptr @__traceiter_initcall_start }, align 4
@__tracepoint_initcall_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_initcall_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_initcall_start, ptr null, ptr @__traceiter_initcall_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_initcall_start = internal constant ptr @__tracepoint_initcall_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_initcall_finish = internal constant [16 x i8] c"initcall_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_initcall_finish = dso_local global %struct.static_call_key { ptr @__traceiter_initcall_finish }, align 4
@__tracepoint_initcall_finish = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_initcall_finish, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_initcall_finish, ptr null, ptr @__traceiter_initcall_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_initcall_finish = internal constant ptr @__tracepoint_initcall_finish, section "__tracepoints_ptrs", align 4
@str__initcall__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"initcall\00", [23 x i8] zeroinitializer }, align 32
@trace_event_fields_initcall_level = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.0 { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_initcall_level = internal global %struct.trace_event_class { ptr @str__initcall__trace_system_name, ptr @trace_event_raw_event_initcall_level, ptr @perf_trace_initcall_level, ptr @trace_event_reg, ptr @trace_event_fields_initcall_level, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_initcall_level, i64 24), ptr getelementptr (i8, ptr @event_class_initcall_level, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_initcall_level = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_initcall_level, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_initcall_level = internal global { [29 x i8], [35 x i8] } { [29 x i8] c"\22level=%s\22, __get_str(level)\00", [35 x i8] zeroinitializer }, align 32
@event_initcall_level = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_initcall_level, %union.anon.1 { ptr @__tracepoint_initcall_level }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_initcall_level }, ptr @print_fmt_initcall_level, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_initcall_level = internal global ptr @event_initcall_level, section "_ftrace_events", align 4
@trace_event_fields_initcall_start = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.28, %union.anon.0 { %struct.anon { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_initcall_start = internal global %struct.trace_event_class { ptr @str__initcall__trace_system_name, ptr @trace_event_raw_event_initcall_start, ptr @perf_trace_initcall_start, ptr @trace_event_reg, ptr @trace_event_fields_initcall_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_initcall_start, i64 24), ptr getelementptr (i8, ptr @event_class_initcall_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_initcall_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_initcall_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_initcall_start = internal global { [22 x i8], [42 x i8] } { [22 x i8] c"\22func=%pS\22, REC->func\00", [42 x i8] zeroinitializer }, align 32
@event_initcall_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_initcall_start, %union.anon.1 { ptr @__tracepoint_initcall_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_initcall_start }, ptr @print_fmt_initcall_start, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_initcall_start = internal global ptr @event_initcall_start, section "_ftrace_events", align 4
@trace_event_fields_initcall_finish = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.28, %union.anon.0 { %struct.anon { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.0 { %struct.anon { ptr @.str.32, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_initcall_finish = internal global %struct.trace_event_class { ptr @str__initcall__trace_system_name, ptr @trace_event_raw_event_initcall_finish, ptr @perf_trace_initcall_finish, ptr @trace_event_reg, ptr @trace_event_fields_initcall_finish, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_initcall_finish, i64 24), ptr getelementptr (i8, ptr @event_class_initcall_finish, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_initcall_finish = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_initcall_finish, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_initcall_finish = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"\22func=%pS ret=%d\22, REC->func, REC->ret\00", [57 x i8] zeroinitializer }, align 32
@event_initcall_finish = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_initcall_finish, %union.anon.1 { ptr @__tracepoint_initcall_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_initcall_finish }, ptr @print_fmt_initcall_finish, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_initcall_finish = internal global ptr @event_initcall_finish, section "_ftrace_events", align 4
@__bpf_trace_tp_map_initcall_level = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_initcall_level, ptr @__bpf_trace_initcall_level, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_initcall_start = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_initcall_start, ptr @__bpf_trace_initcall_start, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_initcall_finish = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_initcall_finish, ptr @__bpf_trace_initcall_finish, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@system_state = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_system_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_state = external dso_local constant [0 x i8], align 1
@__ksymtab_system_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_state to i32), ptr @__kstrtab_system_state, ptr @__kstrtabns_system_state }, section "___ksymtab+system_state", align 4
@static_key_initialized = dso_local global i8 0, section ".data..read_mostly", align 1
@__kstrtab_static_key_initialized = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_initialized = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_initialized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_initialized to i32), ptr @__kstrtab_static_key_initialized, ptr @__kstrtabns_static_key_initialized }, section "___ksymtab_gpl+static_key_initialized", align 4
@reset_devices = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_reset_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_devices to i32), ptr @__kstrtab_reset_devices, ptr @__kstrtabns_reset_devices }, section "___ksymtab+reset_devices", align 4
@__setup_str_set_reset_devices = internal constant [14 x i8] c"reset_devices\00", section ".init.rodata", align 1
@__setup_set_reset_devices = internal global %struct.obs_kernel_param { ptr @__setup_str_set_reset_devices, ptr @set_reset_devices, i32 0 }, section ".init.setup", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TERM=linux\00", [21 x i8] zeroinitializer }, align 32
@envp_init = dso_local global { <{ ptr, ptr, [32 x ptr] }>, [56 x i8] } { <{ ptr, ptr, [32 x ptr] }> <{ ptr @.str, ptr @.str.1, [32 x ptr] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@loops_per_jiffy = dso_local global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__kstrtab_loops_per_jiffy = external dso_local constant [0 x i8], align 1
@__kstrtabns_loops_per_jiffy = external dso_local constant [0 x i8], align 1
@__ksymtab_loops_per_jiffy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @loops_per_jiffy to i32), ptr @__kstrtab_loops_per_jiffy, ptr @__kstrtabns_loops_per_jiffy }, section "___ksymtab+loops_per_jiffy", align 4
@__setup_str_debug_kernel = internal constant [6 x i8] c"debug\00", section ".init.rodata", align 1
@__setup_debug_kernel = internal global %struct.obs_kernel_param { ptr @__setup_str_debug_kernel, ptr @debug_kernel, i32 1 }, section ".init.setup", align 4
@__setup_str_quiet_kernel = internal constant [6 x i8] c"quiet\00", section ".init.rodata", align 1
@__setup_quiet_kernel = internal global %struct.obs_kernel_param { ptr @__setup_str_quiet_kernel, ptr @quiet_kernel, i32 1 }, section ".init.setup", align 4
@__setup_str_loglevel = internal constant [9 x i8] c"loglevel\00", section ".init.rodata", align 1
@__setup_loglevel = internal global %struct.obs_kernel_param { ptr @__setup_str_loglevel, ptr @loglevel, i32 1 }, section ".init.setup", align 4
@__setup_str_warn_bootconfig = internal constant [11 x i8] c"bootconfig\00", section ".init.rodata", align 1
@__setup_warn_bootconfig = internal global %struct.obs_kernel_param { ptr @__setup_str_warn_bootconfig, ptr @warn_bootconfig, i32 1 }, section ".init.setup", align 4
@__setup_str_init_setup = internal constant [6 x i8] c"init=\00", section ".init.rodata", align 1
@__setup_init_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_init_setup, ptr @init_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_rdinit_setup = internal constant [8 x i8] c"rdinit=\00", section ".init.rodata", align 1
@__setup_rdinit_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_rdinit_setup, ptr @rdinit_setup, i32 0 }, section ".init.setup", align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@kthreadd_task = external dso_local local_unnamed_addr global ptr, align 4
@kthreadd_done = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @kthreadd_done, i64 48), ptr getelementptr (i8, ptr @kthreadd_done, i64 48) } } }, section ".init.data", align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"early options\00", [18 x i8] zeroinitializer }, align 32
@parse_early_param.done = internal unnamed_addr global i1 false, section ".init.data", align 4
@parse_early_param.tmp_cmdline = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@boot_command_line = dso_local global [1024 x i8] zeroinitializer, section ".init.data", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@initcall_debug = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_initcall_debug = internal constant %struct.kernel_param { ptr @___asan_gen_.196, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @initcall_debug } }, section "__param", align 4
@init_task = external dso_local global %struct.task_struct, align 128
@early_boot_irqs_disabled = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@start_kernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\015%s\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"start_kernel\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init/main.c\00", [20 x i8] zeroinitializer }, align 32
@start_kernel._entry_ptr = internal global ptr @start_kernel._entry, section ".printk_index", align 4
@linux_banner = external dso_local constant [0 x i8], align 1
@start_kernel._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015Kernel command line: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@start_kernel._entry_ptr.8 = internal global ptr @start_kernel._entry.6, section ".printk_index", align 4
@saved_command_line = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Booting kernel\00", [17 x i8] zeroinitializer }, align 32
@static_command_line = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__start___param = external dso_local constant [0 x %struct.kernel_param], align 4
@__stop___param = external dso_local constant [0 x %struct.kernel_param], align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Setting init args\00", [46 x i8] zeroinitializer }, align 32
@extra_init_args = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Setting extra init args\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Interrupts were enabled *very* early, fixing it\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Interrupts were enabled early\0A\00", [33 x i8] zeroinitializer }, align 32
@panic_later = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too many boot %s vars at `%s'\00", [34 x i8] zeroinitializer }, align 32
@panic_param = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@initrd_below_start_ok = external dso_local local_unnamed_addr global i32, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@start_kernel._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\012initrd overwritten (0x%08lx < 0x%08lx) - disabling it.\0A\00", [38 x i8] zeroinitializer }, align 32
@start_kernel._entry_ptr.17 = internal global ptr @start_kernel._entry.15, section ".printk_index", align 4
@late_time_init = dso_local local_unnamed_addr global ptr null, section ".init.data", align 4
@__setup_str_initcall_blacklist = internal constant [20 x i8] c"initcall_blacklist=\00", section ".init.rodata", align 1
@__setup_initcall_blacklist = internal global %struct.obs_kernel_param { ptr @__setup_str_initcall_blacklist, ptr @initcall_blacklist, i32 0 }, section ".init.setup", align 4
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"preemption imbalance \00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disabled interrupts \00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"initcall %pS returned with %s\0A\00", [33 x i8] zeroinitializer }, align 32
@rodata_enabled = dso_local global i8 1, section ".data..ro_after_init", align 1
@__setup_str_set_debug_rodata = internal constant [8 x i8] c"rodata=\00", section ".init.rodata", align 1
@__setup_set_debug_rodata = internal global %struct.obs_kernel_param { ptr @__setup_str_set_debug_rodata, ptr @set_debug_rodata, i32 0 }, section ".init.setup", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"/dev/console\00", [19 x i8] zeroinitializer }, align 32
@console_on_rootfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Warning: unable to open an initial console.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"console_on_rootfs\00", [46 x i8] zeroinitializer }, align 32
@console_on_rootfs._entry_ptr = internal global ptr @console_on_rootfs._entry, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"level=%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"initcall_t\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"func\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"func=%pS\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"func=%pS ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@execute_command = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@argv_init = internal global { <{ ptr, [33 x ptr] }>, [56 x i8] } { <{ ptr, [33 x ptr] }> <{ ptr @.str.34, [33 x ptr] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@ramdisk_execute_command = internal global { ptr, [28 x i8] } { ptr @.str.36, [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/init\00", [26 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(kthreadd_done).wait.lock\00", [38 x i8] zeroinitializer }, align 32
@__setup_start = external dso_local constant [0 x %struct.obs_kernel_param], align 4
@__setup_end = external dso_local constant [0 x %struct.obs_kernel_param], align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"earlycon\00", [23 x i8] zeroinitializer }, align 32
@do_early_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Malformed early option '%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_early_param\00", [17 x i8] zeroinitializer }, align 32
@do_early_param._entry_ptr = internal global ptr @do_early_param._entry, section ".printk_index", align 4
@setup_boot_config.tmp_cmdline = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bootconfig\00", [21 x i8] zeroinitializer }, align 32
@bootconfig_found = internal global { i1, [31 x i8] } zeroinitializer, align 32
@initargs_offs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_boot_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013'bootconfig' found on command line, but no bootconfig found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup_boot_config\00", [46 x i8] zeroinitializer }, align 32
@setup_boot_config._entry_ptr = internal global ptr @setup_boot_config._entry, section ".printk_index", align 4
@setup_boot_config._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.5, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bootconfig size %d greater than max size %d\0A\00", [49 x i8] zeroinitializer }, align 32
@setup_boot_config._entry_ptr.50 = internal global ptr @setup_boot_config._entry.48, section ".printk_index", align 4
@setup_boot_config._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.5, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013bootconfig checksum failed\0A\00", [34 x i8] zeroinitializer }, align 32
@setup_boot_config._entry_ptr.53 = internal global ptr @setup_boot_config._entry.51, section ".printk_index", align 4
@setup_boot_config._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.5, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to init bootconfig: %s.\0A\00", [62 x i8] zeroinitializer }, align 32
@setup_boot_config._entry_ptr.56 = internal global ptr @setup_boot_config._entry.54, section ".printk_index", align 4
@setup_boot_config._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.5, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Failed to parse bootconfig: %s at %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@setup_boot_config._entry_ptr.59 = internal global ptr @setup_boot_config._entry.57, section ".printk_index", align 4
@setup_boot_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.5, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Load bootconfig: %d bytes %d nodes\0A\00", [58 x i8] zeroinitializer }, align 32
@setup_boot_config._entry_ptr.62 = internal global ptr @setup_boot_config._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@extra_command_line = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#BOOTCONFIG\0A\00", [19 x i8] zeroinitializer }, align 32
@get_boot_config_from_initrd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bootconfig size %d is greater than initrd size %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"get_boot_config_from_initrd\00", [36 x i8] zeroinitializer }, align 32
@get_boot_config_from_initrd._entry_ptr = internal global ptr @get_boot_config_from_initrd._entry, section ".printk_index", align 4
@xbc_make_cmdline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.5, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Failed to allocate memory for extra kernel cmdline.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xbc_make_cmdline\00", [47 x i8] zeroinitializer }, align 32
@xbc_make_cmdline._entry_ptr = internal global ptr @xbc_make_cmdline._entry, section ".printk_index", align 4
@xbc_make_cmdline._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.5, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Failed to print extra kernel cmdline.\0A\00", [55 x i8] zeroinitializer }, align 32
@xbc_make_cmdline._entry_ptr.71 = internal global ptr @xbc_make_cmdline._entry.69, section ".printk_index", align 4
@xbc_namebuf = internal global [256 x i8] zeroinitializer, section ".init.data", align 1
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s=\22%s\22 \00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.setup_command_line = private unnamed_addr constant [19 x i8] c"setup_command_line\00", align 1
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" -- \00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"env\00", [28 x i8] zeroinitializer }, align 32
@obsolete_checksetup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014Parameter %s is obsolete, ignored\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"obsolete_checksetup\00", [44 x i8] zeroinitializer }, align 32
@obsolete_checksetup._entry_ptr = internal global ptr @obsolete_checksetup._entry, section ".printk_index", align 4
@print_unknown_bootoptions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to allocate %zu bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"print_unknown_bootoptions\00", [38 x i8] zeroinitializer }, align 32
@print_unknown_bootoptions._entry_ptr = internal global ptr @print_unknown_bootoptions._entry, section ".printk_index", align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@print_unknown_bootoptions._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.5, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\015Unknown kernel command line parameters \22%s\22, will be passed to user space.\0A\00", [50 x i8] zeroinitializer }, align 32
@print_unknown_bootoptions._entry_ptr.84 = internal global ptr @print_unknown_bootoptions._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"all(pattern)\00", [19 x i8] zeroinitializer }, align 32
@report_meminit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.5, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016mem auto-init: stack:%s, heap alloc:%s, heap free:%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"report_meminit\00", [17 x i8] zeroinitializer }, align 32
@report_meminit._entry_ptr = internal global ptr @report_meminit._entry, section ".printk_index", align 4
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@report_meminit._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.87, ptr @.str.5, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016mem auto-init: clearing system memory may take some time...\0A\00", [33 x i8] zeroinitializer }, align 32
@report_meminit._entry_ptr.92 = internal global ptr @report_meminit._entry.90, section ".printk_index", align 4
@init_on_alloc = external dso_local global %struct.static_key_true, align 4
@init_on_free = external dso_local global %struct.static_key_true, align 4
@__stack_chk_guard = external dso_local local_unnamed_addr global i32, align 4
@.str.93 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@initcall_blacklist.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.95, ptr @.str.5, ptr @.str.96, i8 1, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"initcall_blacklist\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"blacklisting initcall %s\0A\00", [38 x i8] zeroinitializer }, align 32
@blacklisted_initcalls = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @blacklisted_initcalls, ptr @blacklisted_initcalls }, [24 x i8] zeroinitializer }, align 32
@initcall_calltime = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register initcall tracepoints\0A\00", [55 x i8] zeroinitializer }, align 32
@trace_initcall_start_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017calling  %pS @ %i\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trace_initcall_start_cb\00", [40 x i8] zeroinitializer }, align 32
@trace_initcall_start_cb._entry_ptr = internal global ptr @trace_initcall_start_cb._entry, section ".printk_index", align 4
@trace_initcall_finish_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017initcall %pS returned %d after %lld usecs\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trace_initcall_finish_cb\00", [39 x i8] zeroinitializer }, align 32
@trace_initcall_finish_cb._entry_ptr = internal global ptr @trace_initcall_finish_cb._entry, section ".printk_index", align 4
@initcall_blacklisted.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.102, ptr @.str.5, ptr @.str.103, i8 1, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"initcall_blacklisted\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"initcall %s blacklisted\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/trace/events/initcall.h\00", [32 x i8] zeroinitializer }, align 32
@trace_initcall_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_initcall_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unused kernel image (initmem)\00", [34 x i8] zeroinitializer }, align 32
@kernel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to execute %s (error %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kernel_init\00", [20 x i8] zeroinitializer }, align 32
@kernel_init._entry_ptr = internal global ptr @kernel_init._entry, section ".printk_index", align 4
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Requested init %s failed (error %d).\00", [59 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"/sbin/init\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/etc/init\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/bin/init\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/bin/sh\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"No working init found.  Try passing init= option to kernel. See Linux Documentation/admin-guide/init.rst for guidance.\00", [41 x i8] zeroinitializer }, align 32
@gfp_allowed_mask = external dso_local local_unnamed_addr global i32, align 4
@node_states = external dso_local local_unnamed_addr global [7 x %struct.nodemask_t], align 4
@cad_pid = external dso_local local_unnamed_addr global ptr, align 4
@setup_max_cpus = external dso_local local_unnamed_addr global i32, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"early\00", [26 x i8] zeroinitializer }, align 32
@__initcall_start = external dso_local global [0 x ptr], align 4
@__initcall0_start = external dso_local global [0 x ptr], align 4
@trace_initcall_level.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ctors_start = external dso_local global [0 x i8], align 1
@__ctors_end = external dso_local global [0 x i8], align 1
@__func__.do_initcalls = private unnamed_addr constant [13 x i8] c"do_initcalls\00", align 1
@initcall_level_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], section ".init.data", align 4
@initcall_levels = internal unnamed_addr constant [9 x ptr] [ptr @__initcall0_start, ptr @__initcall1_start, ptr @__initcall2_start, ptr @__initcall3_start, ptr @__initcall4_start, ptr @__initcall5_start, ptr @__initcall6_start, ptr @__initcall7_start, ptr @__initcall_end], section ".init.data", align 4
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pure\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"postcore\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arch\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"subsys\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"late\00", [27 x i8] zeroinitializer }, align 32
@__initcall1_start = external dso_local global [0 x ptr], align 4
@__initcall2_start = external dso_local global [0 x ptr], align 4
@__initcall3_start = external dso_local global [0 x ptr], align 4
@__initcall4_start = external dso_local global [0 x ptr], align 4
@__initcall5_start = external dso_local global [0 x ptr], align 4
@__initcall6_start = external dso_local global [0 x ptr], align 4
@__initcall7_start = external dso_local global [0 x ptr], align 4
@__initcall_end = external dso_local global [0 x ptr], align 4
@mark_readonly._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.5, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Kernel memory protection disabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mark_readonly\00", [18 x i8] zeroinitializer }, align 32
@mark_readonly._entry_ptr = internal global ptr @mark_readonly._entry, section ".printk_index", align 4
@run_init_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.5, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Run %s as init process\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"run_init_process\00", [47 x i8] zeroinitializer }, align 32
@run_init_process._entry_ptr = internal global ptr @run_init_process._entry, section ".printk_index", align 4
@run_init_process.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.129, ptr @.str.5, ptr @.str.130, i8 1, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  with arguments:\0A\00", [45 x i8] zeroinitializer }, align 32
@run_init_process.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.129, ptr @.str.5, ptr @.str.131, i8 1, i8 101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"    %s\0A\00", [24 x i8] zeroinitializer }, align 32
@run_init_process.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.129, ptr @.str.5, ptr @.str.132, i8 1, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  with environment:\0A\00", [43 x i8] zeroinitializer }, align 32
@run_init_process.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.94, ptr @.str.129, ptr @.str.5, ptr @.str.131, i8 1, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@try_to_run_init_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.5, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013Starting init: %s exists but couldn't execute it (error %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"try_to_run_init_process\00", [40 x i8] zeroinitializer }, align 32
@try_to_run_init_process._entry_ptr = internal global ptr @try_to_run_init_process._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 61]
@___asan_gen_.139 = private unnamed_addr constant [33 x i8] c"str__initcall__trace_system_name\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 36, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [34 x i8] c"trace_event_fields_initcall_level\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_initcall_level\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"print_fmt_initcall_level\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"event_initcall_level\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [34 x i8] c"trace_event_fields_initcall_start\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_initcall_start\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"print_fmt_initcall_start\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"event_initcall_start\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [35 x i8] c"trace_event_fields_initcall_finish\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_initcall_finish\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [26 x i8] c"print_fmt_initcall_finish\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"event_initcall_finish\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"reset_devices\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 180, i32 14 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 192, i32 44 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 192, i32 54 }
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"envp_init\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 192, i32 13 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"loops_per_jiffy\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 230, i32 15 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 749, i32 13 }
@___asan_gen_.196 = private constant [15 x i8] c"initcall_debug\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 788, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 948, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 961, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"saved_command_line\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 144, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 965, i32 28 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"static_command_line\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 146, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 971, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant [16 x i8] c"extra_init_args\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 150, i32 14 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 974, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 999, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1055, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"panic_later\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 193, i32 20 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1069, i32 9 }
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"panic_param\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 193, i32 34 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1092, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1306, i32 19 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1310, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1313, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1571, i32 32 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1574, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 10, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 48, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"execute_command\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 161, i32 14 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 191, i32 51 }
@___asan_gen_.313 = private unnamed_addr constant [10 x i8] c"argv_init\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 191, i32 20 }
@___asan_gen_.316 = private unnamed_addr constant [24 x i8] c"ramdisk_execute_command\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 162, i32 14 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 162, i32 40 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 695, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 723, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 677, i32 19 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 736, i32 22 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 737, i32 23 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 740, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 419, i32 19 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"bootconfig_found\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [14 x i8] c"initargs_offs\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 155, i32 15 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 430, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 435, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 441, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 448, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 450, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 454, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 456, i32 41 }
@___asan_gen_.398 = private unnamed_addr constant [19 x i8] c"extra_command_line\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 148, i32 14 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 284, i32 21 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 297, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 377, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 383, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 340, i32 40 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 347, i32 40 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 627, i32 9 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 661, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 552, i32 19 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 214, i32 5 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 910, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 917, i32 23 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 922, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 805, i32 11 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 817, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 821, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1175, i32 28 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1177, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant [22 x i8] c"blacklisted_initcalls\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1166, i32 29 }
@___asan_gen_.509 = private unnamed_addr constant [18 x i8] c"initcall_calltime\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1260, i32 16 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1271, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1242, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1256, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1216, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant [35 x i8] c"../include/trace/events/initcall.h\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 27, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 108, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 2500, i32 15 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1531, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1545, i32 9 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1558, i32 31 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1559, i32 31 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1560, i32 31 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1561, i32 31 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1564, i32 8 }
@___asan_gen_.579 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 277, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1415, i32 23 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1345, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1346, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1347, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1348, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1349, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1350, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1351, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1352, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1474, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1425, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1426, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1428, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1429, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.642 = private constant [15 x i8] c"../init/main.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1442, i32 3 }
@llvm.compiler.used = appending global [223 x ptr] [ptr @__bpf_trace_tp_map_initcall_finish, ptr @__bpf_trace_tp_map_initcall_level, ptr @__bpf_trace_tp_map_initcall_start, ptr @__event_initcall_finish, ptr @__event_initcall_level, ptr @__event_initcall_start, ptr @__ksymtab_loops_per_jiffy, ptr @__ksymtab_reset_devices, ptr @__ksymtab_static_key_initialized, ptr @__ksymtab_system_state, ptr @__param_initcall_debug, ptr @__setup_debug_kernel, ptr @__setup_init_setup, ptr @__setup_initcall_blacklist, ptr @__setup_loglevel, ptr @__setup_quiet_kernel, ptr @__setup_rdinit_setup, ptr @__setup_set_debug_rodata, ptr @__setup_set_reset_devices, ptr @__setup_warn_bootconfig, ptr @__tracepoint_initcall_finish, ptr @__tracepoint_initcall_level, ptr @__tracepoint_initcall_start, ptr @__tracepoint_ptr_initcall_finish, ptr @__tracepoint_ptr_initcall_level, ptr @__tracepoint_ptr_initcall_start, ptr @console_on_rootfs._entry, ptr @console_on_rootfs._entry_ptr, ptr @do_early_param._entry, ptr @do_early_param._entry_ptr, ptr @event_class_initcall_finish, ptr @event_class_initcall_level, ptr @event_class_initcall_start, ptr @event_initcall_finish, ptr @event_initcall_level, ptr @event_initcall_start, ptr @get_boot_config_from_initrd._entry, ptr @get_boot_config_from_initrd._entry_ptr, ptr @kernel_init._entry, ptr @kernel_init._entry_ptr, ptr @mark_readonly._entry, ptr @mark_readonly._entry_ptr, ptr @obsolete_checksetup._entry, ptr @obsolete_checksetup._entry_ptr, ptr @print_unknown_bootoptions._entry, ptr @print_unknown_bootoptions._entry.82, ptr @print_unknown_bootoptions._entry_ptr, ptr @print_unknown_bootoptions._entry_ptr.84, ptr @report_meminit._entry, ptr @report_meminit._entry.90, ptr @report_meminit._entry_ptr, ptr @report_meminit._entry_ptr.92, ptr @run_init_process._entry, ptr @run_init_process._entry_ptr, ptr @setup_boot_config._entry, ptr @setup_boot_config._entry.48, ptr @setup_boot_config._entry.51, ptr @setup_boot_config._entry.54, ptr @setup_boot_config._entry.57, ptr @setup_boot_config._entry.60, ptr @setup_boot_config._entry_ptr, ptr @setup_boot_config._entry_ptr.50, ptr @setup_boot_config._entry_ptr.53, ptr @setup_boot_config._entry_ptr.56, ptr @setup_boot_config._entry_ptr.59, ptr @setup_boot_config._entry_ptr.62, ptr @start_kernel._entry, ptr @start_kernel._entry.15, ptr @start_kernel._entry.6, ptr @start_kernel._entry_ptr, ptr @start_kernel._entry_ptr.17, ptr @start_kernel._entry_ptr.8, ptr @trace_initcall_finish_cb._entry, ptr @trace_initcall_finish_cb._entry_ptr, ptr @trace_initcall_start_cb._entry, ptr @trace_initcall_start_cb._entry_ptr, ptr @try_to_run_init_process._entry, ptr @try_to_run_init_process._entry_ptr, ptr @xbc_make_cmdline._entry, ptr @xbc_make_cmdline._entry.69, ptr @xbc_make_cmdline._entry_ptr, ptr @xbc_make_cmdline._entry_ptr.71, ptr @str__initcall__trace_system_name, ptr @trace_event_fields_initcall_level, ptr @trace_event_type_funcs_initcall_level, ptr @print_fmt_initcall_level, ptr @trace_event_fields_initcall_start, ptr @trace_event_type_funcs_initcall_start, ptr @print_fmt_initcall_start, ptr @trace_event_fields_initcall_finish, ptr @trace_event_type_funcs_initcall_finish, ptr @print_fmt_initcall_finish, ptr @reset_devices, ptr @.str, ptr @.str.1, ptr @envp_init, ptr @loops_per_jiffy, ptr @.str.2, ptr @initcall_debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @saved_command_line, ptr @.str.9, ptr @static_command_line, ptr @.str.10, ptr @extra_init_args, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @panic_later, ptr @.str.14, ptr @panic_param, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @execute_command, ptr @.str.34, ptr @argv_init, ptr @ramdisk_execute_command, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @bootconfig_found, ptr @initargs_offs, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @extra_command_line, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @blacklisted_initcalls, ptr @initcall_calltime, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__initcall__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_initcall_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_initcall_level to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_initcall_level to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_initcall_level to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_initcall_start to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_initcall_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_initcall_start to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_initcall_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_initcall_finish to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_initcall_finish to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_initcall_finish to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_initcall_finish to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @envp_init to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loops_per_jiffy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initcall_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_kernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_kernel._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_command_line to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_command_line to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_init_args to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_later to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_kernel._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_on_rootfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @execute_command to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @argv_init to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramdisk_execute_command to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_early_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bootconfig_found to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initargs_offs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_boot_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_boot_config._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_boot_config._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_boot_config._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_boot_config._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_boot_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_command_line to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_boot_config_from_initrd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbc_make_cmdline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbc_make_cmdline._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obsolete_checksetup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_unknown_bootoptions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_unknown_bootoptions._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_meminit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_meminit._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blacklisted_initcalls to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initcall_calltime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_initcall_start_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_initcall_finish_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_readonly._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_init_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_to_run_init_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_initcall_level(ptr nocapture readnone %__data, ptr noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_level, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
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
  tail call void %2(ptr noundef %4, ptr noundef %level) #25
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_initcall_start(ptr nocapture readnone %__data, ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
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
  tail call void %2(ptr noundef %4, ptr noundef %func) #25
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_initcall_finish(ptr nocapture readnone %__data, ptr noundef %func, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_finish, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
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
  tail call void %2(ptr noundef %4, ptr noundef %func, i32 noundef %ret) #25
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_initcall_level(ptr noundef %__data, ptr noundef readonly %level) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #25
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !409

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !410

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #25
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i20 = icmp eq ptr %level, null
  %spec.select.i = select i1 %tobool.not.i20, ptr @.str.24, ptr %level
  %call.i21 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #28
  %add = add i32 %call.i21, 13
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #25
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %add.i = shl i32 %call.i21, 16
  %or.i = add i32 %add.i, 65548
  %__data_loc_level = getelementptr inbounds %struct.trace_event_raw_initcall_level, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_level to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_level, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #29
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_initcall_level(ptr noundef %__data, ptr noundef readonly %level) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #25
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #25
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !411
  %tobool.not.i = icmp eq ptr %level, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.24, ptr %level
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #28
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65548
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i44.not = icmp eq ptr %15, null
  br i1 %tobool.not.i44.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 24
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #25
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #25
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !399) #25
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_level = getelementptr inbounds %struct.trace_event_raw_initcall_level, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_level to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_level, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #29
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_initcall_start(ptr noundef %__data, ptr noundef %func) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #25
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !409

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !410

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #25
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #25
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %func6 = getelementptr inbounds %struct.trace_event_raw_initcall_start, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %func6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %func, ptr %func6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_initcall_start(ptr noundef %__data, ptr noundef %func) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #25
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #25
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !411
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #25
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #25
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !399) #25
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %func17 = getelementptr inbounds %struct.trace_event_raw_initcall_start, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %func, ptr %func17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_initcall_finish(ptr noundef %__data, ptr noundef %func, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #25
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !409

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !410

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #25
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #25
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %func6 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %func6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %func, ptr %func6, align 4
  %ret7 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ret7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ret, ptr %ret7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_initcall_finish(ptr noundef %__data, ptr noundef %func, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #25
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #25
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !411
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #25
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #25
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !399) #25
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %func17 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %func, ptr %func17, align 4
  %ret18 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ret18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret, ptr %ret18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_initcall_level(ptr noundef %__data, ptr noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %0 = ptrtoint ptr %level to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_initcall_start(ptr noundef %__data, ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %0 = ptrtoint ptr %func to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_initcall_finish(ptr noundef %__data, ptr noundef %func, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %0 = ptrtoint ptr %func to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #25
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @set_reset_devices(ptr nocapture noundef readnone %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @reset_devices, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debug_kernel(ptr nocapture noundef readnone %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 10, ptr @console_printk, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @quiet_kernel(ptr nocapture noundef readnone %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 4, ptr @console_printk, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @loglevel(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %newlevel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newlevel) #25
  %1 = ptrtoint ptr %newlevel to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %newlevel, align 4, !annotation !411
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %newlevel) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %2 = ptrtoint ptr %newlevel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %newlevel, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %3, ptr @console_printk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newlevel) #25
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @warn_bootconfig(ptr nocapture noundef readnone %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @init_setup(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr @execute_command, align 4
  %0 = call ptr @memset(ptr getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), i32 0, i32 124)
  ret i32 1
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @rdinit_setup(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr @ramdisk_execute_command, align 4
  %0 = call ptr @memset(ptr getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), i32 0, i32 124)
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rest_init() local_unnamed_addr #7 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_scheduler_starting() #25
  %call = tail call i32 @kernel_thread(ptr noundef nonnull @kernel_init, ptr noundef null, i32 noundef 512) #25
  %0 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !412
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #25
  %call.i = tail call zeroext i1 @rcu_is_watching() #25
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #25
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call ptr @find_task_by_pid_ns(i32 noundef %call, ptr noundef nonnull @init_pid_ns) #25
  %flags = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 67108864
  store i32 %or, ptr %flags, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %rem.i = and i32 %9, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %9, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call4 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %call1, ptr noundef %add.ptr.i) #25
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #25
  br i1 %call.i20, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %rcu_read_lock.exit
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #25
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !413
  %10 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i.i.i27 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #25
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #25
  %call5 = tail call i32 @kernel_thread(ptr noundef nonnull @kthreadd, ptr noundef null, i32 noundef 1536) #25
  %14 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i.i.i9 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %add.i.i.i11 = add i32 %17, 1
  store volatile i32 %add.i.i.i11, ptr %preempt_count.i.i.i.i10, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !412
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #25
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #25
  br i1 %call.i12, label %rcu_read_unlock.exit.rcu_read_lock.exit19_crit_edge, label %land.lhs.true.i15

rcu_read_unlock.exit.rcu_read_lock.exit19_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit19

land.lhs.true.i15:                                ; preds = %rcu_read_unlock.exit
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_lock.exit19_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_lock.exit19_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit19

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_lock.exit19_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_lock.exit19_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit19

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #25
  br label %rcu_read_lock.exit19

rcu_read_lock.exit19:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_lock.exit19_crit_edge, %land.lhs.true.i15.rcu_read_lock.exit19_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit19_crit_edge
  %call6 = tail call ptr @find_task_by_pid_ns(i32 noundef %call5, ptr noundef nonnull @init_pid_ns) #25
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kthreadd_task to i32))
  store ptr %call6, ptr @kthreadd_task, align 4
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #25
  br i1 %call.i29, label %rcu_read_lock.exit19.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true.i32

rcu_read_lock.exit19.rcu_read_unlock.exit39_crit_edge: ; preds = %rcu_read_lock.exit19
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit39

land.lhs.true.i32:                                ; preds = %rcu_read_lock.exit19
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit39

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit39

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #25
  br label %rcu_read_unlock.exit39

rcu_read_unlock.exit39:                           ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, %rcu_read_lock.exit19.rcu_read_unlock.exit39_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !413
  %18 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i.i.i36 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i38 = add i32 %21, -1
  store volatile i32 %sub.i.i.i38, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #25
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #25
  store i32 1, ptr @system_state, align 4
  tail call void @complete(ptr noundef nonnull @kthreadd_done) #25
  tail call void @schedule_preempt_disabled() #25
  tail call void @cpu_startup_entry(i32 noundef 229) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_scheduler_starting() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernel_init(ptr nocapture noundef readnone %unused) #7 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wait_for_completion(ptr noundef nonnull @kthreadd_done) #25
  tail call fastcc void @kernel_init_freeable() #30
  tail call void @async_synchronize_full() #25
  store i32 2, ptr @system_state, align 4
  tail call void @kprobe_free_init_mem() #25
  tail call void @ftrace_free_init_mem() #25
  tail call void @kgdb_free_init_mem() #25
  tail call void @xbc_exit() #31
  tail call void @free_initmem()
  %0 = load i8, ptr @rodata_enabled, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @rcu_barrier() #25
  tail call void @mark_rodata_ro() #25
  tail call void @rodata_test() #25
  br label %mark_readonly.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #31
  br label %mark_readonly.exit

mark_readonly.exit:                               ; preds = %do.end.i, %if.then.i
  store i32 3, ptr @system_state, align 4
  tail call void @rcu_end_inkernel_boot() #25
  tail call void @do_sysctl_args() #25
  %1 = load ptr, ptr @ramdisk_execute_command, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %mark_readonly.exit.if.end4_crit_edge, label %if.then

mark_readonly.exit.if.end4_crit_edge:             ; preds = %mark_readonly.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end4

if.then:                                          ; preds = %mark_readonly.exit
  %call = tail call fastcc i32 @run_init_process(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  %2 = load ptr, ptr @ramdisk_execute_command, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %2, i32 noundef %call) #31
  br label %if.end4

if.end4:                                          ; preds = %do.end, %mark_readonly.exit.if.end4_crit_edge
  %3 = load ptr, ptr @execute_command, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call fastcc i32 @run_init_process(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  %4 = load ptr, ptr @execute_command, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.110, ptr noundef %4, i32 noundef %call7) #32
  unreachable

if.end11:                                         ; preds = %if.end4
  %call.i28 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.111) #25
  %5 = zext i32 %call.i28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i28, label %do.end.i29 [
    i32 0, label %if.end11.cleanup_crit_edge
    i32 -2, label %if.end11.lor.lhs.false_crit_edge
  ]

if.end11.lor.lhs.false_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end.i29:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #27
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.111, i32 noundef %call.i28) #31
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.i29, %if.end11.lor.lhs.false_crit_edge
  %call.i30 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.112) #25
  %6 = zext i32 %call.i30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call.i30, label %do.end.i32 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 -2, label %lor.lhs.false.lor.lhs.false16_crit_edge
  ]

lor.lhs.false.lor.lhs.false16_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end.i32:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  %call1.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.112, i32 noundef %call.i30) #31
  br label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %do.end.i32, %lor.lhs.false.lor.lhs.false16_crit_edge
  %call.i34 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.113) #25
  %7 = zext i32 %call.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call.i34, label %do.end.i36 [
    i32 0, label %lor.lhs.false16.cleanup_crit_edge
    i32 -2, label %lor.lhs.false16.lor.lhs.false19_crit_edge
  ]

lor.lhs.false16.lor.lhs.false19_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false19

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end.i36:                                       ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #27
  %call1.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.113, i32 noundef %call.i34) #31
  br label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %do.end.i36, %lor.lhs.false16.lor.lhs.false19_crit_edge
  %call.i38 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.114) #25
  %8 = zext i32 %call.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call.i38, label %do.end.i40 [
    i32 0, label %lor.lhs.false19.cleanup_crit_edge
    i32 -2, label %lor.lhs.false19.if.end23_crit_edge
  ]

lor.lhs.false19.if.end23_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end23

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end.i40:                                       ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #27
  %call1.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.114, i32 noundef %call.i38) #31
  br label %if.end23

if.end23:                                         ; preds = %do.end.i40, %lor.lhs.false19.if.end23_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.115) #32
  unreachable

cleanup:                                          ; preds = %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthreadd(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_startup_entry(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @parse_early_options(ptr noundef %cmdline) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @parse_args(ptr noundef nonnull @.str.2, ptr noundef %cmdline, ptr noundef null, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef nonnull @do_early_param) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parse_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @do_early_param(ptr noundef %param, ptr noundef %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef readnone %arg) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 icmp ult (ptr @__setup_start, ptr @__setup_end), label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.019 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__setup_start, %entry.for.body_crit_edge ]
  %early = getelementptr inbounds %struct.obs_kernel_param, ptr %p.019, i32 0, i32 2
  %0 = ptrtoint ptr %early to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %early, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.lor.lhs.false_crit_edge, label %land.lhs.true

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %p.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.019, align 4
  %call = tail call zeroext i1 @parameq(ptr noundef %param, ptr noundef %3) #25
  br i1 %call, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %call1 = tail call i32 @strcmp(ptr noundef %param, ptr noundef nonnull dereferenceable(8) @.str.41) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %p.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.019, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(9) @.str.42) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true3.if.then_crit_edge, label %land.lhs.true3.for.inc_crit_edge

land.lhs.true3.for.inc_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

land.lhs.true3.if.then_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

if.then:                                          ; preds = %land.lhs.true3.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %setup_func = getelementptr inbounds %struct.obs_kernel_param, ptr %p.019, i32 0, i32 1
  %6 = ptrtoint ptr %setup_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %setup_func, align 4
  %call7 = tail call i32 %7(ptr noundef %val) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.then.for.inc_crit_edge, label %do.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %param) #31
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then.for.inc_crit_edge, %land.lhs.true3.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.obs_kernel_param, ptr %p.019, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__setup_end
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @parse_early_param() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @parse_early_param.done, align 4
  br i1 %.b, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call = tail call i32 @strlcpy(ptr noundef nonnull @parse_early_param.tmp_cmdline, ptr noundef nonnull @boot_command_line, i32 noundef 1024) #25
  %call.i = tail call ptr @parse_args(ptr noundef nonnull @.str.2, ptr noundef nonnull @parse_early_param.tmp_cmdline, ptr noundef null, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef nonnull @do_early_param) #25
  store i1 true, ptr @parse_early_param.done, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_post_acpi_subsys_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @smp_setup_processor_id() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @thread_stack_cache_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @mem_encrypt_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @poking_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @pgtable_cache_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @trap_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_call_rest_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rest_init()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @start_kernel() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  %canary.i = alloca i32, align 4
  %command_line = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command_line) #25
  store ptr inttoptr (i32 -1 to ptr), ptr %command_line, align 4, !annotation !411
  tail call void @set_task_stack_end_magic(ptr noundef nonnull @init_task) #25
  tail call void @smp_setup_processor_id() #30
  tail call void @debug_objects_early_init() #25
  tail call void @init_vmlinux_build_id() #25
  %call = tail call i32 @cgroup_init_early() #25
  %call1 = tail call fastcc i32 @arch_irqs_disabled()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  tail call fastcc void @arch_local_irq_disable()
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_off() #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i8 1, ptr @early_boot_irqs_disabled, align 1
  tail call void @boot_cpu_init() #25
  tail call void @page_address_init() #25
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @linux_banner) #31
  %call7 = tail call i32 @early_security_init() #25
  call void @setup_arch(ptr noundef nonnull %command_line) #25
  call fastcc void @setup_boot_config() #30
  %0 = load ptr, ptr %command_line, align 4
  call fastcc void @setup_command_line(ptr noundef %0) #30
  call void @setup_nr_cpu_ids() #31
  call void @setup_per_cpu_areas() #31
  call void @smp_prepare_boot_cpu() #25
  call void @boot_cpu_hotplug_init() #25
  call void @build_all_zonelists(ptr noundef null) #25
  call void @page_alloc_init() #25
  %1 = load ptr, ptr @saved_command_line, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1) #31
  call void @jump_label_init() #25
  call void @parse_early_param() #30
  %2 = load ptr, ptr @static_command_line, align 4
  %call13 = call ptr @parse_args(ptr noundef nonnull @.str.9, ptr noundef %2, ptr noundef nonnull @__start___param, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___param to i32), i32 ptrtoint (ptr @__start___param to i32)), i32 20), i16 noundef signext -1, i16 noundef signext -1, ptr noundef null, ptr noundef nonnull @unknown_bootoption) #25
  call fastcc void @print_unknown_bootoptions() #30
  %call14 = call fastcc zeroext i1 @IS_ERR_OR_NULL(ptr noundef %call13)
  br i1 %call14, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %call16 = call ptr @parse_args(ptr noundef nonnull @.str.10, ptr noundef %call13, ptr noundef null, i32 noundef 0, i16 noundef signext -1, i16 noundef signext -1, ptr noundef null, ptr noundef nonnull @set_init_arg) #25
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %3 = load ptr, ptr @extra_init_args, align 4
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  %call20 = call ptr @parse_args(ptr noundef nonnull @.str.11, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0, i16 noundef signext -1, i16 noundef signext -1, ptr noundef null, ptr noundef nonnull @set_init_arg) #25
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  call void @setup_log_buf(i32 noundef 0) #31
  call void @vfs_caches_init_early() #31
  call void @sort_main_extable() #25
  call void @trap_init() #30
  call fastcc void @mm_init() #30
  call void @ftrace_init() #25
  call void @early_trace_init() #25
  call void @sched_init() #25
  %call24 = call fastcc i32 @arch_local_save_flags()
  %call34 = call fastcc i32 @arch_irqs_disabled_flags(i32 noundef %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end48, label %if.end21.if.end74_crit_edge, !prof !410

if.end21.if.end74_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end74

do.end48:                                         ; preds = %if.end21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1000, i32 noundef 9, ptr noundef nonnull @.str.12) #25
  %call66 = call fastcc i32 @arch_irqs_disabled()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  call fastcc void @arch_local_irq_disable()
  br i1 %tobool67.not, label %if.then70, label %do.end48.if.end74_crit_edge

do.end48.if.end74_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end74

if.then70:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #27
  call void @trace_hardirqs_off() #25
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %do.end48.if.end74_crit_edge, %if.end21.if.end74_crit_edge
  call void @radix_tree_init() #25
  call void @housekeeping_init() #31
  call void @workqueue_init_early() #31
  call void @rcu_init() #25
  call void @trace_init() #25
  %4 = load i8, ptr @initcall_debug, align 1, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool75.not = icmp eq i8 %4, 0
  br i1 %tobool75.not, label %if.end74.if.end77_crit_edge, label %if.then76

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #27
  call fastcc void @initcall_debug_enable() #30
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74.if.end77_crit_edge
  %call78 = call i32 @early_irq_init() #25
  call void @init_IRQ() #25
  call void @tick_init() #31
  call void @rcu_init_nohz() #25
  call void @init_timers() #25
  call void @srcu_init() #25
  call void @hrtimers_init() #31
  call void @softirq_init() #25
  call void @timekeeping_init() #25
  call void @kfence_init() #31
  %call79 = call i32 @rand_initialize() #31
  %5 = load ptr, ptr %command_line, align 4
  %call80 = call i32 @strlen(ptr noundef %5)
  call void @add_device_randomness(ptr noundef %5, i32 noundef %call80) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %canary.i) #25
  store i32 -1, ptr %canary.i, align 4, !annotation !411
  call void @get_random_bytes(ptr noundef nonnull %canary.i, i32 noundef 4) #25
  %6 = load i32, ptr %canary.i, align 4
  %xor.i = xor i32 %6, 332032
  store i32 %xor.i, ptr %canary.i, align 4
  %7 = call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %task.i, align 8
  %stack_canary.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 70
  store i32 %xor.i, ptr %stack_canary.i, align 32
  %10 = load ptr, ptr %task.i, align 8
  %stack_canary3.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 70
  %11 = load i32, ptr %stack_canary3.i, align 32
  store i32 %11, ptr @__stack_chk_guard, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %canary.i) #25
  call void @time_init() #25
  call void @perf_event_init() #25
  %call81 = call i32 @profile_init() #25
  call void @call_function_init() #31
  %call90 = call fastcc i32 @arch_local_save_flags()
  %call100 = call fastcc i32 @arch_irqs_disabled_flags(i32 noundef %call90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.end119, label %if.end77.if.end125_crit_edge, !prof !410

if.end77.if.end125_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end125

do.end119:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1055, i32 noundef 9, ptr noundef nonnull @.str.13) #25
  br label %if.end125

if.end125:                                        ; preds = %do.end119, %if.end77.if.end125_crit_edge
  store i8 0, ptr @early_boot_irqs_disabled, align 1
  call void @trace_hardirqs_on() #25
  call fastcc void @arch_local_irq_enable()
  call void @kmem_cache_init_late() #31
  call void @console_init() #25
  %12 = load ptr, ptr @panic_later, align 4
  %tobool136.not = icmp eq ptr %12, null
  br i1 %tobool136.not, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #27
  %13 = load ptr, ptr @panic_param, align 4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.14, ptr noundef nonnull %12, ptr noundef %13) #32
  unreachable

if.end138:                                        ; preds = %if.end125
  call void @lockdep_init() #25
  call void @locking_selftest() #25
  call void @mem_encrypt_init() #30
  %14 = load i32, ptr @initrd_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool139 = icmp eq i32 %14, 0
  %15 = load i32, ptr @initrd_below_start_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool140 = icmp ne i32 %15, 0
  %or.cond = select i1 %tobool139, i1 true, i1 %tobool140
  br i1 %or.cond, label %if.end138.if.end162_crit_edge, label %land.lhs.true141

if.end138.if.end162_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end162

land.lhs.true141:                                 ; preds = %if.end138
  %sub = add i32 %14, 1073741824
  %shr = lshr i32 %sub, 12
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add143 = add i32 %16, %shr
  %17 = load i32, ptr @min_low_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add143, i32 %17)
  %cmp144 = icmp ult i32 %add143, %17
  br i1 %cmp144, label %do.end149, label %land.lhs.true141.if.end162_crit_edge

land.lhs.true141.if.end162_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end162

do.end149:                                        ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #27
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %add143, i32 noundef %17) #31
  store i32 0, ptr @initrd_start, align 4
  br label %if.end162

if.end162:                                        ; preds = %do.end149, %land.lhs.true141.if.end162_crit_edge, %if.end138.if.end162_crit_edge
  call void @setup_per_cpu_pageset() #25
  %18 = load ptr, ptr @late_time_init, align 4
  %tobool163.not = icmp eq ptr %18, null
  br i1 %tobool163.not, label %if.end162.if.end165_crit_edge, label %if.then164

if.end162.if.end165_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end165

if.then164:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #27
  call void %18() #25
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.end162.if.end165_crit_edge
  call void @sched_clock_init() #25
  call void @calibrate_delay() #25
  call void @pid_idr_init() #25
  call void @anon_vma_init() #25
  call void @thread_stack_cache_init() #30
  call void @cred_init() #31
  call void @fork_init() #25
  call void @proc_caches_init() #25
  call void @uts_ns_init() #25
  call void @key_init() #25
  %call166 = call i32 @security_init() #25
  call void @dbg_late_init() #31
  call void @vfs_caches_init() #31
  call void @pagecache_init() #31
  call void @signals_init() #25
  call void @seq_file_init() #25
  call void @proc_root_init() #25
  call void @nsfs_init() #25
  %call167 = call i32 @cpuset_init() #25
  %call168 = call i32 @cgroup_init() #25
  call void @taskstats_init_early() #25
  call void @delayacct_init() #25
  call void @poking_init() #30
  call void @check_bugs() #25
  call void @arch_post_acpi_subsys_init() #30
  call void @arch_call_rest_init() #30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #25, !srcloc !415
  call void @arm_heavy_mb() #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command_line) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_stack_end_magic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_objects_early_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_vmlinux_build_id() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_init_early() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arch_irqs_disabled() unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !416
  %and.i = and i32 %0, 128
  ret i32 %and.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arch_local_irq_disable() unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #25, !srcloc !417
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @boot_cpu_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_address_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_security_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_arch(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_boot_config() unnamed_addr #4 section ".init.text" align 64 {
entry:
  %msg = alloca ptr, align 4
  %pos = alloca i32, align 4
  %size = alloca i32, align 4
  %csum = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #25
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg, align 4, !annotation !411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #25
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pos, align 4, !annotation !411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #25
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csum) #25
  %3 = ptrtoint ptr %csum to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %csum, align 4, !annotation !411
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #25
  %call = call fastcc ptr @get_boot_config_from_initrd(ptr noundef nonnull %size, ptr noundef nonnull %csum) #30
  %call1 = call i32 @strlcpy(ptr noundef nonnull @setup_boot_config.tmp_cmdline, ptr noundef nonnull @boot_command_line, i32 noundef 1024) #25
  %call2 = call ptr @parse_args(ptr noundef nonnull @.str.45, ptr noundef nonnull @setup_boot_config.tmp_cmdline, ptr noundef null, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef nonnull @bootconfig_params) #25
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %.b64 = load i1, ptr @bootconfig_found, align 1
  br i1 %.b64, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %sub.ptr.lhs.cast = ptrtoint ptr %call2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @setup_boot_config.tmp_cmdline to i32)
  store i32 %sub.ptr.sub, ptr @initargs_offs, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #31
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %5)
  %cmp = icmp ugt i32 %5, 32766
  br i1 %cmp, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #27
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %5, i32 noundef 32767) #31
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not2.i = icmp eq i32 %5, 0
  br i1 %tobool.not2.i, label %if.end17.xbc_calc_checksum.exit_crit_edge, label %if.end17.while.body.i_crit_edge

if.end17.while.body.i_crit_edge:                  ; preds = %if.end17
  br label %while.body.i

if.end17.xbc_calc_checksum.exit_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  br label %xbc_calc_checksum.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end17.while.body.i_crit_edge
  %ret.05.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end17.while.body.i_crit_edge ]
  %p.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call, %if.end17.while.body.i_crit_edge ]
  %size.addr.03.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %5, %if.end17.while.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.03.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %p.04.i, i32 1
  %6 = ptrtoint ptr %p.04.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p.04.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.i = add i32 %ret.05.i, %conv.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.xbc_calc_checksum.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.body.i

while.body.i.xbc_calc_checksum.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %xbc_calc_checksum.exit

xbc_calc_checksum.exit:                           ; preds = %while.body.i.xbc_calc_checksum.exit_crit_edge, %if.end17.xbc_calc_checksum.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end17.xbc_calc_checksum.exit_crit_edge ], [ %add.i, %while.body.i.xbc_calc_checksum.exit_crit_edge ]
  %8 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %csum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.lcssa.i, i32 %9)
  %cmp19.not = icmp eq i32 %ret.0.lcssa.i, %9
  br i1 %cmp19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %xbc_calc_checksum.exit
  call void @__sanitizer_cov_trace_pc() #27
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #31
  br label %cleanup

if.end26:                                         ; preds = %xbc_calc_checksum.exit
  %call27 = call i32 @xbc_init(ptr noundef nonnull %call, i32 noundef %5, ptr noundef nonnull %msg, ptr noundef nonnull %pos) #31
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call27, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.else43

if.then29:                                        ; preds = %if.end26
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp30 = icmp slt i32 %12, 0
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msg, align 4
  br i1 %cmp30, label %do.end34, label %do.end39

do.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %14) #31
  br label %cleanup

do.end39:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #27
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %14, i32 noundef %12) #31
  br label %cleanup

if.else43:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #27
  %call44 = call i32 @xbc_get_info(ptr noundef nonnull %ret, ptr noundef null) #31
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret, align 4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %16, i32 noundef %18) #31
  %call50 = call fastcc ptr @xbc_make_cmdline(ptr noundef nonnull @.str.63) #30
  store ptr %call50, ptr @extra_command_line, align 4
  %call51 = call fastcc ptr @xbc_make_cmdline(ptr noundef nonnull @.str.34) #30
  store ptr %call51, ptr @extra_init_args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else43, %do.end39, %do.end34, %do.end23, %do.end14, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #25
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_command_line(ptr nocapture noundef readonly %command_line) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @extra_command_line, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call = tail call i32 @strlen(ptr noundef nonnull %0) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xlen.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %1 = load ptr, ptr @extra_init_args, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %call3 = tail call i32 @strlen(ptr noundef nonnull %1) #29
  %add = add i32 %call3, 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ilen.0 = phi i32 [ %add, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ]
  %call5 = tail call i32 @strlen(ptr noundef nonnull @boot_command_line) #29
  %add6 = add i32 %xlen.0, 1
  %add7 = add i32 %add6, %call5
  %add8 = add i32 %add7, %ilen.0
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %add8, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  store ptr %call.i, ptr @saved_command_line, align 4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #27
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.setup_command_line, i32 noundef %add8) #32
  unreachable

if.end13:                                         ; preds = %if.end4
  %call.i64 = tail call ptr @memblock_alloc_try_nid(i32 noundef %add7, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  store ptr %call.i64, ptr @static_command_line, align 4
  %tobool15.not = icmp eq ptr %call.i64, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #27
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.setup_command_line, i32 noundef %add7) #32
  unreachable

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xlen.0)
  %tobool18.not = icmp eq i32 %xlen.0, 0
  br i1 %tobool18.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  %2 = load ptr, ptr @saved_command_line, align 4
  %3 = load ptr, ptr @extra_command_line, align 4
  %call20 = tail call ptr @strcpy(ptr noundef %2, ptr noundef %3) #29
  %call21 = tail call ptr @strcpy(ptr noundef nonnull %call.i64, ptr noundef %3) #29
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge
  %4 = load ptr, ptr @saved_command_line, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %xlen.0
  %call23 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @boot_command_line) #29
  %add.ptr24 = getelementptr i8, ptr %call.i64, i32 %xlen.0
  %call25 = tail call ptr @strcpy(ptr noundef %add.ptr24, ptr noundef %command_line) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ilen.0)
  %tobool26.not = icmp eq i32 %ilen.0, 0
  br i1 %tobool26.not, label %if.end22.if.end45_crit_edge, label %if.then27

if.end22.if.end45_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end45

if.then27:                                        ; preds = %if.end22
  %5 = load i32, ptr @initargs_offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool28.not = icmp eq i32 %5, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #27
  %add30 = add i32 %5, %xlen.0
  %6 = load ptr, ptr @saved_command_line, align 4
  %add.ptr31 = getelementptr i8, ptr %6, i32 %add30
  %7 = load ptr, ptr @extra_init_args, align 4
  %call32 = tail call ptr @strcpy(ptr noundef %add.ptr31, ptr noundef %7) #29
  %sub = add i32 %ilen.0, -4
  %add33 = add i32 %sub, %add30
  %8 = load ptr, ptr @saved_command_line, align 4
  %add.ptr34 = getelementptr i8, ptr %8, i32 %add33
  %add.ptr35 = getelementptr i8, ptr @boot_command_line, i32 %5
  %add.ptr36 = getelementptr i8, ptr %add.ptr35, i32 -1
  %call37 = tail call ptr @strcpy(ptr noundef %add.ptr34, ptr noundef %add.ptr36) #29
  br label %if.end45

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #27
  %9 = load ptr, ptr @saved_command_line, align 4
  %call38 = tail call i32 @strlen(ptr noundef %9) #29
  %add.ptr39 = getelementptr i8, ptr %9, i32 %call38
  %10 = call ptr @memcpy(ptr %add.ptr39, ptr @.str.75, i32 5)
  %add41 = add i32 %call38, 4
  %add.ptr42 = getelementptr i8, ptr %9, i32 %add41
  %11 = load ptr, ptr @extra_init_args, align 4
  %call43 = tail call ptr @strcpy(ptr noundef %add.ptr42, ptr noundef %11) #29
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then29, %if.end22.if.end45_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_nr_cpu_ids() local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_per_cpu_areas() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_prepare_boot_cpu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @boot_cpu_hotplug_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @build_all_zonelists(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_alloc_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jump_label_init() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @unknown_bootoption(ptr noundef %param, ptr noundef %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef readnone %arg) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %param) #29
  tail call fastcc void @repair_env_string(ptr noundef %param, ptr noundef %val) #30
  %call1 = tail call fastcc zeroext i1 @obsolete_checksetup(ptr noundef %param) #30
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @strnchr(ptr noundef %param, i32 noundef %call, i32 noundef 46) #25
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load ptr, ptr @panic_later, align 4
  %tobool5.not = icmp eq ptr %0, null
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %tobool8.not = icmp eq ptr %val, null
  br i1 %tobool8.not, label %for.cond20.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %1 = load ptr, ptr @envp_init, align 4
  %tobool10.not49 = icmp eq ptr %1, null
  br i1 %tobool10.not49, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add i32 %call, 1
  br label %for.body

for.cond20.preheader:                             ; preds = %if.end7
  %2 = load ptr, ptr @argv_init, align 4
  %tobool22.not53 = icmp eq ptr %2, null
  br i1 %tobool22.not53, label %for.cond20.preheader.cleanup.sink.split_crit_edge, label %for.cond20.preheader.for.body23_crit_edge

for.cond20.preheader.for.body23_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body23

for.cond20.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

for.cond:                                         ; preds = %if.end12
  %inc = add i32 %i.050, 1
  %arrayidx = getelementptr [34 x ptr], ptr @envp_init, i32 0, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %4, null
  br i1 %tobool10.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %5 = phi ptr [ %1, %for.body.lr.ph ], [ %4, %for.cond.for.body_crit_edge ]
  %arrayidx51 = phi ptr [ @envp_init, %for.body.lr.ph ], [ %arrayidx, %for.cond.for.body_crit_edge ]
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.050)
  %cmp = icmp eq i32 %i.050, 32
  br i1 %cmp, label %if.then11, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  store ptr @.str.76, ptr @panic_later, align 4
  store ptr %param, ptr @panic_param, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.body.if.end12_crit_edge
  %call14 = tail call i32 @strncmp(ptr noundef %param, ptr noundef nonnull %5, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup.sink.split_crit_edge, label %for.cond

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

for.body23:                                       ; preds = %for.inc27.for.body23_crit_edge, %for.cond20.preheader.for.body23_crit_edge
  %i19.054 = phi i32 [ %inc28, %for.inc27.for.body23_crit_edge ], [ 0, %for.cond20.preheader.for.body23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i19.054)
  %cmp24 = icmp eq i32 %i19.054, 32
  br i1 %cmp24, label %if.then25, label %for.body23.for.inc27_crit_edge

for.body23.for.inc27_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc27

if.then25:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #27
  store ptr @.str.34, ptr @panic_later, align 4
  store ptr %param, ptr @panic_param, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %if.then25, %for.body23.for.inc27_crit_edge
  %inc28 = add i32 %i19.054, 1
  %arrayidx21 = getelementptr [34 x ptr], ptr @argv_init, i32 0, i32 %inc28
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %for.inc27.cleanup.sink.split_crit_edge, label %for.inc27.for.body23_crit_edge

for.inc27.for.body23_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body23

for.inc27.cleanup.sink.split_crit_edge:           ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc27.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge, %for.cond20.preheader.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge
  %arrayidx.lcssa.sink = phi ptr [ @envp_init, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ @argv_init, %for.cond20.preheader.cleanup.sink.split_crit_edge ], [ %arrayidx21, %for.inc27.cleanup.sink.split_crit_edge ], [ %arrayidx51, %if.end12.cleanup.sink.split_crit_edge ], [ %arrayidx, %for.cond.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %arrayidx.lcssa.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %param, ptr %arrayidx.lcssa.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_unknown_bootoptions() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @panic_later, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load ptr, ptr getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.body6.preheader_crit_edge

land.lhs.true.for.body6.preheader_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body6.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

for.cond4.preheader:                              ; preds = %for.body
  %.pr = load ptr, ptr getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), align 4
  %tobool5.not70 = icmp eq ptr %.pr, null
  br i1 %tobool5.not70, label %for.cond4.preheader.for.end12_crit_edge, label %for.cond4.preheader.for.body6.preheader_crit_edge

for.cond4.preheader.for.body6.preheader_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body6.preheader

for.cond4.preheader.for.end12_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end12

for.body6.preheader:                              ; preds = %for.cond4.preheader.for.body6.preheader_crit_edge, %land.lhs.true.for.body6.preheader_crit_edge
  %.ph = phi ptr [ %2, %land.lhs.true.for.body6.preheader_crit_edge ], [ %.pr, %for.cond4.preheader.for.body6.preheader_crit_edge ]
  %len.172.ph = phi i32 [ 1, %land.lhs.true.for.body6.preheader_crit_edge ], [ %add, %for.cond4.preheader.for.body6.preheader_crit_edge ]
  br label %for.body6

for.body:                                         ; preds = %for.body.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %3 = phi ptr [ %5, %for.body.for.body_crit_edge ], [ %1, %lor.lhs.false.for.body_crit_edge ]
  %len.069 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 1, %lor.lhs.false.for.body_crit_edge ]
  %p.068 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), %lor.lhs.false.for.body_crit_edge ]
  %inc = add i32 %len.069, 1
  %call = tail call i32 @strlen(ptr noundef nonnull %3) #29
  %add = add i32 %inc, %call
  %incdec.ptr = getelementptr ptr, ptr %p.068, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.cond4.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.preheader
  %6 = phi ptr [ %8, %for.body6.for.body6_crit_edge ], [ %.ph, %for.body6.preheader ]
  %len.172 = phi i32 [ %add9, %for.body6.for.body6_crit_edge ], [ %len.172.ph, %for.body6.preheader ]
  %p.171 = phi ptr [ %incdec.ptr11, %for.body6.for.body6_crit_edge ], [ getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), %for.body6.preheader ]
  %inc7 = add i32 %len.172, 1
  %call8 = tail call i32 @strlen(ptr noundef nonnull %6) #29
  %add9 = add i32 %inc7, %call8
  %incdec.ptr11 = getelementptr ptr, ptr %p.171, i32 1
  %7 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr11, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %for.body6.for.end12_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body6

for.body6.for.end12_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end12

for.end12:                                        ; preds = %for.body6.for.end12_crit_edge, %for.cond4.preheader.for.end12_crit_edge
  %len.1.lcssa = phi i32 [ %add, %for.cond4.preheader.for.end12_crit_edge ], [ %add9, %for.body6.for.end12_crit_edge ]
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %len.1.lcssa, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.end12
  %9 = load ptr, ptr getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), align 4
  %tobool19.not74 = icmp eq ptr %9, null
  br i1 %tobool19.not74, label %for.cond18.preheader.for.cond25.preheader_crit_edge, label %for.cond18.preheader.for.body20_crit_edge

for.cond18.preheader.for.body20_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body20

for.cond18.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.cond25.preheader

do.end:                                           ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #27
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %len.1.lcssa) #31
  br label %cleanup

for.cond25.preheader:                             ; preds = %for.body20.for.cond25.preheader_crit_edge, %for.cond18.preheader.for.cond25.preheader_crit_edge
  %end.0.lcssa = phi ptr [ %call.i, %for.cond18.preheader.for.cond25.preheader_crit_edge ], [ %add.ptr, %for.body20.for.cond25.preheader_crit_edge ]
  %10 = load ptr, ptr getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), align 4
  %tobool26.not78 = icmp eq ptr %10, null
  br i1 %tobool26.not78, label %for.cond25.preheader.do.end35_crit_edge, label %for.cond25.preheader.for.body27_crit_edge

for.cond25.preheader.for.body27_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body27

for.cond25.preheader.do.end35_crit_edge:          ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end35

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond18.preheader.for.body20_crit_edge
  %11 = phi ptr [ %13, %for.body20.for.body20_crit_edge ], [ %9, %for.cond18.preheader.for.body20_crit_edge ]
  %end.076 = phi ptr [ %add.ptr, %for.body20.for.body20_crit_edge ], [ %call.i, %for.cond18.preheader.for.body20_crit_edge ]
  %p.275 = phi ptr [ %incdec.ptr23, %for.body20.for.body20_crit_edge ], [ getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), %for.cond18.preheader.for.body20_crit_edge ]
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %end.076, ptr noundef nonnull @.str.81, ptr noundef nonnull %11)
  %add.ptr = getelementptr i8, ptr %end.076, i32 %call21
  %incdec.ptr23 = getelementptr ptr, ptr %p.275, i32 1
  %12 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %incdec.ptr23, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %for.body20.for.cond25.preheader_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body20

for.body20.for.cond25.preheader_crit_edge:        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.cond25.preheader

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.cond25.preheader.for.body27_crit_edge
  %14 = phi ptr [ %16, %for.body27.for.body27_crit_edge ], [ %10, %for.cond25.preheader.for.body27_crit_edge ]
  %end.180 = phi ptr [ %add.ptr29, %for.body27.for.body27_crit_edge ], [ %end.0.lcssa, %for.cond25.preheader.for.body27_crit_edge ]
  %p.379 = phi ptr [ %incdec.ptr31, %for.body27.for.body27_crit_edge ], [ getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), %for.cond25.preheader.for.body27_crit_edge ]
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %end.180, ptr noundef nonnull @.str.81, ptr noundef nonnull %14)
  %add.ptr29 = getelementptr i8, ptr %end.180, i32 %call28
  %incdec.ptr31 = getelementptr ptr, ptr %p.379, i32 1
  %15 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr31, align 4
  %tobool26.not = icmp eq ptr %16, null
  br i1 %tobool26.not, label %for.body27.do.end35_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body27

for.body27.do.end35_crit_edge:                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end35

do.end35:                                         ; preds = %for.body27.do.end35_crit_edge, %for.cond25.preheader.do.end35_crit_edge
  %arrayidx = getelementptr i8, ptr %call.i, i32 1
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %arrayidx) #31
  tail call void @memblock_free(ptr noundef nonnull %call.i, i32 noundef %len.1.lcssa) #25
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @IS_ERR_OR_NULL(ptr noundef readnone %ptr) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %tobool.not = icmp eq ptr %ptr, null
  %cmp = icmp ugt ptr %ptr, inttoptr (i32 -4096 to ptr)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @set_init_arg(ptr noundef %param, ptr noundef %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef readnone %arg) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @panic_later, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @repair_env_string(ptr noundef %param, ptr noundef %val) #30
  %1 = load ptr, ptr @argv_init, align 4
  %tobool1.not11 = icmp eq ptr %1, null
  br i1 %tobool1.not11, label %if.end.cleanup.sink.split_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %arrayidx = getelementptr [34 x ptr], ptr @argv_init, i32 0, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.012)
  %cmp = icmp eq i32 %i.012, 32
  br i1 %cmp, label %if.then2, label %for.cond

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  store ptr @.str.34, ptr @panic_later, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %for.cond.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %arrayidx.lcssa.sink = phi ptr [ @panic_param, %if.then2 ], [ @argv_init, %if.end.cleanup.sink.split_crit_edge ], [ %arrayidx, %for.cond.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %arrayidx.lcssa.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %param, ptr %arrayidx.lcssa.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_log_buf(i32 noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vfs_caches_init_early() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_main_extable() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mm_init() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @page_ext_init_flatmem() #25
  tail call void @init_mem_debugging_and_hardening() #25
  tail call void @kfence_alloc_pool() #31
  tail call fastcc void @report_meminit() #30
  %call.i = tail call i32 @stack_depot_init() #25
  tail call void @mem_init() #25
  tail call void @mem_init_print_info() #25
  tail call void @kmem_cache_init() #31
  tail call void @page_ext_init_flatmem_late() #25
  tail call void @kmemleak_init() #31
  tail call void @ptlock_cache_init() #31
  tail call void @pgtable_cache_init() #31
  tail call void @debug_objects_mem_init() #25
  tail call void @vmalloc_init() #31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_trace_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arch_local_save_flags() unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !416
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @arch_irqs_disabled_flags(i32 noundef %flags) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %and = and i32 %flags, 128
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @housekeeping_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @workqueue_init_early() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_init() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initcall_debug_enable() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_initcall_start, ptr noundef nonnull @trace_initcall_start_cb, ptr noundef nonnull @initcall_calltime) #25
  %call.i23 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_initcall_finish, ptr noundef nonnull @trace_initcall_finish_cb, ptr noundef nonnull @initcall_calltime) #25
  %or = or i32 %call.i23, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !409

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1271, i32 noundef 9, ptr noundef nonnull @.str.97) #25
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_irq_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_IRQ() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tick_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init_nohz() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timers() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @hrtimers_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @softirq_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kfence_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @rand_initialize() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @time_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @profile_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @call_function_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arch_local_irq_enable() unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #25, !srcloc !418
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kmem_cache_init_late() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_init() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locking_selftest() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_per_cpu_pageset() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @calibrate_delay() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pid_idr_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cred_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fork_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_caches_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uts_ns_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dbg_late_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vfs_caches_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @pagecache_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @signals_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_file_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_root_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuset_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @taskstats_init_early() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayacct_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_bugs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @initcall_blacklist(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %call40 = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.93) #25
  %tobool.not41 = icmp eq ptr %call40, null
  br i1 %tobool.not41, label %entry.do.end26.critedge_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.do.end26.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end26.critedge

do.body2:                                         ; preds = %list_add.exit.do.body2_crit_edge, %entry.do.body2_crit_edge
  %call42 = phi ptr [ %call, %list_add.exit.do.body2_crit_edge ], [ %call40, %entry.do.body2_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @initcall_blacklist.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@initcall_blacklist, %do.end)) #25
          to label %if.then8 [label %do.end], !srcloc !419

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @initcall_blacklist.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.96, ptr noundef nonnull %call42) #25
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body2
  %call.i = call ptr @memblock_alloc_try_nid(i32 noundef 12, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #27
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.95, i32 noundef 12) #32
  unreachable

if.end12:                                         ; preds = %do.end
  %call13 = call i32 @strlen(ptr noundef nonnull %call42) #29
  %add = add i32 %call13, 1
  %call.i36 = call ptr @memblock_alloc_try_nid(i32 noundef %add, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %buf = getelementptr inbounds %struct.blacklist_entry, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i36, ptr %buf, align 4
  %tobool16.not = icmp eq ptr %call.i36, null
  br i1 %tobool16.not, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #27
  %call18 = call i32 @strlen(ptr noundef nonnull %call42) #29
  %add19 = add i32 %call18, 1
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.95, i32 noundef %add19) #32
  unreachable

if.end20:                                         ; preds = %if.end12
  %call22 = call ptr @strcpy(ptr noundef nonnull %call.i36, ptr noundef nonnull %call42) #29
  %2 = load ptr, ptr @blacklisted_initcalls, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull @blacklisted_initcalls, ptr noundef %2) #25
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_add.exit_crit_edge

if.end20.list_add.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #27
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #27
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @blacklisted_initcalls, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr @blacklisted_initcalls, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end20.list_add.exit_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.93) #25
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %list_add.exit.do.end26.critedge_crit_edge, label %list_add.exit.do.body2_crit_edge

list_add.exit.do.body2_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2

list_add.exit.do.end26.critedge_crit_edge:        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end26.critedge

do.end26.critedge:                                ; preds = %list_add.exit.do.end26.critedge_crit_edge, %entry.do.end26.critedge_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_one_initcall(ptr noundef %fn) local_unnamed_addr #0 align 64 {
entry:
  %fn_name.i = alloca [266 x i8], align 1
  %msgbuf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msgbuf) #25
  %4 = getelementptr inbounds i8, ptr %msgbuf, i32 1
  %5 = call ptr @memset(ptr %4, i32 255, i32 63)
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %fn_name.i) #25
  %6 = call ptr @memset(ptr %fn_name.i, i32 255, i32 266)
  %7 = load volatile ptr, ptr @blacklisted_initcalls, align 4
  %cmp.i.not.i = icmp eq ptr %7, @blacklisted_initcalls
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %fn to i32
  %call2.i = call i32 @sprint_symbol_no_offset(ptr noundef nonnull %fn_name.i, i32 noundef %8) #25
  %call4.i = call ptr @strreplace(ptr noundef nonnull %fn_name.i, i8 noundef zeroext 32, i8 noundef zeroext 0) #25
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %entry1.0.in.i = phi ptr [ @blacklisted_initcalls, %if.end.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, @blacklisted_initcalls
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %buf.i = getelementptr inbounds %struct.blacklist_entry, ptr %entry1.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf.i, align 4
  %call6.i = call i32 @strcmp(ptr noundef nonnull %fn_name.i, ptr noundef %11) #28
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @initcall_blacklisted.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_one_initcall, %initcall_blacklisted.exit)) #25
          to label %if.then16.i [label %initcall_blacklisted.exit], !srcloc !419

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @initcall_blacklisted.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.103, ptr noundef nonnull %fn_name.i) #25
  br label %initcall_blacklisted.exit

initcall_blacklisted.exit:                        ; preds = %if.then16.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %fn_name.i) #25
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %fn_name.i) #25
  call fastcc void @trace_initcall_start(ptr noundef %fn)
  %call2 = call i32 %fn() #25
  call fastcc void @trace_initcall_finish(ptr noundef %fn, i32 noundef %call2)
  %12 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %msgbuf, align 1
  %13 = call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i61 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i61 to ptr
  %preempt_count.i62 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp.not = icmp eq i32 %16, %3
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %17 = call ptr @memcpy(ptr %msgbuf, ptr @.str.18, i32 22)
  %18 = call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %3, ptr %preempt_count.i.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %21 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !416
  %and.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end6.if.end23_crit_edge, label %if.then17

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end23

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  %call19 = call i32 @strlcat(ptr noundef nonnull %msgbuf, ptr noundef nonnull @.str.19, i32 noundef 64) #25
  call void @trace_hardirqs_on() #25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #25, !srcloc !418
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end6.if.end23_crit_edge
  %22 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msgbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %do.end37, !prof !409

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1313, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %fn, ptr noundef nonnull %msgbuf) #25
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end23.cleanup_crit_edge, %initcall_blacklisted.exit
  %retval.0 = phi i32 [ -1, %initcall_blacklisted.exit ], [ %call2, %do.end37 ], [ %call2, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msgbuf) #25
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_initcall_start(ptr noundef %func) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_start, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_initcall_start, %do.body)) #25
          to label %if.end48 [label %do.body], !srcloc !419

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !409

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.106, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !420
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_start, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %func) #25
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !421
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !421
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !409

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.106, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !422
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_initcall_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @trace_initcall_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 46, ptr noundef nonnull @.str.105) #25
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !423
  %38 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_initcall_finish(ptr noundef %func, i32 noundef %ret) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_finish, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_initcall_finish, %do.body)) #25
          to label %if.end48 [label %do.body], !srcloc !419

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !409

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.106, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !424
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_finish, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %func, i32 noundef %ret) #25
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !425
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !425
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !409

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.106, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !422
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_initcall_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @trace_initcall_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 69, ptr noundef nonnull @.str.105) #25
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !423
  %38 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @set_debug_rodata(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @kstrtobool(ptr noundef %str, ptr noundef nonnull @rodata_enabled) #25
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @free_initmem() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @free_reserved_area(ptr noundef nonnull @__init_begin, ptr noundef nonnull @__init_end, i32 noundef 204, ptr noundef nonnull @.str.107) #25
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @console_on_rootfs() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @filp_open(ptr noundef nonnull @.str.21, i32 noundef 2, i16 noundef zeroext 0) #25
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #31
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call3 = tail call i32 @init_dup(ptr noundef %call) #31
  %call4 = tail call i32 @init_dup(ptr noundef %call) #31
  %call5 = tail call i32 @init_dup(ptr noundef %call) #31
  tail call void @fput(ptr noundef %call) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_dup(ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_initcall_level(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_level = getelementptr inbounds %struct.trace_event_raw_initcall_level, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_level, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, ptr noundef %add.ptr) #25
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #25
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
define internal i32 @trace_raw_output_initcall_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %func = getelementptr inbounds %struct.trace_event_raw_initcall_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.30, ptr noundef %3) #25
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_initcall_finish(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %func = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %ret1 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.33, ptr noundef %3, i32 noundef %5) #25
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #17

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @parameq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_boot_config_from_initrd(ptr noundef writeonly %_size, ptr noundef writeonly %_csum) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %0 = load i32, ptr @initrd_end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = inttoptr i32 %0 to ptr
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  br label %for.body

for.body:                                         ; preds = %if.end3.for.body_crit_edge, %if.end
  %i.037 = phi i32 [ 0, %if.end ], [ %inc, %if.end3.for.body_crit_edge ]
  %data.036 = phi ptr [ %add.ptr, %if.end ], [ %incdec.ptr, %if.end3.for.body_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %data.036, ptr noundef nonnull dereferenceable(12) @.str.64, i32 12) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool1.not = icmp eq i32 %bcmp, 0
  br i1 %tobool1.not, label %found, label %if.end3

if.end3:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %data.036, i32 -1
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

found:                                            ; preds = %for.body
  %add.ptr4 = getelementptr i8, ptr %data.036, i32 -8
  %2 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr4, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx5 = getelementptr i8, ptr %data.036, i32 -4
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %idx.neg = sub i32 0, %4
  %add.ptr6 = getelementptr i8, ptr %add.ptr4, i32 %idx.neg
  %8 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %9 = load i32, ptr @initrd_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp7 = icmp ugt i32 %9, %8
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %found
  call void @__sanitizer_cov_trace_pc() #27
  %sub = sub i32 %0, %9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %4, i32 noundef %sub) #31
  br label %cleanup

if.end10:                                         ; preds = %found
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 %8, ptr @initrd_end, align 4
  %tobool11.not = icmp eq ptr %_size, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #27
  %10 = ptrtoint ptr %_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %4, ptr %_size, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %_csum, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #27
  %11 = ptrtoint ptr %_csum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %_csum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %do.end, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %add.ptr6, %if.then15 ], [ %add.ptr6, %if.end13.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bootconfig_params(ptr nocapture noundef readonly %param, ptr nocapture noundef readnone %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef readnone %arg) #19 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %param, ptr noundef nonnull dereferenceable(11) @.str.45) #29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @bootconfig_found, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xbc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xbc_get_info(ptr noundef, ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xbc_make_cmdline(ptr noundef %key) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i34 = tail call ptr @xbc_node_find_subkey(ptr noundef null, ptr noundef %key) #31
  %tobool.not = icmp eq ptr %call.i34, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @xbc_snprint_cmdline(ptr noundef null, i32 noundef 0, ptr noundef nonnull %call.i34) #30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add = add nuw i32 %call1, 1
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %add, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #31
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call10 = tail call fastcc i32 @xbc_snprint_cmdline(ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef nonnull %call.i34) #30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %call1)
  %cmp12 = icmp sgt i32 %call10, %call1
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12
  br i1 %or.cond, label %do.end16, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #27
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #31
  tail call void @memblock_free(ptr noundef nonnull %call.i, i32 noundef %add) #25
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end16 ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_snprint_cmdline(ptr noundef %buf, i32 noundef %size, ptr noundef %root) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %knode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %knode) #25
  %add.ptr = getelementptr i8, ptr %buf, i32 %size
  %0 = ptrtoint ptr %knode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %knode, align 4
  %call = call ptr @xbc_node_find_next_key_value(ptr noundef %root, ptr noundef nonnull %knode) #31
  %1 = ptrtoint ptr %knode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %knode, align 4
  %cmp.not83 = icmp eq ptr %2, null
  br i1 %cmp.not83, label %entry.for.end38_crit_edge, label %for.body.lr.ph

entry.for.end38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end38

for.body.lr.ph:                                   ; preds = %entry
  %sub.ptr.lhs.cast18 = ptrtoint ptr %add.ptr to i32
  br label %for.body

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %for.body.lr.ph
  %3 = phi ptr [ %2, %for.body.lr.ph ], [ %7, %for.inc36.for.body_crit_edge ]
  %buf.addr.084 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.2, %for.inc36.for.body_crit_edge ]
  %call1 = call i32 @xbc_node_compose_key_after(ptr noundef %root, ptr noundef nonnull %3, ptr noundef nonnull @xbc_namebuf, i32 noundef 256) #31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %knode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %knode, align 4
  %call3 = call ptr @xbc_node_get_child(ptr noundef %5) #31
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end.for.body15_crit_edge

if.end.for.body15_crit_edge:                      ; preds = %if.end
  br label %for.body15

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp ugt ptr %add.ptr, %buf.addr.084
  %sub.ptr.rhs.cast = ptrtoint ptr %buf.addr.084 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast
  %cond = select i1 %cmp5, i32 %sub.ptr.sub, i32 0
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.addr.084, i32 noundef %cond, ptr noundef nonnull @.str.72, ptr noundef nonnull @xbc_namebuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then4.cleanup_crit_edge, label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr10 = getelementptr i8, ptr %buf.addr.084, i32 %call6
  br label %for.inc36

for.body15:                                       ; preds = %if.end27.for.body15_crit_edge, %if.end.for.body15_crit_edge
  %call29.sink = phi ptr [ %call29, %if.end27.for.body15_crit_edge ], [ %call3, %if.end.for.body15_crit_edge ]
  %buf.addr.180 = phi ptr [ %add.ptr28, %if.end27.for.body15_crit_edge ], [ %buf.addr.084, %if.end.for.body15_crit_edge ]
  %call32 = call ptr @xbc_node_get_data(ptr noundef nonnull %call29.sink) #31
  %cmp16 = icmp ugt ptr %add.ptr, %buf.addr.180
  %sub.ptr.rhs.cast19 = ptrtoint ptr %buf.addr.180 to i32
  %sub.ptr.sub20 = sub i32 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %cond23 = select i1 %cmp16, i32 %sub.ptr.sub20, i32 0
  %call24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.addr.180, i32 noundef %cond23, ptr noundef nonnull @.str.73, ptr noundef nonnull @xbc_namebuf, ptr noundef %call32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.body15.cleanup_crit_edge, label %if.end27

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end27:                                         ; preds = %for.body15
  %add.ptr28 = getelementptr i8, ptr %buf.addr.180, i32 %call24
  %call29 = call ptr @xbc_node_get_child(ptr noundef nonnull %call29.sink) #31
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end27.for.inc36_crit_edge, label %if.end27.for.body15_crit_edge

if.end27.for.body15_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body15

if.end27.for.inc36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc36

for.inc36:                                        ; preds = %if.end27.for.inc36_crit_edge, %if.end9
  %buf.addr.2 = phi ptr [ %add.ptr10, %if.end9 ], [ %add.ptr28, %if.end27.for.inc36_crit_edge ]
  %call37 = call ptr @xbc_node_find_next_key_value(ptr noundef %root, ptr noundef nonnull %knode) #31
  %6 = ptrtoint ptr %knode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %knode, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %for.inc36.for.end38_crit_edge, label %for.inc36.for.body_crit_edge

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.inc36.for.end38_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end38

for.end38:                                        ; preds = %for.inc36.for.end38_crit_edge, %entry.for.end38_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.for.end38_crit_edge ], [ %buf.addr.2, %for.inc36.for.end38_crit_edge ]
  %sub.ptr.lhs.cast40 = ptrtoint ptr %buf.addr.0.lcssa to i32
  %sub.ptr.rhs.cast41 = ptrtoint ptr %buf to i32
  %sub.ptr.sub42 = sub i32 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %for.body15.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub42, %for.end38 ], [ %call24, %for.body15.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ %call1, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %knode) #25
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_find_subkey(ptr noundef, ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_find_next_key_value(ptr noundef, ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @xbc_node_compose_key_after(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_get_child(ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_get_data(ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @repair_env_string(ptr noundef readonly %param, ptr noundef %val) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end15

if.then:                                          ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef %param) #29
  %add.ptr = getelementptr i8, ptr %param, i32 %call
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 1
  %cmp = icmp eq ptr %add.ptr1, %val
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  %arrayidx = getelementptr i8, ptr %val, i32 -1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 61, ptr %arrayidx, align 1
  br label %if.end15

if.else:                                          ; preds = %if.then
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 2
  %cmp6 = icmp eq ptr %add.ptr5, %val
  br i1 %cmp6, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  %arrayidx8 = getelementptr i8, ptr %val, i32 -2
  %1 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 61, ptr %arrayidx8, align 1
  %add.ptr9 = getelementptr i8, ptr %val, i32 -1
  %call10 = tail call i32 @strlen(ptr noundef nonnull %val) #29
  %add = add i32 %call10, 1
  %2 = call ptr @memmove(ptr %add.ptr9, ptr %val, i32 %add)
  br label %if.end15

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22init/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #25, !srcloc !426
  unreachable

if.end15:                                         ; preds = %if.then7, %if.then2, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @obsolete_checksetup(ptr noundef %line) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond24.do.body_crit_edge, %entry
  %p.0 = phi ptr [ @__setup_start, %entry ], [ %incdec.ptr, %do.cond24.do.body_crit_edge ]
  %had_early_param.0.off0 = phi i1 [ false, %entry ], [ %had_early_param.1.off0, %do.cond24.do.body_crit_edge ]
  %0 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p.0, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #29
  %call2 = tail call zeroext i1 @parameqn(ptr noundef %line, ptr noundef %1, i32 noundef %call) #25
  br i1 %call2, label %if.then, label %do.body.do.cond24_crit_edge

do.body.do.cond24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.cond24

if.then:                                          ; preds = %do.body
  %early = getelementptr inbounds %struct.obs_kernel_param, ptr %p.0, i32 0, i32 2
  %2 = ptrtoint ptr %early to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %early, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %arrayidx = getelementptr i8, ptr %line, i32 %call
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %5, label %if.then3.do.cond24_crit_edge [
    i8 0, label %if.then3.if.then9_crit_edge
    i8 61, label %if.then3.if.then9_crit_edge59
  ]

if.then3.if.then9_crit_edge59:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then9

if.then3.if.then9_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then9

if.then3.do.cond24_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.cond24

if.then9:                                         ; preds = %if.then3.if.then9_crit_edge, %if.then3.if.then9_crit_edge59
  br label %do.cond24

if.else:                                          ; preds = %if.then
  %setup_func = getelementptr inbounds %struct.obs_kernel_param, ptr %p.0, i32 0, i32 1
  %7 = ptrtoint ptr %setup_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup_func, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %do.end, label %if.else15

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  %9 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.0, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %10) #31
  br label %cleanup29

if.else15:                                        ; preds = %if.else
  %add.ptr = getelementptr i8, ptr %line, i32 %call
  %call17 = tail call i32 %8(ptr noundef %add.ptr) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else15.do.cond24_crit_edge, label %if.else15.cleanup29_crit_edge

if.else15.cleanup29_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup29

if.else15.do.cond24_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.cond24

do.cond24:                                        ; preds = %if.else15.do.cond24_crit_edge, %if.then9, %if.then3.do.cond24_crit_edge, %do.body.do.cond24_crit_edge
  %had_early_param.1.off0 = phi i1 [ true, %if.then9 ], [ %had_early_param.0.off0, %if.else15.do.cond24_crit_edge ], [ %had_early_param.0.off0, %do.body.do.cond24_crit_edge ], [ %had_early_param.0.off0, %if.then3.do.cond24_crit_edge ]
  %incdec.ptr = getelementptr %struct.obs_kernel_param, ptr %p.0, i32 1
  %cmp25 = icmp ult ptr %incdec.ptr, @__setup_end
  br i1 %cmp25, label %do.cond24.do.body_crit_edge, label %do.cond24.cleanup29_crit_edge

do.cond24.cleanup29_crit_edge:                    ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup29

do.cond24.do.body_crit_edge:                      ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body

cleanup29:                                        ; preds = %do.cond24.cleanup29_crit_edge, %if.else15.cleanup29_crit_edge, %do.end
  %retval.2 = phi i1 [ true, %do.end ], [ true, %if.else15.cleanup29_crit_edge ], [ %had_early_param.1.off0, %do.cond24.cleanup29_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @parameqn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_ext_init_flatmem() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mem_debugging_and_hardening() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kfence_alloc_pool() local_unnamed_addr #11 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_meminit() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_alloc, i32 1), ptr blockaddress(@report_meminit, %want_init_on_alloc.exit.thread)) #25
          to label %want_init_on_alloc.exit [label %want_init_on_alloc.exit.thread], !srcloc !419

want_init_on_alloc.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %want_init_on_alloc.exit

want_init_on_alloc.exit:                          ; preds = %want_init_on_alloc.exit.thread, %entry
  %0 = phi ptr [ @.str.89, %want_init_on_alloc.exit.thread ], [ @.str.88, %entry ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@report_meminit, %want_init_on_free.exit.thread)) #25
          to label %want_init_on_free.exit [label %want_init_on_free.exit.thread], !srcloc !419

want_init_on_free.exit.thread:                    ; preds = %want_init_on_alloc.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %want_init_on_free.exit

want_init_on_free.exit:                           ; preds = %want_init_on_free.exit.thread, %want_init_on_alloc.exit
  %1 = phi ptr [ @.str.89, %want_init_on_free.exit.thread ], [ @.str.88, %want_init_on_alloc.exit ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull %0, ptr noundef nonnull %1) #31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@report_meminit, %if.end)) #25
          to label %do.end7 [label %if.end], !srcloc !419

do.end7:                                          ; preds = %want_init_on_free.exit
  call void @__sanitizer_cov_trace_pc() #27
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #31
  br label %if.end

if.end:                                           ; preds = %do.end7, %want_init_on_free.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_init_print_info() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kmem_cache_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_ext_init_flatmem_late() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kmemleak_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_objects_mem_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vmalloc_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_depot_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ptlock_cache_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_initcall_start_cb(ptr nocapture noundef writeonly %data, ptr noundef %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %fn, i32 noundef %5) #31
  %call3 = tail call i64 @ktime_get() #25
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call3, ptr %data, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_initcall_finish_cb(ptr nocapture noundef readonly %data, ptr noundef %fn, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #25
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %sub = sub i64 %call, %1
  %shr = lshr i64 %sub, 10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %fn, i32 noundef %ret, i64 noundef %shr) #31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol_no_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_reserved_area(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kernel_init_freeable() unnamed_addr #21 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @gfp_allowed_mask to i32))
  store i32 67108863, ptr @gfp_allowed_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4) to i32))
  %.unpack = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #25
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !427
  %and.i83.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83.i)
  %tobool.not.i = icmp eq i32 %and.i83.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.body12.i_crit_edge

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body12.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_off() #25
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %entry.do.body12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %do.body12.i.__seqprop_spinlock_assert.exit.i_crit_edge, label %land.rhs.i.i

do.body12.i.__seqprop_spinlock_assert.exit.i_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %__seqprop_spinlock_assert.exit.i

land.rhs.i.i:                                     ; preds = %do.body12.i
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %lock.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 161, i32 1
  %8 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.6, ptr %9, i32 0, i32 1
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.__seqprop_spinlock_assert.exit.i_crit_edge, !prof !410

land.rhs.i.i.__seqprop_spinlock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %__seqprop_spinlock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.116, i32 noundef 277, i32 noundef 9, ptr noundef null) #25
  br label %__seqprop_spinlock_assert.exit.i

__seqprop_spinlock_assert.exit.i:                 ; preds = %do.end.i.i, %land.rhs.i.i.__seqprop_spinlock_assert.exit.i_crit_edge, %do.body12.i.__seqprop_spinlock_assert.exit.i_crit_edge
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %mems_allowed_seq26.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 161
  %12 = ptrtoint ptr %mems_allowed_seq26.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mems_allowed_seq26.i, align 4
  %inc.i.i.i.i = add i32 %13, 1
  store i32 %inc.i.i.i.i, ptr %mems_allowed_seq26.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !428
  %dep_map.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 161, i32 0, i32 1
  %14 = tail call ptr @llvm.returnaddress(i32 0) #25
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %15) #25
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %mems_allowed.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 160
  %18 = ptrtoint ptr %mems_allowed.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.unpack, ptr %mems_allowed.i, align 64
  %19 = load ptr, ptr %task.i, align 8
  %mems_allowed_seq35.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 161
  %dep_map.i84.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 161, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i84.i, i32 noundef %15) #25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !429
  %20 = ptrtoint ptr %mems_allowed_seq35.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mems_allowed_seq35.i, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %mems_allowed_seq35.i, align 4
  br i1 %tobool.not.i, label %if.then57.i, label %__seqprop_spinlock_assert.exit.i.do.body59.i_crit_edge

__seqprop_spinlock_assert.exit.i.do.body59.i_crit_edge: ; preds = %__seqprop_spinlock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body59.i

if.then57.i:                                      ; preds = %__seqprop_spinlock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_on() #25
  br label %do.body59.i

do.body59.i:                                      ; preds = %if.then57.i, %__seqprop_spinlock_assert.exit.i.do.body59.i_crit_edge
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !416
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool67.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool67.not.i, label %if.then71.i, label %do.body59.i.set_mems_allowed.exit_crit_edge, !prof !410

do.body59.i.set_mems_allowed.exit_crit_edge:      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %set_mems_allowed.exit

if.then71.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %set_mems_allowed.exit

set_mems_allowed.exit:                            ; preds = %if.then71.i, %do.body59.i.set_mems_allowed.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #25, !srcloc !430
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %alloc_lock.i86.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i86.i) #25
  %25 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 78
  %29 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %thread_pid.i, align 16
  %tobool.not.i5 = icmp eq ptr %30, null
  br i1 %tobool.not.i5, label %set_mems_allowed.exit.get_pid.exit_crit_edge, label %if.then.i6

set_mems_allowed.exit.get_pid.exit_crit_edge:     ; preds = %set_mems_allowed.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %get_pid.exit

if.then.i6:                                       ; preds = %set_mems_allowed.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %30, i32 noundef 4) #25
  tail call void @llvm.prefetch.p0(ptr nonnull %30, i32 1, i32 3, i32 1) #25
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %30, ptr nonnull %30, i32 1, ptr nonnull elementtype(i32) %30) #25, !srcloc !431
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !410

if.then.i6.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !409

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %30, i32 noundef %.sink.i.i.i.i) #25
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %set_mems_allowed.exit.get_pid.exit_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cad_pid to i32))
  store ptr %30, ptr @cad_pid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @setup_max_cpus to i32))
  %33 = load i32, ptr @setup_max_cpus, align 4
  tail call void @smp_prepare_cpus(i32 noundef %33) #25
  tail call void @workqueue_init() #31
  tail call void @init_mm_internals() #25
  tail call void @rcu_init_tasks_generic() #25
  tail call fastcc void @do_pre_smp_initcalls() #30
  tail call void @lockup_detector_init() #25
  tail call void @smp_init() #31
  tail call void @sched_init_smp() #25
  tail call void @padata_init() #31
  tail call void @page_alloc_init_late() #25
  tail call fastcc void @do_basic_setup() #30
  %call3 = tail call i32 @kunit_run_all_tests() #25
  tail call void @wait_for_initramfs() #25
  tail call void @console_on_rootfs() #30
  %34 = load ptr, ptr @ramdisk_execute_command, align 4
  %call4 = tail call i32 @init_eaccess(ptr noundef %34) #31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %get_pid.exit.if.end_crit_edge, label %if.then

get_pid.exit.if.end_crit_edge:                    ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #27
  store ptr null, ptr @ramdisk_execute_command, align 4
  tail call void @prepare_namespace() #25
  br label %if.end

if.end:                                           ; preds = %if.then, %get_pid.exit.if.end_crit_edge
  tail call void @integrity_load_keys() #31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobe_free_init_mem() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_free_init_mem() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_free_init_mem() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_end_inkernel_boot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_sysctl_args() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_init_process(ptr noundef %init_filename) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %init_filename, ptr @argv_init, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %init_filename) #31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_init_process.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@run_init_process, %do.end8)) #25
          to label %if.then [label %do.end8], !srcloc !419

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_init_process.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.130) #25
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %0 = load ptr, ptr @argv_init, align 4
  %tobool9.not91 = icmp eq ptr %0, null
  br i1 %tobool9.not91, label %do.end8.do.body28_crit_edge, label %do.end8.do.body10_crit_edge

do.end8.do.body10_crit_edge:                      ; preds = %do.end8
  br label %do.body10

do.end8.do.body28_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body28

do.body10:                                        ; preds = %for.inc.do.body10_crit_edge, %do.end8.do.body10_crit_edge
  %p.092 = phi ptr [ %incdec.ptr, %for.inc.do.body10_crit_edge ], [ @argv_init, %do.end8.do.body10_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_init_process.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@run_init_process, %for.inc)) #25
          to label %if.then24 [label %for.inc], !srcloc !419

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #27
  %1 = ptrtoint ptr %p.092 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p.092, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_init_process.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.131, ptr noundef %2) #25
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %do.body10
  %incdec.ptr = getelementptr ptr, ptr %p.092, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %for.inc.do.body28_crit_edge, label %for.inc.do.body10_crit_edge

for.inc.do.body10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body10

for.inc.do.body28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body28

do.body28:                                        ; preds = %for.inc.do.body28_crit_edge, %do.end8.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_init_process.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@run_init_process, %do.end45)) #25
          to label %if.then42 [label %do.end45], !srcloc !419

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #27
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_init_process.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.132) #25
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body28
  %5 = load ptr, ptr @envp_init, align 4
  %tobool47.not93 = icmp eq ptr %5, null
  br i1 %tobool47.not93, label %do.end45.for.end69_crit_edge, label %do.end45.do.body49_crit_edge

do.end45.do.body49_crit_edge:                     ; preds = %do.end45
  br label %do.body49

do.end45.for.end69_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end69

do.body49:                                        ; preds = %for.inc67.do.body49_crit_edge, %do.end45.do.body49_crit_edge
  %p.194 = phi ptr [ %incdec.ptr68, %for.inc67.do.body49_crit_edge ], [ @envp_init, %do.end45.do.body49_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_init_process.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@run_init_process, %for.inc67)) #25
          to label %if.then63 [label %for.inc67], !srcloc !419

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #27
  %6 = ptrtoint ptr %p.194 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.194, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_init_process.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.131, ptr noundef %7) #25
  br label %for.inc67

for.inc67:                                        ; preds = %if.then63, %do.body49
  %incdec.ptr68 = getelementptr ptr, ptr %p.194, i32 1
  %8 = ptrtoint ptr %incdec.ptr68 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %incdec.ptr68, align 4
  %tobool47.not = icmp eq ptr %9, null
  br i1 %tobool47.not, label %for.inc67.for.end69_crit_edge, label %for.inc67.do.body49_crit_edge

for.inc67.do.body49_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body49

for.inc67.for.end69_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end69

for.end69:                                        ; preds = %for.inc67.for.end69_crit_edge, %do.end45.for.end69_crit_edge
  %call70 = tail call i32 @kernel_execve(ptr noundef %init_filename, ptr noundef nonnull @argv_init, ptr noundef nonnull @envp_init) #25
  ret i32 %call70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_prepare_cpus(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @workqueue_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mm_internals() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init_tasks_generic() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_pre_smp_initcalls() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_initcall_level(ptr noundef nonnull @.str.117)
  br i1 icmp ult (ptr @__initcall_start, ptr @__initcall0_start), label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %fn.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ @__initcall_start, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %fn.04 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn.04, align 4
  %call1 = tail call i32 @do_one_initcall(ptr noundef %1)
  %incdec.ptr = getelementptr ptr, ptr %fn.04, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__initcall0_start
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockup_detector_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @smp_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init_smp() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @padata_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_alloc_init_late() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_basic_setup() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpuset_init_smp() #25
  tail call void @driver_init() #25
  tail call void @init_irq_proc() #25
  br i1 icmp ult (ptr @__ctors_start, ptr @__ctors_end), label %entry.for.body.i_crit_edge, label %entry.do_ctors.exit_crit_edge

entry.do_ctors.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do_ctors.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %fn.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ @__ctors_start, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %fn.03.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn.03.i, align 4
  tail call void %1() #25
  %incdec.ptr.i = getelementptr ptr, ptr %fn.03.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, @__ctors_end
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do_ctors.exit_crit_edge

for.body.i.do_ctors.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do_ctors.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.i

do_ctors.exit:                                    ; preds = %for.body.i.do_ctors.exit_crit_edge, %entry.do_ctors.exit_crit_edge
  tail call fastcc void @do_initcalls() #30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_run_all_tests() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_initramfs() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_eaccess(ptr noundef) local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_namespace() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @integrity_load_keys() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #22

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_initcall_level(ptr noundef %level) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_level, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_initcall_level, %do.body)) #25
          to label %if.end48 [label %do.body], !srcloc !419

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !409

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.106, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !432
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_level, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %level) #25
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !433
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #27
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !433
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !409

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.106, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
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
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !399) #25
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !422
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_initcall_level, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_initcall_level.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @trace_initcall_level.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.104, i32 noundef 25, ptr noundef nonnull @.str.105) #25
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !423
  %38 = tail call i32 @llvm.read_register.i32(metadata !399) #25
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
declare dso_local void @cpuset_init_smp() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_irq_proc() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_initcalls() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @saved_command_line, align 4
  %call = tail call i32 @strlen(ptr noundef %0) #29
  %add = add i32 %call, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #33
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.do_initcalls, i32 noundef %add) #32
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %level.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @saved_command_line, align 4
  %call2 = tail call ptr @strcpy(ptr noundef nonnull %call9.i.i, ptr noundef %1) #29
  tail call fastcc void @do_initcall_level(i32 noundef %level.09, ptr noundef nonnull %call9.i.i) #30
  %inc = add nuw nsw i32 %level.09, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #25
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_initcall_level(i32 noundef %level, ptr noundef %command_line) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr @initcall_level_names, i32 0, i32 %level
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %conv = trunc i32 %level to i16
  %call = tail call ptr @parse_args(ptr noundef %1, ptr noundef %command_line, ptr noundef nonnull @__start___param, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___param to i32), i32 ptrtoint (ptr @__start___param to i32)), i32 20), i16 noundef signext %conv, i16 noundef signext %conv, ptr noundef null, ptr noundef nonnull @ignore_unknown_bootoption) #25
  tail call fastcc void @trace_initcall_level(ptr noundef %1)
  %arrayidx3 = getelementptr [9 x ptr], ptr @initcall_levels, i32 0, i32 %level
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %add = add i32 %level, 1
  %arrayidx4 = getelementptr [9 x ptr], ptr @initcall_levels, i32 0, i32 %add
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %cmp15 = icmp ult ptr %3, %5
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %fn.016 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %fn.016 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn.016, align 4
  %call7 = tail call i32 @do_one_initcall(ptr noundef %7)
  %incdec.ptr = getelementptr ptr, ptr %fn.016, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ignore_unknown_bootoption(ptr nocapture noundef readnone %param, ptr nocapture noundef readnone %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef readnone %arg) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @xbc_exit() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_rodata_ro() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rodata_test() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #25

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #26 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #26 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { nounwind readonly }
attributes #19 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #23 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { argmemonly nofree nounwind readonly willreturn }
attributes #25 = { nounwind }
attributes #26 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #27 = { nomerge }
attributes #28 = { nobuiltin nounwind }
attributes #29 = { nobuiltin }
attributes #30 = { cold }
attributes #31 = { cold nounwind }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !163, !165, !167, !168, !170, !172, !174, !175, !176, !178, !179, !181, !182, !184, !186, !188, !189, !190, !191, !192, !194, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !225, !227, !228, !229, !230, !232, !234, !236, !237, !238, !239, !241, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !263, !264, !266, !267, !268, !269, !271, !273, !274, !275, !277, !279, !280, !281, !282, !283, !284, !286, !287, !288, !289, !291, !293, !294, !295, !296, !298, !300, !302, !303, !304, !305, !307, !309, !310, !311, !312, !314, !315, !316, !317, !318, !319, !320, !322, !323, !324, !325, !326, !328, !330, !331, !332, !333, !335, !337, !339, !341, !343, !345, !347, !349, !350, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !376, !377, !378, !380, !381, !382, !383, !385, !386, !388, !389, !391, !392, !394, !396, !397, !398}
!llvm.named.register.sp = !{!399}
!llvm.module.flags = !{!400, !401, !402, !403, !404, !405, !406, !407}
!llvm.ident = !{!408}

!0 = !{ptr @__tracepoint_initcall_level, !1, !"__tracepoint_initcall_level", i1 false, i1 false}
!1 = !{!"../include/trace/events/initcall.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_initcall_level, !1, !"__tracepoint_ptr_initcall_level", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_initcall_level, !1, !"__SCK__tp_func_initcall_level", i1 false, i1 false}
!4 = !{ptr @__tracepoint_initcall_start, !5, !"__tracepoint_initcall_start", i1 false, i1 false}
!5 = !{!"../include/trace/events/initcall.h", i32 27, i32 1}
!6 = !{ptr @__tracepoint_ptr_initcall_start, !5, !"__tracepoint_ptr_initcall_start", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_initcall_start, !5, !"__SCK__tp_func_initcall_start", i1 false, i1 false}
!8 = !{ptr @__tracepoint_initcall_finish, !9, !"__tracepoint_initcall_finish", i1 false, i1 false}
!9 = !{!"../include/trace/events/initcall.h", i32 48, i32 1}
!10 = !{ptr @__tracepoint_ptr_initcall_finish, !9, !"__tracepoint_ptr_initcall_finish", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_initcall_finish, !9, !"__SCK__tp_func_initcall_finish", i1 false, i1 false}
!12 = !{ptr @event_class_initcall_level, !1, !"event_class_initcall_level", i1 false, i1 false}
!13 = !{ptr @event_initcall_level, !1, !"event_initcall_level", i1 false, i1 false}
!14 = !{ptr @__event_initcall_level, !1, !"__event_initcall_level", i1 false, i1 false}
!15 = !{ptr @event_class_initcall_start, !5, !"event_class_initcall_start", i1 false, i1 false}
!16 = !{ptr @event_initcall_start, !5, !"event_initcall_start", i1 false, i1 false}
!17 = !{ptr @__event_initcall_start, !5, !"__event_initcall_start", i1 false, i1 false}
!18 = !{ptr @event_class_initcall_finish, !9, !"event_class_initcall_finish", i1 false, i1 false}
!19 = !{ptr @event_initcall_finish, !9, !"event_initcall_finish", i1 false, i1 false}
!20 = !{ptr @__event_initcall_finish, !9, !"__event_initcall_finish", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_initcall_level, !1, !"__bpf_trace_tp_map_initcall_level", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_initcall_start, !5, !"__bpf_trace_tp_map_initcall_start", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_initcall_finish, !9, !"__bpf_trace_tp_map_initcall_finish", i1 false, i1 false}
!24 = !{ptr @__ksymtab_system_state, !25, !"__ksymtab_system_state", i1 false, i1 false}
!25 = !{!"../init/main.c", i32 129, i32 1}
!26 = !{ptr @__ksymtab_static_key_initialized, !27, !"__ksymtab_static_key_initialized", i1 false, i1 false}
!27 = !{!"../init/main.c", i32 169, i32 1}
!28 = !{ptr @__ksymtab_reset_devices, !29, !"__ksymtab_reset_devices", i1 false, i1 false}
!29 = !{!"../init/main.c", i32 181, i32 1}
!30 = !{ptr @__setup_set_reset_devices, !31, !"__setup_set_reset_devices", i1 false, i1 false}
!31 = !{!"../init/main.c", i32 189, i32 1}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../init/main.c", i32 192, i32 44}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../init/main.c", i32 192, i32 54}
!36 = !{ptr @envp_init, !37, !"envp_init", i1 false, i1 false}
!37 = !{!"../init/main.c", i32 192, i32 13}
!38 = !{ptr @loops_per_jiffy, !39, !"loops_per_jiffy", i1 false, i1 false}
!39 = !{!"../init/main.c", i32 230, i32 15}
!40 = !{ptr @__ksymtab_loops_per_jiffy, !41, !"__ksymtab_loops_per_jiffy", i1 false, i1 false}
!41 = !{!"../init/main.c", i32 231, i32 1}
!42 = !{ptr @__setup_debug_kernel, !43, !"__setup_debug_kernel", i1 false, i1 false}
!43 = !{!"../init/main.c", i32 245, i32 1}
!44 = !{ptr @__setup_quiet_kernel, !45, !"__setup_quiet_kernel", i1 false, i1 false}
!45 = !{!"../init/main.c", i32 246, i32 1}
!46 = !{ptr @__setup_loglevel, !47, !"__setup_loglevel", i1 false, i1 false}
!47 = !{!"../init/main.c", i32 265, i32 1}
!48 = !{ptr @__setup_warn_bootconfig, !49, !"__setup_warn_bootconfig", i1 false, i1 false}
!49 = !{!"../init/main.c", i32 486, i32 1}
!50 = !{ptr @__setup_init_setup, !51, !"__setup_init_setup", i1 false, i1 false}
!51 = !{!"../init/main.c", i32 588, i32 1}
!52 = !{ptr @__setup_rdinit_setup, !53, !"__setup_rdinit_setup", i1 false, i1 false}
!53 = !{!"../init/main.c", i32 600, i32 1}
!54 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../init/main.c", i32 749, i32 13}
!56 = distinct !{null, !57, !"done", i1 false, i1 false}
!57 = !{!"../init/main.c", i32 756, i32 13}
!58 = !{ptr @parse_early_param.tmp_cmdline, !59, !"tmp_cmdline", i1 false, i1 false}
!59 = !{!"../init/main.c", i32 757, i32 14}
!60 = !{ptr @__param_initcall_debug, !61, !"__param_initcall_debug", i1 false, i1 false}
!61 = !{!"../init/main.c", i32 789, i32 1}
!62 = !{ptr @.str.3, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../init/main.c", i32 948, i32 2}
!64 = !{ptr @.str.4, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.5, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @start_kernel._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @start_kernel._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.7, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../init/main.c", i32 961, i32 2}
!70 = !{ptr @start_kernel._entry.6, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @start_kernel._entry_ptr.8, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../init/main.c", i32 965, i32 28}
!74 = !{ptr @.str.10, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../init/main.c", i32 971, i32 14}
!76 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../init/main.c", i32 974, i32 14}
!78 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../init/main.c", i32 999, i32 6}
!80 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../init/main.c", i32 1055, i32 2}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../init/main.c", i32 1069, i32 9}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../init/main.c", i32 1092, i32 3}
!86 = !{ptr @start_kernel._entry.15, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @start_kernel._entry_ptr.17, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @__setup_initcall_blacklist, !89, !"__setup_initcall_blacklist", i1 false, i1 false}
!89 = !{!"../init/main.c", i32 1235, i32 1}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../init/main.c", i32 1306, i32 19}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../init/main.c", i32 1310, i32 19}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../init/main.c", i32 1313, i32 2}
!96 = !{ptr @rodata_enabled, !97, !"rodata_enabled", i1 false, i1 false}
!97 = !{!"../init/main.c", i32 1452, i32 6}
!98 = !{ptr @__setup_set_debug_rodata, !99, !"__setup_set_debug_rodata", i1 false, i1 false}
!99 = !{!"../init/main.c", i32 1457, i32 1}
!100 = !{ptr @.str.21, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../init/main.c", i32 1571, i32 32}
!102 = !{ptr @.str.22, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../init/main.c", i32 1574, i32 3}
!104 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @console_on_rootfs._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @console_on_rootfs._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @early_boot_irqs_disabled, !108, !"early_boot_irqs_disabled", i1 false, i1 false}
!108 = !{!"../init/main.c", i32 126, i32 6}
!109 = !{ptr @system_state, !110, !"system_state", i1 false, i1 false}
!110 = !{!"../init/main.c", i32 128, i32 20}
!111 = !{ptr @late_time_init, !112, !"late_time_init", i1 false, i1 false}
!112 = !{!"../init/main.c", i32 139, i32 19}
!113 = !{ptr @boot_command_line, !114, !"boot_command_line", i1 false, i1 false}
!114 = !{!"../init/main.c", i32 142, i32 17}
!115 = !{ptr @saved_command_line, !116, !"saved_command_line", i1 false, i1 false}
!116 = !{!"../init/main.c", i32 144, i32 7}
!117 = !{ptr @static_command_line, !118, !"static_command_line", i1 false, i1 false}
!118 = !{!"../init/main.c", i32 146, i32 14}
!119 = !{ptr @extra_init_args, !120, !"extra_init_args", i1 false, i1 false}
!120 = !{!"../init/main.c", i32 150, i32 14}
!121 = !{ptr @static_key_initialized, !122, !"static_key_initialized", i1 false, i1 false}
!122 = !{!"../init/main.c", i32 168, i32 6}
!123 = !{ptr @reset_devices, !124, !"reset_devices", i1 false, i1 false}
!124 = !{!"../init/main.c", i32 180, i32 14}
!125 = !{ptr @panic_later, !126, !"panic_later", i1 false, i1 false}
!126 = !{!"../init/main.c", i32 193, i32 20}
!127 = !{ptr @panic_param, !128, !"panic_param", i1 false, i1 false}
!128 = !{!"../init/main.c", i32 193, i32 34}
!129 = !{ptr @initcall_debug, !130, !"initcall_debug", i1 false, i1 false}
!130 = !{!"../init/main.c", i32 788, i32 6}
!131 = !{ptr @__tpstrtab_initcall_level, !1, !"__tpstrtab_initcall_level", i1 false, i1 false}
!132 = !{ptr @__tpstrtab_initcall_start, !5, !"__tpstrtab_initcall_start", i1 false, i1 false}
!133 = !{ptr @__tpstrtab_initcall_finish, !9, !"__tpstrtab_initcall_finish", i1 false, i1 false}
!134 = !{ptr @str__initcall__trace_system_name, !135, !"str__initcall__trace_system_name", i1 false, i1 false}
!135 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!136 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @trace_event_fields_initcall_level, !1, !"trace_event_fields_initcall_level", i1 false, i1 false}
!140 = !{ptr @trace_event_type_funcs_initcall_level, !1, !"trace_event_type_funcs_initcall_level", i1 false, i1 false}
!141 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @print_fmt_initcall_level, !1, !"print_fmt_initcall_level", i1 false, i1 false}
!143 = !{ptr @.str.28, !5, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.29, !5, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @trace_event_fields_initcall_start, !5, !"trace_event_fields_initcall_start", i1 false, i1 false}
!146 = !{ptr @trace_event_type_funcs_initcall_start, !5, !"trace_event_type_funcs_initcall_start", i1 false, i1 false}
!147 = !{ptr @.str.30, !5, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @print_fmt_initcall_start, !5, !"print_fmt_initcall_start", i1 false, i1 false}
!149 = !{ptr @.str.31, !9, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.32, !9, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @trace_event_fields_initcall_finish, !9, !"trace_event_fields_initcall_finish", i1 false, i1 false}
!152 = !{ptr @trace_event_type_funcs_initcall_finish, !9, !"trace_event_type_funcs_initcall_finish", i1 false, i1 false}
!153 = !{ptr @.str.33, !9, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @print_fmt_initcall_finish, !9, !"print_fmt_initcall_finish", i1 false, i1 false}
!155 = !{ptr @__setup_str_set_reset_devices, !31, !"__setup_str_set_reset_devices", i1 false, i1 false}
!156 = !{ptr @__setup_str_debug_kernel, !43, !"__setup_str_debug_kernel", i1 false, i1 false}
!157 = !{ptr @__setup_str_quiet_kernel, !45, !"__setup_str_quiet_kernel", i1 false, i1 false}
!158 = !{ptr @__setup_str_loglevel, !47, !"__setup_str_loglevel", i1 false, i1 false}
!159 = !{ptr @__setup_str_warn_bootconfig, !49, !"__setup_str_warn_bootconfig", i1 false, i1 false}
!160 = !{ptr @__setup_str_init_setup, !51, !"__setup_str_init_setup", i1 false, i1 false}
!161 = !{ptr @execute_command, !162, !"execute_command", i1 false, i1 false}
!162 = !{!"../init/main.c", i32 161, i32 14}
!163 = !{ptr @.str.34, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../init/main.c", i32 191, i32 51}
!165 = !{ptr @argv_init, !166, !"argv_init", i1 false, i1 false}
!166 = !{!"../init/main.c", i32 191, i32 20}
!167 = !{ptr @__setup_str_rdinit_setup, !53, !"__setup_str_rdinit_setup", i1 false, i1 false}
!168 = !{ptr @.str.36, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../init/main.c", i32 162, i32 40}
!170 = !{ptr @ramdisk_execute_command, !171, !"ramdisk_execute_command", i1 false, i1 false}
!171 = !{!"../init/main.c", i32 162, i32 14}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!174 = !{ptr @.str.37, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.38, !173, !"<string literal>", i1 false, i1 false}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!178 = !{ptr @.str.39, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.40, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../init/main.c", i32 677, i32 19}
!181 = !{ptr @kthreadd_done, !180, !"kthreadd_done", i1 false, i1 false}
!182 = !{ptr @.str.41, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../init/main.c", i32 736, i32 22}
!184 = !{ptr @.str.42, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../init/main.c", i32 737, i32 23}
!186 = !{ptr @.str.43, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../init/main.c", i32 740, i32 5}
!188 = !{ptr @.str.44, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @do_early_param._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @do_early_param._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @___asan_gen_.196, !61, !"__param_str_initcall_debug", i1 false, i1 false}
!192 = !{ptr @setup_boot_config.tmp_cmdline, !193, !"tmp_cmdline", i1 false, i1 false}
!193 = !{!"../init/main.c", i32 408, i32 14}
!194 = !{ptr @.str.45, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../init/main.c", i32 419, i32 19}
!196 = !{ptr @.str.46, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../init/main.c", i32 430, i32 3}
!198 = !{ptr @.str.47, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @setup_boot_config._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @setup_boot_config._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.49, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../init/main.c", i32 435, i32 3}
!203 = !{ptr @setup_boot_config._entry.48, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @setup_boot_config._entry_ptr.50, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.52, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../init/main.c", i32 441, i32 3}
!207 = !{ptr @setup_boot_config._entry.51, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @setup_boot_config._entry_ptr.53, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.55, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../init/main.c", i32 448, i32 4}
!211 = !{ptr @setup_boot_config._entry.54, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @setup_boot_config._entry_ptr.56, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.58, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../init/main.c", i32 450, i32 4}
!215 = !{ptr @setup_boot_config._entry.57, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @setup_boot_config._entry_ptr.59, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.61, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../init/main.c", i32 454, i32 3}
!219 = !{ptr @setup_boot_config._entry.60, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @setup_boot_config._entry_ptr.62, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.63, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../init/main.c", i32 456, i32 41}
!223 = !{ptr @.str.64, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../init/main.c", i32 284, i32 21}
!225 = !{ptr @.str.65, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../init/main.c", i32 297, i32 3}
!227 = !{ptr @.str.66, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @get_boot_config_from_initrd._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @get_boot_config_from_initrd._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = distinct !{null, !231, !"bootconfig_found", i1 false, i1 false}
!231 = !{!"../init/main.c", i32 154, i32 13}
!232 = !{ptr @initargs_offs, !233, !"initargs_offs", i1 false, i1 false}
!233 = !{!"../init/main.c", i32 155, i32 15}
!234 = !{ptr @.str.67, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../init/main.c", i32 377, i32 3}
!236 = !{ptr @.str.68, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @xbc_make_cmdline._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @xbc_make_cmdline._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.70, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../init/main.c", i32 383, i32 3}
!241 = !{ptr @xbc_make_cmdline._entry.69, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @xbc_make_cmdline._entry_ptr.71, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.72, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../init/main.c", i32 340, i32 40}
!245 = !{ptr @.str.73, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../init/main.c", i32 347, i32 40}
!247 = !{ptr @xbc_namebuf, !248, !"xbc_namebuf", i1 false, i1 false}
!248 = !{!"../init/main.c", i32 320, i32 13}
!249 = !{ptr @extra_command_line, !250, !"extra_command_line", i1 false, i1 false}
!250 = !{!"../init/main.c", i32 148, i32 14}
!251 = !{ptr @.str.74, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../init/main.c", i32 627, i32 9}
!253 = !{ptr @__func__.setup_command_line, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../init/main.c", i32 627, i32 47}
!255 = !{ptr @.str.75, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../init/main.c", i32 661, i32 37}
!257 = !{ptr @.str.76, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../init/main.c", i32 552, i32 19}
!259 = !{ptr @.str.77, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../init/main.c", i32 214, i32 5}
!261 = !{ptr @.str.78, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @obsolete_checksetup._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @obsolete_checksetup._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.79, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../init/main.c", i32 910, i32 3}
!266 = !{ptr @.str.80, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @print_unknown_bootoptions._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @print_unknown_bootoptions._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.81, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../init/main.c", i32 917, i32 23}
!271 = !{ptr @.str.83, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../init/main.c", i32 922, i32 2}
!273 = !{ptr @print_unknown_bootoptions._entry.82, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @print_unknown_bootoptions._entry_ptr.84, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.85, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../init/main.c", i32 805, i32 11}
!277 = !{ptr @.str.86, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../init/main.c", i32 817, i32 2}
!279 = !{ptr @.str.87, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @report_meminit._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @report_meminit._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.88, !278, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.89, !278, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.91, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../init/main.c", i32 821, i32 3}
!286 = !{ptr @report_meminit._entry.90, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @report_meminit._entry_ptr.92, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @__setup_str_initcall_blacklist, !89, !"__setup_str_initcall_blacklist", i1 false, i1 false}
!289 = !{ptr @.str.93, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../init/main.c", i32 1175, i32 28}
!291 = !{ptr @.str.94, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../init/main.c", i32 1177, i32 4}
!293 = !{ptr @.str.95, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.96, !292, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @initcall_blacklist.__UNIQUE_ID_ddebug339, !292, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!296 = !{ptr @blacklisted_initcalls, !297, !"blacklisted_initcalls", i1 false, i1 false}
!297 = !{!"../init/main.c", i32 1166, i32 29}
!298 = !{ptr @.str.97, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../init/main.c", i32 1271, i32 2}
!300 = !{ptr @.str.98, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../init/main.c", i32 1242, i32 2}
!302 = !{ptr @.str.99, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @trace_initcall_start_cb._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @trace_initcall_start_cb._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @initcall_calltime, !306, !"initcall_calltime", i1 false, i1 false}
!306 = !{!"../init/main.c", i32 1260, i32 16}
!307 = !{ptr @.str.100, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../init/main.c", i32 1256, i32 2}
!309 = !{ptr @.str.101, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @trace_initcall_finish_cb._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @trace_initcall_finish_cb._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.102, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../init/main.c", i32 1216, i32 4}
!314 = !{ptr @.str.103, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @initcall_blacklisted.__UNIQUE_ID_ddebug340, !313, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!316 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!317 = !{ptr @.str.104, !5, !"<string literal>", i1 false, i1 false}
!318 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!319 = !{ptr @.str.105, !5, !"<string literal>", i1 false, i1 false}
!320 = distinct !{null, !321, !"__already_done", i1 false, i1 false}
!321 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!322 = !{ptr @.str.106, !321, !"<string literal>", i1 false, i1 false}
!323 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!324 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!325 = !{ptr @__setup_str_set_debug_rodata, !99, !"__setup_str_set_debug_rodata", i1 false, i1 false}
!326 = !{ptr @.str.107, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../include/linux/mm.h", i32 2500, i32 15}
!328 = !{ptr @.str.108, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../init/main.c", i32 1531, i32 3}
!330 = !{ptr @.str.109, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @kernel_init._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @kernel_init._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.110, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../init/main.c", i32 1545, i32 9}
!335 = !{ptr @.str.111, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../init/main.c", i32 1558, i32 31}
!337 = !{ptr @.str.112, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../init/main.c", i32 1559, i32 31}
!339 = !{ptr @.str.113, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../init/main.c", i32 1560, i32 31}
!341 = !{ptr @.str.114, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../init/main.c", i32 1561, i32 31}
!343 = !{ptr @.str.115, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../init/main.c", i32 1564, i32 8}
!345 = !{ptr @.str.116, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../include/linux/seqlock.h", i32 277, i32 1}
!347 = !{ptr @.str.117, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../init/main.c", i32 1415, i32 23}
!349 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!350 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!351 = !{ptr @__func__.do_initcalls, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../init/main.c", i32 1384, i32 47}
!353 = !{ptr @.str.118, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../init/main.c", i32 1345, i32 2}
!355 = !{ptr @.str.119, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../init/main.c", i32 1346, i32 2}
!357 = !{ptr @.str.120, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../init/main.c", i32 1347, i32 2}
!359 = !{ptr @.str.121, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../init/main.c", i32 1348, i32 2}
!361 = !{ptr @.str.122, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../init/main.c", i32 1349, i32 2}
!363 = !{ptr @.str.123, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../init/main.c", i32 1350, i32 2}
!365 = !{ptr @.str.124, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../init/main.c", i32 1351, i32 2}
!367 = !{ptr @.str.125, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../init/main.c", i32 1352, i32 2}
!369 = !{ptr @initcall_level_names, !370, !"initcall_level_names", i1 false, i1 false}
!370 = !{!"../init/main.c", i32 1344, i32 20}
!371 = !{ptr @initcall_levels, !372, !"initcall_levels", i1 false, i1 false}
!372 = !{!"../init/main.c", i32 1331, i32 26}
!373 = !{ptr @.str.126, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../init/main.c", i32 1474, i32 3}
!375 = !{ptr @.str.127, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @mark_readonly._entry, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @mark_readonly._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.128, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../init/main.c", i32 1425, i32 2}
!380 = !{ptr @.str.129, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @run_init_process._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @run_init_process._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.130, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../init/main.c", i32 1426, i32 2}
!385 = !{ptr @run_init_process.__UNIQUE_ID_ddebug341, !384, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!386 = !{ptr @.str.131, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../init/main.c", i32 1428, i32 3}
!388 = !{ptr @run_init_process.__UNIQUE_ID_ddebug342, !387, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!389 = !{ptr @.str.132, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../init/main.c", i32 1429, i32 2}
!391 = !{ptr @run_init_process.__UNIQUE_ID_ddebug343, !390, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!392 = !{ptr @run_init_process.__UNIQUE_ID_ddebug344, !393, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!393 = !{!"../init/main.c", i32 1431, i32 3}
!394 = !{ptr @.str.133, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../init/main.c", i32 1442, i32 3}
!396 = !{ptr @.str.134, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @try_to_run_init_process._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @try_to_run_init_process._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{!"sp"}
!400 = !{i32 1, !"wchar_size", i32 2}
!401 = !{i32 1, !"min_enum_size", i32 4}
!402 = !{i32 8, !"branch-target-enforcement", i32 0}
!403 = !{i32 8, !"sign-return-address", i32 0}
!404 = !{i32 8, !"sign-return-address-all", i32 0}
!405 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!406 = !{i32 7, !"uwtable", i32 1}
!407 = !{i32 7, !"frame-pointer", i32 2}
!408 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!409 = !{!"branch_weights", i32 2000, i32 1}
!410 = !{!"branch_weights", i32 1, i32 2000}
!411 = !{!"auto-init"}
!412 = !{i64 2149396095}
!413 = !{i64 2149396361}
!414 = !{i8 0, i8 2}
!415 = !{i64 2157343832}
!416 = !{i64 786368}
!417 = !{i64 784071}
!418 = !{i64 783881}
!419 = !{i64 2148993313, i64 2148993318, i64 2148993331, i64 2148993375, i64 2148993409, i64 2148993430}
!420 = !{i64 2156769994}
!421 = !{i64 2156770193}
!422 = !{i64 2149404654}
!423 = !{i64 2149405690}
!424 = !{i64 2156786057}
!425 = !{i64 2156786268}
!426 = !{i64 2157308774, i64 2157309250, i64 2157308811, i64 2157308867, i64 2157308901, i64 2157308925, i64 2157308966, i64 2157308987, i64 2157309015, i64 2157309049}
!427 = !{i64 783636, i64 783697}
!428 = !{i64 2150012087}
!429 = !{i64 2150012412}
!430 = !{i64 786653}
!431 = !{i64 2148381466, i64 2148381498, i64 2148381527, i64 2148381561, i64 2148381592, i64 2148381615}
!432 = !{i64 2156754128}
!433 = !{i64 2156754329}
