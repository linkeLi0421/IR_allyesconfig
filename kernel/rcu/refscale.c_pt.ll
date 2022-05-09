; ModuleID = '/llk/IR_all_yes/kernel/rcu/refscale.c_pt.bc'
source_filename = "../kernel/rcu/refscale.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ref_scale_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.reader_task = type { ptr, i32, %struct.wait_queue_head, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.30 = type { i8, i8, i8, i8 }

@__UNIQUE_ID_file292 = internal constant [34 x i8] c"refscale.file=kernel/rcu/refscale\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"refscale.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [65 x i8] c"refscale.author=Joel Fernandes (Google) <joel@joelfernandes.org>\00", section ".modinfo", align 1
@__param_str_scale_type = internal constant [20 x i8] c"refscale.scale_type\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@scale_type = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_scale_type = internal constant %struct.kernel_param { ptr @__param_str_scale_type, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @scale_type } }, section "__param", align 4
@__UNIQUE_ID_scale_typetype295 = internal constant [35 x i8] c"refscale.parmtype=scale_type:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_scale_type296 = internal constant [73 x i8] c"refscale.parm=scale_type:Type of test (rcu, srcu, refcnt, rwsem, rwlock.\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [17 x i8] c"refscale.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype297 = internal constant [30 x i8] c"refscale.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose298 = internal constant [57 x i8] c"refscale.parm=verbose:Enable verbose debugging printk()s\00", section ".modinfo", align 1
@__param_str_verbose_batched = internal constant [25 x i8] c"refscale.verbose_batched\00", align 1
@verbose_batched = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose_batched = internal constant %struct.kernel_param { ptr @__param_str_verbose_batched, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @verbose_batched } }, section "__param", align 4
@__UNIQUE_ID_verbose_batchedtype299 = internal constant [38 x i8] c"refscale.parmtype=verbose_batched:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose_batched300 = internal constant [64 x i8] c"refscale.parm=verbose_batched:Batch verbose debugging printk()s\00", section ".modinfo", align 1
@__param_str_holdoff = internal constant [17 x i8] c"refscale.holdoff\00", align 1
@holdoff = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_holdoff = internal constant %struct.kernel_param { ptr @__param_str_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @holdoff } }, section "__param", align 4
@__UNIQUE_ID_holdofftype301 = internal constant [30 x i8] c"refscale.parmtype=holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_holdoff302 = internal constant [57 x i8] c"refscale.parm=holdoff:Holdoff time before test start (s)\00", section ".modinfo", align 1
@__param_str_loops = internal constant [15 x i8] c"refscale.loops\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@loops = internal global { i32, [28 x i8] } { i32 10000, [28 x i8] zeroinitializer }, align 32
@__param_loops = internal constant %struct.kernel_param { ptr @__param_str_loops, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @loops } }, section "__param", align 4
@__UNIQUE_ID_loopstype303 = internal constant [29 x i8] c"refscale.parmtype=loops:long\00", section ".modinfo", align 1
@__UNIQUE_ID_loops304 = internal constant [52 x i8] c"refscale.parm=loops:Number of loops per experiment.\00", section ".modinfo", align 1
@__param_str_nreaders = internal constant [18 x i8] c"refscale.nreaders\00", align 1
@nreaders = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nreaders = internal constant %struct.kernel_param { ptr @__param_str_nreaders, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nreaders } }, section "__param", align 4
@__UNIQUE_ID_nreaderstype305 = internal constant [31 x i8] c"refscale.parmtype=nreaders:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nreaders306 = internal constant [62 x i8] c"refscale.parm=nreaders:Number of readers, -1 for 75% of CPUs.\00", section ".modinfo", align 1
@__param_str_nruns = internal constant [15 x i8] c"refscale.nruns\00", align 1
@nruns = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_nruns = internal constant %struct.kernel_param { ptr @__param_str_nruns, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nruns } }, section "__param", align 4
@__UNIQUE_ID_nrunstype307 = internal constant [28 x i8] c"refscale.parmtype=nruns:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nruns308 = internal constant [50 x i8] c"refscale.parm=nruns:Number of experiments to run.\00", section ".modinfo", align 1
@__param_str_readdelay = internal constant [19 x i8] c"refscale.readdelay\00", align 1
@readdelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_readdelay = internal constant %struct.kernel_param { ptr @__param_str_readdelay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @readdelay } }, section "__param", align 4
@__UNIQUE_ID_readdelaytype309 = internal constant [32 x i8] c"refscale.parmtype=readdelay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_readdelay310 = internal constant [56 x i8] c"refscale.parm=readdelay:Read-side delay in nanoseconds.\00", section ".modinfo", align 1
@__param_str_shutdown = internal constant [18 x i8] c"refscale.shutdown\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@shutdown = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_shutdown = internal constant %struct.kernel_param { ptr @__param_str_shutdown, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @shutdown } }, section "__param", align 4
@__UNIQUE_ID_shutdowntype311 = internal constant [32 x i8] c"refscale.parmtype=shutdown:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_shutdown312 = internal constant [61 x i8] c"refscale.parm=shutdown:Shutdown at end of scalability tests.\00", section ".modinfo", align 1
@__initcall__kmod_refscale__326_877_ref_scale_init6 = internal global ptr @ref_scale_init, section ".initcall6.init", align 4
@__exitcall_ref_scale_cleanup = internal global ptr @ref_scale_cleanup, section ".exitcall.exit", align 4
@__pcpu_unique_srcu_refctl_scale_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@srcu_refctl_scale_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@__pcpu_unique_test_acqrel = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@test_acqrel = weak dso_local global i32 0, section ".data..percpu", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rcu\00", [28 x i8] zeroinitializer }, align 32
@ref_scale_init.scale_ops = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @rcu_ops, ptr @srcu_ops, ptr @rcu_trace_ops, ptr @rcu_tasks_ops, ptr @refcnt_ops, ptr @rwlock_ops, ptr @rwsem_ops, ptr @lock_ops, ptr @lock_irq_ops, ptr @acqrel_ops, ptr @clock_ops], [52 x i8] zeroinitializer }, align 32
@rcu_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr @rcu_sync_scale_init, ptr null, ptr @ref_rcu_read_section, ptr @ref_rcu_delay_section, ptr @.str }, [44 x i8] zeroinitializer }, align 32
@srcu_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr @rcu_sync_scale_init, ptr null, ptr @srcu_ref_scale_read_section, ptr @srcu_ref_scale_delay_section, ptr @.str.46 }, [44 x i8] zeroinitializer }, align 32
@rcu_trace_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr @rcu_sync_scale_init, ptr null, ptr @rcu_trace_ref_scale_read_section, ptr @rcu_trace_ref_scale_delay_section, ptr @.str.52 }, [44 x i8] zeroinitializer }, align 32
@rcu_tasks_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr @rcu_sync_scale_init, ptr null, ptr @rcu_tasks_ref_scale_read_section, ptr @rcu_tasks_ref_scale_delay_section, ptr @.str.54 }, [44 x i8] zeroinitializer }, align 32
@refcnt_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr @rcu_sync_scale_init, ptr null, ptr @ref_refcnt_section, ptr @ref_refcnt_delay_section, ptr @.str.55 }, [44 x i8] zeroinitializer }, align 32
@rwlock_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr @ref_rwlock_init, ptr null, ptr @ref_rwlock_section, ptr @ref_rwlock_delay_section, ptr @.str.56 }, [44 x i8] zeroinitializer }, align 32
@rwsem_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr @ref_rwsem_init, ptr null, ptr @ref_rwsem_section, ptr @ref_rwsem_delay_section, ptr @.str.58 }, [44 x i8] zeroinitializer }, align 32
@lock_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr null, ptr null, ptr @ref_lock_section, ptr @ref_lock_delay_section, ptr @.str.60 }, [44 x i8] zeroinitializer }, align 32
@lock_irq_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr null, ptr null, ptr @ref_lock_irq_section, ptr @ref_lock_irq_delay_section, ptr @.str.62 }, [44 x i8] zeroinitializer }, align 32
@acqrel_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr null, ptr null, ptr @ref_acqrel_section, ptr @ref_acqrel_delay_section, ptr @.str.63 }, [44 x i8] zeroinitializer }, align 32
@clock_ops = internal global { %struct.ref_scale_ops, [44 x i8] } { %struct.ref_scale_ops { ptr null, ptr null, ptr @ref_clock_section, ptr @ref_clock_delay_section, ptr @.str.64 }, [44 x i8] zeroinitializer }, align 32
@cur_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ref_scale_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\011rcu-scale: invalid scale type: \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ref_scale_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/rcu/refscale.c\00", [42 x i8] zeroinitializer }, align 32
@ref_scale_init._entry_ptr = internal global ptr @ref_scale_init._entry, section ".printk_index", align 4
@ref_scale_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\011rcu-scale types:\00", [45 x i8] zeroinitializer }, align 32
@ref_scale_init._entry_ptr.6 = internal global ptr @ref_scale_init._entry.4, section ".printk_index", align 4
@ref_scale_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@ref_scale_init._entry_ptr.9 = internal global ptr @ref_scale_init._entry.7, section ".printk_index", align 4
@ref_scale_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@ref_scale_init._entry_ptr.12 = internal global ptr @ref_scale_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Start of test\00", [18 x i8] zeroinitializer }, align 32
@ref_scale_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@shutdown_wq = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&shutdown_wq\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ref_scale_shutdown\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating ref_scale_shutdown task\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create ref_scale_shutdown\00", [60 x i8] zeroinitializer }, align 32
@shutdown_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ref_scale_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Torture-test initialization failed with error code %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ref_scale_init.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: loops = %ld, adjusted to 1\0A\00", [32 x i8] zeroinitializer }, align 32
@ref_scale_init.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: nreaders = %d, adjusted to 1\0A\00", [62 x i8] zeroinitializer }, align 32
@ref_scale_init.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: nruns = %d, adjusted to 1\0A\00", [33 x i8] zeroinitializer }, align 32
@reader_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ref_scale_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\011%s-ref-scale: !!! out of memory\0A\00", [61 x i8] zeroinitializer }, align 32
@ref_scale_init._entry_ptr.27 = internal global ptr @ref_scale_init._entry.25, section ".printk_index", align 4
@ref_scale_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\011%s-ref-scale: Starting %d reader threads\0A\00", [52 x i8] zeroinitializer }, align 32
@ref_scale_init._entry_ptr.30 = internal global ptr @ref_scale_init._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ref_scale_reader\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Creating ref_scale_reader task\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create ref_scale_reader\00", [62 x i8] zeroinitializer }, align 32
@ref_scale_init.__already_done.34 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ref_scale_init.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(reader_tasks[i].wq)\00", [42 x i8] zeroinitializer }, align 32
@ref_scale_init.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@main_wq = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&main_wq\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"main_func\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Creating main_func task\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create main_func\00", [37 x i8] zeroinitializer }, align 32
@main_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ref_scale_init.__already_done.42 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"srcu\00", [27 x i8] zeroinitializer }, align 32
@srcu_refctl_scale = internal global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @srcu_refctl_scale_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @srcu_refctl_scale, i64 700), ptr getelementptr (i8, ptr @srcu_refctl_scale, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @srcu_refctl_scale, i64 696), [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.49, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"srcu_refctl_scale.lock\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(srcu_refctl_scale.work).work\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/rcu/refscale.c:177\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"srcu_refctl_scale\00", [46 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcu-trace\00", [22 x i8] zeroinitializer }, align 32
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcu-tasks\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refcnt\00", [25 x i8] zeroinitializer }, align 32
@refcnt = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rwlock\00", [25 x i8] zeroinitializer }, align 32
@ref_rwlock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@test_rwlock = internal global { %struct.rwlock_t, [52 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&test_rwlock\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rwsem\00", [26 x i8] zeroinitializer }, align 32
@ref_rwsem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@test_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&test_rwsem\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@test_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lock-irq\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acqrel\00", [25 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@stopopts = internal global { i64, [24 x i8] } zeroinitializer, align 32
@ref_scale_print_module_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\011%s-ref-scale: --- %s:  verbose=%d shutdown=%d holdoff=%d loops=%ld nreaders=%d nruns=%d readdelay=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ref_scale_print_module_parms\00", [35 x i8] zeroinitializer }, align 32
@ref_scale_print_module_parms._entry_ptr = internal global ptr @ref_scale_print_module_parms._entry, section ".printk_index", align 4
@shutdown_start = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@verbose_batch_ctr = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ref_scale_reader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.31, ptr @.str.3, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\011%s-ref-scale: ref_scale_reader %ld: task started\0A\00", [44 x i8] zeroinitializer }, align 32
@ref_scale_reader._entry_ptr = internal global ptr @ref_scale_reader._entry, section ".printk_index", align 4
@ref_scale_reader.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@n_init = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ref_scale_reader._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.31, ptr @.str.3, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\011%s-ref-scale: ref_scale_reader %ld: waiting to start next experiment on cpu %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ref_scale_reader._entry_ptr.70 = internal global ptr @ref_scale_reader._entry.68, section ".printk_index", align 4
@nreaders_exp = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ref_scale_reader.__already_done.71 = internal unnamed_addr global i1 false, section ".data.once", align 1
@n_started = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ref_scale_reader._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.31, ptr @.str.3, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\011%s-ref-scale: ref_scale_reader %ld: experiment %d started\0A\00", [35 x i8] zeroinitializer }, align 32
@ref_scale_reader._entry_ptr.74 = internal global ptr @ref_scale_reader._entry.72, section ".printk_index", align 4
@exp_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_warmedup = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ref_scale_reader.__already_done.75 = internal unnamed_addr global i1 false, section ".data.once", align 1
@n_cooleddown = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ref_scale_reader._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.31, ptr @.str.3, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\011%s-ref-scale: ref_scale_reader %ld: experiment %d ended, (readers remaining=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@ref_scale_reader._entry_ptr.78 = internal global ptr @ref_scale_reader._entry.76, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@main_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.39, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\011%s-ref-scale: main_func task started\0A\00", [56 x i8] zeroinitializer }, align 32
@main_func._entry_ptr = internal global ptr @main_func._entry, section ".printk_index", align 4
@main_func._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.39, ptr @.str.3, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@main_func._entry_ptr.81 = internal global ptr @main_func._entry.80, section ".printk_index", align 4
@main_func._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.39, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\011%s-ref-scale: main_func: experiment started, waiting for %d readers\0A\00", [57 x i8] zeroinitializer }, align 32
@main_func._entry_ptr.84 = internal global ptr @main_func._entry.82, section ".printk_index", align 4
@main_func._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.39, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011%s-ref-scale: main_func: experiment ended\0A\00", [51 x i8] zeroinitializer }, align 32
@main_func._entry_ptr.87 = internal global ptr @main_func._entry.85, section ".printk_index", align 4
@main_func._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.39, ptr @.str.3, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\011%s-ref-scale: END OF TEST. Calculating average duration per loop (nanoseconds)...\0A\00", [43 x i8] zeroinitializer }, align 32
@main_func._entry_ptr.90 = internal global ptr @main_func._entry.88, section ".printk_index", align 4
@main_func._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.39, ptr @.str.3, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\011Runs\09Time(ns)\0A\00", [47 x i8] zeroinitializer }, align 32
@main_func._entry_ptr.93 = internal global ptr @main_func._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d\09%llu.%03u\0A\00", [18 x i8] zeroinitializer }, align 32
@main_func._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.39, ptr @.str.3, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\011%s\00", [27 x i8] zeroinitializer }, align 32
@main_func._entry_ptr.97 = internal global ptr @main_func._entry.95, section ".printk_index", align 4
@main_func._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.39, ptr @.str.3, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@main_func._entry_ptr.99 = internal global ptr @main_func._entry.98, section ".printk_index", align 4
@.str.100 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Experiment #%d (Format: <THREAD-NUM>:<Total loop time in ns>)\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d: %llu\09\00", [22 x i8] zeroinitializer }, align 32
@process_durations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.103, ptr @.str.3, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"process_durations\00", [46 x i8] zeroinitializer }, align 32
@process_durations._entry_ptr = internal global ptr @process_durations._entry, section ".printk_index", align 4
@process_durations._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.3, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\011%s\0A\00", [26 x i8] zeroinitializer }, align 32
@process_durations._entry_ptr.106 = internal global ptr @process_durations._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Stopping \22ref_scale_reader\22 task\00", [63 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Stopping \22main_task\22 task\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"scale_type\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 69, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 73, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"verbose_batched\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 74, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [8 x i8] c"holdoff\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 77, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"loops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 80, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [9 x i8] c"nreaders\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 82, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"nruns\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 84, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [10 x i8] c"readdelay\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 86, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 94, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 69, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant [10 x i8] c"scale_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 792, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant [8 x i8] c"rcu_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 169, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"srcu_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 203, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"rcu_trace_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 257, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"rcu_tasks_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 228, i32 29 }
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"refcnt_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 288, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"rwlock_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 324, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"rwsem_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 360, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant [9 x i8] c"lock_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 395, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant [13 x i8] c"lock_irq_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 430, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"acqrel_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 466, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"clock_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 500, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant [8 x i8] c"cur_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 134, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 806, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 807, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 809, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 810, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 818, i32 40 }
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"shutdown_wq\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 105, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 822, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 823, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant [14 x i8] c"shutdown_task\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 104, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 825, i32 7 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 833, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 835, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 837, i32 6 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"reader_tasks\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 111, i32 28 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 842, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 847, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 850, i32 14 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 855, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [8 x i8] c"main_wq\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 108, i32 26 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 859, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 860, i32 13 }
@___asan_gen_.292 = private unnamed_addr constant [10 x i8] c"main_task\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 107, i32 28 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 695, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 723, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 207, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant [18 x i8] c"srcu_refctl_scale\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 177, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 189, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 261, i32 11 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 232, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 292, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"refcnt\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 265, i32 17 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 328, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant [12 x i8] c"test_rwlock\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 296, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 300, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 364, i32 11 }
@___asan_gen_.352 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [11 x i8] c"test_rwsem\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 332, i32 28 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 336, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 398, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant [10 x i8] c"test_lock\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 368, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 433, i32 11 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 469, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 503, i32 11 }
@___asan_gen_.379 = private unnamed_addr constant [9 x i8] c"stopopts\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 472, i32 21 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 739, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [15 x i8] c"shutdown_start\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [18 x i8] c"verbose_batch_ctr\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 52, i32 17 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 525, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [7 x i8] c"n_init\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 117, i32 17 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 532, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [13 x i8] c"nreaders_exp\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 114, i32 17 }
@___asan_gen_.413 = private unnamed_addr constant [10 x i8] c"n_started\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 118, i32 17 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 549, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [8 x i8] c"exp_idx\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 123, i32 12 }
@___asan_gen_.425 = private unnamed_addr constant [11 x i8] c"n_warmedup\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 119, i32 17 }
@___asan_gen_.428 = private unnamed_addr constant [13 x i8] c"n_cooleddown\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 120, i32 17 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 578, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 652, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 656, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 685, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 691, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 700, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 702, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 708, i32 17 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 711, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 716, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 613, i32 15 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 618, i32 17 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 623, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 630, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 759, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.504 = private constant [25 x i8] c"../kernel/rcu/refscale.c\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 764, i32 2 }
@llvm.compiler.used = appending global [186 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_holdoff302, ptr @__UNIQUE_ID_holdofftype301, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_loops304, ptr @__UNIQUE_ID_loopstype303, ptr @__UNIQUE_ID_nreaders306, ptr @__UNIQUE_ID_nreaderstype305, ptr @__UNIQUE_ID_nruns308, ptr @__UNIQUE_ID_nrunstype307, ptr @__UNIQUE_ID_readdelay310, ptr @__UNIQUE_ID_readdelaytype309, ptr @__UNIQUE_ID_scale_type296, ptr @__UNIQUE_ID_scale_typetype295, ptr @__UNIQUE_ID_shutdown312, ptr @__UNIQUE_ID_shutdowntype311, ptr @__UNIQUE_ID_verbose298, ptr @__UNIQUE_ID_verbose_batched300, ptr @__UNIQUE_ID_verbose_batchedtype299, ptr @__UNIQUE_ID_verbosetype297, ptr @__exitcall_ref_scale_cleanup, ptr @__initcall__kmod_refscale__326_877_ref_scale_init6, ptr @__param_holdoff, ptr @__param_loops, ptr @__param_nreaders, ptr @__param_nruns, ptr @__param_readdelay, ptr @__param_scale_type, ptr @__param_shutdown, ptr @__param_verbose, ptr @__param_verbose_batched, ptr @main_func._entry, ptr @main_func._entry.80, ptr @main_func._entry.82, ptr @main_func._entry.85, ptr @main_func._entry.88, ptr @main_func._entry.91, ptr @main_func._entry.95, ptr @main_func._entry.98, ptr @main_func._entry_ptr, ptr @main_func._entry_ptr.81, ptr @main_func._entry_ptr.84, ptr @main_func._entry_ptr.87, ptr @main_func._entry_ptr.90, ptr @main_func._entry_ptr.93, ptr @main_func._entry_ptr.97, ptr @main_func._entry_ptr.99, ptr @process_durations._entry, ptr @process_durations._entry.104, ptr @process_durations._entry_ptr, ptr @process_durations._entry_ptr.106, ptr @ref_scale_init._entry, ptr @ref_scale_init._entry.10, ptr @ref_scale_init._entry.25, ptr @ref_scale_init._entry.28, ptr @ref_scale_init._entry.4, ptr @ref_scale_init._entry.7, ptr @ref_scale_init._entry_ptr, ptr @ref_scale_init._entry_ptr.12, ptr @ref_scale_init._entry_ptr.27, ptr @ref_scale_init._entry_ptr.30, ptr @ref_scale_init._entry_ptr.6, ptr @ref_scale_init._entry_ptr.9, ptr @ref_scale_print_module_parms._entry, ptr @ref_scale_print_module_parms._entry_ptr, ptr @ref_scale_reader._entry, ptr @ref_scale_reader._entry.68, ptr @ref_scale_reader._entry.72, ptr @ref_scale_reader._entry.76, ptr @ref_scale_reader._entry_ptr, ptr @ref_scale_reader._entry_ptr.70, ptr @ref_scale_reader._entry_ptr.74, ptr @ref_scale_reader._entry_ptr.78, ptr @scale_type, ptr @verbose, ptr @verbose_batched, ptr @holdoff, ptr @loops, ptr @nreaders, ptr @nruns, ptr @readdelay, ptr @shutdown, ptr @.str, ptr @ref_scale_init.scale_ops, ptr @rcu_ops, ptr @srcu_ops, ptr @rcu_trace_ops, ptr @rcu_tasks_ops, ptr @refcnt_ops, ptr @rwlock_ops, ptr @rwsem_ops, ptr @lock_ops, ptr @lock_irq_ops, ptr @acqrel_ops, ptr @clock_ops, ptr @cur_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @ref_scale_init.__key, ptr @shutdown_wq, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @shutdown_task, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @reader_tasks, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ref_scale_init.__key.35, ptr @.str.36, ptr @ref_scale_init.__key.37, ptr @main_wq, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @main_task, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @srcu_refctl_scale, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @refcnt, ptr @.str.56, ptr @ref_rwlock_init.__key, ptr @test_rwlock, ptr @.str.57, ptr @.str.58, ptr @ref_rwsem_init.__key, ptr @test_rwsem, ptr @.str.59, ptr @.str.60, ptr @test_lock, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @stopopts, ptr @.str.65, ptr @.str.66, ptr @shutdown_start, ptr @verbose_batch_ctr, ptr @.str.67, ptr @n_init, ptr @.str.69, ptr @nreaders_exp, ptr @n_started, ptr @.str.73, ptr @exp_idx, ptr @n_warmedup, ptr @n_cooleddown, ptr @.str.77, ptr @.str.79, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose_batched to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nreaders to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nruns to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readdelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init.scale_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_trace_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_tasks_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refcnt_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwlock_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwsem_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_irq_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acqrel_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cur_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_init.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_refctl_scale to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_rwlock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rwlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_rwsem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stopopts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_print_module_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_start to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose_batch_ctr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_reader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_reader._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nreaders_exp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_started to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_reader._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_warmedup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_cooleddown to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_scale_reader._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_func._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_durations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_durations._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ref_scale_init() #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scale_type, align 4
  %1 = load i32, ptr @verbose, align 4
  %call = tail call zeroext i1 @torture_init_begin(ptr noundef %0, i32 noundef %1) #16
  br i1 %call, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = load ptr, ptr @scale_type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %i.0528 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [11 x ptr], ptr @ref_scale_init.scale_ops, i32 0, i32 %i.0528
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.ref_scale_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %6) #18
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end31, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0528, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc
  store ptr %4, ptr @cur_ops, align 4
  %7 = load ptr, ptr @scale_type, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7) #19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #19
  br label %do.end18

