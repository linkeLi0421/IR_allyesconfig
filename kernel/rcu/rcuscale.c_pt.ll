; ModuleID = '/llk/IR_all_yes/kernel/rcu/rcuscale.c_pt.bc'
source_filename = "../kernel/rcu/rcuscale.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rcu_scale_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.torture_random_state = type { i32, i32 }
%struct.kfree_obj = type { [8 x i8], %struct.callback_head }

@__UNIQUE_ID_file292 = internal constant [34 x i8] c"rcuscale.file=kernel/rcu/rcuscale\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"rcuscale.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [57 x i8] c"rcuscale.author=Paul E. McKenney <paulmck@linux.ibm.com>\00", section ".modinfo", align 1
@__param_str_gp_async = internal constant [18 x i8] c"rcuscale.gp_async\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@gp_async = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gp_async = internal constant %struct.kernel_param { ptr @__param_str_gp_async, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_async } }, section "__param", align 4
@__UNIQUE_ID_gp_asynctype295 = internal constant [32 x i8] c"rcuscale.parmtype=gp_async:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_async296 = internal constant [59 x i8] c"rcuscale.parm=gp_async:Use asynchronous GP wait primitives\00", section ".modinfo", align 1
@__param_str_gp_async_max = internal constant [22 x i8] c"rcuscale.gp_async_max\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@gp_async_max = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_gp_async_max = internal constant %struct.kernel_param { ptr @__param_str_gp_async_max, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_async_max } }, section "__param", align 4
@__UNIQUE_ID_gp_async_maxtype297 = internal constant [35 x i8] c"rcuscale.parmtype=gp_async_max:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_async_max298 = internal constant [62 x i8] c"rcuscale.parm=gp_async_max:Max # outstanding waits per reader\00", section ".modinfo", align 1
@__param_str_gp_exp = internal constant [16 x i8] c"rcuscale.gp_exp\00", align 1
@gp_exp = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gp_exp = internal constant %struct.kernel_param { ptr @__param_str_gp_exp, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_exp } }, section "__param", align 4
@__UNIQUE_ID_gp_exptype299 = internal constant [30 x i8] c"rcuscale.parmtype=gp_exp:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gp_exp300 = internal constant [54 x i8] c"rcuscale.parm=gp_exp:Use expedited GP wait primitives\00", section ".modinfo", align 1
@__param_str_holdoff = internal constant [17 x i8] c"rcuscale.holdoff\00", align 1
@holdoff = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_holdoff = internal constant %struct.kernel_param { ptr @__param_str_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @holdoff } }, section "__param", align 4
@__UNIQUE_ID_holdofftype301 = internal constant [30 x i8] c"rcuscale.parmtype=holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_holdoff302 = internal constant [57 x i8] c"rcuscale.parm=holdoff:Holdoff time before test start (s)\00", section ".modinfo", align 1
@__param_str_nreaders = internal constant [18 x i8] c"rcuscale.nreaders\00", align 1
@nreaders = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nreaders = internal constant %struct.kernel_param { ptr @__param_str_nreaders, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nreaders } }, section "__param", align 4
@__UNIQUE_ID_nreaderstype303 = internal constant [31 x i8] c"rcuscale.parmtype=nreaders:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nreaders304 = internal constant [52 x i8] c"rcuscale.parm=nreaders:Number of RCU reader threads\00", section ".modinfo", align 1
@__param_str_nwriters = internal constant [18 x i8] c"rcuscale.nwriters\00", align 1
@nwriters = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nwriters = internal constant %struct.kernel_param { ptr @__param_str_nwriters, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nwriters } }, section "__param", align 4
@__UNIQUE_ID_nwriterstype305 = internal constant [31 x i8] c"rcuscale.parmtype=nwriters:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nwriters306 = internal constant [53 x i8] c"rcuscale.parm=nwriters:Number of RCU updater threads\00", section ".modinfo", align 1
@__param_str_shutdown = internal constant [18 x i8] c"rcuscale.shutdown\00", align 1
@shutdown = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_shutdown = internal constant %struct.kernel_param { ptr @__param_str_shutdown, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @shutdown } }, section "__param", align 4
@__UNIQUE_ID_shutdowntype307 = internal constant [32 x i8] c"rcuscale.parmtype=shutdown:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_shutdown308 = internal constant [61 x i8] c"rcuscale.parm=shutdown:Shutdown at end of scalability tests.\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [17 x i8] c"rcuscale.verbose\00", align 1
@verbose = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype309 = internal constant [30 x i8] c"rcuscale.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose310 = internal constant [57 x i8] c"rcuscale.parm=verbose:Enable verbose debugging printk()s\00", section ".modinfo", align 1
@__param_str_writer_holdoff = internal constant [24 x i8] c"rcuscale.writer_holdoff\00", align 1
@writer_holdoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_writer_holdoff = internal constant %struct.kernel_param { ptr @__param_str_writer_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @writer_holdoff } }, section "__param", align 4
@__UNIQUE_ID_writer_holdofftype311 = internal constant [37 x i8] c"rcuscale.parmtype=writer_holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_writer_holdoff312 = internal constant [71 x i8] c"rcuscale.parm=writer_holdoff:Holdoff (us) between GPs, zero to disable\00", section ".modinfo", align 1
@__param_str_kfree_rcu_test = internal constant [24 x i8] c"rcuscale.kfree_rcu_test\00", align 1
@kfree_rcu_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_kfree_rcu_test = internal constant %struct.kernel_param { ptr @__param_str_kfree_rcu_test, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfree_rcu_test } }, section "__param", align 4
@__UNIQUE_ID_kfree_rcu_testtype313 = internal constant [37 x i8] c"rcuscale.parmtype=kfree_rcu_test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_kfree_rcu_test314 = internal constant [65 x i8] c"rcuscale.parm=kfree_rcu_test:Do we run a kfree_rcu() scale test?\00", section ".modinfo", align 1
@__param_str_kfree_mult = internal constant [20 x i8] c"rcuscale.kfree_mult\00", align 1
@kfree_mult = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_kfree_mult = internal constant %struct.kernel_param { ptr @__param_str_kfree_mult, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfree_mult } }, section "__param", align 4
@__UNIQUE_ID_kfree_multtype315 = internal constant [33 x i8] c"rcuscale.parmtype=kfree_mult:int\00", section ".modinfo", align 1
@__UNIQUE_ID_kfree_mult316 = internal constant [65 x i8] c"rcuscale.parm=kfree_mult:Multiple of kfree_obj size to allocate.\00", section ".modinfo", align 1
@__param_str_scale_type = internal constant [20 x i8] c"rcuscale.scale_type\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@scale_type = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_scale_type = internal constant %struct.kernel_param { ptr @__param_str_scale_type, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @scale_type } }, section "__param", align 4
@__UNIQUE_ID_scale_typetype317 = internal constant [35 x i8] c"rcuscale.parmtype=scale_type:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_scale_type318 = internal constant [74 x i8] c"rcuscale.parm=scale_type:Type of RCU to scalability-test (rcu, srcu, ...)\00", section ".modinfo", align 1
@__param_str_kfree_nthreads = internal constant [24 x i8] c"rcuscale.kfree_nthreads\00", align 1
@kfree_nthreads = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_kfree_nthreads = internal constant %struct.kernel_param { ptr @__param_str_kfree_nthreads, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfree_nthreads } }, section "__param", align 4
@__UNIQUE_ID_kfree_nthreadstype325 = internal constant [37 x i8] c"rcuscale.parmtype=kfree_nthreads:int\00", section ".modinfo", align 1
@__UNIQUE_ID_kfree_nthreads326 = internal constant [77 x i8] c"rcuscale.parm=kfree_nthreads:Number of threads running loops of kfree_rcu().\00", section ".modinfo", align 1
@__param_str_kfree_alloc_num = internal constant [25 x i8] c"rcuscale.kfree_alloc_num\00", align 1
@kfree_alloc_num = internal global { i32, [28 x i8] } { i32 8000, [28 x i8] zeroinitializer }, align 32
@__param_kfree_alloc_num = internal constant %struct.kernel_param { ptr @__param_str_kfree_alloc_num, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfree_alloc_num } }, section "__param", align 4
@__UNIQUE_ID_kfree_alloc_numtype327 = internal constant [38 x i8] c"rcuscale.parmtype=kfree_alloc_num:int\00", section ".modinfo", align 1
@__UNIQUE_ID_kfree_alloc_num328 = internal constant [84 x i8] c"rcuscale.parm=kfree_alloc_num:Number of allocations and frees done in an iteration.\00", section ".modinfo", align 1
@__param_str_kfree_loops = internal constant [21 x i8] c"rcuscale.kfree_loops\00", align 1
@kfree_loops = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_kfree_loops = internal constant %struct.kernel_param { ptr @__param_str_kfree_loops, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfree_loops } }, section "__param", align 4
@__UNIQUE_ID_kfree_loopstype329 = internal constant [34 x i8] c"rcuscale.parmtype=kfree_loops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_kfree_loops330 = internal constant [87 x i8] c"rcuscale.parm=kfree_loops:Number of loops doing kfree_alloc_num allocations and frees.\00", section ".modinfo", align 1
@__param_str_kfree_rcu_test_double = internal constant [31 x i8] c"rcuscale.kfree_rcu_test_double\00", align 1
@kfree_rcu_test_double = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_kfree_rcu_test_double = internal constant %struct.kernel_param { ptr @__param_str_kfree_rcu_test_double, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfree_rcu_test_double } }, section "__param", align 4
@__UNIQUE_ID_kfree_rcu_test_doubletype331 = internal constant [45 x i8] c"rcuscale.parmtype=kfree_rcu_test_double:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_kfree_rcu_test_double332 = internal constant [88 x i8] c"rcuscale.parm=kfree_rcu_test_double:Do we run a kfree_rcu() double-argument scale test?\00", section ".modinfo", align 1
@__param_str_kfree_rcu_test_single = internal constant [31 x i8] c"rcuscale.kfree_rcu_test_single\00", align 1
@kfree_rcu_test_single = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_kfree_rcu_test_single = internal constant %struct.kernel_param { ptr @__param_str_kfree_rcu_test_single, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfree_rcu_test_single } }, section "__param", align 4
@__UNIQUE_ID_kfree_rcu_test_singletype333 = internal constant [45 x i8] c"rcuscale.parmtype=kfree_rcu_test_single:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_kfree_rcu_test_single334 = internal constant [88 x i8] c"rcuscale.parm=kfree_rcu_test_single:Do we run a kfree_rcu() single-argument scale test?\00", section ".modinfo", align 1
@__initcall__kmod_rcuscale__336_898_rcu_scale_init6 = internal global ptr @rcu_scale_init, section ".initcall6.init", align 4
@__exitcall_rcu_scale_cleanup = internal global ptr @rcu_scale_cleanup, section ".exitcall.exit", align 4
@__pcpu_unique_n_async_inflight = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@n_async_inflight = weak dso_local global %struct.atomic_t zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_srcu_ctl_scale_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@srcu_ctl_scale_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rcu\00", [28 x i8] zeroinitializer }, align 32
@rcu_scale_init.scale_ops = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @rcu_ops, ptr @srcu_ops, ptr @srcud_ops, ptr @tasks_ops, ptr @tasks_tracing_ops], [44 x i8] zeroinitializer }, align 32
@rcu_ops = internal global { %struct.rcu_scale_ops, [44 x i8] } { %struct.rcu_scale_ops { i32 0, ptr @rcu_sync_scale_init, ptr null, ptr @rcu_scale_read_lock, ptr @rcu_scale_read_unlock, ptr @rcu_get_gp_seq, ptr @rcu_seq_diff, ptr @rcu_exp_batches_completed, ptr @call_rcu, ptr @rcu_barrier, ptr @synchronize_rcu, ptr @synchronize_rcu_expedited, ptr @.str }, [44 x i8] zeroinitializer }, align 32
@srcu_ops = internal global { %struct.rcu_scale_ops, [44 x i8] } { %struct.rcu_scale_ops { i32 5, ptr @rcu_sync_scale_init, ptr null, ptr @srcu_scale_read_lock, ptr @srcu_scale_read_unlock, ptr @srcu_scale_completed, ptr @rcu_seq_diff, ptr @srcu_scale_completed, ptr @srcu_call_rcu, ptr @srcu_rcu_barrier, ptr @srcu_scale_synchronize, ptr @srcu_scale_synchronize_expedited, ptr @.str.36 }, [44 x i8] zeroinitializer }, align 32
@srcud_ops = internal global { %struct.rcu_scale_ops, [44 x i8] } { %struct.rcu_scale_ops { i32 5, ptr @srcu_sync_scale_init, ptr @srcu_sync_scale_cleanup, ptr @srcu_scale_read_lock, ptr @srcu_scale_read_unlock, ptr @srcu_scale_completed, ptr @rcu_seq_diff, ptr @srcu_scale_completed, ptr @srcu_call_rcu, ptr @srcu_rcu_barrier, ptr @srcu_scale_synchronize, ptr @srcu_scale_synchronize_expedited, ptr @.str.42 }, [44 x i8] zeroinitializer }, align 32
@tasks_ops = internal global { %struct.rcu_scale_ops, [44 x i8] } { %struct.rcu_scale_ops { i32 1, ptr @rcu_sync_scale_init, ptr null, ptr @tasks_scale_read_lock, ptr @tasks_scale_read_unlock, ptr @rcu_no_completed, ptr @rcu_seq_diff, ptr null, ptr @call_rcu_tasks, ptr @rcu_barrier_tasks, ptr @synchronize_rcu_tasks, ptr @synchronize_rcu_tasks, ptr @.str.44 }, [44 x i8] zeroinitializer }, align 32
@tasks_tracing_ops = internal global { %struct.rcu_scale_ops, [44 x i8] } { %struct.rcu_scale_ops { i32 1, ptr @rcu_sync_scale_init, ptr null, ptr @tasks_trace_scale_read_lock, ptr @tasks_trace_scale_read_unlock, ptr @rcu_no_completed, ptr @rcu_seq_diff, ptr null, ptr @call_rcu_tasks_trace, ptr @rcu_barrier_tasks_trace, ptr @synchronize_rcu_tasks_trace, ptr @synchronize_rcu_tasks_trace, ptr @.str.45 }, [44 x i8] zeroinitializer }, align 32
@cur_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_scale_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\011rcu-scale: invalid scale type: \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcu_scale_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/rcu/rcuscale.c\00", [42 x i8] zeroinitializer }, align 32
@rcu_scale_init._entry_ptr = internal global ptr @rcu_scale_init._entry, section ".printk_index", align 4
@rcu_scale_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\011rcu-scale types:\00", [45 x i8] zeroinitializer }, align 32
@rcu_scale_init._entry_ptr.6 = internal global ptr @rcu_scale_init._entry.4, section ".printk_index", align 4
@rcu_scale_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@rcu_scale_init._entry_ptr.9 = internal global ptr @rcu_scale_init._entry.7, section ".printk_index", align 4
@rcu_scale_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@rcu_scale_init._entry_ptr.12 = internal global ptr @rcu_scale_init._entry.10, section ".printk_index", align 4
@nrealwriters = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nrealreaders = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_rcu_scale_reader_started = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_scale_writer_started = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_rcu_scale_writer_finished = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Start of test\00", [18 x i8] zeroinitializer }, align 32
@rcu_scale_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@shutdown_wq = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&shutdown_wq\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcu_scale_shutdown\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating rcu_scale_shutdown task\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create rcu_scale_shutdown\00", [60 x i8] zeroinitializer }, align 32
@shutdown_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_scale_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Torture-test initialization failed with error code %d\0A\00", [41 x i8] zeroinitializer }, align 32
@reader_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_scale_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\011%s-scale:!!! %s\0A\00", [45 x i8] zeroinitializer }, align 32
@rcu_scale_init._entry_ptr.21 = internal global ptr @rcu_scale_init._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcu_scale_reader\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Creating rcu_scale_reader task\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create rcu_scale_reader\00", [62 x i8] zeroinitializer }, align 32
@rcu_scale_init.__already_done.26 = internal unnamed_addr global i1 false, section ".data.once", align 1
@writer_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@writer_durations = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@writer_n_durations = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_scale_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_scale_init._entry_ptr.28 = internal global ptr @rcu_scale_init._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcu_scale_writer\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Creating rcu_scale_writer task\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create rcu_scale_writer\00", [62 x i8] zeroinitializer }, align 32
@rcu_scale_init.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"srcu\00", [27 x i8] zeroinitializer }, align 32
@srcu_ctlp = internal global { ptr, [28 x i8] } { ptr @srcu_ctl_scale, [28 x i8] zeroinitializer }, align 32
@srcu_ctl_scale = internal global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @srcu_ctl_scale_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @srcu_ctl_scale, i64 700), ptr getelementptr (i8, ptr @srcu_ctl_scale, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @srcu_ctl_scale, i64 696), [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.39, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"srcu_ctl_scale.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(srcu_ctl_scale.work).work\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/rcu/rcuscale.c:189\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"srcu_ctl_scale\00", [17 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"srcud\00", [26 x i8] zeroinitializer }, align 32
@srcud = internal global { %struct.srcu_struct, [200 x i8] } zeroinitializer, align 32
@srcu_sync_scale_init.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"srcu_ctlp\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tasks\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tasks-tracing\00", [18 x i8] zeroinitializer }, align 32
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@kfree_nrealthreads = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kfree_scale_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kfree_scale_shutdown\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Creating kfree_scale_shutdown task\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create kfree_scale_shutdown\00", [58 x i8] zeroinitializer }, align 32
@kfree_scale_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kfree_scale_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\011kfree object size=%zu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kfree_scale_init\00", [47 x i8] zeroinitializer }, align 32
@kfree_scale_init._entry_ptr = internal global ptr @kfree_scale_init._entry, section ".printk_index", align 4
@kfree_reader_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kfree_scale_thread\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating kfree_scale_thread task\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create kfree_scale_thread\00", [60 x i8] zeroinitializer }, align 32
@kfree_scale_init.__already_done.55 = internal unnamed_addr global i1 false, section ".data.once", align 1
@n_kfree_scale_thread_started = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@n_kfree_scale_thread_ended = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@kfree_scale_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\011%s-scale: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@kfree_scale_thread._entry_ptr = internal global ptr @kfree_scale_thread._entry, section ".printk_index", align 4
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kfree_scale_thread task started\00", [32 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@b_rcu_gp_test_started = internal global { i32, [28 x i8] } zeroinitializer, align 32
@b_rcu_gp_test_finished = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kfree_scale_thread._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.3, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\011Total time taken by all kfree'ers: %llu ns, loops: %d, batches: %ld, memory footprint: %lldMB\0A\00", [63 x i8] zeroinitializer }, align 32
@kfree_scale_thread._entry_ptr.60 = internal global ptr @kfree_scale_thread._entry.58, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Stopping kfree_scale_thread task\00", [63 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@rcu_scale_print_module_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\011%s-scale:--- %s: nreaders=%d nwriters=%d verbose=%d shutdown=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcu_scale_print_module_parms\00", [35 x i8] zeroinitializer }, align 32
@rcu_scale_print_module_parms._entry_ptr = internal global ptr @rcu_scale_print_module_parms._entry, section ".printk_index", align 4
@rcu_scale_reader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.23, ptr @.str.3, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_scale_reader._entry_ptr = internal global ptr @rcu_scale_reader._entry, section ".printk_index", align 4
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rcu_scale_reader task started\00", [34 x i8] zeroinitializer }, align 32
@rcu_scale_writer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.29, ptr @.str.3, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_scale_writer._entry_ptr = internal global ptr @rcu_scale_writer._entry, section ".printk_index", align 4
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rcu_scale_writer task started\00", [34 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@t_rcu_scale_writer_started = internal global { i64, [24 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_scale_writer._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.29, ptr @.str.3, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\011%s%s rcu_scale_writer %ld has %d measurements\0A\00", [47 x i8] zeroinitializer }, align 32
@rcu_scale_writer._entry_ptr.68 = internal global ptr @rcu_scale_writer._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-scale:\00", [24 x i8] zeroinitializer }, align 32
@rcu_scale_writer.___rfd_beenhere = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_cpu_stall_suppress = external dso_local local_unnamed_addr global i32, align 4
@rcu_scale_writer._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.29, ptr @.str.3, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_scale_writer._entry_ptr.71 = internal global ptr @rcu_scale_writer._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Test complete\00", [18 x i8] zeroinitializer }, align 32
@t_rcu_scale_writer_finished = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rcu_scale_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.73, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcu_scale_cleanup\00", [46 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry_ptr = internal global ptr @rcu_scale_cleanup._entry, section ".printk_index", align 4
@.str.74 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"All grace periods expedited, no normal ones to measure!\00", [40 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.73, ptr @.str.3, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry_ptr.76 = internal global ptr @rcu_scale_cleanup._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"All grace periods normal, no expedited ones to measure!\00", [40 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.73, ptr @.str.3, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry_ptr.79 = internal global ptr @rcu_scale_cleanup._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No expedited async GPs, so went with async!\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Stopping rcu_scale_reader task\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Stopping rcu_scale_writer task\00", [33 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.73, ptr @.str.3, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\011%s%s writer %d gps: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry_ptr.85 = internal global ptr @rcu_scale_cleanup._entry.83, section ".printk_index", align 4
@rcu_scale_cleanup._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.73, ptr @.str.3, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\011%s%s start: %llu end: %llu duration: %llu gps: %d batches: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry_ptr.88 = internal global ptr @rcu_scale_cleanup._entry.86, section ".printk_index", align 4
@rcu_scale_cleanup._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.73, ptr @.str.3, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\011%s%s %4d writer-duration: %5d %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@rcu_scale_cleanup._entry_ptr.91 = internal global ptr @rcu_scale_cleanup._entry.89, section ".printk_index", align 4
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"gp_async\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 86, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"gp_async_max\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 87, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"gp_exp\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 88, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [8 x i8] c"holdoff\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 89, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [9 x i8] c"nreaders\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 90, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"nwriters\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 91, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 92, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 94, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"writer_holdoff\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 95, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"kfree_rcu_test\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 96, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"kfree_mult\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 97, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"scale_type\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 99, i32 14 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"kfree_nthreads\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 625, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"kfree_alloc_num\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 626, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"kfree_loops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 627, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"kfree_rcu_test_double\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 628, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"kfree_rcu_test_single\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 629, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 99, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"scale_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 799, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant [8 x i8] c"rcu_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 170, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant [9 x i8] c"srcu_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 227, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [10 x i8] c"srcud_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 255, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant [10 x i8] c"tasks_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 284, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"tasks_tracing_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 313, i32 29 }
@___asan_gen_.164 = private unnamed_addr constant [8 x i8] c"cur_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 144, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 813, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 814, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 816, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 817, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [13 x i8] c"nrealwriters\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 104, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant [13 x i8] c"nrealreaders\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 103, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant [27 x i8] c"n_rcu_scale_reader_started\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 111, i32 17 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"n_rcu_scale_writer_started\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 112, i32 17 }
@___asan_gen_.209 = private unnamed_addr constant [28 x i8] c"n_rcu_scale_writer_finished\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 113, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 833, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"shutdown_wq\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 114, i32 26 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 838, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 839, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant [14 x i8] c"shutdown_task\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 107, i32 28 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 841, i32 7 }
@___asan_gen_.239 = private unnamed_addr constant [13 x i8] c"reader_tasks\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 106, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 848, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 853, i32 14 }
@___asan_gen_.260 = private unnamed_addr constant [13 x i8] c"writer_tasks\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 105, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"writer_durations\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 109, i32 14 }
@___asan_gen_.266 = private unnamed_addr constant [19 x i8] c"writer_n_durations\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 110, i32 13 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 868, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 880, i32 14 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 695, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 723, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 239, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant [10 x i8] c"srcu_ctlp\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 190, i32 28 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"srcu_ctl_scale\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 189, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 189, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 268, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant [6 x i8] c"srcud\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 242, i32 27 }
@___asan_gen_.320 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 247, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 295, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 324, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"kfree_nrealthreads\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 632, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 758, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 759, i32 14 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 766, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [19 x i8] c"kfree_reader_tasks\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 631, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 776, i32 14 }
@___asan_gen_.368 = private unnamed_addr constant [29 x i8] c"n_kfree_scale_thread_started\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 633, i32 17 }
@___asan_gen_.371 = private unnamed_addr constant [27 x i8] c"n_kfree_scale_thread_ended\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 634, i32 17 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 652, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [22 x i8] c"b_rcu_gp_test_started\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 117, i32 22 }
@___asan_gen_.386 = private unnamed_addr constant [23 x i8] c"b_rcu_gp_test_finished\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 118, i32 22 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 700, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 725, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 498, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 359, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 399, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [27 x i8] c"t_rcu_scale_writer_started\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 115, i32 12 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 459, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant [16 x i8] c"___rfd_beenhere\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 464, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 465, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant [28 x i8] c"t_rcu_scale_writer_finished\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 116, i32 12 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 517, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 519, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 521, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 532, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 539, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 544, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 548, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [25 x i8] c"../kernel/rcu/rcuscale.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 566, i32 5 }
@llvm.compiler.used = appending global [208 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_gp_async296, ptr @__UNIQUE_ID_gp_async_max298, ptr @__UNIQUE_ID_gp_async_maxtype297, ptr @__UNIQUE_ID_gp_asynctype295, ptr @__UNIQUE_ID_gp_exp300, ptr @__UNIQUE_ID_gp_exptype299, ptr @__UNIQUE_ID_holdoff302, ptr @__UNIQUE_ID_holdofftype301, ptr @__UNIQUE_ID_kfree_alloc_num328, ptr @__UNIQUE_ID_kfree_alloc_numtype327, ptr @__UNIQUE_ID_kfree_loops330, ptr @__UNIQUE_ID_kfree_loopstype329, ptr @__UNIQUE_ID_kfree_mult316, ptr @__UNIQUE_ID_kfree_multtype315, ptr @__UNIQUE_ID_kfree_nthreads326, ptr @__UNIQUE_ID_kfree_nthreadstype325, ptr @__UNIQUE_ID_kfree_rcu_test314, ptr @__UNIQUE_ID_kfree_rcu_test_double332, ptr @__UNIQUE_ID_kfree_rcu_test_doubletype331, ptr @__UNIQUE_ID_kfree_rcu_test_single334, ptr @__UNIQUE_ID_kfree_rcu_test_singletype333, ptr @__UNIQUE_ID_kfree_rcu_testtype313, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_nreaders304, ptr @__UNIQUE_ID_nreaderstype303, ptr @__UNIQUE_ID_nwriters306, ptr @__UNIQUE_ID_nwriterstype305, ptr @__UNIQUE_ID_scale_type318, ptr @__UNIQUE_ID_scale_typetype317, ptr @__UNIQUE_ID_shutdown308, ptr @__UNIQUE_ID_shutdowntype307, ptr @__UNIQUE_ID_verbose310, ptr @__UNIQUE_ID_verbosetype309, ptr @__UNIQUE_ID_writer_holdoff312, ptr @__UNIQUE_ID_writer_holdofftype311, ptr @__exitcall_rcu_scale_cleanup, ptr @__initcall__kmod_rcuscale__336_898_rcu_scale_init6, ptr @__param_gp_async, ptr @__param_gp_async_max, ptr @__param_gp_exp, ptr @__param_holdoff, ptr @__param_kfree_alloc_num, ptr @__param_kfree_loops, ptr @__param_kfree_mult, ptr @__param_kfree_nthreads, ptr @__param_kfree_rcu_test, ptr @__param_kfree_rcu_test_double, ptr @__param_kfree_rcu_test_single, ptr @__param_nreaders, ptr @__param_nwriters, ptr @__param_scale_type, ptr @__param_shutdown, ptr @__param_verbose, ptr @__param_writer_holdoff, ptr @kfree_scale_init._entry, ptr @kfree_scale_init._entry_ptr, ptr @kfree_scale_thread._entry, ptr @kfree_scale_thread._entry.58, ptr @kfree_scale_thread._entry_ptr, ptr @kfree_scale_thread._entry_ptr.60, ptr @rcu_scale_cleanup._entry, ptr @rcu_scale_cleanup._entry.75, ptr @rcu_scale_cleanup._entry.78, ptr @rcu_scale_cleanup._entry.83, ptr @rcu_scale_cleanup._entry.86, ptr @rcu_scale_cleanup._entry.89, ptr @rcu_scale_cleanup._entry_ptr, ptr @rcu_scale_cleanup._entry_ptr.76, ptr @rcu_scale_cleanup._entry_ptr.79, ptr @rcu_scale_cleanup._entry_ptr.85, ptr @rcu_scale_cleanup._entry_ptr.88, ptr @rcu_scale_cleanup._entry_ptr.91, ptr @rcu_scale_init._entry, ptr @rcu_scale_init._entry.10, ptr @rcu_scale_init._entry.19, ptr @rcu_scale_init._entry.27, ptr @rcu_scale_init._entry.4, ptr @rcu_scale_init._entry.7, ptr @rcu_scale_init._entry_ptr, ptr @rcu_scale_init._entry_ptr.12, ptr @rcu_scale_init._entry_ptr.21, ptr @rcu_scale_init._entry_ptr.28, ptr @rcu_scale_init._entry_ptr.6, ptr @rcu_scale_init._entry_ptr.9, ptr @rcu_scale_print_module_parms._entry, ptr @rcu_scale_print_module_parms._entry_ptr, ptr @rcu_scale_reader._entry, ptr @rcu_scale_reader._entry_ptr, ptr @rcu_scale_writer._entry, ptr @rcu_scale_writer._entry.66, ptr @rcu_scale_writer._entry.70, ptr @rcu_scale_writer._entry_ptr, ptr @rcu_scale_writer._entry_ptr.68, ptr @rcu_scale_writer._entry_ptr.71, ptr @gp_async, ptr @gp_async_max, ptr @gp_exp, ptr @holdoff, ptr @nreaders, ptr @nwriters, ptr @shutdown, ptr @verbose, ptr @writer_holdoff, ptr @kfree_rcu_test, ptr @kfree_mult, ptr @scale_type, ptr @kfree_nthreads, ptr @kfree_alloc_num, ptr @kfree_loops, ptr @kfree_rcu_test_double, ptr @kfree_rcu_test_single, ptr @.str, ptr @rcu_scale_init.scale_ops, ptr @rcu_ops, ptr @srcu_ops, ptr @srcud_ops, ptr @tasks_ops, ptr @tasks_tracing_ops, ptr @cur_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @nrealwriters, ptr @nrealreaders, ptr @n_rcu_scale_reader_started, ptr @n_rcu_scale_writer_started, ptr @n_rcu_scale_writer_finished, ptr @.str.13, ptr @rcu_scale_init.__key, ptr @shutdown_wq, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @shutdown_task, ptr @.str.18, ptr @reader_tasks, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @writer_tasks, ptr @writer_durations, ptr @writer_n_durations, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @srcu_ctlp, ptr @srcu_ctl_scale, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @srcud, ptr @srcu_sync_scale_init.__srcu_key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @kfree_nrealthreads, ptr @kfree_scale_init.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @kfree_reader_tasks, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @n_kfree_scale_thread_started, ptr @n_kfree_scale_thread_ended, ptr @.str.56, ptr @.str.57, ptr @b_rcu_gp_test_started, ptr @b_rcu_gp_test_finished, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @t_rcu_scale_writer_started, ptr @.str.67, ptr @.str.69, ptr @rcu_scale_writer.___rfd_beenhere, ptr @.str.72, ptr @t_rcu_scale_writer_finished, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_async to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_async_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp_exp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nreaders to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwriters to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writer_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_rcu_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_mult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_nthreads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_alloc_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_loops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_rcu_test_double to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_rcu_test_single to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init.scale_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcud_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasks_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasks_tracing_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cur_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nrealwriters to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nrealreaders to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_scale_reader_started to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_scale_writer_started to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_rcu_scale_writer_finished to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writer_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writer_durations to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writer_n_durations to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ctlp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_ctl_scale to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcud to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_sync_scale_init.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_nrealthreads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_scale_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_scale_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_reader_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_kfree_scale_thread_started to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_kfree_scale_thread_ended to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_scale_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b_rcu_gp_test_started to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b_rcu_gp_test_finished to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_scale_thread._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_print_module_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_reader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_writer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_rcu_scale_writer_started to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_writer._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_writer.___rfd_beenhere to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_writer._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t_rcu_scale_writer_finished to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_cleanup._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_cleanup._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_cleanup._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_cleanup._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcu_scale_cleanup._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_scale_init() #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scale_type, align 4
  %1 = load i32, ptr @verbose, align 4
  %call = tail call zeroext i1 @torture_init_begin(ptr noundef %0, i32 noundef %1) #14
  br i1 %call, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = load ptr, ptr @scale_type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %i.0466 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [5 x ptr], ptr @rcu_scale_init.scale_ops, i32 0, i32 %i.0466
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.rcu_scale_ops, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %6) #16
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end31, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0466, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc
  store ptr %4, ptr @cur_ops, align 4
  %7 = load ptr, ptr @scale_type, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7) #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #17
  br label %do.end18

