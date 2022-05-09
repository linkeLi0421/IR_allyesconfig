; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_stack.c_pt.bc'
source_filename = "../kernel/trace/trace_stack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__raw_tickets = type { i16, i16 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.98 = type { ptr }

@stack_sysctl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @stack_sysctl_mutex, i64 52), ptr getelementptr (i8, ptr @stack_sysctl_mutex, i64 52) }, ptr @stack_sysctl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@stack_tracer_enabled = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@trace_ops = internal global %struct.ftrace_ops { ptr @stack_trace_call, ptr null, i32 0, ptr null, ptr null, %struct.ftrace_ops_hash zeroinitializer, ptr null, %struct.ftrace_ops_hash zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__setup_str_enable_stacktrace = internal constant [11 x i8] c"stacktrace\00", section ".init.rodata", align 1
@__setup_enable_stacktrace = internal global %struct.obs_kernel_param { ptr @__setup_str_enable_stacktrace, ptr @enable_stacktrace, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_trace_stack__264_582_stack_trace_init6 = internal global ptr @stack_trace_init, section ".initcall6.init", align 4
@__pcpu_scope_disable_stack_tracer = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_disable_stack_tracer = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@disable_stack_tracer = weak dso_local global i32 0, section ".data..percpu", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stack_sysctl_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stack_sysctl_mutex\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@check_stack.tracer_frame = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stack_trace_max_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stack_trace_max_lock = internal global { %struct.arch_spinlock_t, [28 x i8] } zeroinitializer, align 32
@stack_dump_trace = internal global { [500 x i32], [496 x i8] } zeroinitializer, align 32
@stack_trace_nr_entries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stack_trace_index = internal global { [500 x i32], [496 x i8] } zeroinitializer, align 32
@print_max_stack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\010        Depth    Size   Location    (%d entries)\0A        -----    ----   --------\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"print_max_stack\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/trace/trace_stack.c\00", [37 x i8] zeroinitializer }, align 32
@print_max_stack._entry_ptr = internal global ptr @print_max_stack._entry, section ".printk_index", align 4
@print_max_stack._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\010%3ld) %8d   %5d   %pS\0A\00", [39 x i8] zeroinitializer }, align 32
@print_max_stack._entry_ptr.9 = internal global ptr @print_max_stack._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_filter=\00", [23 x i8] zeroinitializer }, align 32
@stack_trace_filter_buf = internal global [1025 x i8] zeroinitializer, section ".init.data", align 1
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stack_max_size\00", [17 x i8] zeroinitializer }, align 32
@stack_max_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @stack_max_size_read, ptr @stack_max_size_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stack_trace\00", [20 x i8] zeroinitializer }, align 32
@stack_trace_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stack_trace_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stack_trace_filter\00", [45 x i8] zeroinitializer }, align 32
@stack_trace_filter_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @tracing_lseek, ptr @seq_read, ptr @ftrace_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stack_trace_filter_open, ptr null, ptr @ftrace_regex_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@stack_trace_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @t_start, ptr @t_stop, ptr @t_next, ptr @t_show }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"        Depth    Size   Location    (%d entries)\0A        -----    ----   --------\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%3ld) %8d   %5d   \00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"#\0A#  Stack tracer disabled\0A#\0A# To enable the stack tracer, either add 'stacktrace' to the\0A# kernel command line\0A# or 'echo 1 > /proc/sys/kernel/stack_tracer_enabled'\0A#\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pS\0A\00", [27 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_stack.gcda\00", [33 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [37 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -782343144, i32 -1541617314 }, %emit_function_args_ty { i32 1, i32 171339473, i32 -1541617314 }, %emit_function_args_ty { i32 2, i32 -1551030992, i32 -1541617314 }, %emit_function_args_ty { i32 3, i32 -128351456, i32 -1541617314 }, %emit_function_args_ty { i32 4, i32 -1567486560, i32 -1541617314 }, %emit_function_args_ty { i32 5, i32 -1179677876, i32 -1541617314 }, %emit_function_args_ty { i32 6, i32 288547376, i32 -1541617314 }, %emit_function_args_ty { i32 7, i32 1264497602, i32 -1541617314 }, %emit_function_args_ty { i32 8, i32 1333844298, i32 -1541617314 }, %emit_function_args_ty { i32 9, i32 -1111025999, i32 -1541617314 }, %emit_function_args_ty { i32 10, i32 -1187341694, i32 -1541617314 }, %emit_function_args_ty { i32 11, i32 -1543658690, i32 -1541617314 }, %emit_function_args_ty { i32 12, i32 1403380823, i32 -1541617314 }, %emit_function_args_ty { i32 13, i32 81157262, i32 -1541617314 }, %emit_function_args_ty { i32 14, i32 -723365461, i32 -1541617314 }, %emit_function_args_ty { i32 15, i32 1790648385, i32 -1541617314 }, %emit_function_args_ty { i32 16, i32 289040437, i32 -1541617314 }, %emit_function_args_ty { i32 17, i32 1059036893, i32 -1541617314 }, %emit_function_args_ty { i32 18, i32 916651515, i32 -1541617314 }, %emit_function_args_ty { i32 19, i32 -743251458, i32 -1541617314 }, %emit_function_args_ty { i32 20, i32 -1208743970, i32 -1541617314 }, %emit_function_args_ty { i32 21, i32 -1651547464, i32 -1541617314 }, %emit_function_args_ty { i32 22, i32 835031753, i32 -1541617314 }, %emit_function_args_ty { i32 23, i32 651191103, i32 -1541617314 }, %emit_function_args_ty { i32 24, i32 -8673292, i32 -1541617314 }, %emit_function_args_ty { i32 25, i32 472551862, i32 -1541617314 }, %emit_function_args_ty { i32 26, i32 806961886, i32 -1541617314 }, %emit_function_args_ty { i32 27, i32 1795410775, i32 -1541617314 }, %emit_function_args_ty { i32 28, i32 1061137276, i32 -1541617314 }, %emit_function_args_ty { i32 29, i32 -1500579407, i32 -1541617314 }, %emit_function_args_ty { i32 30, i32 -135338150, i32 -1541617314 }, %emit_function_args_ty { i32 31, i32 -1326915047, i32 -1541617314 }, %emit_function_args_ty { i32 32, i32 -311018454, i32 -1541617314 }, %emit_function_args_ty { i32 33, i32 -272555249, i32 -1541617314 }, %emit_function_args_ty { i32 34, i32 -176162952, i32 -1541617314 }, %emit_function_args_ty { i32 35, i32 -1356438826, i32 -1541617314 }, %emit_function_args_ty { i32 36, i32 -1192989609, i32 -1541617314 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [37 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 20, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.54 }]
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"stack_sysctl_mutex\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"stack_tracer_enabled\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 35, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 33, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"tracer_frame\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 158, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"stack_trace_max_size\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 28, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"stack_trace_max_lock\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 29, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"stack_dump_trace\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 24, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"stack_trace_nr_entries\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 27, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"stack_trace_index\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 25, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 42, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 52, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 546, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 562, i32 20 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"stack_max_size_fops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 368, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 565, i32 20 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"stack_trace_fops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 487, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 569, i32 20 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"stack_trace_filter_fops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 506, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 331, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"stack_trace_seq_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 469, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 441, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 462, i32 16 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 426, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [30 x i8] c"../kernel/trace/trace_stack.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 421, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_trace_stack__264_582_stack_trace_init6, ptr @__setup_enable_stacktrace, ptr @print_max_stack._entry, ptr @print_max_stack._entry.7, ptr @print_max_stack._entry_ptr, ptr @print_max_stack._entry_ptr.9, ptr @stack_sysctl_mutex, ptr @stack_tracer_enabled, ptr @.str, ptr @.str.1, ptr @check_stack.tracer_frame, ptr @stack_trace_max_size, ptr @stack_trace_max_lock, ptr @stack_dump_trace, ptr @stack_trace_nr_entries, ptr @stack_trace_index, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @stack_max_size_fops, ptr @.str.12, ptr @stack_trace_fops, ptr @.str.13, ptr @stack_trace_filter_fops, ptr @.str.14, ptr @stack_trace_seq_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@1 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_sysctl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_tracer_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_stack.tracer_frame to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_max_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_max_lock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_dump_trace to i32), i32 2000, i32 2496, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_nr_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_index to i32), i32 2000, i32 2496, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_max_stack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_max_stack._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_max_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_filter_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stack_trace_sysctl(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 !dbg !84 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !87
  tail call void @mutex_lock_nested(ptr noundef nonnull @stack_sysctl_mutex, i32 noundef 0) #18, !dbg !88
  %0 = load i32, ptr @stack_tracer_enabled, align 4, !dbg !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !90
  %tobool = icmp eq i32 %0, 0, !dbg !90
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #18, !dbg !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !92
  %tobool2.not = icmp eq i32 %call, 0, !dbg !92
  br i1 %tobool2.not, label %lor.lhs.false, label %entry.if.then_crit_edge, !dbg !93

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !93
  br label %if.then, !dbg !93

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !94
  %1 = add i64 %gcov_ctr, 1, !dbg !94
  store i64 %1, ptr @__llvm_gcov_ctr, align 16, !dbg !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write), !dbg !94
  %tobool3.not = icmp eq i32 %write, 0, !dbg !94
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false4, !dbg !95

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17, !dbg !95
  br label %if.then, !dbg !95

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !96
  %2 = add i64 %gcov_ctr15, 1, !dbg !96
  store i64 %2, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !96
  %3 = load i32, ptr @stack_tracer_enabled, align 4, !dbg !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !98
  %tobool5 = icmp ne i32 %3, 0, !dbg !98
  %cmp = xor i1 %tobool, %tobool5, !dbg !99
  br i1 %cmp, label %lor.lhs.false4.if.then_crit_edge, label %if.end, !dbg !92

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17, !dbg !92
  br label %if.then, !dbg !92

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !100
  %4 = add i64 %gcov_ctr16, 1, !dbg !100
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !100
  br label %out, !dbg !100

if.end:                                           ; preds = %lor.lhs.false4
  br i1 %tobool5, label %if.then11, label %if.else, !dbg !101

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17, !dbg !102
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !102
  %5 = add i64 %gcov_ctr17, 1, !dbg !102
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !102
  %call12 = tail call i32 @register_ftrace_function(ptr noundef nonnull @trace_ops) #18, !dbg !102
  br label %out, !dbg !102

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17, !dbg !103
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !103
  %6 = add i64 %gcov_ctr18, 1, !dbg !103
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !103
  %call13 = tail call i32 @unregister_ftrace_function(ptr noundef nonnull @trace_ops) #18, !dbg !103
  br label %out

out:                                              ; preds = %if.else, %if.then11, %if.then
  tail call void @mutex_unlock(ptr noundef nonnull @stack_sysctl_mutex) #18, !dbg !104
  ret i32 %call, !dbg !105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ftrace_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ftrace_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enable_stacktrace(ptr nocapture noundef readonly %str) #3 section ".init.text" align 64 !dbg !106 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !107
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.19, align 8
  %call1.i = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(9) @.str.10, i32 noundef 8) #18, !dbg !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !112
  %cmp.i = icmp eq i32 %call1.i, 0, !dbg !112
  %__llvm_gcov_ctr.41..i = select i1 %cmp.i, ptr @__llvm_gcov_ctr.41, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), !dbg !108
  %1 = ptrtoint ptr %__llvm_gcov_ctr.41..i to i32, !dbg !113
  call void @__asan_load8_noabort(i32 %1), !dbg !113
  %gcov_ctr2.i = load i64, ptr %__llvm_gcov_ctr.41..i, align 8, !dbg !113
  %2 = add i64 %gcov_ctr2.i, 1, !dbg !113
  store i64 %2, ptr %__llvm_gcov_ctr.41..i, align 8, !dbg !113
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge, !dbg !114

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !114
  br label %if.end, !dbg !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !115
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !115
  %3 = add i64 %gcov_ctr2, 1, !dbg !115
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !115
  %add.ptr = getelementptr i8, ptr %str, i32 8, !dbg !116
  %call1 = tail call ptr @strncpy(ptr noundef nonnull @stack_trace_filter_buf, ptr noundef %add.ptr, i32 noundef 1024), !dbg !117
  br label %if.end, !dbg !117

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i32 1, ptr @stack_tracer_enabled, align 4, !dbg !118
  ret i32 1, !dbg !119
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_trace_init() #4 section ".init.text" align 64 !dbg !120 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !121
  %call = tail call i32 @tracing_init_dentry() #18, !dbg !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !123
  %tobool.not = icmp eq i32 %call, 0, !dbg !123
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !124
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.20, align 16, !dbg !124
  %0 = add i64 %gcov_ctr, 1, !dbg !124
  store i64 %0, ptr @__llvm_gcov_ctr.20, align 16, !dbg !124
  br label %cleanup, !dbg !124

if.end:                                           ; preds = %entry
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !125
  %1 = add i64 %gcov_ctr11, 1, !dbg !125
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !125
  %call1 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 416, ptr noundef null, ptr noundef nonnull @stack_trace_max_size, ptr noundef nonnull @stack_max_size_fops) #18, !dbg !125
  %call2 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @stack_trace_fops) #18, !dbg !126
  %call3 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 416, ptr noundef null, ptr noundef nonnull @trace_ops, ptr noundef nonnull @stack_trace_filter_fops) #18, !dbg !127
  %2 = load i8, ptr @stack_trace_filter_buf, align 1, !dbg !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2), !dbg !128
  %tobool4.not = icmp eq i8 %2, 0, !dbg !128
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5, !dbg !128

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17, !dbg !128
  br label %if.end6, !dbg !128

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17, !dbg !129
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !129
  %3 = add i64 %gcov_ctr12, 1, !dbg !129
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 2), align 16, !dbg !129
  tail call void @ftrace_set_early_filter(ptr noundef nonnull @trace_ops, ptr noundef nonnull @stack_trace_filter_buf, i32 noundef 1) #19, !dbg !129
  br label %if.end6, !dbg !129

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %4 = load i32, ptr @stack_tracer_enabled, align 4, !dbg !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4), !dbg !130
  %tobool7.not = icmp eq i32 %4, 0, !dbg !130
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8, !dbg !130

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17, !dbg !130
  br label %cleanup, !dbg !130

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17, !dbg !131
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !131
  %5 = add i64 %gcov_ctr13, 1, !dbg !131
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 3), align 8, !dbg !131
  %call9 = tail call i32 @register_ftrace_function(ptr noundef nonnull @trace_ops) #18, !dbg !131
  br label %cleanup, !dbg !131

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.then
  ret i32 0, !dbg !132
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stack_trace_call(i32 noundef %ip, i32 noundef %parent_ip, ptr nocapture noundef readnone %op, ptr nocapture noundef readnone %fregs) #0 align 64 !dbg !133 {
entry:
  %stack = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17, !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stack) #18, !dbg !135
  %0 = ptrtoint ptr %stack to i32, !dbg !136
  call void @__asan_store4_noabort(i32 %0), !dbg !136
  store i32 -1, ptr %stack, align 4, !dbg !136, !annotation !137
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.22, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.27, align 8, !dbg !138
  %2 = add i64 %gcov_ctr.i.i, 1, !dbg !138
  store i64 %2, ptr @__llvm_gcov_ctr.27, align 8, !dbg !138
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !144
  %3 = add i64 %gcov_ctr.i.i.i, 1, !dbg !144
  store i64 %3, ptr @__llvm_gcov_ctr.24, align 8, !dbg !144
  %4 = tail call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !144
  %and.i.i.i = and i32 %4, -16384, !dbg !148
  %5 = inttoptr i32 %and.i.i.i to ptr, !dbg !149
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1, !dbg !150
  %6 = ptrtoint ptr %preempt_count.i.i to i32, !dbg !151
  call void @__asan_load4_noabort(i32 %6), !dbg !151
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4, !dbg !151
  %add.i = add i32 %7, 1, !dbg !151
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4, !dbg !151
  tail call void asm sideeffect "", "~{memory}"() #18, !dbg !152, !srcloc !153
  %gcov_ctr.i71 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %8 = add i64 %gcov_ctr.i71, 1
  store i64 %8, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i72 = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !154
  %9 = add i64 %gcov_ctr.i72, 1, !dbg !154
  store i64 %9, ptr @__llvm_gcov_ctr.24, align 8, !dbg !154
  %10 = tail call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !154
  %and.i = and i32 %10, -16384, !dbg !156
  %11 = inttoptr i32 %and.i to ptr, !dbg !157
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3, !dbg !158
  %12 = ptrtoint ptr %cpu to i32, !dbg !158
  call void @__asan_load4_noabort(i32 %12), !dbg !158
  %13 = load i32, ptr %cpu, align 4, !dbg !158
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13, !dbg !158
  %14 = ptrtoint ptr %arrayidx to i32, !dbg !158
  call void @__asan_load4_noabort(i32 %14), !dbg !158
  %15 = load i32, ptr %arrayidx, align 4, !dbg !158
  %add = add i32 %15, ptrtoint (ptr @disable_stack_tracer to i32), !dbg !158
  %16 = inttoptr i32 %add to ptr, !dbg !158
  %17 = ptrtoint ptr %16 to i32, !dbg !158
  call void @__asan_load4_noabort(i32 %17), !dbg !158
  %18 = load i32, ptr %16, align 4, !dbg !158
  %add11 = add i32 %18, 1, !dbg !158
  store i32 %add11, ptr %16, align 4, !dbg !158
  %gcov_ctr.i73 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %19 = add i64 %gcov_ctr.i73, 1
  store i64 %19, ptr @__llvm_gcov_ctr.23, align 8
  %20 = load i32, ptr %cpu, align 4, !dbg !159
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20, !dbg !159
  %21 = ptrtoint ptr %arrayidx31 to i32, !dbg !159
  call void @__asan_load4_noabort(i32 %21), !dbg !159
  %22 = load i32, ptr %arrayidx31, align 4, !dbg !159
  %add32 = add i32 %22, ptrtoint (ptr @disable_stack_tracer to i32), !dbg !159
  %23 = inttoptr i32 %add32 to ptr, !dbg !159
  %24 = ptrtoint ptr %23 to i32, !dbg !159
  call void @__asan_load4_noabort(i32 %24), !dbg !159
  %25 = load i32, ptr %23, align 4, !dbg !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25), !dbg !160
  %cmp.not = icmp eq i32 %25, 1, !dbg !160
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !161
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 16, !dbg !161
  %26 = add i64 %gcov_ctr, 1, !dbg !161
  store i64 %26, ptr @__llvm_gcov_ctr.21, align 16, !dbg !161
  br label %out, !dbg !161

