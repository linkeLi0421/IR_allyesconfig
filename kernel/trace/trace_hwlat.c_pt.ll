; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_hwlat.c_pt.bc'
source_filename = "../kernel/trace/trace_hwlat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hwlat_kthread_data = type { ptr, i64, i64, i32, i32 }
%struct.hwlat_data = type { %struct.mutex, i64, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.22 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_min_max_param = type { ptr, ptr, ptr, ptr }
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
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.rcuwait = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%struct.hwlat_sample = type { i64, i64, i64, i64, %struct.timespec64, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.hwlat_entry = type { %struct.trace_entry, i64, i64, i64, %struct.timespec64, i32, i32, i32 }
%struct.trace_entry = type { i16, i8, i8, i32 }

@__initcall__kmod_trace_hwlat__264_890_init_hwlat_tracer7 = internal global ptr @init_hwlat_tracer, section ".initcall7.init", align 4
@__pcpu_unique_hwlat_per_cpu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@hwlat_per_cpu_data = weak dso_local global %struct.hwlat_kthread_data zeroinitializer, section ".data..percpu", align 8
@trace_hwlat_callback_enabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@hwlat_data = internal global { %struct.hwlat_data, [32 x i8] } { %struct.hwlat_data { %struct.mutex zeroinitializer, i64 0, i64 1000000, i64 500000, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hwlat_single_cpu_data = internal global { %struct.hwlat_kthread_data, [32 x i8] } zeroinitializer, align 32
@init_hwlat_tracer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hwlat_data.lock\00", [47 x i8] zeroinitializer }, align 32
@hwlat_tracer = internal global %struct.tracer { ptr @.str.1, ptr @hwlat_tracer_init, ptr @hwlat_tracer_reset, ptr @hwlat_tracer_start, ptr @hwlat_tracer_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, i8 1, i8 0, i8 0 }, section ".data..read_mostly", align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwlat\00", [26 x i8] zeroinitializer }, align 32
@hwlat_busy = internal global { i1, [31 x i8] } zeroinitializer, align 32
@hwlat_trace = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tracing_thresh = external dso_local local_unnamed_addr global i32, align 4
@save_tracing_thresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@last_tracing_thresh = internal global { i64, [24 x i8] } { i64 10000, [24 x i8] zeroinitializer }, align 32
@hwlat_tracer_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013hwlat_detector: Cannot start hwlat kthread\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hwlat_tracer_start\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/trace/trace_hwlat.c\00", [37 x i8] zeroinitializer }, align 32
@hwlat_tracer_start._entry_ptr = internal global ptr @hwlat_tracer_start._entry, section ".printk_index", align 4
@save_cpumask = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hwlatd/%u\00", [22 x i8] zeroinitializer }, align 32
@start_cpu_kthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013hwlat_detector: could not start sampling thread\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"start_cpu_kthread\00", [46 x i8] zeroinitializer }, align 32
@start_cpu_kthread._entry_ptr = internal global ptr @start_cpu_kthread._entry, section ".printk_index", align 4
@move_to_next_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016hwlat_detector: cpumask changed while in round-robin mode, switching to mode none\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"move_to_next_cpu\00", [47 x i8] zeroinitializer }, align 32
@move_to_next_cpu._entry_ptr = internal global ptr @move_to_next_cpu._entry, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Time total overflowed\0A\00", [41 x i8] zeroinitializer }, align 32
@event_hwlat = external dso_local global %struct.trace_event_call, align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hwlatd\00", [25 x i8] zeroinitializer }, align 32
@start_single_kthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.14, ptr @.str.4, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"start_single_kthread\00", [43 x i8] zeroinitializer }, align 32
@start_single_kthread._entry_ptr = internal global ptr @start_single_kthread._entry, section ".printk_index", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trace/hwlat:online\00", [45 x i8] zeroinitializer }, align 32
@hwlat_init_hotplug_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014hwlat_detector: Error to init cpu hotplug support\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hwlat_init_hotplug_support\00", [37 x i8] zeroinitializer }, align 32
@hwlat_init_hotplug_support._entry_ptr = internal global ptr @hwlat_init_hotplug_support._entry, section ".printk_index", align 4
@hwlat_hotplug_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @hwlat_hotplug_work, i64 4), ptr getelementptr (i8, ptr @hwlat_hotplug_work, i64 4) }, ptr @hwlat_hotplug_workfn, %struct.lockdep_map { ptr @hwlat_hotplug_work, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hwlat_hotplug_work\00", [45 x i8] zeroinitializer }, align 32
@trace_types_lock = external dso_local global %struct.mutex, align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwlat_detector\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"window\00", [25 x i8] zeroinitializer }, align 32
@hwlat_window = internal global { %struct.trace_min_max_param, [16 x i8] } { %struct.trace_min_max_param { ptr @hwlat_data, ptr getelementptr (i8, ptr @hwlat_data, i64 104), ptr getelementptr (i8, ptr @hwlat_data, i64 112), ptr null }, [16 x i8] zeroinitializer }, align 32
@trace_min_max_fops = external dso_local constant %struct.file_operations, align 4
@hwlat_sample_window = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"width\00", [26 x i8] zeroinitializer }, align 32
@hwlat_width = internal global { %struct.trace_min_max_param, [16 x i8] } { %struct.trace_min_max_param { ptr @hwlat_data, ptr getelementptr (i8, ptr @hwlat_data, i64 112), ptr null, ptr getelementptr (i8, ptr @hwlat_data, i64 104) }, [16 x i8] zeroinitializer }, align 32
@hwlat_sample_width = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@thread_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @hwlat_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @hwlat_mode_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hwlat_thread_mode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@thread_mode_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28], [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"round-robin\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per-cpu\00", [24 x i8] zeroinitializer }, align 32
@thread_mode_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @s_mode_start, ptr @s_mode_stop, ptr @s_mode_next, ptr @s_mode_show }, [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%s]\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [50 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.101 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [3 x i64] zeroinitializer
@0 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_hwlat.gcda\00", [33 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [72 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1480151894, i32 -710367315 }, %emit_function_args_ty { i32 1, i32 128861240, i32 -710367315 }, %emit_function_args_ty { i32 2, i32 397114406, i32 -710367315 }, %emit_function_args_ty { i32 3, i32 288547376, i32 -710367315 }, %emit_function_args_ty { i32 4, i32 1755861675, i32 -710367315 }, %emit_function_args_ty { i32 5, i32 -1073872888, i32 -710367315 }, %emit_function_args_ty { i32 6, i32 -1435190980, i32 -710367315 }, %emit_function_args_ty { i32 7, i32 -326657129, i32 -710367315 }, %emit_function_args_ty { i32 8, i32 1416400829, i32 -710367315 }, %emit_function_args_ty { i32 9, i32 -186579124, i32 -710367315 }, %emit_function_args_ty { i32 10, i32 -941528626, i32 -710367315 }, %emit_function_args_ty { i32 11, i32 1583856321, i32 -710367315 }, %emit_function_args_ty { i32 12, i32 -456313187, i32 -710367315 }, %emit_function_args_ty { i32 13, i32 476547153, i32 -710367315 }, %emit_function_args_ty { i32 14, i32 671195032, i32 -710367315 }, %emit_function_args_ty { i32 15, i32 1376301309, i32 -710367315 }, %emit_function_args_ty { i32 16, i32 -2145090030, i32 -710367315 }, %emit_function_args_ty { i32 17, i32 -768313505, i32 -710367315 }, %emit_function_args_ty { i32 18, i32 -10115036, i32 -710367315 }, %emit_function_args_ty { i32 19, i32 -287541125, i32 -710367315 }, %emit_function_args_ty { i32 20, i32 -743251458, i32 -710367315 }, %emit_function_args_ty { i32 21, i32 -1326915047, i32 -710367315 }, %emit_function_args_ty { i32 22, i32 1474264036, i32 -710367315 }, %emit_function_args_ty { i32 23, i32 -272555249, i32 -710367315 }, %emit_function_args_ty { i32 24, i32 -1016141526, i32 -710367315 }, %emit_function_args_ty { i32 25, i32 1624494247, i32 -710367315 }, %emit_function_args_ty { i32 26, i32 -1639498784, i32 -710367315 }, %emit_function_args_ty { i32 27, i32 746673099, i32 -710367315 }, %emit_function_args_ty { i32 28, i32 -1750052919, i32 -710367315 }, %emit_function_args_ty { i32 29, i32 -1485154444, i32 -710367315 }, %emit_function_args_ty { i32 30, i32 -1357815688, i32 -710367315 }, %emit_function_args_ty { i32 31, i32 70852947, i32 -710367315 }, %emit_function_args_ty { i32 32, i32 -617196139, i32 -710367315 }, %emit_function_args_ty { i32 33, i32 964162334, i32 -710367315 }, %emit_function_args_ty { i32 34, i32 -601403593, i32 -710367315 }, %emit_function_args_ty { i32 35, i32 -1247584631, i32 -710367315 }, %emit_function_args_ty { i32 36, i32 81157262, i32 -710367315 }, %emit_function_args_ty { i32 37, i32 835031753, i32 -710367315 }, %emit_function_args_ty { i32 38, i32 645908817, i32 -710367315 }, %emit_function_args_ty { i32 39, i32 1463771956, i32 -710367315 }, %emit_function_args_ty { i32 40, i32 1265207376, i32 -710367315 }, %emit_function_args_ty { i32 41, i32 1249662737, i32 -710367315 }, %emit_function_args_ty { i32 42, i32 -1846855200, i32 -710367315 }, %emit_function_args_ty { i32 43, i32 -963894156, i32 -710367315 }, %emit_function_args_ty { i32 44, i32 1797344873, i32 -710367315 }, %emit_function_args_ty { i32 45, i32 1154592862, i32 -710367315 }, %emit_function_args_ty { i32 46, i32 1267022341, i32 -710367315 }, %emit_function_args_ty { i32 47, i32 -2144003556, i32 -710367315 }, %emit_function_args_ty { i32 48, i32 -2021634748, i32 -710367315 }, %emit_function_args_ty { i32 49, i32 459069655, i32 -710367315 }, %emit_function_args_ty { i32 50, i32 373593950, i32 -710367315 }, %emit_function_args_ty { i32 51, i32 -2043375099, i32 -710367315 }, %emit_function_args_ty { i32 52, i32 491662117, i32 -710367315 }, %emit_function_args_ty { i32 53, i32 1864313882, i32 -710367315 }, %emit_function_args_ty { i32 54, i32 1054505375, i32 -710367315 }, %emit_function_args_ty { i32 55, i32 -1355937422, i32 -710367315 }, %emit_function_args_ty { i32 56, i32 -336318023, i32 -710367315 }, %emit_function_args_ty { i32 57, i32 -418186605, i32 -710367315 }, %emit_function_args_ty { i32 58, i32 476513480, i32 -710367315 }, %emit_function_args_ty { i32 59, i32 -1160787396, i32 -710367315 }, %emit_function_args_ty { i32 60, i32 -409929734, i32 -710367315 }, %emit_function_args_ty { i32 61, i32 -938559488, i32 -710367315 }, %emit_function_args_ty { i32 62, i32 982398123, i32 -710367315 }, %emit_function_args_ty { i32 63, i32 -1672745738, i32 -710367315 }, %emit_function_args_ty { i32 64, i32 261569290, i32 -710367315 }, %emit_function_args_ty { i32 65, i32 -754772124, i32 -710367315 }, %emit_function_args_ty { i32 66, i32 -964008156, i32 -710367315 }, %emit_function_args_ty { i32 67, i32 -81206156, i32 -710367315 }, %emit_function_args_ty { i32 68, i32 1953179691, i32 -710367315 }, %emit_function_args_ty { i32 69, i32 935155582, i32 -710367315 }, %emit_function_args_ty { i32 70, i32 137630706, i32 -710367315 }, %emit_function_args_ty { i32 71, i32 886833315, i32 -710367315 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [72 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 22, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 50, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 17, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.85 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.86 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.87 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.88 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.89 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.90 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.95 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.96 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.97 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.98 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.99 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.100 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.101 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.102 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.103 }]
@___asan_gen_.104 = private unnamed_addr constant [29 x i8] c"trace_hwlat_callback_enabled\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 86, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"hwlat_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 114, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"hwlat_single_cpu_data\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 82, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 878, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 866, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"hwlat_busy\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"hwlat_trace\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 48, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"save_tracing_thresh\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 70, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"last_tracing_thresh\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 89, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 818, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"save_cpumask\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 312, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 495, i32 54 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 497, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 347, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 108, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 249, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 432, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 434, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 554, i32 47 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 557, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [19 x i8] c"hwlat_hotplug_work\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 530, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 777, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 781, i32 44 }
@___asan_gen_.207 = private unnamed_addr constant [13 x i8] c"hwlat_window\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 746, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"hwlat_sample_window\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 58, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 788, i32 43 }
@___asan_gen_.216 = private unnamed_addr constant [12 x i8] c"hwlat_width\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 734, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant [19 x i8] c"hwlat_sample_width\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 57, i32 23 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 795, i32 40 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"thread_mode_fops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 753, i32 37 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"hwlat_thread_mode\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 59, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"thread_mode_str\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 67, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 156, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 67, i32 36 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 67, i32 44 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 67, i32 59 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"thread_mode_seq_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 649, i32 36 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 645, i32 14 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 633, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 635, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [30 x i8] c"../kernel/trace/trace_hwlat.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 638, i32 15 }
@___asan_gen_.261 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @__initcall__kmod_trace_hwlat__264_890_init_hwlat_tracer7, ptr @hwlat_init_hotplug_support._entry, ptr @hwlat_init_hotplug_support._entry_ptr, ptr @hwlat_tracer_start._entry, ptr @hwlat_tracer_start._entry_ptr, ptr @move_to_next_cpu._entry, ptr @move_to_next_cpu._entry_ptr, ptr @start_cpu_kthread._entry, ptr @start_cpu_kthread._entry_ptr, ptr @start_single_kthread._entry, ptr @start_single_kthread._entry_ptr, ptr @trace_hwlat_callback_enabled, ptr @hwlat_data, ptr @hwlat_single_cpu_data, ptr @init_hwlat_tracer.__key, ptr @.str, ptr @.str.1, ptr @hwlat_busy, ptr @hwlat_trace, ptr @save_tracing_thresh, ptr @last_tracing_thresh, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @save_cpumask, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @hwlat_hotplug_work, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @hwlat_window, ptr @hwlat_sample_window, ptr @.str.21, ptr @hwlat_width, ptr @hwlat_sample_width, ptr @.str.22, ptr @thread_mode_fops, ptr @hwlat_thread_mode, ptr @thread_mode_str, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @thread_mode_seq_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@1 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_hwlat_callback_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_data to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_single_cpu_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hwlat_tracer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_trace to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_tracing_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_tracing_thresh to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_tracer_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @save_cpumask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_cpu_kthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @move_to_next_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_single_kthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_init_hotplug_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_hotplug_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_window to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_sample_window to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_width to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_sample_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwlat_thread_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_mode_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_mode_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @trace_hwlat_callback(i1 noundef zeroext %enter) local_unnamed_addr #0 align 64 !dbg !127 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !130
  %0 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0), !dbg !134
  %cmp.i = icmp eq i32 %0, 2, !dbg !134
  br i1 %cmp.i, label %do.body.i, label %if.else.i, !dbg !135

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !136
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !136
  %1 = add i64 %gcov_ctr.i, 1, !dbg !136
  store i64 %1, ptr @__llvm_gcov_ctr.33, align 8, !dbg !136
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !137
  %2 = add i64 %gcov_ctr.i.i, 1, !dbg !137
  store i64 %2, ptr @__llvm_gcov_ctr.35, align 8, !dbg !137
  %3 = tail call i32 @llvm.read_register.i32(metadata !116) #15, !dbg !137
  %and.i.i = and i32 %3, -16384, !dbg !141
  %4 = inttoptr i32 %and.i.i to ptr, !dbg !142
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3, !dbg !136
  %5 = ptrtoint ptr %cpu.i to i32, !dbg !136
  call void @__asan_load4_noabort(i32 %5), !dbg !136
  %6 = load i32, ptr %cpu.i, align 4, !dbg !136
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6, !dbg !136
  %7 = ptrtoint ptr %arrayidx.i to i32, !dbg !136
  call void @__asan_load4_noabort(i32 %7), !dbg !136
  %8 = load i32, ptr %arrayidx.i, align 4, !dbg !136
  %add.i = add i32 %8, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !136
  %9 = inttoptr i32 %add.i to ptr, !dbg !136
  br label %get_cpu_data.exit, !dbg !143

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !144
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !144
  %10 = add i64 %gcov_ctr2.i, 1, !dbg !144
  store i64 %10, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !144
  br label %get_cpu_data.exit, !dbg !144

get_cpu_data.exit:                                ; preds = %if.else.i, %do.body.i
  %retval.0.i = phi ptr [ %9, %do.body.i ], [ @hwlat_single_cpu_data, %if.else.i ], !dbg !145
  %11 = ptrtoint ptr %retval.0.i to i32, !dbg !146
  call void @__asan_load4_noabort(i32 %11), !dbg !146
  %12 = load ptr, ptr %retval.0.i, align 8, !dbg !146
  %tobool.not = icmp eq ptr %12, null, !dbg !147
  %enter.not = xor i1 %enter, true, !dbg !148
  %brmerge = or i1 %tobool.not, %enter.not, !dbg !148
  %__llvm_gcov_ctr.mux = select i1 %tobool.not, ptr @__llvm_gcov_ctr, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), !dbg !148
  br i1 %brmerge, label %get_cpu_data.exit.cleanup_crit_edge, label %if.then2, !dbg !148

get_cpu_data.exit.cleanup_crit_edge:              ; preds = %get_cpu_data.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !148
  br label %cleanup, !dbg !148

if.then2:                                         ; preds = %get_cpu_data.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !149
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !149
  %13 = add i64 %gcov_ctr4, 1, !dbg !149
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !149
  %nmi_count = getelementptr inbounds %struct.hwlat_kthread_data, ptr %retval.0.i, i32 0, i32 3, !dbg !150
  %14 = ptrtoint ptr %nmi_count to i32, !dbg !151
  call void @__asan_load4_noabort(i32 %14), !dbg !151
  %15 = load i32, ptr %nmi_count, align 8, !dbg !151
  %inc = add i32 %15, 1, !dbg !151
  store i32 %inc, ptr %nmi_count, align 8, !dbg !151
  br label %cleanup, !dbg !149

cleanup:                                          ; preds = %if.then2, %get_cpu_data.exit.cleanup_crit_edge
  %.sink = phi ptr [ %__llvm_gcov_ctr.mux, %get_cpu_data.exit.cleanup_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), %if.then2 ]
  %16 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %16)
  %gcov_ctr5 = load i64, ptr %.sink, align 16
  %17 = add i64 %gcov_ctr5, 1
  store i64 %17, ptr %.sink, align 16
  ret void, !dbg !152
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_hwlat_tracer() #2 section ".init.text" align 64 !dbg !153 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !154
  tail call void @__mutex_init(ptr noundef nonnull @hwlat_data, ptr noundef nonnull @.str, ptr noundef nonnull @init_hwlat_tracer.__key) #15, !dbg !155
  %call = tail call i32 @register_tracer(ptr noundef nonnull @hwlat_tracer) #15, !dbg !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !157
  %tobool.not = icmp eq i32 %call, 0, !dbg !157
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !157

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !158
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !158
  %0 = add i64 %gcov_ctr2, 1, !dbg !158
  store i64 %0, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !158
  br label %cleanup, !dbg !159

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.34, align 8, !dbg !160
  %1 = add i64 %gcov_ctr, 1, !dbg !160
  store i64 %1, ptr @__llvm_gcov_ctr.34, align 8, !dbg !160
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.36, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.36, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.78, align 8
  %call.i.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.15, i1 noundef zeroext true, ptr noundef nonnull @hwlat_cpu_init, ptr noundef nonnull @hwlat_cpu_die, i1 noundef zeroext false) #15, !dbg !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !167
  %cmp.i = icmp slt i32 %call.i.i, 0, !dbg !167
  br i1 %cmp.i, label %if.then.i, label %if.end.hwlat_init_hotplug_support.exit_crit_edge, !dbg !168

if.end.hwlat_init_hotplug_support.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !168
  br label %hwlat_init_hotplug_support.exit, !dbg !168

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !169
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !169
  %4 = add i64 %gcov_ctr2.i, 1, !dbg !169
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !169
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16, !dbg !169
  br label %hwlat_init_hotplug_support.exit, !dbg !169

hwlat_init_hotplug_support.exit:                  ; preds = %if.then.i, %if.end.hwlat_init_hotplug_support.exit_crit_edge
  %call.i = tail call i32 @tracing_init_dentry() #15, !dbg !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !173
  %tobool.not.i = icmp eq i32 %call.i, 0, !dbg !173
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i5, !dbg !173

if.then.i5:                                       ; preds = %hwlat_init_hotplug_support.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !174
  %gcov_ctr.i4 = load i64, ptr @__llvm_gcov_ctr.37, align 16, !dbg !174
  %5 = add i64 %gcov_ctr.i4, 1, !dbg !174
  store i64 %5, ptr @__llvm_gcov_ctr.37, align 16, !dbg !174
  br label %cleanup, !dbg !174

if.end.i:                                         ; preds = %hwlat_init_hotplug_support.exit
  %call1.i6 = tail call ptr @tracefs_create_dir(ptr noundef nonnull @.str.19, ptr noundef null) #15, !dbg !175
  %tobool2.not.i = icmp eq ptr %call1.i6, null, !dbg !176
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i, !dbg !177

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !178
  %gcov_ctr18.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !178
  %6 = add i64 %gcov_ctr18.i, 1, !dbg !178
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !178
  br label %cleanup, !dbg !178

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 416, ptr noundef nonnull %call1.i6, ptr noundef nonnull @hwlat_window, ptr noundef nonnull @trace_min_max_fops) #15, !dbg !179
  store ptr %call5.i, ptr @hwlat_sample_window, align 4, !dbg !180
  %tobool6.not.i = icmp eq ptr %call5.i, null, !dbg !181
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i, !dbg !182

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !183
  %gcov_ctr19.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !183
  %7 = add i64 %gcov_ctr19.i, 1, !dbg !183
  store i64 %7, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !183
  br label %err.i, !dbg !183

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 416, ptr noundef nonnull %call1.i6, ptr noundef nonnull @hwlat_width, ptr noundef nonnull @trace_min_max_fops) #15, !dbg !184
  store ptr %call9.i, ptr @hwlat_sample_width, align 4, !dbg !185
  %tobool10.not.i = icmp eq ptr %call9.i, null, !dbg !186
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i, !dbg !187

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !188
  %gcov_ctr20.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !188
  %8 = add i64 %gcov_ctr20.i, 1, !dbg !188
  store i64 %8, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !188
  br label %err.i, !dbg !188

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = tail call ptr @trace_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 416, ptr noundef nonnull %call1.i6, ptr noundef null, ptr noundef nonnull @thread_mode_fops) #15, !dbg !189
  store ptr %call13.i, ptr @hwlat_thread_mode, align 4, !dbg !190
  %tobool14.not.i = icmp eq ptr %call13.i, null, !dbg !191
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end16.i, !dbg !192

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !193
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !193
  %9 = add i64 %gcov_ctr21.i, 1, !dbg !193
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !193
  br label %err.i, !dbg !193

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !194
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !194
  %10 = add i64 %gcov_ctr22.i, 1, !dbg !194
  store i64 %10, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !194
  br label %cleanup, !dbg !194

err.i:                                            ; preds = %if.then15.i, %if.then11.i, %if.then7.i
  tail call void @tracefs_remove(ptr noundef nonnull %call1.i6) #15, !dbg !195
  br label %cleanup, !dbg !196

cleanup:                                          ; preds = %err.i, %if.end16.i, %if.then3.i, %if.then.i5, %if.then
  ret i32 %call, !dbg !197
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tracer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwlat_tracer_init(ptr noundef %tr) #5 align 64 !dbg !198 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !199
  %.b12 = load i1, ptr @hwlat_busy, align 1, !dbg !200
  br i1 %.b12, label %if.then, label %if.end, !dbg !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !201
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.38, align 16, !dbg !201
  %0 = add i64 %gcov_ctr, 1, !dbg !201
  store i64 %0, ptr @__llvm_gcov_ctr.38, align 16, !dbg !201
  br label %return, !dbg !201

if.end:                                           ; preds = %entry
  store ptr %tr, ptr @hwlat_trace, align 4, !dbg !202
  store i64 0, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 1), align 8, !dbg !203
  %max_latency = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 5, !dbg !204
  %1 = ptrtoint ptr %max_latency to i32, !dbg !205
  call void @__asan_store4_noabort(i32 %1), !dbg !205
  store i32 0, ptr %max_latency, align 4, !dbg !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_thresh to i32)), !dbg !206
  %2 = load i32, ptr @tracing_thresh, align 4, !dbg !206
  store i32 %2, ptr @save_tracing_thresh, align 4, !dbg !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2), !dbg !208
  %tobool1.not = icmp eq i32 %2, 0, !dbg !208
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge, !dbg !209

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !209
  br label %if.end3, !dbg !209

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !210
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !210
  %3 = add i64 %gcov_ctr6, 1, !dbg !210
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !210
  %4 = load i64, ptr @last_tracing_thresh, align 8, !dbg !210
  %conv = trunc i64 %4 to i32, !dbg !210
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tracing_thresh to i32)), !dbg !211
  store i32 %conv, ptr @tracing_thresh, align 4, !dbg !211
  br label %if.end3, !dbg !212

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %tr) #15, !dbg !213
  br i1 %call, label %if.then4, label %if.end3.if.end5_crit_edge, !dbg !213

