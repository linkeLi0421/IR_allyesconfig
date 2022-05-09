; ModuleID = '/llk/IR_all_yes/kernel/locking/locktorture.c_pt.bc'
source_filename = "../kernel/locking/locktorture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.lock_torture_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.lock_torture_cxt = type { i32, i32, i8, i8, %struct.atomic_t, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lock_stress_stats = type { i32, i32 }
%struct.torture_random_state = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.reorder_lock = type { %struct.list_head, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__UNIQUE_ID_file177 = internal constant [44 x i8] c"locktorture.file=kernel/locking/locktorture\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [24 x i8] c"locktorture.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author179 = internal constant [60 x i8] c"locktorture.author=Paul E. McKenney <paulmck@linux.ibm.com>\00", section ".modinfo", align 1
@__param_str_nwriters_stress = internal constant [28 x i8] c"locktorture.nwriters_stress\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nwriters_stress = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nwriters_stress = internal constant %struct.kernel_param { ptr @__param_str_nwriters_stress, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @nwriters_stress } }, section "__param", align 4
@__UNIQUE_ID_nwriters_stresstype180 = internal constant [41 x i8] c"locktorture.parmtype=nwriters_stress:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nwriters_stress181 = internal constant [77 x i8] c"locktorture.parm=nwriters_stress:Number of write-locking stress-test threads\00", section ".modinfo", align 1
@__param_str_nreaders_stress = internal constant [28 x i8] c"locktorture.nreaders_stress\00", align 1
@nreaders_stress = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nreaders_stress = internal constant %struct.kernel_param { ptr @__param_str_nreaders_stress, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @nreaders_stress } }, section "__param", align 4
@__UNIQUE_ID_nreaders_stresstype182 = internal constant [41 x i8] c"locktorture.parmtype=nreaders_stress:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nreaders_stress183 = internal constant [76 x i8] c"locktorture.parm=nreaders_stress:Number of read-locking stress-test threads\00", section ".modinfo", align 1
@__param_str_onoff_holdoff = internal constant [26 x i8] c"locktorture.onoff_holdoff\00", align 1
@onoff_holdoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_onoff_holdoff = internal constant %struct.kernel_param { ptr @__param_str_onoff_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @onoff_holdoff } }, section "__param", align 4
@__UNIQUE_ID_onoff_holdofftype184 = internal constant [39 x i8] c"locktorture.parmtype=onoff_holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_onoff_holdoff185 = internal constant [71 x i8] c"locktorture.parm=onoff_holdoff:Time after boot before CPU hotplugs (s)\00", section ".modinfo", align 1
@__param_str_onoff_interval = internal constant [27 x i8] c"locktorture.onoff_interval\00", align 1
@onoff_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_onoff_interval = internal constant %struct.kernel_param { ptr @__param_str_onoff_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @onoff_interval } }, section "__param", align 4
@__UNIQUE_ID_onoff_intervaltype186 = internal constant [40 x i8] c"locktorture.parmtype=onoff_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_onoff_interval187 = internal constant [73 x i8] c"locktorture.parm=onoff_interval:Time between CPU hotplugs (s), 0=disable\00", section ".modinfo", align 1
@__param_str_shuffle_interval = internal constant [29 x i8] c"locktorture.shuffle_interval\00", align 1
@shuffle_interval = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_shuffle_interval = internal constant %struct.kernel_param { ptr @__param_str_shuffle_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @shuffle_interval } }, section "__param", align 4
@__UNIQUE_ID_shuffle_intervaltype188 = internal constant [42 x i8] c"locktorture.parmtype=shuffle_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_shuffle_interval189 = internal constant [80 x i8] c"locktorture.parm=shuffle_interval:Number of jiffies between shuffles, 0=disable\00", section ".modinfo", align 1
@__param_str_shutdown_secs = internal constant [26 x i8] c"locktorture.shutdown_secs\00", align 1
@shutdown_secs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_shutdown_secs = internal constant %struct.kernel_param { ptr @__param_str_shutdown_secs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @shutdown_secs } }, section "__param", align 4
@__UNIQUE_ID_shutdown_secstype190 = internal constant [39 x i8] c"locktorture.parmtype=shutdown_secs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_shutdown_secs191 = internal constant [70 x i8] c"locktorture.parm=shutdown_secs:Shutdown time (j), <= zero to disable.\00", section ".modinfo", align 1
@__param_str_stat_interval = internal constant [26 x i8] c"locktorture.stat_interval\00", align 1
@stat_interval = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_stat_interval = internal constant %struct.kernel_param { ptr @__param_str_stat_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @stat_interval } }, section "__param", align 4
@__UNIQUE_ID_stat_intervaltype192 = internal constant [39 x i8] c"locktorture.parmtype=stat_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stat_interval193 = internal constant [73 x i8] c"locktorture.parm=stat_interval:Number of seconds between stats printk()s\00", section ".modinfo", align 1
@__param_str_stutter = internal constant [20 x i8] c"locktorture.stutter\00", align 1
@stutter = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_stutter = internal constant %struct.kernel_param { ptr @__param_str_stutter, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @stutter } }, section "__param", align 4
@__UNIQUE_ID_stuttertype194 = internal constant [33 x i8] c"locktorture.parmtype=stutter:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stutter195 = internal constant [71 x i8] c"locktorture.parm=stutter:Number of jiffies to run/halt test, 0=disable\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [20 x i8] c"locktorture.verbose\00", align 1
@verbose = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype196 = internal constant [33 x i8] c"locktorture.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose197 = internal constant [60 x i8] c"locktorture.parm=verbose:Enable verbose debugging printk()s\00", section ".modinfo", align 1
@__param_str_torture_type = internal constant [25 x i8] c"locktorture.torture_type\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@torture_type = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_torture_type = internal constant %struct.kernel_param { ptr @__param_str_torture_type, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @torture_type } }, section "__param", align 4
@__UNIQUE_ID_torture_typetype198 = internal constant [40 x i8] c"locktorture.parmtype=torture_type:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_torture_type199 = internal constant [98 x i8] c"locktorture.parm=torture_type:Type of lock to torture (spin_lock, spin_lock_irq, mutex_lock, ...)\00", section ".modinfo", align 1
@__initcall__kmod_locktorture__227_1116_lock_torture_init6 = internal global ptr @lock_torture_init, section ".initcall6.init", align 4
@__exitcall_lock_torture_cleanup = internal global ptr @lock_torture_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spin_lock\00", [22 x i8] zeroinitializer }, align 32
@lock_torture_init.torture_ops = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @lock_busted_ops, ptr @spin_lock_ops, ptr @spin_lock_irq_ops, ptr @rw_lock_ops, ptr @rw_lock_irq_ops, ptr @mutex_lock_ops, ptr @ww_mutex_lock_ops, ptr @rtmutex_lock_ops, ptr @rwsem_lock_ops, ptr @percpu_rwsem_lock_ops], [56 x i8] zeroinitializer }, align 32
@lock_busted_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_lock_busted_write_lock, ptr @torture_lock_busted_write_delay, ptr @torture_boost_dummy, ptr @torture_lock_busted_write_unlock, ptr null, ptr null, ptr null, i32 0, ptr @.str.51 }, [52 x i8] zeroinitializer }, align 32
@spin_lock_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_spin_lock_write_lock, ptr @torture_spin_lock_write_delay, ptr @torture_boost_dummy, ptr @torture_spin_lock_write_unlock, ptr null, ptr null, ptr null, i32 0, ptr @.str }, [52 x i8] zeroinitializer }, align 32
@spin_lock_irq_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_spin_lock_write_lock_irq, ptr @torture_spin_lock_write_delay, ptr @torture_boost_dummy, ptr @torture_lock_spin_write_unlock_irq, ptr null, ptr null, ptr null, i32 0, ptr @.str.53 }, [52 x i8] zeroinitializer }, align 32
@rw_lock_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_rwlock_write_lock, ptr @torture_rwlock_write_delay, ptr @torture_boost_dummy, ptr @torture_rwlock_write_unlock, ptr @torture_rwlock_read_lock, ptr @torture_rwlock_read_delay, ptr @torture_rwlock_read_unlock, i32 0, ptr @.str.19 }, [52 x i8] zeroinitializer }, align 32
@rw_lock_irq_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_rwlock_write_lock_irq, ptr @torture_rwlock_write_delay, ptr @torture_boost_dummy, ptr @torture_rwlock_write_unlock_irq, ptr @torture_rwlock_read_lock_irq, ptr @torture_rwlock_read_delay, ptr @torture_rwlock_read_unlock_irq, i32 0, ptr @.str.55 }, [52 x i8] zeroinitializer }, align 32
@mutex_lock_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_mutex_lock, ptr @torture_mutex_delay, ptr @torture_boost_dummy, ptr @torture_mutex_unlock, ptr null, ptr null, ptr null, i32 0, ptr @.str.56 }, [52 x i8] zeroinitializer }, align 32
@ww_mutex_lock_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr @torture_ww_mutex_init, ptr @torture_ww_mutex_exit, ptr @torture_ww_mutex_lock, ptr @torture_mutex_delay, ptr @torture_boost_dummy, ptr @torture_ww_mutex_unlock, ptr null, ptr null, ptr null, i32 0, ptr @.str.59 }, [52 x i8] zeroinitializer }, align 32
@rtmutex_lock_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_rtmutex_lock, ptr @torture_rtmutex_delay, ptr @torture_rtmutex_boost, ptr @torture_rtmutex_unlock, ptr null, ptr null, ptr null, i32 0, ptr @.str.68 }, [52 x i8] zeroinitializer }, align 32
@rwsem_lock_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr null, ptr null, ptr @torture_rwsem_down_write, ptr @torture_rwsem_write_delay, ptr @torture_boost_dummy, ptr @torture_rwsem_up_write, ptr @torture_rwsem_down_read, ptr @torture_rwsem_read_delay, ptr @torture_rwsem_up_read, i32 0, ptr @.str.71 }, [52 x i8] zeroinitializer }, align 32
@percpu_rwsem_lock_ops = internal global { %struct.lock_torture_ops, [52 x i8] } { %struct.lock_torture_ops { ptr @torture_percpu_rwsem_init, ptr @torture_percpu_rwsem_exit, ptr @torture_percpu_rwsem_down_write, ptr @torture_rwsem_write_delay, ptr @torture_boost_dummy, ptr @torture_percpu_rwsem_up_write, ptr @torture_percpu_rwsem_down_read, ptr @torture_rwsem_read_delay, ptr @torture_percpu_rwsem_up_read, i32 0, ptr @.str.74 }, [52 x i8] zeroinitializer }, align 32
@cxt = internal global { %struct.lock_torture_cxt, [36 x i8] } zeroinitializer, align 32
@lock_torture_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\011lock-torture: invalid torture type: \22%s\22\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lock_torture_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kernel/locking/locktorture.c\00", [35 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr = internal global ptr @lock_torture_init._entry, section ".printk_index", align 4
@lock_torture_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\011lock-torture types:\00", [42 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.6 = internal global ptr @lock_torture_init._entry.4, section ".printk_index", align 4
@lock_torture_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\011 %s\00", [26 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.9 = internal global ptr @lock_torture_init._entry.7, section ".printk_index", align 4
@lock_torture_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\011\0A\00", [28 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.12 = internal global ptr @lock_torture_init._entry.10, section ".printk_index", align 4
@lock_torture_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\011lock-torture: must run at least one locking thread\0A\00", [42 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.15 = internal global ptr @lock_torture_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mutex\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtmutex\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spin\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rw_lock\00", [24 x i8] zeroinitializer }, align 32
@lock_is_write_held = internal global { i1, [31 x i8] } zeroinitializer, align 32
@lock_torture_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\011%s-torture: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.22 = internal global ptr @lock_torture_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxt.lwsa: Out of memory\00", [40 x i8] zeroinitializer }, align 32
@lock_torture_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.25 = internal global ptr @lock_torture_init._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxt.lrsa: Out of memory\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Start of test\00", [18 x i8] zeroinitializer }, align 32
@lock_torture_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Torture-test initialization failed with error code %d\0A\00", [41 x i8] zeroinitializer }, align 32
@lock_torture_init.__already_done.29 = internal unnamed_addr global i1 false, section ".data.once", align 1
@lock_torture_init.__already_done.30 = internal unnamed_addr global i1 false, section ".data.once", align 1
@lock_torture_init.__already_done.31 = internal unnamed_addr global i1 false, section ".data.once", align 1
@writer_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lock_torture_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011%s-torture:!!! %s\0A\00", [43 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.34 = internal global ptr @lock_torture_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"writer_tasks: Out of memory\00", [36 x i8] zeroinitializer }, align 32
@reader_tasks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lock_torture_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lock_torture_init._entry_ptr.37 = internal global ptr @lock_torture_init._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reader_tasks: Out of memory\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lock_torture_writer\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Creating lock_torture_writer task\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create lock_torture_writer\00", [59 x i8] zeroinitializer }, align 32
@lock_torture_init.__already_done.42 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lock_torture_reader\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Creating lock_torture_reader task\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create lock_torture_reader\00", [59 x i8] zeroinitializer }, align 32
@lock_torture_init.__already_done.46 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lock_torture_stats\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating lock_torture_stats task\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create lock_torture_stats\00", [60 x i8] zeroinitializer }, align 32
@stats_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lock_torture_init.__already_done.50 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lock_busted\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@torture_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.52, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"torture_spinlock\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spin_lock_irq\00", [18 x i8] zeroinitializer }, align 32
@torture_rwlock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"torture_rwlock\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rw_lock_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mutex_lock\00", [21 x i8] zeroinitializer }, align 32
@torture_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @torture_mutex, i64 52), ptr getelementptr (i8, ptr @torture_mutex, i64 52) }, ptr @torture_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torture_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"torture_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ww_mutex_lock\00", [18 x i8] zeroinitializer }, align 32
@torture_ww_mutex_0 = internal global { %struct.ww_mutex, [60 x i8] } zeroinitializer, align 32
@torture_ww_class = internal global { %struct.ww_class, [32 x i8] } { %struct.ww_class { %struct.atomic_t zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, ptr @.str.62, ptr @.str.63, i32 1 }, [32 x i8] zeroinitializer }, align 32
@torture_ww_mutex_1 = internal global { %struct.ww_mutex, [60 x i8] } zeroinitializer, align 32
@torture_ww_mutex_2 = internal global { %struct.ww_mutex, [60 x i8] } zeroinitializer, align 32
@ww_acquire_ctxs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@torture_ww_mutex_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.60, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"torture_ww_mutex_init\00", [42 x i8] zeroinitializer }, align 32
@torture_ww_mutex_init._entry_ptr = internal global ptr @torture_ww_mutex_init._entry, section ".printk_index", align 4
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ww_acquire_ctx: Out of memory\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"torture_ww_class_acquire\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"torture_ww_class_mutex\00", [41 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtmutex_lock\00", [19 x i8] zeroinitializer }, align 32
@torture_rtmutex = internal global { %struct.rt_mutex, [44 x i8] } { %struct.rt_mutex { %struct.rt_mutex_base { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.rb_root_cached zeroinitializer, ptr null }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"torture_rtmutex.rtmutex.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"torture_rtmutex\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rwsem_lock\00", [21 x i8] zeroinitializer }, align 32
@torture_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.72, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @torture_rwsem, i64 56), ptr getelementptr (i8, ptr @torture_rwsem, i64 56) }, ptr @torture_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torture_rwsem.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"torture_rwsem\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"percpu_rwsem_lock\00", [46 x i8] zeroinitializer }, align 32
@torture_percpu_rwsem_init.rwsem_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pcpu_rwsem = internal global { %struct.percpu_rw_semaphore, [32 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pcpu_rwsem\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@lock_torture_print_module_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [173 x i8], [51 x i8] } { [173 x i8] c"\011%s-torture:--- %s%s: nwriters_stress=%d nreaders_stress=%d stat_interval=%d verbose=%d shuffle_interval=%d stutter=%d shutdown_secs=%d onoff_interval=%d onoff_holdoff=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lock_torture_print_module_parms\00", [32 x i8] zeroinitializer }, align 32
@lock_torture_print_module_parms._entry_ptr = internal global ptr @lock_torture_print_module_parms._entry, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" [debug]\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@lock_torture_writer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.39, ptr @.str.3, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lock_torture_writer._entry_ptr = internal global ptr @lock_torture_writer._entry, section ".printk_index", align 4
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lock_torture_writer task started\00", [63 x i8] zeroinitializer }, align 32
@lock_torture_writer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lock_torture_writer.__already_done.84 = internal unnamed_addr global i1 false, section ".data.once", align 1
@lock_is_read_held = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@last_lock_release = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lock_torture_reader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.43, ptr @.str.3, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lock_torture_reader._entry_ptr = internal global ptr @lock_torture_reader._entry, section ".printk_index", align 4
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lock_torture_reader task started\00", [63 x i8] zeroinitializer }, align 32
@lock_torture_reader.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lock_torture_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.47, ptr @.str.3, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lock_torture_stats._entry_ptr = internal global ptr @lock_torture_stats._entry, section ".printk_index", align 4
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lock_torture_stats task started\00", [32 x i8] zeroinitializer }, align 32
@lock_torture_stats_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013lock_torture_stats_print: Out of memory, need: %d\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lock_torture_stats_print\00", [39 x i8] zeroinitializer }, align 32
@lock_torture_stats_print._entry_ptr = internal global ptr @lock_torture_stats_print._entry, section ".printk_index", align 4
@lock_torture_stats_print._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\011%s\00", [27 x i8] zeroinitializer }, align 32
@lock_torture_stats_print._entry_ptr.91 = internal global ptr @lock_torture_stats_print._entry.89, section ".printk_index", align 4
@lock_torture_stats_print._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lock_torture_stats_print._entry_ptr.93 = internal global ptr @lock_torture_stats_print._entry.92, section ".printk_index", align 4
@lock_torture_stats_print._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lock_torture_stats_print._entry_ptr.95 = internal global ptr @lock_torture_stats_print._entry.94, section ".printk_index", align 4
@.str.96 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:  Total: %lld  Max/Min: %ld/%ld %s  Fail: %d %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Writes\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Reads \00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"!!!\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Stopping lock_torture_writer task\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Stopping lock_torture_reader task\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Stopping lock_torture_stats task\00", [63 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"End of test: FAILURE\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"End of test: LOCK_HOTPLUG\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"End of test: SUCCESS\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"nwriters_stress\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 36, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"nreaders_stress\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 38, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"onoff_holdoff\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 40, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"onoff_interval\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 41, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"shuffle_interval\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 43, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"shutdown_secs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 45, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"stat_interval\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 46, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [8 x i8] c"stutter\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 48, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 49, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"torture_type\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 52, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 52, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"torture_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 904, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"lock_busted_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 135, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"spin_lock_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 179, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"spin_lock_irq_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 206, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"rw_lock_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 275, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"rw_lock_irq_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 318, i32 32 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"mutex_lock_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 358, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"ww_mutex_lock_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 454, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"rtmutex_lock_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 533, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"rwsem_lock_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 600, i32 32 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"percpu_rwsem_lock_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 650, i32 32 }
@___asan_gen_.173 = private unnamed_addr constant [4 x i8] c"cxt\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 101, i32 32 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 927, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 929, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 931, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 932, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 939, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 955, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 959, i32 35 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 963, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 964, i32 36 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"lock_is_write_held\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 975, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1005, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1019, i32 47 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1025, i32 7 }
@___asan_gen_.246 = private unnamed_addr constant [13 x i8] c"writer_tasks\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 58, i32 29 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1050, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [13 x i8] c"reader_tasks\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 59, i32 29 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1061, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1083, i32 14 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1092, i32 14 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1098, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant [11 x i8] c"stats_task\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 57, i32 28 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 143, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"torture_spinlock\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 146, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 214, i32 11 }
@___asan_gen_.309 = private unnamed_addr constant [15 x i8] c"torture_rwlock\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 217, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 326, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 366, i32 11 }
@___asan_gen_.321 = private unnamed_addr constant [14 x i8] c"torture_mutex\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 329, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 464, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant [19 x i8] c"torture_ww_mutex_0\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 376, i32 24 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"torture_ww_class\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [19 x i8] c"torture_ww_mutex_1\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 376, i32 44 }
@___asan_gen_.342 = private unnamed_addr constant [19 x i8] c"torture_ww_mutex_2\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 376, i32 64 }
@___asan_gen_.345 = private unnamed_addr constant [16 x i8] c"ww_acquire_ctxs\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 377, i32 31 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 389, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 375, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 297, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 191, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 541, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant [16 x i8] c"torture_rtmutex\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 468, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 608, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant [14 x i8] c"torture_rwsem\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 545, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 660, i32 11 }
@___asan_gen_.402 = private unnamed_addr constant [10 x i8] c"rwsem_key\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [11 x i8] c"pcpu_rwsem\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 612, i32 35 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 616, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 49, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 34, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 832, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 673, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [18 x i8] c"lock_is_read_held\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 62, i32 17 }
@___asan_gen_.444 = private unnamed_addr constant [18 x i8] c"last_lock_release\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 63, i32 22 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 712, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 818, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 786, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 792, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 798, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 804, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 759, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 760, i32 12 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 760, i32 23 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 762, i32 39 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 763, i32 17 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 859, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 867, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 873, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 878, i32 7 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 881, i32 7 }
@___asan_gen_.510 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.511 = private constant [32 x i8] c"../kernel/locking/locktorture.c\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 884, i32 7 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_nreaders_stress183, ptr @__UNIQUE_ID_nreaders_stresstype182, ptr @__UNIQUE_ID_nwriters_stress181, ptr @__UNIQUE_ID_nwriters_stresstype180, ptr @__UNIQUE_ID_onoff_holdoff185, ptr @__UNIQUE_ID_onoff_holdofftype184, ptr @__UNIQUE_ID_onoff_interval187, ptr @__UNIQUE_ID_onoff_intervaltype186, ptr @__UNIQUE_ID_shuffle_interval189, ptr @__UNIQUE_ID_shuffle_intervaltype188, ptr @__UNIQUE_ID_shutdown_secs191, ptr @__UNIQUE_ID_shutdown_secstype190, ptr @__UNIQUE_ID_stat_interval193, ptr @__UNIQUE_ID_stat_intervaltype192, ptr @__UNIQUE_ID_stutter195, ptr @__UNIQUE_ID_stuttertype194, ptr @__UNIQUE_ID_torture_type199, ptr @__UNIQUE_ID_torture_typetype198, ptr @__UNIQUE_ID_verbose197, ptr @__UNIQUE_ID_verbosetype196, ptr @__exitcall_lock_torture_cleanup, ptr @__initcall__kmod_locktorture__227_1116_lock_torture_init6, ptr @__param_nreaders_stress, ptr @__param_nwriters_stress, ptr @__param_onoff_holdoff, ptr @__param_onoff_interval, ptr @__param_shuffle_interval, ptr @__param_shutdown_secs, ptr @__param_stat_interval, ptr @__param_stutter, ptr @__param_torture_type, ptr @__param_verbose, ptr @lock_torture_init._entry, ptr @lock_torture_init._entry.10, ptr @lock_torture_init._entry.13, ptr @lock_torture_init._entry.20, ptr @lock_torture_init._entry.24, ptr @lock_torture_init._entry.32, ptr @lock_torture_init._entry.36, ptr @lock_torture_init._entry.4, ptr @lock_torture_init._entry.7, ptr @lock_torture_init._entry_ptr, ptr @lock_torture_init._entry_ptr.12, ptr @lock_torture_init._entry_ptr.15, ptr @lock_torture_init._entry_ptr.22, ptr @lock_torture_init._entry_ptr.25, ptr @lock_torture_init._entry_ptr.34, ptr @lock_torture_init._entry_ptr.37, ptr @lock_torture_init._entry_ptr.6, ptr @lock_torture_init._entry_ptr.9, ptr @lock_torture_print_module_parms._entry, ptr @lock_torture_print_module_parms._entry_ptr, ptr @lock_torture_reader._entry, ptr @lock_torture_reader._entry_ptr, ptr @lock_torture_stats._entry, ptr @lock_torture_stats._entry_ptr, ptr @lock_torture_stats_print._entry, ptr @lock_torture_stats_print._entry.89, ptr @lock_torture_stats_print._entry.92, ptr @lock_torture_stats_print._entry.94, ptr @lock_torture_stats_print._entry_ptr, ptr @lock_torture_stats_print._entry_ptr.91, ptr @lock_torture_stats_print._entry_ptr.93, ptr @lock_torture_stats_print._entry_ptr.95, ptr @lock_torture_writer._entry, ptr @lock_torture_writer._entry_ptr, ptr @torture_ww_mutex_init._entry, ptr @torture_ww_mutex_init._entry_ptr, ptr @nwriters_stress, ptr @nreaders_stress, ptr @onoff_holdoff, ptr @onoff_interval, ptr @shuffle_interval, ptr @shutdown_secs, ptr @stat_interval, ptr @stutter, ptr @verbose, ptr @torture_type, ptr @.str, ptr @lock_torture_init.torture_ops, ptr @lock_busted_ops, ptr @spin_lock_ops, ptr @spin_lock_irq_ops, ptr @rw_lock_ops, ptr @rw_lock_irq_ops, ptr @mutex_lock_ops, ptr @ww_mutex_lock_ops, ptr @rtmutex_lock_ops, ptr @rwsem_lock_ops, ptr @percpu_rwsem_lock_ops, ptr @cxt, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @lock_is_write_held, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @writer_tasks, ptr @.str.33, ptr @.str.35, ptr @reader_tasks, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @stats_task, ptr @.str.51, ptr @torture_spinlock, ptr @.str.52, ptr @.str.53, ptr @torture_rwlock, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @torture_mutex, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @torture_ww_mutex_0, ptr @torture_ww_class, ptr @torture_ww_mutex_1, ptr @torture_ww_mutex_2, ptr @ww_acquire_ctxs, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @torture_rtmutex, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @torture_rwsem, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @torture_percpu_rwsem_init.rwsem_key, ptr @pcpu_rwsem, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @lock_is_read_held, ptr @last_lock_release, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwriters_stress to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nreaders_stress to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stutter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init.torture_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_busted_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spin_lock_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spin_lock_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rw_lock_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rw_lock_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mutex_lock_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ww_mutex_lock_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtmutex_lock_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rwsem_lock_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_rwsem_lock_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_is_write_held to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @writer_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_rwlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_ww_mutex_0 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_ww_class to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_ww_mutex_1 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_ww_mutex_2 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ww_acquire_ctxs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_ww_mutex_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_rtmutex to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_percpu_rwsem_init.rwsem_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_rwsem to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_print_module_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 173, i32 224, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_writer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_is_read_held to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_lock_release to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_reader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_stats_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_stats_print._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_stats_print._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_torture_stats_print._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_torture_init() #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @torture_type, align 4
  %1 = load i32, ptr @verbose, align 4
  %call = tail call zeroext i1 @torture_init_begin(ptr noundef %0, i32 noundef %1) #14
  br i1 %call, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = load ptr, ptr @torture_type, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %i.0860 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [10 x ptr], ptr @lock_torture_init.torture_ops, i32 0, i32 %i.0860
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  store ptr %4, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %name = getelementptr inbounds %struct.lock_torture_ops, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %6) #16
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end31, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0860, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc
  %7 = load ptr, ptr @torture_type, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7) #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #17
  br label %do.end18