if.end:                                           ; preds = %entry
  %call34 = tail call zeroext i1 @rcu_is_watching() #18, !dbg !162
  br i1 %call34, label %if.end36, label %if.then35, !dbg !163

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17, !dbg !164
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !164
  %27 = add i64 %gcov_ctr63, 1, !dbg !164
  store i64 %27, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !164
  br label %out, !dbg !164

if.end36:                                         ; preds = %if.end
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !165
  %28 = add i64 %gcov_ctr64, 1, !dbg !165
  store i64 %28, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !165
  %add37 = add i32 %ip, 4, !dbg !165
  %29 = load volatile i32, ptr @check_stack.tracer_frame, align 4, !dbg !166
  %30 = ptrtoint ptr %stack to i32, !dbg !169
  %and.i74 = and i32 %30, 16380, !dbg !170
  %31 = add i32 %and.i74, %29, !dbg !171
  %sub1.i = sub i32 16384, %31, !dbg !171
  %32 = load i32, ptr @stack_trace_max_size, align 4, !dbg !172
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %32), !dbg !173
  %cmp.not.i = icmp ugt i32 %sub1.i, %32, !dbg !173
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !174

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17, !dbg !175
  %gcov_ctr.i75 = load i64, ptr @__llvm_gcov_ctr.25, align 16
  %33 = add i64 %gcov_ctr.i75, 1
  store i64 %33, ptr @__llvm_gcov_ctr.25, align 16
  br label %out, !dbg !176

if.end.i:                                         ; preds = %if.end36
  %gcov_ctr.i202.i = load i64, ptr @__llvm_gcov_ctr.28, align 8
  %34 = add i64 %gcov_ctr.i202.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.28, align 8
  %gcov_ctr.i.i203.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !177
  %35 = add i64 %gcov_ctr.i.i203.i, 1, !dbg !177
  store i64 %35, ptr @__llvm_gcov_ctr.24, align 8, !dbg !177
  %36 = call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !177
  %and.i.i204.i = and i32 %36, -16384, !dbg !182
  %37 = inttoptr i32 %and.i.i204.i to ptr, !dbg !183
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2, !dbg !184
  %38 = ptrtoint ptr %task.i.i to i32, !dbg !184
  call void @__asan_load4_noabort(i32 %38), !dbg !184
  %39 = load ptr, ptr %task.i.i, align 8, !dbg !184
  %stack1.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1, !dbg !184
  %40 = ptrtoint ptr %stack1.i.i to i32, !dbg !184
  call void @__asan_load4_noabort(i32 %40), !dbg !184
  %41 = load ptr, ptr %stack1.i.i, align 4, !dbg !184
  %cmp.not.i.i = icmp ugt ptr %41, %stack, !dbg !185
  br i1 %cmp.not.i.i, label %if.end.i.if.then2.i_crit_edge, label %object_is_on_stack.exit.i, !dbg !186

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !186
  br label %if.then2.i, !dbg !186

object_is_on_stack.exit.i:                        ; preds = %if.end.i
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !187
  %42 = add i64 %gcov_ctr3.i.i, 1, !dbg !187
  store i64 %42, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !187
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 16384, !dbg !188
  %cmp2.i.not.i = icmp ugt ptr %add.ptr.i.i, %stack, !dbg !189
  br i1 %cmp2.i.not.i, label %if.end3.i, label %object_is_on_stack.exit.i.if.then2.i_crit_edge, !dbg !190

object_is_on_stack.exit.i.if.then2.i_crit_edge:   ; preds = %object_is_on_stack.exit.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !190
  br label %if.then2.i, !dbg !190

if.then2.i:                                       ; preds = %object_is_on_stack.exit.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  %gcov_ctr153.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8
  %43 = add i64 %gcov_ctr153.i, 1
  store i64 %43, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8
  br label %out, !dbg !191

if.end3.i:                                        ; preds = %object_is_on_stack.exit.i
  %gcov_ctr.i.i76 = load i64, ptr @__llvm_gcov_ctr.29, align 8
  %44 = add i64 %gcov_ctr.i.i76, 1
  store i64 %44, ptr @__llvm_gcov_ctr.29, align 8
  %45 = add i64 %gcov_ctr.i.i203.i, 2, !dbg !192
  store i64 %45, ptr @__llvm_gcov_ctr.24, align 8, !dbg !192
  %46 = call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !192
  %and.i.i.i77 = and i32 %46, -16384, !dbg !196
  %47 = inttoptr i32 %and.i.i.i77 to ptr, !dbg !197
  %preempt_count.i.i78 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1, !dbg !198
  %48 = ptrtoint ptr %preempt_count.i.i78 to i32, !dbg !198
  call void @__asan_load4_noabort(i32 %48), !dbg !198
  %49 = load volatile i32, ptr %preempt_count.i.i78, align 4, !dbg !198
  %and5.i = and i32 %49, 15728640, !dbg !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i), !dbg !199
  %tobool6.not.i = icmp eq i32 %and5.i, 0, !dbg !199
  br i1 %tobool6.not.i, label %do.body10.i, label %if.then7.i, !dbg !199

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !175
  %gcov_ctr154.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16
  %50 = add i64 %gcov_ctr154.i, 1
  store i64 %50, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16
  br label %out, !dbg !200

do.body10.i:                                      ; preds = %if.end3.i
  %gcov_ctr.i205.i = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %51 = add i64 %gcov_ctr.i205.i, 1
  store i64 %51, ptr @__llvm_gcov_ctr.30, align 8
  %52 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !dbg !201, !srcloc !205
  %gcov_ctr.i206.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %53 = add i64 %gcov_ctr.i206.i, 1
  store i64 %53, ptr @__llvm_gcov_ctr.31, align 8
  %and.i.i = and i32 %52, 128, !dbg !206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !209
  %tobool23.not.i = icmp eq i32 %and.i.i, 0, !dbg !209
  br i1 %tobool23.not.i, label %if.then24.i, label %do.body10.i.do.end27.i_crit_edge, !dbg !209

do.body10.i.do.end27.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !209
  br label %do.end27.i, !dbg !209

if.then24.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !209
  %gcov_ctr155.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !209
  %54 = add i64 %gcov_ctr155.i, 1, !dbg !209
  store i64 %54, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !209
  call void @trace_hardirqs_off() #18, !dbg !209
  br label %do.end27.i, !dbg !209

do.end27.i:                                       ; preds = %if.then24.i, %do.body10.i.do.end27.i_crit_edge
  call void @llvm.prefetch.p0(ptr nonnull @stack_trace_max_lock, i32 1, i32 3, i32 1) #18, !dbg !210
  %55 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @stack_trace_max_lock, i32 65536) #18, !dbg !214, !srcloc !215
  %asmresult.i.i = extractvalue { i32, i32, i32 } %55, 0, !dbg !214
  %lockval.sroa.0.0.extract.shift.i.i = lshr i32 %asmresult.i.i, 16, !dbg !214
  %conv31.i.i = and i32 %asmresult.i.i, 65535, !dbg !216
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i.i, i32 %conv31.i.i), !dbg !217
  %cmp.not2.i.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i.i, %conv31.i.i, !dbg !217
  br i1 %cmp.not2.i.i, label %do.end27.i.arch_spin_lock.exit.i_crit_edge, label %do.end27.i.while.body.i.i_crit_edge, !dbg !218

do.end27.i.while.body.i.i_crit_edge:              ; preds = %do.end27.i
  br label %while.body.i.i, !dbg !218

do.end27.i.arch_spin_lock.exit.i_crit_edge:       ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !218
  br label %arch_spin_lock.exit.i, !dbg !218

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end27.i.while.body.i.i_crit_edge
  call void asm sideeffect "wfe", "~{memory}"() #18, !dbg !219, !srcloc !220
  %gcov_ctr.i207.i = load i64, ptr @__llvm_gcov_ctr.32, align 8, !dbg !221
  %56 = add i64 %gcov_ctr.i207.i, 1, !dbg !221
  store i64 %56, ptr @__llvm_gcov_ctr.32, align 8, !dbg !221
  %57 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !221
  %conv3.i.i = zext i16 %57 to i32, !dbg !216
  %cmp.not.i208.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i.i, %conv3.i.i, !dbg !217
  br i1 %cmp.not.i208.i, label %while.body.i.i.arch_spin_lock.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge, !dbg !218, !llvm.loop !222

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !218
  br label %while.body.i.i, !dbg !218

while.body.i.i.arch_spin_lock.exit.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !218
  br label %arch_spin_lock.exit.i, !dbg !218

arch_spin_lock.exit.i:                            ; preds = %while.body.i.i.arch_spin_lock.exit.i_crit_edge, %do.end27.i.arch_spin_lock.exit.i_crit_edge
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !224
  %58 = add i64 %gcov_ctr14.i.i, 1, !dbg !224
  store i64 %58, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !dbg !224, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29), !dbg !226
  %tobool28.not.i = icmp eq i32 %29, 0, !dbg !226
  br i1 %tobool28.not.i, label %if.then32.i, label %arch_spin_lock.exit.i.if.end34.i_crit_edge, !dbg !226, !prof !227

arch_spin_lock.exit.i.if.end34.i_crit_edge:       ; preds = %arch_spin_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !226
  br label %if.end34.i, !dbg !226

if.then32.i:                                      ; preds = %arch_spin_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !228
  %gcov_ctr156.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !228
  %59 = add i64 %gcov_ctr156.i, 1, !dbg !228
  store i64 %59, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !228
  %60 = load i32, ptr @check_stack.tracer_frame, align 4, !dbg !228
  %sub33.i = sub i32 %sub1.i, %60, !dbg !229
  br label %if.end34.i, !dbg !230

if.end34.i:                                       ; preds = %if.then32.i, %arch_spin_lock.exit.i.if.end34.i_crit_edge
  %this_size.0.i = phi i32 [ %sub33.i, %if.then32.i ], [ %sub1.i, %arch_spin_lock.exit.i.if.end34.i_crit_edge ], !dbg !231
  %61 = load i32, ptr @stack_trace_max_size, align 4, !dbg !232
  call void @__sanitizer_cov_trace_cmp4(i32 %this_size.0.i, i32 %61), !dbg !233
  %cmp35.not.i = icmp ugt i32 %this_size.0.i, %61, !dbg !233
  br i1 %cmp35.not.i, label %if.end38.i, label %if.then37.i, !dbg !234

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !235
  %gcov_ctr157.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 5), align 8, !dbg !235
  %62 = add i64 %gcov_ctr157.i, 1, !dbg !235
  store i64 %62, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 5), align 8, !dbg !235
  br label %out.i, !dbg !235

if.end38.i:                                       ; preds = %if.end34.i
  store i32 %this_size.0.i, ptr @stack_trace_max_size, align 4, !dbg !236
  %call39.i = call i32 @stack_trace_save(ptr noundef nonnull @stack_dump_trace, i32 noundef 499, i32 noundef 0) #18, !dbg !237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i), !dbg !238
  %cmp40225.not.i = icmp eq i32 %call39.i, 0, !dbg !238
  br i1 %cmp40225.not.i, label %if.end38.i.for.end.i_crit_edge, label %for.body.preheader.i, !dbg !239

if.end38.i.for.end.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !239
  br label %for.end.i, !dbg !239

for.body.preheader.i:                             ; preds = %if.end38.i
  %.promoted.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 6), align 16
  br label %for.body.i, !dbg !239

for.body.i:                                       ; preds = %if.end45.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0226.i = phi i32 [ %inc.i, %if.end45.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %63 = phi i64 [ %67, %if.end45.i.for.body.i_crit_edge ], [ %.promoted.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr [500 x i32], ptr @stack_dump_trace, i32 0, i32 %i.0226.i, !dbg !240
  %64 = ptrtoint ptr %arrayidx.i to i32, !dbg !240
  call void @__asan_load4_noabort(i32 %64), !dbg !240
  %65 = load i32, ptr %arrayidx.i, align 4, !dbg !240
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add37), !dbg !241
  %cmp42.i = icmp eq i32 %65, %add37, !dbg !241
  br i1 %cmp42.i, label %if.then44.i, label %if.end45.i, !dbg !240

if.then44.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !242
  %gcov_ctr159.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 7), align 8, !dbg !242
  %66 = add i64 %gcov_ctr159.i, 1, !dbg !242
  store i64 %66, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 7), align 8, !dbg !242
  br label %for.end.i, !dbg !242

if.end45.i:                                       ; preds = %for.body.i
  %67 = add i64 %63, 1, !dbg !243
  store i64 %67, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 6), align 16, !dbg !243
  %inc.i = add nuw i32 %i.0226.i, 1, !dbg !244
  %exitcond.not.i = icmp eq i32 %inc.i, %call39.i, !dbg !238
  br i1 %exitcond.not.i, label %if.end45.i.if.then48.i_crit_edge, label %if.end45.i.for.body.i_crit_edge, !dbg !239, !llvm.loop !245

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !239
  br label %for.body.i, !dbg !239

if.end45.i.if.then48.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !239
  br label %if.then48.i, !dbg !239

for.end.i:                                        ; preds = %if.then44.i, %if.end38.i.for.end.i_crit_edge
  %i.0224.i = phi i32 [ %i.0226.i, %if.then44.i ], [ 0, %if.end38.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0224.i, i32 %call39.i), !dbg !246
  %cmp46.i = icmp eq i32 %i.0224.i, %call39.i, !dbg !246
  br i1 %cmp46.i, label %for.end.i.if.then48.i_crit_edge, label %for.end.i.if.end49.i_crit_edge, !dbg !247

for.end.i.if.end49.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !247
  br label %if.end49.i, !dbg !247

for.end.i.if.then48.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !247
  br label %if.then48.i, !dbg !247

if.then48.i:                                      ; preds = %for.end.i.if.then48.i_crit_edge, %if.end45.i.if.then48.i_crit_edge
  %gcov_ctr160.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 8), align 16, !dbg !248
  %68 = add i64 %gcov_ctr160.i, 1, !dbg !248
  store i64 %68, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 8), align 16, !dbg !248
  br label %if.end49.i, !dbg !249

if.end49.i:                                       ; preds = %if.then48.i, %for.end.i.if.end49.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.then48.i ], [ %i.0224.i, %for.end.i.if.end49.i_crit_edge ], !dbg !231
  %69 = add i32 %30, 16384, !dbg !250
  %add.i79 = and i32 %69, -16384, !dbg !250
  %70 = inttoptr i32 %add.i79 to ptr, !dbg !251
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %call39.i), !dbg !252
  %cmp51256.i = icmp ult i32 %i.1.i, %call39.i, !dbg !252
  br i1 %cmp51256.i, label %while.body.preheader.i, label %if.end49.i.while.end.i_crit_edge, !dbg !253

if.end49.i.while.end.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !253
  br label %while.end.i, !dbg !253

while.body.preheader.i:                           ; preds = %if.end49.i
  %check_stack.tracer_frame.promoted249.i = load i32, ptr @check_stack.tracer_frame, align 4
  br label %while.body.i, !dbg !253