if.end3.if.end5_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14, !dbg !213
  br label %if.end5, !dbg !213

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14, !dbg !214
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 2), align 16, !dbg !214
  %5 = add i64 %gcov_ctr7, 1, !dbg !214
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 2), align 16, !dbg !214
  tail call void @hwlat_tracer_start(ptr noundef %tr), !dbg !215
  br label %if.end5, !dbg !215

if.end5:                                          ; preds = %if.then4, %if.end3.if.end5_crit_edge
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 3), align 8, !dbg !216
  %6 = add i64 %gcov_ctr8, 1, !dbg !216
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 3), align 8, !dbg !216
  store i1 true, ptr @hwlat_busy, align 1, !dbg !216
  br label %return, !dbg !217

return:                                           ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end5 ], !dbg !218
  ret i32 %retval.0, !dbg !219
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hwlat_tracer_reset(ptr nocapture noundef readnone %tr) #5 align 64 !dbg !220 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !221
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.39, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.39, align 8
  %1 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !222
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1), !dbg !225
  %cmp.i = icmp eq i32 %1, 2, !dbg !225
  br i1 %cmp.i, label %if.then.i, label %get_cpu_data.exit.i.i, !dbg !226

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !227
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.41, align 8, !dbg !227
  %2 = add i64 %gcov_ctr.i, 1, !dbg !227
  store i64 %2, ptr @__llvm_gcov_ctr.41, align 8, !dbg !227
  tail call fastcc void @stop_per_cpu_kthreads() #15, !dbg !227
  br label %hwlat_tracer_stop.exit, !dbg !227

get_cpu_data.exit.i.i:                            ; preds = %entry
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !228
  %3 = add i64 %gcov_ctr1.i, 1, !dbg !228
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !228
  %gcov_ctr2.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !229
  %4 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !229
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !229
  tail call void @cpus_read_lock() #15, !dbg !233
  %5 = load ptr, ptr @hwlat_single_cpu_data, align 8, !dbg !234
  %tobool.not.i.i = icmp eq ptr %5, null, !dbg !235
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !236

if.then.i.i:                                      ; preds = %get_cpu_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !237
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !237
  %6 = add i64 %gcov_ctr.i.i, 1, !dbg !237
  store i64 %6, ptr @__llvm_gcov_ctr.77, align 8, !dbg !237
  br label %stop_single_kthread.exit.i, !dbg !237

if.end.i.i:                                       ; preds = %get_cpu_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !238
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !238
  %7 = add i64 %gcov_ctr4.i.i, 1, !dbg !238
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !238
  %call2.i.i = tail call i32 @kthread_stop(ptr noundef nonnull %5) #15, !dbg !239
  store ptr null, ptr @hwlat_single_cpu_data, align 8, !dbg !240
  br label %stop_single_kthread.exit.i, !dbg !241

stop_single_kthread.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  tail call void @cpus_read_unlock() #15, !dbg !242
  br label %hwlat_tracer_stop.exit

hwlat_tracer_stop.exit:                           ; preds = %stop_single_kthread.exit.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_thresh to i32)), !dbg !243
  %8 = load i32, ptr @tracing_thresh, align 4, !dbg !243
  %conv = zext i32 %8 to i64, !dbg !243
  store i64 %conv, ptr @last_tracing_thresh, align 8, !dbg !244
  %9 = load i32, ptr @save_tracing_thresh, align 4, !dbg !245
  store i32 %9, ptr @tracing_thresh, align 4, !dbg !246
  store i1 false, ptr @hwlat_busy, align 1, !dbg !247
  ret void, !dbg !248
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hwlat_tracer_start(ptr nocapture noundef readonly %tr) #5 align 64 !dbg !249 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !250
  %0 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0), !dbg !252
  %cmp = icmp eq i32 %0, 2, !dbg !252
  br i1 %cmp, label %if.then, label %get_cpu_data.exit.i, !dbg !253

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.40, align 16, !dbg !254
  %1 = add i64 %gcov_ctr, 1, !dbg !254
  store i64 %1, ptr @__llvm_gcov_ctr.40, align 16, !dbg !254
  tail call void @cpus_read_lock() #15, !dbg !255
  %tracing_cpumask.i = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 37, !dbg !258
  %2 = ptrtoint ptr %tracing_cpumask.i to i32, !dbg !258
  call void @__asan_load4_noabort(i32 %2), !dbg !258
  %3 = load ptr, ptr %tracing_cpumask.i, align 8, !dbg !258
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.44, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !259
  %5 = load i32, ptr @nr_cpu_ids, align 4, !dbg !259
  %gcov_ctr8.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !263
  %6 = add i64 %gcov_ctr8.i.i.i, 1, !dbg !263
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !263
  %call.i.i.i = tail call i32 @__bitmap_and(ptr noundef nonnull @save_cpumask, ptr noundef nonnull @__cpu_online_mask, ptr noundef %3, i32 noundef %5) #15, !dbg !267
  %call227.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17, !dbg !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !268
  %7 = load i32, ptr @nr_cpu_ids, align 4, !dbg !268
  call void @__sanitizer_cov_trace_cmp4(i32 %call227.i, i32 %7), !dbg !268
  %cmp28.i = icmp ult i32 %call227.i, %7, !dbg !268
  br i1 %cmp28.i, label %if.then.do.body.i_crit_edge, label %if.then.for.cond4.preheader.i_crit_edge, !dbg !268

if.then.for.cond4.preheader.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14, !dbg !268
  br label %for.cond4.preheader.i, !dbg !268

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  br label %do.body.i, !dbg !268

for.cond4.preheader.i:                            ; preds = %do.body.i.for.cond4.preheader.i_crit_edge, %if.then.for.cond4.preheader.i_crit_edge
  %call530.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @save_cpumask) #17, !dbg !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !269
  %8 = load i32, ptr @nr_cpu_ids, align 4, !dbg !269
  call void @__sanitizer_cov_trace_cmp4(i32 %call530.i, i32 %8), !dbg !269
  %cmp631.i = icmp ult i32 %call530.i, %8, !dbg !269
  br i1 %cmp631.i, label %for.cond4.preheader.i.for.body7.i_crit_edge, label %for.cond4.preheader.i.if.end.thread_crit_edge, !dbg !269

for.cond4.preheader.i.if.end.thread_crit_edge:    ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !269
  br label %if.end.thread, !dbg !269

for.cond4.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body7.i, !dbg !269

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %call229.i = phi i32 [ %call2.i, %do.body.i.do.body.i_crit_edge ], [ %call227.i, %if.then.do.body.i_crit_edge ]
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.42, align 16, !dbg !270
  %9 = add i64 %gcov_ctr.i, 1, !dbg !270
  store i64 %9, ptr @__llvm_gcov_ctr.42, align 16, !dbg !270
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call229.i, !dbg !270
  %10 = ptrtoint ptr %arrayidx.i to i32, !dbg !270
  call void @__asan_load4_noabort(i32 %10), !dbg !270
  %11 = load i32, ptr %arrayidx.i, align 4, !dbg !270
  %add.i = add i32 %11, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !270
  %12 = inttoptr i32 %add.i to ptr, !dbg !270
  %13 = ptrtoint ptr %12 to i32, !dbg !271
  call void @__asan_store4_noabort(i32 %13), !dbg !271
  store ptr null, ptr %12, align 8, !dbg !271
  %call2.i = tail call i32 @cpumask_next(i32 noundef %call229.i, ptr noundef nonnull @__cpu_online_mask) #17, !dbg !268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !268
  %14 = load i32, ptr @nr_cpu_ids, align 4, !dbg !268
  %cmp.i = icmp ult i32 %call2.i, %14, !dbg !268
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.cond4.preheader.i_crit_edge, !dbg !268, !llvm.loop !272

do.body.i.for.cond4.preheader.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !268
  br label %for.cond4.preheader.i, !dbg !268

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !268
  br label %do.body.i, !dbg !268

for.body7.i:                                      ; preds = %if.end.i.for.body7.i_crit_edge, %for.cond4.preheader.i.for.body7.i_crit_edge
  %call532.i = phi i32 [ %call5.i, %if.end.i.for.body7.i_crit_edge ], [ %call530.i, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %gcov_ctr.i.i22.i = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %15 = add i64 %gcov_ctr.i.i22.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.48, align 8
  %call.i.i23.i = tail call ptr @kthread_create_on_cpu(ptr noundef nonnull @kthread_fn, ptr noundef null, i32 noundef %call532.i, ptr noundef nonnull @.str.5) #15, !dbg !274
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %16 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.50, align 8
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i23.i, inttoptr (i32 -4096 to ptr), !dbg !280
  br i1 %cmp.i.i.i.i, label %if.end.thread39, label %if.end.i, !dbg !284

if.end.thread39:                                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !285
  %17 = add i64 %gcov_ctr.i.i.i.i, 2
  store i64 %17, ptr @__llvm_gcov_ctr.50, align 8
  %gcov_ctr.i24.i = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !286
  %18 = add i64 %gcov_ctr.i24.i, 1, !dbg !286
  store i64 %18, ptr @__llvm_gcov_ctr.45, align 8, !dbg !286
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16, !dbg !286
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !287
  %19 = add i64 %gcov_ctr12.i, 1, !dbg !287
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !287
  tail call void @cpus_read_unlock() #15, !dbg !288
  tail call fastcc void @stop_per_cpu_kthreads() #15, !dbg !289
  br label %if.then2, !dbg !290

if.end.i:                                         ; preds = %for.body7.i
  %gcov_ctr3.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !291
  %20 = add i64 %gcov_ctr3.i.i.i, 1, !dbg !291
  store i64 %20, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !291
  %call2.i.i.i = tail call i32 @wake_up_process(ptr noundef %call.i.i23.i) #15, !dbg !292
  %gcov_ctr.i12.i.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %21 = add i64 %gcov_ctr.i12.i.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.50, align 8
  %gcov_ctr9.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !293
  %22 = add i64 %gcov_ctr9.i.i, 1, !dbg !293
  store i64 %22, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !293
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call532.i, !dbg !293
  %23 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !293
  call void @__asan_load4_noabort(i32 %23), !dbg !293
  %24 = load i32, ptr %arrayidx.i.i, align 4, !dbg !293
  %add.i.i = add i32 %24, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !293
  %25 = inttoptr i32 %add.i.i to ptr, !dbg !293
  %26 = ptrtoint ptr %25 to i32, !dbg !294
  call void @__asan_store4_noabort(i32 %26), !dbg !294
  store ptr %call.i.i23.i, ptr %25, align 8, !dbg !294
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !269
  %27 = add i64 %gcov_ctr13.i, 1, !dbg !269
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !269
  %call5.i = tail call i32 @cpumask_next(i32 noundef %call532.i, ptr noundef nonnull @save_cpumask) #17, !dbg !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !269
  %28 = load i32, ptr @nr_cpu_ids, align 4, !dbg !269
  %cmp6.i = icmp ult i32 %call5.i, %28, !dbg !269
  br i1 %cmp6.i, label %if.end.i.for.body7.i_crit_edge, label %if.end.i.if.end.thread_crit_edge, !dbg !269, !llvm.loop !295

if.end.i.if.end.thread_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !269
  br label %if.end.thread, !dbg !269

if.end.i.for.body7.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !269
  br label %for.body7.i, !dbg !269

if.end.thread:                                    ; preds = %if.end.i.if.end.thread_crit_edge, %for.cond4.preheader.i.if.end.thread_crit_edge
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !297
  %29 = add i64 %gcov_ctr14.i, 1, !dbg !297
  store i64 %29, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !297
  tail call void @cpus_read_unlock() #15, !dbg !297
  br label %if.end4, !dbg !290

get_cpu_data.exit.i:                              ; preds = %entry
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !298
  %30 = add i64 %gcov_ctr5, 1, !dbg !298
  store i64 %30, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !298
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !299
  %31 = add i64 %gcov_ctr2.i.i, 1, !dbg !299
  store i64 %31, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !299
  tail call void @cpus_read_lock() #15, !dbg !303
  %32 = load ptr, ptr @hwlat_single_cpu_data, align 8, !dbg !304
  %tobool.not.i = icmp eq ptr %32, null, !dbg !305
  br i1 %tobool.not.i, label %if.end.i16, label %if.then.i14, !dbg !305

if.then.i14:                                      ; preds = %get_cpu_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !306
  %gcov_ctr.i13 = load i64, ptr @__llvm_gcov_ctr.43, align 16, !dbg !306
  %33 = add i64 %gcov_ctr.i13, 1, !dbg !306
  store i64 %33, ptr @__llvm_gcov_ctr.43, align 16, !dbg !306
  br label %if.end.thread42, !dbg !306

if.end.i16:                                       ; preds = %get_cpu_data.exit.i
  %call2.i15 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kthread_fn, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.13) #15, !dbg !307
  %gcov_ctr.i28.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %34 = add i64 %gcov_ctr.i28.i, 1
  store i64 %34, ptr @__llvm_gcov_ctr.50, align 8
  %cmp.i29.i = icmp ugt ptr %call2.i15, inttoptr (i32 -4096 to ptr), !dbg !308
  br i1 %cmp.i29.i, label %if.end, label %if.end6.i, !dbg !310

if.end6.i:                                        ; preds = %if.end.i16
  %tracing_cpumask.i18 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 37, !dbg !311
  %35 = ptrtoint ptr %tracing_cpumask.i18 to i32, !dbg !311
  call void @__asan_load4_noabort(i32 %35), !dbg !311
  %36 = load ptr, ptr %tracing_cpumask.i18, align 8, !dbg !311
  %gcov_ctr.i30.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %37 = add i64 %gcov_ctr.i30.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.44, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !312
  %38 = load i32, ptr @nr_cpu_ids, align 4, !dbg !312
  %gcov_ctr8.i.i.i30 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !314
  %39 = add i64 %gcov_ctr8.i.i.i30, 1, !dbg !314
  store i64 %39, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !314
  %call.i.i.i31 = tail call i32 @__bitmap_and(ptr noundef nonnull @save_cpumask, ptr noundef nonnull @__cpu_online_mask, ptr noundef %36, i32 noundef %38) #15, !dbg !316
  %40 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40), !dbg !318
  %cmp.i33 = icmp eq i32 %40, 1, !dbg !318
  br i1 %cmp.i33, label %if.then8.i, label %if.end6.i.if.end10.i_crit_edge, !dbg !319

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !319
  br label %if.end10.i, !dbg !319

if.then8.i:                                       ; preds = %if.end6.i
  %gcov_ctr18.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !320
  %41 = add i64 %gcov_ctr18.i, 1, !dbg !320
  store i64 %41, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !320
  %gcov_ctr.i33.i = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %42 = add i64 %gcov_ctr.i33.i, 1
  store i64 %42, ptr @__llvm_gcov_ctr.61, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !321
  %43 = load i32, ptr @nr_cpu_ids, align 4, !dbg !321
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @save_cpumask, i32 noundef %43) #15, !dbg !321
  %gcov_ctr.i34.i = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %44 = add i64 %gcov_ctr.i34.i, 1
  store i64 %44, ptr @__llvm_gcov_ctr.62, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !324
  %45 = load i32, ptr @nr_cpu_ids, align 4, !dbg !324
  %gcov_ctr.i.i35.i = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %46 = add i64 %gcov_ctr.i.i35.i, 1
  store i64 %46, ptr @__llvm_gcov_ctr.65, align 8
  %sub.i.i36.i = add i32 %45, 31, !dbg !327
  %47 = lshr i32 %sub.i.i36.i, 3, !dbg !330
  %mul.i.i.i = and i32 %47, 536870908, !dbg !330
  %48 = call ptr @memset(ptr @save_cpumask, i32 0, i32 %mul.i.i.i), !dbg !331
  %gcov_ctr.i37.i = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %49 = add i64 %gcov_ctr.i37.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.63, align 8
  %gcov_ctr.i.i38.i = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %50 = add i64 %gcov_ctr.i.i38.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.66, align 8
  %gcov_ctr.i.i.i.i35 = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %51 = add i64 %gcov_ctr.i.i.i.i35, 1
  store i64 %51, ptr @__llvm_gcov_ctr.67, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %call.i.i), !dbg !332
  %cmp.not.i.i.i.i = icmp ugt i32 %45, %call.i.i, !dbg !332
  br i1 %cmp.not.i.i.i.i, label %if.then8.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i, !dbg !332

if.then8.i.cpumask_set_cpu.exit.i_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !332
  br label %cpumask_set_cpu.exit.i, !dbg !332

land.rhs.i.i.i.i:                                 ; preds = %if.then8.i
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !332
  %52 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !332
  store i64 %52, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !332
  %.b40.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !332
  br i1 %.b40.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !dbg !332, !prof !339

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !332
  br label %cpumask_set_cpu.exit.i, !dbg !332

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !332
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !332
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !332
  %53 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !332
  store i64 %53, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !332
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #15, !dbg !332
  %gcov_ctr37.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !332
  %54 = add i64 %gcov_ctr37.i.i.i.i, 1, !dbg !332
  store i64 %54, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !332
  br label %cpumask_set_cpu.exit.i, !dbg !332

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then8.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %call.i.i, ptr noundef nonnull @save_cpumask) #15, !dbg !340
  br label %if.end10.i, !dbg !341

if.end10.i:                                       ; preds = %cpumask_set_cpu.exit.i, %if.end6.i.if.end10.i_crit_edge
  %gcov_ctr19.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 3), align 8, !dbg !342
  %55 = add i64 %gcov_ctr19.i, 1, !dbg !342
  store i64 %55, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 3), align 8, !dbg !342
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %call2.i15, i32 0, i32 68, !dbg !343
  %56 = ptrtoint ptr %pid.i to i32, !dbg !343
  call void @__asan_load4_noabort(i32 %56), !dbg !343
  %57 = load i32, ptr %pid.i, align 8, !dbg !343
  %call11.i = tail call i32 @sched_setaffinity(i32 noundef %57, ptr noundef nonnull @save_cpumask) #15, !dbg !344
  store ptr %call2.i15, ptr @hwlat_single_cpu_data, align 8, !dbg !345
  %call13.i = tail call i32 @wake_up_process(ptr noundef %call2.i15) #15, !dbg !346
  br label %if.end.thread42, !dbg !346

if.end.thread42:                                  ; preds = %if.end10.i, %if.then.i14
  tail call void @cpus_read_unlock() #15, !dbg !347
  br label %if.end4, !dbg !290

if.end:                                           ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14, !dbg !348
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !348
  %58 = add i64 %gcov_ctr17.i, 1, !dbg !348
  store i64 %58, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !348
  %call5.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16, !dbg !348
  tail call void @cpus_read_unlock() #15, !dbg !347
  br label %if.then2, !dbg !290

if.then2:                                         ; preds = %if.end, %if.end.thread39
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !349
  %59 = add i64 %gcov_ctr6, 1, !dbg !349
  store i64 %59, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !349
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16, !dbg !349
  br label %if.end4, !dbg !349

if.end4:                                          ; preds = %if.then2, %if.end.thread42, %if.end.thread
  ret void, !dbg !350
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hwlat_tracer_stop(ptr nocapture noundef readnone %tr) #5 align 64 !dbg !223 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !351
  %0 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0), !dbg !353
  %cmp = icmp eq i32 %0, 2, !dbg !353
  br i1 %cmp, label %if.then, label %get_cpu_data.exit.i, !dbg !354

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !355
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.41, align 8, !dbg !355
  %1 = add i64 %gcov_ctr, 1, !dbg !355
  store i64 %1, ptr @__llvm_gcov_ctr.41, align 8, !dbg !355
  tail call fastcc void @stop_per_cpu_kthreads(), !dbg !355
  br label %if.end, !dbg !355

get_cpu_data.exit.i:                              ; preds = %entry
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !356
  %2 = add i64 %gcov_ctr1, 1, !dbg !356
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !356
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !357
  %3 = add i64 %gcov_ctr2.i.i, 1, !dbg !357
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !357
  tail call void @cpus_read_lock() #15, !dbg !360
  %4 = load ptr, ptr @hwlat_single_cpu_data, align 8, !dbg !361
  %tobool.not.i = icmp eq ptr %4, null, !dbg !362
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !363

if.then.i:                                        ; preds = %get_cpu_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !364
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !364
  %5 = add i64 %gcov_ctr.i, 1, !dbg !364
  store i64 %5, ptr @__llvm_gcov_ctr.77, align 8, !dbg !364
  br label %stop_single_kthread.exit, !dbg !364

if.end.i:                                         ; preds = %get_cpu_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !365
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !365
  %6 = add i64 %gcov_ctr4.i, 1, !dbg !365
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !365
  %call2.i = tail call i32 @kthread_stop(ptr noundef nonnull %4) #15, !dbg !366
  store ptr null, ptr @hwlat_single_cpu_data, align 8, !dbg !367
  br label %stop_single_kthread.exit, !dbg !368

stop_single_kthread.exit:                         ; preds = %if.end.i, %if.then.i
  tail call void @cpus_read_unlock() #15, !dbg !369
  br label %if.end

if.end:                                           ; preds = %stop_single_kthread.exit, %if.then
  ret void, !dbg !370
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tracer_tracing_is_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_per_cpu_kthreads() unnamed_addr #5 align 64 !dbg !371 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !372
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.46, align 8
  tail call void @cpus_read_lock() #15, !dbg !373
  %call4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17, !dbg !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !374
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !374
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %1), !dbg !374
  %cmp5 = icmp ult i32 %call4, %1, !dbg !374
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge, !dbg !374

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !374
  br label %for.end, !dbg !374

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !374

for.body:                                         ; preds = %stop_cpu_kthread.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %call6 = phi i32 [ %call, %stop_cpu_kthread.exit.for.body_crit_edge ], [ %call4, %entry.for.body_crit_edge ]
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !375
  %2 = add i64 %gcov_ctr1, 1, !dbg !375
  store i64 %2, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !375
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6, !dbg !376
  %3 = ptrtoint ptr %arrayidx.i to i32, !dbg !376
  call void @__asan_load4_noabort(i32 %3), !dbg !376
  %4 = load i32, ptr %arrayidx.i, align 4, !dbg !376
  %add.i = add i32 %4, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !376
  %5 = inttoptr i32 %add.i to ptr, !dbg !376
  %6 = ptrtoint ptr %5 to i32, !dbg !379
  call void @__asan_load4_noabort(i32 %6), !dbg !379
  %7 = load ptr, ptr %5, align 8, !dbg !379
  %tobool.not.i = icmp eq ptr %7, null, !dbg !380
  br i1 %tobool.not.i, label %for.body.stop_cpu_kthread.exit_crit_edge, label %if.then.i, !dbg !380

for.body.stop_cpu_kthread.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !380
  br label %stop_cpu_kthread.exit, !dbg !380

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !381
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.76, align 8, !dbg !381
  %8 = add i64 %gcov_ctr.i, 1, !dbg !381
  store i64 %8, ptr @__llvm_gcov_ctr.76, align 8, !dbg !381
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %7) #15, !dbg !382
  br label %stop_cpu_kthread.exit, !dbg !382

stop_cpu_kthread.exit:                            ; preds = %if.then.i, %for.body.stop_cpu_kthread.exit_crit_edge
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !383
  %9 = add i64 %gcov_ctr13.i, 1, !dbg !383
  store i64 %9, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !383
  %10 = ptrtoint ptr %arrayidx.i to i32, !dbg !383
  call void @__asan_load4_noabort(i32 %10), !dbg !383
  %11 = load i32, ptr %arrayidx.i, align 4, !dbg !383
  %add11.i = add i32 %11, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !383
  %12 = inttoptr i32 %add11.i to ptr, !dbg !383
  %13 = ptrtoint ptr %12 to i32, !dbg !384
  call void @__asan_store4_noabort(i32 %13), !dbg !384
  store ptr null, ptr %12, align 8, !dbg !384
  %call = tail call i32 @cpumask_next(i32 noundef %call6, ptr noundef nonnull @__cpu_online_mask) #17, !dbg !374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !374
  %14 = load i32, ptr @nr_cpu_ids, align 4, !dbg !374
  %cmp = icmp ult i32 %call, %14, !dbg !374
  br i1 %cmp, label %stop_cpu_kthread.exit.for.body_crit_edge, label %stop_cpu_kthread.exit.for.end_crit_edge, !dbg !374, !llvm.loop !385

stop_cpu_kthread.exit.for.end_crit_edge:          ; preds = %stop_cpu_kthread.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !374
  br label %for.end, !dbg !374

stop_cpu_kthread.exit.for.body_crit_edge:         ; preds = %stop_cpu_kthread.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !374
  br label %for.body, !dbg !374