do.end18:                                         ; preds = %do.end18, %do.end
  %i.1529 = phi i32 [ 0, %do.end ], [ %inc24, %do.end18 ]
  %arrayidx20 = getelementptr [11 x ptr], ptr @ref_scale_init.scale_ops, i32 0, i32 %i.1529
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20, align 4
  %name21 = getelementptr inbounds %struct.ref_scale_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %11) #19
  %inc24 = add nuw nsw i32 %i.1529, 1
  %exitcond534.not = icmp eq i32 %inc24, 11
  br i1 %exitcond534.not, label %do.end28, label %do.end18

do.end28:                                         ; preds = %do.end18
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  store ptr null, ptr @cur_ops, align 4
  br label %unwind

if.end31:                                         ; preds = %for.body
  store ptr %4, ptr @cur_ops, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end31
  tail call void %13() #16
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end31
  %14 = load ptr, ptr @scale_type, align 4
  %15 = load i32, ptr @verbose, align 4
  %16 = load i8, ptr @shutdown, align 1, !range !334
  %17 = zext i8 %16 to i32
  %18 = load i32, ptr @holdoff, align 4
  %19 = load i32, ptr @loops, align 4
  %20 = load i32, ptr @nreaders, align 4
  %21 = load i32, ptr @nruns, align 4
  %22 = load i32, ptr @readdelay, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %15, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22) #19
  %23 = load i8, ptr @shutdown, align 1, !range !334
  %tobool35.not = icmp eq i8 %23, 0
  br i1 %tobool35.not, label %if.end89, label %do.body37

do.body37:                                        ; preds = %if.end34
  tail call void @__init_waitqueue_head(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull @.str.14, ptr noundef nonnull @ref_scale_init.__key) #16
  %call40 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @ref_scale_shutdown, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @shutdown_task) #16
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %land.rhs, label %if.end87.critedge

land.rhs:                                         ; preds = %do.body37
  %.b510 = load i1, ptr @ref_scale_init.__already_done, align 1
  br i1 %.b510, label %unwind, label %if.then49, !prof !335

if.then49:                                        ; preds = %land.rhs
  store i1 true, ptr @ref_scale_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 825, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call40) #16
  br label %unwind

if.end87.critedge:                                ; preds = %do.body37
  %call88 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  br label %if.end89

if.end89:                                         ; preds = %if.end87.critedge, %if.end34
  %24 = load i32, ptr @nreaders, align 4
  %cmp90 = icmp slt i32 %24, 0
  br i1 %cmp90, label %if.then92, label %if.end96

if.then92:                                        ; preds = %if.end89
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %25 = load volatile i32, ptr @__num_online_cpus, align 4
  %shr = lshr i32 %25, 1
  %call.i.i.i519 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %26 = load volatile i32, ptr @__num_online_cpus, align 4
  %shr95 = lshr i32 %26, 2
  %add = add nuw i32 %shr95, %shr
  store i32 %add, ptr @nreaders, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.end89
  %27 = load i32, ptr @loops, align 4
  %cmp98 = icmp slt i32 %27, 1
  br i1 %cmp98, label %land.rhs107, label %if.end155

land.rhs107:                                      ; preds = %if.end96
  %.b500509 = load i1, ptr @ref_scale_init.__already_done.19, align 1
  br i1 %.b500509, label %if.then154, label %if.then118, !prof !335

if.then118:                                       ; preds = %land.rhs107
  store i1 true, ptr @ref_scale_init.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 833, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef %27) #16
  br label %if.then154

if.then154:                                       ; preds = %if.then118, %land.rhs107
  store i32 1, ptr @loops, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end96
  %28 = load i32, ptr @nreaders, align 4
  %cmp157 = icmp slt i32 %28, 1
  br i1 %cmp157, label %land.rhs166, label %if.end214

land.rhs166:                                      ; preds = %if.end155
  %.b501508 = load i1, ptr @ref_scale_init.__already_done.21, align 1
  br i1 %.b501508, label %if.then213, label %if.then177, !prof !335

if.then177:                                       ; preds = %land.rhs166
  store i1 true, ptr @ref_scale_init.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 835, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef %28) #16
  br label %if.then213