do.end18:                                         ; preds = %do.end18, %do.end
  %i.1861 = phi i32 [ 0, %do.end ], [ %inc24, %do.end18 ]
  %arrayidx20 = getelementptr [10 x ptr], ptr @lock_torture_init.torture_ops, i32 0, i32 %i.1861
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20, align 4
  %name21 = getelementptr inbounds %struct.lock_torture_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %11) #17
  %inc24 = add nuw nsw i32 %i.1861, 1
  %exitcond866.not = icmp eq i32 %inc24, 10
  br i1 %exitcond866.not, label %do.end28, label %do.end18

do.end28:                                         ; preds = %do.end18
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  br label %unwind

if.end31:                                         ; preds = %for.body
  %12 = load i32, ptr @nwriters_stress, align 4
  %cmp32 = icmp eq i32 %12, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end31
  %13 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readlock = getelementptr inbounds %struct.lock_torture_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %readlock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %readlock, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.end37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load i32, ptr @nreaders_stress, align 4
  %cmp33 = icmp eq i32 %16, 0
  br i1 %cmp33, label %do.end37, label %if.end44

do.end37:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #17
  br label %unwind

if.end40:                                         ; preds = %if.end31
  %cmp41 = icmp sgt i32 %12, -1
  br i1 %cmp41, label %if.end44, label %if.else