for.end:                                          ; preds = %stop_cpu_kthread.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @cpus_read_unlock() #15, !dbg !387
  ret void, !dbg !388
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kthread_fn(ptr nocapture noundef readnone %data) #5 align 64 !dbg !389 {
entry:
  %s.i = alloca %struct.hwlat_sample, align 8
  call void @__sanitizer_cov_trace_pc() #14, !dbg !390
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.49, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.49, align 16
  %timestamp.i = getelementptr inbounds %struct.hwlat_sample, ptr %s.i, i32 0, i32 4
  %duration.i = getelementptr inbounds %struct.hwlat_sample, ptr %s.i, i32 0, i32 1
  %outer_duration.i = getelementptr inbounds %struct.hwlat_sample, ptr %s.i, i32 0, i32 2
  %nmi_total_ts488.i = getelementptr inbounds %struct.hwlat_sample, ptr %s.i, i32 0, i32 3
  %nmi_count490.i = getelementptr inbounds %struct.hwlat_sample, ptr %s.i, i32 0, i32 5
  %count491.i = getelementptr inbounds %struct.hwlat_sample, ptr %s.i, i32 0, i32 6
  br label %while.cond, !dbg !391

while.cond:                                       ; preds = %if.end198.while.cond_crit_edge, %entry
  %call = call zeroext i1 @kthread_should_stop() #15, !dbg !392
  br i1 %call, label %while.cond.while.end_crit_edge, label %while.body, !dbg !391

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14, !dbg !391
  br label %while.end, !dbg !391

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !393
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1), !dbg !394
  %cmp = icmp eq i32 %1, 1, !dbg !394
  br i1 %cmp, label %if.then, label %while.body.do.body_crit_edge, !dbg !395

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !395
  br label %do.body, !dbg !395

if.then:                                          ; preds = %while.body
  %gcov_ctr204 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !396
  %2 = add i64 %gcov_ctr204, 1, !dbg !396
  store i64 %2, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !396
  %3 = load ptr, ptr @hwlat_trace, align 4, !dbg !397
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !400
  %4 = add i64 %gcov_ctr.i.i, 1, !dbg !400
  store i64 %4, ptr @__llvm_gcov_ctr.35, align 8, !dbg !400
  %5 = call i32 @llvm.read_register.i32(metadata !116) #15, !dbg !400
  %and.i.i = and i32 %5, -16384, !dbg !402
  %6 = inttoptr i32 %and.i.i to ptr, !dbg !403
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2, !dbg !404
  %7 = ptrtoint ptr %task.i to i32, !dbg !404
  call void @__asan_load4_noabort(i32 %7), !dbg !404
  %8 = load ptr, ptr %task.i, align 8, !dbg !404
  %cpus_ptr.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 33, !dbg !405
  %9 = ptrtoint ptr %cpus_ptr.i to i32, !dbg !405
  call void @__asan_load4_noabort(i32 %9), !dbg !405
  %10 = load ptr, ptr %cpus_ptr.i, align 4, !dbg !405
  %gcov_ctr.i27.i = load i64, ptr @__llvm_gcov_ctr.60, align 8
  %11 = add i64 %gcov_ctr.i27.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.60, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !406
  %12 = load i32, ptr @nr_cpu_ids, align 4, !dbg !406
  %gcov_ctr18.i.i.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 5), align 8, !dbg !409
  %13 = add i64 %gcov_ctr18.i.i.i, 1, !dbg !409
  store i64 %13, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.64, i32 0, i32 5), align 8, !dbg !409
  %call13.i.i.i = call i32 @__bitmap_equal(ptr noundef nonnull @save_cpumask, ptr noundef %10, i32 noundef %12) #15, !dbg !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i), !dbg !413
  %tobool.i.not.i = icmp eq i32 %call13.i.i.i, 0, !dbg !413
  br i1 %tobool.i.not.i, label %if.then.change_mode.i_crit_edge, label %if.end.i, !dbg !414

if.then.change_mode.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14, !dbg !414
  br label %change_mode.i, !dbg !414

if.end.i:                                         ; preds = %if.then
  call void @cpus_read_lock() #15, !dbg !415
  %tracing_cpumask.i = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 37, !dbg !416
  %14 = ptrtoint ptr %tracing_cpumask.i to i32, !dbg !416
  call void @__asan_load4_noabort(i32 %14), !dbg !416
  %15 = load ptr, ptr %tracing_cpumask.i, align 8, !dbg !416
  %gcov_ctr.i28.i = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %16 = add i64 %gcov_ctr.i28.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.44, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !417
  %17 = load i32, ptr @nr_cpu_ids, align 4, !dbg !417
  %gcov_ctr8.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !419
  %18 = add i64 %gcov_ctr8.i.i.i, 1, !dbg !419
  store i64 %18, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !419
  %call.i.i.i = call i32 @__bitmap_and(ptr noundef nonnull @save_cpumask, ptr noundef nonnull @__cpu_online_mask, ptr noundef %15, i32 noundef %17) #15, !dbg !421
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3, !dbg !422
  %19 = ptrtoint ptr %cpu.i to i32, !dbg !422
  call void @__asan_load4_noabort(i32 %19), !dbg !422
  %20 = load i32, ptr %cpu.i, align 4, !dbg !422
  %call4.i = call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @save_cpumask) #17, !dbg !423
  call void @cpus_read_unlock() #15, !dbg !424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !425
  %21 = load i32, ptr @nr_cpu_ids, align 4, !dbg !425
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %21), !dbg !426
  %cmp.not.i = icmp ult i32 %call4.i, %21, !dbg !426
  br i1 %cmp.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i, !dbg !427

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !427
  br label %if.end7.i, !dbg !427

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !428
  %gcov_ctr15.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !428
  %22 = add i64 %gcov_ctr15.i, 1, !dbg !428
  store i64 %22, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), align 8, !dbg !428
  %gcov_ctr.i41.i = load i64, ptr @__llvm_gcov_ctr.61, align 8
  %23 = add i64 %gcov_ctr.i41.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.61, align 8
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull @save_cpumask, i32 noundef %21) #15, !dbg !429
  br label %if.end7.i, !dbg !431

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %next_cpu.0.i = phi i32 [ %call.i.i, %if.then5.i ], [ %call4.i, %if.end.i.if.end7.i_crit_edge ], !dbg !432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !433
  %24 = load i32, ptr @nr_cpu_ids, align 4, !dbg !433
  call void @__sanitizer_cov_trace_cmp4(i32 %next_cpu.0.i, i32 %24), !dbg !434
  %cmp8.not.i = icmp ult i32 %next_cpu.0.i, %24, !dbg !434
  br i1 %cmp8.not.i, label %cpumask_set_cpu.exit.i, label %if.end7.i.change_mode.i_crit_edge, !dbg !435

if.end7.i.change_mode.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !435
  br label %change_mode.i, !dbg !435

cpumask_set_cpu.exit.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !436
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 3), align 8, !dbg !436
  %25 = add i64 %gcov_ctr17.i, 1, !dbg !436
  store i64 %25, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 3), align 8, !dbg !436
  %gcov_ctr.i42.i = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %26 = add i64 %gcov_ctr.i42.i, 1
  store i64 %26, ptr @__llvm_gcov_ctr.62, align 8
  %gcov_ctr.i.i43.i = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %27 = add i64 %gcov_ctr.i.i43.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.65, align 8
  %sub.i.i44.i = add i32 %24, 31, !dbg !437
  %28 = lshr i32 %sub.i.i44.i, 3, !dbg !440
  %mul.i.i.i = and i32 %28, 536870908, !dbg !440
  %29 = call ptr @memset(ptr @save_cpumask, i32 0, i32 %mul.i.i.i), !dbg !441
  %gcov_ctr.i45.i = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %30 = add i64 %gcov_ctr.i45.i, 1
  store i64 %30, ptr @__llvm_gcov_ctr.63, align 8
  %gcov_ctr.i.i46.i = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %31 = add i64 %gcov_ctr.i.i46.i, 1
  store i64 %31, ptr @__llvm_gcov_ctr.66, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %32 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %32, ptr @__llvm_gcov_ctr.67, align 16
  call void @_set_bit(i32 noundef %next_cpu.0.i, ptr noundef nonnull @save_cpumask) #15, !dbg !442
  %call11.i = call i32 @sched_setaffinity(i32 noundef 0, ptr noundef nonnull @save_cpumask) #15, !dbg !444
  br label %do.body, !dbg !445

change_mode.i:                                    ; preds = %if.end7.i.change_mode.i_crit_edge, %if.then.change_mode.i_crit_edge
  %.sink.i = phi ptr [ @__llvm_gcov_ctr.51, %if.then.change_mode.i_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 2), %if.end7.i.change_mode.i_crit_edge ]
  %33 = ptrtoint ptr %.sink.i to i32, !dbg !432
  call void @__asan_load8_noabort(i32 %33), !dbg !432
  %gcov_ctr16.i = load i64, ptr %.sink.i, align 16, !dbg !432
  %34 = add i64 %gcov_ctr16.i, 1, !dbg !432
  store i64 %34, ptr %.sink.i, align 16, !dbg !432
  store i32 0, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !446
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #16, !dbg !447
  br label %do.body, !dbg !448

do.body:                                          ; preds = %change_mode.i, %cpumask_set_cpu.exit.i, %while.body.do.body_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 8, !dbg !449
  %35 = add i64 %gcov_ctr.i, 1, !dbg !449
  store i64 %35, ptr @__llvm_gcov_ctr.52, align 8, !dbg !449
  %gcov_ctr.i.i305 = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %36 = add i64 %gcov_ctr.i.i305, 1
  store i64 %36, ptr @__llvm_gcov_ctr.69, align 8
  %37 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !453, !srcloc !457
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.68, align 8
  %38 = add i64 %gcov_ctr.i2.i, 1
  store i64 %38, ptr @__llvm_gcov_ctr.68, align 8
  %and.i.i306 = and i32 %37, 128, !dbg !458
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i306), !dbg !461
  %tobool.not = icmp eq i32 %and.i.i306, 0, !dbg !461
  %gcov_ctr.i307 = load i64, ptr @__llvm_gcov_ctr.53, align 8, !dbg !462
  %39 = add i64 %gcov_ctr.i307, 1, !dbg !462
  store i64 %39, ptr @__llvm_gcov_ctr.53, align 8, !dbg !462
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !dbg !462, !srcloc !465
  br i1 %tobool.not, label %if.then3, label %do.body.if.end4_crit_edge, !dbg !461

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !461
  br label %if.end4, !dbg !461

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14, !dbg !461
  %gcov_ctr205 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !461
  %40 = add i64 %gcov_ctr205, 1, !dbg !461
  store i64 %40, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !461
  call void @trace_hardirqs_off() #15, !dbg !461
  br label %if.end4, !dbg !461

if.end4:                                          ; preds = %if.then3, %do.body.if.end4_crit_edge
  %41 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !466
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41), !dbg !470
  %cmp.i.i = icmp eq i32 %41, 2, !dbg !470
  br i1 %cmp.i.i, label %do.body.i.i, label %if.else.i.i, !dbg !471

do.body.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14, !dbg !472
  %gcov_ctr.i.i308 = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !472
  %42 = add i64 %gcov_ctr.i.i308, 1, !dbg !472
  store i64 %42, ptr @__llvm_gcov_ctr.33, align 8, !dbg !472
  %gcov_ctr.i.i.i309 = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !473
  %43 = add i64 %gcov_ctr.i.i.i309, 1, !dbg !473
  store i64 %43, ptr @__llvm_gcov_ctr.35, align 8, !dbg !473
  %44 = call i32 @llvm.read_register.i32(metadata !116) #15, !dbg !473
  %and.i.i.i310 = and i32 %44, -16384, !dbg !475
  %45 = inttoptr i32 %and.i.i.i310 to ptr, !dbg !476
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3, !dbg !472
  %46 = ptrtoint ptr %cpu.i.i to i32, !dbg !472
  call void @__asan_load4_noabort(i32 %46), !dbg !472
  %47 = load i32, ptr %cpu.i.i, align 4, !dbg !472
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47, !dbg !472
  %48 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !472
  call void @__asan_load4_noabort(i32 %48), !dbg !472
  %49 = load i32, ptr %arrayidx.i.i, align 4, !dbg !472
  %add.i.i = add i32 %49, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !472
  %50 = inttoptr i32 %add.i.i to ptr, !dbg !472
  br label %get_cpu_data.exit.i, !dbg !477

if.else.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14, !dbg !478
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !478
  %51 = add i64 %gcov_ctr2.i.i, 1, !dbg !478
  store i64 %51, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !478
  br label %get_cpu_data.exit.i, !dbg !478

get_cpu_data.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %retval.0.i.i = phi ptr [ %50, %do.body.i.i ], [ @hwlat_single_cpu_data, %if.else.i.i ], !dbg !479
  %52 = load ptr, ptr @hwlat_trace, align 4, !dbg !480
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %s.i) #15, !dbg !481
  %53 = call ptr @memset(ptr %s.i, i32 255, i32 56), !dbg !482
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_thresh to i32)), !dbg !483
  %54 = load i32, ptr @tracing_thresh, align 4, !dbg !483
  %conv.i = zext i32 %54 to i64, !dbg !483
  %gcov_ctr.i311 = load i64, ptr @__llvm_gcov_ctr.54, align 16, !dbg !484
  %55 = add i64 %gcov_ctr.i311, 1, !dbg !484
  store i64 %55, ptr @__llvm_gcov_ctr.54, align 16, !dbg !484
  %gcov_ctr512.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 4), align 16, !dbg !484
  %56 = add i64 %gcov_ctr512.i, 1, !dbg !484
  store i64 %56, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 4), align 16, !dbg !484
  %gcov_ctr514.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 6), align 16, !dbg !484
  %57 = add i64 %gcov_ctr514.i, 1, !dbg !484
  store i64 %57, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 6), align 16, !dbg !484
  %gcov_ctr516.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 8), align 16, !dbg !484
  %58 = add i64 %gcov_ctr516.i, 1, !dbg !484
  store i64 %58, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 8), align 16, !dbg !484
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !485
  %59 = add i64 %gcov_ctr14.i.i, 1, !dbg !485
  store i64 %59, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !485
  %60 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv.i, i32 0) #18, !dbg !485, !srcloc !489
  %asmresult.i.i = extractvalue { i64, i32 } %60, 0, !dbg !485
  %asmresult4.i.i = extractvalue { i64, i32 } %60, 1, !dbg !485
  %61 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #18, !dbg !490, !srcloc !491
  %asmresult10.i.i = extractvalue { i64, i32 } %61, 0, !dbg !490
  %div1611.i = lshr i64 %asmresult10.i.i, 9, !dbg !484
  %nmi_total_ts.i = getelementptr inbounds %struct.hwlat_kthread_data, ptr %retval.0.i.i, i32 0, i32 2, !dbg !492
  %62 = ptrtoint ptr %nmi_total_ts.i to i32, !dbg !493
  call void @__asan_store8_noabort(i32 %62), !dbg !493
  store i64 0, ptr %nmi_total_ts.i, align 8, !dbg !493
  %nmi_count.i = getelementptr inbounds %struct.hwlat_kthread_data, ptr %retval.0.i.i, i32 0, i32 3, !dbg !494
  %63 = ptrtoint ptr %nmi_count.i to i32, !dbg !495
  call void @__asan_store4_noabort(i32 %63), !dbg !495
  store i32 0, ptr %nmi_count.i, align 8, !dbg !495
  call void asm sideeffect "", "~{memory}"() #15, !dbg !496, !srcloc !497
  store i8 1, ptr @trace_hwlat_callback_enabled, align 1, !dbg !498
  %call183.i = call i64 @trace_clock_local() #15, !dbg !499
  br label %do.body.i, !dbg !500

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %get_cpu_data.exit.i
  %count.0.i = phi i32 [ 0, %get_cpu_data.exit.i ], [ %count.1.i, %do.cond.i.do.body.i_crit_edge ], !dbg !501
  %outer_sample.0.i = phi i64 [ 0, %get_cpu_data.exit.i ], [ %outer_sample.1.i, %do.cond.i.do.body.i_crit_edge ], !dbg !501
  %sample.0.i = phi i64 [ 0, %get_cpu_data.exit.i ], [ %sample.1.i, %do.cond.i.do.body.i_crit_edge ], !dbg !501
  %last_total.0.i = phi i64 [ 0, %get_cpu_data.exit.i ], [ %div1581.i.i14.i, %do.cond.i.do.body.i_crit_edge ], !dbg !501
  %outer_diff.0.i = phi i64 [ 0, %get_cpu_data.exit.i ], [ %outer_diff.1.i, %do.cond.i.do.body.i_crit_edge ], !dbg !501
  %last_t2.0.i = phi i64 [ 0, %get_cpu_data.exit.i ], [ %call185.i, %do.cond.i.do.body.i_crit_edge ], !dbg !501
  %call184.i = call i64 @trace_clock_local() #15, !dbg !502
  %call185.i = call i64 @trace_clock_local() #15, !dbg !503
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %last_t2.0.i), !dbg !504
  %tobool186.not.i = icmp eq i64 %last_t2.0.i, 0, !dbg !504
  br i1 %tobool186.not.i, label %do.body.i.if.end202.i_crit_edge, label %if.end197.i, !dbg !504

do.body.i.if.end202.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !504
  br label %if.end202.i, !dbg !504

if.end197.i:                                      ; preds = %do.body.i
  %sub188.i = sub i64 %call184.i, %last_t2.0.i, !dbg !505
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %64 = add i64 %gcov_ctr.i3.i, 1
  store i64 %64, ptr @__llvm_gcov_ctr.70, align 8
  %gcov_ctr.i.i4.i = load i64, ptr @__llvm_gcov_ctr.72, align 16, !dbg !506
  %65 = add i64 %gcov_ctr.i.i4.i, 1, !dbg !506
  store i64 %65, ptr @__llvm_gcov_ctr.72, align 16, !dbg !506
  %gcov_ctr183.i.i.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !506
  %66 = add i64 %gcov_ctr183.i.i.i, 1, !dbg !506
  store i64 %66, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !506
  %gcov_ctr185.i.i.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 6), align 16, !dbg !506
  %67 = add i64 %gcov_ctr185.i.i.i, 1, !dbg !506
  store i64 %67, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 6), align 16, !dbg !506
  %gcov_ctr187.i.i.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 8), align 16, !dbg !506
  %68 = add i64 %gcov_ctr187.i.i.i, 1, !dbg !506
  store i64 %68, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 8), align 16, !dbg !506
  %gcov_ctr14.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !512
  %69 = add i64 %gcov_ctr14.i.i.i.i, 1, !dbg !512
  store i64 %69, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !512
  %70 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub188.i, i32 0) #18, !dbg !512, !srcloc !489
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %70, 0, !dbg !512
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %70, 1, !dbg !512
  %71 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub188.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !dbg !514, !srcloc !491
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %71, 0, !dbg !514
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9, !dbg !506
  %gcov_ctr525.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 17), align 8, !dbg !515
  %72 = add i64 %gcov_ctr525.i, 1, !dbg !515
  store i64 %72, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 17), align 8, !dbg !515
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i.i.i, i64 %outer_sample.0.i), !dbg !516
  %cmp198.i = icmp ugt i64 %div1581.i.i.i, %outer_sample.0.i, !dbg !516
  br i1 %cmp198.i, label %if.then200.i, label %if.end197.i.if.end202.i_crit_edge, !dbg !515

if.end197.i.if.end202.i_crit_edge:                ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !515
  br label %if.end202.i, !dbg !515

if.then200.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !517
  %gcov_ctr526.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 18), align 16, !dbg !517
  %73 = add i64 %gcov_ctr526.i, 1, !dbg !517
  store i64 %73, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 18), align 16, !dbg !517
  br label %if.end202.i, !dbg !518

if.end202.i:                                      ; preds = %if.then200.i, %if.end197.i.if.end202.i_crit_edge, %do.body.i.if.end202.i_crit_edge
  %outer_sample.1.i = phi i64 [ %div1581.i.i.i, %if.then200.i ], [ %outer_sample.0.i, %if.end197.i.if.end202.i_crit_edge ], [ %outer_sample.0.i, %do.body.i.if.end202.i_crit_edge ], !dbg !501
  %outer_diff.1.i = phi i64 [ %div1581.i.i.i, %if.then200.i ], [ %div1581.i.i.i, %if.end197.i.if.end202.i_crit_edge ], [ %outer_diff.0.i, %do.body.i.if.end202.i_crit_edge ], !dbg !501
  %sub203.i = sub i64 %call185.i, %call183.i, !dbg !519
  %gcov_ctr.i5.i = load i64, ptr @__llvm_gcov_ctr.70, align 8
  %74 = add i64 %gcov_ctr.i5.i, 1
  store i64 %74, ptr @__llvm_gcov_ctr.70, align 8
  %gcov_ctr.i.i6.i = load i64, ptr @__llvm_gcov_ctr.72, align 16, !dbg !520
  %75 = add i64 %gcov_ctr.i.i6.i, 1, !dbg !520
  store i64 %75, ptr @__llvm_gcov_ctr.72, align 16, !dbg !520
  %gcov_ctr183.i.i7.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !520
  %76 = add i64 %gcov_ctr183.i.i7.i, 1, !dbg !520
  store i64 %76, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !520
  %gcov_ctr185.i.i8.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 6), align 16, !dbg !520
  %77 = add i64 %gcov_ctr185.i.i8.i, 1, !dbg !520
  store i64 %77, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 6), align 16, !dbg !520
  %gcov_ctr187.i.i9.i = load i64, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 8), align 16, !dbg !520
  %78 = add i64 %gcov_ctr187.i.i9.i, 1, !dbg !520
  store i64 %78, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 8), align 16, !dbg !520
  %gcov_ctr14.i.i.i10.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !523
  %79 = add i64 %gcov_ctr14.i.i.i10.i, 1, !dbg !523
  store i64 %79, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !523
  %80 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub203.i, i32 0) #18, !dbg !523, !srcloc !489
  %asmresult.i.i.i11.i = extractvalue { i64, i32 } %80, 0, !dbg !523
  %asmresult4.i.i.i12.i = extractvalue { i64, i32 } %80, 1, !dbg !523
  %81 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub203.i, i64 %asmresult.i.i.i11.i, i32 %asmresult4.i.i.i12.i) #18, !dbg !525, !srcloc !491
  %asmresult10.i.i.i13.i = extractvalue { i64, i32 } %81, 0, !dbg !525
  %div1581.i.i14.i = lshr i64 %asmresult10.i.i.i13.i, 9, !dbg !520
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i.i14.i, i64 %last_total.0.i), !dbg !526
  %cmp205.i = icmp ult i64 %div1581.i.i14.i, %last_total.0.i, !dbg !526
  br i1 %cmp205.i, label %if.then207.i, label %if.end215.i, !dbg !527

if.then207.i:                                     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !528
  %82 = load ptr, ptr @hwlat_trace, align 4, !dbg !528
  %buffer211.i = getelementptr inbounds %struct.trace_array, ptr %82, i32 0, i32 2, i32 1, !dbg !528
  %83 = ptrtoint ptr %buffer211.i to i32, !dbg !528
  call void @__asan_load4_noabort(i32 %83), !dbg !528
  %84 = load ptr, ptr %buffer211.i, align 4, !dbg !528
  %gcov_ctr556.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 48), align 16, !dbg !528
  %85 = add i64 %gcov_ctr556.i, 1, !dbg !528
  store i64 %85, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 48), align 16, !dbg !528
  %call214.i = call i32 (ptr, i32, ptr, ...) @trace_array_printk_buf(ptr noundef %84, i32 noundef 1, ptr noundef nonnull @.str.12) #15, !dbg !528
  br label %do.end.i, !dbg !529

if.end215.i:                                      ; preds = %if.end202.i
  %sub216.i = sub i64 %call185.i, %call184.i, !dbg !530
  %86 = add i64 %gcov_ctr.i5.i, 2
  store i64 %86, ptr @__llvm_gcov_ctr.70, align 8
  %87 = add i64 %gcov_ctr.i.i6.i, 2, !dbg !531
  store i64 %87, ptr @__llvm_gcov_ctr.72, align 16, !dbg !531
  %88 = add i64 %gcov_ctr183.i.i7.i, 2, !dbg !531
  store i64 %88, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !531
  %89 = add i64 %gcov_ctr185.i.i8.i, 2, !dbg !531
  store i64 %89, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 6), align 16, !dbg !531
  %90 = add i64 %gcov_ctr187.i.i9.i, 2, !dbg !531
  store i64 %90, ptr getelementptr inbounds ([17 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 8), align 16, !dbg !531
  %91 = add i64 %gcov_ctr14.i.i.i10.i, 2, !dbg !534
  store i64 %91, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !534
  %92 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub216.i, i32 0) #18, !dbg !534, !srcloc !489
  %asmresult.i.i.i21.i = extractvalue { i64, i32 } %92, 0, !dbg !534
  %asmresult4.i.i.i22.i = extractvalue { i64, i32 } %92, 1, !dbg !534
  %93 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub216.i, i64 %asmresult.i.i.i21.i, i32 %asmresult4.i.i.i22.i) #18, !dbg !536, !srcloc !491
  %asmresult10.i.i.i23.i = extractvalue { i64, i32 } %93, 0, !dbg !536
  %div1581.i.i24.i = lshr i64 %asmresult10.i.i.i23.i, 9, !dbg !531
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i.i24.i, i64 %div1611.i), !dbg !537
  %cmp218.i = icmp ugt i64 %div1581.i.i24.i, %div1611.i, !dbg !537
  br i1 %cmp218.i, label %if.end215.i.if.then222.i_crit_edge, label %lor.lhs.false.i, !dbg !538

if.end215.i.if.then222.i_crit_edge:               ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !538
  br label %if.then222.i, !dbg !538