while.body.i:                                     ; preds = %if.end97.i.while.body.i_crit_edge, %while.body.preheader.i
  %this_size.1261.i = phi i32 [ %this_size.2.lcssa280.i, %if.end97.i.while.body.i_crit_edge ], [ %this_size.0.i, %while.body.preheader.i ]
  %start.0260.i = phi ptr [ %start.1.lcssa278.i, %if.end97.i.while.body.i_crit_edge ], [ %stack, %while.body.preheader.i ]
  %i.2259.i = phi i32 [ %i.5.i, %if.end97.i.while.body.i_crit_edge ], [ %i.1.i, %while.body.preheader.i ]
  %x.0258.i = phi i32 [ %x.1.lcssa275.i, %if.end97.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %check_stack.tracer_frame.promoted254257.i = phi i32 [ %check_stack.tracer_frame.promoted250273.i, %if.end97.i.while.body.i_crit_edge ], [ %check_stack.tracer_frame.promoted249.i, %while.body.preheader.i ]
  %arrayidx53.i = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %x.0258.i, !dbg !254
  %71 = ptrtoint ptr %arrayidx53.i to i32, !dbg !255
  call void @__asan_store4_noabort(i32 %71), !dbg !255
  store i32 %this_size.1261.i, ptr %arrayidx53.i, align 4, !dbg !255
  %cmp55230.i = icmp ult ptr %start.0260.i, %70, !dbg !256
  br i1 %cmp55230.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.then95.i_crit_edge, !dbg !257

while.body.i.if.then95.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !257
  br label %if.then95.i, !dbg !257

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  br label %land.rhs.i, !dbg !257

land.rhs.i:                                       ; preds = %for.inc92.i.land.rhs.i_crit_edge, %while.body.i.land.rhs.i_crit_edge
  %check_stack.tracer_frame.promoted253.i = phi i32 [ %check_stack.tracer_frame.promoted251.i, %for.inc92.i.land.rhs.i_crit_edge ], [ %check_stack.tracer_frame.promoted254257.i, %while.body.i.land.rhs.i_crit_edge ]
  %this_size.2238.i = phi i32 [ %this_size.3.i, %for.inc92.i.land.rhs.i_crit_edge ], [ %this_size.1261.i, %while.body.i.land.rhs.i_crit_edge ]
  %p.0236.i = phi ptr [ %incdec.ptr.i, %for.inc92.i.land.rhs.i_crit_edge ], [ %start.0260.i, %while.body.i.land.rhs.i_crit_edge ]
  %found.0235.i = phi i32 [ %found.1.i, %for.inc92.i.land.rhs.i_crit_edge ], [ 0, %while.body.i.land.rhs.i_crit_edge ]
  %start.1234.i = phi ptr [ %start.2.i, %for.inc92.i.land.rhs.i_crit_edge ], [ %start.0260.i, %while.body.i.land.rhs.i_crit_edge ]
  %i.3233.i = phi i32 [ %i.4.i, %for.inc92.i.land.rhs.i_crit_edge ], [ %i.2259.i, %while.body.i.land.rhs.i_crit_edge ]
  %x.1232.i = phi i32 [ %x.2.i, %for.inc92.i.land.rhs.i_crit_edge ], [ %x.0258.i, %while.body.i.land.rhs.i_crit_edge ]
  %sub.ptr.sub86229231.i = phi i32 [ %sub.ptr.sub86227.i, %for.inc92.i.land.rhs.i_crit_edge ], [ %check_stack.tracer_frame.promoted254257.i, %while.body.i.land.rhs.i_crit_edge ]
  %gcov_ctr161.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 9), align 8, !dbg !258
  %72 = add i64 %gcov_ctr161.i, 1, !dbg !258
  store i64 %72, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 9), align 8, !dbg !258
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3233.i, i32 %call39.i), !dbg !259
  %cmp57.i = icmp ult i32 %i.3233.i, %call39.i, !dbg !259
  br i1 %cmp57.i, label %do.end62.i, label %land.rhs.i.for.end93.i_crit_edge, !dbg !260

land.rhs.i.for.end93.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !260
  br label %for.end93.i, !dbg !260

do.end62.i:                                       ; preds = %land.rhs.i
  %call64.i = call fastcc i32 @__read_once_word_nocheck(ptr noundef %p.0236.i) #18, !dbg !261
  %arrayidx65.i = getelementptr [500 x i32], ptr @stack_dump_trace, i32 0, i32 %i.3233.i, !dbg !262
  %73 = ptrtoint ptr %arrayidx65.i to i32, !dbg !262
  call void @__asan_load4_noabort(i32 %73), !dbg !262
  %74 = load i32, ptr %arrayidx65.i, align 4, !dbg !262
  call void @__sanitizer_cov_trace_cmp4(i32 %call64.i, i32 %74), !dbg !263
  %cmp66.i = icmp eq i32 %call64.i, %74, !dbg !263
  br i1 %cmp66.i, label %if.then68.i, label %do.end62.i.for.inc92.i_crit_edge, !dbg !264

do.end62.i.for.inc92.i_crit_edge:                 ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !264
  br label %for.inc92.i, !dbg !264

if.then68.i:                                      ; preds = %do.end62.i
  %inc69.i = add nuw i32 %i.3233.i, 1, !dbg !265
  %arrayidx71.i = getelementptr [500 x i32], ptr @stack_dump_trace, i32 0, i32 %x.1232.i, !dbg !266
  %75 = ptrtoint ptr %arrayidx71.i to i32, !dbg !267
  call void @__asan_store4_noabort(i32 %75), !dbg !267
  store i32 %call64.i, ptr %arrayidx71.i, align 4, !dbg !267
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.0236.i to i32, !dbg !268
  %sub.ptr.sub.i = sub i32 %add.i79, %sub.ptr.rhs.cast.i, !dbg !268
  %inc72.i = add i32 %x.1232.i, 1, !dbg !269
  %arrayidx73.i = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %x.1232.i, !dbg !270
  %76 = ptrtoint ptr %arrayidx73.i to i32, !dbg !271
  call void @__asan_store4_noabort(i32 %76), !dbg !271
  store i32 %sub.ptr.sub.i, ptr %arrayidx73.i, align 4, !dbg !271
  %add.ptr.i = getelementptr i32, ptr %p.0236.i, i32 1, !dbg !272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub86229231.i), !dbg !273
  %tobool74.not.i = icmp eq i32 %sub.ptr.sub86229231.i, 0, !dbg !273
  br i1 %tobool74.not.i, label %if.then83.i, label %if.then68.i.if.end90.i_crit_edge, !dbg !273, !prof !227

if.then68.i.if.end90.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !273
  br label %if.end90.i, !dbg !273

if.then83.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !274
  %gcov_ctr162.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 10), align 16, !dbg !274
  %77 = add i64 %gcov_ctr162.i, 1, !dbg !274
  store i64 %77, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 10), align 16, !dbg !274
  %sub.ptr.sub86.i = sub i32 %sub.ptr.rhs.cast.i, %30, !dbg !275
  store i32 %sub.ptr.sub86.i, ptr @check_stack.tracer_frame, align 4, !dbg !276
  %78 = load i32, ptr @stack_trace_max_size, align 4, !dbg !277
  %sub89.i = sub i32 %78, %sub.ptr.sub86.i, !dbg !277
  store i32 %sub89.i, ptr @stack_trace_max_size, align 4, !dbg !277
  br label %if.end90.i, !dbg !278

if.end90.i:                                       ; preds = %if.then83.i, %if.then68.i.if.end90.i_crit_edge
  %check_stack.tracer_frame.promoted252.i = phi i32 [ %sub.ptr.sub86.i, %if.then83.i ], [ %check_stack.tracer_frame.promoted253.i, %if.then68.i.if.end90.i_crit_edge ]
  %sub.ptr.sub86228.i = phi i32 [ %sub.ptr.sub86.i, %if.then83.i ], [ %sub.ptr.sub86229231.i, %if.then68.i.if.end90.i_crit_edge ]
  %gcov_ctr163.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 11), align 8, !dbg !279
  %79 = add i64 %gcov_ctr163.i, 1, !dbg !279
  store i64 %79, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 11), align 8, !dbg !279
  br label %for.inc92.i, !dbg !279

for.inc92.i:                                      ; preds = %if.end90.i, %do.end62.i.for.inc92.i_crit_edge
  %check_stack.tracer_frame.promoted251.i = phi i32 [ %check_stack.tracer_frame.promoted252.i, %if.end90.i ], [ %check_stack.tracer_frame.promoted253.i, %do.end62.i.for.inc92.i_crit_edge ]
  %sub.ptr.sub86227.i = phi i32 [ %sub.ptr.sub86228.i, %if.end90.i ], [ %sub.ptr.sub86229231.i, %do.end62.i.for.inc92.i_crit_edge ]
  %x.2.i = phi i32 [ %inc72.i, %if.end90.i ], [ %x.1232.i, %do.end62.i.for.inc92.i_crit_edge ], !dbg !231
  %i.4.i = phi i32 [ %inc69.i, %if.end90.i ], [ %i.3233.i, %do.end62.i.for.inc92.i_crit_edge ], !dbg !231
  %start.2.i = phi ptr [ %add.ptr.i, %if.end90.i ], [ %start.1234.i, %do.end62.i.for.inc92.i_crit_edge ], !dbg !231
  %found.1.i = phi i32 [ 1, %if.end90.i ], [ %found.0235.i, %do.end62.i.for.inc92.i_crit_edge ], !dbg !231
  %this_size.3.i = phi i32 [ %sub.ptr.sub.i, %if.end90.i ], [ %this_size.2238.i, %do.end62.i.for.inc92.i_crit_edge ], !dbg !231
  %gcov_ctr164.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 12), align 16, !dbg !280
  %80 = add i64 %gcov_ctr164.i, 1, !dbg !280
  store i64 %80, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 12), align 16, !dbg !280
  %incdec.ptr.i = getelementptr i32, ptr %p.0236.i, i32 1, !dbg !280
  %cmp55.i = icmp ult ptr %incdec.ptr.i, %70, !dbg !256
  br i1 %cmp55.i, label %for.inc92.i.land.rhs.i_crit_edge, label %for.inc92.i.for.end93.i_crit_edge, !dbg !257, !llvm.loop !281

for.inc92.i.for.end93.i_crit_edge:                ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !257
  br label %for.end93.i, !dbg !257

for.inc92.i.land.rhs.i_crit_edge:                 ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !257
  br label %land.rhs.i, !dbg !257

for.end93.i:                                      ; preds = %for.inc92.i.for.end93.i_crit_edge, %land.rhs.i.for.end93.i_crit_edge
  %check_stack.tracer_frame.promoted250.i = phi i32 [ %check_stack.tracer_frame.promoted253.i, %land.rhs.i.for.end93.i_crit_edge ], [ %check_stack.tracer_frame.promoted251.i, %for.inc92.i.for.end93.i_crit_edge ]
  %x.1.lcssa.i = phi i32 [ %x.1232.i, %land.rhs.i.for.end93.i_crit_edge ], [ %x.2.i, %for.inc92.i.for.end93.i_crit_edge ], !dbg !231
  %i.3.lcssa.i = phi i32 [ %i.3233.i, %land.rhs.i.for.end93.i_crit_edge ], [ %i.4.i, %for.inc92.i.for.end93.i_crit_edge ], !dbg !231
  %start.1.lcssa.i = phi ptr [ %start.1234.i, %land.rhs.i.for.end93.i_crit_edge ], [ %start.2.i, %for.inc92.i.for.end93.i_crit_edge ], !dbg !231
  %found.0.lcssa.i = phi i32 [ %found.0235.i, %land.rhs.i.for.end93.i_crit_edge ], [ %found.1.i, %for.inc92.i.for.end93.i_crit_edge ], !dbg !231
  %this_size.2.lcssa.i = phi i32 [ %this_size.2238.i, %land.rhs.i.for.end93.i_crit_edge ], [ %this_size.3.i, %for.inc92.i.for.end93.i_crit_edge ], !dbg !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0.lcssa.i), !dbg !283
  %tobool94.not.i = icmp eq i32 %found.0.lcssa.i, 0, !dbg !283
  br i1 %tobool94.not.i, label %for.end93.i.if.then95.i_crit_edge, label %for.end93.i.if.end97.i_crit_edge, !dbg !284

for.end93.i.if.end97.i_crit_edge:                 ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !284
  br label %if.end97.i, !dbg !284

for.end93.i.if.then95.i_crit_edge:                ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !284
  br label %if.then95.i, !dbg !284

if.then95.i:                                      ; preds = %for.end93.i.if.then95.i_crit_edge, %while.body.i.if.then95.i_crit_edge
  %this_size.2.lcssa281.i = phi i32 [ %this_size.2.lcssa.i, %for.end93.i.if.then95.i_crit_edge ], [ %this_size.1261.i, %while.body.i.if.then95.i_crit_edge ]
  %start.1.lcssa279.i = phi ptr [ %start.1.lcssa.i, %for.end93.i.if.then95.i_crit_edge ], [ %start.0260.i, %while.body.i.if.then95.i_crit_edge ]
  %i.3.lcssa277.i = phi i32 [ %i.3.lcssa.i, %for.end93.i.if.then95.i_crit_edge ], [ %i.2259.i, %while.body.i.if.then95.i_crit_edge ]
  %x.1.lcssa276.i = phi i32 [ %x.1.lcssa.i, %for.end93.i.if.then95.i_crit_edge ], [ %x.0258.i, %while.body.i.if.then95.i_crit_edge ]
  %check_stack.tracer_frame.promoted250274.i = phi i32 [ %check_stack.tracer_frame.promoted250.i, %for.end93.i.if.then95.i_crit_edge ], [ %check_stack.tracer_frame.promoted254257.i, %while.body.i.if.then95.i_crit_edge ]
  %gcov_ctr165.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 13), align 8, !dbg !285
  %81 = add i64 %gcov_ctr165.i, 1, !dbg !285
  store i64 %81, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 13), align 8, !dbg !285
  %inc96.i = add i32 %i.3.lcssa277.i, 1, !dbg !285
  br label %if.end97.i, !dbg !286

if.end97.i:                                       ; preds = %if.then95.i, %for.end93.i.if.end97.i_crit_edge
  %this_size.2.lcssa280.i = phi i32 [ %this_size.2.lcssa.i, %for.end93.i.if.end97.i_crit_edge ], [ %this_size.2.lcssa281.i, %if.then95.i ]
  %start.1.lcssa278.i = phi ptr [ %start.1.lcssa.i, %for.end93.i.if.end97.i_crit_edge ], [ %start.1.lcssa279.i, %if.then95.i ]
  %x.1.lcssa275.i = phi i32 [ %x.1.lcssa.i, %for.end93.i.if.end97.i_crit_edge ], [ %x.1.lcssa276.i, %if.then95.i ]
  %check_stack.tracer_frame.promoted250273.i = phi i32 [ %check_stack.tracer_frame.promoted250.i, %for.end93.i.if.end97.i_crit_edge ], [ %check_stack.tracer_frame.promoted250274.i, %if.then95.i ]
  %i.5.i = phi i32 [ %i.3.lcssa.i, %for.end93.i.if.end97.i_crit_edge ], [ %inc96.i, %if.then95.i ], !dbg !231
  %gcov_ctr166.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 14), align 16, !dbg !287
  %82 = add i64 %gcov_ctr166.i, 1, !dbg !287
  store i64 %82, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 14), align 16, !dbg !287
  %cmp51.i = icmp ult i32 %i.5.i, %call39.i, !dbg !252
  br i1 %cmp51.i, label %if.end97.i.while.body.i_crit_edge, label %if.end97.i.while.end.i_crit_edge, !dbg !253, !llvm.loop !288

if.end97.i.while.end.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !253
  br label %while.end.i, !dbg !253

if.end97.i.while.body.i_crit_edge:                ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !253
  br label %while.body.i, !dbg !253