if.then213:                                       ; preds = %if.then177, %land.rhs166
  store i32 1, ptr @nreaders, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %if.end155
  %29 = load i32, ptr @nruns, align 4
  %cmp216 = icmp slt i32 %29, 1
  br i1 %cmp216, label %land.rhs225, label %if.end273

land.rhs225:                                      ; preds = %if.end214
  %.b502507 = load i1, ptr @ref_scale_init.__already_done.23, align 1
  br i1 %.b502507, label %if.then272, label %if.then236, !prof !335

if.then236:                                       ; preds = %land.rhs225
  store i1 true, ptr @ref_scale_init.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 837, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef %29) #16
  br label %if.then272

if.then272:                                       ; preds = %if.then236, %land.rhs225
  store i32 1, ptr @nruns, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.end214
  %30 = load i32, ptr @nreaders, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 72) #16
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !336

kcalloc.exit.thread:                              ; preds = %if.end273
  store ptr null, ptr @reader_tasks, align 4
  br label %do.end279

if.end7.i.i:                                      ; preds = %if.end273
  %33 = extractvalue { i32, i1 } %31, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #20
  store ptr %call8.i.i, ptr @reader_tasks, align 4
  %tobool275.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool275.not, label %do.end279, label %do.body283

do.end279:                                        ; preds = %if.end7.i.i, %kcalloc.exit.thread
  %34 = load ptr, ptr @scale_type, align 4
  %call281 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %34) #19
  br label %unwind

do.body283:                                       ; preds = %if.end7.i.i
  %35 = load i32, ptr @verbose, align 4
  %tobool284.not = icmp eq i32 %35, 0
  br i1 %tobool284.not, label %do.end293, label %do.end288

do.end288:                                        ; preds = %do.body283
  %36 = load ptr, ptr @scale_type, align 4
  %37 = load i32, ptr @nreaders, align 4
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %36, i32 noundef %37) #19
  br label %do.end293

do.end293:                                        ; preds = %do.end288, %do.body283
  %38 = load i32, ptr @nreaders, align 4
  %cmp295530 = icmp sgt i32 %38, 0
  br i1 %cmp295530, label %for.body297, label %do.body370

for.body297:                                      ; preds = %do.body363.critedge, %do.end293
  %i.2531 = phi i32 [ %inc368, %do.body363.critedge ], [ 0, %do.end293 ]
  %39 = inttoptr i32 %i.2531 to ptr
  %40 = load ptr, ptr @reader_tasks, align 4
  %arrayidx298 = getelementptr %struct.reader_task, ptr %40, i32 %i.2531
  %call299 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @ref_scale_reader, ptr noundef %39, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef %arrayidx298) #16
  %cmp302 = icmp slt i32 %call299, 0
  br i1 %cmp302, label %land.rhs311, label %do.body363.critedge

land.rhs311:                                      ; preds = %for.body297
  %.b503506 = load i1, ptr @ref_scale_init.__already_done.34, align 1
  br i1 %.b503506, label %unwind, label %if.then322, !prof !335

if.then322:                                       ; preds = %land.rhs311
  store i1 true, ptr @ref_scale_init.__already_done.34, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call299) #16
  br label %unwind

do.body363.critedge:                              ; preds = %for.body297
  %41 = load ptr, ptr @reader_tasks, align 4
  %wq = getelementptr %struct.reader_task, ptr %41, i32 %i.2531, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.36, ptr noundef nonnull @ref_scale_init.__key.35) #16
  %inc368 = add nuw nsw i32 %i.2531, 1
  %42 = load i32, ptr @nreaders, align 4
  %cmp295 = icmp slt i32 %inc368, %42
  br i1 %cmp295, label %for.body297, label %do.body370

do.body370:                                       ; preds = %do.body363.critedge, %do.end293
  tail call void @__init_waitqueue_head(ptr noundef nonnull @main_wq, ptr noundef nonnull @.str.38, ptr noundef nonnull @ref_scale_init.__key.37) #16
  %call373 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @main_func, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @main_task) #16
  %cmp376 = icmp slt i32 %call373, 0
  br i1 %cmp376, label %land.rhs385, label %if.end436.critedge

land.rhs385:                                      ; preds = %do.body370
  %.b504505 = load i1, ptr @ref_scale_init.__already_done.42, align 1
  br i1 %.b504505, label %unwind, label %if.then396, !prof !335

if.then396:                                       ; preds = %land.rhs385
  store i1 true, ptr @ref_scale_init.__already_done.42, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 861, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call373) #16
  br label %unwind

if.end436.critedge:                               ; preds = %do.body370
  tail call void @torture_init_end() #16
  br label %cleanup

unwind:                                           ; preds = %if.then396, %land.rhs385, %if.then322, %land.rhs311, %do.end279, %if.then49, %land.rhs, %do.end28
  %firsterr.0 = phi i32 [ -22, %do.end28 ], [ -12, %do.end279 ], [ %call40, %if.then49 ], [ %call299, %if.then322 ], [ %call373, %if.then396 ], [ %call40, %land.rhs ], [ %call299, %land.rhs311 ], [ %call373, %land.rhs385 ]
  tail call void @torture_init_end() #16
  tail call void @ref_scale_cleanup()
  %43 = load i8, ptr @shutdown, align 1, !range !334
  %tobool437.not = icmp eq i8 %43, 0
  br i1 %tobool437.not, label %cleanup, label %do.end451

do.end451:                                        ; preds = %unwind
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 871, i32 noundef 9, ptr noundef null) #16
  tail call void @kernel_power_off() #16
  br label %cleanup

cleanup:                                          ; preds = %do.end451, %unwind, %if.end436.critedge, %entry
  %retval.0 = phi i32 [ 0, %if.end436.critedge ], [ -16, %entry ], [ %firsterr.0, %do.end451 ], [ %firsterr.0, %unwind ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_scale_cleanup() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @torture_cleanup_begin() #16
  br i1 %call, label %cleanup10, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @cur_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup10.sink.split, label %if.end2

if.end2:                                          ; preds = %if.end
  %1 = load ptr, ptr @reader_tasks, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end2
  %2 = load i32, ptr @nreaders, align 4
  %cmp13 = icmp sgt i32 %2, 0
  br i1 %cmp13, label %for.body, label %if.end5

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %i.014 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %3 = load ptr, ptr @reader_tasks, align 4
  %arrayidx = getelementptr %struct.reader_task, ptr %3, i32 %i.014
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.107, ptr noundef %arrayidx) #16
  %inc = add nuw nsw i32 %i.014, 1
  %4 = load i32, ptr @nreaders, align 4
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.body, label %if.end5

if.end5:                                          ; preds = %for.body, %for.cond.preheader, %if.end2
  %5 = load ptr, ptr @reader_tasks, align 4
  tail call void @kfree(ptr noundef %5) #16
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.108, ptr noundef nonnull @main_task) #16
  %6 = load ptr, ptr @main_task, align 4
  tail call void @kfree(ptr noundef %6) #16
  %7 = load ptr, ptr @cur_ops, align 4
  %cleanup = getelementptr inbounds %struct.ref_scale_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cleanup, align 4
  %cmp6.not = icmp eq ptr %9, null
  br i1 %cmp6.not, label %cleanup10.sink.split, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void %9() #16
  br label %cleanup10.sink.split

cleanup10.sink.split:                             ; preds = %if.then7, %if.end5, %if.end
  tail call void @torture_cleanup_end() #16
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup10.sink.split, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_init_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_torture_create_kthread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ref_scale_shutdown(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 778) #16
  %.b12 = load i1, ptr @shutdown_start, align 4
  br i1 %.b12, label %do.end10, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %call15 = call i32 @prepare_to_wait_event(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %.b16 = load i1, ptr @shutdown_start, align 4
  br i1 %.b16, label %for.end, label %cleanup

cleanup:                                          ; preds = %cleanup, %if.end
  call void @schedule() #16
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %.b = load i1, ptr @shutdown_start, align 4
  br i1 %.b, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end10

do.end10:                                         ; preds = %for.end, %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !337
  call void @ref_scale_cleanup()
  call void @kernel_power_off() #16
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ref_scale_reader(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %0 = ptrtoint ptr %arg to i32
  %1 = load ptr, ptr @reader_tasks, align 4
  %2 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr @verbose_batched, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_batch_ctr, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !338
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_batch_ctr, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_batch_ctr, ptr nonnull @verbose_batch_ctr, i32 1, ptr nonnull elementtype(i32) @verbose_batch_ctr) #16, !srcloc !339
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !340
  %5 = load i32, ptr @verbose_batched, align 4
  %rem = srem i32 %asmresult.i.i.i.i, %5
  %tobool1.not = icmp eq i32 %rem, 0
  br i1 %tobool1.not, label %if.then, label %do.end6

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %6 = load ptr, ptr @scale_type, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %6, i32 noundef %0) #19
  br label %do.end6

do.end6:                                          ; preds = %if.then, %lor.lhs.false, %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %rem8 = urem i32 %0, %11
  %rem.i = and i32 %rem8, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %rem8, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call10 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %10, ptr noundef %add.ptr.i) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end45, label %land.rhs

land.rhs:                                         ; preds = %do.end6
  %.b413 = load i1, ptr @ref_scale_reader.__already_done, align 1
  br i1 %.b413, label %if.end45, label %if.then19, !prof !335

if.then19:                                        ; preds = %land.rhs
  store i1 true, ptr @ref_scale_reader.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 526, i32 noundef 9, ptr noundef null) #16
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %land.rhs, %do.end6
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %13, i32 noundef 19) #16
  %call.i.i414 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_init, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_init, i32 1, i32 3, i32 1) #16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_init, ptr nonnull @n_init, i32 1, ptr nonnull elementtype(i32) @n_init) #16, !srcloc !341
  %15 = load i32, ptr @holdoff, align 4
  %tobool55.not = icmp eq i32 %15, 0
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.end45
  %mul = mul i32 %15, 100
  %call57 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #16
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end45
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %start_reader = getelementptr %struct.reader_task, ptr %1, i32 %0, i32 1
  %wq = getelementptr %struct.reader_task, ptr %1, i32 %0, i32 2
  %last_duration_ns = getelementptr %struct.reader_task, ptr %1, i32 %0, i32 3
  br label %repeat

repeat:                                           ; preds = %do.end380, %if.end58
  %16 = load i32, ptr @verbose, align 4
  %tobool60.not = icmp eq i32 %16, 0
  br i1 %tobool60.not, label %do.body79, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %repeat
  %17 = load i32, ptr @verbose_batched, align 4
  %cmp62 = icmp slt i32 %17, 1
  br i1 %cmp62, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true61
  %call.i.i415 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_batch_ctr, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !338
  call void @llvm.prefetch.p0(ptr nonnull @verbose_batch_ctr, i32 1, i32 3, i32 1) #16
  %18 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_batch_ctr, ptr nonnull @verbose_batch_ctr, i32 1, ptr nonnull elementtype(i32) @verbose_batch_ctr) #16, !srcloc !339
  %asmresult.i.i.i.i416 = extractvalue { i32, i32 } %18, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !340
  %19 = load i32, ptr @verbose_batched, align 4
  %rem65 = srem i32 %asmresult.i.i.i.i416, %19
  %tobool66.not = icmp eq i32 %rem65, 0
  br i1 %tobool66.not, label %if.then67, label %do.body79

if.then67:                                        ; preds = %lor.lhs.false63, %land.lhs.true61
  %call68 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %20 = load ptr, ptr @scale_type, align 4
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %20, i32 noundef %0, i32 noundef %22) #19
  br label %do.body79

do.body79:                                        ; preds = %if.then67, %lor.lhs.false63, %repeat
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 536) #16
  %call.i.i417 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  %23 = load volatile i32, ptr @nreaders_exp, align 4
  %tobool86.not = icmp eq i32 %23, 0
  br i1 %tobool86.not, label %lor.lhs.false97, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %do.body79
  %24 = ptrtoint ptr %start_reader to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %start_reader, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !342
  %tobool96.not = icmp eq i32 %25, 0
  br i1 %tobool96.not, label %lor.lhs.false97, label %do.end123

lor.lhs.false97:                                  ; preds = %land.lhs.true87, %do.body79
  %call98 = call zeroext i1 @torture_must_stop() #16
  br i1 %call98, label %do.end123, label %if.end100

if.end100:                                        ; preds = %lor.lhs.false97
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end100
  %call101 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i418 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  %27 = load volatile i32, ptr @nreaders_exp, align 4
  %tobool103.not = icmp eq i32 %27, 0
  br i1 %tobool103.not, label %lor.lhs.false116, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %for.cond
  %28 = ptrtoint ptr %start_reader to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %start_reader, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !343
  %tobool115.not = icmp eq i32 %29, 0
  br i1 %tobool115.not, label %lor.lhs.false116, label %for.end

lor.lhs.false116:                                 ; preds = %land.lhs.true104, %for.cond
  %call117 = call zeroext i1 @torture_must_stop() #16
  br i1 %call117, label %for.end, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false116
  call void @schedule() #16
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false116, %land.lhs.true104
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end123

do.end123:                                        ; preds = %for.end, %lor.lhs.false97, %land.lhs.true87
  %call124 = call zeroext i1 @torture_must_stop() #16
  br i1 %call124, label %end, label %if.end126

if.end126:                                        ; preds = %do.end123
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %cmp130.not = icmp eq i32 %31, %0
  br i1 %cmp130.not, label %if.end175, label %land.rhs137

land.rhs137:                                      ; preds = %if.end126
  %.b409412 = load i1, ptr @ref_scale_reader.__already_done.71, align 1
  br i1 %.b409412, label %if.end175, label %if.then148, !prof !335

if.then148:                                       ; preds = %land.rhs137
  store i1 true, ptr @ref_scale_reader.__already_done.71, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 542, i32 noundef 9, ptr noundef null) #16
  br label %if.end175

if.end175:                                        ; preds = %if.then148, %land.rhs137, %if.end126
  %32 = ptrtoint ptr %start_reader to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %start_reader, align 4
  %call.i.i419 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_started, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !344
  call void @llvm.prefetch.p0(ptr nonnull @n_started, i32 1, i32 3, i32 1) #16
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_started, ptr nonnull @n_started, i32 1, ptr nonnull elementtype(i32) @n_started) #16, !srcloc !345
  %asmresult.i.i.i.i420 = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !346
  %tobool194.not = icmp eq i32 %asmresult.i.i.i.i420, 0
  br i1 %tobool194.not, label %while.cond.preheader, label %do.body208

while.cond.preheader:                             ; preds = %if.end175
  %call.i.i421462 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_started, i32 noundef 4) #16
  %34 = load volatile i32, ptr @n_started, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !347
  %tobool197.not463 = icmp eq i32 %34, 0
  br i1 %tobool197.not463, label %do.body208, label %do.end202