lor.lhs.false.i:                                  ; preds = %if.end215.i
  %gcov_ctr527.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 19), align 8, !dbg !539
  %94 = add i64 %gcov_ctr527.i, 1, !dbg !539
  store i64 %94, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 19), align 8, !dbg !539
  call void @__sanitizer_cov_trace_cmp8(i64 %outer_diff.1.i, i64 %div1611.i), !dbg !540
  %cmp220.i = icmp ugt i64 %outer_diff.1.i, %div1611.i, !dbg !540
  br i1 %cmp220.i, label %lor.lhs.false.i.if.then222.i_crit_edge, label %lor.lhs.false.i.if.end237.i_crit_edge, !dbg !541

lor.lhs.false.i.if.end237.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !541
  br label %if.end237.i, !dbg !541

lor.lhs.false.i.if.then222.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !541
  br label %if.then222.i, !dbg !541

if.then222.i:                                     ; preds = %lor.lhs.false.i.if.then222.i_crit_edge, %if.end215.i.if.then222.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i), !dbg !542
  %tobool223.not.i = icmp eq i32 %count.0.i, 0, !dbg !542
  br i1 %tobool223.not.i, label %if.then224.i, label %if.then222.i.if.end225.i_crit_edge, !dbg !543

if.then222.i.if.end225.i_crit_edge:               ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !543
  br label %if.end225.i, !dbg !543

if.then224.i:                                     ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !544
  %gcov_ctr528.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 20), align 16, !dbg !544
  %95 = add i64 %gcov_ctr528.i, 1, !dbg !544
  store i64 %95, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 20), align 16, !dbg !544
  call void @ktime_get_real_ts64(ptr noundef %timestamp.i) #15, !dbg !545
  br label %if.end225.i, !dbg !545

if.end225.i:                                      ; preds = %if.then224.i, %if.then222.i.if.end225.i_crit_edge
  %gcov_ctr529.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 21), align 8, !dbg !546
  %96 = add i64 %gcov_ctr529.i, 1, !dbg !546
  store i64 %96, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 21), align 8, !dbg !546
  %inc.i = add i32 %count.0.i, 1, !dbg !546
  br label %if.end237.i, !dbg !547

if.end237.i:                                      ; preds = %if.end225.i, %lor.lhs.false.i.if.end237.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.end225.i ], [ %count.0.i, %lor.lhs.false.i.if.end237.i_crit_edge ], !dbg !501
  %gcov_ctr530.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 22), align 16, !dbg !548
  %97 = add i64 %gcov_ctr530.i, 1, !dbg !548
  store i64 %97, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 22), align 16, !dbg !548
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i.i24.i, i64 %sample.0.i), !dbg !549
  %cmp238.i = icmp ugt i64 %div1581.i.i24.i, %sample.0.i, !dbg !549
  br i1 %cmp238.i, label %if.then240.i, label %if.end237.i.do.cond.i_crit_edge, !dbg !548

if.end237.i.do.cond.i_crit_edge:                  ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !548
  br label %do.cond.i, !dbg !548

if.then240.i:                                     ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !550
  %gcov_ctr531.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 23), align 8, !dbg !550
  %98 = add i64 %gcov_ctr531.i, 1, !dbg !550
  store i64 %98, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 23), align 8, !dbg !550
  br label %do.cond.i, !dbg !551

do.cond.i:                                        ; preds = %if.then240.i, %if.end237.i.do.cond.i_crit_edge
  %sample.1.i = phi i64 [ %div1581.i.i24.i, %if.then240.i ], [ %sample.0.i, %if.end237.i.do.cond.i_crit_edge ], !dbg !501
  %99 = load i64, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 3), align 8, !dbg !552
  %cmp242.not.i = icmp ugt i64 %div1581.i.i14.i, %99, !dbg !553
  br i1 %cmp242.not.i, label %do.cond.i.do.end.i_crit_edge, label %do.cond.i.do.body.i_crit_edge, !dbg !554, !llvm.loop !555

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !554
  br label %do.body.i, !dbg !554

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !554
  br label %do.end.i, !dbg !554

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %if.then207.i
  %count.2.i = phi i32 [ %count.0.i, %if.then207.i ], [ %count.1.i, %do.cond.i.do.end.i_crit_edge ], !dbg !501
  %sample.2.i = phi i64 [ %sample.0.i, %if.then207.i ], [ %sample.1.i, %do.cond.i.do.end.i_crit_edge ], !dbg !501
  call void asm sideeffect "", "~{memory}"() #15, !dbg !557, !srcloc !558
  store i8 0, ptr @trace_hwlat_callback_enabled, align 1, !dbg !559
  call void asm sideeffect "", "~{memory}"() #15, !dbg !560, !srcloc !561
  call void @__sanitizer_cov_trace_cmp8(i64 %sample.2.i, i64 %div1611.i), !dbg !562
  %cmp244.i = icmp ugt i64 %sample.2.i, %div1611.i, !dbg !562
  br i1 %cmp244.i, label %do.end.i.if.then249.i_crit_edge, label %lor.lhs.false246.i, !dbg !563

do.end.i.if.then249.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !563
  br label %if.then249.i, !dbg !563

lor.lhs.false246.i:                               ; preds = %do.end.i
  %gcov_ctr532.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 24), align 16, !dbg !564
  %100 = add i64 %gcov_ctr532.i, 1, !dbg !564
  store i64 %100, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 24), align 16, !dbg !564
  call void @__sanitizer_cov_trace_cmp8(i64 %outer_sample.1.i, i64 %div1611.i), !dbg !565
  %cmp247.i = icmp ugt i64 %outer_sample.1.i, %div1611.i, !dbg !565
  br i1 %cmp247.i, label %lor.lhs.false246.i.if.then249.i_crit_edge, label %lor.lhs.false246.i.get_sample.exit_crit_edge, !dbg !566

lor.lhs.false246.i.get_sample.exit_crit_edge:     ; preds = %lor.lhs.false246.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !566
  br label %get_sample.exit, !dbg !566

lor.lhs.false246.i.if.then249.i_crit_edge:        ; preds = %lor.lhs.false246.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !566
  br label %if.then249.i, !dbg !566

if.then249.i:                                     ; preds = %lor.lhs.false246.i.if.then249.i_crit_edge, %do.end.i.if.then249.i_crit_edge
  %101 = ptrtoint ptr %nmi_total_ts.i to i32, !dbg !567
  call void @__asan_load8_noabort(i32 %101), !dbg !567
  %102 = load i64, ptr %nmi_total_ts.i, align 8, !dbg !567
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102), !dbg !568
  %tobool251.not.i = icmp eq i64 %102, 0, !dbg !568
  br i1 %tobool251.not.i, label %if.then249.i.if.end485.i_crit_edge, label %land.lhs.true255.i, !dbg !568

if.then249.i.if.end485.i_crit_edge:               ; preds = %if.then249.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !568
  br label %if.end485.i, !dbg !568

land.lhs.true255.i:                               ; preds = %if.then249.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !569
  %gcov_ctr533.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 25), align 8, !dbg !569
  %103 = add i64 %gcov_ctr533.i, 1, !dbg !569
  store i64 %103, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 25), align 8, !dbg !569
  %gcov_ctr537.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 29), align 8, !dbg !569
  %104 = add i64 %gcov_ctr537.i, 1, !dbg !569
  store i64 %104, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 29), align 8, !dbg !569
  %105 = ptrtoint ptr %nmi_total_ts.i to i32, !dbg !569
  call void @__asan_load8_noabort(i32 %105), !dbg !569
  %106 = load i64, ptr %nmi_total_ts.i, align 8, !dbg !569
  %gcov_ctr539.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 31), align 8, !dbg !569
  %107 = add i64 %gcov_ctr539.i, 1, !dbg !569
  store i64 %107, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 31), align 8, !dbg !569
  %gcov_ctr541.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 33), align 8, !dbg !569
  %108 = add i64 %gcov_ctr541.i, 1, !dbg !569
  store i64 %108, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 33), align 8, !dbg !569
  %gcov_ctr14.i25.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !570
  %109 = add i64 %gcov_ctr14.i25.i, 1, !dbg !570
  store i64 %109, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !570
  %110 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %106, i32 0) #18, !dbg !570, !srcloc !489
  %asmresult.i26.i = extractvalue { i64, i32 } %110, 0, !dbg !570
  %asmresult4.i27.i = extractvalue { i64, i32 } %110, 1, !dbg !570
  %111 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %106, i64 %asmresult.i26.i, i32 %asmresult4.i27.i) #18, !dbg !572, !srcloc !491
  %asmresult10.i28.i = extractvalue { i64, i32 } %111, 0, !dbg !572
  %div4522.i = lshr i64 %asmresult10.i28.i, 9, !dbg !569
  %112 = ptrtoint ptr %nmi_total_ts.i to i32, !dbg !569
  call void @__asan_store8_noabort(i32 %112), !dbg !569
  store i64 %div4522.i, ptr %nmi_total_ts.i, align 8, !dbg !569
  br label %if.end485.i, !dbg !569

if.end485.i:                                      ; preds = %land.lhs.true255.i, %if.then249.i.if.end485.i_crit_edge
  %113 = load i64, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 1), align 8, !dbg !573
  %inc486.i = add i64 %113, 1, !dbg !573
  store i64 %inc486.i, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 1), align 8, !dbg !573
  %114 = ptrtoint ptr %s.i to i32, !dbg !574
  call void @__asan_store8_noabort(i32 %114), !dbg !574
  store i64 %inc486.i, ptr %s.i, align 8, !dbg !574
  %115 = ptrtoint ptr %duration.i to i32, !dbg !575
  call void @__asan_store8_noabort(i32 %115), !dbg !575
  store i64 %sample.2.i, ptr %duration.i, align 8, !dbg !575
  %116 = ptrtoint ptr %outer_duration.i to i32, !dbg !576
  call void @__asan_store8_noabort(i32 %116), !dbg !576
  store i64 %outer_sample.1.i, ptr %outer_duration.i, align 8, !dbg !576
  %117 = ptrtoint ptr %nmi_total_ts.i to i32, !dbg !577
  call void @__asan_load8_noabort(i32 %117), !dbg !577
  %118 = load i64, ptr %nmi_total_ts.i, align 8, !dbg !577
  %119 = ptrtoint ptr %nmi_total_ts488.i to i32, !dbg !578
  call void @__asan_store8_noabort(i32 %119), !dbg !578
  store i64 %118, ptr %nmi_total_ts488.i, align 8, !dbg !578
  %120 = ptrtoint ptr %nmi_count.i to i32, !dbg !579
  call void @__asan_load4_noabort(i32 %120), !dbg !579
  %121 = load i32, ptr %nmi_count.i, align 8, !dbg !579
  %122 = ptrtoint ptr %nmi_count490.i to i32, !dbg !580
  call void @__asan_store4_noabort(i32 %122), !dbg !580
  store i32 %121, ptr %nmi_count490.i, align 8, !dbg !580
  %123 = ptrtoint ptr %count491.i to i32, !dbg !581
  call void @__asan_store4_noabort(i32 %123), !dbg !581
  store i32 %count.2.i, ptr %count491.i, align 4, !dbg !581
  %124 = load ptr, ptr @hwlat_trace, align 4, !dbg !582
  %buffer1.i.i = getelementptr inbounds %struct.trace_array, ptr %124, i32 0, i32 2, i32 1, !dbg !585
  %125 = ptrtoint ptr %buffer1.i.i to i32, !dbg !585
  call void @__asan_load4_noabort(i32 %125), !dbg !585
  %126 = load ptr, ptr %buffer1.i.i, align 4, !dbg !585
  %gcov_ctr.i.i29.i312 = load i64, ptr @__llvm_gcov_ctr.73, align 8, !dbg !586
  %127 = add i64 %gcov_ctr.i.i29.i312, 1, !dbg !586
  store i64 %127, ptr @__llvm_gcov_ctr.73, align 8, !dbg !586
  %gcov_ctr.i.i.i.i313 = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %128 = add i64 %gcov_ctr.i.i.i.i313, 1
  store i64 %128, ptr @__llvm_gcov_ctr.69, align 8
  %129 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !dbg !590, !srcloc !457
  %gcov_ctr.i2.i.i.i = load i64, ptr @__llvm_gcov_ctr.74, align 8
  %130 = add i64 %gcov_ctr.i2.i.i.i, 1
  store i64 %130, ptr @__llvm_gcov_ctr.74, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.68, align 8
  %131 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %131, ptr @__llvm_gcov_ctr.68, align 8
  %and.i.i.i.i.i = lshr i32 %129, 7, !dbg !592
  %and.i.lobit.i.i.i.i = and i32 %and.i.i.i.i.i, 1, !dbg !592
  %call2.i.i.i.i = call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i.i) #15, !dbg !595
  %call4.i.i = call ptr @trace_buffer_lock_reserve(ptr noundef %126, i32 noundef 15, i32 noundef 64, i32 noundef %call2.i.i.i.i) #15, !dbg !596
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null, !dbg !597
  br i1 %tobool.not.i.i, label %if.end485.i.trace_hwlat_sample.exit.i_crit_edge, label %if.end.i.i, !dbg !598

if.end485.i.trace_hwlat_sample.exit.i_crit_edge:  ; preds = %if.end485.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !598
  br label %trace_hwlat_sample.exit.i, !dbg !598

if.end.i.i:                                       ; preds = %if.end485.i
  %call5.i.i = call ptr @ring_buffer_event_data(ptr noundef nonnull %call4.i.i) #15, !dbg !599
  %132 = ptrtoint ptr %s.i to i32, !dbg !600
  call void @__asan_load8_noabort(i32 %132), !dbg !600
  %133 = load i64, ptr %s.i, align 8, !dbg !600
  %conv.i.i = trunc i64 %133 to i32, !dbg !601
  %seqnum6.i.i = getelementptr inbounds %struct.hwlat_entry, ptr %call5.i.i, i32 0, i32 6, !dbg !602
  %134 = ptrtoint ptr %seqnum6.i.i to i32, !dbg !603
  call void @__asan_store4_noabort(i32 %134), !dbg !603
  store i32 %conv.i.i, ptr %seqnum6.i.i, align 4, !dbg !603
  %135 = ptrtoint ptr %duration.i to i32, !dbg !604
  call void @__asan_load8_noabort(i32 %135), !dbg !604
  %136 = load i64, ptr %duration.i, align 8, !dbg !604
  %duration7.i.i = getelementptr inbounds %struct.hwlat_entry, ptr %call5.i.i, i32 0, i32 1, !dbg !605
  %137 = ptrtoint ptr %duration7.i.i to i32, !dbg !606
  call void @__asan_store8_noabort(i32 %137), !dbg !606
  store i64 %136, ptr %duration7.i.i, align 8, !dbg !606
  %138 = ptrtoint ptr %outer_duration.i to i32, !dbg !607
  call void @__asan_load8_noabort(i32 %138), !dbg !607
  %139 = load i64, ptr %outer_duration.i, align 8, !dbg !607
  %outer_duration8.i.i = getelementptr inbounds %struct.hwlat_entry, ptr %call5.i.i, i32 0, i32 2, !dbg !608
  %140 = ptrtoint ptr %outer_duration8.i.i to i32, !dbg !609
  call void @__asan_store8_noabort(i32 %140), !dbg !609
  store i64 %139, ptr %outer_duration8.i.i, align 8, !dbg !609
  %timestamp.i.i = getelementptr inbounds %struct.hwlat_entry, ptr %call5.i.i, i32 0, i32 4, !dbg !610
  %141 = call ptr @memcpy(ptr %timestamp.i.i, ptr %timestamp.i, i32 16), !dbg !611
  %142 = ptrtoint ptr %nmi_total_ts488.i to i32, !dbg !612
  call void @__asan_load8_noabort(i32 %142), !dbg !612
  %143 = load i64, ptr %nmi_total_ts488.i, align 8, !dbg !612
  %nmi_total_ts10.i.i = getelementptr inbounds %struct.hwlat_entry, ptr %call5.i.i, i32 0, i32 3, !dbg !613
  %144 = ptrtoint ptr %nmi_total_ts10.i.i to i32, !dbg !614
  call void @__asan_store8_noabort(i32 %144), !dbg !614
  store i64 %143, ptr %nmi_total_ts10.i.i, align 8, !dbg !614
  %145 = ptrtoint ptr %nmi_count490.i to i32, !dbg !615
  call void @__asan_load4_noabort(i32 %145), !dbg !615
  %146 = load i32, ptr %nmi_count490.i, align 8, !dbg !615
  %nmi_count11.i.i = getelementptr inbounds %struct.hwlat_entry, ptr %call5.i.i, i32 0, i32 5, !dbg !616
  %147 = ptrtoint ptr %nmi_count11.i.i to i32, !dbg !617
  call void @__asan_store4_noabort(i32 %147), !dbg !617
  store i32 %146, ptr %nmi_count11.i.i, align 8, !dbg !617
  %148 = ptrtoint ptr %count491.i to i32, !dbg !618
  call void @__asan_load4_noabort(i32 %148), !dbg !618
  %149 = load i32, ptr %count491.i, align 4, !dbg !618
  %count12.i.i = getelementptr inbounds %struct.hwlat_entry, ptr %call5.i.i, i32 0, i32 7, !dbg !619
  %150 = ptrtoint ptr %count12.i.i to i32, !dbg !620
  call void @__asan_store4_noabort(i32 %150), !dbg !620
  store i32 %149, ptr %count12.i.i, align 8, !dbg !620
  %call13.i.i = call i32 @call_filter_check_discard(ptr noundef nonnull @event_hwlat, ptr noundef %call5.i.i, ptr noundef %126, ptr noundef nonnull %call4.i.i) #15, !dbg !621
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i), !dbg !621
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0, !dbg !621
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end.i.i.trace_hwlat_sample.exit.i_crit_edge, !dbg !622

if.end.i.i.trace_hwlat_sample.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !622
  br label %trace_hwlat_sample.exit.i, !dbg !622

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !623
  %gcov_ctr21.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 1), align 8, !dbg !623
  %151 = add i64 %gcov_ctr21.i.i, 1, !dbg !623
  store i64 %151, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 1), align 8, !dbg !623
  call void @trace_buffer_unlock_commit_nostack(ptr noundef %126, ptr noundef nonnull %call4.i.i) #15, !dbg !624
  br label %trace_hwlat_sample.exit.i, !dbg !624

trace_hwlat_sample.exit.i:                        ; preds = %if.then15.i.i, %if.end.i.i.trace_hwlat_sample.exit.i_crit_edge, %if.end485.i.trace_hwlat_sample.exit.i_crit_edge
  %.sink.i.i = phi ptr [ @__llvm_gcov_ctr.71, %if.end485.i.trace_hwlat_sample.exit.i_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 2), %if.then15.i.i ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 2), %if.end.i.i.trace_hwlat_sample.exit.i_crit_edge ]
  %152 = ptrtoint ptr %.sink.i.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %gcov_ctr22.i.i = load i64, ptr %.sink.i.i, align 16
  %153 = add i64 %gcov_ctr22.i.i, 1
  store i64 %153, ptr %.sink.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sample.2.i, i64 %outer_sample.1.i), !dbg !625
  %cmp493.i = icmp ugt i64 %sample.2.i, %outer_sample.1.i, !dbg !625
  br i1 %cmp493.i, label %cond.true495.i, label %cond.false496.i, !dbg !625

cond.true495.i:                                   ; preds = %trace_hwlat_sample.exit.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !625
  %gcov_ctr550.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 42), align 16, !dbg !625
  %154 = add i64 %gcov_ctr550.i, 1, !dbg !625
  store i64 %154, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 42), align 16, !dbg !625
  br label %cond.end497.i, !dbg !625

cond.false496.i:                                  ; preds = %trace_hwlat_sample.exit.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !625
  %gcov_ctr551.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 43), align 8, !dbg !625
  %155 = add i64 %gcov_ctr551.i, 1, !dbg !625
  store i64 %155, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 43), align 8, !dbg !625
  br label %cond.end497.i, !dbg !625

cond.end497.i:                                    ; preds = %cond.false496.i, %cond.true495.i
  %cond498.i = phi i64 [ %sample.2.i, %cond.true495.i ], [ %outer_sample.1.i, %cond.false496.i ], !dbg !625
  %max_latency.i = getelementptr inbounds %struct.trace_array, ptr %52, i32 0, i32 5, !dbg !626
  %156 = ptrtoint ptr %max_latency.i to i32, !dbg !626
  call void @__asan_load4_noabort(i32 %156), !dbg !626
  %157 = load i32, ptr %max_latency.i, align 4, !dbg !626
  %conv499.i = zext i32 %157 to i64, !dbg !627
  call void @__sanitizer_cov_trace_cmp8(i64 %cond498.i, i64 %conv499.i), !dbg !628
  %cmp500.i = icmp ugt i64 %cond498.i, %conv499.i, !dbg !628
  br i1 %cmp500.i, label %if.then502.i, label %cond.end497.i.get_sample.exit_crit_edge, !dbg !629

cond.end497.i.get_sample.exit_crit_edge:          ; preds = %cond.end497.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !629
  br label %get_sample.exit, !dbg !629

if.then502.i:                                     ; preds = %cond.end497.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !630
  %gcov_ctr552.i = load i64, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 44), align 16, !dbg !630
  %158 = add i64 %gcov_ctr552.i, 1, !dbg !630
  store i64 %158, ptr getelementptr inbounds ([50 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 44), align 16, !dbg !630
  %conv503.i = trunc i64 %cond498.i to i32, !dbg !630
  %159 = ptrtoint ptr %max_latency.i to i32, !dbg !631
  call void @__asan_store4_noabort(i32 %159), !dbg !631
  store i32 %conv503.i, ptr %max_latency.i, align 4, !dbg !631
  call void @latency_fsnotify(ptr noundef %52) #15, !dbg !632
  br label %get_sample.exit, !dbg !633

get_sample.exit:                                  ; preds = %if.then502.i, %cond.end497.i.get_sample.exit_crit_edge, %lor.lhs.false246.i.get_sample.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %s.i) #15, !dbg !634
  call void @trace_hardirqs_on() #15, !dbg !635
  %gcov_ctr.i314 = load i64, ptr @__llvm_gcov_ctr.55, align 8, !dbg !636
  %160 = add i64 %gcov_ctr.i314, 1, !dbg !636
  store i64 %160, ptr @__llvm_gcov_ctr.55, align 8, !dbg !636
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !dbg !636, !srcloc !639
  call void @mutex_lock_nested(ptr noundef nonnull @hwlat_data, i32 noundef 0) #15, !dbg !640
  %161 = load i64, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 2), align 8, !dbg !641
  %162 = load i64, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 3), align 8, !dbg !642
  %sub = sub i64 %161, %162, !dbg !643
  call void @mutex_unlock(ptr noundef nonnull @hwlat_data) #15, !dbg !644
  %gcov_ctr206 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !645
  %163 = add i64 %gcov_ctr206, 1, !dbg !645
  store i64 %163, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !645
  %gcov_ctr210 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 7), align 8, !dbg !645
  %164 = add i64 %gcov_ctr210, 1, !dbg !645
  store i64 %164, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 7), align 8, !dbg !645
  %gcov_ctr212 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 9), align 8, !dbg !645
  %165 = add i64 %gcov_ctr212, 1, !dbg !645
  store i64 %165, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 9), align 8, !dbg !645
  %gcov_ctr214 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 11), align 8, !dbg !645
  %166 = add i64 %gcov_ctr214, 1, !dbg !645
  store i64 %166, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 11), align 8, !dbg !645
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !646
  %167 = add i64 %gcov_ctr14.i, 1, !dbg !646
  store i64 %167, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !646
  %168 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i32 0) #18, !dbg !646, !srcloc !489
  %asmresult.i = extractvalue { i64, i32 } %168, 0, !dbg !646
  %asmresult4.i = extractvalue { i64, i32 } %168, 1, !dbg !646
  %169 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #18, !dbg !648, !srcloc !491
  %asmresult10.i = extractvalue { i64, i32 } %169, 0, !dbg !648
  %div172304 = lshr i64 %asmresult10.i, 9, !dbg !645
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %asmresult10.i), !dbg !649
  %cmp195 = icmp ult i64 %asmresult10.i, 512, !dbg !649
  %extract.t = trunc i64 %div172304 to i32, !dbg !650
  br i1 %cmp195, label %if.then197, label %get_sample.exit.if.end198_crit_edge, !dbg !650

get_sample.exit.if.end198_crit_edge:              ; preds = %get_sample.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !650
  br label %if.end198, !dbg !650

if.then197:                                       ; preds = %get_sample.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !651
  %gcov_ctr223 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 20), align 16, !dbg !651
  %170 = add i64 %gcov_ctr223, 1, !dbg !651
  store i64 %170, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 20), align 16, !dbg !651
  br label %if.end198, !dbg !652

if.end198:                                        ; preds = %if.then197, %get_sample.exit.if.end198_crit_edge
  %interval.0.off0 = phi i32 [ 1, %if.then197 ], [ %extract.t, %get_sample.exit.if.end198_crit_edge ]
  %call200 = call i32 @msleep_interruptible(i32 noundef %interval.0.off0) #15, !dbg !653
  %tobool201.not = icmp eq i32 %call200, 0, !dbg !653
  br i1 %tobool201.not, label %if.end198.while.cond_crit_edge, label %if.then202, !dbg !653, !llvm.loop !654

if.end198.while.cond_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14, !dbg !653
  br label %while.cond, !dbg !653