if.else:                                          ; preds = %if.end40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %17 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = shl i32 %17, 1
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end40, %lor.lhs.false
  %storemerge = phi i32 [ %mul, %if.else ], [ %12, %if.end40 ], [ 0, %lor.lhs.false ]
  store i32 %storemerge, ptr @cxt, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool45.not = icmp eq ptr %20, null
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end44
  tail call void %20() #14
  store i8 1, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 3), align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  %21 = load ptr, ptr @torture_type, align 4
  %call1.i = tail call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(6) @.str.16, i32 noundef 5) #14
  %cmp.i.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.i.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i8 1, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 2), align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  %call1.i760 = tail call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(8) @.str.17, i32 noundef 7) #14
  %cmp.i761.not = icmp eq i32 %call1.i760, 0
  br i1 %cmp.i761.not, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  store i8 1, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 2), align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  %call1.i764 = tail call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(5) @.str.18, i32 noundef 4) #14
  %cmp.i765.not = icmp eq i32 %call1.i764, 0
  br i1 %cmp.i765.not, label %if.then62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end56
  %call1.i768 = tail call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(8) @.str.19, i32 noundef 7) #14
  %cmp.i769.not = icmp eq i32 %call1.i768, 0
  br i1 %cmp.i769.not, label %if.then62, label %if.end63

if.then62:                                        ; preds = %lor.lhs.false59, %if.end56
  store i8 1, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 2), align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %lor.lhs.false59
  %22 = load i32, ptr @nwriters_stress, align 4
  %tobool64.not = icmp eq i32 %22, 0
  br i1 %tobool64.not, label %if.end89, label %if.then65

if.then65:                                        ; preds = %if.end63
  store i1 false, ptr @lock_is_write_held, align 1
  %23 = load i32, ptr @cxt, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 8) #14
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !326

kmalloc_array.exit.thread:                        ; preds = %if.then65
  store ptr null, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  br label %do.body69

if.end7.i:                                        ; preds = %if.then65
  %26 = extractvalue { i32, i1 } %24, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #18
  store ptr %call8.i, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  %cmp67 = icmp eq ptr %call8.i, null
  br i1 %cmp67, label %do.body69, label %for.cond81.preheader

for.cond81.preheader:                             ; preds = %if.end7.i
  %27 = load i32, ptr @cxt, align 4
  %cmp82862 = icmp sgt i32 %27, 0
  br i1 %cmp82862, label %for.body83, label %if.end89

do.body69:                                        ; preds = %if.end7.i, %kmalloc_array.exit.thread
  %28 = load i32, ptr @verbose, align 4
  %tobool70.not = icmp eq i32 %28, 0
  br i1 %tobool70.not, label %unwind, label %if.then71

if.then71:                                        ; preds = %do.body69
  tail call void @verbose_torout_sleep() #14
  %29 = load ptr, ptr @torture_type, align 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %29, ptr noundef nonnull @.str.23) #17
  br label %unwind

for.body83:                                       ; preds = %for.body83, %for.cond81.preheader
  %i.2863 = phi i32 [ %inc87, %for.body83 ], [ 0, %for.cond81.preheader ]
  %30 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  %arrayidx84 = getelementptr %struct.lock_stress_stats, ptr %30, i32 %i.2863
  %31 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx84, align 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  %n_lock_acquired = getelementptr %struct.lock_stress_stats, ptr %32, i32 %i.2863, i32 1
  %33 = ptrtoint ptr %n_lock_acquired to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %n_lock_acquired, align 4
  %inc87 = add nuw nsw i32 %i.2863, 1
  %34 = load i32, ptr @cxt, align 4
  %cmp82 = icmp slt i32 %inc87, %34
  br i1 %cmp82, label %for.body83, label %if.end89

if.end89:                                         ; preds = %for.body83, %for.cond81.preheader, %if.end63
  %35 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readlock90 = getelementptr inbounds %struct.lock_torture_ops, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %readlock90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %readlock90, align 4
  %tobool91.not = icmp eq ptr %37, null
  br i1 %tobool91.not, label %if.end129, label %if.then92

if.then92:                                        ; preds = %if.end89
  %38 = load i32, ptr @nreaders_stress, align 4
  %cmp93 = icmp sgt i32 %38, -1
  br i1 %cmp93, label %if.end100, label %if.else95

if.else95:                                        ; preds = %if.then92
  %39 = load i32, ptr @nwriters_stress, align 4
  %cmp96 = icmp slt i32 %39, 0
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.else95
  %call.i.i.i771 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %40 = load volatile i32, ptr @__num_online_cpus, align 4
  store i32 %40, ptr @cxt, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.else95
  %41 = load i32, ptr @cxt, align 4
  %.pr = load i32, ptr @nreaders_stress, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then92
  %42 = phi i32 [ %38, %if.then92 ], [ %.pr, %if.end99 ]
  %storemerge745 = phi i32 [ %38, %if.then92 ], [ %41, %if.end99 ]
  store i32 %storemerge745, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %tobool101.not = icmp eq i32 %42, 0
  br i1 %tobool101.not, label %if.end129, label %if.then102

if.then102:                                       ; preds = %if.end100
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge745, i32 8) #14
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %kmalloc_array.exit804.thread, label %if.end7.i802, !prof !326

kmalloc_array.exit804.thread:                     ; preds = %if.then102
  store ptr null, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  br label %do.body106

if.end7.i802:                                     ; preds = %if.then102
  %45 = extractvalue { i32, i1 } %43, 0
  %call8.i801 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3264) #18
  store ptr %call8.i801, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  %cmp104 = icmp eq ptr %call8.i801, null
  br i1 %cmp104, label %do.body106, label %for.cond118.preheader

for.cond118.preheader:                            ; preds = %if.end7.i802
  %46 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %cmp119864 = icmp sgt i32 %46, 0
  br i1 %cmp119864, label %for.body120, label %if.end129

do.body106:                                       ; preds = %if.end7.i802, %kmalloc_array.exit804.thread
  %47 = load i32, ptr @verbose, align 4
  %tobool107.not = icmp eq i32 %47, 0
  br i1 %tobool107.not, label %do.end116, label %if.then108

if.then108:                                       ; preds = %do.body106
  tail call void @verbose_torout_sleep() #14
  %48 = load ptr, ptr @torture_type, align 4
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %48, ptr noundef nonnull @.str.26) #17
  br label %do.end116

do.end116:                                        ; preds = %if.then108, %do.body106
  %49 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  tail call void @kfree(ptr noundef %49) #14
  store ptr null, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  br label %unwind

for.body120:                                      ; preds = %for.body120, %for.cond118.preheader
  %i.3865 = phi i32 [ %inc126, %for.body120 ], [ 0, %for.cond118.preheader ]
  %50 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  %arrayidx121 = getelementptr %struct.lock_stress_stats, ptr %50, i32 %i.3865
  %51 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx121, align 4
  %52 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  %n_lock_acquired124 = getelementptr %struct.lock_stress_stats, ptr %52, i32 %i.3865, i32 1
  %53 = ptrtoint ptr %n_lock_acquired124 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %n_lock_acquired124, align 4
  %inc126 = add nuw nsw i32 %i.3865, 1
  %54 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %cmp119 = icmp slt i32 %inc126, %54
  br i1 %cmp119, label %for.body120, label %if.end129

if.end129:                                        ; preds = %for.body120, %for.cond118.preheader, %if.end100, %if.end89
  %55 = load ptr, ptr @torture_type, align 4
  %56 = load i8, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 2), align 4, !range !327
  %tobool.not.i = icmp eq i8 %56, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.82, ptr @.str.81
  %57 = load i32, ptr @cxt, align 4
  %58 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %59 = load i32, ptr @stat_interval, align 4
  %60 = load i32, ptr @verbose, align 4
  %61 = load i32, ptr @shuffle_interval, align 4
  %62 = load i32, ptr @stutter, align 4
  %63 = load i32, ptr @shutdown_secs, align 4
  %64 = load i32, ptr @onoff_interval, align 4
  %65 = load i32, ptr @onoff_holdoff, align 4
  %call.i805 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %55, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond.i, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef %65) #17
  %66 = load i32, ptr @onoff_interval, align 4
  %cmp130 = icmp sgt i32 %66, 0
  br i1 %cmp130, label %if.then131, label %if.end182

if.then131:                                       ; preds = %if.end129
  %67 = load i32, ptr @onoff_holdoff, align 4
  %mul132 = mul i32 %67, 100
  %mul133 = mul i32 %66, 100
  %call134 = tail call i32 @torture_onoff_init(i32 noundef %mul132, i32 noundef %mul133, ptr noundef null) #14
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %land.rhs, label %if.end182

land.rhs:                                         ; preds = %if.then131
  %.b744 = load i1, ptr @lock_torture_init.__already_done, align 1
  br i1 %.b744, label %unwind, label %if.then143, !prof !328

if.then143:                                       ; preds = %land.rhs
  store i1 true, ptr @lock_torture_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1025, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call134) #14
  br label %unwind

if.end182:                                        ; preds = %if.then131, %if.end129
  %68 = load i32, ptr @shuffle_interval, align 4
  %cmp183 = icmp sgt i32 %68, 0
  br i1 %cmp183, label %if.then185, label %if.end250

if.then185:                                       ; preds = %if.end182
  %call186 = tail call i32 @torture_shuffle_init(i32 noundef %68) #14
  %cmp189 = icmp slt i32 %call186, 0
  br i1 %cmp189, label %land.rhs198, label %if.end250

land.rhs198:                                      ; preds = %if.then185
  %.b732743 = load i1, ptr @lock_torture_init.__already_done.29, align 1
  br i1 %.b732743, label %unwind, label %if.then209, !prof !328

if.then209:                                       ; preds = %land.rhs198
  store i1 true, ptr @lock_torture_init.__already_done.29, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1030, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call186) #14
  br label %unwind

if.end250:                                        ; preds = %if.then185, %if.end182
  %69 = load i32, ptr @shutdown_secs, align 4
  %cmp251 = icmp sgt i32 %69, 0
  br i1 %cmp251, label %if.then253, label %if.end318

if.then253:                                       ; preds = %if.end250
  %call254 = tail call i32 @torture_shutdown_init(i32 noundef %69, ptr noundef nonnull @lock_torture_cleanup) #14
  %cmp257 = icmp slt i32 %call254, 0
  br i1 %cmp257, label %land.rhs266, label %if.end318

land.rhs266:                                      ; preds = %if.then253
  %.b733742 = load i1, ptr @lock_torture_init.__already_done.30, align 1
  br i1 %.b733742, label %unwind, label %if.then277, !prof !328

if.then277:                                       ; preds = %land.rhs266
  store i1 true, ptr @lock_torture_init.__already_done.30, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1036, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call254) #14
  br label %unwind

if.end318:                                        ; preds = %if.then253, %if.end250
  %70 = load i32, ptr @stutter, align 4
  %cmp319 = icmp sgt i32 %70, 0
  br i1 %cmp319, label %if.then321, label %if.end386

if.then321:                                       ; preds = %if.end318
  %call322 = tail call i32 @torture_stutter_init(i32 noundef %70, i32 noundef %70) #14
  %cmp325 = icmp slt i32 %call322, 0
  br i1 %cmp325, label %land.rhs334, label %if.end386

land.rhs334:                                      ; preds = %if.then321
  %.b734741 = load i1, ptr @lock_torture_init.__already_done.31, align 1
  br i1 %.b734741, label %unwind, label %if.then345, !prof !328

if.then345:                                       ; preds = %land.rhs334
  store i1 true, ptr @lock_torture_init.__already_done.31, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1041, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call322) #14
  br label %unwind

if.end386:                                        ; preds = %if.then321, %if.end318
  %71 = load i32, ptr @nwriters_stress, align 4
  %tobool387.not = icmp eq i32 %71, 0
  br i1 %tobool387.not, label %if.end399, label %if.then388

if.then388:                                       ; preds = %if.end386
  %72 = load i32, ptr @cxt, align 4
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 4) #14
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !326

kcalloc.exit.thread:                              ; preds = %if.then388
  store ptr null, ptr @writer_tasks, align 4
  br label %do.end395

if.end7.i.i:                                      ; preds = %if.then388
  %75 = extractvalue { i32, i1 } %73, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #18
  store ptr %call8.i.i, ptr @writer_tasks, align 4
  %cmp390 = icmp eq ptr %call8.i.i, null
  br i1 %cmp390, label %do.end395, label %if.end399

do.end395:                                        ; preds = %if.end7.i.i, %kcalloc.exit.thread
  %76 = load ptr, ptr @torture_type, align 4
  %call397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %76, ptr noundef nonnull @.str.35) #17
  br label %unwind