do.end202:                                        ; preds = %do.end202, %while.cond.preheader
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !348
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !349
  %call.i.i421 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_started, i32 noundef 4) #16
  %35 = load volatile i32, ptr @n_started, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !347
  %tobool197.not = icmp eq i32 %35, 0
  br i1 %tobool197.not, label %do.body208, label %do.end202

do.body208:                                       ; preds = %do.end202, %while.cond.preheader, %if.end175
  %36 = load i32, ptr @verbose, align 4
  %tobool209.not = icmp eq i32 %36, 0
  br i1 %tobool209.not, label %do.end225, label %land.lhs.true210

land.lhs.true210:                                 ; preds = %do.body208
  %37 = load i32, ptr @verbose_batched, align 4
  %cmp211 = icmp slt i32 %37, 1
  br i1 %cmp211, label %if.then216, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %land.lhs.true210
  %call.i.i422 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_batch_ctr, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !338
  call void @llvm.prefetch.p0(ptr nonnull @verbose_batch_ctr, i32 1, i32 3, i32 1) #16
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_batch_ctr, ptr nonnull @verbose_batch_ctr, i32 1, ptr nonnull elementtype(i32) @verbose_batch_ctr) #16, !srcloc !339
  %asmresult.i.i.i.i423 = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !340
  %39 = load i32, ptr @verbose_batched, align 4
  %rem214 = srem i32 %asmresult.i.i.i.i423, %39
  %tobool215.not = icmp eq i32 %rem214, 0
  br i1 %tobool215.not, label %if.then216, label %do.end225

if.then216:                                       ; preds = %lor.lhs.false212, %land.lhs.true210
  %call217 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %40 = load ptr, ptr @scale_type, align 4
  %41 = load i32, ptr @exp_idx, align 4
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %40, i32 noundef %0, i32 noundef %41) #19
  br label %do.end225

do.end225:                                        ; preds = %if.then216, %lor.lhs.false212, %do.body208
  %42 = load i32, ptr @readdelay, align 4
  %cmp.i = icmp slt i32 %42, 1
  %43 = load ptr, ptr @cur_ops, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end225
  %readsection.i = getelementptr inbounds %struct.ref_scale_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %readsection.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %readsection.i, align 4
  %46 = load i32, ptr @loops, align 4
  call void %45(i32 noundef %46) #16
  br label %rcu_scale_one_reader.exit

if.else.i:                                        ; preds = %do.end225
  %delaysection.i = getelementptr inbounds %struct.ref_scale_ops, ptr %43, i32 0, i32 3
  %47 = ptrtoint ptr %delaysection.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %delaysection.i, align 4
  %49 = load i32, ptr @loops, align 4
  %.frozen = freeze i32 %42
  %div1.i = udiv i32 %.frozen, 1000
  %50 = mul i32 %div1.i, 1000
  %rem2.i.decomposed = sub i32 %.frozen, %50
  call void %48(i32 noundef %49, i32 noundef %div1.i, i32 noundef %rem2.i.decomposed) #16
  br label %rcu_scale_one_reader.exit

rcu_scale_one_reader.exit:                        ; preds = %if.else.i, %if.then.i
  %call.i.i424 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_warmedup, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !344
  call void @llvm.prefetch.p0(ptr nonnull @n_warmedup, i32 1, i32 3, i32 1) #16
  %51 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_warmedup, ptr nonnull @n_warmedup, i32 1, ptr nonnull elementtype(i32) @n_warmedup) #16, !srcloc !345
  %asmresult.i.i.i.i425 = extractvalue { i32, i32 } %51, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !346
  %tobool227.not = icmp eq i32 %asmresult.i.i.i.i425, 0
  br i1 %tobool227.not, label %while.cond229.preheader, label %do.body236

while.cond229.preheader:                          ; preds = %rcu_scale_one_reader.exit
  %call.i.i426464 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_warmedup, i32 noundef 4) #16
  %52 = load volatile i32, ptr @n_warmedup, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !347
  %tobool231.not465 = icmp eq i32 %52, 0
  br i1 %tobool231.not465, label %do.body236, label %while.body232

while.body232:                                    ; preds = %rcu_scale_one_reader.exit441, %while.cond229.preheader
  %53 = load i32, ptr @readdelay, align 4
  %cmp.i434 = icmp slt i32 %53, 1
  %54 = load ptr, ptr @cur_ops, align 4
  br i1 %cmp.i434, label %if.then.i436, label %if.else.i440

if.then.i436:                                     ; preds = %while.body232
  %readsection.i435 = getelementptr inbounds %struct.ref_scale_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %readsection.i435 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %readsection.i435, align 4
  %57 = load i32, ptr @loops, align 4
  call void %56(i32 noundef %57) #16
  br label %rcu_scale_one_reader.exit441

if.else.i440:                                     ; preds = %while.body232
  %delaysection.i437 = getelementptr inbounds %struct.ref_scale_ops, ptr %54, i32 0, i32 3
  %58 = ptrtoint ptr %delaysection.i437 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %delaysection.i437, align 4
  %60 = load i32, ptr @loops, align 4
  %.frozen468 = freeze i32 %53
  %div1.i438 = udiv i32 %.frozen468, 1000
  %61 = mul i32 %div1.i438, 1000
  %rem2.i439.decomposed = sub i32 %.frozen468, %61
  call void %59(i32 noundef %60, i32 noundef %div1.i438, i32 noundef %rem2.i439.decomposed) #16
  br label %rcu_scale_one_reader.exit441

rcu_scale_one_reader.exit441:                     ; preds = %if.else.i440, %if.then.i436
  %call.i.i426 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_warmedup, i32 noundef 4) #16
  %62 = load volatile i32, ptr @n_warmedup, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !347
  %tobool231.not = icmp eq i32 %62, 0
  br i1 %tobool231.not, label %do.body236, label %while.body232

do.body236:                                       ; preds = %rcu_scale_one_reader.exit441, %while.cond229.preheader, %rcu_scale_one_reader.exit
  %63 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !350
  %and.i442 = and i32 %63, 128
  %tobool249.not = icmp eq i32 %and.i442, 0
  br i1 %tobool249.not, label %if.then250, label %do.end253

if.then250:                                       ; preds = %do.body236
  call void @trace_hardirqs_off() #16
  br label %do.end253

do.end253:                                        ; preds = %if.then250, %do.body236
  %call254 = call i64 @ktime_get_mono_fast_ns() #16
  %64 = load i32, ptr @readdelay, align 4
  %cmp.i443 = icmp slt i32 %64, 1
  %65 = load ptr, ptr @cur_ops, align 4
  br i1 %cmp.i443, label %if.then.i445, label %if.else.i449

if.then.i445:                                     ; preds = %do.end253
  %readsection.i444 = getelementptr inbounds %struct.ref_scale_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %readsection.i444 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %readsection.i444, align 4
  %68 = load i32, ptr @loops, align 4
  call void %67(i32 noundef %68) #16
  br label %rcu_scale_one_reader.exit450

if.else.i449:                                     ; preds = %do.end253
  %delaysection.i446 = getelementptr inbounds %struct.ref_scale_ops, ptr %65, i32 0, i32 3
  %69 = ptrtoint ptr %delaysection.i446 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %delaysection.i446, align 4
  %71 = load i32, ptr @loops, align 4
  %.frozen469 = freeze i32 %64
  %div1.i447 = udiv i32 %.frozen469, 1000
  %72 = mul i32 %div1.i447, 1000
  %rem2.i448.decomposed = sub i32 %.frozen469, %72
  call void %70(i32 noundef %71, i32 noundef %div1.i447, i32 noundef %rem2.i448.decomposed) #16
  br label %rcu_scale_one_reader.exit450

rcu_scale_one_reader.exit450:                     ; preds = %if.else.i449, %if.then.i445
  %call255 = call i64 @ktime_get_mono_fast_ns() #16
  %sub = sub i64 %call255, %call254
  br i1 %tobool249.not, label %if.then265, label %do.body267

if.then265:                                       ; preds = %rcu_scale_one_reader.exit450
  call void @trace_hardirqs_on() #16
  br label %do.body267

do.body267:                                       ; preds = %if.then265, %rcu_scale_one_reader.exit450
  %73 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !351
  %and.i.i = and i32 %73, 128
  %tobool275.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool275.not, label %if.then284, label %do.end287, !prof !336

if.then284:                                       ; preds = %do.body267
  call void @warn_bogus_irq_restore() #16
  br label %do.end287

do.end287:                                        ; preds = %if.then284, %do.body267
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #16, !srcloc !352
  %cmp293 = icmp slt i64 %sub, 0
  br i1 %cmp293, label %land.rhs302, label %if.end340

land.rhs302:                                      ; preds = %do.end287
  %.b410411 = load i1, ptr @ref_scale_reader.__already_done.75, align 1
  br i1 %.b410411, label %if.end340, label %if.then313, !prof !335

if.then313:                                       ; preds = %land.rhs302
  store i1 true, ptr @ref_scale_reader.__already_done.75, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 568, i32 noundef 9, ptr noundef null) #16
  br label %if.end340

if.end340:                                        ; preds = %if.then313, %land.rhs302, %do.end287
  %74 = call i64 @llvm.smax.i64(i64 %sub, i64 0)
  %75 = ptrtoint ptr %last_duration_ns to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %last_duration_ns, align 8
  %call.i.i427 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_cooleddown, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !344
  call void @llvm.prefetch.p0(ptr nonnull @n_cooleddown, i32 1, i32 3, i32 1) #16
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_cooleddown, ptr nonnull @n_cooleddown, i32 1, ptr nonnull elementtype(i32) @n_cooleddown) #16, !srcloc !345
  %asmresult.i.i.i.i428 = extractvalue { i32, i32 } %76, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !346
  %tobool350.not = icmp eq i32 %asmresult.i.i.i.i428, 0
  br i1 %tobool350.not, label %while.cond352.preheader, label %if.end357

while.cond352.preheader:                          ; preds = %if.end340
  %call.i.i429466 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_cooleddown, i32 noundef 4) #16
  %77 = load volatile i32, ptr @n_cooleddown, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !347
  %tobool354.not467 = icmp eq i32 %77, 0
  br i1 %tobool354.not467, label %if.end357, label %while.body355

while.body355:                                    ; preds = %rcu_scale_one_reader.exit459, %while.cond352.preheader
  %78 = load i32, ptr @readdelay, align 4
  %cmp.i452 = icmp slt i32 %78, 1
  %79 = load ptr, ptr @cur_ops, align 4
  br i1 %cmp.i452, label %if.then.i454, label %if.else.i458

if.then.i454:                                     ; preds = %while.body355
  %readsection.i453 = getelementptr inbounds %struct.ref_scale_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %readsection.i453 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %readsection.i453, align 4
  %82 = load i32, ptr @loops, align 4
  call void %81(i32 noundef %82) #16
  br label %rcu_scale_one_reader.exit459

if.else.i458:                                     ; preds = %while.body355
  %delaysection.i455 = getelementptr inbounds %struct.ref_scale_ops, ptr %79, i32 0, i32 3
  %83 = ptrtoint ptr %delaysection.i455 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %delaysection.i455, align 4
  %85 = load i32, ptr @loops, align 4
  %.frozen470 = freeze i32 %78
  %div1.i456 = udiv i32 %.frozen470, 1000
  %86 = mul i32 %div1.i456, 1000
  %rem2.i457.decomposed = sub i32 %.frozen470, %86
  call void %84(i32 noundef %85, i32 noundef %div1.i456, i32 noundef %rem2.i457.decomposed) #16
  br label %rcu_scale_one_reader.exit459

rcu_scale_one_reader.exit459:                     ; preds = %if.else.i458, %if.then.i454
  %call.i.i429 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_cooleddown, i32 noundef 4) #16
  %87 = load volatile i32, ptr @n_cooleddown, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !347
  %tobool354.not = icmp eq i32 %87, 0
  br i1 %tobool354.not, label %if.end357, label %while.body355

if.end357:                                        ; preds = %rcu_scale_one_reader.exit459, %while.cond352.preheader, %if.end340
  %call.i.i430 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !344
  call void @llvm.prefetch.p0(ptr nonnull @nreaders_exp, i32 1, i32 3, i32 1) #16
  %88 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nreaders_exp, ptr nonnull @nreaders_exp, i32 1, ptr nonnull elementtype(i32) @nreaders_exp) #16, !srcloc !345
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %88, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !346
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then359, label %do.body361

if.then359:                                       ; preds = %if.end357
  call void @__wake_up(ptr noundef nonnull @main_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %do.body361

do.body361:                                       ; preds = %if.then359, %if.end357
  %89 = load i32, ptr @verbose, align 4
  %tobool362.not = icmp eq i32 %89, 0
  br i1 %tobool362.not, label %do.end380, label %land.lhs.true363

land.lhs.true363:                                 ; preds = %do.body361
  %90 = load i32, ptr @verbose_batched, align 4
  %cmp364 = icmp slt i32 %90, 1
  br i1 %cmp364, label %if.then370, label %lor.lhs.false366

lor.lhs.false366:                                 ; preds = %land.lhs.true363
  %call.i.i431 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_batch_ctr, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !338
  call void @llvm.prefetch.p0(ptr nonnull @verbose_batch_ctr, i32 1, i32 3, i32 1) #16
  %91 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_batch_ctr, ptr nonnull @verbose_batch_ctr, i32 1, ptr nonnull elementtype(i32) @verbose_batch_ctr) #16, !srcloc !339
  %asmresult.i.i.i.i432 = extractvalue { i32, i32 } %91, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !340
  %92 = load i32, ptr @verbose_batched, align 4
  %rem368 = srem i32 %asmresult.i.i.i.i432, %92
  %tobool369.not = icmp eq i32 %rem368, 0
  br i1 %tobool369.not, label %if.then370, label %do.end380

if.then370:                                       ; preds = %lor.lhs.false366, %land.lhs.true363
  %call371 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %93 = load ptr, ptr @scale_type, align 4
  %94 = load i32, ptr @exp_idx, align 4
  %call.i.i433 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  %95 = load volatile i32, ptr @nreaders_exp, align 4
  %call377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %93, i32 noundef %0, i32 noundef %94, i32 noundef %95) #19
  br label %do.end380

do.end380:                                        ; preds = %if.then370, %lor.lhs.false366, %do.body361
  %call381 = call zeroext i1 @torture_must_stop() #16
  br i1 %call381, label %end, label %repeat