if.then202:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14, !dbg !656
  %gcov_ctr224 = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 21), align 8, !dbg !656
  %171 = add i64 %gcov_ctr224, 1, !dbg !656
  store i64 %171, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 21), align 8, !dbg !656
  br label %while.end, !dbg !656

while.end:                                        ; preds = %if.then202, %while.cond.while.end_crit_edge
  ret i32 0, !dbg !657
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_cpu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setaffinity(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_local() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_array_printk_buf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @latency_fsnotify(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_buffer_lock_reserve(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_filter_check_discard(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffer_unlock_commit_nostack(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwlat_cpu_init(i32 noundef %cpu) #5 align 64 !dbg !658 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !659
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.79, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.81, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32)), !dbg !660
  %2 = load ptr, ptr @system_wq, align 4, !dbg !660
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef %cpu, ptr noundef %2, ptr noundef nonnull @hwlat_hotplug_work) #15, !dbg !664
  ret i32 0, !dbg !665
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwlat_cpu_die(i32 noundef %cpu) #5 align 64 !dbg !666 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !667
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.80, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.80, align 8
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu, !dbg !668
  %1 = ptrtoint ptr %arrayidx.i to i32, !dbg !668
  call void @__asan_load4_noabort(i32 %1), !dbg !668
  %2 = load i32, ptr %arrayidx.i, align 4, !dbg !668
  %add.i = add i32 %2, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !668
  %3 = inttoptr i32 %add.i to ptr, !dbg !668
  %4 = ptrtoint ptr %3 to i32, !dbg !670
  call void @__asan_load4_noabort(i32 %4), !dbg !670
  %5 = load ptr, ptr %3, align 8, !dbg !670
  %tobool.not.i = icmp eq ptr %5, null, !dbg !671
  br i1 %tobool.not.i, label %entry.stop_cpu_kthread.exit_crit_edge, label %if.then.i, !dbg !671

entry.stop_cpu_kthread.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !671
  br label %stop_cpu_kthread.exit, !dbg !671

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !672
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.76, align 8, !dbg !672
  %6 = add i64 %gcov_ctr.i, 1, !dbg !672
  store i64 %6, ptr @__llvm_gcov_ctr.76, align 8, !dbg !672
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %5) #15, !dbg !673
  br label %stop_cpu_kthread.exit, !dbg !673

stop_cpu_kthread.exit:                            ; preds = %if.then.i, %entry.stop_cpu_kthread.exit_crit_edge
  %gcov_ctr13.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !674
  %7 = add i64 %gcov_ctr13.i, 1, !dbg !674
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !674
  %8 = ptrtoint ptr %arrayidx.i to i32, !dbg !674
  call void @__asan_load4_noabort(i32 %8), !dbg !674
  %9 = load i32, ptr %arrayidx.i, align 4, !dbg !674
  %add11.i = add i32 %9, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !674
  %10 = inttoptr i32 %add11.i to ptr, !dbg !674
  %11 = ptrtoint ptr %10 to i32, !dbg !675
  call void @__asan_store4_noabort(i32 %11), !dbg !675
  store ptr null, ptr %10, align 8, !dbg !675
  ret i32 0, !dbg !676
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hwlat_hotplug_workfn(ptr nocapture noundef readnone %dummy) #5 align 64 !dbg !677 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !678
  %0 = load ptr, ptr @hwlat_trace, align 4, !dbg !679
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !680
  %1 = add i64 %gcov_ctr.i, 1, !dbg !680
  store i64 %1, ptr @__llvm_gcov_ctr.35, align 8, !dbg !680
  %2 = tail call i32 @llvm.read_register.i32(metadata !116) #15, !dbg !680
  %and.i = and i32 %2, -16384, !dbg !682
  %3 = inttoptr i32 %and.i to ptr, !dbg !683
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3, !dbg !684
  %4 = ptrtoint ptr %cpu1 to i32, !dbg !684
  call void @__asan_load4_noabort(i32 %4), !dbg !684
  %5 = load i32, ptr %cpu1, align 4, !dbg !684
  tail call void @mutex_lock_nested(ptr noundef nonnull @trace_types_lock, i32 noundef 0) #15, !dbg !685
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwlat_data, i32 noundef 0) #15, !dbg !686
  tail call void @cpus_read_lock() #15, !dbg !687
  %.b11 = load i1, ptr @hwlat_busy, align 1, !dbg !688
  br i1 %.b11, label %lor.lhs.false, label %entry.if.then_crit_edge, !dbg !689

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !689
  br label %if.then, !dbg !689

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.82, align 16, !dbg !690
  %6 = add i64 %gcov_ctr, 1, !dbg !690
  store i64 %6, ptr @__llvm_gcov_ctr.82, align 16, !dbg !690
  %7 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !690
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7), !dbg !691
  %cmp.not = icmp eq i32 %7, 2, !dbg !691
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge, !dbg !692

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14, !dbg !692
  br label %if.then, !dbg !692

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !693
  %8 = add i64 %gcov_ctr7, 1, !dbg !693
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !693
  br label %out_unlock, !dbg !693

if.end:                                           ; preds = %lor.lhs.false
  %tracing_cpumask = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 37, !dbg !694
  %9 = ptrtoint ptr %tracing_cpumask to i32, !dbg !694
  call void @__asan_load4_noabort(i32 %9), !dbg !694
  %10 = load ptr, ptr %tracing_cpumask, align 8, !dbg !694
  %gcov_ctr.i12 = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %11 = add i64 %gcov_ctr.i12, 1
  store i64 %11, ptr @__llvm_gcov_ctr.83, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %12 = add i64 %gcov_ctr.i2.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.66, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !695
  %13 = load i32, ptr @nr_cpu_ids, align 4, !dbg !695
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.67, align 16
  %14 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.67, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5), !dbg !699
  %cmp.not.i.i.i = icmp ugt i32 %13, %5, !dbg !699
  br i1 %cmp.not.i.i.i, label %if.end.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i, !dbg !699

if.end.cpumask_test_cpu.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !699
  br label %cpumask_test_cpu.exit, !dbg !699

land.rhs.i.i.i:                                   ; preds = %if.end
  %gcov_ctr35.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !699
  %15 = add i64 %gcov_ctr35.i.i.i, 1, !dbg !699
  store i64 %15, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 1), align 8, !dbg !699
  %.b40.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !699
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !dbg !699, !prof !339

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !699
  br label %cpumask_test_cpu.exit, !dbg !699

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !699
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !699
  %gcov_ctr36.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !699
  %16 = add i64 %gcov_ctr36.i.i.i, 1, !dbg !699
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 2), align 16, !dbg !699
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #15, !dbg !699
  %gcov_ctr37.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !699
  %17 = add i64 %gcov_ctr37.i.i.i, 1, !dbg !699
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.67, i32 0, i32 3), align 8, !dbg !699
  br label %cpumask_test_cpu.exit, !dbg !699

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.end.cpumask_test_cpu.exit_crit_edge
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.84, align 8
  %18 = add i64 %gcov_ctr.i.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.84, align 8
  %div3.i.i = lshr i32 %5, 5, !dbg !701
  %arrayidx.i.i = getelementptr i32, ptr %10, i32 %div3.i.i, !dbg !705
  %19 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !705
  call void @__asan_load4_noabort(i32 %19), !dbg !705
  %20 = load volatile i32, ptr %arrayidx.i.i, align 4, !dbg !705
  %and.i.i = and i32 %5, 31, !dbg !706
  %21 = shl nuw i32 1, %and.i.i, !dbg !707
  %22 = and i32 %20, %21, !dbg !707
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22), !dbg !707
  %tobool3.not = icmp eq i32 %22, 0, !dbg !707
  br i1 %tobool3.not, label %if.then4, label %if.end5, !dbg !708

if.then4:                                         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14, !dbg !709
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !709
  %23 = add i64 %gcov_ctr8, 1, !dbg !709
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !709
  br label %out_unlock, !dbg !709

if.end5:                                          ; preds = %cpumask_test_cpu.exit
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 3), align 8, !dbg !710
  %24 = add i64 %gcov_ctr9, 1, !dbg !710
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 3), align 8, !dbg !710
  %gcov_ctr.i.i13 = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %25 = add i64 %gcov_ctr.i.i13, 1
  store i64 %25, ptr @__llvm_gcov_ctr.48, align 8
  %call.i.i = tail call ptr @kthread_create_on_cpu(ptr noundef nonnull @kthread_fn, ptr noundef null, i32 noundef %5, ptr noundef nonnull @.str.5) #15, !dbg !711
  %gcov_ctr.i.i.i14 = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %26 = add i64 %gcov_ctr.i.i.i14, 1
  store i64 %26, ptr @__llvm_gcov_ctr.50, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr), !dbg !714
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.i, !dbg !716

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14, !dbg !717
  %27 = add i64 %gcov_ctr.i.i.i14, 2
  store i64 %27, ptr @__llvm_gcov_ctr.50, align 8
  %gcov_ctr.i15 = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !718
  %28 = add i64 %gcov_ctr.i15, 1, !dbg !718
  store i64 %28, ptr @__llvm_gcov_ctr.45, align 8, !dbg !718
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16, !dbg !718
  br label %out_unlock, !dbg !719

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14, !dbg !720
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !720
  %29 = add i64 %gcov_ctr3.i.i, 1, !dbg !720
  store i64 %29, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !720
  %call2.i.i = tail call i32 @wake_up_process(ptr noundef %call.i.i) #15, !dbg !721
  %gcov_ctr.i12.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %30 = add i64 %gcov_ctr.i12.i, 1
  store i64 %30, ptr @__llvm_gcov_ctr.50, align 8
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !722
  %31 = add i64 %gcov_ctr9.i, 1, !dbg !722
  store i64 %31, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), align 8, !dbg !722
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5, !dbg !722
  %32 = ptrtoint ptr %arrayidx.i to i32, !dbg !722
  call void @__asan_load4_noabort(i32 %32), !dbg !722
  %33 = load i32, ptr %arrayidx.i, align 4, !dbg !722
  %add.i = add i32 %33, ptrtoint (ptr @hwlat_per_cpu_data to i32), !dbg !722
  %34 = inttoptr i32 %add.i to ptr, !dbg !722
  %35 = ptrtoint ptr %34 to i32, !dbg !723
  call void @__asan_store4_noabort(i32 %35), !dbg !723
  store ptr %call.i.i, ptr %34, align 8, !dbg !723
  br label %out_unlock, !dbg !724

out_unlock:                                       ; preds = %if.end.i, %if.then.i, %if.then4, %if.then
  tail call void @cpus_read_unlock() #15, !dbg !725
  tail call void @mutex_unlock(ptr noundef nonnull @hwlat_data) #15, !dbg !726
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #15, !dbg !727
  ret void, !dbg !728
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracefs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwlat_mode_write(ptr nocapture noundef readnone %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr nocapture noundef %ppos) #5 align 64 !dbg !729 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14, !dbg !730
  %0 = load ptr, ptr @hwlat_trace, align 4, !dbg !731
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15, !dbg !732
  %1 = call ptr @memset(ptr %buf, i32 255, i32 64), !dbg !733
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cnt), !dbg !734
  %cmp = icmp ugt i32 %cnt, 63, !dbg !734
  br i1 %cmp, label %if.then, label %if.end, !dbg !735

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !736
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.85, align 16, !dbg !736
  %2 = add i64 %gcov_ctr, 1, !dbg !736
  store i64 %2, ptr @__llvm_gcov_ctr.85, align 16, !dbg !736
  br label %cleanup, !dbg !736

if.end:                                           ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.87, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.89, align 16, !dbg !737
  %4 = add i64 %gcov_ctr.i.i, 1, !dbg !737
  store i64 %4, ptr @__llvm_gcov_ctr.89, align 16, !dbg !737
  %gcov_ctr67.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 7), align 8, !dbg !744
  %5 = add i64 %gcov_ctr67.i.i, 1, !dbg !744
  store i64 %5, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.89, i32 0, i32 7), align 8, !dbg !744
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %6 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.92, align 8
  %gcov_ctr1.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 1), align 8, !dbg !745
  %7 = add i64 %gcov_ctr1.i.i.i, 1, !dbg !745
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.92, i32 0, i32 1), align 8, !dbg !745
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %cnt, i1 noundef zeroext false) #15, !dbg !748
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !749
  %8 = add i64 %gcov_ctr3.i, 1, !dbg !749
  store i64 %8, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.87, i32 0, i32 1), align 8, !dbg !749
  %gcov_ctr.i7.i = load i64, ptr @__llvm_gcov_ctr.90, align 16
  %9 = add i64 %gcov_ctr.i7.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.90, align 16
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #15, !dbg !750
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15, !dbg !753
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i, !dbg !754

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !754
  br label %if.end.i.i, !dbg !754

land.lhs.true.i.i:                                ; preds = %if.end
  %gcov_ctr13.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 1), align 8, !dbg !755
  %10 = add i64 %gcov_ctr13.i.i, 1, !dbg !755
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 1), align 8, !dbg !755
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %cnt, i32 -1226833920) #18, !dbg !755, !srcloc !756
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0, !dbg !755
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i), !dbg !755
  %cmp.i8.i = icmp eq i32 %asmresult.i.i, 0, !dbg !755
  br i1 %cmp.i8.i, label %if.then.i10.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !dbg !757, !prof !339

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !757
  br label %if.end.i.i, !dbg !757

if.then.i10.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !758
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 2), align 16, !dbg !758
  %12 = add i64 %gcov_ctr14.i.i, 1, !dbg !758
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 2), align 16, !dbg !758
  %gcov_ctr.i.i9.i = load i64, ptr @__llvm_gcov_ctr.93, align 8
  %13 = add i64 %gcov_ctr.i.i9.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.93, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %cnt) #15, !dbg !759
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %14 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.95, align 8
  %gcov_ctr.i27.i.i = load i64, ptr @__llvm_gcov_ctr.94, align 8
  %15 = add i64 %gcov_ctr.i27.i.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.94, align 8
  %gcov_ctr.i.i28.i.i = load i64, ptr @__llvm_gcov_ctr.96, align 8
  %16 = add i64 %gcov_ctr.i.i28.i.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.96, align 8
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.98, align 8
  %17 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.98, align 8
  %gcov_ctr.i.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !763
  %18 = add i64 %gcov_ctr.i.i.i.i.i.i, 1, !dbg !763
  store i64 %18, ptr @__llvm_gcov_ctr.35, align 8, !dbg !763
  %19 = call i32 @llvm.read_register.i32(metadata !116) #15, !dbg !763
  %and.i.i.i.i.i.i = and i32 %19, -16384, !dbg !773
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr, !dbg !774
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4, !dbg !775
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !dbg !776, !srcloc !777
  %and.i.i.i.i = and i32 %21, -13, !dbg !778
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4, !dbg !779
  %gcov_ctr.i2.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.99, align 8
  %22 = add i64 %gcov_ctr.i2.i.i.i.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.99, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !dbg !780, !srcloc !783
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !dbg !784, !srcloc !785
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %cnt) #15, !dbg !786
  %gcov_ctr.i3.i.i.i = load i64, ptr @__llvm_gcov_ctr.97, align 8
  %23 = add i64 %gcov_ctr.i3.i.i.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.97, align 8
  %gcov_ctr.i.i4.i.i.i = load i64, ptr @__llvm_gcov_ctr.99, align 8
  %24 = add i64 %gcov_ctr.i.i4.i.i.i, 1
  store i64 %24, ptr @__llvm_gcov_ctr.99, align 8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #15, !dbg !787, !srcloc !783
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !dbg !791, !srcloc !785
  br label %if.end.i.i, !dbg !792

if.end.i.i:                                       ; preds = %if.then.i10.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %cnt, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i10.i ], [ %cnt, %land.lhs.true.i.i.if.end.i.i_crit_edge ], !dbg !793
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i), !dbg !794
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0, !dbg !794
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !dbg !794, !prof !339

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !795
  %gcov_ctr15.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 3), align 8, !dbg !795
  %25 = add i64 %gcov_ctr15.i.i, 1, !dbg !795
  store i64 %25, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 3), align 8, !dbg !795
  %sub.i.i = sub i32 %cnt, %res.0.i.i, !dbg !796
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i, !dbg !797
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i), !dbg !798
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 2), align 16, !dbg !799
  %27 = add i64 %gcov_ctr22, 1, !dbg !799
  store i64 %27, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 2), align 16, !dbg !799
  br label %cleanup, !dbg !799

if.end2:                                          ; preds = %if.end.i.i
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !800
  %28 = add i64 %gcov_ctr21, 1, !dbg !800
  store i64 %28, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !800
  %arrayidx = getelementptr [64 x i8], ptr %buf, i32 0, i32 %cnt, !dbg !801
  %29 = ptrtoint ptr %arrayidx to i32, !dbg !802
  call void @__asan_store1_noabort(i32 %29), !dbg !802
  store i8 0, ptr %arrayidx, align 1, !dbg !802
  %gcov_ctr.i38 = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %30 = add i64 %gcov_ctr.i38, 1
  store i64 %30, ptr @__llvm_gcov_ctr.88, align 8
  %call.i = call ptr @strim(ptr noundef nonnull %buf) #15, !dbg !803
  call void @mutex_lock_nested(ptr noundef nonnull @trace_types_lock, i32 noundef 0) #15, !dbg !807
  %.b3536 = load i1, ptr @hwlat_busy, align 1, !dbg !808
  br i1 %.b3536, label %if.then6, label %if.end2.if.end7_crit_edge, !dbg !808

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14, !dbg !808
  br label %if.end7, !dbg !808

if.then6:                                         ; preds = %if.end2
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 3), align 8, !dbg !809
  %31 = add i64 %gcov_ctr23, 1, !dbg !809
  store i64 %31, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 3), align 8, !dbg !809
  %32 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !810
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32), !dbg !812
  %cmp.i = icmp eq i32 %32, 2, !dbg !812
  br i1 %cmp.i, label %if.then.i40, label %get_cpu_data.exit.i.i, !dbg !813

if.then.i40:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14, !dbg !814
  %gcov_ctr.i39 = load i64, ptr @__llvm_gcov_ctr.41, align 8, !dbg !814
  %33 = add i64 %gcov_ctr.i39, 1, !dbg !814
  store i64 %33, ptr @__llvm_gcov_ctr.41, align 8, !dbg !814
  call fastcc void @stop_per_cpu_kthreads() #15, !dbg !814
  br label %if.end7, !dbg !814

get_cpu_data.exit.i.i:                            ; preds = %if.then6
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !815
  %34 = add i64 %gcov_ctr1.i, 1, !dbg !815
  store i64 %34, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !815
  %gcov_ctr2.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !816
  %35 = add i64 %gcov_ctr2.i.i.i, 1, !dbg !816
  store i64 %35, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !816
  call void @cpus_read_lock() #15, !dbg !819
  %36 = load ptr, ptr @hwlat_single_cpu_data, align 8, !dbg !820
  %tobool.not.i.i = icmp eq ptr %36, null, !dbg !821
  br i1 %tobool.not.i.i, label %if.then.i.i42, label %if.end.i.i43, !dbg !822

if.then.i.i42:                                    ; preds = %get_cpu_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !823
  %gcov_ctr.i.i41 = load i64, ptr @__llvm_gcov_ctr.77, align 8, !dbg !823
  %37 = add i64 %gcov_ctr.i.i41, 1, !dbg !823
  store i64 %37, ptr @__llvm_gcov_ctr.77, align 8, !dbg !823
  br label %stop_single_kthread.exit.i, !dbg !823

if.end.i.i43:                                     ; preds = %get_cpu_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14, !dbg !824
  %gcov_ctr4.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !824
  %38 = add i64 %gcov_ctr4.i.i, 1, !dbg !824
  store i64 %38, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !824
  %call2.i.i = call i32 @kthread_stop(ptr noundef nonnull %36) #15, !dbg !825
  store ptr null, ptr @hwlat_single_cpu_data, align 8, !dbg !826
  br label %stop_single_kthread.exit.i, !dbg !827

stop_single_kthread.exit.i:                       ; preds = %if.end.i.i43, %if.then.i.i42
  call void @cpus_read_unlock() #15, !dbg !828
  br label %if.end7

if.end7:                                          ; preds = %stop_single_kthread.exit.i, %if.then.i40, %if.end2.if.end7_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @hwlat_data, i32 noundef 0) #15, !dbg !829
  %call10 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(5) @.str.26) #19, !dbg !830
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10), !dbg !831
  %cmp11 = icmp eq i32 %call10, 0, !dbg !831
  br i1 %cmp11, label %if.then12, label %if.end7.for.inc_crit_edge, !dbg !830

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14, !dbg !830
  br label %for.inc, !dbg !830

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14, !dbg !832
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !832
  %39 = add i64 %gcov_ctr24, 1, !dbg !832
  store i64 %39, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !832
  store i32 0, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !833
  br label %for.inc, !dbg !834

for.inc:                                          ; preds = %if.then12, %if.end7.for.inc_crit_edge
  %ret.1 = phi i32 [ %cnt, %if.then12 ], [ -22, %if.end7.for.inc_crit_edge ], !dbg !835
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !836
  %40 = add i64 %gcov_ctr25, 1, !dbg !836
  store i64 %40, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !836
  %call10.1 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(12) @.str.27) #19, !dbg !830
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1), !dbg !831
  %cmp11.1 = icmp eq i32 %call10.1, 0, !dbg !831
  br i1 %cmp11.1, label %if.then12.1, label %for.inc.for.inc.1_crit_edge, !dbg !830

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14, !dbg !830
  br label %for.inc.1, !dbg !830

if.then12.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14, !dbg !832
  %gcov_ctr24.1 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !832
  %41 = add i64 %gcov_ctr24.1, 1, !dbg !832
  store i64 %41, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !832
  store i32 1, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !833
  br label %for.inc.1, !dbg !834

for.inc.1:                                        ; preds = %if.then12.1, %for.inc.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ %cnt, %if.then12.1 ], [ %ret.1, %for.inc.for.inc.1_crit_edge ], !dbg !835
  %gcov_ctr25.1 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !836
  %42 = add i64 %gcov_ctr25.1, 1, !dbg !836
  store i64 %42, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !836
  %call10.2 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(8) @.str.28) #19, !dbg !830
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2), !dbg !831
  %cmp11.2 = icmp eq i32 %call10.2, 0, !dbg !831
  br i1 %cmp11.2, label %if.then12.2, label %for.inc.1.for.inc.2_crit_edge, !dbg !830

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14, !dbg !830
  br label %for.inc.2, !dbg !830

if.then12.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14, !dbg !832
  %gcov_ctr24.2 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !832
  %43 = add i64 %gcov_ctr24.2, 1, !dbg !832
  store i64 %43, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !832
  store i32 2, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !833
  br label %for.inc.2, !dbg !834

for.inc.2:                                        ; preds = %if.then12.2, %for.inc.1.for.inc.2_crit_edge
  %ret.1.2 = phi i32 [ %cnt, %if.then12.2 ], [ %ret.1.1, %for.inc.1.for.inc.2_crit_edge ], !dbg !835
  %gcov_ctr25.2 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !836
  %44 = add i64 %gcov_ctr25.2, 1, !dbg !836
  store i64 %44, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !836
  call void @mutex_unlock(ptr noundef nonnull @hwlat_data) #15, !dbg !837
  %.b37 = load i1, ptr @hwlat_busy, align 1, !dbg !838
  br i1 %.b37, label %if.then15, label %for.inc.2.if.end16_crit_edge, !dbg !838

for.inc.2.if.end16_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14, !dbg !838
  br label %if.end16, !dbg !838

if.then15:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14, !dbg !839
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 6), align 16, !dbg !839
  %45 = add i64 %gcov_ctr26, 1, !dbg !839
  store i64 %45, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 6), align 16, !dbg !839
  call void @hwlat_tracer_start(ptr noundef %0), !dbg !840
  br label %if.end16, !dbg !840

if.end16:                                         ; preds = %if.then15, %for.inc.2.if.end16_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #15, !dbg !841
  %conv = zext i32 %cnt to i64, !dbg !842
  %46 = ptrtoint ptr %ppos to i32, !dbg !843
  call void @__asan_load8_noabort(i32 %46), !dbg !843
  %47 = load i64, ptr %ppos, align 8, !dbg !843
  %add = add i64 %47, %conv, !dbg !843
  store i64 %add, ptr %ppos, align 8, !dbg !843
  br label %cleanup, !dbg !844