do.end18:                                         ; preds = %do.end18, %do.end
  %i.1467 = phi i32 [ 0, %do.end ], [ %inc24, %do.end18 ]
  %arrayidx20 = getelementptr [5 x ptr], ptr @rcu_scale_init.scale_ops, i32 0, i32 %i.1467
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20, align 4
  %name21 = getelementptr inbounds %struct.rcu_scale_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %11) #17
  %inc24 = add nuw nsw i32 %i.1467, 1
  %exitcond477.not = icmp eq i32 %inc24, 5
  br i1 %exitcond477.not, label %do.end28, label %do.end18

do.end28:                                         ; preds = %do.end18
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  store ptr null, ptr @cur_ops, align 4
  br label %unwind

if.end31:                                         ; preds = %for.body
  store ptr %4, ptr @cur_ops, align 4
  %init = getelementptr inbounds %struct.rcu_scale_ops, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end31
  tail call void %13() #14
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end31
  %14 = load i32, ptr @kfree_rcu_test, align 4
  %tobool35.not = icmp eq i32 %14, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call37 = tail call fastcc i32 @kfree_scale_init() #18
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %15 = load i32, ptr @nwriters, align 4
  %cmp.i = icmp sgt i32 %15, -1
  br i1 %cmp.i, label %compute_real.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %16 = load volatile i32, ptr @__num_online_cpus, align 4
  %add.i = add nsw i32 %15, 1
  %add1.i = add i32 %add.i, %16
  %17 = tail call i32 @llvm.smax.i32(i32 %add1.i, i32 1) #14
  br label %compute_real.exit