end:                                              ; preds = %do.end380, %do.end123
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.31) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @main_func(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1.i = alloca [64 x i8], align 1
  %buf1 = alloca [64 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf1) #16
  %0 = call ptr @memset(ptr %buf1, i32 255, i32 64)
  %1 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %5 = load i32, ptr @nreaders, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %rem = urem i32 %5, %6
  %rem.i = and i32 %rem, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %rem, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call2 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %4, ptr noundef %add.ptr.i) #16
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %8, i32 noundef 19) #16
  %9 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end8.i.i, label %do.end

do.end:                                           ; preds = %entry
  %10 = load ptr, ptr @scale_type, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %10) #19
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end, %entry
  %11 = load i32, ptr @nruns, align 4
  %mul = shl i32 %11, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i202 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 864) #21
  %tobool11.not = icmp eq ptr %call9.i.i, null
  %tobool12.not = icmp eq ptr %call7.i.i202, null
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end8.i.i
  %13 = load ptr, ptr @scale_type, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %13) #19
  br label %oom_exit

if.end19:                                         ; preds = %if.end8.i.i
  %14 = load i32, ptr @holdoff, align 4
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end19
  %mul22 = mul i32 %14, 100
  %call23 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul22) #16
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_init, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @n_init, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_init, ptr nonnull @n_init, i32 1, ptr nonnull elementtype(i32) @n_init) #16, !srcloc !341
  %call.i.i187217 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_init, i32 noundef 4) #16
  %16 = load volatile i32, ptr @n_init, align 4
  %17 = load i32, ptr @nreaders, align 4
  %add218 = add i32 %17, 1
  %cmp219 = icmp slt i32 %16, %add218
  br i1 %cmp219, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body, %if.end24
  %18 = load i32, ptr @nruns, align 4
  %cmp27225 = icmp sgt i32 %18, 0
  br i1 %cmp27225, label %land.rhs, label %do.end117

while.body:                                       ; preds = %while.body, %if.end24
  %call26 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %call.i.i187 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_init, i32 noundef 4) #16
  %19 = load volatile i32, ptr @n_init, align 4
  %20 = load i32, ptr @nreaders, align 4
  %add = add i32 %20, 1
  %cmp = icmp slt i32 %19, %add
  br i1 %cmp, label %while.body, label %for.cond.preheader

land.rhs:                                         ; preds = %div_u64.exit, %for.cond.preheader
  %exp.0226 = phi i32 [ %inc113, %div_u64.exit ], [ 0, %for.cond.preheader ]
  %call28 = call zeroext i1 @torture_must_stop() #16
  br i1 %call28, label %do.end117, label %for.body

for.body:                                         ; preds = %land.rhs
  %call29 = call zeroext i1 @torture_must_stop() #16
  br i1 %call29, label %end, label %if.end31

if.end31:                                         ; preds = %for.body
  %21 = load i32, ptr @nreaders, align 4
  %cmp3.i = icmp sgt i32 %21, 0
  br i1 %cmp3.i, label %for.body.lr.ph.i, label %reset_readers.exit

for.body.lr.ph.i:                                 ; preds = %if.end31
  %22 = load ptr, ptr @reader_tasks, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %last_duration_ns.i = getelementptr %struct.reader_task, ptr %22, i32 %i.04.i, i32 3
  %23 = ptrtoint ptr %last_duration_ns.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %last_duration_ns.i, align 8
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %reset_readers.exit, label %for.body.i

reset_readers.exit:                               ; preds = %for.body.i, %if.end31
  %call.i.i188 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  store volatile i32 %21, ptr @nreaders_exp, align 4
  %24 = load i32, ptr @nreaders, align 4
  %call.i.i189 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_started, i32 noundef 4) #16
  store volatile i32 %24, ptr @n_started, align 4
  %25 = load i32, ptr @nreaders, align 4
  %call.i.i190 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_warmedup, i32 noundef 4) #16
  store volatile i32 %25, ptr @n_warmedup, align 4
  %26 = load i32, ptr @nreaders, align 4
  %call.i.i191 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_cooleddown, i32 noundef 4) #16
  store volatile i32 %26, ptr @n_cooleddown, align 4
  store i32 %exp.0226, ptr @exp_idx, align 4
  %27 = load i32, ptr @nreaders, align 4
  %cmp33220 = icmp sgt i32 %27, 0
  br i1 %cmp33220, label %do.end42, label %do.body57

do.end42:                                         ; preds = %do.end42, %reset_readers.exit
  %r.0221 = phi i32 [ %inc, %do.end42 ], [ 0, %reset_readers.exit ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !353
  %28 = load ptr, ptr @reader_tasks, align 4
  %start_reader = getelementptr %struct.reader_task, ptr %28, i32 %r.0221, i32 1
  %29 = ptrtoint ptr %start_reader to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %start_reader, align 4
  %wq = getelementptr %struct.reader_task, ptr %28, i32 %r.0221, i32 2
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %inc = add nuw nsw i32 %r.0221, 1
  %30 = load i32, ptr @nreaders, align 4
  %cmp33 = icmp slt i32 %inc, %30
  br i1 %cmp33, label %do.end42, label %do.body57

do.body57:                                        ; preds = %do.end42, %reset_readers.exit
  %.lcssa = phi i32 [ %27, %reset_readers.exit ], [ %30, %do.end42 ]
  %31 = load i32, ptr @verbose, align 4
  %tobool58.not = icmp eq i32 %31, 0
  br i1 %tobool58.not, label %do.body69, label %do.end62

do.end62:                                         ; preds = %do.body57
  %32 = load ptr, ptr @scale_type, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %32, i32 noundef %.lcssa) #19
  br label %do.body69

do.body69:                                        ; preds = %do.end62, %do.body57
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 689) #16
  %call.i.i192 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  %33 = load volatile i32, ptr @nreaders_exp, align 4
  %tobool76.not = icmp eq i32 %33, 0
  br i1 %tobool76.not, label %do.body93, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %do.body69
  %call78 = call zeroext i1 @torture_must_stop() #16
  br i1 %call78, label %do.body93, label %if.end80

if.end80:                                         ; preds = %lor.lhs.false77
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %call82222 = call i32 @prepare_to_wait_event(ptr noundef nonnull @main_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i193223 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  %35 = load volatile i32, ptr @nreaders_exp, align 4
  %tobool84.not224 = icmp eq i32 %35, 0
  br i1 %tobool84.not224, label %for.end89, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %cleanup, %if.end80
  %call86 = call zeroext i1 @torture_must_stop() #16
  br i1 %call86, label %for.end89, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false85
  call void @schedule() #16
  %call82 = call i32 @prepare_to_wait_event(ptr noundef nonnull @main_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i193 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nreaders_exp, i32 noundef 4) #16
  %36 = load volatile i32, ptr @nreaders_exp, align 4
  %tobool84.not = icmp eq i32 %36, 0
  br i1 %tobool84.not, label %for.end89, label %lor.lhs.false85

for.end89:                                        ; preds = %cleanup, %lor.lhs.false85, %if.end80
  call void @finish_wait(ptr noundef nonnull @main_wq, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.body93

do.body93:                                        ; preds = %for.end89, %lor.lhs.false77, %do.body69
  %37 = load i32, ptr @verbose, align 4
  %tobool94.not = icmp eq i32 %37, 0
  br i1 %tobool94.not, label %do.end103, label %do.end98

do.end98:                                         ; preds = %do.body93
  %38 = load ptr, ptr @scale_type, align 4
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %38) #19
  br label %do.end103

do.end103:                                        ; preds = %do.end98, %do.body93
  %call104 = call zeroext i1 @torture_must_stop() #16
  br i1 %call104, label %end, label %if.end106

if.end106:                                        ; preds = %do.end103
  %39 = load i32, ptr @nreaders, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf1.i) #16
  %40 = call ptr @memset(ptr %buf1.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i205 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 864) #21
  %tobool.not.i = icmp eq ptr %call7.i.i205, null
  br i1 %tobool.not.i, label %process_durations.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end106
  %42 = ptrtoint ptr %call7.i.i205 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %call7.i.i205, align 8
  %43 = load i32, ptr @exp_idx, align 4
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i205, ptr noundef nonnull @.str.100, i32 noundef %43) #16
  %cmp42.i = icmp sgt i32 %39, 0
  br i1 %cmp42.i, label %land.rhs.i, label %do.end20.i

land.rhs.i:                                       ; preds = %if.end14.i, %if.end.i
  %i.044.i = phi i32 [ %inc.i209, %if.end14.i ], [ 0, %if.end.i ]
  %sum.043.i = phi i64 [ %add.i208, %if.end14.i ], [ 0, %if.end.i ]
  %call2.i = call zeroext i1 @torture_must_stop() #16
  br i1 %call2.i, label %do.end20.i, label %for.body.i207

for.body.i207:                                    ; preds = %land.rhs.i
  %44 = load ptr, ptr @reader_tasks, align 4
  %last_duration_ns.i206 = getelementptr %struct.reader_task, ptr %44, i32 %i.044.i, i32 3
  %45 = ptrtoint ptr %last_duration_ns.i206 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %last_duration_ns.i206, align 8
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf1.i, ptr noundef nonnull @.str.101, i32 noundef %i.044.i, i64 noundef %46) #16
  %rem.urem.i = urem i32 %i.044.i, 5
  %cmp5.i = icmp eq i32 %rem.urem.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %for.body.i207
  %strlen.i = call i32 @strlen(ptr nonnull %call7.i.i205) #22
  %endptr.i = getelementptr i8, ptr %call7.i.i205, i32 %strlen.i
  %47 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 2560, ptr %endptr.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %for.body.i207
  %call9.i = call i32 @strlen(ptr noundef nonnull %call7.i.i205) #22
  %cmp10.i = icmp ugt i32 %call9.i, 799
  br i1 %cmp10.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end8.i
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull %call7.i.i205) #19
  %48 = ptrtoint ptr %call7.i.i205 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %call7.i.i205, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.end8.i
  %call16.i = call ptr @strcat(ptr noundef nonnull %call7.i.i205, ptr noundef nonnull %buf1.i) #16
  %49 = ptrtoint ptr %last_duration_ns.i206 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %last_duration_ns.i206, align 8
  %add.i208 = add i64 %50, %sum.043.i
  %inc.i209 = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i210 = icmp eq i32 %inc.i209, %39
  br i1 %exitcond.not.i210, label %do.end20.i, label %land.rhs.i

do.end20.i:                                       ; preds = %if.end14.i, %land.rhs.i, %if.end.i
  %sum.0.lcssa.i = phi i64 [ 0, %if.end.i ], [ %add.i208, %if.end14.i ], [ %sum.043.i, %land.rhs.i ]
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull %call7.i.i205) #19
  call void @kfree(ptr noundef nonnull %call7.i.i205) #16
  br label %process_durations.exit

process_durations.exit:                           ; preds = %do.end20.i, %if.end106
  %retval.0.i = phi i64 [ %sum.0.lcssa.i, %do.end20.i ], [ 0, %if.end106 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf1.i) #16
  %mul108 = mul i64 %retval.0.i, 1000
  %51 = load i32, ptr @nreaders, align 4
  %52 = load i32, ptr @loops, align 4
  %mul109 = mul i32 %52, %51
  %cmp164.i.i = icmp ult i64 %mul108, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !335

if.then168.i.i:                                   ; preds = %process_durations.exit
  %conv169.i.i = trunc i64 %mul108 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul109
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %process_durations.exit
  %53 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul109, i64 %mul108) #23, !srcloc !354
  %asmresult1.i.i.i = extractvalue { i64, i64 } %53, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %arrayidx111 = getelementptr i64, ptr %call9.i.i, i32 %exp.0226
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %dividend.addr.0.i.i, ptr %arrayidx111, align 8
  %inc113 = add nuw nsw i32 %exp.0226, 1
  %55 = load i32, ptr @nruns, align 4
  %cmp27 = icmp slt i32 %inc113, %55
  br i1 %cmp27, label %land.rhs, label %do.end117

do.end117:                                        ; preds = %div_u64.exit, %land.rhs, %for.cond.preheader
  %56 = load ptr, ptr @scale_type, align 4
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %56) #19
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #19
  %57 = load i32, ptr @nruns, align 4
  %cmp126227 = icmp sgt i32 %57, 0
  br i1 %cmp126227, label %for.body127, label %do.end150

for.body127:                                      ; preds = %if.end144, %do.end117
  %exp.1228 = phi i32 [ %add131, %if.end144 ], [ 0, %do.end117 ]
  %arrayidx129 = getelementptr i64, ptr %call9.i.i, i32 %exp.1228
  %58 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx129, align 8
  %conv14.i = trunc i64 %59 to i32
  %60 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %59, i32 0) #23, !srcloc !355
  %asmresult.i.i = extractvalue { i64, i32 } %60, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %60, 1
  %61 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %59, i64 %asmresult.i.i, i32 %asmresult4.i.i) #23, !srcloc !356
  %asmresult10.i.i = extractvalue { i64, i32 } %61, 0
  %div158.i215 = lshr i64 %asmresult10.i.i, 9
  %conv159.i = trunc i64 %div158.i215 to i32
  %mul160.i.neg = mul i32 %conv159.i, -1000
  %sub161.i = add i32 %mul160.i.neg, %conv14.i
  %add131 = add nuw nsw i32 %exp.1228, 1
  %call132 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf1, ptr noundef nonnull @.str.94, i32 noundef %add131, i64 noundef %div158.i215, i32 noundef %sub161.i)
  %call134 = call ptr @strcat(ptr noundef nonnull %call7.i.i202, ptr noundef nonnull %buf1)
  %call135 = call i32 @strlen(ptr noundef nonnull %call7.i.i202) #18
  %cmp136 = icmp ugt i32 %call135, 799
  br i1 %cmp136, label %do.end140, label %if.end144

do.end140:                                        ; preds = %for.body127
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull %call7.i.i202) #19
  %62 = ptrtoint ptr %call7.i.i202 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %call7.i.i202, align 8
  br label %if.end144

if.end144:                                        ; preds = %do.end140, %for.body127
  %63 = load i32, ptr @nruns, align 4
  %cmp126 = icmp slt i32 %add131, %63
  br i1 %cmp126, label %for.body127, label %do.end150

do.end150:                                        ; preds = %if.end144, %do.end117
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull %call7.i.i202) #19
  br label %oom_exit

oom_exit:                                         ; preds = %do.end150, %do.end16
  %64 = load i8, ptr @shutdown, align 1, !range !334
  %tobool153.not = icmp eq i8 %64, 0
  br i1 %tobool153.not, label %if.end155, label %if.then154