while.end.i:                                      ; preds = %if.end97.i.while.end.i_crit_edge, %if.end49.i.while.end.i_crit_edge
  %x.0.lcssa.i = phi i32 [ 0, %if.end49.i.while.end.i_crit_edge ], [ %x.1.lcssa275.i, %if.end97.i.while.end.i_crit_edge ], !dbg !289
  store i32 %x.0.lcssa.i, ptr @stack_trace_nr_entries, align 4, !dbg !290
  %gcov_ctr.i209.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !291
  %83 = add i64 %gcov_ctr.i209.i, 1, !dbg !291
  store i64 %83, ptr @__llvm_gcov_ctr.24, align 8, !dbg !291
  %84 = call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !291
  %and.i210.i = and i32 %84, -16384, !dbg !293
  %85 = inttoptr i32 %and.i210.i to ptr, !dbg !294
  %task.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2, !dbg !295
  %86 = ptrtoint ptr %task.i to i32, !dbg !295
  call void @__asan_load4_noabort(i32 %86), !dbg !295
  %87 = load ptr, ptr %task.i, align 8, !dbg !295
  %gcov_ctr.i211.i = load i64, ptr @__llvm_gcov_ctr.34, align 8
  %88 = add i64 %gcov_ctr.i211.i, 1
  store i64 %88, ptr @__llvm_gcov_ctr.34, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 1, !dbg !296
  %89 = ptrtoint ptr %stack.i.i to i32, !dbg !296
  call void @__asan_load4_noabort(i32 %89), !dbg !296
  %90 = load ptr, ptr %stack.i.i, align 4, !dbg !296
  %add.ptr.i212.i = getelementptr %struct.thread_info, ptr %90, i32 1, !dbg !299
  %91 = ptrtoint ptr %add.ptr.i212.i to i32, !dbg !295
  call void @__asan_load4_noabort(i32 %91), !dbg !295
  %92 = load i32, ptr %add.ptr.i212.i, align 4, !dbg !295
  call void @__sanitizer_cov_trace_const_cmp4(i32 1470918301, i32 %92), !dbg !295
  %cmp100.not.i = icmp eq i32 %92, 1470918301, !dbg !295
  br i1 %cmp100.not.i, label %if.end109.i, label %if.then102.i, !dbg !295

if.then102.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !300
  %gcov_ctr167.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 15), align 8, !dbg !300
  %93 = add i64 %gcov_ctr167.i, 1, !dbg !300
  store i64 %93, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 15), align 8, !dbg !300
  call fastcc void @print_max_stack() #18, !dbg !300
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/trace/trace_stack.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #18, !dbg !301, !srcloc !302
  unreachable, !dbg !301

if.end109.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !295
  %gcov_ctr168.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 16), align 16, !dbg !295
  %94 = add i64 %gcov_ctr168.i, 1, !dbg !295
  store i64 %94, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 16), align 16, !dbg !295
  br label %out.i, !dbg !295

out.i:                                            ; preds = %if.end109.i, %if.then37.i
  %gcov_ctr.i213.i = load i64, ptr @__llvm_gcov_ctr.36, align 8, !dbg !303
  %95 = add i64 %gcov_ctr.i213.i, 1, !dbg !303
  store i64 %95, ptr @__llvm_gcov_ctr.36, align 8, !dbg !303
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !dbg !303, !srcloc !306
  %96 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !307
  %inc.i.i = add i16 %96, 1, !dbg !307
  store i16 %inc.i.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !307
  %gcov_ctr.i.i214.i = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !308
  %97 = add i64 %gcov_ctr.i.i214.i, 1, !dbg !308
  store i64 %97, ptr @__llvm_gcov_ctr.39, align 8, !dbg !308
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !dbg !308, !srcloc !311
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !dbg !312, !srcloc !313
  %gcov_ctr.i215.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %98 = add i64 %gcov_ctr.i215.i, 1
  store i64 %98, ptr @__llvm_gcov_ctr.31, align 8
  br i1 %tobool23.not.i, label %if.then119.i, label %out.i.do.body121.i_crit_edge, !dbg !314

out.i.do.body121.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !314
  br label %do.body121.i, !dbg !314

if.then119.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !314
  %gcov_ctr169.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 17), align 8, !dbg !314
  %99 = add i64 %gcov_ctr169.i, 1, !dbg !314
  store i64 %99, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 17), align 8, !dbg !314
  call void @trace_hardirqs_on() #18, !dbg !314
  br label %do.body121.i, !dbg !314

do.body121.i:                                     ; preds = %if.then119.i, %out.i.do.body121.i_crit_edge
  %gcov_ctr.i217.i = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !315
  %100 = add i64 %gcov_ctr.i217.i, 1, !dbg !315
  store i64 %100, ptr @__llvm_gcov_ctr.37, align 8, !dbg !315
  %gcov_ctr.i.i218.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %101 = add i64 %gcov_ctr.i.i218.i, 1
  store i64 %101, ptr @__llvm_gcov_ctr.40, align 8
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !dbg !319, !srcloc !322
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %103 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %103, ptr @__llvm_gcov_ctr.31, align 8
  %and.i.i219.i = and i32 %102, 128, !dbg !323
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i219.i), !dbg !314
  %tobool129.not.i = icmp eq i32 %and.i.i219.i, 0, !dbg !314
  br i1 %tobool129.not.i, label %if.then138.i, label %do.body121.i.do.end141.i_crit_edge, !dbg !314, !prof !227

do.body121.i.do.end141.i_crit_edge:               ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !314
  br label %do.end141.i, !dbg !314

if.then138.i:                                     ; preds = %do.body121.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !314
  %gcov_ctr170.i = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 18), align 16, !dbg !314
  %104 = add i64 %gcov_ctr170.i, 1, !dbg !314
  store i64 %104, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 18), align 16, !dbg !314
  call void @warn_bogus_irq_restore() #18, !dbg !314
  br label %do.end141.i, !dbg !314

do.end141.i:                                      ; preds = %if.then138.i, %do.body121.i.do.end141.i_crit_edge
  %gcov_ctr.i220.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %105 = add i64 %gcov_ctr.i220.i, 1
  store i64 %105, ptr @__llvm_gcov_ctr.38, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #18, !dbg !325, !srcloc !328
  br label %out, !dbg !329

out:                                              ; preds = %do.end141.i, %if.then7.i, %if.then2.i, %if.then.i, %if.then35, %if.then
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %106 = add i64 %gcov_ctr.i80, 1
  store i64 %106, ptr @__llvm_gcov_ctr.23, align 8
  %107 = ptrtoint ptr %cpu to i32, !dbg !330
  call void @__asan_load4_noabort(i32 %107), !dbg !330
  %108 = load i32, ptr %cpu, align 4, !dbg !330
  %arrayidx53 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108, !dbg !330
  %109 = ptrtoint ptr %arrayidx53 to i32, !dbg !330
  call void @__asan_load4_noabort(i32 %109), !dbg !330
  %110 = load i32, ptr %arrayidx53, align 4, !dbg !330
  %add54 = add i32 %110, ptrtoint (ptr @disable_stack_tracer to i32), !dbg !330
  %111 = inttoptr i32 %add54 to ptr, !dbg !330
  %112 = ptrtoint ptr %111 to i32, !dbg !330
  call void @__asan_load4_noabort(i32 %112), !dbg !330
  %113 = load i32, ptr %111, align 4, !dbg !330
  %add55 = add i32 %113, -1, !dbg !330
  store i32 %add55, ptr %111, align 4, !dbg !330
  call void asm sideeffect "", "~{memory}"() #18, !dbg !331, !srcloc !332
  %gcov_ctr.i66 = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %114 = add i64 %gcov_ctr.i66, 1
  store i64 %114, ptr @__llvm_gcov_ctr.26, align 8
  %gcov_ctr.i.i67 = load i64, ptr @__llvm_gcov_ctr.27, align 8, !dbg !333
  %115 = add i64 %gcov_ctr.i.i67, 1, !dbg !333
  store i64 %115, ptr @__llvm_gcov_ctr.27, align 8, !dbg !333
  %gcov_ctr.i.i.i68 = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !337
  %116 = add i64 %gcov_ctr.i.i.i68, 1, !dbg !337
  store i64 %116, ptr @__llvm_gcov_ctr.24, align 8, !dbg !337
  %117 = call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !337
  %and.i.i.i69 = and i32 %117, -16384, !dbg !339
  %118 = inttoptr i32 %and.i.i.i69 to ptr, !dbg !340
  %preempt_count.i.i70 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 1, !dbg !341
  %119 = ptrtoint ptr %preempt_count.i.i70 to i32, !dbg !342
  call void @__asan_load4_noabort(i32 %119), !dbg !342
  %120 = load volatile i32, ptr %preempt_count.i.i70, align 4, !dbg !342
  %sub.i = add i32 %120, -1, !dbg !342
  store volatile i32 %sub.i, ptr %preempt_count.i.i70, align 4, !dbg !342
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stack) #18, !dbg !343
  ret void, !dbg !343
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__read_once_word_nocheck(ptr noundef %addr) unnamed_addr #6 align 64 !dbg !344 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !346
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.33, align 8
  %1 = load volatile i32, ptr %addr, align 4, !dbg !347
  ret i32 %1, !dbg !348
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_max_stack() unnamed_addr #0 align 64 !dbg !349 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !350
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.35, align 16, !dbg !351
  %0 = add i64 %gcov_ctr, 1, !dbg !351
  store i64 %0, ptr @__llvm_gcov_ctr.35, align 16, !dbg !351
  %1 = load i32, ptr @stack_trace_nr_entries, align 4, !dbg !351
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1) #19, !dbg !351
  %2 = load i32, ptr @stack_trace_nr_entries, align 4, !dbg !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2), !dbg !353
  %cmp22.not = icmp eq i32 %2, 0, !dbg !353
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !354

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !354

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !354
  br label %for.end, !dbg !354

for.body:                                         ; preds = %do.end7.for.body_crit_edge, %entry.for.body_crit_edge
  %3 = phi i32 [ %17, %do.end7.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %i.023 = phi i32 [ %add, %do.end7.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add nuw i32 %i.023, 1, !dbg !355
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3), !dbg !356
  %cmp1 = icmp eq i32 %add, %3, !dbg !356
  br i1 %cmp1, label %if.then, label %if.else, !dbg !357

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17, !dbg !358
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !358
  %4 = add i64 %gcov_ctr12, 1, !dbg !358
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !358
  %arrayidx = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %i.023, !dbg !359
  %5 = ptrtoint ptr %arrayidx to i32, !dbg !359
  call void @__asan_load4_noabort(i32 %5), !dbg !359
  %6 = load i32, ptr %arrayidx, align 4, !dbg !359
  br label %do.end7, !dbg !360

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17, !dbg !361
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !361
  %7 = add i64 %gcov_ctr13, 1, !dbg !361
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !361
  %arrayidx2 = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %i.023, !dbg !362
  %8 = ptrtoint ptr %arrayidx2 to i32, !dbg !362
  call void @__asan_load4_noabort(i32 %8), !dbg !362
  %9 = load i32, ptr %arrayidx2, align 4, !dbg !362
  %arrayidx4 = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %add, !dbg !363
  %10 = ptrtoint ptr %arrayidx4 to i32, !dbg !363
  call void @__asan_load4_noabort(i32 %10), !dbg !363
  %11 = load i32, ptr %arrayidx4, align 4, !dbg !363
  %sub = sub i32 %9, %11, !dbg !364
  br label %do.end7

do.end7:                                          ; preds = %if.else, %if.then
  %size.0 = phi i32 [ %6, %if.then ], [ %sub, %if.else ], !dbg !365
  %arrayidx9 = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %i.023, !dbg !366
  %12 = ptrtoint ptr %arrayidx9 to i32, !dbg !366
  call void @__asan_load4_noabort(i32 %12), !dbg !366
  %13 = load i32, ptr %arrayidx9, align 4, !dbg !366
  %arrayidx10 = getelementptr [500 x i32], ptr @stack_dump_trace, i32 0, i32 %i.023, !dbg !366
  %14 = ptrtoint ptr %arrayidx10 to i32, !dbg !366
  call void @__asan_load4_noabort(i32 %14), !dbg !366
  %15 = load i32, ptr %arrayidx10, align 4, !dbg !366
  %16 = inttoptr i32 %15 to ptr, !dbg !366
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.023, i32 noundef %13, i32 noundef %size.0, ptr noundef %16) #19, !dbg !366
  %17 = load i32, ptr @stack_trace_nr_entries, align 4, !dbg !352
  %cmp = icmp ult i32 %add, %17, !dbg !353
  br i1 %cmp, label %do.end7.for.body_crit_edge, label %do.end7.for.end_crit_edge, !dbg !354, !llvm.loop !367

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17, !dbg !354
  br label %for.end, !dbg !354

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17, !dbg !354
  br label %for.body, !dbg !354

for.end:                                          ; preds = %do.end7.for.end_crit_edge, %entry.for.end_crit_edge
  ret void, !dbg !369
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ftrace_set_early_filter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_max_size_read(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 !dbg !370 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17, !dbg !371
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.42, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16, !dbg !372
  %1 = ptrtoint ptr %private_data to i32, !dbg !372
  call void @__asan_load4_noabort(i32 %1), !dbg !372
  %2 = load ptr, ptr %private_data, align 4, !dbg !372
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #18, !dbg !373
  %3 = call ptr @memset(ptr %buf, i32 255, i32 64), !dbg !374
  %4 = ptrtoint ptr %2 to i32, !dbg !375
  call void @__asan_load4_noabort(i32 %4), !dbg !375
  %5 = load i32, ptr %2, align 4, !dbg !375
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.14, i32 noundef %5), !dbg !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call), !dbg !377
  %cmp = icmp ugt i32 %call, 64, !dbg !377
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !378

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !378
  br label %if.end, !dbg !378

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !379
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !379
  %6 = add i64 %gcov_ctr3, 1, !dbg !379
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !379
  br label %if.end, !dbg !380

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ 64, %if.then ], [ %call, %entry.if.end_crit_edge ], !dbg !381
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %r.0) #18, !dbg !382
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #18, !dbg !383
  ret i32 %call2, !dbg !384
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_max_size_write(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 !dbg !385 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17, !dbg !386
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16, !dbg !387
  %0 = ptrtoint ptr %private_data to i32, !dbg !387
  call void @__asan_load4_noabort(i32 %0), !dbg !387
  %1 = load ptr, ptr %private_data, align 4, !dbg !387
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #18, !dbg !388
  %2 = ptrtoint ptr %val to i32, !dbg !389
  call void @__asan_store4_noabort(i32 %2), !dbg !389
  store i32 -1, ptr %val, align 4, !dbg !389, !annotation !137
  %call = call i32 @kstrtoul_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %val) #18, !dbg !390
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !391
  %tobool.not = icmp eq i32 %call, 0, !dbg !391
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge, !dbg !391

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !391
  br label %cleanup, !dbg !391

do.body1:                                         ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.30, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.30, align 8
  %4 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !dbg !392, !srcloc !205
  %gcov_ctr.i96 = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %5 = add i64 %gcov_ctr.i96, 1
  store i64 %5, ptr @__llvm_gcov_ctr.31, align 8
  %and.i = and i32 %4, 128, !dbg !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !396
  %tobool10.not = icmp eq i32 %and.i, 0, !dbg !396
  br i1 %tobool10.not, label %if.then11, label %do.body1.do.end14_crit_edge, !dbg !396

do.body1.do.end14_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17, !dbg !396
  br label %do.end14, !dbg !396

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17, !dbg !396
  %gcov_ctr88 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !396
  %6 = add i64 %gcov_ctr88, 1, !dbg !396
  store i64 %6, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !396
  call void @trace_hardirqs_off() #18, !dbg !396
  br label %do.end14, !dbg !396

do.end14:                                         ; preds = %if.then11, %do.body1.do.end14_crit_edge
  %gcov_ctr.i97 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %7 = add i64 %gcov_ctr.i97, 1
  store i64 %7, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i98 = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !397
  %8 = add i64 %gcov_ctr.i98, 1, !dbg !397
  store i64 %8, ptr @__llvm_gcov_ctr.24, align 8, !dbg !397
  %9 = call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !397
  %and.i99 = and i32 %9, -16384, !dbg !399
  %10 = inttoptr i32 %and.i99 to ptr, !dbg !400
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3, !dbg !401
  %11 = ptrtoint ptr %cpu to i32, !dbg !401
  call void @__asan_load4_noabort(i32 %11), !dbg !401
  %12 = load i32, ptr %cpu, align 4, !dbg !401
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12, !dbg !401
  %13 = ptrtoint ptr %arrayidx to i32, !dbg !401
  call void @__asan_load4_noabort(i32 %13), !dbg !401
  %14 = load i32, ptr %arrayidx, align 4, !dbg !401
  %add = add i32 %14, ptrtoint (ptr @disable_stack_tracer to i32), !dbg !401
  %15 = inttoptr i32 %add to ptr, !dbg !401
  %16 = ptrtoint ptr %15 to i32, !dbg !401
  call void @__asan_load4_noabort(i32 %16), !dbg !401
  %17 = load i32, ptr %15, align 4, !dbg !401
  %add27 = add i32 %17, 1, !dbg !401
  store i32 %add27, ptr %15, align 4, !dbg !401
  call void @llvm.prefetch.p0(ptr nonnull @stack_trace_max_lock, i32 1, i32 3, i32 1) #18, !dbg !402
  %18 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @stack_trace_max_lock, i32 65536) #18, !dbg !404, !srcloc !215
  %asmresult.i = extractvalue { i32, i32, i32 } %18, 0, !dbg !404
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16, !dbg !404
  %conv31.i = and i32 %asmresult.i, 65535, !dbg !405
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i, i32 %conv31.i), !dbg !406
  %cmp.not2.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv31.i, !dbg !406
  br i1 %cmp.not2.i, label %do.end14.arch_spin_lock.exit_crit_edge, label %do.end14.while.body.i_crit_edge, !dbg !407