compute_real.exit:                                ; preds = %if.else.i, %if.end38
  %nr.0.i = phi i32 [ %17, %if.else.i ], [ %15, %if.end38 ]
  store i32 %nr.0.i, ptr @nrealwriters, align 4
  %18 = load i32, ptr @nreaders, align 4
  %cmp.i349 = icmp sgt i32 %18, -1
  br i1 %cmp.i349, label %compute_real.exit355, label %if.else.i353

if.else.i353:                                     ; preds = %compute_real.exit
  %call.i.i.i.i350 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %19 = load volatile i32, ptr @__num_online_cpus, align 4
  %add.i351 = add nsw i32 %18, 1
  %add1.i352 = add i32 %add.i351, %19
  %20 = tail call i32 @llvm.smax.i32(i32 %add1.i352, i32 1) #14
  br label %compute_real.exit355

compute_real.exit355:                             ; preds = %if.else.i353, %compute_real.exit
  %nr.0.i354 = phi i32 [ %20, %if.else.i353 ], [ %18, %compute_real.exit ]
  store i32 %nr.0.i354, ptr @nrealreaders, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_scale_reader_started, i32 noundef 4) #14
  store volatile i32 0, ptr @n_rcu_scale_reader_started, align 4
  %call.i.i346 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_scale_writer_started, i32 noundef 4) #14
  store volatile i32 0, ptr @n_rcu_scale_writer_started, align 4
  %call.i.i347 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_scale_writer_finished, i32 noundef 4) #14
  store volatile i32 0, ptr @n_rcu_scale_writer_finished, align 4
  %21 = load ptr, ptr @scale_type, align 4
  %22 = load i32, ptr @nrealreaders, align 4
  %23 = load i32, ptr @nrealwriters, align 4
  %24 = load i32, ptr @verbose, align 4
  %25 = load i8, ptr @shutdown, align 1, !range !349
  %26 = zext i8 %25 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %26) #17
  %27 = load i8, ptr @shutdown, align 1, !range !349
  %tobool41.not = icmp eq i8 %27, 0
  br i1 %tobool41.not, label %if.end95, label %do.body43

do.body43:                                        ; preds = %compute_real.exit355
  tail call void @__init_waitqueue_head(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull @.str.14, ptr noundef nonnull @rcu_scale_init.__key) #14
  %call46 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_scale_shutdown, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @shutdown_task) #14
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %land.rhs, label %if.end93.critedge

land.rhs:                                         ; preds = %do.body43
  %.b340 = load i1, ptr @rcu_scale_init.__already_done, align 1
  br i1 %.b340, label %unwind, label %if.then55, !prof !350

if.then55:                                        ; preds = %land.rhs
  store i1 true, ptr @rcu_scale_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 841, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call46) #14
  br label %unwind

if.end93.critedge:                                ; preds = %do.body43
  %call94 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  br label %if.end95

if.end95:                                         ; preds = %if.end93.critedge, %compute_real.exit355
  %28 = load i32, ptr @nrealreaders, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #14
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !351

kcalloc.exit.thread:                              ; preds = %if.end95
  store ptr null, ptr @reader_tasks, align 4
  br label %do.end102

if.end7.i.i:                                      ; preds = %if.end95
  %31 = extractvalue { i32, i1 } %29, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #19
  store ptr %call8.i.i, ptr @reader_tasks, align 4
  %cmp97 = icmp eq ptr %call8.i.i, null
  br i1 %cmp97, label %do.end102, label %for.cond106.preheader

for.cond106.preheader:                            ; preds = %if.end7.i.i
  %32 = load i32, ptr @nrealreaders, align 4
  %cmp107468 = icmp sgt i32 %32, 0
  br i1 %cmp107468, label %for.body109, label %while.cond.preheader

do.end102:                                        ; preds = %if.end7.i.i, %kcalloc.exit.thread
  %33 = load ptr, ptr @scale_type, align 4
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %33, ptr noundef nonnull @.str.22) #17
  br label %unwind

for.cond106:                                      ; preds = %for.body109
  %inc176 = add nuw nsw i32 %i.2469, 1
  %34 = load i32, ptr @nrealreaders, align 4
  %cmp107 = icmp slt i32 %inc176, %34
  br i1 %cmp107, label %for.body109, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond106, %for.cond106.preheader
  %call.i.i348470 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_reader_started, i32 noundef 4) #14
  %35 = load volatile i32, ptr @n_rcu_scale_reader_started, align 4
  %36 = load i32, ptr @nrealreaders, align 4
  %cmp179471 = icmp slt i32 %35, %36
  br i1 %cmp179471, label %while.body, label %while.end

for.body109:                                      ; preds = %for.cond106, %for.cond106.preheader
  %i.2469 = phi i32 [ %inc176, %for.cond106 ], [ 0, %for.cond106.preheader ]
  %37 = inttoptr i32 %i.2469 to ptr
  %38 = load ptr, ptr @reader_tasks, align 4
  %arrayidx110 = getelementptr ptr, ptr %38, i32 %i.2469
  %call111 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_scale_reader, ptr noundef %37, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %arrayidx110) #14
  %cmp114 = icmp slt i32 %call111, 0
  br i1 %cmp114, label %land.rhs123, label %for.cond106

land.rhs123:                                      ; preds = %for.body109
  %.b336339 = load i1, ptr @rcu_scale_init.__already_done.26, align 1
  br i1 %.b336339, label %unwind, label %if.then134, !prof !350

if.then134:                                       ; preds = %land.rhs123
  store i1 true, ptr @rcu_scale_init.__already_done.26, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 855, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call111) #14
  br label %unwind

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %call181 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  %call.i.i348 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_reader_started, i32 noundef 4) #14
  %39 = load volatile i32, ptr @n_rcu_scale_reader_started, align 4
  %40 = load i32, ptr @nrealreaders, align 4
  %cmp179 = icmp slt i32 %39, %40
  br i1 %cmp179, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %41 = load i32, ptr @nrealwriters, align 4
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 4) #14
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %kcalloc.exit388, label %if.end7.i.i386, !prof !351

if.end7.i.i386:                                   ; preds = %while.end
  %44 = extractvalue { i32, i1 } %42, 0
  %call8.i.i385 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #19
  br label %kcalloc.exit388

kcalloc.exit388:                                  ; preds = %if.end7.i.i386, %while.end
  %retval.0.i.i387 = phi ptr [ %call8.i.i385, %if.end7.i.i386 ], [ null, %while.end ]
  store ptr %retval.0.i.i387, ptr @writer_tasks, align 4
  %45 = load i32, ptr @nrealwriters, align 4
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #14
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %kcalloc.exit421, label %if.end7.i.i419, !prof !351

if.end7.i.i419:                                   ; preds = %kcalloc.exit388
  %48 = extractvalue { i32, i1 } %46, 0
  %call8.i.i418 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #19
  br label %kcalloc.exit421

kcalloc.exit421:                                  ; preds = %if.end7.i.i419, %kcalloc.exit388
  %retval.0.i.i420 = phi ptr [ %call8.i.i418, %if.end7.i.i419 ], [ null, %kcalloc.exit388 ]
  store ptr %retval.0.i.i420, ptr @writer_durations, align 4
  %49 = load i32, ptr @nrealwriters, align 4
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 4) #14
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %kcalloc.exit454, label %if.end7.i.i452, !prof !351

if.end7.i.i452:                                   ; preds = %kcalloc.exit421
  %52 = extractvalue { i32, i1 } %50, 0
  %call8.i.i451 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #19
  br label %kcalloc.exit454

kcalloc.exit454:                                  ; preds = %if.end7.i.i452, %kcalloc.exit421
  %retval.0.i.i453 = phi ptr [ %call8.i.i451, %if.end7.i.i452 ], [ null, %kcalloc.exit421 ]
  store ptr %retval.0.i.i453, ptr @writer_n_durations, align 4
  %53 = load ptr, ptr @writer_tasks, align 4
  %tobool185.not = icmp eq ptr %53, null
  br i1 %tobool185.not, label %do.end192, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %kcalloc.exit454
  %54 = load ptr, ptr @writer_durations, align 4
  %tobool186.not = icmp eq ptr %54, null
  %tobool188.not = icmp eq ptr %retval.0.i.i453, null
  %or.cond = select i1 %tobool186.not, i1 true, i1 %tobool188.not
  br i1 %or.cond, label %do.end192, label %for.cond196.preheader

for.cond196.preheader:                            ; preds = %lor.lhs.false
  %55 = load i32, ptr @nrealwriters, align 4
  %cmp197472 = icmp sgt i32 %55, 0
  br i1 %cmp197472, label %for.body199, label %for.end273

do.end192:                                        ; preds = %lor.lhs.false, %kcalloc.exit454
  %56 = load ptr, ptr @scale_type, align 4
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %56, ptr noundef nonnull @.str.22) #17
  br label %unwind

for.cond196:                                      ; preds = %if.end205
  %inc272 = add nuw nsw i32 %i.3473, 1
  %57 = load i32, ptr @nrealwriters, align 4
  %cmp197 = icmp slt i32 %inc272, %57
  br i1 %cmp197, label %for.body199, label %for.end273

for.body199:                                      ; preds = %for.cond196, %for.cond196.preheader
  %i.3473 = phi i32 [ %inc272, %for.cond196 ], [ 0, %for.cond196.preheader ]
  %call1.i.i.i.i458 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 80000, i32 noundef 3520, i32 noundef 5) #19
  %58 = load ptr, ptr @writer_durations, align 4
  %arrayidx201 = getelementptr ptr, ptr %58, i32 %i.3473
  %59 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call1.i.i.i.i458, ptr %arrayidx201, align 4
  %tobool203.not = icmp eq ptr %call1.i.i.i.i458, null
  br i1 %tobool203.not, label %unwind, label %if.end205

if.end205:                                        ; preds = %for.body199
  %60 = inttoptr i32 %i.3473 to ptr
  %61 = load ptr, ptr @writer_tasks, align 4
  %arrayidx206 = getelementptr ptr, ptr %61, i32 %i.3473
  %call207 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @rcu_scale_writer, ptr noundef %60, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef %arrayidx206) #14
  %cmp210 = icmp slt i32 %call207, 0
  br i1 %cmp210, label %land.rhs219, label %for.cond196

land.rhs219:                                      ; preds = %if.end205
  %.b337338 = load i1, ptr @rcu_scale_init.__already_done.32, align 1
  br i1 %.b337338, label %unwind, label %if.then230, !prof !350

if.then230:                                       ; preds = %land.rhs219
  store i1 true, ptr @rcu_scale_init.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 882, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call207) #14
  br label %unwind

for.end273:                                       ; preds = %for.cond196, %for.cond196.preheader
  tail call void @torture_init_end() #14
  br label %cleanup

unwind:                                           ; preds = %if.then230, %land.rhs219, %for.body199, %do.end192, %if.then134, %land.rhs123, %do.end102, %if.then55, %land.rhs, %do.end28
  %firsterr.0 = phi i32 [ -22, %do.end28 ], [ -12, %do.end102 ], [ -12, %do.end192 ], [ %call46, %if.then55 ], [ %call111, %if.then134 ], [ %call207, %if.then230 ], [ %call46, %land.rhs ], [ %call111, %land.rhs123 ], [ %call207, %land.rhs219 ], [ -12, %for.body199 ]
  tail call void @torture_init_end() #14
  tail call void @rcu_scale_cleanup()
  %62 = load i8, ptr @shutdown, align 1, !range !349
  %tobool274.not = icmp eq i8 %62, 0
  br i1 %tobool274.not, label %cleanup, label %do.end288

do.end288:                                        ; preds = %unwind
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 892, i32 noundef 9, ptr noundef null) #14
  tail call void @kernel_power_off() #14
  br label %cleanup

cleanup:                                          ; preds = %do.end288, %unwind, %for.end273, %if.then36, %entry
  %retval.0 = phi i32 [ %call37, %if.then36 ], [ 0, %for.end273 ], [ -16, %entry ], [ %firsterr.0, %do.end288 ], [ %firsterr.0, %unwind ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_scale_cleanup() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rcu_gp_is_expedited() #14
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @rcu_gp_is_normal() #14
  br i1 %call1, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %0 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %land.lhs.true2
  %1 = load ptr, ptr @scale_type, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %1, ptr noundef nonnull @.str.74) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true2, %land.lhs.true, %entry
  %call4 = tail call zeroext i1 @rcu_gp_is_normal() #14
  br i1 %call4, label %land.lhs.true5, label %if.end13

land.lhs.true5:                                   ; preds = %if.end
  %2 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool6.not = icmp eq i8 %2, 0
  br i1 %tobool6.not, label %if.end23, label %do.end10

do.end10:                                         ; preds = %land.lhs.true5
  %3 = load ptr, ptr @scale_type, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef nonnull @.str.77) #17
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.end
  %.pr = load i8, ptr @gp_exp, align 1
  %tobool14.not = icmp eq i8 %.pr, 0
  br i1 %tobool14.not, label %if.end23, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end13
  %4 = load i8, ptr @gp_async, align 1, !range !349
  %tobool16.not = icmp eq i8 %4, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %land.lhs.true15
  %5 = load ptr, ptr @scale_type, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %5, ptr noundef nonnull @.str.80) #17
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %land.lhs.true15, %if.end13, %land.lhs.true5
  %call24 = tail call zeroext i1 @torture_cleanup_begin() #14
  br i1 %call24, label %cleanup96, label %if.end26