if.then154:                                       ; preds = %oom_exit
  store i1 true, ptr @shutdown_start, align 4
  call void @__wake_up(ptr noundef nonnull @shutdown_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %oom_exit
  %call157229 = call zeroext i1 @torture_must_stop() #16
  br i1 %call157229, label %end, label %while.body159

while.body159:                                    ; preds = %while.body159, %if.end155
  %call160 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %call157 = call zeroext i1 @torture_must_stop() #16
  br i1 %call157, label %end, label %while.body159

end:                                              ; preds = %while.body159, %if.end155, %do.end103, %for.body
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.39) #16
  call void @kfree(ptr noundef %call9.i.i) #16
  call void @kfree(ptr noundef %call7.i.i202) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf1) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_init_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rcu_sync_scale_init() #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rcu_read_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp11 = icmp sgt i32 %nloops, -1
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %rcu_read_unlock.exit, %entry
  %i.012 = phi i32 [ %dec, %rcu_read_unlock.exit ], [ %nloops, %entry ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !357
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %for.body
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i2, label %rcu_read_unlock.exit, label %land.lhs.true.i5

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %rcu_read_unlock.exit, label %land.lhs.true2.i7

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %rcu_read_unlock.exit, label %if.then.i8

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7, %land.lhs.true.i5, %rcu_read_lock.exit
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !358
  %4 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i.i.i9 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %dec = add nsw i32 %i.012, -1
  %cmp = icmp sgt i32 %i.012, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rcu_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp13 = icmp sgt i32 %nloops, -1
  br i1 %cmp13, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i2 = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit, %for.body.lr.ph
  %i.014 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %rcu_read_unlock.exit ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !357
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %for.body
  br i1 %tobool.not.i2, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %rcu_read_lock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %rcu_read_lock.exit
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i4, label %rcu_read_unlock.exit, label %land.lhs.true.i7

land.lhs.true.i7:                                 ; preds = %un_delay.exit
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #16
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %rcu_read_unlock.exit, label %land.lhs.true2.i9

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %rcu_read_unlock.exit, label %if.then.i10

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9, %land.lhs.true.i7, %un_delay.exit
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !358
  %6 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i.i.i11 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %dec = add nsw i32 %i.014, -1
  %cmp = icmp sgt i32 %i.014, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #7 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #7 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_ref_scale_read_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp2 = icmp sgt i32 %nloops, -1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %srcu_read_unlock.exit, %entry
  %i.03 = phi i32 [ %dec, %srcu_read_unlock.exit ], [ %nloops, %entry ]
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @srcu_refctl_scale) #16
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @srcu_refctl_scale, i32 0, i32 16)) #16
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %srcu_read_unlock.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %srcu_read_unlock.exit, label %if.then.i, !prof !335

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 189, i32 noundef 9, ptr noundef null) #16
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i, %for.body
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @srcu_refctl_scale, i32 0, i32 16)) #16
  tail call void @__srcu_read_unlock(ptr noundef nonnull @srcu_refctl_scale, i32 noundef %call.i) #16
  %dec = add nsw i32 %i.03, -1
  %cmp = icmp sgt i32 %i.03, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %srcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_ref_scale_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp4 = icmp sgt i32 %nloops, -1
  br i1 %cmp4, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %srcu_read_unlock.exit, %for.body.lr.ph
  %i.05 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %srcu_read_unlock.exit ]
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @srcu_refctl_scale) #16
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @srcu_refctl_scale, i32 0, i32 16)) #16
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %0(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %1(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  %tobool.not.i2 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i2, label %srcu_read_unlock.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %un_delay.exit
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %srcu_read_unlock.exit, label %if.then.i3, !prof !335

if.then.i3:                                       ; preds = %land.rhs.i
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 189, i32 noundef 9, ptr noundef null) #16
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i3, %land.rhs.i, %un_delay.exit
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @srcu_refctl_scale, i32 0, i32 16)) #16
  tail call void @__srcu_read_unlock(ptr noundef nonnull @srcu_refctl_scale, i32 noundef %call.i) #16
  %dec = add nsw i32 %i.05, -1
  %cmp = icmp sgt i32 %i.05, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %srcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_trace_ref_scale_read_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp7 = icmp sgt i32 %nloops, -1
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %rcu_read_unlock_trace.exit, %entry
  %i.08 = phi i32 [ %dec, %rcu_read_unlock_trace.exit ], [ %nloops, %entry ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %trc_reader_nesting.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !359
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %need_mb.i = getelementptr inbounds %struct.anon.30, ptr %trc_reader_special.i, i32 0, i32 3
  %6 = ptrtoint ptr %need_mb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_mb.i, align 1
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %rcu_read_lock_trace.exit, label %do.end14.i

do.end14.i:                                       ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !360
  br label %rcu_read_lock_trace.exit

rcu_read_lock_trace.exit:                         ; preds = %do.end14.i, %for.body
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_trace_lock_map) #16
  %8 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i2 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i2 to ptr
  %task.i3 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i3, align 8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_trace_lock_map) #16
  %trc_reader_nesting.i4 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %trc_reader_nesting.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %trc_reader_nesting.i4, align 4
  %sub.i = add i32 %13, -1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !361
  %14 = ptrtoint ptr %trc_reader_nesting.i4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 -2147483648, ptr %trc_reader_nesting.i4, align 4
  %trc_reader_special.i5 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 46
  %15 = ptrtoint ptr %trc_reader_special.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %trc_reader_special.i5, align 4
  %tobool.not.i6 = icmp eq i32 %16, 0
  br i1 %tobool.not.i6, label %do.body23.i, label %lor.lhs.false.i, !prof !335

lor.lhs.false.i:                                  ; preds = %rcu_read_lock_trace.exit
  %tobool18.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool18.not.i, label %if.end69.i, label %do.body23.i

do.body23.i:                                      ; preds = %lor.lhs.false.i, %rcu_read_lock_trace.exit
  %17 = ptrtoint ptr %trc_reader_nesting.i4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %sub.i, ptr %trc_reader_nesting.i4, align 4
  br label %rcu_read_unlock_trace.exit

if.end69.i:                                       ; preds = %lor.lhs.false.i
  tail call void @rcu_read_unlock_trace_special(ptr noundef %11) #16
  br label %rcu_read_unlock_trace.exit

rcu_read_unlock_trace.exit:                       ; preds = %if.end69.i, %do.body23.i
  %dec = add nsw i32 %i.08, -1
  %cmp = icmp sgt i32 %i.08, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %rcu_read_unlock_trace.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_trace_ref_scale_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp8 = icmp sgt i32 %nloops, -1
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i2 = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock_trace.exit, %for.body.lr.ph
  %i.09 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %rcu_read_unlock_trace.exit ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %trc_reader_nesting.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !359
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %need_mb.i = getelementptr inbounds %struct.anon.30, ptr %trc_reader_special.i, i32 0, i32 3
  %6 = ptrtoint ptr %need_mb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_mb.i, align 1
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %rcu_read_lock_trace.exit, label %do.end14.i

do.end14.i:                                       ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !360
  br label %rcu_read_lock_trace.exit

rcu_read_lock_trace.exit:                         ; preds = %do.end14.i, %for.body
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_trace_lock_map) #16
  br i1 %tobool.not.i2, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %rcu_read_lock_trace.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %rcu_read_lock_trace.exit
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  %10 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i3 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i3 to ptr
  %task.i4 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i4, align 8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_trace_lock_map) #16
  %trc_reader_nesting.i5 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %trc_reader_nesting.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %trc_reader_nesting.i5, align 4
  %sub.i = add i32 %15, -1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !361
  %16 = ptrtoint ptr %trc_reader_nesting.i5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 -2147483648, ptr %trc_reader_nesting.i5, align 4
  %trc_reader_special.i6 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 46
  %17 = ptrtoint ptr %trc_reader_special.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %trc_reader_special.i6, align 4
  %tobool.not.i7 = icmp eq i32 %18, 0
  br i1 %tobool.not.i7, label %do.body23.i, label %lor.lhs.false.i, !prof !335

lor.lhs.false.i:                                  ; preds = %un_delay.exit
  %tobool18.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool18.not.i, label %if.end69.i, label %do.body23.i

do.body23.i:                                      ; preds = %lor.lhs.false.i, %un_delay.exit
  %19 = ptrtoint ptr %trc_reader_nesting.i5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %sub.i, ptr %trc_reader_nesting.i5, align 4
  br label %rcu_read_unlock_trace.exit

if.end69.i:                                       ; preds = %lor.lhs.false.i
  tail call void @rcu_read_unlock_trace_special(ptr noundef %13) #16
  br label %rcu_read_unlock_trace.exit

rcu_read_unlock_trace.exit:                       ; preds = %if.end69.i, %do.body23.i
  %dec = add nsw i32 %i.09, -1
  %cmp = icmp sgt i32 %i.09, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %rcu_read_unlock_trace.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_trace_special(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal void @rcu_tasks_ref_scale_read_section(i32 noundef %nloops) #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_tasks_ref_scale_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp2 = icmp sgt i32 %nloops, -1
  br i1 %cmp2, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %un_delay.exit, %for.body.lr.ph
  %i.03 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %un_delay.exit ]
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %0(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %1(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  %dec = add nsw i32 %i.03, -1
  %cmp = icmp sgt i32 %i.03, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %un_delay.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_refcnt_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp3 = icmp sgt i32 %nloops, -1
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %i.04 = phi i32 [ %dec, %for.body ], [ %nloops, %entry ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @refcnt, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @refcnt, ptr nonnull @refcnt, i32 1, ptr nonnull elementtype(i32) @refcnt) #16, !srcloc !341
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @refcnt, i32 1, i32 3, i32 1) #16
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @refcnt, ptr nonnull @refcnt, i32 1, ptr nonnull elementtype(i32) @refcnt) #16, !srcloc !362
  %dec = add nsw i32 %i.04, -1
  %cmp.not = icmp eq i32 %i.04, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_refcnt_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp3 = icmp sgt i32 %nloops, -1
  br i1 %cmp3, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %un_delay.exit, %for.body.lr.ph
  %i.04 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %un_delay.exit ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @refcnt, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @refcnt, ptr nonnull @refcnt, i32 1, ptr nonnull elementtype(i32) @refcnt) #16, !srcloc !341
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %1(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @refcnt, i32 1, i32 3, i32 1) #16
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @refcnt, ptr nonnull @refcnt, i32 1, ptr nonnull elementtype(i32) @refcnt) #16, !srcloc !362
  %dec = add nsw i32 %i.04, -1
  %cmp = icmp sgt i32 %i.04, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %un_delay.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rwlock_init() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__rwlock_init(ptr noundef nonnull @test_rwlock, ptr noundef nonnull @.str.57, ptr noundef nonnull @ref_rwlock_init.__key) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rwlock_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp2 = icmp sgt i32 %nloops, -1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %i.03 = phi i32 [ %dec, %for.body ], [ %nloops, %entry ]
  tail call void @_raw_read_lock(ptr noundef nonnull @test_rwlock) #16
  tail call void @_raw_read_unlock(ptr noundef nonnull @test_rwlock) #16
  %dec = add nsw i32 %i.03, -1
  %cmp.not = icmp eq i32 %i.03, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rwlock_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp2 = icmp sgt i32 %nloops, -1
  br i1 %cmp2, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %un_delay.exit, %for.body.lr.ph
  %i.03 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %un_delay.exit ]
  tail call void @_raw_read_lock(ptr noundef nonnull @test_rwlock) #16
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %0(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %1(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @test_rwlock) #16
  %dec = add nsw i32 %i.03, -1
  %cmp = icmp sgt i32 %i.03, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %un_delay.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rwsem_init() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_rwsem(ptr noundef nonnull @test_rwsem, ptr noundef nonnull @.str.59, ptr noundef nonnull @ref_rwsem_init.__key) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rwsem_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp2 = icmp sgt i32 %nloops, -1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %i.03 = phi i32 [ %dec, %for.body ], [ %nloops, %entry ]
  tail call void @down_read(ptr noundef nonnull @test_rwsem) #16
  tail call void @up_read(ptr noundef nonnull @test_rwsem) #16
  %dec = add nsw i32 %i.03, -1
  %cmp.not = icmp eq i32 %i.03, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_rwsem_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp2 = icmp sgt i32 %nloops, -1
  br i1 %cmp2, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %un_delay.exit, %for.body.lr.ph
  %i.03 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %un_delay.exit ]
  tail call void @down_read(ptr noundef nonnull @test_rwsem) #16
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %0(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %1(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  tail call void @up_read(ptr noundef nonnull @test_rwsem) #16
  %dec = add nsw i32 %i.03, -1
  %cmp = icmp sgt i32 %i.03, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %un_delay.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_lock_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !363
  %cmp7 = icmp sgt i32 %nloops, -1
  br i1 %cmp7, label %for.body, label %do.body1

for.body:                                         ; preds = %for.body, %entry
  %i.08 = phi i32 [ %dec, %for.body ], [ %nloops, %entry ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @test_lock) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @test_lock) #16
  %dec = add nsw i32 %i.08, -1
  %cmp.not = icmp eq i32 %i.08, 0
  br i1 %cmp.not, label %do.body1, label %for.body

do.body1:                                         ; preds = %for.body, %entry
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !364
  %4 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i5 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %7, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_lock_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !365
  %cmp7 = icmp sgt i32 %nloops, -1
  br i1 %cmp7, label %for.body.lr.ph, label %do.body1

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %un_delay.exit, %for.body.lr.ph
  %i.08 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %un_delay.exit ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @test_lock) #16
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @test_lock) #16
  %dec = add nsw i32 %i.08, -1
  %cmp = icmp sgt i32 %i.08, 0
  br i1 %cmp, label %for.body, label %do.body1

do.body1:                                         ; preds = %un_delay.exit, %entry
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !366
  %6 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i5 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_lock_irq_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !367
  %cmp15 = icmp sgt i32 %nloops, -1
  br i1 %cmp15, label %do.body2, label %do.body9

do.body2:                                         ; preds = %do.body2, %entry
  %i.016 = phi i32 [ %dec, %do.body2 ], [ %nloops, %entry ]
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @test_lock) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @test_lock, i32 noundef %call4) #16
  %dec = add nsw i32 %i.016, -1
  %cmp.not = icmp eq i32 %i.016, 0
  br i1 %cmp.not, label %do.body9, label %do.body2

do.body9:                                         ; preds = %do.body2, %entry
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !368
  %4 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i13 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i13 to ptr
  %preempt_count.i.i14 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i14, align 4
  %sub.i = add i32 %7, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_lock_irq_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !369
  %cmp15 = icmp sgt i32 %nloops, -1
  br i1 %cmp15, label %do.body2.lr.ph, label %do.body9