do.end14.while.body.i_crit_edge:                  ; preds = %do.end14
  br label %while.body.i, !dbg !407

do.end14.arch_spin_lock.exit_crit_edge:           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17, !dbg !407
  br label %arch_spin_lock.exit, !dbg !407

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end14.while.body.i_crit_edge
  call void asm sideeffect "wfe", "~{memory}"() #18, !dbg !408, !srcloc !220
  %gcov_ctr.i100 = load i64, ptr @__llvm_gcov_ctr.32, align 8, !dbg !409
  %19 = add i64 %gcov_ctr.i100, 1, !dbg !409
  store i64 %19, ptr @__llvm_gcov_ctr.32, align 8, !dbg !409
  %20 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !409
  %conv3.i = zext i16 %20 to i32, !dbg !405
  %cmp.not.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i, !dbg !406
  br i1 %cmp.not.i, label %while.body.i.arch_spin_lock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !dbg !407, !llvm.loop !410

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !407
  br label %while.body.i, !dbg !407

while.body.i.arch_spin_lock.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !407
  br label %arch_spin_lock.exit, !dbg !407

arch_spin_lock.exit:                              ; preds = %while.body.i.arch_spin_lock.exit_crit_edge, %do.end14.arch_spin_lock.exit_crit_edge
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !412
  %21 = add i64 %gcov_ctr14.i, 1, !dbg !412
  store i64 %21, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !412
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !dbg !412, !srcloc !225
  %22 = ptrtoint ptr %val to i32, !dbg !413
  call void @__asan_load4_noabort(i32 %22), !dbg !413
  %23 = load i32, ptr %val, align 4, !dbg !413
  %24 = ptrtoint ptr %1 to i32, !dbg !414
  call void @__asan_store4_noabort(i32 %24), !dbg !414
  store i32 %23, ptr %1, align 4, !dbg !414
  %gcov_ctr.i101 = load i64, ptr @__llvm_gcov_ctr.36, align 8, !dbg !415
  %25 = add i64 %gcov_ctr.i101, 1, !dbg !415
  store i64 %25, ptr @__llvm_gcov_ctr.36, align 8, !dbg !415
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !dbg !415, !srcloc !306
  %26 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !417
  %inc.i = add i16 %26, 1, !dbg !417
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !417
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !418
  %27 = add i64 %gcov_ctr.i.i, 1, !dbg !418
  store i64 %27, ptr @__llvm_gcov_ctr.39, align 8, !dbg !418
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !dbg !418, !srcloc !311
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !dbg !420, !srcloc !313
  %gcov_ctr.i102 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %28 = add i64 %gcov_ctr.i102, 1
  store i64 %28, ptr @__llvm_gcov_ctr.23, align 8
  %29 = ptrtoint ptr %cpu to i32, !dbg !421
  call void @__asan_load4_noabort(i32 %29), !dbg !421
  %30 = load i32, ptr %cpu, align 4, !dbg !421
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30, !dbg !421
  %31 = ptrtoint ptr %arrayidx47 to i32, !dbg !421
  call void @__asan_load4_noabort(i32 %31), !dbg !421
  %32 = load i32, ptr %arrayidx47, align 4, !dbg !421
  %add48 = add i32 %32, ptrtoint (ptr @disable_stack_tracer to i32), !dbg !421
  %33 = inttoptr i32 %add48 to ptr, !dbg !421
  %34 = ptrtoint ptr %33 to i32, !dbg !421
  call void @__asan_load4_noabort(i32 %34), !dbg !421
  %35 = load i32, ptr %33, align 4, !dbg !421
  %add49 = add i32 %35, -1, !dbg !421
  store i32 %add49, ptr %33, align 4, !dbg !421
  %gcov_ctr.i103 = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %36 = add i64 %gcov_ctr.i103, 1
  store i64 %36, ptr @__llvm_gcov_ctr.31, align 8
  br i1 %tobool10.not, label %if.then63, label %arch_spin_lock.exit.do.body65_crit_edge, !dbg !422

arch_spin_lock.exit.do.body65_crit_edge:          ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #17, !dbg !422
  br label %do.body65, !dbg !422

if.then63:                                        ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #17, !dbg !422
  %gcov_ctr89 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !422
  %37 = add i64 %gcov_ctr89, 1, !dbg !422
  store i64 %37, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !422
  call void @trace_hardirqs_on() #18, !dbg !422
  br label %do.body65, !dbg !422

do.body65:                                        ; preds = %if.then63, %arch_spin_lock.exit.do.body65_crit_edge
  %gcov_ctr.i105 = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !423
  %38 = add i64 %gcov_ctr.i105, 1, !dbg !423
  store i64 %38, ptr @__llvm_gcov_ctr.37, align 8, !dbg !423
  %gcov_ctr.i.i106 = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %39 = add i64 %gcov_ctr.i.i106, 1
  store i64 %39, ptr @__llvm_gcov_ctr.40, align 8
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !dbg !425, !srcloc !322
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %41 = add i64 %gcov_ctr.i2.i, 1
  store i64 %41, ptr @__llvm_gcov_ctr.31, align 8
  %and.i.i = and i32 %40, 128, !dbg !427
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !422
  %tobool73.not = icmp eq i32 %and.i.i, 0, !dbg !422
  br i1 %tobool73.not, label %if.then77, label %do.body65.do.end80_crit_edge, !dbg !422, !prof !227

do.body65.do.end80_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #17, !dbg !422
  br label %do.end80, !dbg !422

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #17, !dbg !422
  %gcov_ctr90 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 3), align 8, !dbg !422
  %42 = add i64 %gcov_ctr90, 1, !dbg !422
  store i64 %42, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 3), align 8, !dbg !422
  call void @warn_bogus_irq_restore() #18, !dbg !422
  br label %do.end80, !dbg !422

do.end80:                                         ; preds = %if.then77, %do.body65.do.end80_crit_edge
  %gcov_ctr.i107 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %43 = add i64 %gcov_ctr.i107, 1
  store i64 %43, ptr @__llvm_gcov_ctr.38, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #18, !dbg !429, !srcloc !328
  br label %cleanup, !dbg !431

cleanup:                                          ; preds = %do.end80, %entry.cleanup_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 4), %do.end80 ], [ @__llvm_gcov_ctr.43, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %count, %do.end80 ], [ %call, %entry.cleanup_crit_edge ], !dbg !432
  %44 = ptrtoint ptr %.sink to i32, !dbg !432
  call void @__asan_load8_noabort(i32 %44), !dbg !432
  %gcov_ctr91 = load i64, ptr %.sink, align 16, !dbg !432
  %45 = add i64 %gcov_ctr91, 1, !dbg !432
  store i64 %45, ptr %.sink, align 16, !dbg !432
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #18, !dbg !433
  ret i32 %retval.0, !dbg !433
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_open_generic(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_trace_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 !dbg !434 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !435
  %call = tail call i32 @security_locked_down(i32 noundef 22) #18, !dbg !436
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !437
  %tobool.not = icmp eq i32 %call, 0, !dbg !437
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !438
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.44, align 8, !dbg !438
  %0 = add i64 %gcov_ctr, 1, !dbg !438
  store i64 %0, ptr @__llvm_gcov_ctr.44, align 8, !dbg !438
  br label %cleanup, !dbg !439

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !440
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !440
  %1 = add i64 %gcov_ctr2, 1, !dbg !440
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !440
  %call1 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @stack_trace_seq_ops) #18, !dbg !441
  br label %cleanup, !dbg !442

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ], !dbg !443
  ret i32 %retval.0, !dbg !444
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @t_start(ptr noundef writeonly %m, ptr nocapture noundef readonly %pos) #0 align 64 !dbg !445 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !446
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.37, align 8, !dbg !447
  %0 = add i64 %gcov_ctr.i, 1, !dbg !447
  store i64 %0, ptr @__llvm_gcov_ctr.37, align 8, !dbg !447
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.40, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !dbg !449, !srcloc !322
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %3 = add i64 %gcov_ctr.i2.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.31, align 8
  %and.i.i = and i32 %2, 128, !dbg !451
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !453
  %tobool.not = icmp eq i32 %and.i.i, 0, !dbg !453
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.49, align 8, !dbg !454
  %4 = add i64 %gcov_ctr.i20, 1, !dbg !454
  store i64 %4, ptr @__llvm_gcov_ctr.49, align 8, !dbg !454
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #18, !dbg !454, !srcloc !457
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !453

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !453
  br label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !453
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.45, align 16, !dbg !453
  %5 = add i64 %gcov_ctr, 1, !dbg !453
  store i64 %5, ptr @__llvm_gcov_ctr.45, align 16, !dbg !453
  tail call void @trace_hardirqs_off() #18, !dbg !453
  br label %if.end, !dbg !453

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %6 = add i64 %gcov_ctr.i21, 1
  store i64 %6, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i22 = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !458
  %7 = add i64 %gcov_ctr.i22, 1, !dbg !458
  store i64 %7, ptr @__llvm_gcov_ctr.24, align 8, !dbg !458
  %8 = tail call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !458
  %and.i = and i32 %8, -16384, !dbg !460
  %9 = inttoptr i32 %and.i to ptr, !dbg !461
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !462
  %10 = ptrtoint ptr %cpu to i32, !dbg !462
  call void @__asan_load4_noabort(i32 %10), !dbg !462
  %11 = load i32, ptr %cpu, align 4, !dbg !462
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11, !dbg !462
  %12 = ptrtoint ptr %arrayidx to i32, !dbg !462
  call void @__asan_load4_noabort(i32 %12), !dbg !462
  %13 = load i32, ptr %arrayidx, align 4, !dbg !462
  %add = add i32 %13, ptrtoint (ptr @disable_stack_tracer to i32), !dbg !462
  %14 = inttoptr i32 %add to ptr, !dbg !462
  %15 = ptrtoint ptr %14 to i32, !dbg !462
  call void @__asan_load4_noabort(i32 %15), !dbg !462
  %16 = load i32, ptr %14, align 4, !dbg !462
  %add11 = add i32 %16, 1, !dbg !462
  store i32 %add11, ptr %14, align 4, !dbg !462
  tail call void @llvm.prefetch.p0(ptr nonnull @stack_trace_max_lock, i32 1, i32 3, i32 1) #18, !dbg !463
  %17 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @stack_trace_max_lock, i32 65536) #18, !dbg !465, !srcloc !215
  %asmresult.i = extractvalue { i32, i32, i32 } %17, 0, !dbg !465
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16, !dbg !465
  %conv31.i = and i32 %asmresult.i, 65535, !dbg !466
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i, i32 %conv31.i), !dbg !467
  %cmp.not2.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv31.i, !dbg !467
  br i1 %cmp.not2.i, label %if.end.arch_spin_lock.exit_crit_edge, label %if.end.while.body.i_crit_edge, !dbg !468

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i, !dbg !468

if.end.arch_spin_lock.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17, !dbg !468
  br label %arch_spin_lock.exit, !dbg !468

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #18, !dbg !469, !srcloc !220
  %gcov_ctr.i23 = load i64, ptr @__llvm_gcov_ctr.32, align 8, !dbg !470
  %18 = add i64 %gcov_ctr.i23, 1, !dbg !470
  store i64 %18, ptr @__llvm_gcov_ctr.32, align 8, !dbg !470
  %19 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !470
  %conv3.i = zext i16 %19 to i32, !dbg !466
  %cmp.not.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i, !dbg !467
  br i1 %cmp.not.i, label %while.body.i.arch_spin_lock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !dbg !468, !llvm.loop !471

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !468
  br label %while.body.i, !dbg !468

while.body.i.arch_spin_lock.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17, !dbg !468
  br label %arch_spin_lock.exit, !dbg !468

arch_spin_lock.exit:                              ; preds = %while.body.i.arch_spin_lock.exit_crit_edge, %if.end.arch_spin_lock.exit_crit_edge
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !473
  %20 = add i64 %gcov_ctr14.i, 1, !dbg !473
  store i64 %20, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !dbg !473, !srcloc !225
  %21 = ptrtoint ptr %pos to i32, !dbg !474
  call void @__asan_load8_noabort(i32 %21), !dbg !474
  %22 = load i64, ptr %pos, align 8, !dbg !474
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22), !dbg !475
  %cmp = icmp eq i64 %22, 0, !dbg !475
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !474

if.then14:                                        ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #17, !dbg !476
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !476
  %23 = add i64 %gcov_ctr17, 1, !dbg !476
  store i64 %23, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !476
  br label %return, !dbg !476

if.end15:                                         ; preds = %arch_spin_lock.exit
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !477
  %24 = add i64 %gcov_ctr18, 1, !dbg !477
  store i64 %24, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 2), align 16, !dbg !477
  %25 = ptrtoint ptr %pos to i32, !dbg !478
  call void @__asan_load8_noabort(i32 %25), !dbg !478
  %26 = load i64, ptr %pos, align 8, !dbg !478
  %27 = trunc i64 %26 to i32, !dbg !478
  %conv.i = add i32 %27, -1, !dbg !478
  %28 = load i32, ptr @stack_trace_nr_entries, align 4, !dbg !481
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %28), !dbg !482
  %cmp.not.i24 = icmp ult i32 %conv.i, %28, !dbg !482
  br i1 %cmp.not.i24, label %if.end.i, label %if.then.i, !dbg !483

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17, !dbg !484
  %gcov_ctr.i25 = load i64, ptr @__llvm_gcov_ctr.50, align 8, !dbg !484
  %29 = add i64 %gcov_ctr.i25, 1, !dbg !484
  store i64 %29, ptr @__llvm_gcov_ctr.50, align 8, !dbg !484
  br label %return, !dbg !484

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17, !dbg !485
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !485
  %30 = add i64 %gcov_ctr3.i, 1, !dbg !485
  store i64 %30, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !485
  %31 = inttoptr i32 %conv.i to ptr, !dbg !486
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11, !dbg !487
  %32 = ptrtoint ptr %private.i to i32, !dbg !488
  call void @__asan_store4_noabort(i32 %32), !dbg !488
  store ptr %31, ptr %private.i, align 8, !dbg !488
  br label %return, !dbg !489

return:                                           ; preds = %if.end.i, %if.then.i, %if.then14
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %if.then14 ], [ null, %if.then.i ], [ %private.i, %if.end.i ], !dbg !490
  ret ptr %retval.0, !dbg !491
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %p) #0 align 64 !dbg !492 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !493
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 8, !dbg !494
  %0 = add i64 %gcov_ctr.i, 1, !dbg !494
  store i64 %0, ptr @__llvm_gcov_ctr.36, align 8, !dbg !494
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !dbg !494, !srcloc !306
  %1 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !496
  %inc.i = add i16 %1, 1, !dbg !496
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @stack_trace_max_lock, i32 0, i32 1), align 2, !dbg !496
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.39, align 8, !dbg !497
  %2 = add i64 %gcov_ctr.i.i, 1, !dbg !497
  store i64 %2, ptr @__llvm_gcov_ctr.39, align 8, !dbg !497
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !dbg !497, !srcloc !311
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !dbg !499, !srcloc !313
  %gcov_ctr.i12 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %3 = add i64 %gcov_ctr.i12, 1
  store i64 %3, ptr @__llvm_gcov_ctr.23, align 8
  %gcov_ctr.i13 = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !500
  %4 = add i64 %gcov_ctr.i13, 1, !dbg !500
  store i64 %4, ptr @__llvm_gcov_ctr.24, align 8, !dbg !500
  %5 = tail call i32 @llvm.read_register.i32(metadata !73) #18, !dbg !500
  %and.i = and i32 %5, -16384, !dbg !502
  %6 = inttoptr i32 %and.i to ptr, !dbg !503
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3, !dbg !504
  %7 = ptrtoint ptr %cpu to i32, !dbg !504
  call void @__asan_load4_noabort(i32 %7), !dbg !504
  %8 = load i32, ptr %cpu, align 4, !dbg !504
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8, !dbg !504
  %9 = ptrtoint ptr %arrayidx to i32, !dbg !504
  call void @__asan_load4_noabort(i32 %9), !dbg !504
  %10 = load i32, ptr %arrayidx, align 4, !dbg !504
  %add = add i32 %10, ptrtoint (ptr @disable_stack_tracer to i32), !dbg !504
  %11 = inttoptr i32 %add to ptr, !dbg !504
  %12 = ptrtoint ptr %11 to i32, !dbg !504
  call void @__asan_load4_noabort(i32 %12), !dbg !504
  %13 = load i32, ptr %11, align 4, !dbg !504
  %add7 = add i32 %13, -1, !dbg !504
  store i32 %add7, ptr %11, align 4, !dbg !504
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !505
  %14 = add i64 %gcov_ctr, 1, !dbg !505
  store i64 %14, ptr @__llvm_gcov_ctr.46, align 8, !dbg !505
  tail call void @trace_hardirqs_on() #18, !dbg !505
  %gcov_ctr.i14 = load i64, ptr @__llvm_gcov_ctr.51, align 8, !dbg !506
  %15 = add i64 %gcov_ctr.i14, 1, !dbg !506
  store i64 %15, ptr @__llvm_gcov_ctr.51, align 8, !dbg !506
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !dbg !506, !srcloc !509
  ret void, !dbg !510
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @t_next(ptr noundef writeonly %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #12 align 64 !dbg !511 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !512
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.47, align 8
  %1 = ptrtoint ptr %pos to i32, !dbg !513
  call void @__asan_load8_noabort(i32 %1), !dbg !513
  %2 = load i64, ptr %pos, align 8, !dbg !513
  %inc = add i64 %2, 1, !dbg !513
  store i64 %inc, ptr %pos, align 8, !dbg !513
  %3 = trunc i64 %inc to i32, !dbg !514
  %conv.i = add i32 %3, -1, !dbg !514
  %4 = load i32, ptr @stack_trace_nr_entries, align 4, !dbg !516
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %4), !dbg !517
  %cmp.not.i = icmp ult i32 %conv.i, %4, !dbg !517
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !518

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !519
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.50, align 8, !dbg !519
  %5 = add i64 %gcov_ctr.i, 1, !dbg !519
  store i64 %5, ptr @__llvm_gcov_ctr.50, align 8, !dbg !519
  br label %__next.exit, !dbg !519

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17, !dbg !520
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !520
  %6 = add i64 %gcov_ctr3.i, 1, !dbg !520
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !520
  %7 = inttoptr i32 %conv.i to ptr, !dbg !521
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11, !dbg !522
  %8 = ptrtoint ptr %private.i to i32, !dbg !523
  call void @__asan_store4_noabort(i32 %8), !dbg !523
  store ptr %7, ptr %private.i, align 8, !dbg !523
  br label %__next.exit, !dbg !524