if.end399:                                        ; preds = %if.end7.i.i, %if.end386
  %77 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readlock400 = getelementptr inbounds %struct.lock_torture_ops, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %readlock400 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %readlock400, align 4
  %tobool401.not = icmp eq ptr %79, null
  br i1 %tobool401.not, label %for.cond414.preheader, label %if.then402

for.cond414.preheader:                            ; preds = %if.end7.i.i840, %if.end399
  br label %for.cond414

if.then402:                                       ; preds = %if.end399
  %80 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %80, i32 4) #14
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %kcalloc.exit842.thread, label %if.end7.i.i840, !prof !326

kcalloc.exit842.thread:                           ; preds = %if.then402
  store ptr null, ptr @reader_tasks, align 4
  br label %do.end409

if.end7.i.i840:                                   ; preds = %if.then402
  %83 = extractvalue { i32, i1 } %81, 0
  %call8.i.i839 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %83, i32 noundef 3520) #18
  store ptr %call8.i.i839, ptr @reader_tasks, align 4
  %cmp404 = icmp eq ptr %call8.i.i839, null
  br i1 %cmp404, label %do.end409, label %for.cond414.preheader

do.end409:                                        ; preds = %if.end7.i.i840, %kcalloc.exit842.thread
  %84 = load ptr, ptr @torture_type, align 4
  %call411 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %84, ptr noundef nonnull @.str.38) #17
  %85 = load ptr, ptr @writer_tasks, align 4
  tail call void @kfree(ptr noundef %85) #14
  store ptr null, ptr @writer_tasks, align 4
  br label %unwind

for.cond414:                                      ; preds = %for.inc564, %for.cond414.preheader
  %j.0 = phi i32 [ %inc566, %for.inc564 ], [ 0, %for.cond414.preheader ]
  %86 = load i32, ptr @cxt, align 4
  %cmp415 = icmp slt i32 %j.0, %86
  br i1 %cmp415, label %if.end423, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond414
  %87 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %cmp417 = icmp slt i32 %j.0, %87
  br i1 %cmp417, label %create_reader, label %for.end567

if.end423:                                        ; preds = %for.cond414
  %88 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  %arrayidx424 = getelementptr %struct.lock_stress_stats, ptr %88, i32 %j.0
  %89 = load ptr, ptr @writer_tasks, align 4
  %arrayidx425 = getelementptr ptr, ptr %89, i32 %j.0
  %call426 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @lock_torture_writer, ptr noundef %arrayidx424, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef %arrayidx425) #14
  %cmp429 = icmp slt i32 %call426, 0
  br i1 %cmp429, label %land.rhs438, label %create_reader

land.rhs438:                                      ; preds = %if.end423
  %.b735740 = load i1, ptr @lock_torture_init.__already_done.42, align 1
  br i1 %.b735740, label %unwind, label %if.then449, !prof !328

if.then449:                                       ; preds = %land.rhs438
  store i1 true, ptr @lock_torture_init.__already_done.42, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1085, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call426) #14
  br label %unwind

create_reader:                                    ; preds = %if.end423, %lor.rhs
  %90 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readlock490 = getelementptr inbounds %struct.lock_torture_ops, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %readlock490 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %readlock490, align 4
  %cmp491 = icmp eq ptr %92, null
  br i1 %cmp491, label %for.inc564, label %lor.lhs.false493

lor.lhs.false493:                                 ; preds = %create_reader
  %93 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %cmp494.not = icmp slt i32 %j.0, %93
  br i1 %cmp494.not, label %if.end497, label %for.inc564

if.end497:                                        ; preds = %lor.lhs.false493
  %94 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  %arrayidx498 = getelementptr %struct.lock_stress_stats, ptr %94, i32 %j.0
  %95 = load ptr, ptr @reader_tasks, align 4
  %arrayidx499 = getelementptr ptr, ptr %95, i32 %j.0
  %call500 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @lock_torture_reader, ptr noundef %arrayidx498, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef %arrayidx499) #14
  %cmp503 = icmp slt i32 %call500, 0
  br i1 %cmp503, label %land.rhs512, label %for.inc564

land.rhs512:                                      ; preds = %if.end497
  %.b736739 = load i1, ptr @lock_torture_init.__already_done.46, align 1
  br i1 %.b736739, label %unwind, label %if.then523, !prof !328

if.then523:                                       ; preds = %land.rhs512
  store i1 true, ptr @lock_torture_init.__already_done.46, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1094, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call500) #14
  br label %unwind

for.inc564:                                       ; preds = %if.end497, %lor.lhs.false493, %create_reader
  %inc566 = add nuw nsw i32 %j.0, 1
  br label %for.cond414

for.end567:                                       ; preds = %lor.rhs
  %96 = load i32, ptr @stat_interval, align 4
  %cmp568 = icmp sgt i32 %96, 0
  br i1 %cmp568, label %if.then570, label %if.end635

if.then570:                                       ; preds = %for.end567
  %call571 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @lock_torture_stats, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @stats_task) #14
  %cmp574 = icmp slt i32 %call571, 0
  br i1 %cmp574, label %land.rhs583, label %if.end635

land.rhs583:                                      ; preds = %if.then570
  %.b737738 = load i1, ptr @lock_torture_init.__already_done.50, align 1
  br i1 %.b737738, label %unwind, label %if.then594, !prof !328

if.then594:                                       ; preds = %land.rhs583
  store i1 true, ptr @lock_torture_init.__already_done.50, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1100, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call571) #14
  br label %unwind

if.end635:                                        ; preds = %if.then570, %for.end567
  tail call void @torture_init_end() #14
  br label %cleanup

unwind:                                           ; preds = %if.then594, %land.rhs583, %if.then523, %land.rhs512, %if.then449, %land.rhs438, %do.end409, %do.end395, %if.then345, %land.rhs334, %if.then277, %land.rhs266, %if.then209, %land.rhs198, %if.then143, %land.rhs, %do.end116, %if.then71, %do.body69, %do.end37, %do.end28
  %firsterr.0 = phi i32 [ -22, %do.end28 ], [ -22, %do.end37 ], [ -12, %do.end116 ], [ -12, %do.end395 ], [ -12, %do.end409 ], [ -12, %if.then71 ], [ -12, %do.body69 ], [ %call134, %if.then143 ], [ %call186, %if.then209 ], [ %call254, %if.then277 ], [ %call322, %if.then345 ], [ %call426, %if.then449 ], [ %call500, %if.then523 ], [ %call571, %if.then594 ], [ %call134, %land.rhs ], [ %call186, %land.rhs198 ], [ %call254, %land.rhs266 ], [ %call322, %land.rhs334 ], [ %call426, %land.rhs438 ], [ %call500, %land.rhs512 ], [ %call571, %land.rhs583 ]
  tail call void @torture_init_end() #14
  tail call void @lock_torture_cleanup()
  %97 = load i32, ptr @shutdown_secs, align 4
  %tobool636.not = icmp eq i32 %97, 0
  br i1 %tobool636.not, label %cleanup, label %do.end650

do.end650:                                        ; preds = %unwind
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1110, i32 noundef 9, ptr noundef null) #14
  tail call void @kernel_power_off() #14
  br label %cleanup

cleanup:                                          ; preds = %do.end650, %unwind, %if.end635, %entry
  %retval.0 = phi i32 [ 0, %if.end635 ], [ -16, %entry ], [ %firsterr.0, %do.end650 ], [ %firsterr.0, %unwind ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lock_torture_cleanup() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @torture_cleanup_begin() #14
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %1 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %end, label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %2 = load ptr, ptr @writer_tasks, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %3 = load i32, ptr @cxt, align 4
  %cmp43 = icmp sgt i32 %3, 0
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %i.044 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %4 = load ptr, ptr @writer_tasks, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.044
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.101, ptr noundef %arrayidx) #14
  %inc = add nuw nsw i32 %i.044, 1
  %5 = load i32, ptr @cxt, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %6 = load ptr, ptr @writer_tasks, align 4
  tail call void @kfree(ptr noundef %6) #14
  store ptr null, ptr @writer_tasks, align 4
  br label %if.end6

if.end6:                                          ; preds = %for.end, %if.end3
  %7 = load ptr, ptr @reader_tasks, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end16, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %if.end6
  %8 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %cmp1045 = icmp sgt i32 %8, 0
  br i1 %cmp1045, label %for.body11, label %for.end15

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %i.146 = phi i32 [ %inc14, %for.body11 ], [ 0, %for.cond9.preheader ]
  %9 = load ptr, ptr @reader_tasks, align 4
  %arrayidx12 = getelementptr ptr, ptr %9, i32 %i.146
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.102, ptr noundef %arrayidx12) #14
  %inc14 = add nuw nsw i32 %i.146, 1
  %10 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %cmp10 = icmp slt i32 %inc14, %10
  br i1 %cmp10, label %for.body11, label %for.end15

for.end15:                                        ; preds = %for.body11, %for.cond9.preheader
  %11 = load ptr, ptr @reader_tasks, align 4
  tail call void @kfree(ptr noundef %11) #14
  store ptr null, ptr @reader_tasks, align 4
  br label %if.end16

if.end16:                                         ; preds = %for.end15, %if.end6
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.103, ptr noundef nonnull @stats_task) #14
  tail call fastcc void @lock_torture_stats_print()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 4), i32 noundef 4) #14
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 4), align 4
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  %13 = load ptr, ptr @torture_type, align 4
  %14 = load i8, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 2), align 4, !range !327
  %tobool.not.i = icmp eq i8 %14, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.82, ptr @.str.81
  %15 = load i32, ptr @cxt, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %17 = load i32, ptr @stat_interval, align 4
  %18 = load i32, ptr @verbose, align 4
  %19 = load i32, ptr @shuffle_interval, align 4
  %20 = load i32, ptr @stutter, align 4
  %21 = load i32, ptr @shutdown_secs, align 4
  %22 = load i32, ptr @onoff_interval, align 4
  %23 = load i32, ptr @onoff_holdoff, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %13, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond.i, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23) #17
  br label %if.end24

if.else:                                          ; preds = %if.end16
  %call20 = tail call zeroext i1 @torture_onoff_failures() #14
  %24 = load ptr, ptr @torture_type, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 2), align 4, !range !327
  %tobool.not.i37 = icmp eq i8 %25, 0
  %cond.i38 = select i1 %tobool.not.i37, ptr @.str.82, ptr @.str.81
  %26 = load i32, ptr @cxt, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %28 = load i32, ptr @stat_interval, align 4
  %29 = load i32, ptr @verbose, align 4
  %30 = load i32, ptr @shuffle_interval, align 4
  %31 = load i32, ptr @stutter, align 4
  %32 = load i32, ptr @shutdown_secs, align 4
  %33 = load i32, ptr @onoff_interval, align 4
  %34 = load i32, ptr @onoff_holdoff, align 4
  br i1 %call20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  %call.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %24, ptr noundef nonnull @.str.105, ptr noundef nonnull %cond.i38, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34) #17
  br label %if.end24

if.else22:                                        ; preds = %if.else
  %call.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %24, ptr noundef nonnull @.str.106, ptr noundef nonnull %cond.i38, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34) #17
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21, %if.then19
  %35 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  tail call void @kfree(ptr noundef %35) #14
  store ptr null, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  %36 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  tail call void @kfree(ptr noundef %36) #14
  store ptr null, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  br label %end

end:                                              ; preds = %if.end24, %land.lhs.true
  %37 = load i8, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 3), align 1, !range !327
  %tobool25.not = icmp eq i8 %37, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %end
  %38 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %exit = getelementptr inbounds %struct.lock_torture_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %exit, align 4
  %tobool27.not = icmp eq ptr %40, null
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.then26
  tail call void %40() #14
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then26
  store i8 0, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 3), align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %end
  tail call void @torture_cleanup_end() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry
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
declare dso_local void @verbose_torout_sleep() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_onoff_init(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_shuffle_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_shutdown_init(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_stutter_init(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_torture_create_kthread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_torture_writer(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rand = alloca %struct.torture_random_state, align 8
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arg to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #14
  %1 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %rand, align 8
  %2 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end3, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #14
  %3 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %3, ptr noundef nonnull @.str.83) #17
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %7, i32 noundef 19) #14
  %n_lock_acquired = getelementptr inbounds %struct.lock_stress_stats, ptr %arg, i32 0, i32 1
  br label %do.body5

do.body5:                                         ; preds = %if.end115, %do.end3
  %call6 = call i32 @torture_random(ptr noundef nonnull %rand) #14
  %and = and i32 %call6, 1048575
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body5
  %call8 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body5
  %8 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %task_boost = getelementptr inbounds %struct.lock_torture_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %task_boost to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task_boost, align 4
  call void %10(ptr noundef nonnull %rand) #14
  %11 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %writelock = getelementptr inbounds %struct.lock_torture_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %writelock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %writelock, align 4
  %call10 = call i32 %13(i32 noundef %sub.ptr.div) #14
  %.b143 = load i1, ptr @lock_is_write_held, align 1
  br i1 %.b143, label %land.rhs, label %if.end55

land.rhs:                                         ; preds = %if.end9
  %.b141145 = load i1, ptr @lock_torture_writer.__already_done, align 1
  br i1 %.b141145, label %if.then54, label %if.then19, !prof !328

if.then19:                                        ; preds = %land.rhs
  store i1 true, ptr @lock_torture_writer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 682, i32 noundef 9, ptr noundef null) #14
  br label %if.then54

if.then54:                                        ; preds = %if.then19, %land.rhs
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %arg, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end9
  store i1 true, ptr @lock_is_write_held, align 1
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lock_is_read_held, i32 noundef 4) #14
  %16 = load volatile i32, ptr @lock_is_read_held, align 4
  %tobool58.not = icmp eq i32 %16, 0
  br i1 %tobool58.not, label %if.end115, label %land.rhs65