do.body2.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %do.body2

do.body2:                                         ; preds = %un_delay.exit, %do.body2.lr.ph
  %i.016 = phi i32 [ %nloops, %do.body2.lr.ph ], [ %dec, %un_delay.exit ]
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @test_lock) #16
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %do.body2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %do.body2
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @test_lock, i32 noundef %call4) #16
  %dec = add nsw i32 %i.016, -1
  %cmp = icmp sgt i32 %i.016, 0
  br i1 %cmp, label %do.body2, label %do.body9

do.body9:                                         ; preds = %un_delay.exit, %entry
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !370
  %6 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i13 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i13 to ptr
  %preempt_count.i.i14 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i14, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_acqrel_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !371
  %cmp52 = icmp sgt i32 %nloops, -1
  br i1 %cmp52, label %for.body, label %do.body46

for.body:                                         ; preds = %for.body, %entry
  %i.053 = phi i32 [ %dec, %for.body ], [ %nloops, %entry ]
  %4 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @test_acqrel to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !373
  %add26 = add i32 %12, 1
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %16, ptrtoint (ptr @test_acqrel to i32)
  %17 = inttoptr i32 %add37 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %add26, ptr %17, align 4
  %dec = add nsw i32 %i.053, -1
  %cmp.not = icmp eq i32 %i.053, 0
  br i1 %cmp.not, label %do.body46, label %for.body

do.body46:                                        ; preds = %for.body, %entry
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !374
  %19 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i50 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i50 to ptr
  %preempt_count.i.i51 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i51, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i51, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_acqrel_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !375
  %cmp52 = icmp sgt i32 %nloops, -1
  br i1 %cmp52, label %for.body.lr.ph, label %do.body46

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %un_delay.exit, %for.body.lr.ph
  %i.053 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %un_delay.exit ]
  %4 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @test_acqrel to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !376
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !377
  %add26 = add i32 %12, 1
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %18, ptrtoint (ptr @test_acqrel to i32)
  %19 = inttoptr i32 %add37 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %add26, ptr %19, align 4
  %dec = add nsw i32 %i.053, -1
  %cmp = icmp sgt i32 %i.053, 0
  br i1 %cmp, label %for.body, label %do.body46

do.body46:                                        ; preds = %un_delay.exit, %entry
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !378
  %21 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i50 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i50 to ptr
  %preempt_count.i.i51 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i51, align 4
  %sub.i = add i32 %24, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i51, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_clock_section(i32 noundef %nloops) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !379
  %cmp8 = icmp sgt i32 %nloops, -1
  br i1 %cmp8, label %for.body, label %do.body1

for.body:                                         ; preds = %for.body, %entry
  %i.010 = phi i32 [ %dec, %for.body ], [ %nloops, %entry ]
  %x.09 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %call = tail call i64 @ktime_get_real_fast_ns() #16
  %add = add i64 %call, %x.09
  %dec = add nsw i32 %i.010, -1
  %cmp.not = icmp eq i32 %i.010, 0
  br i1 %cmp.not, label %do.body1, label %for.body

do.body1:                                         ; preds = %for.body, %entry
  %x.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !380
  %4 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i6 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i7, align 4
  %sub.i = add i32 %7, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i7, align 4
  store volatile i64 %x.0.lcssa, ptr @stopopts, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ref_clock_delay_section(i32 noundef %nloops, i32 noundef %udl, i32 noundef %ndl) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !381
  %cmp8 = icmp sgt i32 %nloops, -1
  br i1 %cmp8, label %for.body.lr.ph, label %do.body1

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq i32 %udl, 0
  %tobool4.not.i = icmp eq i32 %ndl, 0
  %sub.i.i = add i32 %ndl, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %un_delay.exit, %for.body.lr.ph
  %i.010 = phi i32 [ %nloops, %for.body.lr.ph ], [ %dec, %un_delay.exit ]
  %x.09 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %un_delay.exit ]
  %call = tail call i64 @ktime_get_real_fast_ns() #16
  %add = add i64 %call, %x.09
  br i1 %tobool.not.i, label %if.end.i, label %cond.false2.i

cond.false2.i:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %udl) #16
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false2.i, %for.body
  br i1 %tobool4.not.i, label %un_delay.exit, label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %div.i.i) #16
  br label %un_delay.exit

un_delay.exit:                                    ; preds = %cond.false8.i.i, %if.end.i
  %dec = add nsw i32 %i.010, -1
  %cmp = icmp sgt i32 %i.010, 0
  br i1 %cmp, label %for.body, label %do.body1