__next.exit:                                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ null, %if.then.i ], [ %private.i, %if.end.i ], !dbg !525
  ret ptr %retval.0.i, !dbg !526
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t_show(ptr noundef %m, ptr noundef readonly %v) #0 align 64 !dbg !527 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !528
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr), !dbg !529
  br i1 %cmp, label %if.then, label %if.end3, !dbg !530

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @stack_trace_nr_entries, align 4, !dbg !531
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %0) #18, !dbg !532
  %1 = load i32, ptr @stack_tracer_enabled, align 4, !dbg !533
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !533
  %tobool.not = icmp eq i32 %1, 0, !dbg !533
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end_crit_edge, !dbg !534

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17, !dbg !534
  br label %if.end, !dbg !534

land.lhs.true:                                    ; preds = %if.then
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !535
  %2 = add i64 %gcov_ctr, 1, !dbg !535
  store i64 %2, ptr @__llvm_gcov_ctr.48, align 16, !dbg !535
  %3 = load i32, ptr @stack_trace_max_size, align 4, !dbg !535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !535
  %tobool1.not = icmp eq i32 %3, 0, !dbg !535
  br i1 %tobool1.not, label %if.then2, label %land.lhs.true.if.end_crit_edge, !dbg !536

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17, !dbg !536
  br label %if.end, !dbg !536

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17, !dbg !537
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !537
  %4 = add i64 %gcov_ctr15, 1, !dbg !537
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !537
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.52, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.17) #18, !dbg !538
  br label %if.end, !dbg !541

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !542
  %6 = add i64 %gcov_ctr16, 1, !dbg !542
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !542
  br label %cleanup, !dbg !542

if.end3:                                          ; preds = %entry
  %7 = ptrtoint ptr %v to i32, !dbg !543
  call void @__asan_load4_noabort(i32 %7), !dbg !543
  %8 = load i32, ptr %v, align 4, !dbg !543
  %9 = load i32, ptr @stack_trace_nr_entries, align 4, !dbg !544
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9), !dbg !545
  %cmp4.not = icmp ult i32 %8, %9, !dbg !545
  br i1 %cmp4.not, label %if.end6, label %if.then5, !dbg !546

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17, !dbg !547
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !547
  %10 = add i64 %gcov_ctr17, 1, !dbg !547
  store i64 %10, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 3), align 8, !dbg !547
  br label %cleanup, !dbg !547

if.end6:                                          ; preds = %if.end3
  %add = add nuw i32 %8, 1, !dbg !548
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9), !dbg !549
  %cmp7 = icmp eq i32 %add, %9, !dbg !549
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !550

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17, !dbg !551
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 4), align 16, !dbg !551
  %11 = add i64 %gcov_ctr18, 1, !dbg !551
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 4), align 16, !dbg !551
  %arrayidx = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %8, !dbg !552
  %12 = ptrtoint ptr %arrayidx to i32, !dbg !552
  call void @__asan_load4_noabort(i32 %12), !dbg !552
  %13 = load i32, ptr %arrayidx, align 4, !dbg !552
  br label %if.end12, !dbg !553

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17, !dbg !554
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 5), align 8, !dbg !554
  %14 = add i64 %gcov_ctr19, 1, !dbg !554
  store i64 %14, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 5), align 8, !dbg !554
  %arrayidx9 = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %8, !dbg !555
  %15 = ptrtoint ptr %arrayidx9 to i32, !dbg !555
  call void @__asan_load4_noabort(i32 %15), !dbg !555
  %16 = load i32, ptr %arrayidx9, align 4, !dbg !555
  %arrayidx11 = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %add, !dbg !556
  %17 = ptrtoint ptr %arrayidx11 to i32, !dbg !556
  call void @__asan_load4_noabort(i32 %17), !dbg !556
  %18 = load i32, ptr %arrayidx11, align 4, !dbg !556
  %sub = sub i32 %16, %18, !dbg !557
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %size.0 = phi i32 [ %13, %if.then8 ], [ %sub, %if.else ], !dbg !558
  %arrayidx13 = getelementptr [500 x i32], ptr @stack_trace_index, i32 0, i32 %8, !dbg !559
  %19 = ptrtoint ptr %arrayidx13 to i32, !dbg !559
  call void @__asan_load4_noabort(i32 %19), !dbg !559
  %20 = load i32, ptr %arrayidx13, align 4, !dbg !559
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i32 noundef %8, i32 noundef %20, i32 noundef %size.0) #18, !dbg !560
  %gcov_ctr.i32 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %21 = add i64 %gcov_ctr.i32, 1
  store i64 %21, ptr @__llvm_gcov_ctr.53, align 8
  %arrayidx.i = getelementptr [500 x i32], ptr @stack_dump_trace, i32 0, i32 %8, !dbg !561
  %22 = ptrtoint ptr %arrayidx.i to i32, !dbg !561
  call void @__asan_load4_noabort(i32 %22), !dbg !561
  %23 = load i32, ptr %arrayidx.i, align 4, !dbg !561
  %24 = inttoptr i32 %23 to ptr, !dbg !564
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef %24) #18, !dbg !565
  br label %cleanup, !dbg !566