land.rhs65:                                       ; preds = %if.end55
  %.b142144 = load i1, ptr @lock_torture_writer.__already_done.84, align 1
  br i1 %.b142144, label %if.then112, label %if.then76, !prof !328

if.then76:                                        ; preds = %land.rhs65
  store i1 true, ptr @lock_torture_writer.__already_done.84, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 685, i32 noundef 9, ptr noundef null) #14
  br label %if.then112

if.then112:                                       ; preds = %if.then76, %land.rhs65
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arg, align 4
  %inc114 = add i32 %18, 1
  store i32 %inc114, ptr %arg, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end55
  %19 = ptrtoint ptr %n_lock_acquired to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_lock_acquired, align 4
  %inc116 = add i32 %20, 1
  store i32 %inc116, ptr %n_lock_acquired, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %write_delay = getelementptr inbounds %struct.lock_torture_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_delay, align 4
  call void %23(ptr noundef nonnull %rand) #14
  store i1 false, ptr @lock_is_write_held, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  store volatile i32 %24, ptr @last_lock_release, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %writeunlock = getelementptr inbounds %struct.lock_torture_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %writeunlock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %writeunlock, align 4
  call void %27(i32 noundef %sub.ptr.div) #14
  %call126 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.39) #14
  %call128 = call zeroext i1 @torture_must_stop() #14
  br i1 %call128, label %do.end131, label %do.body5

do.end131:                                        ; preds = %if.end115
  %28 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %task_boost132 = getelementptr inbounds %struct.lock_torture_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %task_boost132 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task_boost132, align 4
  call void %30(ptr noundef null) #14
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.39) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_torture_reader(ptr noundef %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rand = alloca %struct.torture_random_state, align 8
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arg to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #14
  %1 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %rand, align 8
  %2 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end3, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #14
  %3 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %3, ptr noundef nonnull @.str.85) #17
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %7, i32 noundef 19) #14
  %n_lock_acquired = getelementptr inbounds %struct.lock_stress_stats, ptr %arg, i32 0, i32 1
  br label %do.body5

do.body5:                                         ; preds = %if.end55, %do.end3
  %call6 = call i32 @torture_random(ptr noundef nonnull %rand) #14
  %and = and i32 %call6, 1048575
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body5
  %call8 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body5
  %8 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readlock = getelementptr inbounds %struct.lock_torture_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %readlock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %readlock, align 4
  %call10 = call i32 %10(i32 noundef %sub.ptr.div) #14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @lock_is_read_held, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @lock_is_read_held, i32 1, i32 3, i32 1) #14
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @lock_is_read_held, ptr nonnull @lock_is_read_held, i32 1, ptr nonnull elementtype(i32) @lock_is_read_held) #14, !srcloc !329
  %.b69 = load i1, ptr @lock_is_write_held, align 1
  br i1 %.b69, label %land.rhs, label %if.end55

land.rhs:                                         ; preds = %if.end9
  %.b6870 = load i1, ptr @lock_torture_reader.__already_done, align 1
  br i1 %.b6870, label %if.then54, label %if.then19, !prof !328

if.then19:                                        ; preds = %land.rhs
  store i1 true, ptr @lock_torture_reader.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 721, i32 noundef 9, ptr noundef null) #14
  br label %if.then54

if.then54:                                        ; preds = %if.then19, %land.rhs
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %arg, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end9
  %14 = ptrtoint ptr %n_lock_acquired to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_lock_acquired, align 4
  %inc56 = add i32 %15, 1
  store i32 %inc56, ptr %n_lock_acquired, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %read_delay = getelementptr inbounds %struct.lock_torture_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %read_delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_delay, align 4
  call void %18(ptr noundef nonnull %rand) #14
  %call.i.i72 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @lock_is_read_held, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @lock_is_read_held, i32 1, i32 3, i32 1) #14
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @lock_is_read_held, ptr nonnull @lock_is_read_held, i32 1, ptr nonnull elementtype(i32) @lock_is_read_held) #14, !srcloc !330
  %20 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readunlock = getelementptr inbounds %struct.lock_torture_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %readunlock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %readunlock, align 4
  call void %22(i32 noundef %sub.ptr.div) #14
  %call57 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.43) #14
  %call59 = call zeroext i1 @torture_must_stop() #14
  br i1 %call59, label %do.end62, label %do.body5

do.end62:                                         ; preds = %if.end55
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.43) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_torture_stats(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body3.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @verbose_torout_sleep() #14
  %1 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %1, ptr noundef nonnull @.str.86) #17
  br label %do.body3.preheader

do.body3.preheader:                               ; preds = %if.then, %entry
  br label %do.body3

do.body3:                                         ; preds = %do.body3, %do.body3.preheader
  %2 = load i32, ptr @stat_interval, align 4
  %mul = mul i32 %2, 100
  %call4 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #14
  tail call fastcc void @lock_torture_stats_print()
  tail call void @torture_shutdown_absorb(ptr noundef nonnull @.str.47) #14
  %call5 = tail call zeroext i1 @torture_must_stop() #14
  br i1 %call5, label %do.end6, label %do.body3

do.end6:                                          ; preds = %do.body3
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.47) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_init_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @torture_lock_busted_write_lock(i32 noundef %tid) #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_lock_busted_write_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr @cxt, align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %if.end

while.body:                                       ; preds = %while.body, %entry
  %__ms.010 = phi i32 [ %dec, %while.body ], [ 100, %entry ]
  %dec = add nsw i32 %__ms.010, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

if.end:                                           ; preds = %while.body, %entry
  %call3 = tail call i32 @torture_random(ptr noundef %trsp) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @torture_boost_dummy(ptr nocapture noundef %trsp) #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @torture_lock_busted_write_unlock(i32 noundef %tid) #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_random(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_spin_lock_write_lock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @torture_spinlock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_spin_lock_write_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr @cxt, align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %if.end

while.body:                                       ; preds = %while.body, %entry
  %__ms.018 = phi i32 [ %dec, %while.body ], [ 100, %entry ]
  %dec = add nsw i32 %__ms.018, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

if.end:                                           ; preds = %while.body, %entry
  %call3 = tail call i32 @torture_random(ptr noundef %trsp) #14
  %2 = load i32, ptr @cxt, align 4
  %mul5 = shl i32 %2, 2
  %rem6 = urem i32 %call3, %mul5
  %tobool7.not = icmp eq i32 %rem6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %call10 = tail call i32 @torture_random(ptr noundef %trsp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_spin_lock_write_unlock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock(ptr noundef nonnull @torture_spinlock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_spin_lock_write_lock_irq(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @torture_spinlock) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %flags5 = getelementptr inbounds %struct.lock_torture_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %flags5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_lock_spin_write_unlock_irq(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %flags = getelementptr inbounds %struct.lock_torture_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @torture_spinlock, i32 noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_rwlock_write_lock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @torture_rwlock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwlock_write_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr @cxt, align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %if.else

while.body:                                       ; preds = %while.body, %entry
  %__ms.03 = phi i32 [ %dec, %while.body ], [ 100, %entry ]
  %dec = add nsw i32 %__ms.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %while.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwlock_write_unlock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_unlock(ptr noundef nonnull @torture_rwlock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_rwlock_read_lock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @torture_rwlock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwlock_read_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %if.else

while.body:                                       ; preds = %while.body, %entry
  %__ms.03 = phi i32 [ %dec, %while.body ], [ 100, %entry ]
  %dec = add nsw i32 %__ms.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %while.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwlock_read_unlock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock(ptr noundef nonnull @torture_rwlock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_rwlock_write_lock_irq(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @torture_rwlock) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %flags1 = getelementptr inbounds %struct.lock_torture_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %flags1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwlock_write_unlock_irq(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %flags = getelementptr inbounds %struct.lock_torture_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @torture_rwlock, i32 noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_rwlock_read_lock_irq(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @torture_rwlock) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %flags1 = getelementptr inbounds %struct.lock_torture_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %flags1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwlock_read_unlock_irq(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %flags = getelementptr inbounds %struct.lock_torture_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @torture_rwlock, i32 noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_mutex_lock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @torture_mutex, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_mutex_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr @cxt, align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %while.body7.preheader

while.body7.preheader:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #14
  br label %if.end

while.body:                                       ; preds = %while.body, %entry
  %__ms.018 = phi i32 [ %dec, %while.body ], [ 500, %entry ]
  %dec = add nsw i32 %__ms.018, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

if.end:                                           ; preds = %while.body, %while.body7.preheader
  %call9 = tail call i32 @torture_random(ptr noundef %trsp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_mutex_unlock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @torture_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_ww_mutex_init() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef nonnull @torture_ww_mutex_0, ptr noundef %0, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 2)) #14
  store ptr null, ptr getelementptr inbounds (%struct.ww_mutex, ptr @torture_ww_mutex_0, i32 0, i32 1), align 4
  store ptr @torture_ww_class, ptr getelementptr inbounds (%struct.ww_mutex, ptr @torture_ww_mutex_0, i32 0, i32 2), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef nonnull @torture_ww_mutex_1, ptr noundef %1, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 2)) #14
  store ptr null, ptr getelementptr inbounds (%struct.ww_mutex, ptr @torture_ww_mutex_1, i32 0, i32 1), align 4
  store ptr @torture_ww_class, ptr getelementptr inbounds (%struct.ww_mutex, ptr @torture_ww_mutex_1, i32 0, i32 2), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef nonnull @torture_ww_mutex_2, ptr noundef %2, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 2)) #14
  store ptr null, ptr getelementptr inbounds (%struct.ww_mutex, ptr @torture_ww_mutex_2, i32 0, i32 1), align 4
  store ptr @torture_ww_class, ptr getelementptr inbounds (%struct.ww_mutex, ptr @torture_ww_mutex_2, i32 0, i32 2), align 4
  %3 = load i32, ptr @cxt, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 64) #14
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !326

kmalloc_array.exit.thread:                        ; preds = %entry
  store ptr null, ptr @ww_acquire_ctxs, align 4
  br label %do.body

if.end7.i:                                        ; preds = %entry
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #18
  store ptr %call8.i, ptr @ww_acquire_ctxs, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end7.i, %kmalloc_array.exit.thread
  %7 = load i32, ptr @verbose, align 4
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %do.body
  tail call void @verbose_torout_sleep() #14
  %8 = load ptr, ptr @torture_type, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %8, ptr noundef nonnull @.str.61) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %do.body, %if.end7.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_ww_mutex_exit() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ww_acquire_ctxs, align 4
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_ww_mutex_lock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %list = alloca %struct.list_head, align 4
  %locks = alloca [3 x %struct.reorder_lock], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %locks) #14
  %3 = call ptr @memset(ptr %locks, i32 255, i32 36)
  %4 = load ptr, ptr @ww_acquire_ctxs, align 4
  %arrayidx = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid
  %lock = getelementptr inbounds %struct.reorder_lock, ptr %locks, i32 0, i32 1
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @torture_ww_mutex_0, ptr %lock, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %locks, ptr noundef nonnull %list, ptr noundef nonnull %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %locks, ptr %0, align 4
  %7 = ptrtoint ptr %locks to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %locks, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %locks, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %locks, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry
  %arrayidx3 = getelementptr inbounds [3 x %struct.reorder_lock], ptr %locks, i32 0, i32 1
  %lock4 = getelementptr inbounds [3 x %struct.reorder_lock], ptr %locks, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @torture_ww_mutex_1, ptr %lock4, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %call.i.i59 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx3, ptr noundef nonnull %list, ptr noundef %12) #14
  br i1 %call.i.i59, label %if.end.i.i62, label %list_add.exit63

if.end.i.i62:                                     ; preds = %list_add.exit
  %prev1.i.i60 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3, ptr %prev1.i.i60, align 4
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %arrayidx3, align 4
  %prev3.i.i61 = getelementptr inbounds [3 x %struct.reorder_lock], ptr %locks, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i61 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev3.i.i61, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx3, ptr %list, align 4
  br label %list_add.exit63

list_add.exit63:                                  ; preds = %if.end.i.i62, %list_add.exit
  %arrayidx7 = getelementptr inbounds [3 x %struct.reorder_lock], ptr %locks, i32 0, i32 2
  %lock8 = getelementptr inbounds [3 x %struct.reorder_lock], ptr %locks, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %lock8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @torture_ww_mutex_2, ptr %lock8, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list, align 4
  %call.i.i64 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx7, ptr noundef nonnull %list, ptr noundef %19) #14
  br i1 %call.i.i64, label %if.end.i.i67, label %list_add.exit68

if.end.i.i67:                                     ; preds = %list_add.exit63
  %prev1.i.i65 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i65 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx7, ptr %prev1.i.i65, align 4
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %arrayidx7, align 4
  %prev3.i.i66 = getelementptr inbounds [3 x %struct.reorder_lock], ptr %locks, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i66 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %prev3.i.i66, align 4
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx7, ptr %list, align 4
  br label %list_add.exit68