if.end26:                                         ; preds = %if.end23
  %6 = load ptr, ptr @cur_ops, align 4
  %tobool27.not = icmp eq ptr %6, null
  br i1 %tobool27.not, label %cleanup96.sink.split, label %if.end29

if.end29:                                         ; preds = %if.end26
  %7 = load ptr, ptr @reader_tasks, align 4
  %tobool30.not = icmp eq ptr %7, null
  br i1 %tobool30.not, label %if.end32, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end29
  %8 = load i32, ptr @nrealreaders, align 4
  %cmp126 = icmp sgt i32 %8, 0
  br i1 %cmp126, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %i.0127 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %9 = load ptr, ptr @reader_tasks, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.0127
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.81, ptr noundef %arrayidx) #14
  %inc = add nuw nsw i32 %i.0127, 1
  %10 = load i32, ptr @nrealreaders, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %11 = load ptr, ptr @reader_tasks, align 4
  tail call void @kfree(ptr noundef %11) #14
  br label %if.end32

if.end32:                                         ; preds = %for.end, %if.end29
  %12 = load ptr, ptr @writer_tasks, align 4
  %tobool33.not = icmp eq ptr %12, null
  br i1 %tobool33.not, label %if.end91, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %if.end32
  %13 = load i32, ptr @nrealwriters, align 4
  %cmp36128 = icmp sgt i32 %13, 0
  br i1 %cmp36128, label %for.body37, label %do.end53

for.body37:                                       ; preds = %for.inc48, %for.cond35.preheader
  %i.1130 = phi i32 [ %inc49, %for.inc48 ], [ 0, %for.cond35.preheader ]
  %ngps.0129 = phi i32 [ %ngps.1, %for.inc48 ], [ 0, %for.cond35.preheader ]
  %14 = load ptr, ptr @writer_tasks, align 4
  %arrayidx38 = getelementptr ptr, ptr %14, i32 %i.1130
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.82, ptr noundef %arrayidx38) #14
  %15 = load ptr, ptr @writer_n_durations, align 4
  %tobool39.not = icmp eq ptr %15, null
  br i1 %tobool39.not, label %for.inc48, label %if.end41

if.end41:                                         ; preds = %for.body37
  %arrayidx42 = getelementptr i32, ptr %15, i32 %i.1130
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx42, align 4
  %18 = load ptr, ptr @scale_type, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %18, ptr noundef nonnull @.str.69, i32 noundef %i.1130, i32 noundef %17) #17
  %add = add i32 %17, %ngps.0129
  br label %for.inc48

for.inc48:                                        ; preds = %if.end41, %for.body37
  %ngps.1 = phi i32 [ %add, %if.end41 ], [ %ngps.0129, %for.body37 ]
  %inc49 = add nuw nsw i32 %i.1130, 1
  %19 = load i32, ptr @nrealwriters, align 4
  %cmp36 = icmp slt i32 %inc49, %19
  br i1 %cmp36, label %for.body37, label %do.end53

do.end53:                                         ; preds = %for.inc48, %for.cond35.preheader
  %ngps.0.lcssa = phi i32 [ 0, %for.cond35.preheader ], [ %ngps.1, %for.inc48 ]
  %20 = load ptr, ptr @scale_type, align 4
  %21 = load i64, ptr @t_rcu_scale_writer_started, align 8
  %22 = load i64, ptr @t_rcu_scale_writer_finished, align 8
  %sub = sub i64 %22, %21
  %23 = load i32, ptr @b_rcu_gp_test_finished, align 4
  %24 = load i32, ptr @b_rcu_gp_test_started, align 4
  %25 = load ptr, ptr @cur_ops, align 4
  %gp_diff.i = getelementptr inbounds %struct.rcu_scale_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %gp_diff.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gp_diff.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end53
  %sub.i = sub i32 %23, %24
  br label %rcuscale_seq_diff.exit

if.end.i:                                         ; preds = %do.end53
  %call.i = tail call i32 %27(i32 noundef %23, i32 noundef %24) #14
  br label %rcuscale_seq_diff.exit

rcuscale_seq_diff.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ %sub.i, %if.then.i ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %20, ptr noundef nonnull @.str.69, i64 noundef %21, i64 noundef %22, i64 noundef %sub, i32 noundef %ngps.0.lcssa, i32 noundef %retval.0.i) #17
  %28 = load i32, ptr @nrealwriters, align 4
  %cmp58135 = icmp sgt i32 %28, 0
  br i1 %cmp58135, label %for.body59, label %for.end90

for.body59:                                       ; preds = %for.inc88, %rcuscale_seq_diff.exit
  %i.2136 = phi i32 [ %inc89, %for.inc88 ], [ 0, %rcuscale_seq_diff.exit ]
  %29 = load ptr, ptr @writer_durations, align 4
  %tobool60.not = icmp eq ptr %29, null
  br i1 %tobool60.not, label %for.end90, label %if.end62

if.end62:                                         ; preds = %for.body59
  %30 = load ptr, ptr @writer_n_durations, align 4
  %tobool63.not = icmp eq ptr %30, null
  br i1 %tobool63.not, label %for.inc88, label %if.end65

if.end65:                                         ; preds = %if.end62
  %arrayidx66 = getelementptr ptr, ptr %29, i32 %i.2136
  %31 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx66, align 4
  %tobool67.not = icmp eq ptr %32, null
  br i1 %tobool67.not, label %for.inc88, label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %if.end65
  %33 = load ptr, ptr @writer_n_durations, align 4
  %arrayidx71132 = getelementptr i32, ptr %33, i32 %i.2136
  %34 = ptrtoint ptr %arrayidx71132 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx71132, align 4
  %cmp72133 = icmp sgt i32 %35, 0
  br i1 %cmp72133, label %for.body73, label %for.end86

for.body73:                                       ; preds = %for.inc84, %for.cond70.preheader
  %j.0134 = phi i32 [ %inc85, %for.inc84 ], [ 0, %for.cond70.preheader ]
  %arrayidx74 = getelementptr i64, ptr %32, i32 %j.0134
  %36 = load ptr, ptr @scale_type, align 4
  %37 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx74, align 8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %36, ptr noundef nonnull @.str.69, i32 noundef %i.2136, i32 noundef %j.0134, i64 noundef %38) #17
  %rem = urem i32 %j.0134, 100
  %cmp80 = icmp eq i32 %rem, 0
  br i1 %cmp80, label %if.then81, label %for.inc84

if.then81:                                        ; preds = %for.body73
  %call82 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  br label %for.inc84

for.inc84:                                        ; preds = %if.then81, %for.body73
  %inc85 = add nuw nsw i32 %j.0134, 1
  %39 = load ptr, ptr @writer_n_durations, align 4
  %arrayidx71 = getelementptr i32, ptr %39, i32 %i.2136
  %40 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx71, align 4
  %cmp72 = icmp slt i32 %inc85, %41
  br i1 %cmp72, label %for.body73, label %for.end86

for.end86:                                        ; preds = %for.inc84, %for.cond70.preheader
  %42 = load ptr, ptr @writer_durations, align 4
  %arrayidx87 = getelementptr ptr, ptr %42, i32 %i.2136
  %43 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx87, align 4
  tail call void @kfree(ptr noundef %44) #14
  br label %for.inc88

for.inc88:                                        ; preds = %for.end86, %if.end65, %if.end62
  %inc89 = add nuw nsw i32 %i.2136, 1
  %45 = load i32, ptr @nrealwriters, align 4
  %cmp58 = icmp slt i32 %inc89, %45
  br i1 %cmp58, label %for.body59, label %for.end90

for.end90:                                        ; preds = %for.inc88, %for.body59, %rcuscale_seq_diff.exit
  %46 = load ptr, ptr @writer_tasks, align 4
  tail call void @kfree(ptr noundef %46) #14
  %47 = load ptr, ptr @writer_durations, align 4
  tail call void @kfree(ptr noundef %47) #14
  %48 = load ptr, ptr @writer_n_durations, align 4
  tail call void @kfree(ptr noundef %48) #14
  br label %if.end91

if.end91:                                         ; preds = %for.end90, %if.end32
  %49 = load ptr, ptr @cur_ops, align 4
  %cleanup = getelementptr inbounds %struct.rcu_scale_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cleanup, align 4
  %cmp92.not = icmp eq ptr %51, null
  br i1 %cmp92.not, label %cleanup96.sink.split, label %if.then93

if.then93:                                        ; preds = %if.end91
  tail call void %51() #14
  br label %cleanup96.sink.split

cleanup96.sink.split:                             ; preds = %if.then93, %if.end91, %if.end26
  tail call void @torture_cleanup_end() #14
  br label %cleanup96

cleanup96:                                        ; preds = %cleanup96.sink.split, %if.end23
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kfree_scale_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kfree_nthreads, align 4
  %cmp.i = icmp sgt i32 %0, -1
  br i1 %cmp.i, label %compute_real.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  %add.i = add nsw i32 %0, 1
  %add1.i = add i32 %add.i, %1
  %2 = tail call i32 @llvm.smax.i32(i32 %add1.i, i32 1) #14
  br label %compute_real.exit

compute_real.exit:                                ; preds = %if.else.i, %entry
  %nr.0.i = phi i32 [ %2, %if.else.i ], [ %0, %entry ]
  store i32 %nr.0.i, ptr @kfree_nrealthreads, align 4
  %3 = load i8, ptr @shutdown, align 1, !range !349
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end50, label %do.body

do.body:                                          ; preds = %compute_real.exit
  tail call void @__init_waitqueue_head(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull @.str.14, ptr noundef nonnull @kfree_scale_init.__key) #14
  %call1 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @kfree_scale_shutdown, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @shutdown_task) #14
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.rhs, label %if.end45.critedge

land.rhs:                                         ; preds = %do.body
  %.b144 = load i1, ptr @kfree_scale_init.__already_done, align 1
  br i1 %.b144, label %unwind, label %if.then9, !prof !350

if.then9:                                         ; preds = %land.rhs
  store i1 true, ptr @kfree_scale_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 761, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call1) #14
  br label %unwind

if.end45.critedge:                                ; preds = %do.body
  %call46 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  br label %do.end50

do.end50:                                         ; preds = %if.end45.critedge, %compute_real.exit
  %4 = load i32, ptr @kfree_mult, align 4
  %mul = shl i32 %4, 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %mul) #17
  %5 = load i32, ptr @kfree_nrealthreads, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #14
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !351

kcalloc.exit.thread:                              ; preds = %do.end50
  store ptr null, ptr @kfree_reader_tasks, align 4
  br label %unwind

if.end7.i.i:                                      ; preds = %do.end50
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #19
  store ptr %call8.i.i, ptr @kfree_reader_tasks, align 4
  %cmp54 = icmp eq ptr %call8.i.i, null
  br i1 %cmp54, label %unwind, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7.i.i
  %9 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp58151 = icmp sgt i32 %9, 0
  br i1 %cmp58151, label %for.body, label %while.cond.preheader

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0152, 1
  %10 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp58 = icmp slt i32 %inc, %10
  br i1 %cmp58, label %for.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond, %for.cond.preheader
  %call.i.i153 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_kfree_scale_thread_started, i32 noundef 4) #14
  %11 = load volatile i32, ptr @n_kfree_scale_thread_started, align 4
  %12 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp125154 = icmp slt i32 %11, %12
  br i1 %cmp125154, label %while.body, label %while.end

for.body:                                         ; preds = %for.cond, %for.cond.preheader
  %i.0152 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %13 = inttoptr i32 %i.0152 to ptr
  %14 = load ptr, ptr @kfree_reader_tasks, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.0152
  %call60 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @kfree_scale_thread, ptr noundef %13, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef %arrayidx) #14
  %cmp63 = icmp slt i32 %call60, 0
  br i1 %cmp63, label %land.rhs72, label %for.cond

land.rhs72:                                       ; preds = %for.body
  %.b142143 = load i1, ptr @kfree_scale_init.__already_done.55, align 1
  br i1 %.b142143, label %unwind, label %if.then83, !prof !350

if.then83:                                        ; preds = %land.rhs72
  store i1 true, ptr @kfree_scale_init.__already_done.55, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 778, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call60) #14
  br label %unwind

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %call127 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_kfree_scale_thread_started, i32 noundef 4) #14
  %15 = load volatile i32, ptr @n_kfree_scale_thread_started, align 4
  %16 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp125 = icmp slt i32 %15, %16
  br i1 %cmp125, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  tail call void @torture_init_end() #14
  br label %cleanup

unwind:                                           ; preds = %if.then83, %land.rhs72, %if.end7.i.i, %kcalloc.exit.thread, %if.then9, %land.rhs
  %firsterr.0 = phi i32 [ %call1, %if.then9 ], [ -12, %if.end7.i.i ], [ %call60, %if.then83 ], [ %call1, %land.rhs ], [ %call60, %land.rhs72 ], [ -12, %kcalloc.exit.thread ]
  tail call void @torture_init_end() #14
  %call.i = tail call zeroext i1 @torture_cleanup_begin() #14
  br i1 %call.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %unwind
  %17 = load ptr, ptr @kfree_reader_tasks, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end2.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %18 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp5.i = icmp sgt i32 %18, 0
  br i1 %cmp5.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %i.06.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %19 = load ptr, ptr @kfree_reader_tasks, align 4
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.06.i
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.61, ptr noundef %arrayidx.i) #14
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %20 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp.i148 = icmp slt i32 %inc.i, %20
  br i1 %cmp.i148, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %for.cond.preheader.i
  %21 = load ptr, ptr @kfree_reader_tasks, align 4
  tail call void @kfree(ptr noundef %21) #14
  br label %if.end2.i

if.end2.i:                                        ; preds = %for.end.i, %if.end.i
  tail call void @torture_cleanup_end() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %unwind, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ %firsterr.0, %unwind ], [ %firsterr.0, %if.end2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_torture_create_kthread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_scale_shutdown(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 613) #14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_writer_finished, i32 noundef 4) #14
  %0 = load volatile i32, ptr @n_rcu_scale_writer_finished, align 4
  %1 = load i32, ptr @nrealwriters, align 4
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %do.end12

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call417 = call i32 @prepare_to_wait_event(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i1418 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_writer_finished, i32 noundef 4) #14
  %3 = load volatile i32, ptr @n_rcu_scale_writer_finished, align 4
  %4 = load i32, ptr @nrealwriters, align 4
  %cmp6.not19 = icmp slt i32 %3, %4
  br i1 %cmp6.not19, label %cleanup, label %for.end

cleanup:                                          ; preds = %cleanup, %if.end
  call void @schedule() #14
  %call4 = call i32 @prepare_to_wait_event(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_writer_finished, i32 noundef 4) #14
  %5 = load volatile i32, ptr @n_rcu_scale_writer_finished, align 4
  %6 = load i32, ptr @nrealwriters, align 4
  %cmp6.not = icmp slt i32 %5, %6
  br i1 %cmp6.not, label %cleanup, label %for.end

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end12

do.end12:                                         ; preds = %for.end, %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !352
  call void @rcu_scale_cleanup()
  call void @kernel_power_off() #14
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_scale_reader(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  %1 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end3, label %do.end

do.end:                                           ; preds = %entry
  %2 = load ptr, ptr @scale_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %2, ptr noundef nonnull @.str.64) #17
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %rem = urem i32 %0, %7
  %rem.i = and i32 %rem, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %rem, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call6 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %6, ptr noundef %add.ptr.i) #14
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %9, i32 noundef 19) #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_scale_reader_started, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_scale_reader_started, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_scale_reader_started, ptr nonnull @n_rcu_scale_reader_started, i32 1, ptr nonnull elementtype(i32) @n_rcu_scale_reader_started) #14, !srcloc !353
  br label %do.body9