cleanup:                                          ; preds = %if.end12, %if.then5, %if.end
  ret i32 0, !dbg !567
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tracing_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_filter_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_trace_filter_open(ptr noundef %inode, ptr noundef %file) #0 align 64 !dbg !568 {
entry:
  call void @__sanitizer_cov_trace_pc() #17, !dbg !569
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.54, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54, !dbg !570
  %1 = ptrtoint ptr %i_private to i32, !dbg !570
  call void @__asan_load4_noabort(i32 %1), !dbg !570
  %2 = load ptr, ptr %i_private, align 4, !dbg !570
  %call = tail call i32 @ftrace_regex_open(ptr noundef %2, i32 noundef 1, ptr noundef %inode, ptr noundef %file) #18, !dbg !571
  ret i32 %call, !dbg !572
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_regex_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_regex_open(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #13 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -1541617314) #18
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #18
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #18
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 37
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #17
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @llvm_gcda_summary_info() #18
  tail call void @llvm_gcda_end_file() #18
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
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.19, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.20, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.21, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  store i64 0, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @__llvm_gcov_ctr.25, i8 0, i64 160, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.28, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  store i64 0, ptr @__llvm_gcov_ctr.30, align 8
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.32, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  store i64 0, ptr @__llvm_gcov_ctr.34, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.35, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  store i64 0, ptr @__llvm_gcov_ctr.40, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.41, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.42, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.43, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.44, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.45, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.48, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.49, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.50, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  store i64 0, ptr @__llvm_gcov_ctr.52, align 8
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  store i64 0, ptr @__llvm_gcov_ctr.54, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #13 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #18
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noinline nounwind uwtable(sync) }
attributes #14 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nounwind uwtable(sync) }
attributes #17 = { nomerge }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.gcov = !{!82}
!llvm.ident = !{!83}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_stack.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__setup_enable_stacktrace, !3, !"__setup_enable_stacktrace", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_stack.c", i32 552, i32 1}
!4 = !{ptr @__initcall__kmod_trace_stack__264_582_stack_trace_init6, !5, !"__initcall__kmod_trace_stack__264_582_stack_trace_init6", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_stack.c", i32 582, i32 1}
!6 = !{ptr @__pcpu_scope_disable_stack_tracer, !7, !"__pcpu_scope_disable_stack_tracer", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_stack.c", i32 32, i32 1}
!8 = !{ptr @__pcpu_unique_disable_stack_tracer, !7, !"__pcpu_unique_disable_stack_tracer", i1 false, i1 false}
!9 = !{ptr @disable_stack_tracer, !7, !"disable_stack_tracer", i1 false, i1 false}
!10 = !{ptr @stack_tracer_enabled, !11, !"stack_tracer_enabled", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_stack.c", i32 35, i32 5}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_stack.c", i32 33, i32 8}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @stack_sysctl_mutex, !13, !"stack_sysctl_mutex", i1 false, i1 false}
!16 = !{ptr @trace_ops, !17, !"trace_ops", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_stack.c", i32 318, i32 26}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_stack.c", i32 300, i32 2}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_stack.c", i32 301, i32 6}
!22 = !{ptr @check_stack.tracer_frame, !23, !"tracer_frame", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_stack.c", i32 158, i32 13}
!24 = !{ptr @stack_trace_max_size, !25, !"stack_trace_max_size", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_stack.c", i32 28, i32 22}
!26 = !{ptr @stack_trace_max_lock, !27, !"stack_trace_max_lock", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_stack.c", i32 29, i32 24}
!28 = !{ptr @stack_dump_trace, !29, !"stack_dump_trace", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_stack.c", i32 24, i32 22}
!30 = !{ptr @stack_trace_nr_entries, !31, !"stack_trace_nr_entries", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_stack.c", i32 27, i32 21}
!32 = !{ptr @stack_trace_index, !33, !"stack_trace_index", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_stack.c", i32 25, i32 17}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_stack.c", i32 42, i32 2}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @print_max_stack._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @print_max_stack._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_stack.c", i32 52, i32 3}
!42 = !{ptr @print_max_stack._entry.7, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @print_max_stack._entry_ptr.9, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__setup_str_enable_stacktrace, !3, !"__setup_str_enable_stacktrace", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/trace/trace_stack.c", i32 546, i32 33}
!47 = !{ptr @stack_trace_filter_buf, !48, !"stack_trace_filter_buf", i1 false, i1 false}
!48 = !{!"../kernel/trace/trace_stack.c", i32 540, i32 13}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/trace/trace_stack.c", i32 562, i32 20}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_stack.c", i32 565, i32 20}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/trace/trace_stack.c", i32 569, i32 20}
!55 = !{ptr @stack_max_size_fops, !56, !"stack_max_size_fops", i1 false, i1 false}
!56 = !{!"../kernel/trace/trace_stack.c", i32 368, i32 37}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/trace/trace_stack.c", i32 331, i32 33}
!59 = !{ptr @stack_trace_fops, !60, !"stack_trace_fops", i1 false, i1 false}
!60 = !{!"../kernel/trace/trace_stack.c", i32 487, i32 37}
!61 = !{ptr @stack_trace_seq_ops, !62, !"stack_trace_seq_ops", i1 false, i1 false}
!62 = !{!"../kernel/trace/trace_stack.c", i32 469, i32 36}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/trace/trace_stack.c", i32 441, i32 17}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/trace/trace_stack.c", i32 462, i32 16}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/trace/trace_stack.c", i32 426, i32 14}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/trace/trace_stack.c", i32 421, i32 16}
!71 = !{ptr @stack_trace_filter_fops, !72, !"stack_trace_filter_fops", i1 false, i1 false}
!72 = !{!"../kernel/trace/trace_stack.c", i32 506, i32 37}
!73 = !{!"sp"}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_stack.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_stack.gcda", !0}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = distinct !DISubprogram(name: "stack_trace_sysctl", scope: !1, file: !1, line: 517, type: !85, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!85 = !DISubroutineType(types: !86)
!86 = !{}
!87 = !DILocation(line: 519, scope: !84)
!88 = !DILocation(line: 523, column: 2, scope: !84)
!89 = !DILocation(line: 524, column: 18, scope: !84)
!90 = !DILocation(line: 524, column: 17, scope: !84)
!91 = !DILocation(line: 526, column: 8, scope: !84)
!92 = !DILocation(line: 528, column: 6, scope: !84)
!93 = !DILocation(line: 528, column: 10, scope: !84)
!94 = !DILocation(line: 528, column: 14, scope: !84)
!95 = !DILocation(line: 528, column: 20, scope: !84)
!96 = !DILocation(line: 528, column: 24, scope: !84)
!97 = !DILocation(line: 528, column: 41, scope: !84)
!98 = !DILocation(line: 528, column: 40, scope: !84)
!99 = !DILocation(line: 528, column: 36, scope: !84)
!100 = !DILocation(line: 529, column: 3, scope: !84)
!101 = !DILocation(line: 531, column: 6, scope: !84)
!102 = !DILocation(line: 532, column: 3, scope: !84)
!103 = !DILocation(line: 534, column: 3, scope: !84)
!104 = !DILocation(line: 536, column: 2, scope: !84)
!105 = !DILocation(line: 537, column: 2, scope: !84)
!106 = distinct !DISubprogram(name: "enable_stacktrace", scope: !1, file: !1, line: 542, type: !85, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!107 = !DILocation(line: 543, scope: !106)
!108 = !DILocation(line: 312, column: 9, scope: !109, inlinedAt: !111)
!109 = distinct !DISubprogram(name: "str_has_prefix", scope: !110, file: !110, line: 309, type: !85, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!110 = !DIFile(filename: "../include/linux/string.h", directory: "/llk/linux-5.17/build_arm_allyes")
!111 = distinct !DILocation(line: 546, column: 13, scope: !106)
!112 = !DILocation(line: 312, column: 35, scope: !109, inlinedAt: !111)
!113 = !DILocation(line: 0, scope: !109, inlinedAt: !111)
!114 = !DILocation(line: 546, column: 6, scope: !106)
!115 = !DILocation(line: 547, column: 35, scope: !106)
!116 = !DILocation(line: 547, column: 39, scope: !106)
!117 = !DILocation(line: 547, column: 3, scope: !106)
!118 = !DILocation(line: 549, column: 23, scope: !106)
!119 = !DILocation(line: 550, column: 2, scope: !106)
!120 = distinct !DISubprogram(name: "stack_trace_init", scope: !1, file: !1, line: 554, type: !85, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!121 = !DILocation(line: 555, scope: !120)
!122 = !DILocation(line: 558, column: 8, scope: !120)
!123 = !DILocation(line: 559, column: 6, scope: !120)
!124 = !DILocation(line: 560, column: 3, scope: !120)
!125 = !DILocation(line: 562, column: 2, scope: !120)
!126 = !DILocation(line: 565, column: 2, scope: !120)
!127 = !DILocation(line: 569, column: 2, scope: !120)
!128 = !DILocation(line: 573, column: 6, scope: !120)
!129 = !DILocation(line: 574, column: 3, scope: !120)
!130 = !DILocation(line: 576, column: 6, scope: !120)
!131 = !DILocation(line: 577, column: 3, scope: !120)
!132 = !DILocation(line: 580, column: 1, scope: !120)
!133 = distinct !DISubprogram(name: "stack_trace_call", scope: !1, file: !1, line: 292, type: !85, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!134 = !DILocation(line: 294, scope: !133)
!135 = !DILocation(line: 295, column: 2, scope: !133)
!136 = !DILocation(line: 295, column: 16, scope: !133)
!137 = !{!"auto-init"}
!138 = !DILocation(line: 16, column: 10, scope: !139, inlinedAt: !141)
!139 = distinct !DISubprogram(name: "preempt_count_ptr", scope: !140, file: !140, line: 14, type: !85, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!140 = !DIFile(filename: "../include/asm-generic/preempt.h", directory: "/llk/linux-5.17/build_arm_allyes")
!141 = distinct !DILocation(line: 54, column: 3, scope: !142, inlinedAt: !143)
!142 = distinct !DISubprogram(name: "__preempt_count_add", scope: !140, file: !140, line: 52, type: !85, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!143 = distinct !DILocation(line: 297, column: 2, scope: !133)
!144 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !147)
!145 = distinct !DISubprogram(name: "current_thread_info", scope: !146, file: !146, line: 101, type: !85, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!146 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!147 = distinct !DILocation(line: 16, column: 10, scope: !139, inlinedAt: !141)
!148 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !147)
!149 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !147)
!150 = !DILocation(line: 16, column: 33, scope: !139, inlinedAt: !141)
!151 = !DILocation(line: 54, column: 23, scope: !142, inlinedAt: !143)
!152 = !DILocation(line: 297, column: 2, scope: !133)
!153 = !{i64 2155295224}
!154 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !155)
!155 = distinct !DILocation(line: 300, column: 2, scope: !133)
!156 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !155)
!157 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !155)
!158 = !DILocation(line: 300, column: 2, scope: !133)
!159 = !DILocation(line: 301, column: 6, scope: !133)
!160 = !DILocation(line: 301, column: 44, scope: !133)
!161 = !DILocation(line: 302, column: 3, scope: !133)
!162 = !DILocation(line: 305, column: 7, scope: !133)
!163 = !DILocation(line: 305, column: 6, scope: !133)
!164 = !DILocation(line: 306, column: 3, scope: !133)
!165 = !DILocation(line: 308, column: 5, scope: !133)
!166 = !DILocation(line: 159, column: 19, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "check_stack", scope: !1, file: !1, line: 155, type: !85, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!168 = distinct !DILocation(line: 310, column: 2, scope: !133)
!169 = !DILocation(line: 162, column: 15, scope: !167, inlinedAt: !168)
!170 = !DILocation(line: 162, column: 37, scope: !167, inlinedAt: !168)
!171 = !DILocation(line: 165, column: 12, scope: !167, inlinedAt: !168)
!172 = !DILocation(line: 167, column: 19, scope: !167, inlinedAt: !168)
!173 = !DILocation(line: 167, column: 16, scope: !167, inlinedAt: !168)
!174 = !DILocation(line: 167, column: 6, scope: !167, inlinedAt: !168)
!175 = !DILocation(line: 0, scope: !133)
!176 = !DILocation(line: 168, column: 3, scope: !167, inlinedAt: !168)
!177 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !178)
!178 = distinct !DILocation(line: 87, column: 16, scope: !179, inlinedAt: !181)
!179 = distinct !DISubprogram(name: "object_is_on_stack", scope: !180, file: !180, line: 85, type: !85, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!180 = !DIFile(filename: "../include/linux/sched/task_stack.h", directory: "/llk/linux-5.17/build_arm_allyes")
!181 = distinct !DILocation(line: 171, column: 7, scope: !167, inlinedAt: !168)
!182 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !178)
!183 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !178)
!184 = !DILocation(line: 87, column: 16, scope: !179, inlinedAt: !181)
!185 = !DILocation(line: 89, column: 14, scope: !179, inlinedAt: !181)
!186 = !DILocation(line: 89, column: 24, scope: !179, inlinedAt: !181)
!187 = !DILocation(line: 89, column: 28, scope: !179, inlinedAt: !181)
!188 = !DILocation(line: 89, column: 41, scope: !179, inlinedAt: !181)
!189 = !DILocation(line: 89, column: 32, scope: !179, inlinedAt: !181)
!190 = !DILocation(line: 171, column: 6, scope: !167, inlinedAt: !168)
!191 = !DILocation(line: 172, column: 3, scope: !167, inlinedAt: !168)
!192 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !193)
!193 = distinct !DILocation(line: 11, column: 9, scope: !194, inlinedAt: !195)
!194 = distinct !DISubprogram(name: "preempt_count", scope: !140, file: !140, line: 9, type: !85, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!195 = distinct !DILocation(line: 175, column: 6, scope: !167, inlinedAt: !168)
!196 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !193)
!197 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !193)
!198 = !DILocation(line: 11, column: 9, scope: !194, inlinedAt: !195)
!199 = !DILocation(line: 175, column: 6, scope: !167, inlinedAt: !168)
!200 = !DILocation(line: 176, column: 3, scope: !167, inlinedAt: !168)
!201 = !DILocation(line: 29, column: 2, scope: !202, inlinedAt: !204)
!202 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !203, file: !203, line: 25, type: !85, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!203 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!204 = distinct !DILocation(line: 178, column: 2, scope: !167, inlinedAt: !168)
!205 = !{i64 829691, i64 829752}
!206 = !DILocation(line: 181, column: 15, scope: !207, inlinedAt: !208)
!207 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !203, file: !203, line: 179, type: !85, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!208 = distinct !DILocation(line: 178, column: 2, scope: !167, inlinedAt: !168)
!209 = !DILocation(line: 178, column: 2, scope: !167, inlinedAt: !168)
!210 = !DILocation(line: 62, column: 2, scope: !211, inlinedAt: !213)
!211 = distinct !DISubprogram(name: "arch_spin_lock", scope: !212, file: !212, line: 56, type: !85, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!212 = !DIFile(filename: "../arch/arm/include/asm/spinlock.h", directory: "/llk/linux-5.17/build_arm_allyes")
!213 = distinct !DILocation(line: 179, column: 2, scope: !167, inlinedAt: !168)
!214 = !DILocation(line: 63, column: 2, scope: !211, inlinedAt: !213)
!215 = !{i64 1993605, i64 1993628, i64 1993648, i64 1993672, i64 1993688}
!216 = !DILocation(line: 73, column: 33, scope: !211, inlinedAt: !213)
!217 = !DILocation(line: 73, column: 30, scope: !211, inlinedAt: !213)
!218 = !DILocation(line: 73, column: 2, scope: !211, inlinedAt: !213)
!219 = !DILocation(line: 74, column: 3, scope: !211, inlinedAt: !213)
!220 = !{i64 2149482004}
!221 = !DILocation(line: 75, column: 27, scope: !211, inlinedAt: !213)
!222 = distinct !{!222, !218, !223}
!223 = !DILocation(line: 76, column: 2, scope: !211, inlinedAt: !213)
!224 = !DILocation(line: 78, column: 2, scope: !211, inlinedAt: !213)
!225 = !{i64 2149485120}
!226 = !DILocation(line: 182, column: 6, scope: !167, inlinedAt: !168)
!227 = !{!"branch_weights", i32 1, i32 2000}
!228 = !DILocation(line: 183, column: 16, scope: !167, inlinedAt: !168)
!229 = !DILocation(line: 183, column: 13, scope: !167, inlinedAt: !168)
!230 = !DILocation(line: 183, column: 3, scope: !167, inlinedAt: !168)
!231 = !DILocation(line: 0, scope: !167, inlinedAt: !168)
!232 = !DILocation(line: 186, column: 19, scope: !167, inlinedAt: !168)
!233 = !DILocation(line: 186, column: 16, scope: !167, inlinedAt: !168)
!234 = !DILocation(line: 186, column: 6, scope: !167, inlinedAt: !168)
!235 = !DILocation(line: 187, column: 3, scope: !167, inlinedAt: !168)
!236 = !DILocation(line: 189, column: 23, scope: !167, inlinedAt: !168)
!237 = !DILocation(line: 191, column: 27, scope: !167, inlinedAt: !168)
!238 = !DILocation(line: 196, column: 16, scope: !167, inlinedAt: !168)
!239 = !DILocation(line: 196, column: 2, scope: !167, inlinedAt: !168)
!240 = !DILocation(line: 197, column: 7, scope: !167, inlinedAt: !168)
!241 = !DILocation(line: 197, column: 27, scope: !167, inlinedAt: !168)
!242 = !DILocation(line: 198, column: 4, scope: !167, inlinedAt: !168)
!243 = !DILocation(line: 199, column: 2, scope: !167, inlinedAt: !168)
!244 = !DILocation(line: 196, column: 43, scope: !167, inlinedAt: !168)
!245 = distinct !{!245, !239, !243}
!246 = !DILocation(line: 205, column: 8, scope: !167, inlinedAt: !168)
!247 = !DILocation(line: 205, column: 6, scope: !167, inlinedAt: !168)
!248 = !DILocation(line: 206, column: 5, scope: !167, inlinedAt: !168)
!249 = !DILocation(line: 206, column: 3, scope: !167, inlinedAt: !168)
!250 = !DILocation(line: 214, column: 46, scope: !167, inlinedAt: !168)
!251 = !DILocation(line: 213, column: 8, scope: !167, inlinedAt: !168)
!252 = !DILocation(line: 223, column: 11, scope: !167, inlinedAt: !168)
!253 = !DILocation(line: 223, column: 2, scope: !167, inlinedAt: !168)
!254 = !DILocation(line: 226, column: 3, scope: !167, inlinedAt: !168)
!255 = !DILocation(line: 226, column: 24, scope: !167, inlinedAt: !168)
!256 = !DILocation(line: 229, column: 12, scope: !167, inlinedAt: !168)
!257 = !DILocation(line: 229, column: 18, scope: !167, inlinedAt: !168)
!258 = !DILocation(line: 229, column: 21, scope: !167, inlinedAt: !168)
!259 = !DILocation(line: 229, column: 23, scope: !167, inlinedAt: !168)
!260 = !DILocation(line: 229, column: 3, scope: !167, inlinedAt: !168)
!261 = !DILocation(line: 234, column: 9, scope: !167, inlinedAt: !168)
!262 = !DILocation(line: 234, column: 35, scope: !167, inlinedAt: !168)
!263 = !DILocation(line: 234, column: 32, scope: !167, inlinedAt: !168)
!264 = !DILocation(line: 234, column: 8, scope: !167, inlinedAt: !168)
!265 = !DILocation(line: 235, column: 45, scope: !167, inlinedAt: !168)
!266 = !DILocation(line: 235, column: 5, scope: !167, inlinedAt: !168)
!267 = !DILocation(line: 235, column: 25, scope: !167, inlinedAt: !168)
!268 = !DILocation(line: 237, column: 11, scope: !167, inlinedAt: !168)
!269 = !DILocation(line: 236, column: 36, scope: !167, inlinedAt: !168)
!270 = !DILocation(line: 236, column: 17, scope: !167, inlinedAt: !168)
!271 = !DILocation(line: 236, column: 40, scope: !167, inlinedAt: !168)
!272 = !DILocation(line: 240, column: 15, scope: !167, inlinedAt: !168)
!273 = !DILocation(line: 248, column: 9, scope: !167, inlinedAt: !168)
!274 = !DILocation(line: 249, column: 22, scope: !167, inlinedAt: !168)
!275 = !DILocation(line: 249, column: 24, scope: !167, inlinedAt: !168)
!276 = !DILocation(line: 249, column: 19, scope: !167, inlinedAt: !168)
!277 = !DILocation(line: 251, column: 27, scope: !167, inlinedAt: !168)
!278 = !DILocation(line: 252, column: 5, scope: !167, inlinedAt: !168)
!279 = !DILocation(line: 253, column: 4, scope: !167, inlinedAt: !168)
!280 = !DILocation(line: 229, column: 50, scope: !167, inlinedAt: !168)
!281 = distinct !{!281, !260, !282}
!282 = !DILocation(line: 254, column: 3, scope: !167, inlinedAt: !168)
!283 = !DILocation(line: 256, column: 8, scope: !167, inlinedAt: !168)
!284 = !DILocation(line: 256, column: 7, scope: !167, inlinedAt: !168)
!285 = !DILocation(line: 257, column: 5, scope: !167, inlinedAt: !168)
!286 = !DILocation(line: 257, column: 4, scope: !167, inlinedAt: !168)
!287 = !DILocation(line: 258, column: 2, scope: !167, inlinedAt: !168)
!288 = distinct !{!288, !253, !287}
!289 = !DILocation(line: 211, column: 4, scope: !167, inlinedAt: !168)
!290 = !DILocation(line: 274, column: 25, scope: !167, inlinedAt: !168)
!291 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !292)
!292 = distinct !DILocation(line: 276, column: 6, scope: !167, inlinedAt: !168)
!293 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !292)
!294 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !292)
!295 = !DILocation(line: 276, column: 6, scope: !167, inlinedAt: !168)
!296 = !DILocation(line: 59, column: 27, scope: !297, inlinedAt: !298)
!297 = distinct !DISubprogram(name: "end_of_stack", scope: !180, file: !180, line: 54, type: !85, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!298 = distinct !DILocation(line: 276, column: 6, scope: !167, inlinedAt: !168)
!299 = !DILocation(line: 59, column: 47, scope: !297, inlinedAt: !298)
!300 = !DILocation(line: 277, column: 3, scope: !167, inlinedAt: !168)
!301 = !DILocation(line: 278, column: 3, scope: !167, inlinedAt: !168)
!302 = !{i64 2155293011, i64 2155293502, i64 2155293048, i64 2155293104, i64 2155293138, i64 2155293162, i64 2155293203, i64 2155293224, i64 2155293252, i64 2155293286}
!303 = !DILocation(line: 109, column: 2, scope: !304, inlinedAt: !305)
!304 = distinct !DISubprogram(name: "arch_spin_unlock", scope: !212, file: !212, line: 107, type: !85, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!305 = distinct !DILocation(line: 282, column: 2, scope: !167, inlinedAt: !168)
!306 = !{i64 2149485802}
!307 = !DILocation(line: 110, column: 21, scope: !304, inlinedAt: !305)
!308 = !DILocation(line: 44, column: 2, scope: !309, inlinedAt: !310)
!309 = distinct !DISubprogram(name: "dsb_sev", scope: !212, file: !212, line: 41, type: !85, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!310 = distinct !DILocation(line: 111, column: 2, scope: !304, inlinedAt: !305)
!311 = !{i64 2149481476}
!312 = !DILocation(line: 45, column: 2, scope: !309, inlinedAt: !310)
!313 = !{i64 2149481575, i64 2149481602, i64 2149481649, i64 2149481671, i64 2149481699, i64 2149481719}
!314 = !DILocation(line: 283, column: 2, scope: !167, inlinedAt: !168)
!315 = !DILocation(line: 63, column: 34, scope: !316, inlinedAt: !318)
!316 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !317, file: !317, line: 61, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!317 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!318 = distinct !DILocation(line: 283, column: 2, scope: !167, inlinedAt: !168)
!319 = !DILocation(line: 159, column: 2, scope: !320, inlinedAt: !321)
!320 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !203, file: !203, line: 156, type: !85, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!321 = distinct !DILocation(line: 63, column: 34, scope: !316, inlinedAt: !318)
!322 = !{i64 832423}
!323 = !DILocation(line: 181, column: 15, scope: !207, inlinedAt: !324)
!324 = distinct !DILocation(line: 63, column: 9, scope: !316, inlinedAt: !318)
!325 = !DILocation(line: 171, column: 2, scope: !326, inlinedAt: !327)
!326 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !203, file: !203, line: 169, type: !85, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!327 = distinct !DILocation(line: 283, column: 2, scope: !167, inlinedAt: !168)
!328 = !{i64 832708}
!329 = !DILocation(line: 284, column: 1, scope: !167, inlinedAt: !168)
!330 = !DILocation(line: 313, column: 2, scope: !133)
!331 = !DILocation(line: 315, column: 2, scope: !133)
!332 = !{i64 2155312441}
!333 = !DILocation(line: 16, column: 10, scope: !139, inlinedAt: !334)
!334 = distinct !DILocation(line: 59, column: 3, scope: !335, inlinedAt: !336)
!335 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !140, file: !140, line: 57, type: !85, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!336 = distinct !DILocation(line: 315, column: 2, scope: !133)
!337 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !338)
!338 = distinct !DILocation(line: 16, column: 10, scope: !139, inlinedAt: !334)
!339 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !338)
!340 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !338)
!341 = !DILocation(line: 16, column: 33, scope: !139, inlinedAt: !334)
!342 = !DILocation(line: 59, column: 23, scope: !335, inlinedAt: !336)
!343 = !DILocation(line: 316, column: 1, scope: !133)
!344 = distinct !DISubprogram(name: "__read_once_word_nocheck", scope: !345, file: !345, line: 65, type: !85, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!345 = !DIFile(filename: "../include/asm-generic/rwonce.h", directory: "/llk/linux-5.17/build_arm_allyes")
!346 = !DILocation(line: 66, scope: !344)
!347 = !DILocation(line: 67, column: 9, scope: !344)
!348 = !DILocation(line: 67, column: 2, scope: !344)
!349 = distinct !DISubprogram(name: "print_max_stack", scope: !1, file: !1, line: 37, type: !85, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!350 = !DILocation(line: 38, scope: !349)
!351 = !DILocation(line: 42, column: 2, scope: !349)
!352 = !DILocation(line: 46, column: 18, scope: !349)
!353 = !DILocation(line: 46, column: 16, scope: !349)
!354 = !DILocation(line: 46, column: 2, scope: !349)
!355 = !DILocation(line: 47, column: 9, scope: !349)
!356 = !DILocation(line: 47, column: 13, scope: !349)
!357 = !DILocation(line: 47, column: 7, scope: !349)
!358 = !DILocation(line: 48, column: 29, scope: !349)
!359 = !DILocation(line: 48, column: 11, scope: !349)
!360 = !DILocation(line: 48, column: 4, scope: !349)
!361 = !DILocation(line: 50, column: 29, scope: !349)
!362 = !DILocation(line: 50, column: 11, scope: !349)
!363 = !DILocation(line: 50, column: 34, scope: !349)
!364 = !DILocation(line: 50, column: 32, scope: !349)
!365 = !DILocation(line: 0, scope: !349)
!366 = !DILocation(line: 52, column: 3, scope: !349)
!367 = distinct !{!367, !354, !368}
!368 = !DILocation(line: 54, column: 2, scope: !349)
!369 = !DILocation(line: 55, column: 1, scope: !349)
!370 = distinct !DISubprogram(name: "stack_max_size_read", scope: !1, file: !1, line: 324, type: !85, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!371 = !DILocation(line: 326, scope: !370)
!372 = !DILocation(line: 327, column: 29, scope: !370)
!373 = !DILocation(line: 328, column: 2, scope: !370)
!374 = !DILocation(line: 328, column: 7, scope: !370)
!375 = !DILocation(line: 331, column: 42, scope: !370)
!376 = !DILocation(line: 331, column: 6, scope: !370)
!377 = !DILocation(line: 332, column: 8, scope: !370)
!378 = !DILocation(line: 332, column: 6, scope: !370)
!379 = !DILocation(line: 333, column: 5, scope: !370)
!380 = !DILocation(line: 333, column: 3, scope: !370)
!381 = !DILocation(line: 0, scope: !370)
!382 = !DILocation(line: 334, column: 9, scope: !370)
!383 = !DILocation(line: 335, column: 1, scope: !370)
!384 = !DILocation(line: 334, column: 2, scope: !370)
!385 = distinct !DISubprogram(name: "stack_max_size_write", scope: !1, file: !1, line: 338, type: !85, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!386 = !DILocation(line: 340, scope: !385)
!387 = !DILocation(line: 341, column: 20, scope: !385)
!388 = !DILocation(line: 342, column: 2, scope: !385)
!389 = !DILocation(line: 342, column: 16, scope: !385)
!390 = !DILocation(line: 345, column: 8, scope: !385)
!391 = !DILocation(line: 346, column: 6, scope: !385)
!392 = !DILocation(line: 29, column: 2, scope: !202, inlinedAt: !393)
!393 = distinct !DILocation(line: 349, column: 2, scope: !385)
!394 = !DILocation(line: 181, column: 15, scope: !207, inlinedAt: !395)
!395 = distinct !DILocation(line: 349, column: 2, scope: !385)
!396 = !DILocation(line: 349, column: 2, scope: !385)
!397 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !398)
!398 = distinct !DILocation(line: 356, column: 2, scope: !385)
!399 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !398)
!400 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !398)
!401 = !DILocation(line: 356, column: 2, scope: !385)
!402 = !DILocation(line: 62, column: 2, scope: !211, inlinedAt: !403)
!403 = distinct !DILocation(line: 358, column: 2, scope: !385)
!404 = !DILocation(line: 63, column: 2, scope: !211, inlinedAt: !403)
!405 = !DILocation(line: 73, column: 33, scope: !211, inlinedAt: !403)
!406 = !DILocation(line: 73, column: 30, scope: !211, inlinedAt: !403)
!407 = !DILocation(line: 73, column: 2, scope: !211, inlinedAt: !403)
!408 = !DILocation(line: 74, column: 3, scope: !211, inlinedAt: !403)
!409 = !DILocation(line: 75, column: 27, scope: !211, inlinedAt: !403)
!410 = distinct !{!410, !407, !411}
!411 = !DILocation(line: 76, column: 2, scope: !211, inlinedAt: !403)
!412 = !DILocation(line: 78, column: 2, scope: !211, inlinedAt: !403)
!413 = !DILocation(line: 359, column: 9, scope: !385)
!414 = !DILocation(line: 359, column: 7, scope: !385)
!415 = !DILocation(line: 109, column: 2, scope: !304, inlinedAt: !416)
!416 = distinct !DILocation(line: 360, column: 2, scope: !385)
!417 = !DILocation(line: 110, column: 21, scope: !304, inlinedAt: !416)
!418 = !DILocation(line: 44, column: 2, scope: !309, inlinedAt: !419)
!419 = distinct !DILocation(line: 111, column: 2, scope: !304, inlinedAt: !416)
!420 = !DILocation(line: 45, column: 2, scope: !309, inlinedAt: !419)
!421 = !DILocation(line: 362, column: 2, scope: !385)
!422 = !DILocation(line: 363, column: 2, scope: !385)
!423 = !DILocation(line: 63, column: 34, scope: !316, inlinedAt: !424)
!424 = distinct !DILocation(line: 363, column: 2, scope: !385)
!425 = !DILocation(line: 159, column: 2, scope: !320, inlinedAt: !426)
!426 = distinct !DILocation(line: 63, column: 34, scope: !316, inlinedAt: !424)
!427 = !DILocation(line: 181, column: 15, scope: !207, inlinedAt: !428)
!428 = distinct !DILocation(line: 63, column: 9, scope: !316, inlinedAt: !424)
!429 = !DILocation(line: 171, column: 2, scope: !326, inlinedAt: !430)
!430 = distinct !DILocation(line: 363, column: 2, scope: !385)
!431 = !DILocation(line: 365, column: 2, scope: !385)
!432 = !DILocation(line: 0, scope: !385)
!433 = !DILocation(line: 366, column: 1, scope: !385)
!434 = distinct !DISubprogram(name: "stack_trace_open", scope: !1, file: !1, line: 476, type: !85, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!435 = !DILocation(line: 477, scope: !434)
!436 = !DILocation(line: 480, column: 8, scope: !434)
!437 = !DILocation(line: 481, column: 6, scope: !434)
!438 = !DILocation(line: 482, column: 10, scope: !434)
!439 = !DILocation(line: 482, column: 3, scope: !434)
!440 = !DILocation(line: 484, column: 18, scope: !434)
!441 = !DILocation(line: 484, column: 9, scope: !434)
!442 = !DILocation(line: 484, column: 2, scope: !434)
!443 = !DILocation(line: 0, scope: !434)
!444 = !DILocation(line: 485, column: 1, scope: !434)
!445 = distinct !DISubprogram(name: "t_start", scope: !1, file: !1, line: 394, type: !85, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!446 = !DILocation(line: 395, scope: !445)
!447 = !DILocation(line: 63, column: 34, scope: !316, inlinedAt: !448)
!448 = distinct !DILocation(line: 396, column: 2, scope: !445)
!449 = !DILocation(line: 159, column: 2, scope: !320, inlinedAt: !450)
!450 = distinct !DILocation(line: 63, column: 34, scope: !316, inlinedAt: !448)
!451 = !DILocation(line: 181, column: 15, scope: !207, inlinedAt: !452)
!452 = distinct !DILocation(line: 63, column: 9, scope: !316, inlinedAt: !448)
!453 = !DILocation(line: 396, column: 2, scope: !445)
!454 = !DILocation(line: 49, column: 2, scope: !455, inlinedAt: !456)
!455 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !203, file: !203, line: 47, type: !85, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!456 = distinct !DILocation(line: 396, column: 2, scope: !445)
!457 = !{i64 830126}
!458 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !459)
!459 = distinct !DILocation(line: 398, column: 2, scope: !445)
!460 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !459)
!461 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !459)
!462 = !DILocation(line: 398, column: 2, scope: !445)
!463 = !DILocation(line: 62, column: 2, scope: !211, inlinedAt: !464)
!464 = distinct !DILocation(line: 400, column: 2, scope: !445)
!465 = !DILocation(line: 63, column: 2, scope: !211, inlinedAt: !464)
!466 = !DILocation(line: 73, column: 33, scope: !211, inlinedAt: !464)
!467 = !DILocation(line: 73, column: 30, scope: !211, inlinedAt: !464)
!468 = !DILocation(line: 73, column: 2, scope: !211, inlinedAt: !464)
!469 = !DILocation(line: 74, column: 3, scope: !211, inlinedAt: !464)
!470 = !DILocation(line: 75, column: 27, scope: !211, inlinedAt: !464)
!471 = distinct !{!471, !468, !472}
!472 = !DILocation(line: 76, column: 2, scope: !211, inlinedAt: !464)
!473 = !DILocation(line: 78, column: 2, scope: !211, inlinedAt: !464)
!474 = !DILocation(line: 402, column: 6, scope: !445)
!475 = !DILocation(line: 402, column: 11, scope: !445)
!476 = !DILocation(line: 403, column: 3, scope: !445)
!477 = !DILocation(line: 405, column: 16, scope: !445)
!478 = !DILocation(line: 378, column: 11, scope: !479, inlinedAt: !480)
!479 = distinct !DISubprogram(name: "__next", scope: !1, file: !1, line: 376, type: !85, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!480 = distinct !DILocation(line: 405, column: 9, scope: !445)
!481 = !DILocation(line: 380, column: 11, scope: !479, inlinedAt: !480)
!482 = !DILocation(line: 380, column: 8, scope: !479, inlinedAt: !480)
!483 = !DILocation(line: 380, column: 6, scope: !479, inlinedAt: !480)
!484 = !DILocation(line: 381, column: 3, scope: !479, inlinedAt: !480)
!485 = !DILocation(line: 383, column: 23, scope: !479, inlinedAt: !480)
!486 = !DILocation(line: 383, column: 15, scope: !479, inlinedAt: !480)
!487 = !DILocation(line: 383, column: 5, scope: !479, inlinedAt: !480)
!488 = !DILocation(line: 383, column: 13, scope: !479, inlinedAt: !480)
!489 = !DILocation(line: 384, column: 2, scope: !479, inlinedAt: !480)
!490 = !DILocation(line: 0, scope: !445)
!491 = !DILocation(line: 406, column: 1, scope: !445)
!492 = distinct !DISubprogram(name: "t_stop", scope: !1, file: !1, line: 408, type: !85, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!493 = !DILocation(line: 409, scope: !492)
!494 = !DILocation(line: 109, column: 2, scope: !304, inlinedAt: !495)
!495 = distinct !DILocation(line: 410, column: 2, scope: !492)
!496 = !DILocation(line: 110, column: 21, scope: !304, inlinedAt: !495)
!497 = !DILocation(line: 44, column: 2, scope: !309, inlinedAt: !498)
!498 = distinct !DILocation(line: 111, column: 2, scope: !304, inlinedAt: !495)
!499 = !DILocation(line: 45, column: 2, scope: !309, inlinedAt: !498)
!500 = !DILocation(line: 104, column: 4, scope: !145, inlinedAt: !501)
!501 = distinct !DILocation(line: 412, column: 2, scope: !492)
!502 = !DILocation(line: 104, column: 26, scope: !145, inlinedAt: !501)
!503 = !DILocation(line: 103, column: 9, scope: !145, inlinedAt: !501)
!504 = !DILocation(line: 412, column: 2, scope: !492)
!505 = !DILocation(line: 414, column: 2, scope: !492)
!506 = !DILocation(line: 39, column: 2, scope: !507, inlinedAt: !508)
!507 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !203, file: !203, line: 37, type: !85, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!508 = distinct !DILocation(line: 414, column: 2, scope: !492)
!509 = !{i64 829936}
!510 = !DILocation(line: 415, column: 1, scope: !492)
!511 = distinct !DISubprogram(name: "t_next", scope: !1, file: !1, line: 388, type: !85, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!512 = !DILocation(line: 389, scope: !511)
!513 = !DILocation(line: 390, column: 8, scope: !511)
!514 = !DILocation(line: 378, column: 11, scope: !479, inlinedAt: !515)
!515 = distinct !DILocation(line: 391, column: 9, scope: !511)
!516 = !DILocation(line: 380, column: 11, scope: !479, inlinedAt: !515)
!517 = !DILocation(line: 380, column: 8, scope: !479, inlinedAt: !515)
!518 = !DILocation(line: 380, column: 6, scope: !479, inlinedAt: !515)
!519 = !DILocation(line: 381, column: 3, scope: !479, inlinedAt: !515)
!520 = !DILocation(line: 383, column: 23, scope: !479, inlinedAt: !515)
!521 = !DILocation(line: 383, column: 15, scope: !479, inlinedAt: !515)
!522 = !DILocation(line: 383, column: 5, scope: !479, inlinedAt: !515)
!523 = !DILocation(line: 383, column: 13, scope: !479, inlinedAt: !515)
!524 = !DILocation(line: 384, column: 2, scope: !479, inlinedAt: !515)
!525 = !DILocation(line: 0, scope: !479, inlinedAt: !515)
!526 = !DILocation(line: 391, column: 2, scope: !511)
!527 = distinct !DISubprogram(name: "t_show", scope: !1, file: !1, line: 435, type: !85, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!528 = !DILocation(line: 436, scope: !527)
!529 = !DILocation(line: 440, column: 8, scope: !527)
!530 = !DILocation(line: 440, column: 6, scope: !527)
!531 = !DILocation(line: 444, column: 7, scope: !527)
!532 = !DILocation(line: 441, column: 3, scope: !527)
!533 = !DILocation(line: 446, column: 8, scope: !527)
!534 = !DILocation(line: 446, column: 29, scope: !527)
!535 = !DILocation(line: 446, column: 33, scope: !527)
!536 = !DILocation(line: 446, column: 7, scope: !527)
!537 = !DILocation(line: 447, column: 19, scope: !527)
!538 = !DILocation(line: 426, column: 2, scope: !539, inlinedAt: !540)
!539 = distinct !DISubprogram(name: "print_disabled", scope: !1, file: !1, line: 424, type: !85, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!540 = distinct !DILocation(line: 447, column: 4, scope: !527)
!541 = !DILocation(line: 447, column: 4, scope: !527)
!542 = !DILocation(line: 449, column: 3, scope: !527)
!543 = !DILocation(line: 452, column: 6, scope: !527)
!544 = !DILocation(line: 454, column: 11, scope: !527)
!545 = !DILocation(line: 454, column: 8, scope: !527)
!546 = !DILocation(line: 454, column: 6, scope: !527)
!547 = !DILocation(line: 455, column: 3, scope: !527)
!548 = !DILocation(line: 457, column: 8, scope: !527)
!549 = !DILocation(line: 457, column: 12, scope: !527)
!550 = !DILocation(line: 457, column: 6, scope: !527)
!551 = !DILocation(line: 458, column: 28, scope: !527)
!552 = !DILocation(line: 458, column: 10, scope: !527)
!553 = !DILocation(line: 458, column: 3, scope: !527)
!554 = !DILocation(line: 460, column: 28, scope: !527)
!555 = !DILocation(line: 460, column: 10, scope: !527)
!556 = !DILocation(line: 460, column: 33, scope: !527)
!557 = !DILocation(line: 460, column: 31, scope: !527)
!558 = !DILocation(line: 0, scope: !527)
!559 = !DILocation(line: 462, column: 41, scope: !527)
!560 = !DILocation(line: 462, column: 2, scope: !527)
!561 = !DILocation(line: 419, column: 23, scope: !562, inlinedAt: !563)
!562 = distinct !DISubprogram(name: "trace_lookup_stack", scope: !1, file: !1, line: 417, type: !85, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!563 = distinct !DILocation(line: 464, column: 2, scope: !527)
!564 = !DILocation(line: 421, column: 25, scope: !562, inlinedAt: !563)
!565 = !DILocation(line: 421, column: 2, scope: !562, inlinedAt: !563)
!566 = !DILocation(line: 466, column: 2, scope: !527)
!567 = !DILocation(line: 467, column: 1, scope: !527)
!568 = distinct !DISubprogram(name: "stack_trace_filter_open", scope: !1, file: !1, line: 497, type: !85, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!569 = !DILocation(line: 498, scope: !568)
!570 = !DILocation(line: 499, column: 34, scope: !568)
!571 = !DILocation(line: 502, column: 9, scope: !568)
!572 = !DILocation(line: 502, column: 2, scope: !568)