list_add.exit68:                                  ; preds = %if.end.i.i67, %list_add.exit63
  %24 = call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @torture_ww_class, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @torture_ww_class, i32 1, i32 3, i32 1) #14
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @torture_ww_class, ptr nonnull @torture_ww_class, i32 1, ptr nonnull elementtype(i32) @torture_ww_class) #14, !srcloc !331
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  %stamp3.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 1
  %30 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %acquired.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 2
  %31 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %acquired.i, align 4
  %wounded.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 3
  %32 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %wounded.i, align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %33 to i16
  %is_wait_die4.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 4
  %34 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %ww_class5.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 6
  %35 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @torture_ww_class, ptr %ww_class5.i, align 4
  %done_acquire.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 5
  %36 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %done_acquire.i, align 4
  %contending_lock.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 7
  %37 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %contending_lock.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef %arrayidx, i32 noundef 64) #14
  %dep_map.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 8
  %38 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %38, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @torture_ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %39 = call ptr @llvm.returnaddress(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #14
  %deadlock_inject_interval.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 9
  %41 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %42 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stamp3.i, align 4
  %and.i = and i32 %43, 15
  %deadlock_inject_countdown.i = getelementptr %struct.ww_acquire_ctx, ptr %4, i32 %tid, i32 10
  %44 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i, ptr %deadlock_inject_countdown.i, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %ll.080 = load ptr, ptr %list, align 4
  %cmp.not81 = icmp eq ptr %ll.080, %list
  br i1 %cmp.not81, label %cleanup42, label %for.body

for.body:                                         ; preds = %for.inc35, %list_add.exit68
  %ll.082 = phi ptr [ %ll.0, %for.inc35 ], [ %ll.080, %list_add.exit68 ]
  %lock13 = getelementptr inbounds %struct.reorder_lock, ptr %ll.082, i32 0, i32 1
  %46 = ptrtoint ptr %lock13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock13, align 4
  %call = call i32 @ww_mutex_lock(ptr noundef %47, ptr noundef %arrayidx) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc35, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.body
  %ln.0.in76 = getelementptr inbounds %struct.list_head, ptr %ll.082, i32 0, i32 1
  %48 = ptrtoint ptr %ln.0.in76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %ln.077 = load ptr, ptr %ln.0.in76, align 4
  %cmp21.not78 = icmp eq ptr %ln.077, %list
  br i1 %cmp21.not78, label %for.end, label %for.body23

for.body23:                                       ; preds = %for.body23, %for.cond19.preheader
  %ln.079 = phi ptr [ %ln.0, %for.body23 ], [ %ln.077, %for.cond19.preheader ]
  %lock24 = getelementptr inbounds %struct.reorder_lock, ptr %ln.079, i32 0, i32 1
  %49 = ptrtoint ptr %lock24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lock24, align 4
  call void @ww_mutex_unlock(ptr noundef %50) #14
  %ln.0.in = getelementptr inbounds %struct.list_head, ptr %ln.079, i32 0, i32 1
  %51 = ptrtoint ptr %ln.0.in to i32
  call void @__asan_load4_noabort(i32 %51)
  %ln.0 = load ptr, ptr %ln.0.in, align 4
  %cmp21.not = icmp eq ptr %ln.0, %list
  br i1 %cmp21.not, label %for.end, label %for.body23

for.end:                                          ; preds = %for.body23, %for.cond19.preheader
  %cmp30.not = icmp eq i32 %call, -35
  br i1 %cmp30.not, label %if.end32, label %cleanup42

if.end32:                                         ; preds = %for.end
  %52 = ptrtoint ptr %lock13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %54 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %ww_mutex_lock_slow.exit

land.lhs.true.i:                                  ; preds = %if.end32
  %55 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %contending_lock.i, align 4
  %tobool1.not.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i, label %do.end.i, label %ww_mutex_lock_slow.exit, !prof !326

do.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = call i32 @debug_locks_off() #14
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %ww_mutex_lock_slow.exit, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %57 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i = icmp eq i32 %57, 0
  br i1 %tobool7.not.i, label %do.end20.i, label %ww_mutex_lock_slow.exit

do.end20.i:                                       ; preds = %land.lhs.true6.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #14
  br label %ww_mutex_lock_slow.exit

ww_mutex_lock_slow.exit:                          ; preds = %do.end20.i, %land.lhs.true6.i, %do.end.i, %land.lhs.true.i, %if.end32
  %call38.i = call i32 @ww_mutex_lock(ptr noundef %53, ptr noundef %arrayidx) #14
  %call.i.i70 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ll.082) #14
  br i1 %call.i.i70, label %if.end.i.i71, label %__list_del_entry.exit.i

if.end.i.i71:                                     ; preds = %ww_mutex_lock_slow.exit
  %58 = ptrtoint ptr %ln.0.in76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ln.0.in76, align 4
  %60 = ptrtoint ptr %ll.082 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ll.082, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i71, %ww_mutex_lock_slow.exit
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list, align 4
  %call.i.i.i72 = call zeroext i1 @__list_add_valid(ptr noundef %ll.082, ptr noundef nonnull %list, ptr noundef %65) #14
  br i1 %call.i.i.i72, label %if.end.i.i.i, label %for.inc35

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ll.082, ptr %prev1.i.i2.i, align 4
  %67 = ptrtoint ptr %ll.082 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %ll.082, align 4
  %68 = ptrtoint ptr %ln.0.in76 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list, ptr %ln.0.in76, align 4
  %69 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %ll.082, ptr %list, align 4
  br label %for.inc35

for.inc35:                                        ; preds = %if.end.i.i.i, %__list_del_entry.exit.i, %for.body
  %70 = ptrtoint ptr %ll.082 to i32
  call void @__asan_load4_noabort(i32 %70)
  %ll.0 = load ptr, ptr %ll.082, align 4
  %cmp.not = icmp eq ptr %ll.0, %list
  br i1 %cmp.not, label %cleanup42, label %for.body

cleanup42:                                        ; preds = %for.inc35, %for.end, %list_add.exit68
  %retval.2 = phi i32 [ 0, %list_add.exit68 ], [ %call, %for.end ], [ 0, %for.inc35 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %locks) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #14
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_ww_mutex_unlock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ww_acquire_ctxs, align 4
  %arrayidx = getelementptr %struct.ww_acquire_ctx, ptr %0, i32 %tid
  tail call void @ww_mutex_unlock(ptr noundef nonnull @torture_ww_mutex_0) #14
  tail call void @ww_mutex_unlock(ptr noundef nonnull @torture_ww_mutex_1) #14
  tail call void @ww_mutex_unlock(ptr noundef nonnull @torture_ww_mutex_2) #14
  tail call fastcc void @ww_acquire_fini(ptr noundef %arrayidx)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #10 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end36, label %do.end, !prof !328

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #14
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end36, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #14
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5, %do.end, %land.lhs.true, %__here
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_rtmutex_lock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rt_mutex_lock_nested(ptr noundef nonnull @torture_rtmutex, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rtmutex_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr @cxt, align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %if.end

while.body:                                       ; preds = %while.body, %entry
  %__ms.018 = phi i32 [ %dec, %while.body ], [ 100, %entry ]
  %dec = add nsw i32 %__ms.018, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

if.end:                                           ; preds = %while.body, %entry
  %call3 = tail call i32 @torture_random(ptr noundef %trsp) #14
  %2 = load i32, ptr @cxt, align 4
  %mul5 = shl i32 %2, 2
  %rem6 = urem i32 %call3, %mul5
  %tobool7.not = icmp eq i32 %rem6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %call10 = tail call i32 @torture_random(ptr noundef %trsp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rtmutex_boost(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prio.i, align 8
  %cmp.i.i = icmp sgt i32 %5, 99
  %tobool2.not = icmp eq ptr %trsp, null
  br i1 %cmp.i.i, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  br i1 %tobool2.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @torture_random(ptr noundef nonnull %trsp) #14
  %6 = load i32, ptr @cxt, align 4
  %mul = mul i32 %6, 50000
  %rem = urem i32 %call3, %mul
  %tobool4.not = icmp eq i32 %rem, 0
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo(ptr noundef %8) #14
  br label %cleanup

if.else8:                                         ; preds = %entry
  br i1 %tobool2.not, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else8
  %call10 = tail call i32 @torture_random(ptr noundef nonnull %trsp) #14
  %9 = load i32, ptr @cxt, align 4
  %mul12 = mul i32 %9, 100000
  %rem13 = urem i32 %call10, %mul12
  %tobool14.not = icmp eq i32 %rem13, 0
  br i1 %tobool14.not, label %if.then15, label %cleanup

if.then15:                                        ; preds = %lor.lhs.false, %if.else8
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  tail call void @sched_set_normal(ptr noundef %11, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %lor.lhs.false, %if.then5, %land.lhs.true, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rtmutex_unlock(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rt_mutex_unlock(ptr noundef nonnull @torture_rtmutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_normal(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_rwsem_down_write(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @torture_rwsem) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwsem_write_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr @cxt, align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %while.body7.preheader

while.body7.preheader:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #14
  br label %if.end

while.body:                                       ; preds = %while.body, %entry
  %__ms.018 = phi i32 [ %dec, %while.body ], [ 1000, %entry ]
  %dec = add nsw i32 %__ms.018, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

if.end:                                           ; preds = %while.body, %while.body7.preheader
  %call9 = tail call i32 @torture_random(ptr noundef %trsp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwsem_up_write(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @up_write(ptr noundef nonnull @torture_rwsem) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_rwsem_down_read(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @torture_rwsem) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwsem_read_delay(ptr noundef %trsp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @torture_random(ptr noundef %trsp) #14
  %0 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %mul1 = mul i32 %0, 200000
  %rem = urem i32 %call, %mul1
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.body, label %while.body7

while.body:                                       ; preds = %while.body, %entry
  %__ms.018 = phi i32 [ %dec, %while.body ], [ 200, %entry ]
  %dec = add nsw i32 %__ms.018, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #14
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end, label %while.body

while.body7:                                      ; preds = %while.body7, %entry
  %__ms3.017 = phi i32 [ %dec5, %while.body7 ], [ 50, %entry ]
  %dec5 = add nsw i32 %__ms3.017, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #14
  %tobool6.not = icmp eq i32 %dec5, 0
  br i1 %tobool6.not, label %if.end, label %while.body7

if.end:                                           ; preds = %while.body7, %while.body
  %call9 = tail call i32 @torture_random(ptr noundef %trsp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_rwsem_up_read(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @up_read(ptr noundef nonnull @torture_rwsem) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_percpu_rwsem_init() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__percpu_init_rwsem(ptr noundef nonnull @pcpu_rwsem, ptr noundef nonnull @.str.75, ptr noundef nonnull @torture_percpu_rwsem_init.rwsem_key) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !328

do.body3:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/locktorture.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 616, 0\0A.popsection", ""() #14, !srcloc !332
  unreachable

do.end6:                                          ; preds = %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_percpu_rwsem_exit() #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_free_rwsem(ptr noundef nonnull @pcpu_rwsem) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_percpu_rwsem_down_write(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_down_write(ptr noundef nonnull @pcpu_rwsem) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_percpu_rwsem_up_write(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_up_write(ptr noundef nonnull @pcpu_rwsem) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_percpu_rwsem_down_read(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.76, i32 noundef 49) #14
  %0 = tail call ptr @llvm.returnaddress(i32 0) #14
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @pcpu_rwsem, i32 0, i32 5), i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !333
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #14
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %rcu_sync_is_idle.exit.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %rcu_sync_is_idle.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.77, i32 noundef 35, ptr noundef nonnull @.str.78) #14
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i, %land.lhs.true.i.i, %entry
  %6 = load volatile i32, ptr @pcpu_rwsem, align 4
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body7.i, label %if.else.i, !prof !328

do.body7.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !334
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @pcpu_rwsem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add21.i = add i32 %18, 1
  store i32 %add21.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !335
  %and.i.i.i = and i32 %19, 128
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then41.i, label %do.end43.i, !prof !326

if.then41.i:                                      ; preds = %do.body7.i
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then41.i, %do.body7.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #14, !srcloc !336
  br label %percpu_down_read.exit

if.else.i:                                        ; preds = %rcu_sync_is_idle.exit.i
  %call50.i = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @pcpu_rwsem, i1 noundef zeroext false) #14
  br label %percpu_down_read.exit

percpu_down_read.exit:                            ; preds = %if.else.i, %do.end43.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !337
  %20 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i.i.i1.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @torture_percpu_rwsem_up_read(i32 noundef %tid) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #14
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @pcpu_rwsem, i32 0, i32 5), i32 noundef %1) #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !338
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #14
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %rcu_sync_is_idle.exit.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %rcu_sync_is_idle.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.77, i32 noundef 35, ptr noundef nonnull @.str.78) #14
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i, %land.lhs.true.i.i, %entry
  %6 = load volatile i32, ptr @pcpu_rwsem, align 4
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %do.end49.i, !prof !328

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !334
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @pcpu_rwsem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add17.i = add i32 %18, -1
  store i32 %add17.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !335
  %and.i.i.i = and i32 %19, 128
  %tobool28.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool28.not.i, label %if.then37.i, label %do.end39.i, !prof !326

if.then37.i:                                      ; preds = %do.body3.i
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then37.i, %do.body3.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #14, !srcloc !336
  br label %percpu_up_read.exit

do.end49.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !339
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !334
  %21 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @pcpu_rwsem, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i3.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i3.i to ptr
  %cpu78.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu78.i, align 4
  %arrayidx79.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %28, %22
  %29 = inttoptr i32 %add80.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add81.i = add i32 %31, -1
  store i32 %add81.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !335
  %and.i.i4.i = and i32 %32, 128
  %tobool92.not.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool92.not.i, label %if.then101.i, label %do.end104.i, !prof !326

if.then101.i:                                     ; preds = %do.end49.i
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end104.i

do.end104.i:                                      ; preds = %if.then101.i, %do.end49.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #14, !srcloc !336
  %call111.i = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @pcpu_rwsem, i32 0, i32 2)) #14
  br label %percpu_up_read.exit

percpu_up_read.exit:                              ; preds = %do.end104.i, %do.end39.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !340
  %33 = tail call i32 @llvm.read_register.i32(metadata !316) #14
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_free_rwsem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stutter_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_must_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_kthread_stopping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_torture_stats_print() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cxt, align 4
  %mul = mul i32 %0, 200
  %add = add i32 %mul, 8192
  %1 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readlock = getelementptr inbounds %struct.lock_torture_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %readlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readlock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end8.i, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %mul1 = mul i32 %4, 200
  %add2 = add i32 %mul, 16384
  %add3 = add i32 %add2, %mul1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then, %entry
  %size.0 = phi i32 [ %add3, %if.then ], [ %add, %entry ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3264) #18
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end8.i
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %size.0) #17
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i
  %5 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 6), align 4
  tail call fastcc void @__torture_print_stats(ptr noundef nonnull %call9.i, ptr noundef %5, i1 noundef zeroext true)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %call9.i) #17
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  %6 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 5), align 4
  %readlock13 = getelementptr inbounds %struct.lock_torture_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %readlock13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %readlock13, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %cleanup, label %if.end8.i69