do.body9:                                         ; preds = %do.end55, %do.end3
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !354
  %and.i67 = and i32 %11, 128
  %tobool23.not = icmp eq i32 %and.i67, 0
  br i1 %tobool23.not, label %if.then24, label %do.body40.critedge

if.then24:                                        ; preds = %do.body9
  tail call void @trace_hardirqs_off() #14
  %12 = load ptr, ptr @cur_ops, align 4
  %readlock.c = getelementptr inbounds %struct.rcu_scale_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %readlock.c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %readlock.c, align 4
  %call28.c = tail call i32 %14() #14
  %15 = load ptr, ptr @cur_ops, align 4
  %readunlock.c = getelementptr inbounds %struct.rcu_scale_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %readunlock.c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %readunlock.c, align 4
  tail call void %17(i32 noundef %call28.c) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body40

do.body40.critedge:                               ; preds = %do.body9
  %18 = load ptr, ptr @cur_ops, align 4
  %readlock.c69 = getelementptr inbounds %struct.rcu_scale_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %readlock.c69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %readlock.c69, align 4
  %call28.c70 = tail call i32 %20() #14
  %21 = load ptr, ptr @cur_ops, align 4
  %readunlock.c71 = getelementptr inbounds %struct.rcu_scale_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %readunlock.c71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %readunlock.c71, align 4
  tail call void %23(i32 noundef %call28.c70) #14
  br label %do.body40

do.body40:                                        ; preds = %do.body40.critedge, %if.then24
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !355
  %and.i.i = and i32 %24, 128
  %tobool48.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool48.not, label %if.then52, label %do.end55, !prof !351

if.then52:                                        ; preds = %do.body40
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body40
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #14, !srcloc !356
  tail call fastcc void @rcu_scale_wait_shutdown()
  %call61 = tail call zeroext i1 @torture_must_stop() #14
  br i1 %call61, label %do.end64, label %do.body9

do.end64:                                         ; preds = %do.end55
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.23) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcu_scale_writer(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  %1 = load ptr, ptr @writer_durations, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end3, label %do.end

do.end:                                           ; preds = %entry
  %5 = load ptr, ptr @scale_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %5, ptr noundef nonnull @.str.65) #17
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end17, label %if.end23, !prof !351

do.end17:                                         ; preds = %do.end3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 400, i32 noundef 9, ptr noundef null) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %do.end3
  %6 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %rem = urem i32 %0, %10
  %rem.i = and i32 %rem, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %rem, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call33 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %9, ptr noundef %add.ptr.i) #14
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo_low(ptr noundef %12) #14
  %13 = load i32, ptr @holdoff, align 4
  %tobool36.not = icmp eq i32 %13, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end23
  %mul = mul i32 %13, 100
  %call38 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %mul) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end23
  %14 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool40.not242 = icmp eq i8 %14, 0
  br i1 %tobool40.not242, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.body, %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %15 = load i32, ptr @system_state, align 4
  %cmp.not = icmp eq i32 %15, 3
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call41 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  %16 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool40.not = icmp eq i8 %16, 0
  br i1 %tobool40.not, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs, %if.end39
  %call42 = tail call i64 @ktime_get_mono_fast_ns() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_scale_writer_started, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !357
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_scale_writer_started, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_scale_writer_started, ptr nonnull @n_rcu_scale_writer_started, i32 1, ptr nonnull elementtype(i32) @n_rcu_scale_writer_started) #14, !srcloc !358
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !359
  %18 = load i32, ptr @nrealwriters, align 4
  %cmp44.not = icmp slt i32 %asmresult.i.i.i.i, %18
  br i1 %cmp44.not, label %if.end51, label %if.then45

if.then45:                                        ; preds = %while.end
  store i64 %call42, ptr @t_rcu_scale_writer_started, align 8
  %19 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool46.not = icmp eq i8 %19, 0
  %20 = load ptr, ptr @cur_ops, align 4
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.then45
  %exp_completed = getelementptr inbounds %struct.rcu_scale_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %exp_completed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %exp_completed, align 4
  %call48 = tail call i32 %22() #14
  %div226 = lshr i32 %call48, 1
  br label %if.end51.sink.split

if.else:                                          ; preds = %if.then45
  %get_gp_seq = getelementptr inbounds %struct.rcu_scale_ops, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %get_gp_seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_gp_seq, align 4
  %call49 = tail call i32 %24() #14
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.else, %if.then47
  %div226.sink = phi i32 [ %div226, %if.then47 ], [ %call49, %if.else ]
  store i32 %div226.sink, ptr @b_rcu_gp_test_started, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %while.end
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  br label %do.body52

do.body52:                                        ; preds = %if.end179, %if.end51
  %alldone.0.off0 = phi i1 [ false, %if.end51 ], [ %alldone.1.off0, %if.end179 ]
  %done.0.off0 = phi i1 [ false, %if.end51 ], [ %done.1.off0, %if.end179 ]
  %started.0.off0 = phi i1 [ false, %if.end51 ], [ %started.1.off0, %if.end179 ]
  %rhp.0 = phi ptr [ null, %if.end51 ], [ %rhp.3, %if.end179 ]
  %i.0 = phi i32 [ 0, %if.end51 ], [ %i.1, %if.end179 ]
  %25 = load i32, ptr @writer_holdoff, align 4
  %tobool53.not = icmp eq i32 %25, 0
  br i1 %tobool53.not, label %if.end60, label %cond.false58

cond.false58:                                     ; preds = %do.body52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #14
  br label %if.end60

if.end60:                                         ; preds = %cond.false58, %do.body52
  %arrayidx61 = getelementptr i64, ptr %3, i32 %i.0
  %call62 = tail call i64 @ktime_get_mono_fast_ns() #14
  %27 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call62, ptr %arrayidx61, align 8
  %28 = load i8, ptr @gp_async, align 1, !range !349
  %tobool63.not = icmp eq i8 %28, 0
  br i1 %tobool63.not, label %if.else97, label %retry

retry:                                            ; preds = %if.then93, %if.end60
  %rhp.1 = phi ptr [ %rhp.2241, %if.then93 ], [ %rhp.0, %if.end60 ]
  %tobool65.not = icmp eq ptr %rhp.1, null
  br i1 %tobool65.not, label %if.end68, label %do.body70

if.end68:                                         ; preds = %retry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 8) #20
  %tobool69.not = icmp eq ptr %call7.i, null
  br i1 %tobool69.not, label %if.else91, label %do.body70

do.body70:                                        ; preds = %if.end68, %retry
  %rhp.2240 = phi ptr [ %call7.i, %if.end68 ], [ %rhp.1, %retry ]
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %arrayidx76 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx76, align 4
  %add = add i32 %33, ptrtoint (ptr @n_async_inflight to i32)
  %34 = inttoptr i32 %add to ptr
  %call.i.i230 = tail call zeroext i1 @__kasan_check_read(ptr noundef %34, i32 noundef 4) #14
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = load i32, ptr @gp_async_max, align 4
  %cmp78 = icmp slt i32 %36, %37
  br i1 %cmp78, label %do.body80, label %if.else91

do.body80:                                        ; preds = %do.body70
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx89 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %41, ptrtoint (ptr @n_async_inflight to i32)
  %42 = inttoptr i32 %add90 to ptr
  %call.i.i231 = tail call zeroext i1 @__kasan_check_write(ptr noundef %42, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %42, i32 1, i32 3, i32 1) #14
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #14, !srcloc !353
  %44 = load ptr, ptr @cur_ops, align 4
  %async = getelementptr inbounds %struct.rcu_scale_ops, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %async, align 4
  tail call void %46(ptr noundef nonnull %rhp.2240, ptr noundef nonnull @rcu_scale_async_cb) #14
  br label %if.end102

if.else91:                                        ; preds = %do.body70, %if.end68
  %rhp.2241 = phi ptr [ %rhp.2240, %do.body70 ], [ null, %if.end68 ]
  %call92 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call92, label %if.else94, label %if.then93

if.then93:                                        ; preds = %if.else91
  %47 = load ptr, ptr @cur_ops, align 4
  %gp_barrier = getelementptr inbounds %struct.rcu_scale_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %gp_barrier to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gp_barrier, align 4
  tail call void %49() #14
  br label %retry

if.else94:                                        ; preds = %if.else91
  tail call void @kfree(ptr noundef %rhp.2241) #14
  br label %if.end102

if.else97:                                        ; preds = %if.end60
  %50 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool98.not = icmp eq i8 %50, 0
  %51 = load ptr, ptr @cur_ops, align 4
  br i1 %tobool98.not, label %if.else100, label %if.then99

if.then99:                                        ; preds = %if.else97
  %exp_sync = getelementptr inbounds %struct.rcu_scale_ops, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %exp_sync to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %exp_sync, align 4
  tail call void %53() #14
  br label %if.end102

if.else100:                                       ; preds = %if.else97
  %sync = getelementptr inbounds %struct.rcu_scale_ops, ptr %51, i32 0, i32 10
  %54 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sync, align 4
  tail call void %55() #14
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then99, %if.else94, %do.body80
  %rhp.3 = phi ptr [ null, %do.body80 ], [ %rhp.2241, %if.else94 ], [ %rhp.0, %if.then99 ], [ %rhp.0, %if.else100 ]
  %call103 = tail call i64 @ktime_get_mono_fast_ns() #14
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx61, align 8
  %sub = sub i64 %call103, %57
  store i64 %sub, ptr %arrayidx61, align 8
  br i1 %started.0.off0, label %if.end109, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.end102
  %call.i.i232 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_writer_started, i32 noundef 4) #14
  %58 = load volatile i32, ptr @n_rcu_scale_writer_started, align 4
  %59 = load i32, ptr @nrealwriters, align 4
  %cmp107.not = icmp sge i32 %58, %59
  br label %if.end109

if.end109:                                        ; preds = %land.lhs.true105, %if.end102
  %started.1.off0 = phi i1 [ true, %if.end102 ], [ %cmp107.not, %land.lhs.true105 ]
  %done.0.off0.not = xor i1 %done.0.off0, true
  %cmp112 = icmp sgt i32 %i.0, 99
  %or.cond = select i1 %done.0.off0.not, i1 %cmp112, i1 false
  br i1 %or.cond, label %if.then113, label %if.end171

if.then113:                                       ; preds = %if.end109
  %60 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task, align 8
  tail call void @sched_set_normal(ptr noundef %61, i32 noundef 0) #14
  %62 = load ptr, ptr @scale_type, align 4
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %62, ptr noundef nonnull @.str.69, i32 noundef %0, i32 noundef 100) #17
  %call.i.i233 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_rcu_scale_writer_finished, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !357
  tail call void @llvm.prefetch.p0(ptr nonnull @n_rcu_scale_writer_finished, i32 1, i32 3, i32 1) #14
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_rcu_scale_writer_finished, ptr nonnull @n_rcu_scale_writer_finished, i32 1, ptr nonnull elementtype(i32) @n_rcu_scale_writer_finished) #14, !srcloc !358
  %asmresult.i.i.i.i234 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !359
  %64 = load i32, ptr @nrealwriters, align 4
  %cmp122.not = icmp slt i32 %asmresult.i.i.i.i234, %64
  br i1 %cmp122.not, label %if.end171, label %if.then123

if.then123:                                       ; preds = %if.then113
  %call124 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #14
  %call.i.i235 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rcu_scale_writer.___rfd_beenhere, i32 noundef 4) #14
  %65 = load volatile i32, ptr @rcu_scale_writer.___rfd_beenhere, align 4
  %tobool127.not = icmp eq i32 %65, 0
  br i1 %tobool127.not, label %land.lhs.true128, label %do.end149

land.lhs.true128:                                 ; preds = %if.then123
  %call.i.i236 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rcu_scale_writer.___rfd_beenhere, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !360
  tail call void @llvm.prefetch.p0(ptr nonnull @rcu_scale_writer.___rfd_beenhere, i32 1, i32 3, i32 1) #14
  %66 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @rcu_scale_writer.___rfd_beenhere) #14, !srcloc !361
  %asmresult.i.i = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !362
  %tobool130.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool130.not, label %if.then131, label %do.end149

if.then131:                                       ; preds = %land.lhs.true128
  tail call void @tracing_off() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %67 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %tobool133.not = icmp eq i32 %67, 0
  br i1 %tobool133.not, label %if.then134, label %do.end137

if.then134:                                       ; preds = %if.then131
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %if.then131
  tail call void @ftrace_dump(i32 noundef 1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %68 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %cmp139 = icmp eq i32 %68, 3
  br i1 %cmp139, label %if.then140, label %do.end149

if.then140:                                       ; preds = %do.end137
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end149

do.end149:                                        ; preds = %if.then140, %do.end137, %land.lhs.true128, %if.then123
  %69 = load ptr, ptr @scale_type, align 4
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %69, ptr noundef nonnull @.str.72) #17
  store i64 %call103, ptr @t_rcu_scale_writer_finished, align 8
  %70 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool152.not = icmp eq i8 %70, 0
  %71 = load ptr, ptr @cur_ops, align 4
  br i1 %tobool152.not, label %if.else157, label %if.then153

if.then153:                                       ; preds = %do.end149
  %exp_completed154 = getelementptr inbounds %struct.rcu_scale_ops, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %exp_completed154 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %exp_completed154, align 4
  %call155 = tail call i32 %73() #14
  %div156225 = lshr i32 %call155, 1
  br label %if.end160

if.else157:                                       ; preds = %do.end149
  %get_gp_seq158 = getelementptr inbounds %struct.rcu_scale_ops, ptr %71, i32 0, i32 5
  %74 = ptrtoint ptr %get_gp_seq158 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_gp_seq158, align 4
  %call159 = tail call i32 %75() #14
  br label %if.end160

if.end160:                                        ; preds = %if.else157, %if.then153
  %storemerge = phi i32 [ %call159, %if.else157 ], [ %div156225, %if.then153 ]
  store i32 %storemerge, ptr @b_rcu_gp_test_finished, align 4
  %76 = load i8, ptr @shutdown, align 1, !range !349
  %tobool161.not = icmp eq i8 %76, 0
  br i1 %tobool161.not, label %if.end171, label %do.end166

do.end166:                                        ; preds = %if.end160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @__wake_up(ptr noundef nonnull @shutdown_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end171

if.end171:                                        ; preds = %do.end166, %if.end160, %if.then113, %if.end109
  %done.1.off0 = phi i1 [ %done.0.off0, %if.end109 ], [ true, %do.end166 ], [ true, %if.end160 ], [ true, %if.then113 ]
  %done.1.off0.not = xor i1 %done.1.off0, true
  %brmerge = select i1 %done.1.off0.not, i1 true, i1 %alldone.0.off0
  br i1 %brmerge, label %if.end179, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %if.end171
  %call.i.i237 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_writer_finished, i32 noundef 4) #14
  %77 = load volatile i32, ptr @n_rcu_scale_writer_finished, align 4
  %78 = load i32, ptr @nrealwriters, align 4
  %cmp177.not = icmp sge i32 %77, %78
  br label %if.end179

if.end179:                                        ; preds = %land.lhs.true175, %if.end171
  %alldone.1.off0 = phi i1 [ %alldone.0.off0, %if.end171 ], [ %cmp177.not, %land.lhs.true175 ]
  %alldone.1.off0.not = xor i1 %alldone.1.off0, true
  %brmerge228.not = select i1 %started.1.off0, i1 %alldone.1.off0.not, i1 false
  %cmp184 = icmp slt i32 %i.0, 9999
  %or.cond229 = select i1 %brmerge228.not, i1 %cmp184, i1 false
  %inc = add i32 %i.0, 1
  %i.1 = select i1 %or.cond229, i32 %inc, i32 %i.0
  tail call fastcc void @rcu_scale_wait_shutdown()
  %call188 = tail call zeroext i1 @torture_must_stop() #14
  br i1 %call188, label %do.end191, label %do.body52