cleanup:                                          ; preds = %if.end16, %if.then11.i.i, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -14, %if.then11.i.i ], [ %ret.1.2, %if.end16 ], !dbg !835
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15, !dbg !845
  ret i32 %retval.0, !dbg !845
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwlat_mode_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #5 align 64 !dbg !846 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !847
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.86, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.86, align 8
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @thread_mode_seq_ops) #15, !dbg !848
  ret i32 %call, !dbg !849
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s_mode_start(ptr nocapture noundef readnone %s, ptr noundef readonly %pos) #5 align 64 !dbg !850 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !851
  %0 = ptrtoint ptr %pos to i32, !dbg !852
  call void @__asan_load8_noabort(i32 %0), !dbg !852
  %1 = load i64, ptr %pos, align 8, !dbg !852
  %conv = trunc i64 %1 to i32, !dbg !852
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwlat_data, i32 noundef 0) #15, !dbg !853
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv), !dbg !854
  %cmp = icmp sgt i32 %conv, 2, !dbg !854
  %__llvm_gcov_ctr.100. = select i1 %cmp, ptr @__llvm_gcov_ctr.100, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.100, i32 0, i32 1), !dbg !855
  %.pos = select i1 %cmp, ptr null, ptr %pos, !dbg !855
  %2 = ptrtoint ptr %__llvm_gcov_ctr.100. to i32, !dbg !855
  call void @__asan_load8_noabort(i32 %2), !dbg !855
  %gcov_ctr2 = load i64, ptr %__llvm_gcov_ctr.100., align 8, !dbg !855
  %3 = add i64 %gcov_ctr2, 1, !dbg !855
  store i64 %3, ptr %__llvm_gcov_ctr.100., align 8, !dbg !855
  ret ptr %.pos, !dbg !856
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s_mode_stop(ptr noundef %s, ptr nocapture noundef readnone %v) #5 align 64 !dbg !857 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !858
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.101, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.101, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.29) #15, !dbg !859
  tail call void @mutex_unlock(ptr noundef nonnull @hwlat_data) #15, !dbg !860
  ret void, !dbg !861
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @s_mode_next(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %v, ptr noundef %pos) #9 align 64 !dbg !862 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !863
  %0 = ptrtoint ptr %pos to i32, !dbg !864
  call void @__asan_load8_noabort(i32 %0), !dbg !864
  %1 = load i64, ptr %pos, align 8, !dbg !864
  %inc = add i64 %1, 1, !dbg !864
  store i64 %inc, ptr %pos, align 8, !dbg !864
  %conv = trunc i64 %inc to i32, !dbg !864
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv), !dbg !865
  %cmp = icmp sgt i32 %conv, 2, !dbg !865
  %__llvm_gcov_ctr.102. = select i1 %cmp, ptr @__llvm_gcov_ctr.102, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 1), !dbg !866
  %.pos = select i1 %cmp, ptr null, ptr %pos, !dbg !866
  %2 = ptrtoint ptr %__llvm_gcov_ctr.102. to i32, !dbg !866
  call void @__asan_load8_noabort(i32 %2), !dbg !866
  %gcov_ctr2 = load i64, ptr %__llvm_gcov_ctr.102., align 8, !dbg !866
  %3 = add i64 %gcov_ctr2, 1, !dbg !866
  store i64 %3, ptr %__llvm_gcov_ctr.102., align 8, !dbg !866
  ret ptr %.pos, !dbg !867
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s_mode_show(ptr noundef %s, ptr nocapture noundef readonly %v) #5 align 64 !dbg !868 {
entry:
  call void @__sanitizer_cov_trace_pc() #14, !dbg !869
  %0 = ptrtoint ptr %v to i32, !dbg !870
  call void @__asan_load8_noabort(i32 %0), !dbg !870
  %1 = load i64, ptr %v, align 8, !dbg !870
  %conv = trunc i64 %1 to i32, !dbg !870
  %2 = load i32, ptr getelementptr inbounds (%struct.hwlat_data, ptr @hwlat_data, i32 0, i32 4), align 8, !dbg !871
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv), !dbg !872
  %cmp = icmp eq i32 %2, %conv, !dbg !872
  br i1 %cmp, label %if.then, label %if.else, !dbg !873

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !874
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.103, align 16, !dbg !874
  %3 = add i64 %gcov_ctr, 1, !dbg !874
  store i64 %3, ptr @__llvm_gcov_ctr.103, align 16, !dbg !874
  br label %if.end, !dbg !875

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14, !dbg !876
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !876
  %4 = add i64 %gcov_ctr7, 1, !dbg !876
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 1), align 8, !dbg !876
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.str.31.sink = phi ptr [ @.str.31, %if.else ], [ @.str.30, %if.then ]
  %arrayidx2 = getelementptr [3 x ptr], ptr @thread_mode_str, i32 0, i32 %conv, !dbg !877
  %5 = ptrtoint ptr %arrayidx2 to i32, !dbg !877
  call void @__asan_load4_noabort(i32 %5), !dbg !877
  %6 = load ptr, ptr %arrayidx2, align 4, !dbg !877
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.31.sink, ptr noundef %6) #15, !dbg !877
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv), !dbg !878
  %cmp3.not = icmp eq i32 %conv, 3, !dbg !878
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %if.then5, !dbg !879

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !879
  br label %if.end6, !dbg !879

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14, !dbg !880
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 2), align 16, !dbg !880
  %7 = add i64 %gcov_ctr8, 1, !dbg !880
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 2), align 16, !dbg !880
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.32) #15, !dbg !881
  br label %if.end6, !dbg !881

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret i32 0, !dbg !882
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -710367315) #15
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #15
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #15
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 72
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #14
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm_gcda_summary_info() #15
  tail call void @llvm_gcda_end_file() #15
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #11 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.33, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.34, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.36, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.37, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.38, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.39, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.40, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.41, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.42, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.43, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.45, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.46, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.47, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.48, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) @__llvm_gcov_ctr.49, i8 0, i64 176, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.50, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.51, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.52, align 8
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @__llvm_gcov_ctr.54, i8 0, i64 400, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.55, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.56, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.57, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.58, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.59, align 8
  store i64 0, ptr @__llvm_gcov_ctr.60, align 8
  store i64 0, ptr @__llvm_gcov_ctr.61, align 8
  store i64 0, ptr @__llvm_gcov_ctr.62, align 8
  store i64 0, ptr @__llvm_gcov_ctr.63, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.64, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.65, align 8
  store i64 0, ptr @__llvm_gcov_ctr.66, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.67, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.68, align 8
  store i64 0, ptr @__llvm_gcov_ctr.69, align 8
  store i64 0, ptr @__llvm_gcov_ctr.70, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.71, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) @__llvm_gcov_ctr.72, i8 0, i64 136, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.73, align 8
  store i64 0, ptr @__llvm_gcov_ctr.74, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.75, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.76, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.77, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.78, align 8
  store i64 0, ptr @__llvm_gcov_ctr.79, align 8
  store i64 0, ptr @__llvm_gcov_ctr.80, align 8
  store i64 0, ptr @__llvm_gcov_ctr.81, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.82, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.83, align 8
  store i64 0, ptr @__llvm_gcov_ctr.84, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.85, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.86, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.87, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.88, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.89, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.90, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.91, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.92, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.93, align 8
  store i64 0, ptr @__llvm_gcov_ctr.94, align 8
  store i64 0, ptr @__llvm_gcov_ctr.95, align 8
  store i64 0, ptr @__llvm_gcov_ctr.96, align 8
  store i64 0, ptr @__llvm_gcov_ctr.97, align 8
  store i64 0, ptr @__llvm_gcov_ctr.98, align 8
  store i64 0, ptr @__llvm_gcov_ctr.99, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.100, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.101, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.102, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.103, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #15
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 54)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { noinline nounwind uwtable(sync) }
attributes #11 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind uwtable(sync) }
attributes #14 = { nomerge }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !55, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.named.register.sp = !{!116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.gcov = !{!125}
!llvm.ident = !{!126}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_hwlat.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__initcall__kmod_trace_hwlat__264_890_init_hwlat_tracer7, !3, !"__initcall__kmod_trace_hwlat__264_890_init_hwlat_tracer7", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_hwlat.c", i32 890, i32 1}
!4 = !{ptr @__pcpu_unique_hwlat_per_cpu_data, !5, !"__pcpu_unique_hwlat_per_cpu_data", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_hwlat.c", i32 83, i32 8}
!6 = !{ptr @hwlat_per_cpu_data, !5, !"hwlat_per_cpu_data", i1 false, i1 false}
!7 = !{ptr @trace_hwlat_callback_enabled, !8, !"trace_hwlat_callback_enabled", i1 false, i1 false}
!8 = !{!"../kernel/trace/trace_hwlat.c", i32 86, i32 6}
!9 = !{ptr @hwlat_data, !10, !"hwlat_data", i1 false, i1 false}
!10 = !{!"../kernel/trace/trace_hwlat.c", i32 114, i32 3}
!11 = !{ptr @hwlat_single_cpu_data, !12, !"hwlat_single_cpu_data", i1 false, i1 false}
!12 = !{!"../kernel/trace/trace_hwlat.c", i32 82, i32 34}
!13 = !{ptr @init_hwlat_tracer.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../kernel/trace/trace_hwlat.c", i32 878, i32 2}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/trace/trace_hwlat.c", i32 866, i32 11}
!18 = !{ptr @hwlat_tracer, !19, !"hwlat_tracer", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_hwlat.c", i32 864, i32 22}
!20 = distinct !{null, !21, !"hwlat_busy", i1 false, i1 false}
!21 = !{!"../kernel/trace/trace_hwlat.c", i32 128, i32 13}
!22 = !{ptr @hwlat_trace, !23, !"hwlat_trace", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_hwlat.c", i32 48, i32 28}
!24 = !{ptr @save_tracing_thresh, !25, !"save_tracing_thresh", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_hwlat.c", i32 70, i32 22}
!26 = !{ptr @last_tracing_thresh, !27, !"last_tracing_thresh", i1 false, i1 false}
!27 = !{!"../kernel/trace/trace_hwlat.c", i32 89, i32 12}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_hwlat.c", i32 818, i32 3}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hwlat_tracer_start._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @hwlat_tracer_start._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @save_cpumask, !35, !"save_cpumask", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_hwlat.c", i32 312, i32 23}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_hwlat.c", i32 495, i32 54}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_hwlat.c", i32 497, i32 3}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @start_cpu_kthread._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @start_cpu_kthread._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/trace/trace_hwlat.c", i32 347, i32 2}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @move_to_next_cpu._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @move_to_next_cpu._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_hwlat.c", i32 237, i32 5}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/trace/trace_hwlat.c", i32 249, i32 4}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/trace/trace_hwlat.c", i32 432, i32 12}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/trace/trace_hwlat.c", i32 434, i32 3}
!59 = !{ptr @start_single_kthread._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @start_single_kthread._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/trace/trace_hwlat.c", i32 554, i32 47}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/trace/trace_hwlat.c", i32 557, i32 3}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hwlat_init_hotplug_support._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @hwlat_init_hotplug_support._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/trace/trace_hwlat.c", i32 530, i32 8}
!70 = !{ptr @hwlat_hotplug_work, !69, !"hwlat_hotplug_work", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/trace/trace_hwlat.c", i32 777, i32 31}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/trace/trace_hwlat.c", i32 781, i32 44}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/trace/trace_hwlat.c", i32 788, i32 43}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/trace/trace_hwlat.c", i32 795, i32 40}
!79 = !{ptr @hwlat_window, !80, !"hwlat_window", i1 false, i1 false}
!80 = !{!"../kernel/trace/trace_hwlat.c", i32 746, i32 35}
!81 = !{ptr @hwlat_sample_window, !82, !"hwlat_sample_window", i1 false, i1 false}
!82 = !{!"../kernel/trace/trace_hwlat.c", i32 58, i32 23}
!83 = !{ptr @hwlat_width, !84, !"hwlat_width", i1 false, i1 false}
!84 = !{!"../kernel/trace/trace_hwlat.c", i32 734, i32 35}
!85 = !{ptr @hwlat_sample_width, !86, !"hwlat_sample_width", i1 false, i1 false}
!86 = !{!"../kernel/trace/trace_hwlat.c", i32 57, i32 23}
!87 = !{ptr @thread_mode_fops, !88, !"thread_mode_fops", i1 false, i1 false}
!88 = !{!"../kernel/trace/trace_hwlat.c", i32 753, i32 37}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!91 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/trace/trace_hwlat.c", i32 67, i32 36}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/trace/trace_hwlat.c", i32 67, i32 44}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/trace/trace_hwlat.c", i32 67, i32 59}
!102 = !{ptr @thread_mode_str, !103, !"thread_mode_str", i1 false, i1 false}
!103 = !{!"../kernel/trace/trace_hwlat.c", i32 67, i32 14}
!104 = !{ptr @thread_mode_seq_ops, !105, !"thread_mode_seq_ops", i1 false, i1 false}
!105 = !{!"../kernel/trace/trace_hwlat.c", i32 649, i32 36}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/trace/trace_hwlat.c", i32 645, i32 14}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/trace/trace_hwlat.c", i32 633, i32 17}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/trace/trace_hwlat.c", i32 635, i32 17}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/trace/trace_hwlat.c", i32 638, i32 15}
!114 = !{ptr @hwlat_thread_mode, !115, !"hwlat_thread_mode", i1 false, i1 false}
!115 = !{!"../kernel/trace/trace_hwlat.c", i32 59, i32 23}
!116 = !{!"sp"}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_hwlat.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_hwlat.gcda", !0}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = distinct !DISubprogram(name: "trace_hwlat_callback", scope: !1, file: !1, line: 163, type: !128, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!128 = !DISubroutineType(types: !129)
!129 = !{}
!130 = !DILocation(line: 164, scope: !127)
!131 = !DILocation(line: 122, column: 17, scope: !132, inlinedAt: !133)
!132 = distinct !DISubprogram(name: "get_cpu_data", scope: !1, file: !1, line: 120, type: !128, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!133 = distinct !DILocation(line: 165, column: 37, scope: !127)
!134 = !DILocation(line: 122, column: 29, scope: !132, inlinedAt: !133)
!135 = !DILocation(line: 122, column: 6, scope: !132, inlinedAt: !133)
!136 = !DILocation(line: 123, column: 10, scope: !132, inlinedAt: !133)
!137 = !DILocation(line: 104, column: 4, scope: !138, inlinedAt: !140)
!138 = distinct !DISubprogram(name: "current_thread_info", scope: !139, file: !139, line: 101, type: !128, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!139 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!140 = distinct !DILocation(line: 123, column: 10, scope: !132, inlinedAt: !133)
!141 = !DILocation(line: 104, column: 26, scope: !138, inlinedAt: !140)
!142 = !DILocation(line: 103, column: 9, scope: !138, inlinedAt: !140)
!143 = !DILocation(line: 123, column: 3, scope: !132, inlinedAt: !133)
!144 = !DILocation(line: 125, column: 3, scope: !132, inlinedAt: !133)
!145 = !DILocation(line: 0, scope: !132, inlinedAt: !133)
!146 = !DILocation(line: 167, column: 14, scope: !127)
!147 = !DILocation(line: 167, column: 7, scope: !127)
!148 = !DILocation(line: 167, column: 6, scope: !127)
!149 = !DILocation(line: 182, column: 3, scope: !127)
!150 = !DILocation(line: 182, column: 10, scope: !127)
!151 = !DILocation(line: 182, column: 19, scope: !127)
!152 = !DILocation(line: 183, column: 1, scope: !127)
!153 = distinct !DISubprogram(name: "init_hwlat_tracer", scope: !1, file: !1, line: 874, type: !128, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!154 = !DILocation(line: 875, scope: !153)
!155 = !DILocation(line: 878, column: 2, scope: !153)
!156 = !DILocation(line: 880, column: 8, scope: !153)
!157 = !DILocation(line: 881, column: 6, scope: !153)
!158 = !DILocation(line: 882, column: 10, scope: !153)
!159 = !DILocation(line: 882, column: 3, scope: !153)
!160 = !DILocation(line: 884, column: 2, scope: !153)
!161 = !DILocation(line: 280, column: 9, scope: !162, inlinedAt: !164)
!162 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !163, file: !163, line: 275, type: !128, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!163 = !DIFile(filename: "../include/linux/cpuhotplug.h", directory: "/llk/linux-5.17/build_arm_allyes")
!164 = distinct !DILocation(line: 554, column: 8, scope: !165, inlinedAt: !166)
!165 = distinct !DISubprogram(name: "hwlat_init_hotplug_support", scope: !1, file: !1, line: 550, type: !128, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!166 = distinct !DILocation(line: 884, column: 2, scope: !153)
!167 = !DILocation(line: 556, column: 10, scope: !165, inlinedAt: !166)
!168 = !DILocation(line: 556, column: 6, scope: !165, inlinedAt: !166)
!169 = !DILocation(line: 557, column: 3, scope: !165, inlinedAt: !166)
!170 = !DILocation(line: 773, column: 8, scope: !171, inlinedAt: !172)
!171 = distinct !DISubprogram(name: "init_tracefs", scope: !1, file: !1, line: 768, type: !128, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!172 = distinct !DILocation(line: 886, column: 2, scope: !153)
!173 = !DILocation(line: 774, column: 6, scope: !171, inlinedAt: !172)
!174 = !DILocation(line: 775, column: 3, scope: !171, inlinedAt: !172)
!175 = !DILocation(line: 777, column: 12, scope: !171, inlinedAt: !172)
!176 = !DILocation(line: 778, column: 7, scope: !171, inlinedAt: !172)
!177 = !DILocation(line: 778, column: 6, scope: !171, inlinedAt: !172)
!178 = !DILocation(line: 779, column: 3, scope: !171, inlinedAt: !172)
!179 = !DILocation(line: 781, column: 24, scope: !171, inlinedAt: !172)
!180 = !DILocation(line: 781, column: 22, scope: !171, inlinedAt: !172)
!181 = !DILocation(line: 785, column: 7, scope: !171, inlinedAt: !172)
!182 = !DILocation(line: 785, column: 6, scope: !171, inlinedAt: !172)
!183 = !DILocation(line: 786, column: 3, scope: !171, inlinedAt: !172)
!184 = !DILocation(line: 788, column: 23, scope: !171, inlinedAt: !172)
!185 = !DILocation(line: 788, column: 21, scope: !171, inlinedAt: !172)
!186 = !DILocation(line: 792, column: 7, scope: !171, inlinedAt: !172)
!187 = !DILocation(line: 792, column: 6, scope: !171, inlinedAt: !172)
!188 = !DILocation(line: 793, column: 3, scope: !171, inlinedAt: !172)
!189 = !DILocation(line: 795, column: 22, scope: !171, inlinedAt: !172)
!190 = !DILocation(line: 795, column: 20, scope: !171, inlinedAt: !172)
!191 = !DILocation(line: 799, column: 7, scope: !171, inlinedAt: !172)
!192 = !DILocation(line: 799, column: 6, scope: !171, inlinedAt: !172)
!193 = !DILocation(line: 800, column: 3, scope: !171, inlinedAt: !172)
!194 = !DILocation(line: 802, column: 2, scope: !171, inlinedAt: !172)
!195 = !DILocation(line: 805, column: 2, scope: !171, inlinedAt: !172)
!196 = !DILocation(line: 806, column: 2, scope: !171, inlinedAt: !172)
!197 = !DILocation(line: 889, column: 1, scope: !153)
!198 = distinct !DISubprogram(name: "hwlat_tracer_init", scope: !1, file: !1, line: 829, type: !128, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!199 = !DILocation(line: 830, scope: !198)
!200 = !DILocation(line: 832, column: 6, scope: !198)
!201 = !DILocation(line: 833, column: 3, scope: !198)
!202 = !DILocation(line: 835, column: 14, scope: !198)
!203 = !DILocation(line: 837, column: 19, scope: !198)
!204 = !DILocation(line: 838, column: 6, scope: !198)
!205 = !DILocation(line: 838, column: 18, scope: !198)
!206 = !DILocation(line: 839, column: 24, scope: !198)
!207 = !DILocation(line: 839, column: 22, scope: !198)
!208 = !DILocation(line: 842, column: 7, scope: !198)
!209 = !DILocation(line: 842, column: 6, scope: !198)
!210 = !DILocation(line: 843, column: 20, scope: !198)
!211 = !DILocation(line: 843, column: 18, scope: !198)
!212 = !DILocation(line: 843, column: 3, scope: !198)
!213 = !DILocation(line: 845, column: 6, scope: !198)
!214 = !DILocation(line: 846, column: 22, scope: !198)
!215 = !DILocation(line: 846, column: 3, scope: !198)
!216 = !DILocation(line: 848, column: 13, scope: !198)
!217 = !DILocation(line: 850, column: 2, scope: !198)
!218 = !DILocation(line: 0, scope: !198)
!219 = !DILocation(line: 851, column: 1, scope: !198)
!220 = distinct !DISubprogram(name: "hwlat_tracer_reset", scope: !1, file: !1, line: 853, type: !128, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!221 = !DILocation(line: 854, scope: !220)
!222 = !DILocation(line: 823, column: 17, scope: !223, inlinedAt: !224)
!223 = distinct !DISubprogram(name: "hwlat_tracer_stop", scope: !1, file: !1, line: 821, type: !128, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!224 = distinct !DILocation(line: 855, column: 2, scope: !220)
!225 = !DILocation(line: 823, column: 29, scope: !223, inlinedAt: !224)
!226 = !DILocation(line: 823, column: 6, scope: !223, inlinedAt: !224)
!227 = !DILocation(line: 824, column: 3, scope: !223, inlinedAt: !224)
!228 = !DILocation(line: 826, column: 3, scope: !223, inlinedAt: !224)
!229 = !DILocation(line: 125, column: 3, scope: !132, inlinedAt: !230)
!230 = distinct !DILocation(line: 398, column: 37, scope: !231, inlinedAt: !232)
!231 = distinct !DISubprogram(name: "stop_single_kthread", scope: !1, file: !1, line: 396, type: !128, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!232 = distinct !DILocation(line: 826, column: 3, scope: !223, inlinedAt: !224)
!233 = !DILocation(line: 401, column: 2, scope: !231, inlinedAt: !232)
!234 = !DILocation(line: 402, column: 19, scope: !231, inlinedAt: !232)
!235 = !DILocation(line: 404, column: 7, scope: !231, inlinedAt: !232)
!236 = !DILocation(line: 404, column: 6, scope: !231, inlinedAt: !232)
!237 = !DILocation(line: 405, column: 3, scope: !231, inlinedAt: !232)
!238 = !DILocation(line: 407, column: 15, scope: !231, inlinedAt: !232)
!239 = !DILocation(line: 407, column: 2, scope: !231, inlinedAt: !232)
!240 = !DILocation(line: 408, column: 17, scope: !231, inlinedAt: !232)
!241 = !DILocation(line: 408, column: 2, scope: !231, inlinedAt: !232)
!242 = !DILocation(line: 411, column: 2, scope: !231, inlinedAt: !232)
!243 = !DILocation(line: 858, column: 24, scope: !220)
!244 = !DILocation(line: 858, column: 22, scope: !220)
!245 = !DILocation(line: 860, column: 19, scope: !220)
!246 = !DILocation(line: 860, column: 17, scope: !220)
!247 = !DILocation(line: 861, column: 13, scope: !220)
!248 = !DILocation(line: 862, column: 1, scope: !220)
!249 = distinct !DISubprogram(name: "hwlat_tracer_start", scope: !1, file: !1, line: 809, type: !128, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!250 = !DILocation(line: 810, scope: !249)
!251 = !DILocation(line: 813, column: 17, scope: !249)
!252 = !DILocation(line: 813, column: 29, scope: !249)
!253 = !DILocation(line: 813, column: 6, scope: !249)
!254 = !DILocation(line: 814, column: 32, scope: !249)
!255 = !DILocation(line: 581, column: 2, scope: !256, inlinedAt: !257)
!256 = distinct !DISubprogram(name: "start_per_cpu_kthreads", scope: !1, file: !1, line: 575, type: !128, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!257 = distinct !DILocation(line: 814, column: 9, scope: !249)
!258 = !DILocation(line: 585, column: 49, scope: !256, inlinedAt: !257)
!259 = !DILocation(line: 441, column: 33, scope: !260, inlinedAt: !262)
!260 = distinct !DISubprogram(name: "cpumask_and", scope: !261, file: !261, line: 436, type: !128, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!261 = !DIFile(filename: "../include/linux/cpumask.h", directory: "/llk/linux-5.17/build_arm_allyes")
!262 = distinct !DILocation(line: 585, column: 2, scope: !256, inlinedAt: !257)
!263 = !DILocation(line: 289, column: 22, scope: !264, inlinedAt: !266)
!264 = distinct !DISubprogram(name: "bitmap_and", scope: !265, file: !265, line: 284, type: !128, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!265 = !DIFile(filename: "../include/linux/bitmap.h", directory: "/llk/linux-5.17/build_arm_allyes")
!266 = distinct !DILocation(line: 440, column: 9, scope: !260, inlinedAt: !262)
!267 = !DILocation(line: 289, column: 9, scope: !264, inlinedAt: !266)
!268 = !DILocation(line: 587, column: 2, scope: !256, inlinedAt: !257)
!269 = !DILocation(line: 590, column: 2, scope: !256, inlinedAt: !257)
!270 = !DILocation(line: 588, column: 3, scope: !256, inlinedAt: !257)
!271 = !DILocation(line: 588, column: 44, scope: !256, inlinedAt: !257)
!272 = distinct !{!272, !268, !273}
!273 = !DILocation(line: 588, column: 46, scope: !256, inlinedAt: !257)
!274 = !DILocation(line: 78, column: 6, scope: !275, inlinedAt: !277)
!275 = distinct !DISubprogram(name: "kthread_run_on_cpu", scope: !276, file: !276, line: 73, type: !128, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!276 = !DIFile(filename: "../include/linux/kthread.h", directory: "/llk/linux-5.17/build_arm_allyes")
!277 = distinct !DILocation(line: 495, column: 12, scope: !278, inlinedAt: !279)
!278 = distinct !DISubprogram(name: "start_cpu_kthread", scope: !1, file: !1, line: 491, type: !128, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!279 = distinct !DILocation(line: 591, column: 12, scope: !256, inlinedAt: !257)
!280 = !DILocation(line: 36, column: 9, scope: !281, inlinedAt: !283)
!281 = distinct !DISubprogram(name: "IS_ERR", scope: !282, file: !282, line: 34, type: !128, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!282 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!283 = distinct !DILocation(line: 79, column: 7, scope: !275, inlinedAt: !277)
!284 = !DILocation(line: 79, column: 6, scope: !275, inlinedAt: !277)
!285 = !DILocation(line: 0, scope: !249)
!286 = !DILocation(line: 497, column: 3, scope: !278, inlinedAt: !279)
!287 = !DILocation(line: 593, column: 4, scope: !256, inlinedAt: !257)
!288 = !DILocation(line: 600, column: 2, scope: !256, inlinedAt: !257)
!289 = !DILocation(line: 601, column: 2, scope: !256, inlinedAt: !257)
!290 = !DILocation(line: 817, column: 6, scope: !249)
!291 = !DILocation(line: 80, column: 19, scope: !275, inlinedAt: !277)
!292 = !DILocation(line: 80, column: 3, scope: !275, inlinedAt: !277)
!293 = !DILocation(line: 501, column: 2, scope: !278, inlinedAt: !279)
!294 = !DILocation(line: 501, column: 43, scope: !278, inlinedAt: !279)
!295 = distinct !{!295, !269, !296}
!296 = !DILocation(line: 594, column: 2, scope: !256, inlinedAt: !257)
!297 = !DILocation(line: 595, column: 2, scope: !256, inlinedAt: !257)
!298 = !DILocation(line: 816, column: 30, scope: !249)
!299 = !DILocation(line: 125, column: 3, scope: !132, inlinedAt: !300)
!300 = distinct !DILocation(line: 423, column: 37, scope: !301, inlinedAt: !302)
!301 = distinct !DISubprogram(name: "start_single_kthread", scope: !1, file: !1, line: 421, type: !128, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!302 = distinct !DILocation(line: 816, column: 9, scope: !249)
!303 = !DILocation(line: 428, column: 2, scope: !301, inlinedAt: !302)
!304 = !DILocation(line: 429, column: 13, scope: !301, inlinedAt: !302)
!305 = !DILocation(line: 429, column: 6, scope: !301, inlinedAt: !302)
!306 = !DILocation(line: 430, column: 3, scope: !301, inlinedAt: !302)
!307 = !DILocation(line: 432, column: 12, scope: !301, inlinedAt: !302)
!308 = !DILocation(line: 36, column: 9, scope: !281, inlinedAt: !309)
!309 = distinct !DILocation(line: 433, column: 6, scope: !301, inlinedAt: !302)
!310 = !DILocation(line: 433, column: 6, scope: !301, inlinedAt: !302)
!311 = !DILocation(line: 440, column: 49, scope: !301, inlinedAt: !302)
!312 = !DILocation(line: 441, column: 33, scope: !260, inlinedAt: !313)
!313 = distinct !DILocation(line: 440, column: 2, scope: !301, inlinedAt: !302)
!314 = !DILocation(line: 289, column: 22, scope: !264, inlinedAt: !315)
!315 = distinct !DILocation(line: 440, column: 9, scope: !260, inlinedAt: !313)
!316 = !DILocation(line: 289, column: 9, scope: !264, inlinedAt: !315)
!317 = !DILocation(line: 442, column: 17, scope: !301, inlinedAt: !302)
!318 = !DILocation(line: 442, column: 29, scope: !301, inlinedAt: !302)
!319 = !DILocation(line: 442, column: 6, scope: !301, inlinedAt: !302)
!320 = !DILocation(line: 443, column: 28, scope: !301, inlinedAt: !302)
!321 = !DILocation(line: 206, column: 9, scope: !322, inlinedAt: !323)
!322 = distinct !DISubprogram(name: "cpumask_first", scope: !261, file: !261, line: 204, type: !128, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!323 = distinct !DILocation(line: 443, column: 14, scope: !301, inlinedAt: !302)
!324 = !DILocation(line: 425, column: 34, scope: !325, inlinedAt: !326)
!325 = distinct !DISubprogram(name: "cpumask_clear", scope: !261, file: !261, line: 423, type: !128, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!326 = distinct !DILocation(line: 444, column: 3, scope: !301, inlinedAt: !302)
!327 = !DILocation(line: 238, column: 21, scope: !328, inlinedAt: !329)
!328 = distinct !DISubprogram(name: "bitmap_zero", scope: !265, file: !265, line: 236, type: !128, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!329 = distinct !DILocation(line: 425, column: 2, scope: !325, inlinedAt: !326)
!330 = !DILocation(line: 238, column: 42, scope: !328, inlinedAt: !329)
!331 = !DILocation(line: 239, column: 2, scope: !328, inlinedAt: !329)
!332 = !DILocation(line: 108, column: 2, scope: !333, inlinedAt: !334)
!333 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !261, file: !261, line: 105, type: !128, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!334 = distinct !DILocation(line: 115, column: 2, scope: !335, inlinedAt: !336)
!335 = distinct !DISubprogram(name: "cpumask_check", scope: !261, file: !261, line: 113, type: !128, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!336 = distinct !DILocation(line: 346, column: 2, scope: !337, inlinedAt: !338)
!337 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !261, file: !261, line: 344, type: !128, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!338 = distinct !DILocation(line: 445, column: 3, scope: !301, inlinedAt: !302)
!339 = !{!"branch_weights", i32 2000, i32 1}
!340 = !DILocation(line: 346, column: 2, scope: !337, inlinedAt: !338)
!341 = !DILocation(line: 447, column: 2, scope: !301, inlinedAt: !302)
!342 = !DILocation(line: 449, column: 20, scope: !301, inlinedAt: !302)
!343 = !DILocation(line: 449, column: 29, scope: !301, inlinedAt: !302)
!344 = !DILocation(line: 449, column: 2, scope: !301, inlinedAt: !302)
!345 = !DILocation(line: 451, column: 17, scope: !301, inlinedAt: !302)
!346 = !DILocation(line: 452, column: 2, scope: !301, inlinedAt: !302)
!347 = !DILocation(line: 0, scope: !301, inlinedAt: !302)
!348 = !DILocation(line: 434, column: 3, scope: !301, inlinedAt: !302)
!349 = !DILocation(line: 818, column: 3, scope: !249)
!350 = !DILocation(line: 819, column: 1, scope: !249)
!351 = !DILocation(line: 822, scope: !223)
!352 = !DILocation(line: 823, column: 17, scope: !223)
!353 = !DILocation(line: 823, column: 29, scope: !223)
!354 = !DILocation(line: 823, column: 6, scope: !223)
!355 = !DILocation(line: 824, column: 3, scope: !223)
!356 = !DILocation(line: 826, column: 3, scope: !223)
!357 = !DILocation(line: 125, column: 3, scope: !132, inlinedAt: !358)
!358 = distinct !DILocation(line: 398, column: 37, scope: !231, inlinedAt: !359)
!359 = distinct !DILocation(line: 826, column: 3, scope: !223)
!360 = !DILocation(line: 401, column: 2, scope: !231, inlinedAt: !359)
!361 = !DILocation(line: 402, column: 19, scope: !231, inlinedAt: !359)
!362 = !DILocation(line: 404, column: 7, scope: !231, inlinedAt: !359)
!363 = !DILocation(line: 404, column: 6, scope: !231, inlinedAt: !359)
!364 = !DILocation(line: 405, column: 3, scope: !231, inlinedAt: !359)
!365 = !DILocation(line: 407, column: 15, scope: !231, inlinedAt: !359)
!366 = !DILocation(line: 407, column: 2, scope: !231, inlinedAt: !359)
!367 = !DILocation(line: 408, column: 17, scope: !231, inlinedAt: !359)
!368 = !DILocation(line: 408, column: 2, scope: !231, inlinedAt: !359)
!369 = !DILocation(line: 411, column: 2, scope: !231, inlinedAt: !359)
!370 = !DILocation(line: 827, column: 1, scope: !223)
!371 = distinct !DISubprogram(name: "stop_per_cpu_kthreads", scope: !1, file: !1, line: 478, type: !128, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!372 = !DILocation(line: 479, scope: !371)
!373 = !DILocation(line: 482, column: 2, scope: !371)
!374 = !DILocation(line: 483, column: 2, scope: !371)
!375 = !DILocation(line: 484, column: 20, scope: !371)
!376 = !DILocation(line: 466, column: 12, scope: !377, inlinedAt: !378)
!377 = distinct !DISubprogram(name: "stop_cpu_kthread", scope: !1, file: !1, line: 462, type: !128, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!378 = distinct !DILocation(line: 484, column: 3, scope: !371)
!379 = !DILocation(line: 466, column: 45, scope: !377, inlinedAt: !378)
!380 = !DILocation(line: 467, column: 6, scope: !377, inlinedAt: !378)
!381 = !DILocation(line: 468, column: 16, scope: !377, inlinedAt: !378)
!382 = !DILocation(line: 468, column: 3, scope: !377, inlinedAt: !378)
!383 = !DILocation(line: 469, column: 2, scope: !377, inlinedAt: !378)
!384 = !DILocation(line: 469, column: 43, scope: !377, inlinedAt: !378)
!385 = distinct !{!385, !374, !386}
!386 = !DILocation(line: 484, column: 23, scope: !371)
!387 = !DILocation(line: 485, column: 2, scope: !371)
!388 = !DILocation(line: 486, column: 1, scope: !371)
!389 = distinct !DISubprogram(name: "kthread_fn", scope: !1, file: !1, line: 360, type: !128, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!390 = !DILocation(line: 361, scope: !389)
!391 = !DILocation(line: 364, column: 2, scope: !389)
!392 = !DILocation(line: 364, column: 10, scope: !389)
!393 = !DILocation(line: 366, column: 18, scope: !389)
!394 = !DILocation(line: 366, column: 30, scope: !389)
!395 = !DILocation(line: 366, column: 7, scope: !389)
!396 = !DILocation(line: 367, column: 4, scope: !389)
!397 = !DILocation(line: 317, column: 27, scope: !398, inlinedAt: !399)
!398 = distinct !DISubprogram(name: "move_to_next_cpu", scope: !1, file: !1, line: 314, type: !128, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!399 = distinct !DILocation(line: 367, column: 4, scope: !389)
!400 = !DILocation(line: 104, column: 4, scope: !138, inlinedAt: !401)
!401 = distinct !DILocation(line: 325, column: 35, scope: !398, inlinedAt: !399)
!402 = !DILocation(line: 104, column: 26, scope: !138, inlinedAt: !401)
!403 = !DILocation(line: 103, column: 9, scope: !138, inlinedAt: !401)
!404 = !DILocation(line: 325, column: 35, scope: !398, inlinedAt: !399)
!405 = !DILocation(line: 325, column: 44, scope: !398, inlinedAt: !399)
!406 = !DILocation(line: 508, column: 8, scope: !407, inlinedAt: !408)
!407 = distinct !DISubprogram(name: "cpumask_equal", scope: !261, file: !261, line: 504, type: !128, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!408 = distinct !DILocation(line: 325, column: 7, scope: !398, inlinedAt: !399)
!409 = !DILocation(line: 342, column: 24, scope: !410, inlinedAt: !411)
!410 = distinct !DISubprogram(name: "bitmap_equal", scope: !265, file: !265, line: 334, type: !128, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!411 = distinct !DILocation(line: 507, column: 9, scope: !407, inlinedAt: !408)
!412 = !DILocation(line: 342, column: 9, scope: !410, inlinedAt: !411)
!413 = !DILocation(line: 507, column: 9, scope: !407, inlinedAt: !408)
!414 = !DILocation(line: 325, column: 6, scope: !398, inlinedAt: !399)
!415 = !DILocation(line: 328, column: 2, scope: !398, inlinedAt: !399)
!416 = !DILocation(line: 329, column: 49, scope: !398, inlinedAt: !399)
!417 = !DILocation(line: 441, column: 33, scope: !260, inlinedAt: !418)
!418 = distinct !DILocation(line: 329, column: 2, scope: !398, inlinedAt: !399)
!419 = !DILocation(line: 289, column: 22, scope: !264, inlinedAt: !420)
!420 = distinct !DILocation(line: 440, column: 9, scope: !260, inlinedAt: !418)
!421 = !DILocation(line: 289, column: 9, scope: !264, inlinedAt: !420)
!422 = !DILocation(line: 330, column: 26, scope: !398, inlinedAt: !399)
!423 = !DILocation(line: 330, column: 13, scope: !398, inlinedAt: !399)
!424 = !DILocation(line: 331, column: 2, scope: !398, inlinedAt: !399)
!425 = !DILocation(line: 333, column: 18, scope: !398, inlinedAt: !399)
!426 = !DILocation(line: 333, column: 15, scope: !398, inlinedAt: !399)
!427 = !DILocation(line: 333, column: 6, scope: !398, inlinedAt: !399)
!428 = !DILocation(line: 334, column: 28, scope: !398, inlinedAt: !399)
!429 = !DILocation(line: 206, column: 9, scope: !322, inlinedAt: !430)
!430 = distinct !DILocation(line: 334, column: 14, scope: !398, inlinedAt: !399)
!431 = !DILocation(line: 334, column: 3, scope: !398, inlinedAt: !399)
!432 = !DILocation(line: 0, scope: !398, inlinedAt: !399)
!433 = !DILocation(line: 336, column: 18, scope: !398, inlinedAt: !399)
!434 = !DILocation(line: 336, column: 15, scope: !398, inlinedAt: !399)
!435 = !DILocation(line: 336, column: 6, scope: !398, inlinedAt: !399)
!436 = !DILocation(line: 339, column: 16, scope: !398, inlinedAt: !399)
!437 = !DILocation(line: 238, column: 21, scope: !328, inlinedAt: !438)
!438 = distinct !DILocation(line: 425, column: 2, scope: !325, inlinedAt: !439)
!439 = distinct !DILocation(line: 339, column: 2, scope: !398, inlinedAt: !399)
!440 = !DILocation(line: 238, column: 42, scope: !328, inlinedAt: !438)
!441 = !DILocation(line: 239, column: 2, scope: !328, inlinedAt: !438)
!442 = !DILocation(line: 346, column: 2, scope: !337, inlinedAt: !443)
!443 = distinct !DILocation(line: 340, column: 2, scope: !398, inlinedAt: !399)
!444 = !DILocation(line: 342, column: 2, scope: !398, inlinedAt: !399)
!445 = !DILocation(line: 343, column: 2, scope: !398, inlinedAt: !399)
!446 = !DILocation(line: 346, column: 25, scope: !398, inlinedAt: !399)
!447 = !DILocation(line: 347, column: 2, scope: !398, inlinedAt: !399)
!448 = !DILocation(line: 348, column: 1, scope: !398, inlinedAt: !399)
!449 = !DILocation(line: 63, column: 34, scope: !450, inlinedAt: !452)
!450 = distinct !DISubprogram(name: "arch_irqs_disabled", scope: !451, file: !451, line: 61, type: !128, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!451 = !DIFile(filename: "../include/asm-generic/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!452 = distinct !DILocation(line: 369, column: 3, scope: !389)
!453 = !DILocation(line: 159, column: 2, scope: !454, inlinedAt: !456)
!454 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !455, file: !455, line: 156, type: !128, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!455 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!456 = distinct !DILocation(line: 63, column: 34, scope: !450, inlinedAt: !452)
!457 = !{i64 855196}
!458 = !DILocation(line: 181, column: 15, scope: !459, inlinedAt: !460)
!459 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !455, file: !455, line: 179, type: !128, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!460 = distinct !DILocation(line: 63, column: 9, scope: !450, inlinedAt: !452)
!461 = !DILocation(line: 369, column: 3, scope: !389)
!462 = !DILocation(line: 49, column: 2, scope: !463, inlinedAt: !464)
!463 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !455, file: !455, line: 47, type: !128, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!464 = distinct !DILocation(line: 369, column: 3, scope: !389)
!465 = !{i64 852899}
!466 = !DILocation(line: 122, column: 17, scope: !132, inlinedAt: !467)
!467 = distinct !DILocation(line: 203, column: 37, scope: !468, inlinedAt: !469)
!468 = distinct !DISubprogram(name: "get_sample", scope: !1, file: !1, line: 201, type: !128, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!469 = distinct !DILocation(line: 370, column: 3, scope: !389)
!470 = !DILocation(line: 122, column: 29, scope: !132, inlinedAt: !467)
!471 = !DILocation(line: 122, column: 6, scope: !132, inlinedAt: !467)
!472 = !DILocation(line: 123, column: 10, scope: !132, inlinedAt: !467)
!473 = !DILocation(line: 104, column: 4, scope: !138, inlinedAt: !474)
!474 = distinct !DILocation(line: 123, column: 10, scope: !132, inlinedAt: !467)
!475 = !DILocation(line: 104, column: 26, scope: !138, inlinedAt: !474)
!476 = !DILocation(line: 103, column: 9, scope: !138, inlinedAt: !474)
!477 = !DILocation(line: 123, column: 3, scope: !132, inlinedAt: !467)
!478 = !DILocation(line: 125, column: 3, scope: !132, inlinedAt: !467)
!479 = !DILocation(line: 0, scope: !132, inlinedAt: !467)
!480 = !DILocation(line: 204, column: 27, scope: !468, inlinedAt: !469)
!481 = !DILocation(line: 205, column: 2, scope: !468, inlinedAt: !469)
!482 = !DILocation(line: 205, column: 22, scope: !468, inlinedAt: !469)
!483 = !DILocation(line: 209, column: 15, scope: !468, inlinedAt: !469)
!484 = !DILocation(line: 214, column: 2, scope: !468, inlinedAt: !469)
!485 = !DILocation(line: 74, column: 3, scope: !486, inlinedAt: !488)
!486 = distinct !DISubprogram(name: "__arch_xprod_64", scope: !487, file: !487, line: 55, type: !128, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!487 = !DIFile(filename: "../arch/arm/include/asm/div64.h", directory: "/llk/linux-5.17/build_arm_allyes")
!488 = distinct !DILocation(line: 214, column: 2, scope: !468, inlinedAt: !469)
!489 = !{i64 811242, i64 811269, i64 811291, i64 811319}
!490 = !DILocation(line: 92, column: 3, scope: !486, inlinedAt: !488)
!491 = !{i64 811650, i64 811677, i64 811710, i64 811731, i64 811758, i64 811784}
!492 = !DILocation(line: 216, column: 9, scope: !468, inlinedAt: !469)
!493 = !DILocation(line: 216, column: 22, scope: !468, inlinedAt: !469)
!494 = !DILocation(line: 217, column: 9, scope: !468, inlinedAt: !469)
!495 = !DILocation(line: 217, column: 19, scope: !468, inlinedAt: !469)
!496 = !DILocation(line: 219, column: 2, scope: !468, inlinedAt: !469)
!497 = !{i64 2155303621}
!498 = !DILocation(line: 221, column: 31, scope: !468, inlinedAt: !469)
!499 = !DILocation(line: 224, column: 10, scope: !468, inlinedAt: !469)
!500 = !DILocation(line: 227, column: 2, scope: !468, inlinedAt: !469)
!501 = !DILocation(line: 0, scope: !468, inlinedAt: !469)
!502 = !DILocation(line: 229, column: 8, scope: !468, inlinedAt: !469)
!503 = !DILocation(line: 230, column: 8, scope: !468, inlinedAt: !469)
!504 = !DILocation(line: 232, column: 7, scope: !468, inlinedAt: !469)
!505 = !DILocation(line: 234, column: 17, scope: !468, inlinedAt: !469)
!506 = !DILocation(line: 92, column: 15, scope: !507, inlinedAt: !509)
!507 = distinct !DISubprogram(name: "div_u64_rem", scope: !508, file: !508, line: 90, type: !128, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!508 = !DIFile(filename: "../include/linux/math64.h", directory: "/llk/linux-5.17/build_arm_allyes")
!509 = distinct !DILocation(line: 128, column: 9, scope: !510, inlinedAt: !511)
!510 = distinct !DISubprogram(name: "div_u64", scope: !508, file: !508, line: 125, type: !128, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!511 = distinct !DILocation(line: 234, column: 17, scope: !468, inlinedAt: !469)
!512 = !DILocation(line: 74, column: 3, scope: !486, inlinedAt: !513)
!513 = distinct !DILocation(line: 92, column: 15, scope: !507, inlinedAt: !509)
!514 = !DILocation(line: 92, column: 3, scope: !486, inlinedAt: !513)
!515 = !DILocation(line: 240, column: 8, scope: !468, inlinedAt: !469)
!516 = !DILocation(line: 240, column: 19, scope: !468, inlinedAt: !469)
!517 = !DILocation(line: 241, column: 20, scope: !468, inlinedAt: !469)
!518 = !DILocation(line: 241, column: 5, scope: !468, inlinedAt: !469)
!519 = !DILocation(line: 245, column: 11, scope: !468, inlinedAt: !469)
!520 = !DILocation(line: 92, column: 15, scope: !507, inlinedAt: !521)
!521 = distinct !DILocation(line: 128, column: 9, scope: !510, inlinedAt: !522)
!522 = distinct !DILocation(line: 245, column: 11, scope: !468, inlinedAt: !469)
!523 = !DILocation(line: 74, column: 3, scope: !486, inlinedAt: !524)
!524 = distinct !DILocation(line: 92, column: 15, scope: !507, inlinedAt: !521)
!525 = !DILocation(line: 92, column: 3, scope: !486, inlinedAt: !524)
!526 = !DILocation(line: 248, column: 13, scope: !468, inlinedAt: !469)
!527 = !DILocation(line: 248, column: 7, scope: !468, inlinedAt: !469)
!528 = !DILocation(line: 249, column: 4, scope: !468, inlinedAt: !469)
!529 = !DILocation(line: 250, column: 4, scope: !468, inlinedAt: !469)
!530 = !DILocation(line: 255, column: 10, scope: !468, inlinedAt: !469)
!531 = !DILocation(line: 92, column: 15, scope: !507, inlinedAt: !532)
!532 = distinct !DILocation(line: 128, column: 9, scope: !510, inlinedAt: !533)
!533 = distinct !DILocation(line: 255, column: 10, scope: !468, inlinedAt: !469)
!534 = !DILocation(line: 74, column: 3, scope: !486, inlinedAt: !535)
!535 = distinct !DILocation(line: 92, column: 15, scope: !507, inlinedAt: !532)
!536 = !DILocation(line: 92, column: 3, scope: !486, inlinedAt: !535)
!537 = !DILocation(line: 257, column: 12, scope: !468, inlinedAt: !469)
!538 = !DILocation(line: 257, column: 21, scope: !468, inlinedAt: !469)
!539 = !DILocation(line: 257, column: 24, scope: !468, inlinedAt: !469)
!540 = !DILocation(line: 257, column: 35, scope: !468, inlinedAt: !469)
!541 = !DILocation(line: 257, column: 7, scope: !468, inlinedAt: !469)
!542 = !DILocation(line: 258, column: 9, scope: !468, inlinedAt: !469)
!543 = !DILocation(line: 258, column: 8, scope: !468, inlinedAt: !469)
!544 = !DILocation(line: 259, column: 28, scope: !468, inlinedAt: !469)
!545 = !DILocation(line: 259, column: 5, scope: !468, inlinedAt: !469)
!546 = !DILocation(line: 260, column: 9, scope: !468, inlinedAt: !469)
!547 = !DILocation(line: 261, column: 3, scope: !468, inlinedAt: !469)
!548 = !DILocation(line: 269, column: 7, scope: !468, inlinedAt: !469)
!549 = !DILocation(line: 269, column: 12, scope: !468, inlinedAt: !469)
!550 = !DILocation(line: 270, column: 13, scope: !468, inlinedAt: !469)
!551 = !DILocation(line: 270, column: 4, scope: !468, inlinedAt: !469)
!552 = !DILocation(line: 272, column: 31, scope: !468, inlinedAt: !469)
!553 = !DILocation(line: 272, column: 17, scope: !468, inlinedAt: !469)
!554 = !DILocation(line: 272, column: 2, scope: !468, inlinedAt: !469)
!555 = distinct !{!555, !500, !556}
!556 = !DILocation(line: 272, column: 43, scope: !468, inlinedAt: !469)
!557 = !DILocation(line: 274, column: 2, scope: !468, inlinedAt: !469)
!558 = !{i64 2155304666}
!559 = !DILocation(line: 275, column: 31, scope: !468, inlinedAt: !469)
!560 = !DILocation(line: 276, column: 2, scope: !468, inlinedAt: !469)
!561 = !{i64 2155304704}
!562 = !DILocation(line: 281, column: 13, scope: !468, inlinedAt: !469)
!563 = !DILocation(line: 281, column: 22, scope: !468, inlinedAt: !469)
!564 = !DILocation(line: 281, column: 25, scope: !468, inlinedAt: !469)
!565 = !DILocation(line: 281, column: 38, scope: !468, inlinedAt: !469)
!566 = !DILocation(line: 281, column: 6, scope: !468, inlinedAt: !469)
!567 = !DILocation(line: 287, column: 14, scope: !468, inlinedAt: !469)
!568 = !DILocation(line: 287, column: 7, scope: !468, inlinedAt: !469)
!569 = !DILocation(line: 288, column: 4, scope: !468, inlinedAt: !469)
!570 = !DILocation(line: 74, column: 3, scope: !486, inlinedAt: !571)
!571 = distinct !DILocation(line: 288, column: 4, scope: !468, inlinedAt: !469)
!572 = !DILocation(line: 92, column: 3, scope: !486, inlinedAt: !571)
!573 = !DILocation(line: 290, column: 19, scope: !468, inlinedAt: !469)
!574 = !DILocation(line: 291, column: 12, scope: !468, inlinedAt: !469)
!575 = !DILocation(line: 292, column: 14, scope: !468, inlinedAt: !469)
!576 = !DILocation(line: 293, column: 20, scope: !468, inlinedAt: !469)
!577 = !DILocation(line: 294, column: 27, scope: !468, inlinedAt: !469)
!578 = !DILocation(line: 294, column: 18, scope: !468, inlinedAt: !469)
!579 = !DILocation(line: 295, column: 24, scope: !468, inlinedAt: !469)
!580 = !DILocation(line: 295, column: 15, scope: !468, inlinedAt: !469)
!581 = !DILocation(line: 296, column: 11, scope: !468, inlinedAt: !469)
!582 = !DILocation(line: 132, column: 27, scope: !583, inlinedAt: !584)
!583 = distinct !DISubprogram(name: "trace_hwlat_sample", scope: !1, file: !1, line: 130, type: !128, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!584 = distinct !DILocation(line: 297, column: 3, scope: !468, inlinedAt: !469)
!585 = !DILocation(line: 134, column: 49, scope: !583, inlinedAt: !584)
!586 = !DILocation(line: 189, column: 2, scope: !587, inlinedAt: !589)
!587 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !588, file: !588, line: 185, type: !128, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!588 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!589 = distinct !DILocation(line: 139, column: 8, scope: !583, inlinedAt: !584)
!590 = !DILocation(line: 159, column: 2, scope: !454, inlinedAt: !591)
!591 = distinct !DILocation(line: 189, column: 2, scope: !587, inlinedAt: !589)
!592 = !DILocation(line: 181, column: 28, scope: !593, inlinedAt: !594)
!593 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !588, file: !588, line: 179, type: !128, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!594 = distinct !DILocation(line: 190, column: 9, scope: !587, inlinedAt: !589)
!595 = !DILocation(line: 183, column: 9, scope: !593, inlinedAt: !594)
!596 = !DILocation(line: 138, column: 10, scope: !583, inlinedAt: !584)
!597 = !DILocation(line: 140, column: 7, scope: !583, inlinedAt: !584)
!598 = !DILocation(line: 140, column: 6, scope: !583, inlinedAt: !584)
!599 = !DILocation(line: 142, column: 10, scope: !583, inlinedAt: !584)
!600 = !DILocation(line: 143, column: 28, scope: !583, inlinedAt: !584)
!601 = !DILocation(line: 143, column: 20, scope: !583, inlinedAt: !584)
!602 = !DILocation(line: 143, column: 9, scope: !583, inlinedAt: !584)
!603 = !DILocation(line: 143, column: 18, scope: !583, inlinedAt: !584)
!604 = !DILocation(line: 144, column: 30, scope: !583, inlinedAt: !584)
!605 = !DILocation(line: 144, column: 9, scope: !583, inlinedAt: !584)
!606 = !DILocation(line: 144, column: 20, scope: !583, inlinedAt: !584)
!607 = !DILocation(line: 145, column: 35, scope: !583, inlinedAt: !584)
!608 = !DILocation(line: 145, column: 9, scope: !583, inlinedAt: !584)
!609 = !DILocation(line: 145, column: 25, scope: !583, inlinedAt: !584)
!610 = !DILocation(line: 146, column: 9, scope: !583, inlinedAt: !584)
!611 = !DILocation(line: 146, column: 30, scope: !583, inlinedAt: !584)
!612 = !DILocation(line: 147, column: 33, scope: !583, inlinedAt: !584)
!613 = !DILocation(line: 147, column: 9, scope: !583, inlinedAt: !584)
!614 = !DILocation(line: 147, column: 23, scope: !583, inlinedAt: !584)
!615 = !DILocation(line: 148, column: 30, scope: !583, inlinedAt: !584)
!616 = !DILocation(line: 148, column: 9, scope: !583, inlinedAt: !584)
!617 = !DILocation(line: 148, column: 20, scope: !583, inlinedAt: !584)
!618 = !DILocation(line: 149, column: 27, scope: !583, inlinedAt: !584)
!619 = !DILocation(line: 149, column: 9, scope: !583, inlinedAt: !584)
!620 = !DILocation(line: 149, column: 17, scope: !583, inlinedAt: !584)
!621 = !DILocation(line: 151, column: 7, scope: !583, inlinedAt: !584)
!622 = !DILocation(line: 151, column: 6, scope: !583, inlinedAt: !584)
!623 = !DILocation(line: 152, column: 38, scope: !583, inlinedAt: !584)
!624 = !DILocation(line: 152, column: 3, scope: !583, inlinedAt: !584)
!625 = !DILocation(line: 299, column: 13, scope: !468, inlinedAt: !469)
!626 = !DILocation(line: 302, column: 21, scope: !468, inlinedAt: !469)
!627 = !DILocation(line: 302, column: 17, scope: !468, inlinedAt: !469)
!628 = !DILocation(line: 302, column: 15, scope: !468, inlinedAt: !469)
!629 = !DILocation(line: 302, column: 7, scope: !468, inlinedAt: !469)
!630 = !DILocation(line: 303, column: 22, scope: !468, inlinedAt: !469)
!631 = !DILocation(line: 303, column: 20, scope: !468, inlinedAt: !469)
!632 = !DILocation(line: 304, column: 4, scope: !468, inlinedAt: !469)
!633 = !DILocation(line: 305, column: 3, scope: !468, inlinedAt: !469)
!634 = !DILocation(line: 310, column: 1, scope: !468, inlinedAt: !469)
!635 = !DILocation(line: 371, column: 3, scope: !389)
!636 = !DILocation(line: 39, column: 2, scope: !637, inlinedAt: !638)
!637 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !455, file: !455, line: 37, type: !128, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!638 = distinct !DILocation(line: 371, column: 3, scope: !389)
!639 = !{i64 852709}
!640 = !DILocation(line: 373, column: 3, scope: !389)
!641 = !DILocation(line: 374, column: 25, scope: !389)
!642 = !DILocation(line: 374, column: 52, scope: !389)
!643 = !DILocation(line: 374, column: 39, scope: !389)
!644 = !DILocation(line: 375, column: 3, scope: !389)
!645 = !DILocation(line: 377, column: 3, scope: !389)
!646 = !DILocation(line: 74, column: 3, scope: !486, inlinedAt: !647)
!647 = distinct !DILocation(line: 377, column: 3, scope: !389)
!648 = !DILocation(line: 92, column: 3, scope: !486, inlinedAt: !647)
!649 = !DILocation(line: 380, column: 16, scope: !389)
!650 = !DILocation(line: 380, column: 7, scope: !389)
!651 = !DILocation(line: 381, column: 13, scope: !389)
!652 = !DILocation(line: 381, column: 4, scope: !389)
!653 = !DILocation(line: 383, column: 7, scope: !389)
!654 = distinct !{!654, !391, !655}
!655 = !DILocation(line: 385, column: 2, scope: !389)
!656 = !DILocation(line: 384, column: 4, scope: !389)
!657 = !DILocation(line: 387, column: 2, scope: !389)
!658 = distinct !DISubprogram(name: "hwlat_cpu_init", scope: !1, file: !1, line: 535, type: !128, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!659 = !DILocation(line: 536, scope: !658)
!660 = !DILocation(line: 544, column: 28, scope: !661, inlinedAt: !663)
!661 = distinct !DISubprogram(name: "schedule_work_on", scope: !662, file: !662, line: 542, type: !128, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!662 = !DIFile(filename: "../include/linux/workqueue.h", directory: "/llk/linux-5.17/build_arm_allyes")
!663 = distinct !DILocation(line: 537, column: 2, scope: !658)
!664 = !DILocation(line: 544, column: 9, scope: !661, inlinedAt: !663)
!665 = !DILocation(line: 538, column: 2, scope: !658)
!666 = distinct !DISubprogram(name: "hwlat_cpu_die", scope: !1, file: !1, line: 544, type: !128, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!667 = !DILocation(line: 545, scope: !666)
!668 = !DILocation(line: 466, column: 12, scope: !377, inlinedAt: !669)
!669 = distinct !DILocation(line: 546, column: 2, scope: !666)
!670 = !DILocation(line: 466, column: 45, scope: !377, inlinedAt: !669)
!671 = !DILocation(line: 467, column: 6, scope: !377, inlinedAt: !669)
!672 = !DILocation(line: 468, column: 16, scope: !377, inlinedAt: !669)
!673 = !DILocation(line: 468, column: 3, scope: !377, inlinedAt: !669)
!674 = !DILocation(line: 469, column: 2, scope: !377, inlinedAt: !669)
!675 = !DILocation(line: 469, column: 43, scope: !377, inlinedAt: !669)
!676 = !DILocation(line: 547, column: 2, scope: !666)
!677 = distinct !DISubprogram(name: "hwlat_hotplug_workfn", scope: !1, file: !1, line: 507, type: !128, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!678 = !DILocation(line: 508, scope: !677)
!679 = !DILocation(line: 509, column: 27, scope: !677)
!680 = !DILocation(line: 104, column: 4, scope: !138, inlinedAt: !681)
!681 = distinct !DILocation(line: 510, column: 21, scope: !677)
!682 = !DILocation(line: 104, column: 26, scope: !138, inlinedAt: !681)
!683 = !DILocation(line: 103, column: 9, scope: !138, inlinedAt: !681)
!684 = !DILocation(line: 510, column: 21, scope: !677)
!685 = !DILocation(line: 512, column: 2, scope: !677)
!686 = !DILocation(line: 513, column: 2, scope: !677)
!687 = !DILocation(line: 514, column: 2, scope: !677)
!688 = !DILocation(line: 516, column: 7, scope: !677)
!689 = !DILocation(line: 516, column: 18, scope: !677)
!690 = !DILocation(line: 516, column: 32, scope: !677)
!691 = !DILocation(line: 516, column: 44, scope: !677)
!692 = !DILocation(line: 516, column: 6, scope: !677)
!693 = !DILocation(line: 517, column: 3, scope: !677)
!694 = !DILocation(line: 519, column: 33, scope: !677)
!695 = !DILocation(line: 115, column: 25, scope: !335, inlinedAt: !696)
!696 = distinct !DILocation(line: 379, column: 18, scope: !697, inlinedAt: !698)
!697 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !261, file: !261, line: 377, type: !128, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!698 = distinct !DILocation(line: 519, column: 7, scope: !677)
!699 = !DILocation(line: 108, column: 2, scope: !333, inlinedAt: !700)
!700 = distinct !DILocation(line: 115, column: 2, scope: !335, inlinedAt: !696)
!701 = !DILocation(line: 118, column: 21, scope: !702, inlinedAt: !704)
!702 = distinct !DISubprogram(name: "arch_test_bit", scope: !703, file: !703, line: 116, type: !128, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!703 = !DIFile(filename: "../include/asm-generic/bitops/non-atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!704 = distinct !DILocation(line: 379, column: 9, scope: !697, inlinedAt: !698)
!705 = !DILocation(line: 118, column: 16, scope: !702, inlinedAt: !704)
!706 = !DILocation(line: 118, column: 42, scope: !702, inlinedAt: !704)
!707 = !DILocation(line: 519, column: 7, scope: !677)
!708 = !DILocation(line: 519, column: 6, scope: !677)
!709 = !DILocation(line: 520, column: 3, scope: !677)
!710 = !DILocation(line: 522, column: 20, scope: !677)
!711 = !DILocation(line: 78, column: 6, scope: !275, inlinedAt: !712)
!712 = distinct !DILocation(line: 495, column: 12, scope: !278, inlinedAt: !713)
!713 = distinct !DILocation(line: 522, column: 2, scope: !677)
!714 = !DILocation(line: 36, column: 9, scope: !281, inlinedAt: !715)
!715 = distinct !DILocation(line: 79, column: 7, scope: !275, inlinedAt: !712)
!716 = !DILocation(line: 79, column: 6, scope: !275, inlinedAt: !712)
!717 = !DILocation(line: 0, scope: !677)
!718 = !DILocation(line: 497, column: 3, scope: !278, inlinedAt: !713)
!719 = !DILocation(line: 498, column: 3, scope: !278, inlinedAt: !713)
!720 = !DILocation(line: 80, column: 19, scope: !275, inlinedAt: !712)
!721 = !DILocation(line: 80, column: 3, scope: !275, inlinedAt: !712)
!722 = !DILocation(line: 501, column: 2, scope: !278, inlinedAt: !713)
!723 = !DILocation(line: 501, column: 43, scope: !278, inlinedAt: !713)
!724 = !DILocation(line: 503, column: 2, scope: !278, inlinedAt: !713)
!725 = !DILocation(line: 525, column: 2, scope: !677)
!726 = !DILocation(line: 526, column: 2, scope: !677)
!727 = !DILocation(line: 527, column: 2, scope: !677)
!728 = !DILocation(line: 528, column: 1, scope: !677)
!729 = distinct !DISubprogram(name: "hwlat_mode_write", scope: !1, file: !1, line: 679, type: !128, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!730 = !DILocation(line: 681, scope: !729)
!731 = !DILocation(line: 682, column: 27, scope: !729)
!732 = !DILocation(line: 684, column: 2, scope: !729)
!733 = !DILocation(line: 684, column: 7, scope: !729)
!734 = !DILocation(line: 687, column: 10, scope: !729)
!735 = !DILocation(line: 687, column: 6, scope: !729)
!736 = !DILocation(line: 688, column: 3, scope: !729)
!737 = !DILocation(line: 221, column: 6, scope: !738, inlinedAt: !740)
!738 = distinct !DISubprogram(name: "check_copy_size", scope: !739, file: !739, line: 218, type: !128, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!739 = !DIFile(filename: "../include/linux/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!740 = distinct !DILocation(line: 191, column: 6, scope: !741, inlinedAt: !743)
!741 = distinct !DISubprogram(name: "copy_from_user", scope: !742, file: !742, line: 189, type: !128, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!742 = !DIFile(filename: "../include/linux/uaccess.h", directory: "/llk/linux-5.17/build_arm_allyes")
!743 = distinct !DILocation(line: 690, column: 6, scope: !729)
!744 = !DILocation(line: 232, column: 20, scope: !738, inlinedAt: !740)
!745 = !DILocation(line: 199, column: 23, scope: !746, inlinedAt: !747)
!746 = distinct !DISubprogram(name: "check_object_size", scope: !739, file: !739, line: 195, type: !128, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!747 = distinct !DILocation(line: 232, column: 2, scope: !738, inlinedAt: !740)
!748 = !DILocation(line: 199, column: 3, scope: !746, inlinedAt: !747)
!749 = !DILocation(line: 192, column: 23, scope: !741, inlinedAt: !743)
!750 = !DILocation(line: 156, column: 2, scope: !751, inlinedAt: !752)
!751 = distinct !DISubprogram(name: "_copy_from_user", scope: !742, file: !742, line: 153, type: !128, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!752 = distinct !DILocation(line: 192, column: 7, scope: !741, inlinedAt: !743)
!753 = !DILocation(line: 157, column: 7, scope: !751, inlinedAt: !752)
!754 = !DILocation(line: 157, column: 30, scope: !751, inlinedAt: !752)
!755 = !DILocation(line: 157, column: 33, scope: !751, inlinedAt: !752)
!756 = !{i64 2152194572, i64 2152194597}
!757 = !DILocation(line: 157, column: 6, scope: !751, inlinedAt: !752)
!758 = !DILocation(line: 158, column: 29, scope: !751, inlinedAt: !752)
!759 = !DILocation(line: 135, column: 2, scope: !760, inlinedAt: !762)
!760 = distinct !DISubprogram(name: "instrument_copy_from_user", scope: !761, file: !761, line: 133, type: !128, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!761 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!762 = distinct !DILocation(line: 158, column: 3, scope: !751, inlinedAt: !752)
!763 = !DILocation(line: 104, column: 4, scope: !138, inlinedAt: !764)
!764 = distinct !DILocation(line: 92, column: 10, scope: !765, inlinedAt: !767)
!765 = distinct !DISubprogram(name: "get_domain", scope: !766, file: !766, line: 85, type: !128, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!766 = !DIFile(filename: "../arch/arm/include/asm/domain.h", directory: "/llk/linux-5.17/build_arm_allyes")
!767 = distinct !DILocation(line: 29, column: 28, scope: !768, inlinedAt: !770)
!768 = distinct !DISubprogram(name: "uaccess_save_and_enable", scope: !769, file: !769, line: 26, type: !128, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!769 = !DIFile(filename: "../arch/arm/include/asm/uaccess.h", directory: "/llk/linux-5.17/build_arm_allyes")
!770 = distinct !DILocation(line: 537, column: 15, scope: !771, inlinedAt: !772)
!771 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !769, file: !769, line: 533, type: !128, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!772 = distinct !DILocation(line: 159, column: 9, scope: !751, inlinedAt: !752)
!773 = !DILocation(line: 104, column: 26, scope: !138, inlinedAt: !764)
!774 = !DILocation(line: 103, column: 9, scope: !138, inlinedAt: !764)
!775 = !DILocation(line: 92, column: 33, scope: !765, inlinedAt: !767)
!776 = !DILocation(line: 89, column: 2, scope: !765, inlinedAt: !767)
!777 = !{i64 4690127}
!778 = !DILocation(line: 32, column: 25, scope: !768, inlinedAt: !770)
!779 = !DILocation(line: 32, column: 54, scope: !768, inlinedAt: !770)
!780 = !DILocation(line: 99, column: 2, scope: !781, inlinedAt: !782)
!781 = distinct !DISubprogram(name: "set_domain", scope: !766, file: !766, line: 97, type: !128, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!782 = distinct !DILocation(line: 32, column: 2, scope: !768, inlinedAt: !770)
!783 = !{i64 4690324}
!784 = !DILocation(line: 102, column: 2, scope: !781, inlinedAt: !782)
!785 = !{i64 2152175557}
!786 = !DILocation(line: 538, column: 6, scope: !771, inlinedAt: !772)
!787 = !DILocation(line: 99, column: 2, scope: !781, inlinedAt: !788)
!788 = distinct !DILocation(line: 45, column: 2, scope: !789, inlinedAt: !790)
!789 = distinct !DISubprogram(name: "uaccess_restore", scope: !769, file: !769, line: 41, type: !128, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!790 = distinct !DILocation(line: 539, column: 2, scope: !771, inlinedAt: !772)
!791 = !DILocation(line: 102, column: 2, scope: !781, inlinedAt: !788)
!792 = !DILocation(line: 160, column: 2, scope: !751, inlinedAt: !752)
!793 = !DILocation(line: 0, scope: !751, inlinedAt: !752)
!794 = !DILocation(line: 161, column: 6, scope: !751, inlinedAt: !752)
!795 = !DILocation(line: 162, column: 10, scope: !751, inlinedAt: !752)
!796 = !DILocation(line: 162, column: 18, scope: !751, inlinedAt: !752)
!797 = !DILocation(line: 162, column: 13, scope: !751, inlinedAt: !752)
!798 = !DILocation(line: 162, column: 3, scope: !751, inlinedAt: !752)
!799 = !DILocation(line: 691, column: 3, scope: !729)
!800 = !DILocation(line: 693, column: 6, scope: !729)
!801 = !DILocation(line: 693, column: 2, scope: !729)
!802 = !DILocation(line: 693, column: 11, scope: !729)
!803 = !DILocation(line: 78, column: 9, scope: !804, inlinedAt: !806)
!804 = distinct !DISubprogram(name: "strstrip", scope: !805, file: !805, line: 76, type: !128, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!805 = !DIFile(filename: "../include/linux/string.h", directory: "/llk/linux-5.17/build_arm_allyes")
!806 = distinct !DILocation(line: 695, column: 9, scope: !729)
!807 = !DILocation(line: 703, column: 2, scope: !729)
!808 = !DILocation(line: 704, column: 6, scope: !729)
!809 = !DILocation(line: 705, column: 21, scope: !729)
!810 = !DILocation(line: 823, column: 17, scope: !223, inlinedAt: !811)
!811 = distinct !DILocation(line: 705, column: 3, scope: !729)
!812 = !DILocation(line: 823, column: 29, scope: !223, inlinedAt: !811)
!813 = !DILocation(line: 823, column: 6, scope: !223, inlinedAt: !811)
!814 = !DILocation(line: 824, column: 3, scope: !223, inlinedAt: !811)
!815 = !DILocation(line: 826, column: 3, scope: !223, inlinedAt: !811)
!816 = !DILocation(line: 125, column: 3, scope: !132, inlinedAt: !817)
!817 = distinct !DILocation(line: 398, column: 37, scope: !231, inlinedAt: !818)
!818 = distinct !DILocation(line: 826, column: 3, scope: !223, inlinedAt: !811)
!819 = !DILocation(line: 401, column: 2, scope: !231, inlinedAt: !818)
!820 = !DILocation(line: 402, column: 19, scope: !231, inlinedAt: !818)
!821 = !DILocation(line: 404, column: 7, scope: !231, inlinedAt: !818)
!822 = !DILocation(line: 404, column: 6, scope: !231, inlinedAt: !818)
!823 = !DILocation(line: 405, column: 3, scope: !231, inlinedAt: !818)
!824 = !DILocation(line: 407, column: 15, scope: !231, inlinedAt: !818)
!825 = !DILocation(line: 407, column: 2, scope: !231, inlinedAt: !818)
!826 = !DILocation(line: 408, column: 17, scope: !231, inlinedAt: !818)
!827 = !DILocation(line: 408, column: 2, scope: !231, inlinedAt: !818)
!828 = !DILocation(line: 411, column: 2, scope: !231, inlinedAt: !818)
!829 = !DILocation(line: 707, column: 2, scope: !729)
!830 = !DILocation(line: 710, column: 7, scope: !729)
!831 = !DILocation(line: 710, column: 40, scope: !729)
!832 = !DILocation(line: 711, column: 29, scope: !729)
!833 = !DILocation(line: 711, column: 27, scope: !729)
!834 = !DILocation(line: 713, column: 3, scope: !729)
!835 = !DILocation(line: 0, scope: !729)
!836 = !DILocation(line: 709, column: 29, scope: !729)
!837 = !DILocation(line: 716, column: 2, scope: !729)
!838 = !DILocation(line: 718, column: 6, scope: !729)
!839 = !DILocation(line: 719, column: 22, scope: !729)
!840 = !DILocation(line: 719, column: 3, scope: !729)
!841 = !DILocation(line: 720, column: 2, scope: !729)
!842 = !DILocation(line: 722, column: 11, scope: !729)
!843 = !DILocation(line: 722, column: 8, scope: !729)
!844 = !DILocation(line: 726, column: 2, scope: !729)
!845 = !DILocation(line: 727, column: 1, scope: !729)
!846 = distinct !DISubprogram(name: "hwlat_mode_open", scope: !1, file: !1, line: 656, type: !128, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!847 = !DILocation(line: 657, scope: !846)
!848 = !DILocation(line: 658, column: 9, scope: !846)
!849 = !DILocation(line: 658, column: 2, scope: !846)
!850 = distinct !DISubprogram(name: "s_mode_start", scope: !1, file: !1, line: 605, type: !128, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!851 = !DILocation(line: 606, scope: !850)
!852 = !DILocation(line: 607, column: 13, scope: !850)
!853 = !DILocation(line: 609, column: 2, scope: !850)
!854 = !DILocation(line: 611, column: 11, scope: !850)
!855 = !DILocation(line: 0, scope: !850)
!856 = !DILocation(line: 615, column: 1, scope: !850)
!857 = distinct !DISubprogram(name: "s_mode_stop", scope: !1, file: !1, line: 643, type: !128, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!858 = !DILocation(line: 644, scope: !857)
!859 = !DILocation(line: 645, column: 2, scope: !857)
!860 = !DILocation(line: 646, column: 2, scope: !857)
!861 = !DILocation(line: 647, column: 1, scope: !857)
!862 = distinct !DISubprogram(name: "s_mode_next", scope: !1, file: !1, line: 617, type: !128, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!863 = !DILocation(line: 618, scope: !862)
!864 = !DILocation(line: 619, column: 13, scope: !862)
!865 = !DILocation(line: 621, column: 11, scope: !862)
!866 = !DILocation(line: 0, scope: !862)
!867 = !DILocation(line: 625, column: 1, scope: !862)
!868 = distinct !DISubprogram(name: "s_mode_show", scope: !1, file: !1, line: 627, type: !128, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!869 = !DILocation(line: 628, scope: !868)
!870 = !DILocation(line: 630, column: 13, scope: !868)
!871 = !DILocation(line: 632, column: 25, scope: !868)
!872 = !DILocation(line: 632, column: 11, scope: !868)
!873 = !DILocation(line: 632, column: 6, scope: !868)
!874 = !DILocation(line: 633, column: 14, scope: !868)
!875 = !DILocation(line: 633, column: 3, scope: !868)
!876 = !DILocation(line: 635, column: 14, scope: !868)
!877 = !DILocation(line: 0, scope: !868)
!878 = !DILocation(line: 637, column: 11, scope: !868)
!879 = !DILocation(line: 637, column: 6, scope: !868)
!880 = !DILocation(line: 638, column: 12, scope: !868)
!881 = !DILocation(line: 638, column: 3, scope: !868)
!882 = !DILocation(line: 640, column: 2, scope: !868)