if.end8.i69:                                      ; preds = %if.end7
  %call9.i68 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3264) #18
  %tobool17.not = icmp eq ptr %call9.i68, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end8.i69
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %size.0) #17
  br label %cleanup

if.end24:                                         ; preds = %if.end8.i69
  %9 = load ptr, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 7), align 4
  tail call fastcc void @__torture_print_stats(ptr noundef nonnull %call9.i68, ptr noundef %9, i1 noundef zeroext false)
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %call9.i68) #17
  tail call void @kfree(ptr noundef nonnull %call9.i68) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end21, %if.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_shutdown_absorb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__torture_print_stats(ptr nocapture noundef writeonly %page, ptr noundef readonly %statp, i1 noundef zeroext %write) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %statp, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %n_lock_acquired = getelementptr inbounds %struct.lock_stress_stats, ptr %statp, i32 0, i32 1
  %0 = ptrtoint ptr %n_lock_acquired to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_lock_acquired, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  %cxt.val = load i32, ptr @cxt, align 4
  %.val = load i32, ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 1), align 4
  %cond6 = select i1 %write, i32 %cxt.val, i32 %.val
  %cmp60 = icmp sgt i32 %cond6, 0
  br i1 %cmp60, label %for.body, label %if.end39.critedge

for.body:                                         ; preds = %for.body, %cond.end
  %fail.0.off065 = phi i1 [ %spec.select, %for.body ], [ false, %cond.end ]
  %i.064 = phi i32 [ %inc, %for.body ], [ 0, %cond.end ]
  %max.063 = phi i32 [ %6, %for.body ], [ 0, %cond.end ]
  %sum.062 = phi i64 [ %add, %for.body ], [ 0, %cond.end ]
  %min.061 = phi i32 [ %7, %for.body ], [ %cond, %cond.end ]
  %arrayidx9 = getelementptr %struct.lock_stress_stats, ptr %statp, i32 %i.064
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx9, align 4
  %tobool11.not = icmp ne i32 %3, 0
  %spec.select = select i1 %tobool11.not, i1 true, i1 %fail.0.off065
  %n_lock_acquired15 = getelementptr %struct.lock_stress_stats, ptr %statp, i32 %i.064, i32 1
  %4 = ptrtoint ptr %n_lock_acquired15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_lock_acquired15, align 4
  %conv = sext i32 %5 to i64
  %add = add i64 %sum.062, %conv
  %6 = tail call i32 @llvm.smax.i32(i32 %max.063, i32 %5)
  %7 = tail call i32 @llvm.smin.i32(i32 %min.061, i32 %5)
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %cond6
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cond27 = select i1 %write, ptr @.str.97, ptr @.str.98
  %8 = load i32, ptr @onoff_interval, align 4
  %tobool28.not = icmp eq i32 %8, 0
  %div = sdiv i32 %6, 2
  %cmp29 = icmp sgt i32 %div, %7
  %9 = select i1 %tobool28.not, i1 %cmp29, i1 false
  %10 = select i1 %9, ptr @.str.99, ptr @.str.82
  %conv33 = zext i1 %spec.select to i32
  %cond36 = select i1 %spec.select, ptr @.str.100, ptr @.str.82
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond27, i64 noundef %add, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %10, i32 noundef %conv33, ptr noundef nonnull %cond36)
  br i1 %spec.select, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 4), i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 4), i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 4), ptr getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 4), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.lock_torture_cxt, ptr @cxt, i32 0, i32 4)) #14, !srcloc !329
  br label %if.end39

if.end39.critedge:                                ; preds = %cond.end
  %cond27.c = select i1 %write, ptr @.str.97, ptr @.str.98
  %12 = load i32, ptr @onoff_interval, align 4
  %tobool28.not.c = icmp eq i32 %12, 0
  %cmp29.c = icmp slt i32 %cond, 0
  %13 = select i1 %tobool28.not.c, i1 %cmp29.c, i1 false
  %14 = select i1 %13, ptr @.str.99, ptr @.str.82
  %call.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond27.c, i64 noundef 0, i32 noundef 0, i32 noundef %cond, ptr noundef nonnull %14, i32 noundef 0, ptr noundef nonnull @.str.82)
  br label %if.end39