do.end191:                                        ; preds = %if.end179
  %79 = load i8, ptr @gp_async, align 1, !range !349
  %tobool192.not = icmp eq i8 %79, 0
  br i1 %tobool192.not, label %if.end195, label %if.then193

if.then193:                                       ; preds = %do.end191
  %80 = load ptr, ptr @cur_ops, align 4
  %gp_barrier194 = getelementptr inbounds %struct.rcu_scale_ops, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %gp_barrier194 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %gp_barrier194, align 4
  tail call void %82() #14
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %do.end191
  %83 = load ptr, ptr @writer_n_durations, align 4
  %arrayidx197 = getelementptr i32, ptr %83, i32 %0
  %84 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %inc, ptr %arrayidx197, align 4
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.29) #14
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
define internal i32 @rcu_scale_read_lock() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !364
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_scale_read_unlock(i32 noundef %idx) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %rcu_read_unlock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_unlock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_unlock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %entry
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !365
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_get_gp_seq() #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcu_seq_diff(i32 noundef %new, i32 noundef %old) #7 align 64 {
entry:
  %cmp = icmp eq i32 %old, %new
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %new, -4
  %add = add i32 %old, 3
  %and1 = and i32 %add, -4
  %sub = sub i32 %and, %and1
  %add5 = add i32 %sub, -4
  %cmp7 = icmp slt i32 %add5, 0
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %shr = lshr exact i32 %add5, 2
  %add12 = add nuw nsw i32 %shr, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end, %entry
  %retval.0 = phi i32 [ %add12, %if.end9 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_exp_batches_completed() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #8 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #8 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_scale_read_lock() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %0) #14
  %dep_map.i = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_scale_read_unlock(i32 noundef %idx) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %tobool.not.i = icmp ult i32 %idx, 2
  br i1 %tobool.not.i, label %srcu_read_unlock.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %srcu_read_unlock.exit, label %if.then.i, !prof !350

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 189, i32 noundef 9, ptr noundef null) #14
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i, %entry
  %dep_map.i = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #14
  tail call void @__srcu_read_unlock(ptr noundef %0, i32 noundef %idx) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_scale_completed() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  %call = tail call i32 @srcu_batches_completed(ptr noundef %0) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_call_rcu(ptr noundef %head, ptr noundef %func) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @call_srcu(ptr noundef %0, ptr noundef %head, ptr noundef %func) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_rcu_barrier() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @srcu_barrier(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_scale_synchronize() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @synchronize_srcu(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_scale_synchronize_expedited() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @synchronize_srcu_expedited(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_batches_completed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_barrier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu_expedited(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_sync_scale_init() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @srcud, ptr @srcu_ctlp, align 4
  %call = tail call i32 @__init_srcu_struct(ptr noundef nonnull @srcud, ptr noundef nonnull @.str.43, ptr noundef nonnull @srcu_sync_scale_init.__srcu_key) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_sync_scale_cleanup() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @srcu_ctlp, align 4
  tail call void @cleanup_srcu_struct(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__init_srcu_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tasks_scale_read_lock() #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tasks_scale_read_unlock(i32 noundef %idx) #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcu_no_completed() #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier_tasks() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_tasks() #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tasks_trace_scale_read_lock() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !366
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %need_mb.i = getelementptr inbounds %struct.anon.30, ptr %trc_reader_special.i, i32 0, i32 3
  %6 = ptrtoint ptr %need_mb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_mb.i, align 1
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %rcu_read_lock_trace.exit, label %do.end14.i

do.end14.i:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !367
  br label %rcu_read_lock_trace.exit

rcu_read_lock_trace.exit:                         ; preds = %do.end14.i, %entry
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_trace_lock_map) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tasks_trace_scale_read_unlock(i32 noundef %idx) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_trace_lock_map) #14
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting.i, align 4
  %sub.i = add i32 %5, -1
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !368
  %6 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -2147483648, ptr %trc_reader_nesting.i, align 4
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %7 = ptrtoint ptr %trc_reader_special.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %trc_reader_special.i, align 4
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.body23.i, label %lor.lhs.false.i, !prof !350

lor.lhs.false.i:                                  ; preds = %entry
  %tobool18.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool18.not.i, label %if.end69.i, label %do.body23.i

do.body23.i:                                      ; preds = %lor.lhs.false.i, %entry
  %9 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %sub.i, ptr %trc_reader_nesting.i, align 4
  br label %rcu_read_unlock_trace.exit

if.end69.i:                                       ; preds = %lor.lhs.false.i
  tail call void @rcu_read_unlock_trace_special(ptr noundef %3) #14
  br label %rcu_read_unlock_trace.exit

rcu_read_unlock_trace.exit:                       ; preds = %if.end69.i, %do.body23.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks_trace(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier_tasks_trace() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_tasks_trace() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_trace_special(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kfree_scale_shutdown(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 740) #14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_kfree_scale_thread_ended, i32 noundef 4) #14
  %0 = load volatile i32, ptr @n_kfree_scale_thread_ended, align 4
  %1 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %do.end12

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call417 = call i32 @prepare_to_wait_event(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i1418 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_kfree_scale_thread_ended, i32 noundef 4) #14
  %3 = load volatile i32, ptr @n_kfree_scale_thread_ended, align 4
  %4 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp6.not19 = icmp slt i32 %3, %4
  br i1 %cmp6.not19, label %cleanup, label %for.end

cleanup:                                          ; preds = %cleanup, %if.end
  call void @schedule() #14
  %call4 = call i32 @prepare_to_wait_event(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_kfree_scale_thread_ended, i32 noundef 4) #14
  %5 = load volatile i32, ptr @n_kfree_scale_thread_ended, align 4
  %6 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp6.not = icmp slt i32 %5, %6
  br i1 %cmp6.not, label %cleanup, label %for.end

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(ptr noundef nonnull @shutdown_wq, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end12

do.end12:                                         ; preds = %for.end, %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !369
  %call.i = call zeroext i1 @torture_cleanup_begin() #14
  br i1 %call.i, label %kfree_scale_cleanup.exit, label %if.end.i

if.end.i:                                         ; preds = %do.end12
  %7 = load ptr, ptr @kfree_reader_tasks, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end2.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %8 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp5.i = icmp sgt i32 %8, 0
  br i1 %cmp5.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %i.06.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %9 = load ptr, ptr @kfree_reader_tasks, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.06.i
  call void @_torture_stop_kthread(ptr noundef nonnull @.str.61, ptr noundef %arrayidx.i) #14
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %10 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %for.cond.preheader.i
  %11 = load ptr, ptr @kfree_reader_tasks, align 4
  call void @kfree(ptr noundef %11) #14
  br label %if.end2.i

if.end2.i:                                        ; preds = %for.end.i, %if.end.i
  call void @torture_cleanup_end() #14
  br label %kfree_scale_cleanup.exit

kfree_scale_cleanup.exit:                         ; preds = %if.end2.i, %do.end12
  call void @kernel_power_off() #14
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kfree_scale_thread(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tr = alloca %struct.torture_random_state, align 8
  %0 = ptrtoint ptr %arg to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tr) #14
  %1 = ptrtoint ptr %tr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %tr, align 8
  %2 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end3, label %do.end

do.end:                                           ; preds = %entry
  %3 = load ptr, ptr @scale_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %3, ptr noundef nonnull @.str.57) #17
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %rem = urem i32 %0, %8
  %rem.i = and i32 %rem, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %rem, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call6 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %7, ptr noundef %add.ptr.i) #14
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %10, i32 noundef 19) #14
  %11 = load i8, ptr @kfree_rcu_test_single, align 1, !range !349
  %12 = load i8, ptr @kfree_rcu_test_double, align 1, !range !349
  %cmp = icmp eq i8 %11, %12
  %call13 = tail call i64 @ktime_get_mono_fast_ns() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_kfree_scale_thread_started, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !357
  tail call void @llvm.prefetch.p0(ptr nonnull @n_kfree_scale_thread_started, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_kfree_scale_thread_started, ptr nonnull @n_kfree_scale_thread_started, i32 1, ptr nonnull elementtype(i32) @n_kfree_scale_thread_started) #14, !srcloc !358
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !359
  %14 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp15.not = icmp slt i32 %asmresult.i.i.i.i, %14
  br i1 %cmp15.not, label %do.body24.preheader, label %if.then17

if.then17:                                        ; preds = %do.end3
  %15 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool18.not = icmp eq i8 %15, 0
  %16 = load ptr, ptr @cur_ops, align 4
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then17
  %exp_completed = getelementptr inbounds %struct.rcu_scale_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %exp_completed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %exp_completed, align 4
  %call20 = tail call i32 %18() #14
  %div130 = lshr i32 %call20, 1
  br label %if.end23.sink.split

if.else:                                          ; preds = %if.then17
  %get_gp_seq = getelementptr inbounds %struct.rcu_scale_ops, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %get_gp_seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_gp_seq, align 4
  %call21 = tail call i32 %20() #14
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.else, %if.then19
  %div130.sink = phi i32 [ %div130, %if.then19 ], [ %call21, %if.else ]
  store i32 %div130.sink, ptr @b_rcu_gp_test_started, align 4
  br label %do.body24.preheader

do.body24.preheader:                              ; preds = %if.end23.sink.split, %do.end3
  br label %do.body24

do.body24:                                        ; preds = %land.rhs, %do.body24.preheader
  %mem_begin.0 = phi i64 [ %mem_begin.1, %land.rhs ], [ -1, %do.body24.preheader ]
  %mem_during.0 = phi i64 [ %mem_during.1, %land.rhs ], [ 0, %do.body24.preheader ]
  %loop.0 = phi i32 [ %inc77, %land.rhs ], [ 0, %do.body24.preheader ]
  %tobool25.not = icmp eq i64 %mem_during.0, 0
  br i1 %tobool25.not, label %if.then26, label %if.else29

if.then26:                                        ; preds = %do.body24
  %call27 = call i32 @si_mem_available() #14
  %conv28 = sext i32 %call27 to i64
  br label %if.end39

if.else29:                                        ; preds = %do.body24
  %21 = load i32, ptr @kfree_loops, align 4
  %div30 = sdiv i32 %21, 4
  %rem31 = srem i32 %loop.0, %div30
  %cmp32 = icmp eq i32 %rem31, 0
  br i1 %cmp32, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.else29
  %call35 = call i32 @si_mem_available() #14
  %conv36 = sext i32 %call35 to i64
  %add = add i64 %mem_during.0, %conv36
  %div37 = sdiv i64 %add, 2
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.else29, %if.then26
  %mem_begin.1 = phi i64 [ %mem_begin.0, %if.then34 ], [ %mem_begin.0, %if.else29 ], [ %conv28, %if.then26 ]
  %mem_during.1 = phi i64 [ %div37, %if.then34 ], [ %mem_during.0, %if.else29 ], [ %conv28, %if.then26 ]
  %22 = load i32, ptr @kfree_alloc_num, align 4
  %cmp40142 = icmp sgt i32 %22, 0
  br i1 %cmp40142, label %if.end8.i, label %for.end

if.end8.i:                                        ; preds = %for.inc, %if.end39
  %i.0143 = phi i32 [ %inc, %for.inc ], [ 0, %if.end39 ]
  %23 = load i32, ptr @kfree_mult, align 4
  %mul = shl i32 %23, 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #19
  %tobool43.not = icmp eq ptr %call9.i, null
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end8.i
  %24 = load i8, ptr @kfree_rcu_test_single, align 1, !range !349
  %tobool46.not = icmp eq i8 %24, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end45
  %25 = load i8, ptr @kfree_rcu_test_double, align 1, !range !349
  %tobool48.not = icmp eq i8 %25, 0
  br i1 %tobool48.not, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end45
  br i1 %cmp, label %land.lhs.true51, label %do.end68

land.lhs.true51:                                  ; preds = %lor.lhs.false
  %call52 = call i32 @torture_random(ptr noundef nonnull %tr) #14
  %and = and i32 %call52, 2048
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %do.end68, label %if.then57

if.then57:                                        ; preds = %land.lhs.true51, %land.lhs.true
  call void @kvfree_call_rcu(ptr noundef null, ptr noundef nonnull %call9.i) #14
  br label %for.inc

do.end68:                                         ; preds = %land.lhs.true51, %lor.lhs.false
  %rh = getelementptr inbounds %struct.kfree_obj, ptr %call9.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rh, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end68, %if.then57
  %inc = add nuw nsw i32 %i.0143, 1
  %26 = load i32, ptr @kfree_alloc_num, align 4
  %cmp40 = icmp slt i32 %inc, %26
  br i1 %cmp40, label %if.end8.i, label %for.end

for.end:                                          ; preds = %for.inc, %if.end39
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 689, i32 noundef 0) #14
  %call.i = call i32 @__cond_resched() #14
  %call76 = call zeroext i1 @torture_must_stop() #14
  br i1 %call76, label %do.end80, label %land.rhs

land.rhs:                                         ; preds = %for.end
  %inc77 = add nuw nsw i32 %loop.0, 1
  %27 = load i32, ptr @kfree_loops, align 4
  %cmp78 = icmp slt i32 %inc77, %27
  br i1 %cmp78, label %do.body24, label %do.end80

do.end80:                                         ; preds = %land.rhs, %for.end
  %call.i.i131 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_kfree_scale_thread_ended, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !357
  call void @llvm.prefetch.p0(ptr nonnull @n_kfree_scale_thread_ended, i32 1, i32 3, i32 1) #14
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_kfree_scale_thread_ended, ptr nonnull @n_kfree_scale_thread_ended, i32 1, ptr nonnull elementtype(i32) @n_kfree_scale_thread_ended) #14, !srcloc !358
  %asmresult.i.i.i.i132 = extractvalue { i32, i32 } %28, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !359
  %29 = load i32, ptr @kfree_nrealthreads, align 4
  %cmp82.not = icmp slt i32 %asmresult.i.i.i.i132, %29
  br i1 %cmp82.not, label %if.end111, label %if.then84

if.then84:                                        ; preds = %do.end80
  %call85 = call i64 @ktime_get_mono_fast_ns() #14
  %30 = load i8, ptr @gp_exp, align 1, !range !349
  %tobool86.not = icmp eq i8 %30, 0
  %31 = load ptr, ptr @cur_ops, align 4
  br i1 %tobool86.not, label %if.else91, label %if.then87

if.then87:                                        ; preds = %if.then84
  %exp_completed88 = getelementptr inbounds %struct.rcu_scale_ops, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %exp_completed88 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %exp_completed88, align 4
  %call89 = call i32 %33() #14
  %div90129 = lshr i32 %call89, 1
  br label %do.end97

if.else91:                                        ; preds = %if.then84
  %get_gp_seq92 = getelementptr inbounds %struct.rcu_scale_ops, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %get_gp_seq92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_gp_seq92, align 4
  %call93 = call i32 %35() #14
  br label %do.end97

do.end97:                                         ; preds = %if.else91, %if.then87
  %storemerge = phi i32 [ %call93, %if.else91 ], [ %div90129, %if.then87 ]
  store i32 %storemerge, ptr @b_rcu_gp_test_finished, align 4
  %sub = sub i64 %call85, %call13
  %36 = load i32, ptr @kfree_loops, align 4
  %37 = load i32, ptr @b_rcu_gp_test_started, align 4
  %38 = load ptr, ptr @cur_ops, align 4
  %gp_diff.i = getelementptr inbounds %struct.rcu_scale_ops, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %gp_diff.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gp_diff.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then.i133, label %if.end.i135

if.then.i133:                                     ; preds = %do.end97
  %sub.i = sub i32 %storemerge, %37
  br label %rcuscale_seq_diff.exit

if.end.i135:                                      ; preds = %do.end97
  %call.i134 = call i32 %40(i32 noundef %storemerge, i32 noundef %37) #14
  br label %rcuscale_seq_diff.exit

rcuscale_seq_diff.exit:                           ; preds = %if.end.i135, %if.then.i133
  %retval.0.i = phi i32 [ %call.i134, %if.end.i135 ], [ %sub.i, %if.then.i133 ]
  %sub100 = sub i64 %mem_begin.1, %mem_during.1
  %shr = ashr i64 %sub100, 8
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i64 noundef %sub, i32 noundef %36, i32 noundef %retval.0.i, i64 noundef %shr) #17
  %41 = load i8, ptr @shutdown, align 1, !range !349
  %tobool102.not = icmp eq i8 %41, 0
  br i1 %tobool102.not, label %if.end111, label %do.end107