do.body1:                                         ; preds = %un_delay.exit, %entry
  %x.0.lcssa = phi i64 [ 0, %entry ], [ %add, %un_delay.exit ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !382
  %6 = tail call i32 @llvm.read_register.i32(metadata !324) #16
  %and.i.i.i6 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i7, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i7, align 4
  store volatile i64 %x.0.lcssa, ptr @stopopts, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_must_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_kthread_stopping(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_cleanup_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_cleanup_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_torture_stop_kthread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !131, !133, !134, !136, !137, !138, !140, !142, !144, !145, !146, !148, !149, !151, !153, !155, !156, !157, !158, !159, !160, !162, !163, !165, !167, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !189, !191, !193, !195, !196, !198, !200, !202, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !225, !226, !228, !230, !232, !234, !236, !237, !238, !240, !242, !243, !244, !246, !248, !249, !250, !252, !254, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !275, !276, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !299, !300, !301, !303, !304, !306, !308, !310, !312, !313, !314, !316, !317, !318, !320, !322}
!llvm.named.register.sp = !{!324}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !{ptr @__UNIQUE_ID_file292, !1, !"__UNIQUE_ID_file292", i1 false, i1 false}
!1 = !{!"../kernel/rcu/refscale.c", i32 66, i32 1}
!2 = !{ptr @__UNIQUE_ID_license293, !1, !"__UNIQUE_ID_license293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../kernel/rcu/refscale.c", i32 67, i32 1}
!5 = !{ptr @__param_scale_type, !6, !"__param_scale_type", i1 false, i1 false}
!6 = !{!"../kernel/rcu/refscale.c", i32 70, i32 1}
!7 = !{ptr @__UNIQUE_ID_scale_typetype295, !6, !"__UNIQUE_ID_scale_typetype295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_scale_type296, !9, !"__UNIQUE_ID_scale_type296", i1 false, i1 false}
!9 = !{!"../kernel/rcu/refscale.c", i32 71, i32 1}
!10 = !{ptr @__param_verbose, !11, !"__param_verbose", i1 false, i1 false}
!11 = !{!"../kernel/rcu/refscale.c", i32 73, i32 1}
!12 = !{ptr @__UNIQUE_ID_verbosetype297, !11, !"__UNIQUE_ID_verbosetype297", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_verbose298, !11, !"__UNIQUE_ID_verbose298", i1 false, i1 false}
!14 = !{ptr @__param_verbose_batched, !15, !"__param_verbose_batched", i1 false, i1 false}
!15 = !{!"../kernel/rcu/refscale.c", i32 74, i32 1}
!16 = !{ptr @__UNIQUE_ID_verbose_batchedtype299, !15, !"__UNIQUE_ID_verbose_batchedtype299", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_verbose_batched300, !15, !"__UNIQUE_ID_verbose_batched300", i1 false, i1 false}
!18 = !{ptr @__param_holdoff, !19, !"__param_holdoff", i1 false, i1 false}
!19 = !{!"../kernel/rcu/refscale.c", i32 77, i32 1}
!20 = !{ptr @__UNIQUE_ID_holdofftype301, !19, !"__UNIQUE_ID_holdofftype301", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_holdoff302, !19, !"__UNIQUE_ID_holdoff302", i1 false, i1 false}
!22 = !{ptr @__param_loops, !23, !"__param_loops", i1 false, i1 false}
!23 = !{!"../kernel/rcu/refscale.c", i32 80, i32 1}
!24 = !{ptr @__UNIQUE_ID_loopstype303, !23, !"__UNIQUE_ID_loopstype303", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_loops304, !23, !"__UNIQUE_ID_loops304", i1 false, i1 false}
!26 = !{ptr @__param_nreaders, !27, !"__param_nreaders", i1 false, i1 false}
!27 = !{!"../kernel/rcu/refscale.c", i32 82, i32 1}
!28 = !{ptr @__UNIQUE_ID_nreaderstype305, !27, !"__UNIQUE_ID_nreaderstype305", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_nreaders306, !27, !"__UNIQUE_ID_nreaders306", i1 false, i1 false}
!30 = !{ptr @__param_nruns, !31, !"__param_nruns", i1 false, i1 false}
!31 = !{!"../kernel/rcu/refscale.c", i32 84, i32 1}
!32 = !{ptr @__UNIQUE_ID_nrunstype307, !31, !"__UNIQUE_ID_nrunstype307", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_nruns308, !31, !"__UNIQUE_ID_nruns308", i1 false, i1 false}
!34 = !{ptr @__param_readdelay, !35, !"__param_readdelay", i1 false, i1 false}
!35 = !{!"../kernel/rcu/refscale.c", i32 86, i32 1}
!36 = !{ptr @__UNIQUE_ID_readdelaytype309, !35, !"__UNIQUE_ID_readdelaytype309", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_readdelay310, !35, !"__UNIQUE_ID_readdelay310", i1 false, i1 false}
!38 = !{ptr @__param_shutdown, !39, !"__param_shutdown", i1 false, i1 false}
!39 = !{!"../kernel/rcu/refscale.c", i32 94, i32 1}
!40 = !{ptr @__UNIQUE_ID_shutdowntype311, !39, !"__UNIQUE_ID_shutdowntype311", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_shutdown312, !39, !"__UNIQUE_ID_shutdown312", i1 false, i1 false}
!42 = !{ptr @__initcall__kmod_refscale__326_877_ref_scale_init6, !43, !"__initcall__kmod_refscale__326_877_ref_scale_init6", i1 false, i1 false}
!43 = !{!"../kernel/rcu/refscale.c", i32 877, i32 1}
!44 = !{ptr @__exitcall_ref_scale_cleanup, !45, !"__exitcall_ref_scale_cleanup", i1 false, i1 false}
!45 = !{!"../kernel/rcu/refscale.c", i32 878, i32 1}
!46 = !{ptr @__pcpu_unique_srcu_refctl_scale_srcu_data, !47, !"__pcpu_unique_srcu_refctl_scale_srcu_data", i1 false, i1 false}
!47 = !{!"../kernel/rcu/refscale.c", i32 177, i32 1}
!48 = !{ptr @srcu_refctl_scale_srcu_data, !47, !"srcu_refctl_scale_srcu_data", i1 false, i1 false}
!49 = !{ptr @__pcpu_unique_test_acqrel, !50, !"__pcpu_unique_test_acqrel", i1 false, i1 false}
!50 = !{!"../kernel/rcu/refscale.c", i32 437, i32 8}
!51 = !{ptr @test_acqrel, !50, !"test_acqrel", i1 false, i1 false}
!52 = !{ptr @__param_str_scale_type, !6, !"__param_str_scale_type", i1 false, i1 false}
!53 = !{ptr @.str, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/rcu/refscale.c", i32 69, i32 27}
!55 = !{ptr @scale_type, !56, !"scale_type", i1 false, i1 false}
!56 = !{!"../kernel/rcu/refscale.c", i32 69, i32 14}
!57 = !{ptr @__param_str_verbose, !11, !"__param_str_verbose", i1 false, i1 false}
!58 = !{ptr @verbose, !11, !"verbose", i1 false, i1 false}
!59 = !{ptr @__param_str_verbose_batched, !15, !"__param_str_verbose_batched", i1 false, i1 false}
!60 = !{ptr @verbose_batched, !15, !"verbose_batched", i1 false, i1 false}
!61 = !{ptr @__param_str_holdoff, !19, !"__param_str_holdoff", i1 false, i1 false}
!62 = !{ptr @holdoff, !19, !"holdoff", i1 false, i1 false}
!63 = !{ptr @__param_str_loops, !23, !"__param_str_loops", i1 false, i1 false}
!64 = !{ptr @loops, !23, !"loops", i1 false, i1 false}
!65 = !{ptr @__param_str_nreaders, !27, !"__param_str_nreaders", i1 false, i1 false}
!66 = !{ptr @nreaders, !27, !"nreaders", i1 false, i1 false}
!67 = !{ptr @__param_str_nruns, !31, !"__param_str_nruns", i1 false, i1 false}
!68 = !{ptr @nruns, !31, !"nruns", i1 false, i1 false}
!69 = !{ptr @__param_str_readdelay, !35, !"__param_str_readdelay", i1 false, i1 false}
!70 = !{ptr @readdelay, !35, !"readdelay", i1 false, i1 false}
!71 = !{ptr @__param_str_shutdown, !39, !"__param_str_shutdown", i1 false, i1 false}
!72 = !{ptr @shutdown, !39, !"shutdown", i1 false, i1 false}
!73 = !{ptr @ref_scale_init.scale_ops, !74, !"scale_ops", i1 false, i1 false}
!74 = !{!"../kernel/rcu/refscale.c", i32 792, i32 31}
!75 = !{ptr @.str.1, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/rcu/refscale.c", i32 806, i32 3}
!77 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ref_scale_init._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @ref_scale_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.5, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/rcu/refscale.c", i32 807, i32 3}
!83 = !{ptr @ref_scale_init._entry.4, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ref_scale_init._entry_ptr.6, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.8, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/rcu/refscale.c", i32 809, i32 4}
!87 = !{ptr @ref_scale_init._entry.7, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ref_scale_init._entry_ptr.9, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.11, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/rcu/refscale.c", i32 810, i32 3}
!91 = !{ptr @ref_scale_init._entry.10, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ref_scale_init._entry_ptr.12, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.13, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/rcu/refscale.c", i32 818, i32 40}
!95 = !{ptr @ref_scale_init.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../kernel/rcu/refscale.c", i32 822, i32 3}
!97 = !{ptr @.str.14, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.15, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/rcu/refscale.c", i32 823, i32 14}
!100 = !{ptr @.str.16, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.17, !99, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../kernel/rcu/refscale.c", i32 825, i32 7}
!104 = !{ptr @.str.18, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../kernel/rcu/refscale.c", i32 833, i32 6}
!107 = !{ptr @.str.20, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../kernel/rcu/refscale.c", i32 835, i32 6}
!110 = !{ptr @.str.22, !109, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../kernel/rcu/refscale.c", i32 837, i32 6}
!113 = !{ptr @.str.24, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/rcu/refscale.c", i32 842, i32 3}
!116 = !{ptr @ref_scale_init._entry.25, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ref_scale_init._entry_ptr.27, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.29, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/rcu/refscale.c", i32 847, i32 2}
!120 = !{ptr @ref_scale_init._entry.28, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ref_scale_init._entry_ptr.30, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.31, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/rcu/refscale.c", i32 850, i32 14}
!124 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../kernel/rcu/refscale.c", i32 852, i32 7}
!128 = !{ptr @ref_scale_init.__key.35, !129, !"__key", i1 false, i1 false}
!129 = !{!"../kernel/rcu/refscale.c", i32 855, i32 3}
!130 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ref_scale_init.__key.37, !132, !"__key", i1 false, i1 false}
!132 = !{!"../kernel/rcu/refscale.c", i32 859, i32 2}
!133 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/rcu/refscale.c", i32 860, i32 13}
!136 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../kernel/rcu/refscale.c", i32 861, i32 6}
!140 = !{ptr @rcu_ops, !141, !"rcu_ops", i1 false, i1 false}
!141 = !{!"../kernel/rcu/refscale.c", i32 169, i32 29}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!144 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!148 = !{ptr @.str.45, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.46, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../kernel/rcu/refscale.c", i32 207, i32 11}
!151 = !{ptr @srcu_ops, !152, !"srcu_ops", i1 false, i1 false}
!152 = !{!"../kernel/rcu/refscale.c", i32 203, i32 29}
!153 = distinct !{null, !154, !"srcu_ctlp", i1 false, i1 false}
!154 = !{!"../kernel/rcu/refscale.c", i32 178, i32 28}
!155 = !{ptr @.str.47, !47, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.48, !47, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.49, !47, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.50, !47, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @srcu_refctl_scale, !47, !"srcu_refctl_scale", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!162 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../kernel/rcu/refscale.c", i32 261, i32 11}
!165 = !{ptr @rcu_trace_ops, !166, !"rcu_trace_ops", i1 false, i1 false}
!166 = !{!"../kernel/rcu/refscale.c", i32 257, i32 29}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../include/linux/rcupdate_trace.h", i32 83, i32 2}
!169 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.54, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/rcu/refscale.c", i32 232, i32 11}
!172 = !{ptr @rcu_tasks_ops, !173, !"rcu_tasks_ops", i1 false, i1 false}
!173 = !{!"../kernel/rcu/refscale.c", i32 228, i32 29}
!174 = !{ptr @.str.55, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/rcu/refscale.c", i32 292, i32 11}
!176 = !{ptr @refcnt_ops, !177, !"refcnt_ops", i1 false, i1 false}
!177 = !{!"../kernel/rcu/refscale.c", i32 288, i32 29}
!178 = !{ptr @refcnt, !179, !"refcnt", i1 false, i1 false}
!179 = !{!"../kernel/rcu/refscale.c", i32 265, i32 17}
!180 = !{ptr @.str.56, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/rcu/refscale.c", i32 328, i32 11}
!182 = !{ptr @rwlock_ops, !183, !"rwlock_ops", i1 false, i1 false}
!183 = !{!"../kernel/rcu/refscale.c", i32 324, i32 29}
!184 = !{ptr @ref_rwlock_init.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../kernel/rcu/refscale.c", i32 300, i32 2}
!186 = !{ptr @.str.57, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @test_rwlock, !188, !"test_rwlock", i1 false, i1 false}
!188 = !{!"../kernel/rcu/refscale.c", i32 296, i32 17}
!189 = !{ptr @.str.58, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../kernel/rcu/refscale.c", i32 364, i32 11}
!191 = !{ptr @rwsem_ops, !192, !"rwsem_ops", i1 false, i1 false}
!192 = !{!"../kernel/rcu/refscale.c", i32 360, i32 29}
!193 = !{ptr @ref_rwsem_init.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../kernel/rcu/refscale.c", i32 336, i32 2}
!195 = !{ptr @.str.59, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @test_rwsem, !197, !"test_rwsem", i1 false, i1 false}
!197 = !{!"../kernel/rcu/refscale.c", i32 332, i32 28}
!198 = !{ptr @.str.60, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../kernel/rcu/refscale.c", i32 398, i32 11}
!200 = !{ptr @lock_ops, !201, !"lock_ops", i1 false, i1 false}
!201 = !{!"../kernel/rcu/refscale.c", i32 395, i32 29}
!202 = !{ptr @.str.61, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../kernel/rcu/refscale.c", i32 368, i32 8}
!204 = !{ptr @test_lock, !203, !"test_lock", i1 false, i1 false}
!205 = !{ptr @.str.62, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../kernel/rcu/refscale.c", i32 433, i32 11}
!207 = !{ptr @lock_irq_ops, !208, !"lock_irq_ops", i1 false, i1 false}
!208 = !{!"../kernel/rcu/refscale.c", i32 430, i32 29}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../kernel/rcu/refscale.c", i32 469, i32 11}
!211 = !{ptr @acqrel_ops, !212, !"acqrel_ops", i1 false, i1 false}
!212 = !{!"../kernel/rcu/refscale.c", i32 466, i32 29}
!213 = !{ptr @.str.64, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../kernel/rcu/refscale.c", i32 503, i32 11}
!215 = !{ptr @clock_ops, !216, !"clock_ops", i1 false, i1 false}
!216 = !{!"../kernel/rcu/refscale.c", i32 500, i32 29}
!217 = !{ptr @stopopts, !218, !"stopopts", i1 false, i1 false}
!218 = !{!"../kernel/rcu/refscale.c", i32 472, i32 21}
!219 = !{ptr @cur_ops, !220, !"cur_ops", i1 false, i1 false}
!220 = !{!"../kernel/rcu/refscale.c", i32 134, i32 30}
!221 = !{ptr @.str.65, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../kernel/rcu/refscale.c", i32 739, i32 2}
!223 = !{ptr @.str.66, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @ref_scale_print_module_parms._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @ref_scale_print_module_parms._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @shutdown_wq, !227, !"shutdown_wq", i1 false, i1 false}
!227 = !{!"../kernel/rcu/refscale.c", i32 105, i32 26}
!228 = distinct !{null, !229, !"shutdown_start", i1 false, i1 false}
!229 = !{!"../kernel/rcu/refscale.c", i32 109, i32 12}
!230 = !{ptr @shutdown_task, !231, !"shutdown_task", i1 false, i1 false}
!231 = !{!"../kernel/rcu/refscale.c", i32 104, i32 28}
!232 = !{ptr @reader_tasks, !233, !"reader_tasks", i1 false, i1 false}
!233 = !{!"../kernel/rcu/refscale.c", i32 111, i32 28}
!234 = !{ptr @.str.67, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../kernel/rcu/refscale.c", i32 525, i32 2}
!236 = !{ptr @ref_scale_reader._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @ref_scale_reader._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = distinct !{null, !239, !"__already_done", i1 false, i1 false}
!239 = !{!"../kernel/rcu/refscale.c", i32 526, i32 2}
!240 = !{ptr @.str.69, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../kernel/rcu/refscale.c", i32 532, i32 2}
!242 = !{ptr @ref_scale_reader._entry.68, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @ref_scale_reader._entry_ptr.70, !241, !"_entry_ptr", i1 false, i1 false}
!244 = distinct !{null, !245, !"__already_done", i1 false, i1 false}
!245 = !{!"../kernel/rcu/refscale.c", i32 542, i32 2}
!246 = !{ptr @.str.73, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../kernel/rcu/refscale.c", i32 549, i32 2}
!248 = !{ptr @ref_scale_reader._entry.72, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @ref_scale_reader._entry_ptr.74, !247, !"_entry_ptr", i1 false, i1 false}
!250 = distinct !{null, !251, !"__already_done", i1 false, i1 false}
!251 = !{!"../kernel/rcu/refscale.c", i32 568, i32 25}
!252 = !{ptr @.str.77, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../kernel/rcu/refscale.c", i32 578, i32 2}
!254 = !{ptr @ref_scale_reader._entry.76, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @ref_scale_reader._entry_ptr.78, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @verbose_batch_ctr, !257, !"verbose_batch_ctr", i1 false, i1 false}
!257 = !{!"../kernel/rcu/refscale.c", i32 52, i32 17}
!258 = !{ptr @n_init, !259, !"n_init", i1 false, i1 false}
!259 = !{!"../kernel/rcu/refscale.c", i32 117, i32 17}
!260 = !{ptr @nreaders_exp, !261, !"nreaders_exp", i1 false, i1 false}
!261 = !{!"../kernel/rcu/refscale.c", i32 114, i32 17}
!262 = !{ptr @n_started, !263, !"n_started", i1 false, i1 false}
!263 = !{!"../kernel/rcu/refscale.c", i32 118, i32 17}
!264 = !{ptr @exp_idx, !265, !"exp_idx", i1 false, i1 false}
!265 = !{!"../kernel/rcu/refscale.c", i32 123, i32 12}
!266 = !{ptr @n_warmedup, !267, !"n_warmedup", i1 false, i1 false}
!267 = !{!"../kernel/rcu/refscale.c", i32 119, i32 17}
!268 = !{ptr @n_cooleddown, !269, !"n_cooleddown", i1 false, i1 false}
!269 = !{!"../kernel/rcu/refscale.c", i32 120, i32 17}
!270 = !{ptr @main_wq, !271, !"main_wq", i1 false, i1 false}
!271 = !{!"../kernel/rcu/refscale.c", i32 108, i32 26}
!272 = !{ptr @.str.79, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../kernel/rcu/refscale.c", i32 652, i32 2}
!274 = !{ptr @main_func._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @main_func._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @main_func._entry.80, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../kernel/rcu/refscale.c", i32 656, i32 3}
!278 = !{ptr @main_func._entry_ptr.81, !277, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.83, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../kernel/rcu/refscale.c", i32 685, i32 3}
!281 = !{ptr @main_func._entry.82, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @main_func._entry_ptr.84, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.86, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../kernel/rcu/refscale.c", i32 691, i32 3}
!285 = !{ptr @main_func._entry.85, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @main_func._entry_ptr.87, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.89, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../kernel/rcu/refscale.c", i32 700, i32 2}
!289 = !{ptr @main_func._entry.88, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @main_func._entry_ptr.90, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.92, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../kernel/rcu/refscale.c", i32 702, i32 2}
!293 = !{ptr @main_func._entry.91, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @main_func._entry_ptr.93, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.94, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../kernel/rcu/refscale.c", i32 708, i32 17}
!297 = !{ptr @.str.96, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../kernel/rcu/refscale.c", i32 711, i32 4}
!299 = !{ptr @main_func._entry.95, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @main_func._entry_ptr.97, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @main_func._entry.98, !302, !"_entry", i1 false, i1 false}
!302 = !{!"../kernel/rcu/refscale.c", i32 716, i32 2}
!303 = !{ptr @main_func._entry_ptr.99, !302, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.100, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../kernel/rcu/refscale.c", i32 613, i32 15}
!306 = !{ptr @.str.101, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../kernel/rcu/refscale.c", i32 618, i32 17}
!308 = distinct !{null, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../kernel/rcu/refscale.c", i32 621, i32 16}
!310 = !{ptr @.str.103, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../kernel/rcu/refscale.c", i32 623, i32 4}
!312 = !{ptr @process_durations._entry, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @process_durations._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.105, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../kernel/rcu/refscale.c", i32 630, i32 2}
!316 = !{ptr @process_durations._entry.104, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @process_durations._entry_ptr.106, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @main_task, !319, !"main_task", i1 false, i1 false}
!319 = !{!"../kernel/rcu/refscale.c", i32 107, i32 28}
!320 = !{ptr @.str.107, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../kernel/rcu/refscale.c", i32 759, i32 4}
!322 = !{ptr @.str.108, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../kernel/rcu/refscale.c", i32 764, i32 2}
!324 = !{!"sp"}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 1, !"min_enum_size", i32 4}
!327 = !{i32 8, !"branch-target-enforcement", i32 0}
!328 = !{i32 8, !"sign-return-address", i32 0}
!329 = !{i32 8, !"sign-return-address-all", i32 0}
!330 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!331 = !{i32 7, !"uwtable", i32 1}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!334 = !{i8 0, i8 2}
!335 = !{!"branch_weights", i32 2000, i32 1}
!336 = !{!"branch_weights", i32 1, i32 2000}
!337 = !{i64 2154870910}
!338 = !{i64 2148222563}
!339 = !{i64 2148137872, i64 2148137904, i64 2148137933, i64 2148137967, i64 2148137998, i64 2148138021}
!340 = !{i64 2148222792}
!341 = !{i64 2148137152, i64 2148137178, i64 2148137207, i64 2148137241, i64 2148137272, i64 2148137295}
!342 = !{i64 2154824156}
!343 = !{i64 2154831573}
!344 = !{i64 2148225604}
!345 = !{i64 2148140337, i64 2148140369, i64 2148140398, i64 2148140432, i64 2148140463, i64 2148140486}
!346 = !{i64 2148225833}
!347 = !{i64 2148216847}
!348 = !{i64 2154835399}
!349 = !{i64 2154835241}
!350 = !{i64 590479, i64 590540}
!351 = !{i64 593211}
!352 = !{i64 593496}
!353 = !{i64 2154852252}
!354 = !{i64 2148843823, i64 2148844103, i64 2148844437, i64 2148844771}
!355 = !{i64 1358279, i64 1358306, i64 1358328, i64 1358356}
!356 = !{i64 1358687, i64 1358714, i64 1358747, i64 1358768, i64 1358795, i64 1358821}
!357 = !{i64 2149476807}
!358 = !{i64 2149477073}
!359 = !{i64 2154095123}
!360 = !{i64 2154095769}
!361 = !{i64 2154099131}
!362 = !{i64 2148139617, i64 2148139643, i64 2148139672, i64 2148139706, i64 2148139737, i64 2148139760}
!363 = !{i64 2154695866}
!364 = !{i64 2154695963}
!365 = !{i64 2154696156}
!366 = !{i64 2154696253}
!367 = !{i64 2154696446}
!368 = !{i64 2154696895}
!369 = !{i64 2154697088}
!370 = !{i64 2154697537}
!371 = !{i64 2154702798}
!372 = !{i64 2154731335}
!373 = !{i64 2154742902}
!374 = !{i64 2154755966}
!375 = !{i64 2154756159}
!376 = !{i64 2154784696}
!377 = !{i64 2154796263}
!378 = !{i64 2154809327}
!379 = !{i64 2154809520}
!380 = !{i64 2154809617}
!381 = !{i64 2154809810}
!382 = !{i64 2154809907}