if.end39:                                         ; preds = %if.end39.critedge, %if.then38, %for.end
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_cleanup_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_torture_stop_kthread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_onoff_failures() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_cleanup_end() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !73, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !142, !143, !144, !146, !148, !149, !150, !152, !154, !156, !158, !160, !161, !163, !165, !167, !169, !170, !172, !174, !176, !178, !180, !181, !182, !184, !186, !188, !189, !190, !191, !193, !195, !196, !197, !199, !201, !203, !205, !206, !207, !209, !211, !213, !215, !216, !217, !219, !221, !223, !224, !225, !227, !229, !231, !232, !234, !236, !238, !239, !240, !242, !244, !246, !247, !248, !249, !250, !251, !253, !255, !257, !258, !259, !261, !263, !265, !267, !269, !270, !271, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !291, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314}
!llvm.named.register.sp = !{!316}
!llvm.module.flags = !{!317, !318, !319, !320, !321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !{ptr @__UNIQUE_ID_file177, !1, !"__UNIQUE_ID_file177", i1 false, i1 false}
!1 = !{!"../kernel/locking/locktorture.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_license178, !1, !"__UNIQUE_ID_license178", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author179, !4, !"__UNIQUE_ID_author179", i1 false, i1 false}
!4 = !{!"../kernel/locking/locktorture.c", i32 34, i32 1}
!5 = !{ptr @__param_nwriters_stress, !6, !"__param_nwriters_stress", i1 false, i1 false}
!6 = !{!"../kernel/locking/locktorture.c", i32 36, i32 1}
!7 = !{ptr @__UNIQUE_ID_nwriters_stresstype180, !6, !"__UNIQUE_ID_nwriters_stresstype180", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nwriters_stress181, !6, !"__UNIQUE_ID_nwriters_stress181", i1 false, i1 false}
!9 = !{ptr @__param_nreaders_stress, !10, !"__param_nreaders_stress", i1 false, i1 false}
!10 = !{!"../kernel/locking/locktorture.c", i32 38, i32 1}
!11 = !{ptr @__UNIQUE_ID_nreaders_stresstype182, !10, !"__UNIQUE_ID_nreaders_stresstype182", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_nreaders_stress183, !10, !"__UNIQUE_ID_nreaders_stress183", i1 false, i1 false}
!13 = !{ptr @__param_onoff_holdoff, !14, !"__param_onoff_holdoff", i1 false, i1 false}
!14 = !{!"../kernel/locking/locktorture.c", i32 40, i32 1}
!15 = !{ptr @__UNIQUE_ID_onoff_holdofftype184, !14, !"__UNIQUE_ID_onoff_holdofftype184", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_onoff_holdoff185, !14, !"__UNIQUE_ID_onoff_holdoff185", i1 false, i1 false}
!17 = !{ptr @__param_onoff_interval, !18, !"__param_onoff_interval", i1 false, i1 false}
!18 = !{!"../kernel/locking/locktorture.c", i32 41, i32 1}
!19 = !{ptr @__UNIQUE_ID_onoff_intervaltype186, !18, !"__UNIQUE_ID_onoff_intervaltype186", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_onoff_interval187, !18, !"__UNIQUE_ID_onoff_interval187", i1 false, i1 false}
!21 = !{ptr @__param_shuffle_interval, !22, !"__param_shuffle_interval", i1 false, i1 false}
!22 = !{!"../kernel/locking/locktorture.c", i32 43, i32 1}
!23 = !{ptr @__UNIQUE_ID_shuffle_intervaltype188, !22, !"__UNIQUE_ID_shuffle_intervaltype188", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_shuffle_interval189, !22, !"__UNIQUE_ID_shuffle_interval189", i1 false, i1 false}
!25 = !{ptr @__param_shutdown_secs, !26, !"__param_shutdown_secs", i1 false, i1 false}
!26 = !{!"../kernel/locking/locktorture.c", i32 45, i32 1}
!27 = !{ptr @__UNIQUE_ID_shutdown_secstype190, !26, !"__UNIQUE_ID_shutdown_secstype190", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_shutdown_secs191, !26, !"__UNIQUE_ID_shutdown_secs191", i1 false, i1 false}
!29 = !{ptr @__param_stat_interval, !30, !"__param_stat_interval", i1 false, i1 false}
!30 = !{!"../kernel/locking/locktorture.c", i32 46, i32 1}
!31 = !{ptr @__UNIQUE_ID_stat_intervaltype192, !30, !"__UNIQUE_ID_stat_intervaltype192", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_stat_interval193, !30, !"__UNIQUE_ID_stat_interval193", i1 false, i1 false}
!33 = !{ptr @__param_stutter, !34, !"__param_stutter", i1 false, i1 false}
!34 = !{!"../kernel/locking/locktorture.c", i32 48, i32 1}
!35 = !{ptr @__UNIQUE_ID_stuttertype194, !34, !"__UNIQUE_ID_stuttertype194", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_stutter195, !34, !"__UNIQUE_ID_stutter195", i1 false, i1 false}
!37 = !{ptr @__param_verbose, !38, !"__param_verbose", i1 false, i1 false}
!38 = !{!"../kernel/locking/locktorture.c", i32 49, i32 1}
!39 = !{ptr @__UNIQUE_ID_verbosetype196, !38, !"__UNIQUE_ID_verbosetype196", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_verbose197, !38, !"__UNIQUE_ID_verbose197", i1 false, i1 false}
!41 = !{ptr @__param_torture_type, !42, !"__param_torture_type", i1 false, i1 false}
!42 = !{!"../kernel/locking/locktorture.c", i32 53, i32 1}
!43 = !{ptr @__UNIQUE_ID_torture_typetype198, !42, !"__UNIQUE_ID_torture_typetype198", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_torture_type199, !45, !"__UNIQUE_ID_torture_type199", i1 false, i1 false}
!45 = !{!"../kernel/locking/locktorture.c", i32 54, i32 1}
!46 = !{ptr @__initcall__kmod_locktorture__227_1116_lock_torture_init6, !47, !"__initcall__kmod_locktorture__227_1116_lock_torture_init6", i1 false, i1 false}
!47 = !{!"../kernel/locking/locktorture.c", i32 1116, i32 1}
!48 = !{ptr @__exitcall_lock_torture_cleanup, !49, !"__exitcall_lock_torture_cleanup", i1 false, i1 false}
!49 = !{!"../kernel/locking/locktorture.c", i32 1117, i32 1}
!50 = !{ptr @__param_str_nwriters_stress, !6, !"__param_str_nwriters_stress", i1 false, i1 false}
!51 = !{ptr @nwriters_stress, !6, !"nwriters_stress", i1 false, i1 false}
!52 = !{ptr @__param_str_nreaders_stress, !10, !"__param_str_nreaders_stress", i1 false, i1 false}
!53 = !{ptr @nreaders_stress, !10, !"nreaders_stress", i1 false, i1 false}
!54 = !{ptr @__param_str_onoff_holdoff, !14, !"__param_str_onoff_holdoff", i1 false, i1 false}
!55 = !{ptr @onoff_holdoff, !14, !"onoff_holdoff", i1 false, i1 false}
!56 = !{ptr @__param_str_onoff_interval, !18, !"__param_str_onoff_interval", i1 false, i1 false}
!57 = !{ptr @onoff_interval, !18, !"onoff_interval", i1 false, i1 false}
!58 = !{ptr @__param_str_shuffle_interval, !22, !"__param_str_shuffle_interval", i1 false, i1 false}
!59 = !{ptr @shuffle_interval, !22, !"shuffle_interval", i1 false, i1 false}
!60 = !{ptr @__param_str_shutdown_secs, !26, !"__param_str_shutdown_secs", i1 false, i1 false}
!61 = !{ptr @shutdown_secs, !26, !"shutdown_secs", i1 false, i1 false}
!62 = !{ptr @__param_str_stat_interval, !30, !"__param_str_stat_interval", i1 false, i1 false}
!63 = !{ptr @stat_interval, !30, !"stat_interval", i1 false, i1 false}
!64 = !{ptr @__param_str_stutter, !34, !"__param_str_stutter", i1 false, i1 false}
!65 = !{ptr @stutter, !34, !"stutter", i1 false, i1 false}
!66 = !{ptr @__param_str_verbose, !38, !"__param_str_verbose", i1 false, i1 false}
!67 = !{ptr @verbose, !38, !"verbose", i1 false, i1 false}
!68 = !{ptr @__param_str_torture_type, !42, !"__param_str_torture_type", i1 false, i1 false}
!69 = !{ptr @.str, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/locking/locktorture.c", i32 52, i32 29}
!71 = !{ptr @torture_type, !72, !"torture_type", i1 false, i1 false}
!72 = !{!"../kernel/locking/locktorture.c", i32 52, i32 14}
!73 = !{ptr @lock_torture_init.torture_ops, !74, !"torture_ops", i1 false, i1 false}
!74 = !{!"../kernel/locking/locktorture.c", i32 904, i32 34}
!75 = !{ptr @.str.1, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/locking/locktorture.c", i32 927, i32 3}
!77 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @lock_torture_init._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @lock_torture_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.5, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/locking/locktorture.c", i32 929, i32 3}
!83 = !{ptr @lock_torture_init._entry.4, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @lock_torture_init._entry_ptr.6, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.8, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/locking/locktorture.c", i32 931, i32 4}
!87 = !{ptr @lock_torture_init._entry.7, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @lock_torture_init._entry_ptr.9, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.11, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/locking/locktorture.c", i32 932, i32 3}
!91 = !{ptr @lock_torture_init._entry.10, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @lock_torture_init._entry_ptr.12, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.14, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/locking/locktorture.c", i32 939, i32 3}
!95 = !{ptr @lock_torture_init._entry.13, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @lock_torture_init._entry_ptr.15, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.16, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../kernel/locking/locktorture.c", i32 955, i32 35}
!99 = !{ptr @.str.17, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/locking/locktorture.c", i32 959, i32 35}
!101 = !{ptr @.str.18, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/locking/locktorture.c", i32 963, i32 36}
!103 = !{ptr @.str.19, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/locking/locktorture.c", i32 964, i32 36}
!105 = !{ptr @.str.21, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/locking/locktorture.c", i32 975, i32 4}
!107 = !{ptr @lock_torture_init._entry.20, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @lock_torture_init._entry_ptr.22, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @lock_torture_init._entry.24, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../kernel/locking/locktorture.c", i32 1005, i32 5}
!112 = !{ptr @lock_torture_init._entry_ptr.25, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.26, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.27, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/locking/locktorture.c", i32 1019, i32 47}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../kernel/locking/locktorture.c", i32 1025, i32 7}
!118 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../kernel/locking/locktorture.c", i32 1030, i32 7}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../kernel/locking/locktorture.c", i32 1036, i32 7}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../kernel/locking/locktorture.c", i32 1041, i32 7}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../kernel/locking/locktorture.c", i32 1050, i32 4}
!127 = !{ptr @lock_torture_init._entry.32, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @lock_torture_init._entry_ptr.34, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.35, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @lock_torture_init._entry.36, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../kernel/locking/locktorture.c", i32 1061, i32 4}
!132 = !{ptr @lock_torture_init._entry_ptr.37, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.38, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/locking/locktorture.c", i32 1083, i32 14}
!136 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../kernel/locking/locktorture.c", i32 1085, i32 7}
!140 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/locking/locktorture.c", i32 1092, i32 14}
!142 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.45, !141, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../kernel/locking/locktorture.c", i32 1094, i32 7}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/locking/locktorture.c", i32 1098, i32 14}
!148 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../kernel/locking/locktorture.c", i32 1100, i32 7}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/locking/locktorture.c", i32 143, i32 11}
!154 = !{ptr @lock_busted_ops, !155, !"lock_busted_ops", i1 false, i1 false}
!155 = !{!"../kernel/locking/locktorture.c", i32 135, i32 32}
!156 = !{ptr @spin_lock_ops, !157, !"spin_lock_ops", i1 false, i1 false}
!157 = !{!"../kernel/locking/locktorture.c", i32 179, i32 32}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/locking/locktorture.c", i32 146, i32 8}
!160 = !{ptr @torture_spinlock, !159, !"torture_spinlock", i1 false, i1 false}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../kernel/locking/locktorture.c", i32 214, i32 11}
!163 = !{ptr @spin_lock_irq_ops, !164, !"spin_lock_irq_ops", i1 false, i1 false}
!164 = !{!"../kernel/locking/locktorture.c", i32 206, i32 32}
!165 = !{ptr @rw_lock_ops, !166, !"rw_lock_ops", i1 false, i1 false}
!166 = !{!"../kernel/locking/locktorture.c", i32 275, i32 32}
!167 = !{ptr @.str.54, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/locking/locktorture.c", i32 217, i32 8}
!169 = !{ptr @torture_rwlock, !168, !"torture_rwlock", i1 false, i1 false}
!170 = !{ptr @.str.55, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/locking/locktorture.c", i32 326, i32 11}
!172 = !{ptr @rw_lock_irq_ops, !173, !"rw_lock_irq_ops", i1 false, i1 false}
!173 = !{!"../kernel/locking/locktorture.c", i32 318, i32 32}
!174 = !{ptr @.str.56, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/locking/locktorture.c", i32 366, i32 11}
!176 = !{ptr @mutex_lock_ops, !177, !"mutex_lock_ops", i1 false, i1 false}
!177 = !{!"../kernel/locking/locktorture.c", i32 358, i32 32}
!178 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/locking/locktorture.c", i32 329, i32 8}
!180 = !{ptr @.str.58, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @torture_mutex, !179, !"torture_mutex", i1 false, i1 false}
!182 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/locking/locktorture.c", i32 464, i32 11}
!184 = !{ptr @ww_mutex_lock_ops, !185, !"ww_mutex_lock_ops", i1 false, i1 false}
!185 = !{!"../kernel/locking/locktorture.c", i32 454, i32 32}
!186 = !{ptr @.str.60, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/locking/locktorture.c", i32 389, i32 3}
!188 = !{ptr @torture_ww_mutex_init._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @torture_ww_mutex_init._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.61, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @torture_ww_mutex_0, !192, !"torture_ww_mutex_0", i1 false, i1 false}
!192 = !{!"../kernel/locking/locktorture.c", i32 376, i32 24}
!193 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../kernel/locking/locktorture.c", i32 375, i32 8}
!195 = !{ptr @.str.63, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @torture_ww_class, !194, !"torture_ww_class", i1 false, i1 false}
!197 = !{ptr @torture_ww_mutex_1, !198, !"torture_ww_mutex_1", i1 false, i1 false}
!198 = !{!"../kernel/locking/locktorture.c", i32 376, i32 44}
!199 = !{ptr @torture_ww_mutex_2, !200, !"torture_ww_mutex_2", i1 false, i1 false}
!200 = !{!"../kernel/locking/locktorture.c", i32 376, i32 64}
!201 = !{ptr @ww_acquire_ctxs, !202, !"ww_acquire_ctxs", i1 false, i1 false}
!202 = !{!"../kernel/locking/locktorture.c", i32 377, i32 31}
!203 = !{ptr @.str.64, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../include/linux/ww_mutex.h", i32 297, i32 2}
!205 = !{ptr @.str.65, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.66, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.67, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!209 = !{ptr @.str.68, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../kernel/locking/locktorture.c", i32 541, i32 11}
!211 = !{ptr @rtmutex_lock_ops, !212, !"rtmutex_lock_ops", i1 false, i1 false}
!212 = !{!"../kernel/locking/locktorture.c", i32 533, i32 32}
!213 = !{ptr @.str.69, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../kernel/locking/locktorture.c", i32 468, i32 8}
!215 = !{ptr @.str.70, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @torture_rtmutex, !214, !"torture_rtmutex", i1 false, i1 false}
!217 = !{ptr @.str.71, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../kernel/locking/locktorture.c", i32 608, i32 11}
!219 = !{ptr @rwsem_lock_ops, !220, !"rwsem_lock_ops", i1 false, i1 false}
!220 = !{!"../kernel/locking/locktorture.c", i32 600, i32 32}
!221 = !{ptr @.str.72, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../kernel/locking/locktorture.c", i32 545, i32 8}
!223 = !{ptr @.str.73, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @torture_rwsem, !222, !"torture_rwsem", i1 false, i1 false}
!225 = !{ptr @.str.74, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../kernel/locking/locktorture.c", i32 660, i32 11}
!227 = !{ptr @percpu_rwsem_lock_ops, !228, !"percpu_rwsem_lock_ops", i1 false, i1 false}
!228 = !{!"../kernel/locking/locktorture.c", i32 650, i32 32}
!229 = !{ptr @torture_percpu_rwsem_init.rwsem_key, !230, !"rwsem_key", i1 false, i1 false}
!230 = !{!"../kernel/locking/locktorture.c", i32 616, i32 2}
!231 = !{ptr @.str.75, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @pcpu_rwsem, !233, !"pcpu_rwsem", i1 false, i1 false}
!233 = !{!"../kernel/locking/locktorture.c", i32 612, i32 35}
!234 = !{ptr @.str.76, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!236 = distinct !{null, !237, !"__warned", i1 false, i1 false}
!237 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!238 = !{ptr @.str.77, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.78, !237, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @cxt, !241, !"cxt", i1 false, i1 false}
!241 = !{!"../kernel/locking/locktorture.c", i32 101, i32 32}
!242 = distinct !{null, !243, !"lock_is_write_held", i1 false, i1 false}
!243 = !{!"../kernel/locking/locktorture.c", i32 61, i32 13}
!244 = !{ptr @.str.79, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../kernel/locking/locktorture.c", i32 832, i32 2}
!246 = !{ptr @.str.80, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @lock_torture_print_module_parms._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @lock_torture_print_module_parms._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.81, !245, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.82, !245, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @writer_tasks, !252, !"writer_tasks", i1 false, i1 false}
!252 = !{!"../kernel/locking/locktorture.c", i32 58, i32 29}
!253 = !{ptr @reader_tasks, !254, !"reader_tasks", i1 false, i1 false}
!254 = !{!"../kernel/locking/locktorture.c", i32 59, i32 29}
!255 = !{ptr @lock_torture_writer._entry, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../kernel/locking/locktorture.c", i32 673, i32 2}
!257 = !{ptr @lock_torture_writer._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.83, !256, !"<string literal>", i1 false, i1 false}
!259 = distinct !{null, !260, !"__already_done", i1 false, i1 false}
!260 = !{!"../kernel/locking/locktorture.c", i32 682, i32 7}
!261 = distinct !{null, !262, !"__already_done", i1 false, i1 false}
!262 = !{!"../kernel/locking/locktorture.c", i32 685, i32 7}
!263 = !{ptr @lock_is_read_held, !264, !"lock_is_read_held", i1 false, i1 false}
!264 = !{!"../kernel/locking/locktorture.c", i32 62, i32 17}
!265 = !{ptr @last_lock_release, !266, !"last_lock_release", i1 false, i1 false}
!266 = !{!"../kernel/locking/locktorture.c", i32 63, i32 22}
!267 = !{ptr @lock_torture_reader._entry, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../kernel/locking/locktorture.c", i32 712, i32 2}
!269 = !{ptr @lock_torture_reader._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.85, !268, !"<string literal>", i1 false, i1 false}
!271 = distinct !{null, !272, !"__already_done", i1 false, i1 false}
!272 = !{!"../kernel/locking/locktorture.c", i32 721, i32 7}
!273 = !{ptr @lock_torture_stats._entry, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../kernel/locking/locktorture.c", i32 818, i32 2}
!275 = !{ptr @lock_torture_stats._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.86, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.87, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../kernel/locking/locktorture.c", i32 786, i32 3}
!279 = !{ptr @.str.88, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @lock_torture_stats_print._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @lock_torture_stats_print._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.90, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../kernel/locking/locktorture.c", i32 792, i32 2}
!284 = !{ptr @lock_torture_stats_print._entry.89, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @lock_torture_stats_print._entry_ptr.91, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @lock_torture_stats_print._entry.92, !287, !"_entry", i1 false, i1 false}
!287 = !{!"../kernel/locking/locktorture.c", i32 798, i32 4}
!288 = !{ptr @lock_torture_stats_print._entry_ptr.93, !287, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @lock_torture_stats_print._entry.94, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../kernel/locking/locktorture.c", i32 804, i32 3}
!291 = !{ptr @lock_torture_stats_print._entry_ptr.95, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.96, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../kernel/locking/locktorture.c", i32 759, i32 4}
!294 = !{ptr @.str.97, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../kernel/locking/locktorture.c", i32 760, i32 12}
!296 = !{ptr @.str.98, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../kernel/locking/locktorture.c", i32 760, i32 23}
!298 = !{ptr @.str.99, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../kernel/locking/locktorture.c", i32 762, i32 39}
!300 = !{ptr @.str.100, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../kernel/locking/locktorture.c", i32 763, i32 17}
!302 = !{ptr @stats_task, !303, !"stats_task", i1 false, i1 false}
!303 = !{!"../kernel/locking/locktorture.c", i32 57, i32 28}
!304 = !{ptr @.str.101, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../kernel/locking/locktorture.c", i32 859, i32 4}
!306 = !{ptr @.str.102, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../kernel/locking/locktorture.c", i32 867, i32 4}
!308 = !{ptr @.str.103, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../kernel/locking/locktorture.c", i32 873, i32 2}
!310 = !{ptr @.str.104, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../kernel/locking/locktorture.c", i32 878, i32 7}
!312 = !{ptr @.str.105, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../kernel/locking/locktorture.c", i32 881, i32 7}
!314 = !{ptr @.str.106, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../kernel/locking/locktorture.c", i32 884, i32 7}
!316 = !{!"sp"}
!317 = !{i32 1, !"wchar_size", i32 2}
!318 = !{i32 1, !"min_enum_size", i32 4}
!319 = !{i32 8, !"branch-target-enforcement", i32 0}
!320 = !{i32 8, !"sign-return-address", i32 0}
!321 = !{i32 8, !"sign-return-address-all", i32 0}
!322 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!323 = !{i32 7, !"uwtable", i32 1}
!324 = !{i32 7, !"frame-pointer", i32 2}
!325 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!326 = !{!"branch_weights", i32 1, i32 2000}
!327 = !{i8 0, i8 2}
!328 = !{!"branch_weights", i32 2000, i32 1}
!329 = !{i64 2148238033, i64 2148238059, i64 2148238088, i64 2148238122, i64 2148238153, i64 2148238176}
!330 = !{i64 2148240498, i64 2148240524, i64 2148240553, i64 2148240587, i64 2148240618, i64 2148240641}
!331 = !{i64 2148238753, i64 2148238785, i64 2148238814, i64 2148238848, i64 2148238879, i64 2148238902}
!332 = !{i64 2153181884, i64 2153182377, i64 2153181921, i64 2153181977, i64 2153182011, i64 2153182035, i64 2153182076, i64 2153182097, i64 2153182125, i64 2153182159}
!333 = !{i64 2153143032}
!334 = !{i64 630514, i64 630575}
!335 = !{i64 633246}
!336 = !{i64 633531}
!337 = !{i64 2153151882}
!338 = !{i64 2153161836}
!339 = !{i64 2153171331}
!340 = !{i64 2153180808}