do.end107:                                        ; preds = %rcuscale_seq_diff.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !370
  call void @__wake_up(ptr noundef nonnull @shutdown_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end111

if.end111:                                        ; preds = %do.end107, %rcuscale_seq_diff.exit, %do.end80
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.52) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %if.end8.i
  %retval.0 = phi i32 [ 0, %if.end111 ], [ -12, %if.end8.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tr) #14
  ret i32 %retval.0
}

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
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_mem_available() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_random(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_must_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_kthread_stopping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_cleanup_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_torture_stop_kthread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_cleanup_end() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_scale_wait_shutdown() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %rcu_tasks_holdout = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %rcu_tasks_holdout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %rcu_tasks_holdout, align 4
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end16, label %do.body7

do.body7:                                         ; preds = %entry
  %6 = ptrtoint ptr %rcu_tasks_holdout to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 0, ptr %rcu_tasks_holdout, align 4
  br label %do.end16

do.end16:                                         ; preds = %do.body7, %entry
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %trc_reader_checked = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 47
  %9 = ptrtoint ptr %trc_reader_checked to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %trc_reader_checked, align 64, !range !349
  %tobool20.not = icmp eq i8 %10, 0
  br i1 %tobool20.not, label %do.end25, label %do.end60, !prof !351

do.end25:                                         ; preds = %do.end16
  %trc_reader_nesting = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 44
  %11 = ptrtoint ptr %trc_reader_nesting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %trc_reader_nesting, align 4
  %tobool29.not = icmp eq i32 %12, 0
  br i1 %tobool29.not, label %do.end42, label %do.end60, !prof !350

do.end42:                                         ; preds = %do.end25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !371
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %trc_reader_checked49 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %trc_reader_checked49 to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 1, ptr %trc_reader_checked49, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !372
  br label %do.end60

do.end60:                                         ; preds = %do.end42, %do.end25, %do.end16
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 339, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_rcu_scale_writer_finished, i32 noundef 4) #14
  %16 = load volatile i32, ptr @n_rcu_scale_writer_finished, align 4
  %17 = load i32, ptr @nrealwriters, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %while.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end60
  %call6872 = tail call zeroext i1 @torture_must_stop() #14
  br i1 %call6872, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %call71 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  %call68 = tail call zeroext i1 @torture_must_stop() #14
  br i1 %call68, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader, %do.end60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_scale_async_cb(ptr noundef %rhp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @n_async_inflight to i32)
  %6 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #14, !srcloc !373
  tail call void @kfree(ptr noundef %rhp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_normal(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_expedited() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_normal() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !109, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !123, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !166, !167, !169, !170, !171, !173, !175, !177, !178, !179, !181, !182, !184, !186, !188, !189, !190, !191, !192, !193, !195, !196, !198, !200, !202, !203, !205, !207, !209, !211, !213, !215, !216, !218, !220, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !235, !237, !239, !241, !243, !245, !246, !247, !248, !250, !251, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !273, !274, !275, !277, !279, !281, !283, !284, !285, !287, !289, !291, !293, !294, !295, !297, !298, !299, !300, !302, !304, !305, !306, !308, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !327, !329, !330, !331, !333, !334, !335, !337, !338}
!llvm.named.register.sp = !{!339}
!llvm.module.flags = !{!340, !341, !342, !343, !344, !345, !346, !347}
!llvm.ident = !{!348}

!0 = !{ptr @__UNIQUE_ID_file292, !1, !"__UNIQUE_ID_file292", i1 false, i1 false}
!1 = !{!"../kernel/rcu/rcuscale.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_license293, !1, !"__UNIQUE_ID_license293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../kernel/rcu/rcuscale.c", i32 46, i32 1}
!5 = !{ptr @__param_gp_async, !6, !"__param_gp_async", i1 false, i1 false}
!6 = !{!"../kernel/rcu/rcuscale.c", i32 86, i32 1}
!7 = !{ptr @__UNIQUE_ID_gp_asynctype295, !6, !"__UNIQUE_ID_gp_asynctype295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_gp_async296, !6, !"__UNIQUE_ID_gp_async296", i1 false, i1 false}
!9 = !{ptr @__param_gp_async_max, !10, !"__param_gp_async_max", i1 false, i1 false}
!10 = !{!"../kernel/rcu/rcuscale.c", i32 87, i32 1}
!11 = !{ptr @__UNIQUE_ID_gp_async_maxtype297, !10, !"__UNIQUE_ID_gp_async_maxtype297", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_gp_async_max298, !10, !"__UNIQUE_ID_gp_async_max298", i1 false, i1 false}
!13 = !{ptr @__param_gp_exp, !14, !"__param_gp_exp", i1 false, i1 false}
!14 = !{!"../kernel/rcu/rcuscale.c", i32 88, i32 1}
!15 = !{ptr @__UNIQUE_ID_gp_exptype299, !14, !"__UNIQUE_ID_gp_exptype299", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_gp_exp300, !14, !"__UNIQUE_ID_gp_exp300", i1 false, i1 false}
!17 = !{ptr @__param_holdoff, !18, !"__param_holdoff", i1 false, i1 false}
!18 = !{!"../kernel/rcu/rcuscale.c", i32 89, i32 1}
!19 = !{ptr @__UNIQUE_ID_holdofftype301, !18, !"__UNIQUE_ID_holdofftype301", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_holdoff302, !18, !"__UNIQUE_ID_holdoff302", i1 false, i1 false}
!21 = !{ptr @__param_nreaders, !22, !"__param_nreaders", i1 false, i1 false}
!22 = !{!"../kernel/rcu/rcuscale.c", i32 90, i32 1}
!23 = !{ptr @__UNIQUE_ID_nreaderstype303, !22, !"__UNIQUE_ID_nreaderstype303", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_nreaders304, !22, !"__UNIQUE_ID_nreaders304", i1 false, i1 false}
!25 = !{ptr @__param_nwriters, !26, !"__param_nwriters", i1 false, i1 false}
!26 = !{!"../kernel/rcu/rcuscale.c", i32 91, i32 1}
!27 = !{ptr @__UNIQUE_ID_nwriterstype305, !26, !"__UNIQUE_ID_nwriterstype305", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_nwriters306, !26, !"__UNIQUE_ID_nwriters306", i1 false, i1 false}
!29 = !{ptr @__param_shutdown, !30, !"__param_shutdown", i1 false, i1 false}
!30 = !{!"../kernel/rcu/rcuscale.c", i32 92, i32 1}
!31 = !{ptr @__UNIQUE_ID_shutdowntype307, !30, !"__UNIQUE_ID_shutdowntype307", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_shutdown308, !30, !"__UNIQUE_ID_shutdown308", i1 false, i1 false}
!33 = !{ptr @__param_verbose, !34, !"__param_verbose", i1 false, i1 false}
!34 = !{!"../kernel/rcu/rcuscale.c", i32 94, i32 1}
!35 = !{ptr @__UNIQUE_ID_verbosetype309, !34, !"__UNIQUE_ID_verbosetype309", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_verbose310, !34, !"__UNIQUE_ID_verbose310", i1 false, i1 false}
!37 = !{ptr @__param_writer_holdoff, !38, !"__param_writer_holdoff", i1 false, i1 false}
!38 = !{!"../kernel/rcu/rcuscale.c", i32 95, i32 1}
!39 = !{ptr @__UNIQUE_ID_writer_holdofftype311, !38, !"__UNIQUE_ID_writer_holdofftype311", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_writer_holdoff312, !38, !"__UNIQUE_ID_writer_holdoff312", i1 false, i1 false}
!41 = !{ptr @__param_kfree_rcu_test, !42, !"__param_kfree_rcu_test", i1 false, i1 false}
!42 = !{!"../kernel/rcu/rcuscale.c", i32 96, i32 1}
!43 = !{ptr @__UNIQUE_ID_kfree_rcu_testtype313, !42, !"__UNIQUE_ID_kfree_rcu_testtype313", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_kfree_rcu_test314, !42, !"__UNIQUE_ID_kfree_rcu_test314", i1 false, i1 false}
!45 = !{ptr @__param_kfree_mult, !46, !"__param_kfree_mult", i1 false, i1 false}
!46 = !{!"../kernel/rcu/rcuscale.c", i32 97, i32 1}
!47 = !{ptr @__UNIQUE_ID_kfree_multtype315, !46, !"__UNIQUE_ID_kfree_multtype315", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_kfree_mult316, !46, !"__UNIQUE_ID_kfree_mult316", i1 false, i1 false}
!49 = !{ptr @__param_scale_type, !50, !"__param_scale_type", i1 false, i1 false}
!50 = !{!"../kernel/rcu/rcuscale.c", i32 100, i32 1}
!51 = !{ptr @__UNIQUE_ID_scale_typetype317, !50, !"__UNIQUE_ID_scale_typetype317", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_scale_type318, !53, !"__UNIQUE_ID_scale_type318", i1 false, i1 false}
!53 = !{!"../kernel/rcu/rcuscale.c", i32 101, i32 1}
!54 = !{ptr @__param_kfree_nthreads, !55, !"__param_kfree_nthreads", i1 false, i1 false}
!55 = !{!"../kernel/rcu/rcuscale.c", i32 625, i32 1}
!56 = !{ptr @__UNIQUE_ID_kfree_nthreadstype325, !55, !"__UNIQUE_ID_kfree_nthreadstype325", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_kfree_nthreads326, !55, !"__UNIQUE_ID_kfree_nthreads326", i1 false, i1 false}
!58 = !{ptr @__param_kfree_alloc_num, !59, !"__param_kfree_alloc_num", i1 false, i1 false}
!59 = !{!"../kernel/rcu/rcuscale.c", i32 626, i32 1}
!60 = !{ptr @__UNIQUE_ID_kfree_alloc_numtype327, !59, !"__UNIQUE_ID_kfree_alloc_numtype327", i1 false, i1 false}
!61 = !{ptr @__UNIQUE_ID_kfree_alloc_num328, !59, !"__UNIQUE_ID_kfree_alloc_num328", i1 false, i1 false}
!62 = !{ptr @__param_kfree_loops, !63, !"__param_kfree_loops", i1 false, i1 false}
!63 = !{!"../kernel/rcu/rcuscale.c", i32 627, i32 1}
!64 = !{ptr @__UNIQUE_ID_kfree_loopstype329, !63, !"__UNIQUE_ID_kfree_loopstype329", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_kfree_loops330, !63, !"__UNIQUE_ID_kfree_loops330", i1 false, i1 false}
!66 = !{ptr @__param_kfree_rcu_test_double, !67, !"__param_kfree_rcu_test_double", i1 false, i1 false}
!67 = !{!"../kernel/rcu/rcuscale.c", i32 628, i32 1}
!68 = !{ptr @__UNIQUE_ID_kfree_rcu_test_doubletype331, !67, !"__UNIQUE_ID_kfree_rcu_test_doubletype331", i1 false, i1 false}
!69 = !{ptr @__UNIQUE_ID_kfree_rcu_test_double332, !67, !"__UNIQUE_ID_kfree_rcu_test_double332", i1 false, i1 false}
!70 = !{ptr @__param_kfree_rcu_test_single, !71, !"__param_kfree_rcu_test_single", i1 false, i1 false}
!71 = !{!"../kernel/rcu/rcuscale.c", i32 629, i32 1}
!72 = !{ptr @__UNIQUE_ID_kfree_rcu_test_singletype333, !71, !"__UNIQUE_ID_kfree_rcu_test_singletype333", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_kfree_rcu_test_single334, !71, !"__UNIQUE_ID_kfree_rcu_test_single334", i1 false, i1 false}
!74 = !{ptr @__initcall__kmod_rcuscale__336_898_rcu_scale_init6, !75, !"__initcall__kmod_rcuscale__336_898_rcu_scale_init6", i1 false, i1 false}
!75 = !{!"../kernel/rcu/rcuscale.c", i32 898, i32 1}
!76 = !{ptr @__exitcall_rcu_scale_cleanup, !77, !"__exitcall_rcu_scale_cleanup", i1 false, i1 false}
!77 = !{!"../kernel/rcu/rcuscale.c", i32 899, i32 1}
!78 = !{ptr @__pcpu_unique_n_async_inflight, !79, !"__pcpu_unique_n_async_inflight", i1 false, i1 false}
!79 = !{!"../kernel/rcu/rcuscale.c", i32 119, i32 8}
!80 = !{ptr @n_async_inflight, !79, !"n_async_inflight", i1 false, i1 false}
!81 = !{ptr @__pcpu_unique_srcu_ctl_scale_srcu_data, !82, !"__pcpu_unique_srcu_ctl_scale_srcu_data", i1 false, i1 false}
!82 = !{!"../kernel/rcu/rcuscale.c", i32 189, i32 1}
!83 = !{ptr @srcu_ctl_scale_srcu_data, !82, !"srcu_ctl_scale_srcu_data", i1 false, i1 false}
!84 = !{ptr @__param_str_gp_async, !6, !"__param_str_gp_async", i1 false, i1 false}
!85 = !{ptr @gp_async, !6, !"gp_async", i1 false, i1 false}
!86 = !{ptr @__param_str_gp_async_max, !10, !"__param_str_gp_async_max", i1 false, i1 false}
!87 = !{ptr @gp_async_max, !10, !"gp_async_max", i1 false, i1 false}
!88 = !{ptr @__param_str_gp_exp, !14, !"__param_str_gp_exp", i1 false, i1 false}
!89 = !{ptr @gp_exp, !14, !"gp_exp", i1 false, i1 false}
!90 = !{ptr @__param_str_holdoff, !18, !"__param_str_holdoff", i1 false, i1 false}
!91 = !{ptr @holdoff, !18, !"holdoff", i1 false, i1 false}
!92 = !{ptr @__param_str_nreaders, !22, !"__param_str_nreaders", i1 false, i1 false}
!93 = !{ptr @nreaders, !22, !"nreaders", i1 false, i1 false}
!94 = !{ptr @__param_str_nwriters, !26, !"__param_str_nwriters", i1 false, i1 false}
!95 = !{ptr @nwriters, !26, !"nwriters", i1 false, i1 false}
!96 = !{ptr @__param_str_shutdown, !30, !"__param_str_shutdown", i1 false, i1 false}
!97 = !{ptr @shutdown, !30, !"shutdown", i1 false, i1 false}
!98 = !{ptr @__param_str_verbose, !34, !"__param_str_verbose", i1 false, i1 false}
!99 = !{ptr @verbose, !34, !"verbose", i1 false, i1 false}
!100 = !{ptr @__param_str_writer_holdoff, !38, !"__param_str_writer_holdoff", i1 false, i1 false}
!101 = !{ptr @writer_holdoff, !38, !"writer_holdoff", i1 false, i1 false}
!102 = !{ptr @__param_str_kfree_rcu_test, !42, !"__param_str_kfree_rcu_test", i1 false, i1 false}
!103 = !{ptr @kfree_rcu_test, !42, !"kfree_rcu_test", i1 false, i1 false}
!104 = !{ptr @__param_str_kfree_mult, !46, !"__param_str_kfree_mult", i1 false, i1 false}
!105 = !{ptr @kfree_mult, !46, !"kfree_mult", i1 false, i1 false}
!106 = !{ptr @__param_str_scale_type, !50, !"__param_str_scale_type", i1 false, i1 false}
!107 = !{ptr @.str, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/rcu/rcuscale.c", i32 99, i32 27}
!109 = !{ptr @scale_type, !110, !"scale_type", i1 false, i1 false}
!110 = !{!"../kernel/rcu/rcuscale.c", i32 99, i32 14}
!111 = !{ptr @__param_str_kfree_nthreads, !55, !"__param_str_kfree_nthreads", i1 false, i1 false}
!112 = !{ptr @kfree_nthreads, !55, !"kfree_nthreads", i1 false, i1 false}
!113 = !{ptr @__param_str_kfree_alloc_num, !59, !"__param_str_kfree_alloc_num", i1 false, i1 false}
!114 = !{ptr @kfree_alloc_num, !59, !"kfree_alloc_num", i1 false, i1 false}
!115 = !{ptr @__param_str_kfree_loops, !63, !"__param_str_kfree_loops", i1 false, i1 false}
!116 = !{ptr @kfree_loops, !63, !"kfree_loops", i1 false, i1 false}
!117 = !{ptr @__param_str_kfree_rcu_test_double, !67, !"__param_str_kfree_rcu_test_double", i1 false, i1 false}
!118 = !{ptr @kfree_rcu_test_double, !67, !"kfree_rcu_test_double", i1 false, i1 false}
!119 = !{ptr @__param_str_kfree_rcu_test_single, !71, !"__param_str_kfree_rcu_test_single", i1 false, i1 false}
!120 = !{ptr @kfree_rcu_test_single, !71, !"kfree_rcu_test_single", i1 false, i1 false}
!121 = !{ptr @rcu_scale_init.scale_ops, !122, !"scale_ops", i1 false, i1 false}
!122 = !{!"../kernel/rcu/rcuscale.c", i32 799, i32 31}
!123 = !{ptr @.str.1, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../kernel/rcu/rcuscale.c", i32 813, i32 3}
!125 = !{ptr @.str.2, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.3, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @rcu_scale_init._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @rcu_scale_init._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.5, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../kernel/rcu/rcuscale.c", i32 814, i32 3}
!131 = !{ptr @rcu_scale_init._entry.4, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @rcu_scale_init._entry_ptr.6, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.8, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../kernel/rcu/rcuscale.c", i32 816, i32 4}
!135 = !{ptr @rcu_scale_init._entry.7, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @rcu_scale_init._entry_ptr.9, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.11, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/rcu/rcuscale.c", i32 817, i32 3}
!139 = !{ptr @rcu_scale_init._entry.10, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @rcu_scale_init._entry_ptr.12, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.13, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../kernel/rcu/rcuscale.c", i32 833, i32 40}
!143 = !{ptr @rcu_scale_init.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../kernel/rcu/rcuscale.c", i32 838, i32 3}
!145 = !{ptr @.str.14, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.15, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/rcu/rcuscale.c", i32 839, i32 14}
!148 = !{ptr @.str.16, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.17, !147, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../kernel/rcu/rcuscale.c", i32 841, i32 7}
!152 = !{ptr @.str.18, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.20, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../kernel/rcu/rcuscale.c", i32 848, i32 3}
!155 = !{ptr @rcu_scale_init._entry.19, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @rcu_scale_init._entry_ptr.21, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.22, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.23, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/rcu/rcuscale.c", i32 853, i32 14}
!160 = !{ptr @.str.24, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.25, !159, !"<string literal>", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../kernel/rcu/rcuscale.c", i32 855, i32 7}
!164 = !{ptr @rcu_scale_init._entry.27, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../kernel/rcu/rcuscale.c", i32 868, i32 3}
!166 = !{ptr @rcu_scale_init._entry_ptr.28, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.29, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/rcu/rcuscale.c", i32 880, i32 14}
!169 = !{ptr @.str.30, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.31, !168, !"<string literal>", i1 false, i1 false}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../kernel/rcu/rcuscale.c", i32 882, i32 7}
!173 = !{ptr @rcu_ops, !174, !"rcu_ops", i1 false, i1 false}
!174 = !{!"../kernel/rcu/rcuscale.c", i32 170, i32 29}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!177 = !{ptr @.str.33, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.34, !176, !"<string literal>", i1 false, i1 false}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!181 = !{ptr @.str.35, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.36, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/rcu/rcuscale.c", i32 239, i32 11}
!184 = !{ptr @srcu_ops, !185, !"srcu_ops", i1 false, i1 false}
!185 = !{!"../kernel/rcu/rcuscale.c", i32 227, i32 29}
!186 = !{ptr @srcu_ctlp, !187, !"srcu_ctlp", i1 false, i1 false}
!187 = !{!"../kernel/rcu/rcuscale.c", i32 190, i32 28}
!188 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @srcu_ctl_scale, !82, !"srcu_ctl_scale", i1 false, i1 false}
!193 = distinct !{null, !194, !"__already_done", i1 false, i1 false}
!194 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!195 = !{ptr @.str.41, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.42, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../kernel/rcu/rcuscale.c", i32 268, i32 11}
!198 = !{ptr @srcud_ops, !199, !"srcud_ops", i1 false, i1 false}
!199 = !{!"../kernel/rcu/rcuscale.c", i32 255, i32 29}
!200 = !{ptr @srcu_sync_scale_init.__srcu_key, !201, !"__srcu_key", i1 false, i1 false}
!201 = !{!"../kernel/rcu/rcuscale.c", i32 247, i32 2}
!202 = !{ptr @.str.43, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @srcud, !204, !"srcud", i1 false, i1 false}
!204 = !{!"../kernel/rcu/rcuscale.c", i32 242, i32 27}
!205 = !{ptr @.str.44, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../kernel/rcu/rcuscale.c", i32 295, i32 11}
!207 = !{ptr @tasks_ops, !208, !"tasks_ops", i1 false, i1 false}
!208 = !{!"../kernel/rcu/rcuscale.c", i32 284, i32 29}
!209 = !{ptr @.str.45, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../kernel/rcu/rcuscale.c", i32 324, i32 11}
!211 = !{ptr @tasks_tracing_ops, !212, !"tasks_tracing_ops", i1 false, i1 false}
!212 = !{!"../kernel/rcu/rcuscale.c", i32 313, i32 29}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../include/linux/rcupdate_trace.h", i32 83, i32 2}
!215 = distinct !{null, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @cur_ops, !217, !"cur_ops", i1 false, i1 false}
!217 = !{!"../kernel/rcu/rcuscale.c", i32 144, i32 30}
!218 = !{ptr @kfree_scale_init.__key, !219, !"__key", i1 false, i1 false}
!219 = !{!"../kernel/rcu/rcuscale.c", i32 758, i32 3}
!220 = !{ptr @.str.47, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../kernel/rcu/rcuscale.c", i32 759, i32 14}
!222 = !{ptr @.str.48, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.49, !221, !"<string literal>", i1 false, i1 false}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../kernel/rcu/rcuscale.c", i32 761, i32 7}
!226 = !{ptr @.str.50, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/rcu/rcuscale.c", i32 766, i32 2}
!228 = !{ptr @.str.51, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @kfree_scale_init._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @kfree_scale_init._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.52, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../kernel/rcu/rcuscale.c", i32 776, i32 14}
!233 = !{ptr @.str.53, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.54, !232, !"<string literal>", i1 false, i1 false}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../kernel/rcu/rcuscale.c", i32 778, i32 7}
!237 = !{ptr @kfree_nrealthreads, !238, !"kfree_nrealthreads", i1 false, i1 false}
!238 = !{!"../kernel/rcu/rcuscale.c", i32 632, i32 12}
!239 = !{ptr @n_kfree_scale_thread_ended, !240, !"n_kfree_scale_thread_ended", i1 false, i1 false}
!240 = !{!"../kernel/rcu/rcuscale.c", i32 634, i32 17}
!241 = !{ptr @kfree_reader_tasks, !242, !"kfree_reader_tasks", i1 false, i1 false}
!242 = !{!"../kernel/rcu/rcuscale.c", i32 631, i32 29}
!243 = !{ptr @.str.56, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../kernel/rcu/rcuscale.c", i32 652, i32 2}
!245 = !{ptr @kfree_scale_thread._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @kfree_scale_thread._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.57, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.59, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../kernel/rcu/rcuscale.c", i32 700, i32 3}
!250 = !{ptr @kfree_scale_thread._entry.58, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @kfree_scale_thread._entry_ptr.60, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @b_rcu_gp_test_started, !253, !"b_rcu_gp_test_started", i1 false, i1 false}
!253 = !{!"../kernel/rcu/rcuscale.c", i32 117, i32 22}
!254 = !{ptr @b_rcu_gp_test_finished, !255, !"b_rcu_gp_test_finished", i1 false, i1 false}
!255 = !{!"../kernel/rcu/rcuscale.c", i32 118, i32 22}
!256 = !{ptr @n_kfree_scale_thread_started, !257, !"n_kfree_scale_thread_started", i1 false, i1 false}
!257 = !{!"../kernel/rcu/rcuscale.c", i32 633, i32 17}
!258 = !{ptr @.str.61, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../kernel/rcu/rcuscale.c", i32 725, i32 4}
!260 = !{ptr @nrealwriters, !261, !"nrealwriters", i1 false, i1 false}
!261 = !{!"../kernel/rcu/rcuscale.c", i32 104, i32 12}
!262 = !{ptr @nrealreaders, !263, !"nrealreaders", i1 false, i1 false}
!263 = !{!"../kernel/rcu/rcuscale.c", i32 103, i32 12}
!264 = !{ptr @n_rcu_scale_reader_started, !265, !"n_rcu_scale_reader_started", i1 false, i1 false}
!265 = !{!"../kernel/rcu/rcuscale.c", i32 111, i32 17}
!266 = !{ptr @n_rcu_scale_writer_started, !267, !"n_rcu_scale_writer_started", i1 false, i1 false}
!267 = !{!"../kernel/rcu/rcuscale.c", i32 112, i32 17}
!268 = !{ptr @n_rcu_scale_writer_finished, !269, !"n_rcu_scale_writer_finished", i1 false, i1 false}
!269 = !{!"../kernel/rcu/rcuscale.c", i32 113, i32 17}
!270 = !{ptr @.str.62, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../kernel/rcu/rcuscale.c", i32 498, i32 2}
!272 = !{ptr @.str.63, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @rcu_scale_print_module_parms._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @rcu_scale_print_module_parms._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @shutdown_wq, !276, !"shutdown_wq", i1 false, i1 false}
!276 = !{!"../kernel/rcu/rcuscale.c", i32 114, i32 26}
!277 = !{ptr @shutdown_task, !278, !"shutdown_task", i1 false, i1 false}
!278 = !{!"../kernel/rcu/rcuscale.c", i32 107, i32 28}
!279 = !{ptr @reader_tasks, !280, !"reader_tasks", i1 false, i1 false}
!280 = !{!"../kernel/rcu/rcuscale.c", i32 106, i32 29}
!281 = !{ptr @rcu_scale_reader._entry, !282, !"_entry", i1 false, i1 false}
!282 = !{!"../kernel/rcu/rcuscale.c", i32 359, i32 2}
!283 = !{ptr @rcu_scale_reader._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.64, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @writer_tasks, !286, !"writer_tasks", i1 false, i1 false}
!286 = !{!"../kernel/rcu/rcuscale.c", i32 105, i32 29}
!287 = !{ptr @writer_durations, !288, !"writer_durations", i1 false, i1 false}
!288 = !{!"../kernel/rcu/rcuscale.c", i32 109, i32 14}
!289 = !{ptr @writer_n_durations, !290, !"writer_n_durations", i1 false, i1 false}
!290 = !{!"../kernel/rcu/rcuscale.c", i32 110, i32 13}
!291 = !{ptr @rcu_scale_writer._entry, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../kernel/rcu/rcuscale.c", i32 399, i32 2}
!293 = !{ptr @rcu_scale_writer._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.65, !292, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.67, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../kernel/rcu/rcuscale.c", i32 459, i32 4}
!297 = !{ptr @rcu_scale_writer._entry.66, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @rcu_scale_writer._entry_ptr.68, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.69, !296, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @rcu_scale_writer.___rfd_beenhere, !301, !"___rfd_beenhere", i1 false, i1 false}
!301 = !{!"../kernel/rcu/rcuscale.c", i32 464, i32 5}
!302 = !{ptr @rcu_scale_writer._entry.70, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../kernel/rcu/rcuscale.c", i32 465, i32 5}
!304 = !{ptr @rcu_scale_writer._entry_ptr.71, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.72, !303, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @t_rcu_scale_writer_started, !307, !"t_rcu_scale_writer_started", i1 false, i1 false}
!307 = !{!"../kernel/rcu/rcuscale.c", i32 115, i32 12}
!308 = !{ptr @t_rcu_scale_writer_finished, !309, !"t_rcu_scale_writer_finished", i1 false, i1 false}
!309 = !{!"../kernel/rcu/rcuscale.c", i32 116, i32 12}
!310 = !{ptr @.str.73, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../kernel/rcu/rcuscale.c", i32 517, i32 3}
!312 = !{ptr @rcu_scale_cleanup._entry, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @rcu_scale_cleanup._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.74, !311, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @rcu_scale_cleanup._entry.75, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../kernel/rcu/rcuscale.c", i32 519, i32 3}
!317 = !{ptr @rcu_scale_cleanup._entry_ptr.76, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.77, !316, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @rcu_scale_cleanup._entry.78, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../kernel/rcu/rcuscale.c", i32 521, i32 3}
!321 = !{ptr @rcu_scale_cleanup._entry_ptr.79, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.80, !320, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.81, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../kernel/rcu/rcuscale.c", i32 532, i32 4}
!325 = !{ptr @.str.82, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../kernel/rcu/rcuscale.c", i32 539, i32 4}
!327 = !{ptr @.str.84, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../kernel/rcu/rcuscale.c", i32 544, i32 4}
!329 = !{ptr @rcu_scale_cleanup._entry.83, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @rcu_scale_cleanup._entry_ptr.85, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.87, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../kernel/rcu/rcuscale.c", i32 548, i32 3}
!333 = !{ptr @rcu_scale_cleanup._entry.86, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @rcu_scale_cleanup._entry_ptr.88, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.90, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../kernel/rcu/rcuscale.c", i32 566, i32 5}
!337 = !{ptr @rcu_scale_cleanup._entry.89, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @rcu_scale_cleanup._entry_ptr.91, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{!"sp"}
!340 = !{i32 1, !"wchar_size", i32 2}
!341 = !{i32 1, !"min_enum_size", i32 4}
!342 = !{i32 8, !"branch-target-enforcement", i32 0}
!343 = !{i32 8, !"sign-return-address", i32 0}
!344 = !{i32 8, !"sign-return-address-all", i32 0}
!345 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!346 = !{i32 7, !"uwtable", i32 1}
!347 = !{i32 7, !"frame-pointer", i32 2}
!348 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!349 = !{i8 0, i8 2}
!350 = !{!"branch_weights", i32 2000, i32 1}
!351 = !{!"branch_weights", i32 1, i32 2000}
!352 = !{i64 2154786581}
!353 = !{i64 2148231492, i64 2148231518, i64 2148231547, i64 2148231581, i64 2148231612, i64 2148231635}
!354 = !{i64 623973, i64 624034}
!355 = !{i64 626705}
!356 = !{i64 626990}
!357 = !{i64 2148316903}
!358 = !{i64 2148232212, i64 2148232244, i64 2148232273, i64 2148232307, i64 2148232338, i64 2148232361}
!359 = !{i64 2148317132}
!360 = !{i64 2148491332}
!361 = !{i64 738260, i64 738277, i64 738301, i64 738327, i64 738345}
!362 = !{i64 2148491702}
!363 = !{i64 2154771254}
!364 = !{i64 2150022330}
!365 = !{i64 2150022596}
!366 = !{i64 2154124255}
!367 = !{i64 2154124901}
!368 = !{i64 2154128263}
!369 = !{i64 2154818688}
!370 = !{i64 2154816869}
!371 = !{i64 2154754269}
!372 = !{i64 2154757715}
!373 = !{i64 2148233957, i64 2148233983, i64 2148234012, i64 2148234046, i64 2148234077, i64 2148234100}
