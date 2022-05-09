; ModuleID = '/llk/IR_all_yes/lib/test_lockup.c_pt.bc'
source_filename = "../lib/test_lockup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.70 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@time_secs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_time_secs = internal constant %struct.kernel_param { ptr @___asan_gen_.90, ptr @__this_module, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @time_secs } }, section "__param", align 4
@__UNIQUE_ID_time_secstype227 = internal constant [24 x i8] c"parmtype=time_secs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_time_secs228 = internal constant [49 x i8] c"parm=time_secs:lockup time in seconds, default 0\00", section ".modinfo", align 1
@time_nsecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_time_nsecs = internal constant %struct.kernel_param { ptr @___asan_gen_.93, ptr @__this_module, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @time_nsecs } }, section "__param", align 4
@__UNIQUE_ID_time_nsecstype229 = internal constant [25 x i8] c"parmtype=time_nsecs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_time_nsecs230 = internal constant [59 x i8] c"parm=time_nsecs:nanoseconds part of lockup time, default 0\00", section ".modinfo", align 1
@cooldown_secs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cooldown_secs = internal constant %struct.kernel_param { ptr @___asan_gen_.96, ptr @__this_module, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @cooldown_secs } }, section "__param", align 4
@__UNIQUE_ID_cooldown_secstype231 = internal constant [28 x i8] c"parmtype=cooldown_secs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cooldown_secs232 = internal constant [74 x i8] c"parm=cooldown_secs:cooldown time between iterations in seconds, default 0\00", section ".modinfo", align 1
@cooldown_nsecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cooldown_nsecs = internal constant %struct.kernel_param { ptr @___asan_gen_.99, ptr @__this_module, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @cooldown_nsecs } }, section "__param", align 4
@__UNIQUE_ID_cooldown_nsecstype233 = internal constant [29 x i8] c"parmtype=cooldown_nsecs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cooldown_nsecs234 = internal constant [60 x i8] c"parm=cooldown_nsecs:nanoseconds part of cooldown, default 0\00", section ".modinfo", align 1
@iterations = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_iterations = internal constant %struct.kernel_param { ptr @___asan_gen_.102, ptr @__this_module, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @iterations } }, section "__param", align 4
@__UNIQUE_ID_iterationstype235 = internal constant [25 x i8] c"parmtype=iterations:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_iterations236 = internal constant [45 x i8] c"parm=iterations:lockup iterations, default 1\00", section ".modinfo", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@all_cpus = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_all_cpus = internal constant %struct.kernel_param { ptr @___asan_gen_.105, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @all_cpus } }, section "__param", align 4
@__UNIQUE_ID_all_cpustype237 = internal constant [23 x i8] c"parmtype=all_cpus:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_all_cpus238 = internal constant [49 x i8] c"parm=all_cpus:trigger lockup at all cpus at once\00", section ".modinfo", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@state = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_state = internal constant %struct.kernel_param { ptr @___asan_gen_.108, ptr @__this_module, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @state } }, section "__param", align 4
@__UNIQUE_ID_statetype239 = internal constant [21 x i8] c"parmtype=state:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_state240 = internal constant [101 x i8] c"parm=state:wait in 'R' running (default), 'D' uninterruptible, 'K' killable, 'S' interruptible state\00", section ".modinfo", align 1
@use_hrtimer = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_hrtimer = internal constant %struct.kernel_param { ptr @___asan_gen_.111, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @use_hrtimer } }, section "__param", align 4
@__UNIQUE_ID_use_hrtimertype241 = internal constant [26 x i8] c"parmtype=use_hrtimer:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_hrtimer242 = internal constant [56 x i8] c"parm=use_hrtimer:use high-resolution timer for sleeping\00", section ".modinfo", align 1
@iowait = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_iowait = internal constant %struct.kernel_param { ptr @___asan_gen_.114, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @iowait } }, section "__param", align 4
@__UNIQUE_ID_iowaittype243 = internal constant [21 x i8] c"parmtype=iowait:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_iowait244 = internal constant [41 x i8] c"parm=iowait:account sleep time as iowait\00", section ".modinfo", align 1
@lock_read = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_read = internal constant %struct.kernel_param { ptr @___asan_gen_.117, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @lock_read } }, section "__param", align 4
@__UNIQUE_ID_lock_readtype245 = internal constant [24 x i8] c"parmtype=lock_read:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_read246 = internal constant [46 x i8] c"parm=lock_read:lock read-write locks for read\00", section ".modinfo", align 1
@lock_single = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_single = internal constant %struct.kernel_param { ptr @___asan_gen_.120, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @lock_single } }, section "__param", align 4
@__UNIQUE_ID_lock_singletype247 = internal constant [26 x i8] c"parmtype=lock_single:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_single248 = internal constant [47 x i8] c"parm=lock_single:acquire locks only at one cpu\00", section ".modinfo", align 1
@reacquire_locks = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reacquire_locks = internal constant %struct.kernel_param { ptr @___asan_gen_.123, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @reacquire_locks } }, section "__param", align 4
@__UNIQUE_ID_reacquire_lockstype249 = internal constant [30 x i8] c"parmtype=reacquire_locks:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reacquire_locks250 = internal constant [80 x i8] c"parm=reacquire_locks:release and reacquire locks/irq/preempt between iterations\00", section ".modinfo", align 1
@touch_softlockup = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_touch_softlockup = internal constant %struct.kernel_param { ptr @___asan_gen_.126, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @touch_softlockup } }, section "__param", align 4
@__UNIQUE_ID_touch_softlockuptype251 = internal constant [31 x i8] c"parmtype=touch_softlockup:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_touch_softlockup252 = internal constant [68 x i8] c"parm=touch_softlockup:touch soft-lockup watchdog between iterations\00", section ".modinfo", align 1
@touch_hardlockup = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_touch_hardlockup = internal constant %struct.kernel_param { ptr @___asan_gen_.129, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @touch_hardlockup } }, section "__param", align 4
@__UNIQUE_ID_touch_hardlockuptype253 = internal constant [31 x i8] c"parmtype=touch_hardlockup:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_touch_hardlockup254 = internal constant [68 x i8] c"parm=touch_hardlockup:touch hard-lockup watchdog between iterations\00", section ".modinfo", align 1
@call_cond_resched = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_call_cond_resched = internal constant %struct.kernel_param { ptr @___asan_gen_.132, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.65 { ptr @call_cond_resched } }, section "__param", align 4
@__UNIQUE_ID_call_cond_reschedtype255 = internal constant [32 x i8] c"parmtype=call_cond_resched:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_call_cond_resched256 = internal constant [62 x i8] c"parm=call_cond_resched:call cond_resched() between iterations\00", section ".modinfo", align 1
@measure_lock_wait = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_measure_lock_wait = internal constant %struct.kernel_param { ptr @___asan_gen_.135, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @measure_lock_wait } }, section "__param", align 4
@__UNIQUE_ID_measure_lock_waittype257 = internal constant [32 x i8] c"parmtype=measure_lock_wait:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_measure_lock_wait258 = internal constant [46 x i8] c"parm=measure_lock_wait:measure lock wait time\00", section ".modinfo", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@lock_wait_threshold = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lock_wait_threshold = internal constant %struct.kernel_param { ptr @___asan_gen_.138, ptr @__this_module, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @lock_wait_threshold } }, section "__param", align 4
@__UNIQUE_ID_lock_wait_thresholdtype259 = internal constant [35 x i8] c"parmtype=lock_wait_threshold:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_wait_threshold260 = internal constant [91 x i8] c"parm=lock_wait_threshold:print lock wait time longer than this in nanoseconds, default off\00", section ".modinfo", align 1
@__param_str_disable_irq = internal constant [12 x i8] c"disable_irq\00", align 1
@test_disable_irq = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_irq = internal constant %struct.kernel_param { ptr @__param_str_disable_irq, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @test_disable_irq } }, section "__param", align 4
@__UNIQUE_ID_disable_irqtype261 = internal constant [26 x i8] c"parmtype=disable_irq:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_irq262 = internal constant [59 x i8] c"parm=disable_irq:disable interrupts: generate hard-lockups\00", section ".modinfo", align 1
@disable_softirq = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_softirq = internal constant %struct.kernel_param { ptr @___asan_gen_.144, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @disable_softirq } }, section "__param", align 4
@__UNIQUE_ID_disable_softirqtype263 = internal constant [30 x i8] c"parmtype=disable_softirq:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_softirq264 = internal constant [54 x i8] c"parm=disable_softirq:disable bottom-half irq handlers\00", section ".modinfo", align 1
@disable_preempt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_preempt = internal constant %struct.kernel_param { ptr @___asan_gen_.147, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @disable_preempt } }, section "__param", align 4
@__UNIQUE_ID_disable_preempttype265 = internal constant [30 x i8] c"parmtype=disable_preempt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_preempt266 = internal constant [63 x i8] c"parm=disable_preempt:disable preemption: generate soft-lockups\00", section ".modinfo", align 1
@lock_rcu = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_rcu = internal constant %struct.kernel_param { ptr @___asan_gen_.150, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @lock_rcu } }, section "__param", align 4
@__UNIQUE_ID_lock_rcutype267 = internal constant [23 x i8] c"parmtype=lock_rcu:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_rcu268 = internal constant [54 x i8] c"parm=lock_rcu:grab rcu_read_lock: generate rcu stalls\00", section ".modinfo", align 1
@lock_mmap_sem = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_mmap_sem = internal constant %struct.kernel_param { ptr @___asan_gen_.153, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @lock_mmap_sem } }, section "__param", align 4
@__UNIQUE_ID_lock_mmap_semtype269 = internal constant [28 x i8] c"parmtype=lock_mmap_sem:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_mmap_sem270 = internal constant [63 x i8] c"parm=lock_mmap_sem:lock mm->mmap_lock: block procfs interfaces\00", section ".modinfo", align 1
@lock_rwsem_ptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lock_rwsem_ptr = internal constant %struct.kernel_param { ptr @___asan_gen_.156, ptr @__this_module, ptr @param_ops_ulong, i16 256, i8 -1, i8 1, %union.anon.65 { ptr @lock_rwsem_ptr } }, section "__param", align 4
@__UNIQUE_ID_lock_rwsem_ptrtype271 = internal constant [30 x i8] c"parmtype=lock_rwsem_ptr:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_rwsem_ptr272 = internal constant [49 x i8] c"parm=lock_rwsem_ptr:lock rw_semaphore at address\00", section ".modinfo", align 1
@lock_mutex_ptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lock_mutex_ptr = internal constant %struct.kernel_param { ptr @___asan_gen_.159, ptr @__this_module, ptr @param_ops_ulong, i16 256, i8 -1, i8 1, %union.anon.65 { ptr @lock_mutex_ptr } }, section "__param", align 4
@__UNIQUE_ID_lock_mutex_ptrtype273 = internal constant [30 x i8] c"parmtype=lock_mutex_ptr:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_mutex_ptr274 = internal constant [42 x i8] c"parm=lock_mutex_ptr:lock mutex at address\00", section ".modinfo", align 1
@lock_spinlock_ptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lock_spinlock_ptr = internal constant %struct.kernel_param { ptr @___asan_gen_.162, ptr @__this_module, ptr @param_ops_ulong, i16 256, i8 -1, i8 1, %union.anon.65 { ptr @lock_spinlock_ptr } }, section "__param", align 4
@__UNIQUE_ID_lock_spinlock_ptrtype275 = internal constant [33 x i8] c"parmtype=lock_spinlock_ptr:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_spinlock_ptr276 = internal constant [48 x i8] c"parm=lock_spinlock_ptr:lock spinlock at address\00", section ".modinfo", align 1
@lock_rwlock_ptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lock_rwlock_ptr = internal constant %struct.kernel_param { ptr @___asan_gen_.165, ptr @__this_module, ptr @param_ops_ulong, i16 256, i8 -1, i8 1, %union.anon.65 { ptr @lock_rwlock_ptr } }, section "__param", align 4
@__UNIQUE_ID_lock_rwlock_ptrtype277 = internal constant [31 x i8] c"parmtype=lock_rwlock_ptr:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_rwlock_ptr278 = internal constant [44 x i8] c"parm=lock_rwlock_ptr:lock rwlock at address\00", section ".modinfo", align 1
@alloc_pages_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_alloc_pages_nr = internal constant %struct.kernel_param { ptr @___asan_gen_.168, ptr @__this_module, ptr @param_ops_uint, i16 384, i8 -1, i8 1, %union.anon.65 { ptr @alloc_pages_nr } }, section "__param", align 4
@__UNIQUE_ID_alloc_pages_nrtype279 = internal constant [29 x i8] c"parmtype=alloc_pages_nr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_alloc_pages_nr280 = internal constant [56 x i8] c"parm=alloc_pages_nr:allocate and free pages under locks\00", section ".modinfo", align 1
@alloc_pages_order = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_alloc_pages_order = internal constant %struct.kernel_param { ptr @___asan_gen_.171, ptr @__this_module, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @alloc_pages_order } }, section "__param", align 4
@__UNIQUE_ID_alloc_pages_ordertype281 = internal constant [32 x i8] c"parmtype=alloc_pages_order:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_alloc_pages_order282 = internal constant [46 x i8] c"parm=alloc_pages_order:page order to allocate\00", section ".modinfo", align 1
@alloc_pages_gfp = internal global { i32, [28 x i8] } { i32 3264, [28 x i8] zeroinitializer }, align 32
@__param_alloc_pages_gfp = internal constant %struct.kernel_param { ptr @___asan_gen_.174, ptr @__this_module, ptr @param_ops_uint, i16 256, i8 -1, i8 1, %union.anon.65 { ptr @alloc_pages_gfp } }, section "__param", align 4
@__UNIQUE_ID_alloc_pages_gfptype283 = internal constant [30 x i8] c"parmtype=alloc_pages_gfp:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_alloc_pages_gfp284 = internal constant [75 x i8] c"parm=alloc_pages_gfp:allocate pages with this gfp_mask, default GFP_KERNEL\00", section ".modinfo", align 1
@alloc_pages_atomic = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_alloc_pages_atomic = internal constant %struct.kernel_param { ptr @___asan_gen_.177, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @alloc_pages_atomic } }, section "__param", align 4
@__UNIQUE_ID_alloc_pages_atomictype285 = internal constant [33 x i8] c"parmtype=alloc_pages_atomic:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_alloc_pages_atomic286 = internal constant [55 x i8] c"parm=alloc_pages_atomic:allocate pages with GFP_ATOMIC\00", section ".modinfo", align 1
@reallocate_pages = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reallocate_pages = internal constant %struct.kernel_param { ptr @___asan_gen_.180, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @reallocate_pages } }, section "__param", align 4
@__UNIQUE_ID_reallocate_pagestype287 = internal constant [31 x i8] c"parmtype=reallocate_pages:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reallocate_pages288 = internal constant [65 x i8] c"parm=reallocate_pages:free and allocate pages between iterations\00", section ".modinfo", align 1
@__param_str_file_path = internal constant [10 x i8] c"file_path\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_file_path = internal constant %struct.kparam_string { i32 256, ptr @test_file_path }, align 4
@__param_file_path = internal constant %struct.kernel_param { ptr @__param_str_file_path, ptr @__this_module, ptr @param_ops_string, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_file_path } }, section "__param", align 4
@__UNIQUE_ID_file_pathtype289 = internal constant [26 x i8] c"parmtype=file_path:string\00", section ".modinfo", align 1
@__UNIQUE_ID_file_path290 = internal constant [33 x i8] c"parm=file_path:file path to test\00", section ".modinfo", align 1
@__param_str_lock_inode = internal constant [11 x i8] c"lock_inode\00", align 1
@test_lock_inode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_inode = internal constant %struct.kernel_param { ptr @__param_str_lock_inode, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @test_lock_inode } }, section "__param", align 4
@__UNIQUE_ID_lock_inodetype291 = internal constant [25 x i8] c"parmtype=lock_inode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_inode292 = internal constant [46 x i8] c"parm=lock_inode:lock file -> inode -> i_rwsem\00", section ".modinfo", align 1
@__param_str_lock_mapping = internal constant [13 x i8] c"lock_mapping\00", align 1
@test_lock_mapping = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_mapping = internal constant %struct.kernel_param { ptr @__param_str_lock_mapping, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @test_lock_mapping } }, section "__param", align 4
@__UNIQUE_ID_lock_mappingtype293 = internal constant [27 x i8] c"parmtype=lock_mapping:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_mapping294 = internal constant [55 x i8] c"parm=lock_mapping:lock file -> mapping -> i_mmap_rwsem\00", section ".modinfo", align 1
@__param_str_lock_sb_umount = internal constant [15 x i8] c"lock_sb_umount\00", align 1
@test_lock_sb_umount = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lock_sb_umount = internal constant %struct.kernel_param { ptr @__param_str_lock_sb_umount, ptr @__this_module, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @test_lock_sb_umount } }, section "__param", align 4
@__UNIQUE_ID_lock_sb_umounttype295 = internal constant [29 x i8] c"parmtype=lock_sb_umount:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lock_sb_umount296 = internal constant [48 x i8] c"parm=lock_sb_umount:lock file -> sb -> s_umount\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [57 x i8] c"author=Konstantin Khlebnikov <khlebnikov@yandex-team.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [44 x i8] c"description=Test module to generate lockups\00", section ".modinfo", align 1
@test_file = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__pcpu_unique_test_works = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@test_works = weak dso_local global %struct.work_struct zeroinitializer, section ".data..percpu", align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@test_file_path = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@main_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wait_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_lockup_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013test_lockup: unknown state=%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_lockup_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_lockup.c\00", [46 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr = internal global ptr @test_lockup_init._entry, section ".printk_index", align 4
@test_lockup_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013test_lockup: refuse to sleep in atomic context\0A\00", [46 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.6 = internal global ptr @test_lockup_init._entry.4, section ".printk_index", align 4
@test_lockup_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013test_lockup: no mm to lock mmap_lock\0A\00", [56 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.9 = internal global ptr @test_lockup_init._entry.7, section ".printk_index", align 4
@test_lockup_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013test_lockup: failed to open %s: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.12 = internal global ptr @test_lockup_init._entry.10, section ".printk_index", align 4
@test_inode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@test_lockup_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013test_lockup: no file to lock\0A\00", [32 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.15 = internal global ptr @test_lockup_init._entry.13, section ".printk_index", align 4
@test_lockup_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\015test_lockup: START pid=%d time=%u +%u ns cooldown=%u +%u ns iterations=%u state=%s %s%s%s%s%s%s%s%s%s%s%s\0A\00", [51 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.18 = internal global ptr @test_lockup_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"all_cpus \00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iowait \00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_irq \00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable_softirq \00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable_preempt \00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lock_rcu \00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lock_read \00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"touch_softlockup \00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"touch_hardlockup \00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"call_cond_resched \00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reacquire_locks \00", [47 x i8] zeroinitializer }, align 32
@test_lockup_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015test_lockup: ALLOCATE PAGES nr=%u order=%u gfp=%pGg %s\0A\00", [38 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.33 = internal global ptr @test_lockup_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reallocate_pages \00", [46 x i8] zeroinitializer }, align 32
@master_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@test_lockup_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.35 = internal constant { [324 x i8], [92 x i8] } { [324 x i8] c"(work_completion)(({ do { const void *__vpp_verify = (typeof((&test_works) + 0))((void *)0); (void)__vpp_verify; } while (0); ({ unsigned long __ptr; __ptr = (unsigned long) ((typeof(*((&test_works))) *)((&test_works))); (typeof((typeof(*((&test_works))) *)((&test_works)))) (__ptr + (((__per_cpu_offset[(cpu)])))); }); }))\00", [92 x i8] zeroinitializer }, align 32
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@test_lockup_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015test_lockup: Maximum lock wait: %lld ns\0A\00", [53 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.38 = internal global ptr @test_lockup_init._entry.36, section ".printk_index", align 4
@max_lock_wait = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@test_lockup_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015test_lockup: Page allocation failed %u times\0A\00", [48 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.41 = internal global ptr @test_lockup_init._entry.39, section ".printk_index", align 4
@alloc_pages_failed = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@test_lockup_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015test_lockup: FINISH in %llu ns\0A\00", [62 x i8] zeroinitializer }, align 32
@test_lockup_init._entry_ptr.44 = internal global ptr @test_lockup_init._entry.42, section ".printk_index", align 4
@test_kernel_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013test_lockup: invalid kernel ptr: %#lx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_kernel_ptr\00", [16 x i8] zeroinitializer }, align 32
@test_kernel_ptr._entry_ptr = internal global ptr @test_kernel_ptr._entry, section ".printk_index", align 4
@test_magic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013test_lockup: invalid magic at %#lx + %#x = %#x, expected %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_magic\00", [21 x i8] zeroinitializer }, align 32
@test_magic._entry_ptr = internal global ptr @test_magic._entry, section ".printk_index", align 4
@test_lockup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015test_lockup: Start on CPU%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_lockup\00", [20 x i8] zeroinitializer }, align 32
@test_lockup._entry_ptr = internal global ptr @test_lockup._entry, section ".printk_index", align 4
@test_lockup._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015test_lockup: Finish on CPU%d in %lld ns\0A\00", [53 x i8] zeroinitializer }, align 32
@test_lockup._entry_ptr.53 = internal global ptr @test_lockup._entry.51, section ".printk_index", align 4
@test_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015test_lockup: lock mutex %ps\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_lock\00", [22 x i8] zeroinitializer }, align 32
@test_lock._entry_ptr = internal global ptr @test_lock._entry, section ".printk_index", align 4
@test_lock._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015test_lockup: lock rw_semaphore %ps\0A\00", [58 x i8] zeroinitializer }, align 32
@test_lock._entry_ptr.58 = internal global ptr @test_lock._entry.56, section ".printk_index", align 4
@test_lock._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015test_lockup: lock mmap_lock pid=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@test_lock._entry_ptr.61 = internal global ptr @test_lock._entry.59, section ".printk_index", align 4
@test_lock._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.3, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015test_lockup: lock spinlock %ps\0A\00", [62 x i8] zeroinitializer }, align 32
@test_lock._entry_ptr.64 = internal global ptr @test_lock._entry.62, section ".printk_index", align 4
@test_lock._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015test_lockup: lock rwlock %ps\0A\00", [32 x i8] zeroinitializer }, align 32
@test_lock._entry_ptr.67 = internal global ptr @test_lock._entry.65, section ".printk_index", align 4
@test_lock._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.68, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@test_lock._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.55, ptr @.str.3, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015test_lockup: lock wait %lld ns\0A\00", [62 x i8] zeroinitializer }, align 32
@test_lock._entry_ptr.71 = internal global ptr @test_lock._entry.69, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@test_wait.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@test_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015test_lockup: unlock rwlock %ps\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_unlock\00", [20 x i8] zeroinitializer }, align 32
@test_unlock._entry_ptr = internal global ptr @test_unlock._entry, section ".printk_index", align 4
@test_unlock._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015test_lockup: unlock spinlock %ps\0A\00", [60 x i8] zeroinitializer }, align 32
@test_unlock._entry_ptr.79 = internal global ptr @test_unlock._entry.77, section ".printk_index", align 4
@test_unlock._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015test_lockup: unlock mmap_lock pid=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@test_unlock._entry_ptr.82 = internal global ptr @test_unlock._entry.80, section ".printk_index", align 4
@test_unlock._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015test_lockup: unlock rw_semaphore %ps\0A\00", [56 x i8] zeroinitializer }, align 32
@test_unlock._entry_ptr.85 = internal global ptr @test_unlock._entry.83, section ".printk_index", align 4
@test_unlock._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.76, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015test_lockup: unlock mutex %ps\0A\00", [63 x i8] zeroinitializer }, align 32
@test_unlock._entry_ptr.88 = internal global ptr @test_unlock._entry.86, section ".printk_index", align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 68, i64 75, i64 82, i64 83]
@___asan_gen_.90 = private constant [10 x i8] c"time_secs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 19, i32 21 }
@___asan_gen_.93 = private constant [11 x i8] c"time_nsecs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 23, i32 21 }
@___asan_gen_.96 = private constant [14 x i8] c"cooldown_secs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 27, i32 21 }
@___asan_gen_.99 = private constant [15 x i8] c"cooldown_nsecs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 31, i32 21 }
@___asan_gen_.102 = private constant [11 x i8] c"iterations\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 35, i32 21 }
@___asan_gen_.105 = private constant [9 x i8] c"all_cpus\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 39, i32 13 }
@___asan_gen_.108 = private constant [6 x i8] c"state\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 44, i32 14 }
@___asan_gen_.111 = private constant [12 x i8] c"use_hrtimer\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 48, i32 13 }
@___asan_gen_.114 = private constant [7 x i8] c"iowait\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 52, i32 13 }
@___asan_gen_.117 = private constant [10 x i8] c"lock_read\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 56, i32 13 }
@___asan_gen_.120 = private constant [12 x i8] c"lock_single\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 60, i32 13 }
@___asan_gen_.123 = private constant [16 x i8] c"reacquire_locks\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 64, i32 13 }
@___asan_gen_.126 = private constant [17 x i8] c"touch_softlockup\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 68, i32 13 }
@___asan_gen_.129 = private constant [17 x i8] c"touch_hardlockup\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 72, i32 13 }
@___asan_gen_.132 = private constant [18 x i8] c"call_cond_resched\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 76, i32 13 }
@___asan_gen_.135 = private constant [18 x i8] c"measure_lock_wait\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 80, i32 13 }
@___asan_gen_.138 = private constant [20 x i8] c"lock_wait_threshold\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 84, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"test_disable_irq\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 88, i32 13 }
@___asan_gen_.144 = private constant [16 x i8] c"disable_softirq\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 92, i32 13 }
@___asan_gen_.147 = private constant [16 x i8] c"disable_preempt\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 96, i32 13 }
@___asan_gen_.150 = private constant [9 x i8] c"lock_rcu\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 100, i32 13 }
@___asan_gen_.153 = private constant [14 x i8] c"lock_mmap_sem\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 104, i32 13 }
@___asan_gen_.156 = private constant [15 x i8] c"lock_rwsem_ptr\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 108, i32 22 }
@___asan_gen_.159 = private constant [15 x i8] c"lock_mutex_ptr\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 112, i32 22 }
@___asan_gen_.162 = private constant [18 x i8] c"lock_spinlock_ptr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 116, i32 22 }
@___asan_gen_.165 = private constant [16 x i8] c"lock_rwlock_ptr\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 120, i32 22 }
@___asan_gen_.168 = private constant [15 x i8] c"alloc_pages_nr\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 124, i32 21 }
@___asan_gen_.171 = private constant [18 x i8] c"alloc_pages_order\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 128, i32 21 }
@___asan_gen_.174 = private constant [16 x i8] c"alloc_pages_gfp\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 132, i32 14 }
@___asan_gen_.177 = private constant [19 x i8] c"alloc_pages_atomic\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 136, i32 13 }
@___asan_gen_.180 = private constant [17 x i8] c"reallocate_pages\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 140, i32 13 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"test_lock_inode\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 150, i32 13 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"test_lock_mapping\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 154, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"test_lock_sb_umount\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 158, i32 13 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"test_file\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 144, i32 14 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 44, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"test_file_path\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 146, i32 13 }
@___asan_gen_.201 = private unnamed_addr constant [10 x i8] c"main_task\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 166, i32 28 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"wait_state\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 43, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 469, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 519, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 524, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 531, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [11 x i8] c"test_inode\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 145, i32 22 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 538, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 551, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 567, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [11 x i8] c"master_cpu\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 167, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 579, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 594, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [14 x i8] c"max_lock_wait\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 164, i32 19 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 598, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [19 x i8] c"alloc_pages_failed\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 162, i32 17 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 601, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 424, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 441, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 355, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 395, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 178, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 184, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 194, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 215, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 222, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 242, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 695, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 254, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 261, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 283, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 292, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.445 = private constant [21 x i8] c"../lib/test_lockup.c\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 299, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 723, i32 2 }
@llvm.compiler.used = appending global [253 x ptr] [ptr @__UNIQUE_ID_all_cpus238, ptr @__UNIQUE_ID_all_cpustype237, ptr @__UNIQUE_ID_alloc_pages_atomic286, ptr @__UNIQUE_ID_alloc_pages_atomictype285, ptr @__UNIQUE_ID_alloc_pages_gfp284, ptr @__UNIQUE_ID_alloc_pages_gfptype283, ptr @__UNIQUE_ID_alloc_pages_nr280, ptr @__UNIQUE_ID_alloc_pages_nrtype279, ptr @__UNIQUE_ID_alloc_pages_order282, ptr @__UNIQUE_ID_alloc_pages_ordertype281, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_call_cond_resched256, ptr @__UNIQUE_ID_call_cond_reschedtype255, ptr @__UNIQUE_ID_cooldown_nsecs234, ptr @__UNIQUE_ID_cooldown_nsecstype233, ptr @__UNIQUE_ID_cooldown_secs232, ptr @__UNIQUE_ID_cooldown_secstype231, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_disable_irq262, ptr @__UNIQUE_ID_disable_irqtype261, ptr @__UNIQUE_ID_disable_preempt266, ptr @__UNIQUE_ID_disable_preempttype265, ptr @__UNIQUE_ID_disable_softirq264, ptr @__UNIQUE_ID_disable_softirqtype263, ptr @__UNIQUE_ID_file_path290, ptr @__UNIQUE_ID_file_pathtype289, ptr @__UNIQUE_ID_iowait244, ptr @__UNIQUE_ID_iowaittype243, ptr @__UNIQUE_ID_iterations236, ptr @__UNIQUE_ID_iterationstype235, ptr @__UNIQUE_ID_license298, ptr @__UNIQUE_ID_lock_inode292, ptr @__UNIQUE_ID_lock_inodetype291, ptr @__UNIQUE_ID_lock_mapping294, ptr @__UNIQUE_ID_lock_mappingtype293, ptr @__UNIQUE_ID_lock_mmap_sem270, ptr @__UNIQUE_ID_lock_mmap_semtype269, ptr @__UNIQUE_ID_lock_mutex_ptr274, ptr @__UNIQUE_ID_lock_mutex_ptrtype273, ptr @__UNIQUE_ID_lock_rcu268, ptr @__UNIQUE_ID_lock_rcutype267, ptr @__UNIQUE_ID_lock_read246, ptr @__UNIQUE_ID_lock_readtype245, ptr @__UNIQUE_ID_lock_rwlock_ptr278, ptr @__UNIQUE_ID_lock_rwlock_ptrtype277, ptr @__UNIQUE_ID_lock_rwsem_ptr272, ptr @__UNIQUE_ID_lock_rwsem_ptrtype271, ptr @__UNIQUE_ID_lock_sb_umount296, ptr @__UNIQUE_ID_lock_sb_umounttype295, ptr @__UNIQUE_ID_lock_single248, ptr @__UNIQUE_ID_lock_singletype247, ptr @__UNIQUE_ID_lock_spinlock_ptr276, ptr @__UNIQUE_ID_lock_spinlock_ptrtype275, ptr @__UNIQUE_ID_lock_wait_threshold260, ptr @__UNIQUE_ID_lock_wait_thresholdtype259, ptr @__UNIQUE_ID_measure_lock_wait258, ptr @__UNIQUE_ID_measure_lock_waittype257, ptr @__UNIQUE_ID_reacquire_locks250, ptr @__UNIQUE_ID_reacquire_lockstype249, ptr @__UNIQUE_ID_reallocate_pages288, ptr @__UNIQUE_ID_reallocate_pagestype287, ptr @__UNIQUE_ID_state240, ptr @__UNIQUE_ID_statetype239, ptr @__UNIQUE_ID_time_nsecs230, ptr @__UNIQUE_ID_time_nsecstype229, ptr @__UNIQUE_ID_time_secs228, ptr @__UNIQUE_ID_time_secstype227, ptr @__UNIQUE_ID_touch_hardlockup254, ptr @__UNIQUE_ID_touch_hardlockuptype253, ptr @__UNIQUE_ID_touch_softlockup252, ptr @__UNIQUE_ID_touch_softlockuptype251, ptr @__UNIQUE_ID_use_hrtimer242, ptr @__UNIQUE_ID_use_hrtimertype241, ptr @__param_all_cpus, ptr @__param_alloc_pages_atomic, ptr @__param_alloc_pages_gfp, ptr @__param_alloc_pages_nr, ptr @__param_alloc_pages_order, ptr @__param_call_cond_resched, ptr @__param_cooldown_nsecs, ptr @__param_cooldown_secs, ptr @__param_disable_irq, ptr @__param_disable_preempt, ptr @__param_disable_softirq, ptr @__param_file_path, ptr @__param_iowait, ptr @__param_iterations, ptr @__param_lock_inode, ptr @__param_lock_mapping, ptr @__param_lock_mmap_sem, ptr @__param_lock_mutex_ptr, ptr @__param_lock_rcu, ptr @__param_lock_read, ptr @__param_lock_rwlock_ptr, ptr @__param_lock_rwsem_ptr, ptr @__param_lock_sb_umount, ptr @__param_lock_single, ptr @__param_lock_spinlock_ptr, ptr @__param_lock_wait_threshold, ptr @__param_measure_lock_wait, ptr @__param_reacquire_locks, ptr @__param_reallocate_pages, ptr @__param_state, ptr @__param_time_nsecs, ptr @__param_time_secs, ptr @__param_touch_hardlockup, ptr @__param_touch_softlockup, ptr @__param_use_hrtimer, ptr @test_kernel_ptr._entry, ptr @test_kernel_ptr._entry_ptr, ptr @test_lock._entry, ptr @test_lock._entry.56, ptr @test_lock._entry.59, ptr @test_lock._entry.62, ptr @test_lock._entry.65, ptr @test_lock._entry.69, ptr @test_lock._entry_ptr, ptr @test_lock._entry_ptr.58, ptr @test_lock._entry_ptr.61, ptr @test_lock._entry_ptr.64, ptr @test_lock._entry_ptr.67, ptr @test_lock._entry_ptr.71, ptr @test_lockup._entry, ptr @test_lockup._entry.51, ptr @test_lockup._entry_ptr, ptr @test_lockup._entry_ptr.53, ptr @test_lockup_init._entry, ptr @test_lockup_init._entry.10, ptr @test_lockup_init._entry.13, ptr @test_lockup_init._entry.16, ptr @test_lockup_init._entry.31, ptr @test_lockup_init._entry.36, ptr @test_lockup_init._entry.39, ptr @test_lockup_init._entry.4, ptr @test_lockup_init._entry.42, ptr @test_lockup_init._entry.7, ptr @test_lockup_init._entry_ptr, ptr @test_lockup_init._entry_ptr.12, ptr @test_lockup_init._entry_ptr.15, ptr @test_lockup_init._entry_ptr.18, ptr @test_lockup_init._entry_ptr.33, ptr @test_lockup_init._entry_ptr.38, ptr @test_lockup_init._entry_ptr.41, ptr @test_lockup_init._entry_ptr.44, ptr @test_lockup_init._entry_ptr.6, ptr @test_lockup_init._entry_ptr.9, ptr @test_magic._entry, ptr @test_magic._entry_ptr, ptr @test_unlock._entry, ptr @test_unlock._entry.77, ptr @test_unlock._entry.80, ptr @test_unlock._entry.83, ptr @test_unlock._entry.86, ptr @test_unlock._entry_ptr, ptr @test_unlock._entry_ptr.79, ptr @test_unlock._entry_ptr.82, ptr @test_unlock._entry_ptr.85, ptr @test_unlock._entry_ptr.88, ptr @time_secs, ptr @time_nsecs, ptr @cooldown_secs, ptr @cooldown_nsecs, ptr @iterations, ptr @all_cpus, ptr @state, ptr @use_hrtimer, ptr @iowait, ptr @lock_read, ptr @lock_single, ptr @reacquire_locks, ptr @touch_softlockup, ptr @touch_hardlockup, ptr @call_cond_resched, ptr @measure_lock_wait, ptr @lock_wait_threshold, ptr @test_disable_irq, ptr @disable_softirq, ptr @disable_preempt, ptr @lock_rcu, ptr @lock_mmap_sem, ptr @lock_rwsem_ptr, ptr @lock_mutex_ptr, ptr @lock_spinlock_ptr, ptr @lock_rwlock_ptr, ptr @alloc_pages_nr, ptr @alloc_pages_order, ptr @alloc_pages_gfp, ptr @alloc_pages_atomic, ptr @reallocate_pages, ptr @test_lock_inode, ptr @test_lock_mapping, ptr @test_lock_sb_umount, ptr @test_file, ptr @.str, ptr @test_file_path, ptr @main_task, ptr @wait_state, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @test_inode, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @master_cpu, ptr @test_lockup_init.__key, ptr @.str.35, ptr @.str.37, ptr @max_lock_wait, ptr @.str.40, ptr @alloc_pages_failed, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @test_lock._rs, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_nsecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooldown_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooldown_nsecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iterations to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_cpus to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_hrtimer to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowait to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_read to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_single to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reacquire_locks to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_softlockup to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_hardlockup to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_cond_resched to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @measure_lock_wait to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_wait_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_disable_irq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_softirq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_preempt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_rcu to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_mmap_sem to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_rwsem_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_mutex_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_spinlock_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_rwlock_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pages_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pages_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pages_gfp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pages_atomic to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reallocate_pages to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock_inode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock_mapping to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock_sb_umount to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_file to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_file_path to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_inode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_lock_wait to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pages_failed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kernel_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_magic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lockup._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_lock._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_unlock._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_unlock._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_unlock._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_unlock._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call.i311 = tail call i64 @sched_clock() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  store ptr %3, ptr @main_task, align 4
  %4 = load ptr, ptr @state, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end [
    i8 83, label %entry.sw.epilog_crit_edge
    i8 68, label %sw.bb2
    i8 75, label %sw.bb3
    i8 82, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %4) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.bb4 ], [ 258, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  store i32 %.sink, ptr @wait_state, align 4
  %8 = load i8, ptr @alloc_pages_atomic, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  store i32 2592, ptr @alloc_pages_gfp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %9 = load i32, ptr @lock_spinlock_ptr, align 4
  %call6 = tail call fastcc zeroext i1 @test_kernel_ptr(i32 noundef %9, i32 noundef 44)
  br i1 %call6, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, ptr @lock_rwlock_ptr, align 4
  %call8 = tail call fastcc zeroext i1 @test_kernel_ptr(i32 noundef %10, i32 noundef 44)
  br i1 %call8, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %11 = load i32, ptr @lock_mutex_ptr, align 4
  %call11 = tail call fastcc zeroext i1 @test_kernel_ptr(i32 noundef %11, i32 noundef 92)
  br i1 %call11, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %12 = load i32, ptr @lock_rwsem_ptr, align 4
  %call14 = tail call fastcc zeroext i1 @test_kernel_ptr(i32 noundef %12, i32 noundef 96)
  br i1 %call14, label %lor.lhs.false13.cleanup_crit_edge, label %if.end17

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false13
  %13 = load i32, ptr @lock_spinlock_ptr, align 4
  %call18 = tail call fastcc zeroext i1 @test_magic(i32 noundef %13, i32 noundef 4, i32 noundef -559067475)
  br i1 %call18, label %if.end17.cleanup_crit_edge, label %lor.lhs.false20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.end17
  %14 = load i32, ptr @lock_rwlock_ptr, align 4
  %call21 = tail call fastcc zeroext i1 @test_magic(i32 noundef %14, i32 noundef 4, i32 noundef -558948627)
  br i1 %call21, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false23

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %15 = load i32, ptr @lock_mutex_ptr, align 4
  %call24 = tail call fastcc zeroext i1 @test_magic(i32 noundef %15, i32 noundef 8, i32 noundef -559067475)
  br i1 %call24, label %lor.lhs.false23.cleanup_crit_edge, label %lor.lhs.false26

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %16 = load i32, ptr @lock_rwsem_ptr, align 4
  %call27 = tail call fastcc zeroext i1 @test_magic(i32 noundef %16, i32 noundef 16, i32 noundef -559067475)
  br i1 %call27, label %lor.lhs.false26.cleanup_crit_edge, label %if.end30

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false26
  %17 = load i32, ptr @wait_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %lor.lhs.false32, label %if.end30.land.lhs.true41_crit_edge

if.end30.land.lhs.true41_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true41

lor.lhs.false32:                                  ; preds = %if.end30
  %18 = load i8, ptr @call_cond_resched, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not = icmp eq i8 %18, 0
  br i1 %tobool33.not, label %lor.lhs.false32.lor.lhs.false36_crit_edge, label %land.lhs.true

lor.lhs.false32.lor.lhs.false36_crit_edge:        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false36

land.lhs.true:                                    ; preds = %lor.lhs.false32
  %19 = load i8, ptr @reacquire_locks, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool35.not = icmp eq i8 %19, 0
  br i1 %tobool35.not, label %land.lhs.true.land.lhs.true41_crit_edge, label %land.lhs.true.lor.lhs.false36_crit_edge

land.lhs.true.lor.lhs.false36_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false36

land.lhs.true.land.lhs.true41_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true41

lor.lhs.false36:                                  ; preds = %land.lhs.true.lor.lhs.false36_crit_edge, %lor.lhs.false32.lor.lhs.false36_crit_edge
  %20 = load i32, ptr @alloc_pages_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool37.not = icmp eq i32 %20, 0
  br i1 %tobool37.not, label %lor.lhs.false36.if.end63_crit_edge, label %land.lhs.true38

lor.lhs.false36.if.end63_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true38:                                  ; preds = %lor.lhs.false36
  %21 = load i32, ptr @alloc_pages_gfp, align 4
  %and.i312 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i312)
  %tobool.i.not = icmp eq i32 %and.i312, 0
  br i1 %tobool.i.not, label %land.lhs.true38.if.end63_crit_edge, label %land.lhs.true38.land.lhs.true41_crit_edge

land.lhs.true38.land.lhs.true41_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true41

land.lhs.true38.if.end63_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true41:                                  ; preds = %land.lhs.true38.land.lhs.true41_crit_edge, %land.lhs.true.land.lhs.true41_crit_edge, %if.end30.land.lhs.true41_crit_edge
  %22 = load i8, ptr @test_disable_irq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool42.not = icmp eq i8 %22, 0
  br i1 %tobool42.not, label %lor.lhs.false44, label %land.lhs.true41.do.end60_crit_edge

land.lhs.true41.do.end60_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.lhs.false44:                                  ; preds = %land.lhs.true41
  %23 = load i8, ptr @disable_softirq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool45.not = icmp eq i8 %23, 0
  br i1 %tobool45.not, label %lor.lhs.false47, label %lor.lhs.false44.do.end60_crit_edge

lor.lhs.false44.do.end60_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %24 = load i8, ptr @disable_preempt, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool48.not = icmp eq i8 %24, 0
  br i1 %tobool48.not, label %lor.lhs.false50, label %lor.lhs.false47.do.end60_crit_edge

lor.lhs.false47.do.end60_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %25 = load i8, ptr @lock_rcu, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool51.not = icmp eq i8 %25, 0
  br i1 %tobool51.not, label %lor.lhs.false53, label %lor.lhs.false50.do.end60_crit_edge

lor.lhs.false50.do.end60_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %26 = load i32, ptr @lock_spinlock_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp eq i32 %26, 0
  br i1 %tobool54.not, label %lor.lhs.false55, label %lor.lhs.false53.do.end60_crit_edge

lor.lhs.false53.do.end60_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.lhs.false55:                                  ; preds = %lor.lhs.false53
  %27 = load i32, ptr @lock_rwlock_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool56.not = icmp eq i32 %27, 0
  br i1 %tobool56.not, label %lor.lhs.false55.if.end63_crit_edge, label %lor.lhs.false55.do.end60_crit_edge

lor.lhs.false55.do.end60_crit_edge:               ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

lor.lhs.false55.if.end63_crit_edge:               ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.end60:                                         ; preds = %lor.lhs.false55.do.end60_crit_edge, %lor.lhs.false53.do.end60_crit_edge, %lor.lhs.false50.do.end60_crit_edge, %lor.lhs.false47.do.end60_crit_edge, %lor.lhs.false44.do.end60_crit_edge, %land.lhs.true41.do.end60_crit_edge
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false55.if.end63_crit_edge, %land.lhs.true38.if.end63_crit_edge, %lor.lhs.false36.if.end63_crit_edge
  %28 = load i8, ptr @lock_mmap_sem, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool64.not = icmp eq i8 %28, 0
  br i1 %tobool64.not, label %if.end63.if.end74_crit_edge, label %land.lhs.true66

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true66:                                  ; preds = %if.end63
  %29 = load ptr, ptr @main_task, align 4
  %mm = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm, align 8
  %tobool67.not = icmp eq ptr %31, null
  br i1 %tobool67.not, label %do.end71, label %land.lhs.true66.if.end74_crit_edge

land.lhs.true66.if.end74_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end71:                                         ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end74:                                         ; preds = %land.lhs.true66.if.end74_crit_edge, %if.end63.if.end74_crit_edge
  %32 = load i8, ptr @test_file_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool75.not = icmp eq i8 %32, 0
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %if.end74
  %call77 = tail call ptr @filp_open(ptr noundef nonnull @test_file_path, i32 noundef 0, i16 noundef zeroext 0) #11
  store ptr %call77, ptr @test_file, align 4
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end82, label %if.end87

do.end82:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call77 to i32
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @test_file_path, i32 noundef %33) #12
  %34 = load ptr, ptr @test_file, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end87:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i = getelementptr inbounds %struct.file, ptr %call77, i32 0, i32 2
  %36 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f_inode.i, align 8
  store ptr %37, ptr @test_inode, align 4
  br label %if.end104

if.else:                                          ; preds = %if.end74
  %38 = load i8, ptr @test_lock_inode, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool89.not = icmp eq i8 %38, 0
  br i1 %tobool89.not, label %lor.lhs.false91, label %if.else.do.end100_crit_edge

if.else.do.end100_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100

lor.lhs.false91:                                  ; preds = %if.else
  %39 = load i8, ptr @test_lock_mapping, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool92.not = icmp eq i8 %39, 0
  br i1 %tobool92.not, label %lor.lhs.false94, label %lor.lhs.false91.do.end100_crit_edge

lor.lhs.false91.do.end100_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  %40 = load i8, ptr @test_lock_sb_umount, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool95.not = icmp eq i8 %40, 0
  br i1 %tobool95.not, label %lor.lhs.false94.if.end104_crit_edge, label %lor.lhs.false94.do.end100_crit_edge

lor.lhs.false94.do.end100_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100

lor.lhs.false94.if.end104_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

do.end100:                                        ; preds = %lor.lhs.false94.do.end100_crit_edge, %lor.lhs.false91.do.end100_crit_edge, %if.else.do.end100_crit_edge
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false94.if.end104_crit_edge, %if.end87
  %41 = load i8, ptr @test_lock_inode, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool105.not = icmp eq i8 %41, 0
  br i1 %tobool105.not, label %if.end104.if.end110_crit_edge, label %land.lhs.true107

if.end104.if.end110_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true107:                                 ; preds = %if.end104
  %42 = load ptr, ptr @test_inode, align 4
  %tobool108.not = icmp eq ptr %42, null
  br i1 %tobool108.not, label %land.lhs.true107.if.end110_crit_edge, label %if.then109

land.lhs.true107.if.end110_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then109:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #10
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %i_rwsem to i32
  store i32 %43, ptr @lock_rwsem_ptr, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %land.lhs.true107.if.end110_crit_edge, %if.end104.if.end110_crit_edge
  %44 = load i8, ptr @test_lock_mapping, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool111.not = icmp eq i8 %44, 0
  br i1 %tobool111.not, label %if.end110.if.end119_crit_edge, label %land.lhs.true113

if.end110.if.end119_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true113:                                 ; preds = %if.end110
  %45 = load ptr, ptr @test_file, align 4
  %tobool114.not = icmp eq ptr %45, null
  br i1 %tobool114.not, label %land.lhs.true113.if.end119_crit_edge, label %land.lhs.true115

land.lhs.true113.if.end119_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true115:                                 ; preds = %land.lhs.true113
  %f_mapping = getelementptr inbounds %struct.file, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f_mapping, align 4
  %tobool116.not = icmp eq ptr %47, null
  br i1 %tobool116.not, label %land.lhs.true115.if.end119_crit_edge, label %if.then117

land.lhs.true115.if.end119_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then117:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %i_mmap_rwsem to i32
  store i32 %48, ptr @lock_rwsem_ptr, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %land.lhs.true115.if.end119_crit_edge, %land.lhs.true113.if.end119_crit_edge, %if.end110.if.end119_crit_edge
  %49 = load i8, ptr @test_lock_sb_umount, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool120.not = icmp eq i8 %49, 0
  br i1 %tobool120.not, label %if.end119.do.end128_crit_edge, label %land.lhs.true122

if.end119.do.end128_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

land.lhs.true122:                                 ; preds = %if.end119
  %50 = load ptr, ptr @test_inode, align 4
  %tobool123.not = icmp eq ptr %50, null
  br i1 %tobool123.not, label %land.lhs.true122.do.end128_crit_edge, label %if.then124

land.lhs.true122.do.end128_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

if.then124:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  %s_umount = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %s_umount to i32
  store i32 %53, ptr @lock_rwsem_ptr, align 4
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %land.lhs.true122.do.end128_crit_edge, %if.end119.do.end128_crit_edge
  %54 = load ptr, ptr @main_task, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid, align 8
  %57 = load i32, ptr @time_secs, align 4
  %58 = load i32, ptr @time_nsecs, align 4
  %59 = load i32, ptr @cooldown_secs, align 4
  %60 = load i32, ptr @cooldown_nsecs, align 4
  %61 = load i32, ptr @iterations, align 4
  %62 = load ptr, ptr @state, align 4
  %63 = load i8, ptr @all_cpus, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool130.not = icmp eq i8 %63, 0
  %cond = select i1 %tobool130.not, ptr @.str.20, ptr @.str.19
  %64 = load i8, ptr @iowait, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool132.not = icmp eq i8 %64, 0
  %cond134 = select i1 %tobool132.not, ptr @.str.20, ptr @.str.21
  %65 = load i8, ptr @test_disable_irq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool135.not = icmp eq i8 %65, 0
  %cond137 = select i1 %tobool135.not, ptr @.str.20, ptr @.str.22
  %66 = load i8, ptr @disable_softirq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool138.not = icmp eq i8 %66, 0
  %cond140 = select i1 %tobool138.not, ptr @.str.20, ptr @.str.23
  %67 = load i8, ptr @disable_preempt, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool141.not = icmp eq i8 %67, 0
  %cond143 = select i1 %tobool141.not, ptr @.str.20, ptr @.str.24
  %68 = load i8, ptr @lock_rcu, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool144.not = icmp eq i8 %68, 0
  %cond146 = select i1 %tobool144.not, ptr @.str.20, ptr @.str.25
  %69 = load i8, ptr @lock_read, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool147.not = icmp eq i8 %69, 0
  %cond149 = select i1 %tobool147.not, ptr @.str.20, ptr @.str.26
  %70 = load i8, ptr @touch_softlockup, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool150.not = icmp eq i8 %70, 0
  %cond152 = select i1 %tobool150.not, ptr @.str.20, ptr @.str.27
  %71 = load i8, ptr @touch_hardlockup, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool153.not = icmp eq i8 %71, 0
  %cond155 = select i1 %tobool153.not, ptr @.str.20, ptr @.str.28
  %72 = load i8, ptr @call_cond_resched, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool156.not = icmp eq i8 %72, 0
  %cond158 = select i1 %tobool156.not, ptr @.str.20, ptr @.str.29
  %73 = load i8, ptr @reacquire_locks, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool159.not = icmp eq i8 %73, 0
  %cond161 = select i1 %tobool159.not, ptr @.str.20, ptr @.str.30
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, ptr noundef nonnull %cond, ptr noundef nonnull %cond134, ptr noundef nonnull %cond137, ptr noundef nonnull %cond140, ptr noundef nonnull %cond143, ptr noundef nonnull %cond146, ptr noundef nonnull %cond149, ptr noundef nonnull %cond152, ptr noundef nonnull %cond155, ptr noundef nonnull %cond158, ptr noundef nonnull %cond161) #12
  %74 = load i32, ptr @alloc_pages_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool163.not = icmp eq i32 %74, 0
  br i1 %tobool163.not, label %do.end128.if.end173_crit_edge, label %do.end167

do.end128.if.end173_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end173

do.end167:                                        ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  %75 = load i32, ptr @alloc_pages_order, align 4
  %76 = load i8, ptr @reallocate_pages, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool169.not = icmp eq i8 %76, 0
  %cond171 = select i1 %tobool169.not, ptr @.str.20, ptr @.str.34
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %74, i32 noundef %75, ptr noundef nonnull @alloc_pages_gfp, ptr noundef nonnull %cond171) #12
  br label %if.end173

if.end173:                                        ; preds = %do.end167, %do.end128.if.end173_crit_edge
  %77 = load i8, ptr @all_cpus, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool174.not = icmp eq i8 %77, 0
  br i1 %tobool174.not, label %if.else259, label %if.then175

if.then175:                                       ; preds = %if.end173
  tail call void @cpus_read_lock() #11
  %78 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %81, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !452
  %cpu180 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %cpu180 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu180, align 4
  store i32 %83, ptr @master_cpu, align 4
  %call181316 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %84 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call181316, i32 %84)
  %cmp182317 = icmp ult i32 %call181316, %84
  br i1 %cmp182317, label %if.then175.do.body185_crit_edge, label %if.then175.do.body240_crit_edge

if.then175.do.body240_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body240

if.then175.do.body185_crit_edge:                  ; preds = %if.then175
  br label %do.body185

do.body185:                                       ; preds = %do.body185.do.body185_crit_edge, %if.then175.do.body185_crit_edge
  %call181318 = phi i32 [ %call181, %do.body185.do.body185_crit_edge ], [ %call181316, %if.then175.do.body185_crit_edge ]
  %arrayidx190 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call181318
  %85 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx190, align 4
  %add = add i32 %86, ptrtoint (ptr @test_works to i32)
  %87 = inttoptr i32 %add to ptr
  tail call void @__init_work(ptr noundef %87, i32 noundef 0) #11
  %88 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx190, align 4
  %add199 = add i32 %89, ptrtoint (ptr @test_works to i32)
  %90 = inttoptr i32 %add199 to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -64, ptr %90, align 4
  %92 = load i32, ptr %arrayidx190, align 4
  %add208 = add i32 %92, ptrtoint (ptr @test_works to i32)
  %93 = inttoptr i32 %add208 to ptr
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %93, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @test_lockup_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %94 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx190, align 4
  %add217 = add i32 %95, ptrtoint (ptr @test_works to i32)
  %96 = inttoptr i32 %add217 to ptr
  %entry218 = getelementptr inbounds %struct.work_struct, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %entry218 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %entry218, ptr %entry218, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %96, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %entry218, ptr %prev.i, align 4
  %99 = load i32, ptr %arrayidx190, align 4
  %add227 = add i32 %99, ptrtoint (ptr @test_works to i32)
  %100 = inttoptr i32 %add227 to ptr
  %func = getelementptr inbounds %struct.work_struct, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @test_work_fn, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %102 = load ptr, ptr @system_highpri_wq, align 4
  %103 = load i32, ptr %arrayidx190, align 4
  %add238 = add i32 %103, ptrtoint (ptr @test_works to i32)
  %104 = inttoptr i32 %add238 to ptr
  %call239 = tail call zeroext i1 @queue_work_on(i32 noundef %call181318, ptr noundef %102, ptr noundef %104) #11
  %call181 = tail call i32 @cpumask_next(i32 noundef %call181318, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %105 = load i32, ptr @nr_cpu_ids, align 4
  %cmp182 = icmp ult i32 %call181, %105
  br i1 %cmp182, label %do.body185.do.body185_crit_edge, label %do.body185.do.body240_crit_edge

do.body185.do.body240_crit_edge:                  ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body240

do.body185.do.body185_crit_edge:                  ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body185

do.body240:                                       ; preds = %do.body185.do.body240_crit_edge, %if.then175.do.body240_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !453
  %106 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i.i.i308 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i308 to ptr
  %preempt_count.i.i309 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i309 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i309, align 4
  %sub.i = add i32 %109, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i309, align 4
  %call244319 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %110 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call244319, i32 %110)
  %cmp245320 = icmp ult i32 %call244319, %110
  br i1 %cmp245320, label %do.body240.do.body248_crit_edge, label %do.body240.for.end258_crit_edge

do.body240.for.end258_crit_edge:                  ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end258

do.body240.do.body248_crit_edge:                  ; preds = %do.body240
  br label %do.body248

do.body248:                                       ; preds = %do.body248.do.body248_crit_edge, %do.body240.do.body248_crit_edge
  %call244321 = phi i32 [ %call244, %do.body248.do.body248_crit_edge ], [ %call244319, %do.body240.do.body248_crit_edge ]
  %arrayidx255 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call244321
  %111 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx255, align 4
  %add256 = add i32 %112, ptrtoint (ptr @test_works to i32)
  %113 = inttoptr i32 %add256 to ptr
  %call257 = tail call zeroext i1 @flush_work(ptr noundef %113) #11
  %call244 = tail call i32 @cpumask_next(i32 noundef %call244321, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %114 = load i32, ptr @nr_cpu_ids, align 4
  %cmp245 = icmp ult i32 %call244, %114
  br i1 %cmp245, label %do.body248.do.body248_crit_edge, label %do.body248.for.end258_crit_edge

do.body248.for.end258_crit_edge:                  ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end258

do.body248.do.body248_crit_edge:                  ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body248

for.end258:                                       ; preds = %do.body248.for.end258_crit_edge, %do.body240.for.end258_crit_edge
  tail call void @cpus_read_unlock() #11
  br label %if.end260

if.else259:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @test_lockup(i1 noundef zeroext true)
  br label %if.end260

if.end260:                                        ; preds = %if.else259, %for.end258
  %115 = load i8, ptr @measure_lock_wait, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool261.not = icmp eq i8 %115, 0
  br i1 %tobool261.not, label %if.end260.if.end269_crit_edge, label %do.end265

if.end260.if.end269_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

do.end265:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @max_lock_wait, i32 noundef 8) #11
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef nonnull @max_lock_wait) #11
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i64 noundef %call.i) #12
  br label %if.end269

if.end269:                                        ; preds = %do.end265, %if.end260.if.end269_crit_edge
  %116 = load i32, ptr @alloc_pages_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool270.not = icmp eq i32 %116, 0
  br i1 %tobool270.not, label %if.end269.do.end281_crit_edge, label %do.end274

if.end269.do.end281_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

do.end274:                                        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i310 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @alloc_pages_failed, i32 noundef 4) #11
  %117 = load volatile i32, ptr @alloc_pages_failed, align 4
  %call277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %117) #12
  br label %do.end281

do.end281:                                        ; preds = %do.end274, %if.end269.do.end281_crit_edge
  %call.i313 = tail call i64 @sched_clock() #11
  %sub = sub i64 %call.i313, %call.i311
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i64 noundef %sub) #12
  %118 = load ptr, ptr @test_file, align 4
  %tobool285.not = icmp eq ptr %118, null
  br i1 %tobool285.not, label %do.end281.if.end287_crit_edge, label %if.then286

do.end281.if.end287_crit_edge:                    ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.then286:                                       ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %118) #11
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %do.end281.if.end287_crit_edge
  %119 = load ptr, ptr @main_task, align 4
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %stack.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  %124 = and i32 %123, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end287.cleanup_crit_edge, !prof !454

if.end287.cleanup_crit_edge:                      ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %121, align 4
  %and1.i.i.i.i.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool289.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %spec.select = select i1 %tobool289.not, i32 -11, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %signal_pending.exit, %if.end287.cleanup_crit_edge, %do.end100, %do.end82, %do.end71, %do.end60, %lor.lhs.false26.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end60 ], [ %35, %do.end82 ], [ -22, %do.end100 ], [ -22, %do.end71 ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false26.cleanup_crit_edge ], [ -22, %lor.lhs.false23.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -4, %if.end287.cleanup_crit_edge ], [ %spec.select, %signal_pending.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @test_kernel_ptr(i32 noundef %addr, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  %0 = inttoptr i32 %addr to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #11
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf, align 1, !annotation !455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool.not = icmp eq i32 %addr, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 1, i32 -1226833920) #14, !srcloc !456
  %asmresult = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %0, i32 %size
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 -1
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr4, i32 1, i32 -1226833920) #14, !srcloc !457
  %asmresult5 = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult5)
  %cmp8 = icmp eq i32 %asmresult5, 0
  br i1 %cmp8, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false9

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %buf, ptr noundef nonnull %0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.do.end_crit_edge

lor.lhs.false9.do.end_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call17 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %buf, ptr noundef %add.ptr4, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false12.do.end_crit_edge

lor.lhs.false12.do.end_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false12.do.end_crit_edge, %lor.lhs.false9.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %addr) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @test_magic(i32 noundef %addr, i32 noundef %offset, i32 noundef %expected) unnamed_addr #3 align 64 {
entry:
  %magic = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic) #11
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool.not = icmp eq i32 %addr, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = inttoptr i32 %addr to ptr
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %call = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %magic, ptr noundef %add.ptr, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %expected)
  %cmp.not = icmp eq i32 %3, %expected
  br i1 %cmp.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %addr, i32 noundef %offset, i32 noundef %5, i32 noundef %expected) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_work_fn(ptr noundef readnone %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i8, ptr @lock_single, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @master_cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @test_works to i32)
  %4 = inttoptr i32 %add to ptr
  %cmp = icmp eq ptr %4, %work
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %5 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp, %lor.rhs ]
  tail call fastcc void @test_lockup(i1 noundef zeroext %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_lockup(i1 noundef zeroext %master) unnamed_addr #3 align 64 {
entry:
  %pages = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i64 @sched_clock() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pages) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  %1 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pages, ptr %pages, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pages, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %6) #12
  call fastcc void @test_lock(i1 noundef zeroext %master, i1 noundef zeroext true)
  %7 = load i32, ptr @alloc_pages_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 0
  br i1 %cmp4.not.i, label %entry.test_alloc_pages.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.test_alloc_pages.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_alloc_pages.exit

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %8 = load i32, ptr @alloc_pages_gfp, align 4
  %9 = load i32, ptr @alloc_pages_order, align 4
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef %8, i32 noundef %9, i32 noundef 0, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @alloc_pages_failed, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @alloc_pages_failed, i32 1, i32 3, i32 1) #11
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @alloc_pages_failed, ptr nonnull @alloc_pages_failed, i32 1, ptr nonnull elementtype(i32) @alloc_pages_failed) #11, !srcloc !458
  br label %test_alloc_pages.exit

if.end.i:                                         ; preds = %for.body.i
  %11 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 4
  %call.i.i3.i = call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef nonnull %pages, ptr noundef %13) #11
  br i1 %call.i.i3.i, label %if.end.i.i.i, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %11, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pages, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %11, ptr %pages, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_add.exit.i_crit_edge
  %inc.i = add nuw i32 %i.05.i, 1
  %18 = load i32, ptr @alloc_pages_nr, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %list_add.exit.i.for.body.i_crit_edge, label %list_add.exit.i.test_alloc_pages.exit_crit_edge

list_add.exit.i.test_alloc_pages.exit_crit_edge:  ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_alloc_pages.exit

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

test_alloc_pages.exit:                            ; preds = %list_add.exit.i.test_alloc_pages.exit_crit_edge, %if.then.i, %entry.test_alloc_pages.exit_crit_edge
  %19 = load i32, ptr @iterations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp84.not = icmp eq i32 %19, 0
  br i1 %cmp84.not, label %test_alloc_pages.exit.do.end43_crit_edge, label %land.rhs.lr.ph

test_alloc_pages.exit.do.end43_crit_edge:         ; preds = %test_alloc_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

land.rhs.lr.ph:                                   ; preds = %test_alloc_pages.exit
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %if.end40.land.rhs_crit_edge, %land.rhs.lr.ph
  %inc85 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc, %if.end40.land.rhs_crit_edge ]
  %20 = load ptr, ptr @main_task, align 4
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i53 = icmp eq i32 %25, 0
  br i1 %tobool.not.i53, label %signal_pending.exit, label %land.rhs.do.end43_crit_edge, !prof !454

land.rhs.do.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

signal_pending.exit:                              ; preds = %land.rhs
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool4.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool4.not, label %while.body, label %signal_pending.exit.do.end43_crit_edge

signal_pending.exit.do.end43_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

while.body:                                       ; preds = %signal_pending.exit
  %28 = load i8, ptr @iowait, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool5.not = icmp eq i8 %28, 0
  br i1 %tobool5.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %in_iowait = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 65
  %31 = ptrtoint ptr %in_iowait to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %in_iowait, align 8
  %bf.set = or i16 %bf.load, 8192
  store i16 %bf.set, ptr %in_iowait, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %32 = load i32, ptr @time_secs, align 4
  %33 = load i32, ptr @time_nsecs, align 4
  call fastcc void @test_wait(i32 noundef %32, i32 noundef %33)
  %34 = load i8, ptr @iowait, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool7.not = icmp eq i8 %34, 0
  br i1 %tobool7.not, label %if.end.if.end15_crit_edge, label %if.then8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %in_iowait11 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 65
  %37 = ptrtoint ptr %in_iowait11 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load12 = load i16, ptr %in_iowait11, align 8
  %bf.clear13 = and i16 %bf.load12, -8193
  store i16 %bf.clear13, ptr %in_iowait11, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end.if.end15_crit_edge
  %38 = load i8, ptr @reallocate_pages, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool16.not = icmp eq i8 %38, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  %39 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pages, align 4
  %cmp.not18.i = icmp eq ptr %40, %pages
  br i1 %cmp.not18.i, label %if.then17.test_free_pages.exit_crit_edge, label %if.then17.for.body.i55_crit_edge

if.then17.for.body.i55_crit_edge:                 ; preds = %if.then17
  br label %for.body.i55

if.then17.test_free_pages.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_free_pages.exit

for.body.i55:                                     ; preds = %for.body.i55.for.body.i55_crit_edge, %if.then17.for.body.i55_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %for.body.i55.for.body.i55_crit_edge ], [ %40, %if.then17.for.body.i55_crit_edge ]
  %page.0.i = getelementptr i8, ptr %.pn.in19.i, i32 -4
  %41 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  %42 = load i32, ptr @alloc_pages_order, align 4
  call void @__free_pages(ptr noundef %page.0.i, i32 noundef %42) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %pages
  br i1 %cmp.not.i, label %for.body.i55.test_free_pages.exit_crit_edge, label %for.body.i55.for.body.i55_crit_edge

for.body.i55.for.body.i55_crit_edge:              ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i55

for.body.i55.test_free_pages.exit_crit_edge:      ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_free_pages.exit

test_free_pages.exit:                             ; preds = %for.body.i55.test_free_pages.exit_crit_edge, %if.then17.test_free_pages.exit_crit_edge
  %43 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %pages, ptr %pages, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pages, ptr %0, align 4
  br label %if.end18

if.end18:                                         ; preds = %test_free_pages.exit, %if.end15.if.end18_crit_edge
  %45 = load i8, ptr @reacquire_locks, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool19.not = icmp eq i8 %45, 0
  br i1 %tobool19.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @test_unlock(i1 noundef zeroext %master, i1 noundef zeroext false)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  %46 = load i8, ptr @touch_softlockup, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool23.not = icmp eq i8 %46, 0
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @touch_softlockup_watchdog() #11
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %47 = load i8, ptr @touch_hardlockup, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool26.not = icmp eq i8 %47, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @touch_softlockup_watchdog() #11
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %48 = load i8, ptr @call_cond_resched, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool29.not = icmp eq i8 %48, 0
  br i1 %tobool29.not, label %if.end28.if.end33_crit_edge, label %if.then30

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 384, i32 noundef 0) #11
  %call.i56 = call i32 @__cond_resched() #11
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %49 = load i32, ptr @cooldown_secs, align 4
  %50 = load i32, ptr @cooldown_nsecs, align 4
  call fastcc void @test_wait(i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr @reacquire_locks, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool34.not = icmp eq i8 %51, 0
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @test_lock(i1 noundef zeroext %master, i1 noundef zeroext false)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  %52 = load i8, ptr @reallocate_pages, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool38.not = icmp eq i8 %52, 0
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  %53 = load i32, ptr @alloc_pages_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp4.not.i57 = icmp eq i32 %53, 0
  br i1 %cmp4.not.i57, label %if.then39.if.end40_crit_edge, label %if.then39.for.body.i61_crit_edge

if.then39.for.body.i61_crit_edge:                 ; preds = %if.then39
  br label %for.body.i61

if.then39.if.end40_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.body.i61:                                     ; preds = %list_add.exit.i71.for.body.i61_crit_edge, %if.then39.for.body.i61_crit_edge
  %i.05.i58 = phi i32 [ %inc.i69, %list_add.exit.i71.for.body.i61_crit_edge ], [ 0, %if.then39.for.body.i61_crit_edge ]
  %54 = load i32, ptr @alloc_pages_gfp, align 4
  %55 = load i32, ptr @alloc_pages_order, align 4
  %call38.i.i.i.i59 = call ptr @__alloc_pages(i32 noundef %54, i32 noundef %55, i32 noundef 0, ptr noundef null) #11
  %tobool.not.i60 = icmp eq ptr %call38.i.i.i.i59, null
  br i1 %tobool.not.i60, label %if.then.i63, label %if.end.i65

if.then.i63:                                      ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i62 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @alloc_pages_failed, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @alloc_pages_failed, i32 1, i32 3, i32 1) #11
  %56 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @alloc_pages_failed, ptr nonnull @alloc_pages_failed, i32 1, ptr nonnull elementtype(i32) @alloc_pages_failed) #11, !srcloc !458
  br label %if.end40

if.end.i65:                                       ; preds = %for.body.i61
  %57 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i59, i32 0, i32 1
  %58 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pages, align 4
  %call.i.i3.i64 = call zeroext i1 @__list_add_valid(ptr noundef %57, ptr noundef nonnull %pages, ptr noundef %59) #11
  br i1 %call.i.i3.i64, label %if.end.i.i.i68, label %if.end.i65.list_add.exit.i71_crit_edge

if.end.i65.list_add.exit.i71_crit_edge:           ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i71

if.end.i.i.i68:                                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i66, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %57, align 4
  %prev3.i.i.i67 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i59, i32 0, i32 1, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %pages, ptr %prev3.i.i.i67, align 4
  %63 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %57, ptr %pages, align 4
  br label %list_add.exit.i71

list_add.exit.i71:                                ; preds = %if.end.i.i.i68, %if.end.i65.list_add.exit.i71_crit_edge
  %inc.i69 = add nuw i32 %i.05.i58, 1
  %64 = load i32, ptr @alloc_pages_nr, align 4
  %cmp.i70 = icmp ult i32 %inc.i69, %64
  br i1 %cmp.i70, label %list_add.exit.i71.for.body.i61_crit_edge, label %list_add.exit.i71.if.end40_crit_edge

list_add.exit.i71.if.end40_crit_edge:             ; preds = %list_add.exit.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

list_add.exit.i71.for.body.i61_crit_edge:         ; preds = %list_add.exit.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i61

if.end40:                                         ; preds = %list_add.exit.i71.if.end40_crit_edge, %if.then.i63, %if.then39.if.end40_crit_edge, %if.end37.if.end40_crit_edge
  %inc = add i32 %inc85, 1
  %65 = load i32, ptr @iterations, align 4
  %cmp = icmp ult i32 %inc85, %65
  br i1 %cmp, label %if.end40.land.rhs_crit_edge, label %if.end40.do.end43_crit_edge

if.end40.do.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.end40.land.rhs_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.end43:                                         ; preds = %if.end40.do.end43_crit_edge, %signal_pending.exit.do.end43_crit_edge, %land.rhs.do.end43_crit_edge, %test_alloc_pages.exit.do.end43_crit_edge
  %66 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu, align 4
  %call.i73 = call i64 @sched_clock() #11
  %sub = sub i64 %call.i73, %call.i
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %67, i64 noundef %sub) #12
  %68 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages, align 4
  %cmp.not18.i74 = icmp eq ptr %69, %pages
  br i1 %cmp.not18.i74, label %do.end43.test_free_pages.exit81_crit_edge, label %do.end43.for.body.i79_crit_edge

do.end43.for.body.i79_crit_edge:                  ; preds = %do.end43
  br label %for.body.i79

do.end43.test_free_pages.exit81_crit_edge:        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_free_pages.exit81

for.body.i79:                                     ; preds = %for.body.i79.for.body.i79_crit_edge, %do.end43.for.body.i79_crit_edge
  %.pn.in19.i75 = phi ptr [ %.pn.i77, %for.body.i79.for.body.i79_crit_edge ], [ %69, %do.end43.for.body.i79_crit_edge ]
  %page.0.i76 = getelementptr i8, ptr %.pn.in19.i75, i32 -4
  %70 = ptrtoint ptr %.pn.in19.i75 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i77 = load ptr, ptr %.pn.in19.i75, align 4
  %71 = load i32, ptr @alloc_pages_order, align 4
  call void @__free_pages(ptr noundef %page.0.i76, i32 noundef %71) #11
  %cmp.not.i78 = icmp eq ptr %.pn.i77, %pages
  br i1 %cmp.not.i78, label %for.body.i79.test_free_pages.exit81_crit_edge, label %for.body.i79.for.body.i79_crit_edge

for.body.i79.for.body.i79_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i79

for.body.i79.test_free_pages.exit81_crit_edge:    ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_free_pages.exit81

test_free_pages.exit81:                           ; preds = %for.body.i79.test_free_pages.exit81_crit_edge, %do.end43.test_free_pages.exit81_crit_edge
  %72 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %pages, ptr %pages, align 4
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %pages, ptr %0, align 4
  call fastcc void @test_unlock(i1 noundef zeroext %master, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pages) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_lock(i1 noundef zeroext %master, i1 noundef zeroext %verbose) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i8, ptr @measure_lock_wait, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i151 = tail call i64 @sched_clock() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wait_start.0 = phi i64 [ %call.i151, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %1 = load i32, ptr @lock_mutex_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp ne i32 %1, 0
  %2 = and i1 %tobool2.not, %master
  br i1 %2, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  br i1 %verbose, label %do.end, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %3 = inttoptr i32 %1 to ptr
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %3) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then4.if.end8_crit_edge
  %4 = load i32, ptr @lock_mutex_ptr, align 4
  %5 = inttoptr i32 %4 to ptr
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #11
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end.if.end9_crit_edge
  %6 = load i32, ptr @lock_rwsem_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp ne i32 %6, 0
  %7 = and i1 %tobool10.not, %master
  br i1 %7, label %if.then13, label %if.end9.if.end25_crit_edge

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then13:                                        ; preds = %if.end9
  br i1 %verbose, label %do.end18, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %8 = inttoptr i32 %6 to ptr
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull %8) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.then13.if.end21_crit_edge
  %9 = load i8, ptr @lock_read, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool22.not = icmp eq i8 %9, 0
  %10 = load i32, ptr @lock_rwsem_ptr, align 4
  %11 = inttoptr i32 %10 to ptr
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @down_read(ptr noundef %11) #11
  br label %if.end25

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @down_write(ptr noundef %11) #11
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23, %if.end9.if.end25_crit_edge
  %12 = load i8, ptr @lock_mmap_sem, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp ne i8 %12, 0
  %13 = and i1 %tobool26.not, %master
  br i1 %13, label %if.then29, label %if.end25.if.end43_crit_edge

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then29:                                        ; preds = %if.end25
  br i1 %verbose, label %do.end34, label %if.then29.if.end37_crit_edge

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load ptr, ptr @main_task, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %16) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.then29.if.end37_crit_edge
  %17 = load i8, ptr @lock_read, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool38.not = icmp eq i8 %17, 0
  %18 = load ptr, ptr @main_task, align 4
  %mm41 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %mm41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm41, align 8
  br i1 %tobool38.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@test_lock, %if.then.i.i)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !459

if.then.i.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %20, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then39
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %20, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@test_lock, %if.end43.sink.split)) #11
          to label %if.end43 [label %if.end43.sink.split], !srcloc !459

if.else40:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@test_lock, %if.then.i.i152)) #11
          to label %__mmap_lock_trace_start_locking.exit.i154 [label %if.then.i.i152], !srcloc !459

if.then.i.i152:                                   ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %20, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit.i154

__mmap_lock_trace_start_locking.exit.i154:        ; preds = %if.then.i.i152, %if.else40
  %mmap_lock.i153 = getelementptr inbounds %struct.anon.10, ptr %20, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i153) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@test_lock, %if.end43.sink.split)) #11
          to label %if.end43 [label %if.end43.sink.split], !srcloc !459

if.end43.sink.split:                              ; preds = %__mmap_lock_trace_start_locking.exit.i154, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %20, i1 noundef zeroext %tobool38.not, i1 noundef zeroext true) #11
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %__mmap_lock_trace_start_locking.exit.i154, %__mmap_lock_trace_start_locking.exit.i, %if.end25.if.end43_crit_edge
  %21 = load i8, ptr @test_disable_irq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not = icmp eq i8 %21, 0
  br i1 %tobool44.not, label %if.end43.if.end55_crit_edge, label %do.body46

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.body46:                                        ; preds = %if.end43
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !460
  %and.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool48.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !461
  br i1 %tobool48.not, label %if.then51, label %do.body46.if.end55_crit_edge

do.body46.if.end55_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #11
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.body46.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %23 = load i8, ptr @disable_softirq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool56.not = icmp eq i8 %23, 0
  br i1 %tobool56.not, label %if.end55.if.end58_crit_edge, label %if.then57

if.end55.if.end58_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @local_bh_disable()
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55.if.end58_crit_edge
  %24 = load i8, ptr @disable_preempt, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool59.not = icmp eq i8 %24, 0
  br i1 %tobool59.not, label %if.end58.if.end64_crit_edge, label %do.body61

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.body61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %28, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !462
  br label %if.end64

if.end64:                                         ; preds = %do.body61, %if.end58.if.end64_crit_edge
  %29 = load i8, ptr @lock_rcu, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool65.not = icmp eq i8 %29, 0
  br i1 %tobool65.not, label %if.end64.if.end67_crit_edge, label %if.then66

if.end64.if.end67_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66:                                        ; preds = %if.end64
  %30 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !463
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then66.if.end67_crit_edge, label %land.lhs.true.i

if.then66.if.end67_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true.i:                                  ; preds = %if.then66
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end67_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end67_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.if.end67_crit_edge, label %if.then.i

land.lhs.true2.i.if.end67_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.72, i32 noundef 696, ptr noundef nonnull @.str.73) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then.i, %land.lhs.true2.i.if.end67_crit_edge, %land.lhs.true.i.if.end67_crit_edge, %if.then66.if.end67_crit_edge, %if.end64.if.end67_crit_edge
  %34 = load i32, ptr @lock_spinlock_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool68.not = icmp ne i32 %34, 0
  %35 = and i1 %tobool68.not, %master
  br i1 %35, label %if.then71, label %if.end67.if.end80_crit_edge

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then71:                                        ; preds = %if.end67
  br i1 %verbose, label %do.end76, label %if.then71.if.end79_crit_edge

if.then71.if.end79_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

do.end76:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %36 = inttoptr i32 %34 to ptr
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull %36) #12
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %if.then71.if.end79_crit_edge
  %37 = load i32, ptr @lock_spinlock_ptr, align 4
  %38 = inttoptr i32 %37 to ptr
  tail call void @_raw_spin_lock(ptr noundef %38) #11
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end67.if.end80_crit_edge
  %39 = load i32, ptr @lock_rwlock_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool81.not = icmp ne i32 %39, 0
  %40 = and i1 %tobool81.not, %master
  br i1 %40, label %if.then84, label %if.end80.if.end97_crit_edge

if.end80.if.end97_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then84:                                        ; preds = %if.end80
  br i1 %verbose, label %do.end89, label %if.then84.if.end92_crit_edge

if.then84.if.end92_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.end89:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %41 = inttoptr i32 %39 to ptr
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %41) #12
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %if.then84.if.end92_crit_edge
  %42 = load i8, ptr @lock_read, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool93.not = icmp eq i8 %42, 0
  %43 = load i32, ptr @lock_rwlock_ptr, align 4
  %44 = inttoptr i32 %43 to ptr
  br i1 %tobool93.not, label %if.else95, label %if.then94

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_lock(ptr noundef %44) #11
  br label %if.end97

if.else95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_lock(ptr noundef %44) #11
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.then94, %if.end80.if.end97_crit_edge
  %45 = load i8, ptr @measure_lock_wait, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool98.not = icmp eq i8 %45, 0
  br i1 %tobool98.not, label %if.end97.if.end122_crit_edge, label %if.then99

if.end97.if.end122_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then99:                                        ; preds = %if.end97
  %call.i156 = tail call i64 @sched_clock() #11
  %sub = sub i64 %call.i156, %wait_start.0
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @max_lock_wait, i32 noundef 8) #11
  %call.i148 = tail call i64 @generic_atomic64_read(ptr noundef nonnull @max_lock_wait) #11
  br label %do.body102

do.body102:                                       ; preds = %if.end104.do.body102_crit_edge, %if.then99
  %max_wait.0 = phi i64 [ %call.i148, %if.then99 ], [ %call.i150, %if.end104.do.body102_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %max_wait.0)
  %cmp = icmp slt i64 %sub, %max_wait.0
  br i1 %cmp, label %do.body102.do.end108_crit_edge, label %if.end104

do.body102.do.end108_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

if.end104:                                        ; preds = %do.body102
  %call.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @max_lock_wait, i32 noundef 8) #11
  %call.i150 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef nonnull @max_lock_wait, i64 noundef %max_wait.0, i64 noundef %sub) #11
  %cmp107.not = icmp eq i64 %call.i150, %sub
  br i1 %cmp107.not, label %if.end104.do.end108_crit_edge, label %if.end104.do.body102_crit_edge

if.end104.do.body102_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

if.end104.do.end108_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

do.end108:                                        ; preds = %if.end104.do.end108_crit_edge, %do.body102.do.end108_crit_edge
  %46 = load i32, ptr @lock_wait_threshold, align 4
  %conv = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp109 = icmp sgt i64 %sub, %conv
  br i1 %cmp109, label %if.then111, label %do.end108.if.end122_crit_edge

do.end108.if.end122_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then111:                                       ; preds = %do.end108
  %call112 = tail call i32 @___ratelimit(ptr noundef nonnull @test_lock._rs, ptr noundef nonnull @.str.55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then111.if.end122_crit_edge, label %do.end117

if.then111.if.end122_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

do.end117:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i64 noundef %sub) #12
  br label %if.end122

if.end122:                                        ; preds = %do.end117, %if.then111.if.end122_crit_edge, %do.end108.if.end122_crit_edge, %if.end97.if.end122_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_wait(i32 noundef %secs, i32 noundef %nsecs) #3 align 64 {
entry:
  %time = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @wait_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %do.body26

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool.not = icmp eq i32 %secs, 0
  %mul = mul i32 %secs, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp3 = icmp eq i32 %mul, 0
  %or.cond = or i1 %tobool.not, %cmp3
  br i1 %or.cond, label %if.then.if.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %__ms.0110 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %mul, %if.then.while.body_crit_edge ]
  %dec = add i32 %__ms.0110, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #11
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsecs)
  %tobool22.not = icmp eq i32 %nsecs, 0
  br i1 %tobool22.not, label %if.end.if.end93_crit_edge, label %cond.false8.i

if.end.if.end93_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

cond.false8.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %nsecs, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %div.i) #11
  br label %if.end93

do.body26:                                        ; preds = %entry
  %and = and i32 %0, 204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.body26.__here_crit_edge, label %land.rhs

do.body26.__here_crit_edge:                       ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

land.rhs:                                         ; preds = %do.body26
  %.b108 = load i1, ptr @test_wait.__already_done, align 1
  br i1 %.b108, label %land.rhs.__here_crit_edge, label %if.then35, !prof !454

land.rhs.__here_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then35:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @test_wait.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 338, i32 noundef 9, ptr noundef null) #11
  br label %__here

__here:                                           ; preds = %if.then35, %land.rhs.__here_crit_edge, %do.body26.__here_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@test_wait, %__here) to i32), ptr %task_state_change, align 4
  %8 = load i32, ptr @wait_state, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %8, ptr %9, align 128
  %11 = load i8, ptr @use_hrtimer, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool82.not = icmp eq i8 %11, 0
  br i1 %tobool82.not, label %if.else, label %if.then83

if.then83:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time) #11
  %conv = zext i32 %secs to i64
  %mul84 = mul nuw nsw i64 %conv, 1000000000
  %conv85 = zext i32 %nsecs to i64
  %add = add nuw nsw i64 %mul84, %conv85
  %12 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add, ptr %time, align 8
  %call87 = call i32 @schedule_hrtimeout(ptr noundef nonnull %time, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time) #11
  br label %if.end93

if.else:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %mul88 = mul i32 %secs, 100
  %conv89 = zext i32 %nsecs to i64
  %call90 = tail call i32 @nsecs_to_jiffies(i64 noundef %conv89) #11
  %add91 = add i32 %call90, %mul88
  %call92 = tail call i32 @schedule_timeout(i32 noundef %add91) #11
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then83, %cond.false8.i, %if.end.if.end93_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_unlock(i1 noundef zeroext %master, i1 noundef zeroext %verbose) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @lock_rwlock_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp ne i32 %0, 0
  %1 = and i1 %tobool.not, %master
  br i1 %1, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = load i8, ptr @lock_read, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  %3 = inttoptr i32 %0 to ptr
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock(ptr noundef nonnull %3) #11
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_unlock(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br i1 %verbose, label %do.end, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @lock_rwlock_ptr, align 4
  %5 = inttoptr i32 %4 to ptr
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %5) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %6 = load i32, ptr @lock_spinlock_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp ne i32 %6, 0
  %7 = and i1 %tobool9.not, %master
  br i1 %7, label %if.then12, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %8 = inttoptr i32 %6 to ptr
  tail call void @_raw_spin_unlock(ptr noundef nonnull %8) #11
  br i1 %verbose, label %do.end16, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @lock_spinlock_ptr, align 4
  %10 = inttoptr i32 %9 to ptr
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %10) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end16, %if.then12.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %11 = load i8, ptr @lock_rcu, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.then22.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.then22
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.72, i32 noundef 724, ptr noundef nonnull @.str.89) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.then22.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !464
  %12 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end23

if.end23:                                         ; preds = %rcu_read_unlock.exit, %if.end20.if.end23_crit_edge
  %16 = load i8, ptr @disable_preempt, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not = icmp eq i8 %16, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %do.body26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.body26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !465
  %17 = tail call i32 @llvm.read_register.i32(metadata !442) #11
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.body26, %if.end23.if.end28_crit_edge
  %21 = load i8, ptr @disable_softirq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not = icmp eq i8 %21, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @local_bh_enable()
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %22 = load i8, ptr @test_disable_irq, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not = icmp eq i8 %22, 0
  br i1 %tobool32.not, label %if.end31.if.end36_crit_edge, label %do.body34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.body34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !466
  br label %if.end36

if.end36:                                         ; preds = %do.body34, %if.end31.if.end36_crit_edge
  %23 = load i8, ptr @lock_mmap_sem, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool37.not = icmp ne i8 %23, 0
  %24 = and i1 %tobool37.not, %master
  br i1 %24, label %if.then40, label %if.end36.if.end53_crit_edge

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then40:                                        ; preds = %if.end36
  %25 = load i8, ptr @lock_read, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool41.not = icmp eq i8 %25, 0
  %26 = load ptr, ptr @main_task, align 4
  %mm44 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %mm44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mm44, align 8
  br i1 %tobool41.not, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@test_unlock, %if.then.i.i)) #11
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !459

if.then.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_released(ptr noundef %28, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %if.then42
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %28, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #11
  br label %if.end45

if.else43:                                        ; preds = %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@test_unlock, %if.then.i.i101)) #11
          to label %mmap_write_unlock.exit [label %if.then.i.i101], !srcloc !459

if.then.i.i101:                                   ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_released(ptr noundef %28, i1 noundef zeroext true) #11
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i101, %if.else43
  %mmap_lock.i102 = getelementptr inbounds %struct.anon.10, ptr %28, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock.i102) #11
  br label %if.end45

if.end45:                                         ; preds = %mmap_write_unlock.exit, %mmap_read_unlock.exit
  br i1 %verbose, label %do.end49, label %if.end45.if.end53_crit_edge

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %29 = load ptr, ptr @main_task, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %31) #12
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %if.end45.if.end53_crit_edge, %if.end36.if.end53_crit_edge
  %32 = load i32, ptr @lock_rwsem_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not = icmp ne i32 %32, 0
  %33 = and i1 %tobool54.not, %master
  br i1 %33, label %if.then57, label %if.end53.if.end69_crit_edge

if.end53.if.end69_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then57:                                        ; preds = %if.end53
  %34 = load i8, ptr @lock_read, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool58.not = icmp eq i8 %34, 0
  %35 = inttoptr i32 %32 to ptr
  br i1 %tobool58.not, label %if.else60, label %if.then59

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef nonnull %35) #11
  br label %if.end61

if.else60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef nonnull %35) #11
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  br i1 %verbose, label %do.end65, label %if.end61.if.end69_crit_edge

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %36 = load i32, ptr @lock_rwsem_ptr, align 4
  %37 = inttoptr i32 %36 to ptr
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %37) #12
  br label %if.end69

if.end69:                                         ; preds = %do.end65, %if.end61.if.end69_crit_edge, %if.end53.if.end69_crit_edge
  %38 = load i32, ptr @lock_mutex_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool70.not = icmp ne i32 %38, 0
  %39 = and i1 %tobool70.not, %master
  br i1 %39, label %if.then73, label %if.end69.if.end81_crit_edge

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then73:                                        ; preds = %if.end69
  %40 = inttoptr i32 %38 to ptr
  tail call void @mutex_unlock(ptr noundef nonnull %40) #11
  br i1 %verbose, label %do.end77, label %if.then73.if.end81_crit_edge

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.end77:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %41 = load i32, ptr @lock_mutex_ptr, align 4
  %42 = inttoptr i32 %41 to ptr
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %42) #12
  br label %if.end81

if.end81:                                         ; preds = %do.end77, %if.then73.if.end81_crit_edge, %if.end69.if.end81_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !92, !93, !95, !97, !98, !100, !102, !103, !105, !107, !108, !110, !112, !113, !115, !117, !118, !120, !122, !123, !125, !127, !128, !130, !132, !133, !135, !137, !138, !140, !142, !143, !145, !147, !148, !150, !152, !153, !155, !157, !158, !160, !162, !163, !165, !167, !168, !170, !172, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !246, !247, !248, !249, !250, !251, !253, !254, !255, !257, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !285, !286, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !334, !335, !336, !337, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !356, !358, !359, !360, !361, !363, !364, !365, !366, !368, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !405, !406, !408, !409, !410, !412, !414, !416, !417, !418, !419, !421, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !440}
!llvm.named.register.sp = !{!442}
!llvm.module.flags = !{!443, !444, !445, !446, !447, !448, !449}
!llvm.ident = !{!450}

!0 = !{ptr @__param_time_secs, !1, !"__param_time_secs", i1 false, i1 false}
!1 = !{!"../lib/test_lockup.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_time_secstype227, !1, !"__UNIQUE_ID_time_secstype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_time_secs228, !4, !"__UNIQUE_ID_time_secs228", i1 false, i1 false}
!4 = !{!"../lib/test_lockup.c", i32 21, i32 1}
!5 = !{ptr @__param_time_nsecs, !6, !"__param_time_nsecs", i1 false, i1 false}
!6 = !{!"../lib/test_lockup.c", i32 24, i32 1}
!7 = !{ptr @__UNIQUE_ID_time_nsecstype229, !6, !"__UNIQUE_ID_time_nsecstype229", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_time_nsecs230, !9, !"__UNIQUE_ID_time_nsecs230", i1 false, i1 false}
!9 = !{!"../lib/test_lockup.c", i32 25, i32 1}
!10 = !{ptr @__param_cooldown_secs, !11, !"__param_cooldown_secs", i1 false, i1 false}
!11 = !{!"../lib/test_lockup.c", i32 28, i32 1}
!12 = !{ptr @__UNIQUE_ID_cooldown_secstype231, !11, !"__UNIQUE_ID_cooldown_secstype231", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_cooldown_secs232, !14, !"__UNIQUE_ID_cooldown_secs232", i1 false, i1 false}
!14 = !{!"../lib/test_lockup.c", i32 29, i32 1}
!15 = !{ptr @__param_cooldown_nsecs, !16, !"__param_cooldown_nsecs", i1 false, i1 false}
!16 = !{!"../lib/test_lockup.c", i32 32, i32 1}
!17 = !{ptr @__UNIQUE_ID_cooldown_nsecstype233, !16, !"__UNIQUE_ID_cooldown_nsecstype233", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_cooldown_nsecs234, !19, !"__UNIQUE_ID_cooldown_nsecs234", i1 false, i1 false}
!19 = !{!"../lib/test_lockup.c", i32 33, i32 1}
!20 = !{ptr @__param_iterations, !21, !"__param_iterations", i1 false, i1 false}
!21 = !{!"../lib/test_lockup.c", i32 36, i32 1}
!22 = !{ptr @__UNIQUE_ID_iterationstype235, !21, !"__UNIQUE_ID_iterationstype235", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_iterations236, !24, !"__UNIQUE_ID_iterations236", i1 false, i1 false}
!24 = !{!"../lib/test_lockup.c", i32 37, i32 1}
!25 = !{ptr @__param_all_cpus, !26, !"__param_all_cpus", i1 false, i1 false}
!26 = !{!"../lib/test_lockup.c", i32 40, i32 1}
!27 = !{ptr @__UNIQUE_ID_all_cpustype237, !26, !"__UNIQUE_ID_all_cpustype237", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_all_cpus238, !29, !"__UNIQUE_ID_all_cpus238", i1 false, i1 false}
!29 = !{!"../lib/test_lockup.c", i32 41, i32 1}
!30 = !{ptr @__param_state, !31, !"__param_state", i1 false, i1 false}
!31 = !{!"../lib/test_lockup.c", i32 45, i32 1}
!32 = !{ptr @__UNIQUE_ID_statetype239, !31, !"__UNIQUE_ID_statetype239", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_state240, !34, !"__UNIQUE_ID_state240", i1 false, i1 false}
!34 = !{!"../lib/test_lockup.c", i32 46, i32 1}
!35 = !{ptr @__param_use_hrtimer, !36, !"__param_use_hrtimer", i1 false, i1 false}
!36 = !{!"../lib/test_lockup.c", i32 49, i32 1}
!37 = !{ptr @__UNIQUE_ID_use_hrtimertype241, !36, !"__UNIQUE_ID_use_hrtimertype241", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_use_hrtimer242, !39, !"__UNIQUE_ID_use_hrtimer242", i1 false, i1 false}
!39 = !{!"../lib/test_lockup.c", i32 50, i32 1}
!40 = !{ptr @__param_iowait, !41, !"__param_iowait", i1 false, i1 false}
!41 = !{!"../lib/test_lockup.c", i32 53, i32 1}
!42 = !{ptr @__UNIQUE_ID_iowaittype243, !41, !"__UNIQUE_ID_iowaittype243", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_iowait244, !44, !"__UNIQUE_ID_iowait244", i1 false, i1 false}
!44 = !{!"../lib/test_lockup.c", i32 54, i32 1}
!45 = !{ptr @__param_lock_read, !46, !"__param_lock_read", i1 false, i1 false}
!46 = !{!"../lib/test_lockup.c", i32 57, i32 1}
!47 = !{ptr @__UNIQUE_ID_lock_readtype245, !46, !"__UNIQUE_ID_lock_readtype245", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_lock_read246, !49, !"__UNIQUE_ID_lock_read246", i1 false, i1 false}
!49 = !{!"../lib/test_lockup.c", i32 58, i32 1}
!50 = !{ptr @__param_lock_single, !51, !"__param_lock_single", i1 false, i1 false}
!51 = !{!"../lib/test_lockup.c", i32 61, i32 1}
!52 = !{ptr @__UNIQUE_ID_lock_singletype247, !51, !"__UNIQUE_ID_lock_singletype247", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_lock_single248, !54, !"__UNIQUE_ID_lock_single248", i1 false, i1 false}
!54 = !{!"../lib/test_lockup.c", i32 62, i32 1}
!55 = !{ptr @__param_reacquire_locks, !56, !"__param_reacquire_locks", i1 false, i1 false}
!56 = !{!"../lib/test_lockup.c", i32 65, i32 1}
!57 = !{ptr @__UNIQUE_ID_reacquire_lockstype249, !56, !"__UNIQUE_ID_reacquire_lockstype249", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_reacquire_locks250, !59, !"__UNIQUE_ID_reacquire_locks250", i1 false, i1 false}
!59 = !{!"../lib/test_lockup.c", i32 66, i32 1}
!60 = !{ptr @__param_touch_softlockup, !61, !"__param_touch_softlockup", i1 false, i1 false}
!61 = !{!"../lib/test_lockup.c", i32 69, i32 1}
!62 = !{ptr @__UNIQUE_ID_touch_softlockuptype251, !61, !"__UNIQUE_ID_touch_softlockuptype251", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_touch_softlockup252, !64, !"__UNIQUE_ID_touch_softlockup252", i1 false, i1 false}
!64 = !{!"../lib/test_lockup.c", i32 70, i32 1}
!65 = !{ptr @__param_touch_hardlockup, !66, !"__param_touch_hardlockup", i1 false, i1 false}
!66 = !{!"../lib/test_lockup.c", i32 73, i32 1}
!67 = !{ptr @__UNIQUE_ID_touch_hardlockuptype253, !66, !"__UNIQUE_ID_touch_hardlockuptype253", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_touch_hardlockup254, !69, !"__UNIQUE_ID_touch_hardlockup254", i1 false, i1 false}
!69 = !{!"../lib/test_lockup.c", i32 74, i32 1}
!70 = !{ptr @__param_call_cond_resched, !71, !"__param_call_cond_resched", i1 false, i1 false}
!71 = !{!"../lib/test_lockup.c", i32 77, i32 1}
!72 = !{ptr @__UNIQUE_ID_call_cond_reschedtype255, !71, !"__UNIQUE_ID_call_cond_reschedtype255", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_call_cond_resched256, !74, !"__UNIQUE_ID_call_cond_resched256", i1 false, i1 false}
!74 = !{!"../lib/test_lockup.c", i32 78, i32 1}
!75 = !{ptr @__param_measure_lock_wait, !76, !"__param_measure_lock_wait", i1 false, i1 false}
!76 = !{!"../lib/test_lockup.c", i32 81, i32 1}
!77 = !{ptr @__UNIQUE_ID_measure_lock_waittype257, !76, !"__UNIQUE_ID_measure_lock_waittype257", i1 false, i1 false}
!78 = !{ptr @__UNIQUE_ID_measure_lock_wait258, !79, !"__UNIQUE_ID_measure_lock_wait258", i1 false, i1 false}
!79 = !{!"../lib/test_lockup.c", i32 82, i32 1}
!80 = !{ptr @__param_lock_wait_threshold, !81, !"__param_lock_wait_threshold", i1 false, i1 false}
!81 = !{!"../lib/test_lockup.c", i32 85, i32 1}
!82 = !{ptr @__UNIQUE_ID_lock_wait_thresholdtype259, !81, !"__UNIQUE_ID_lock_wait_thresholdtype259", i1 false, i1 false}
!83 = !{ptr @__UNIQUE_ID_lock_wait_threshold260, !84, !"__UNIQUE_ID_lock_wait_threshold260", i1 false, i1 false}
!84 = !{!"../lib/test_lockup.c", i32 86, i32 1}
!85 = !{ptr @__param_disable_irq, !86, !"__param_disable_irq", i1 false, i1 false}
!86 = !{!"../lib/test_lockup.c", i32 89, i32 1}
!87 = !{ptr @__UNIQUE_ID_disable_irqtype261, !86, !"__UNIQUE_ID_disable_irqtype261", i1 false, i1 false}
!88 = !{ptr @__UNIQUE_ID_disable_irq262, !89, !"__UNIQUE_ID_disable_irq262", i1 false, i1 false}
!89 = !{!"../lib/test_lockup.c", i32 90, i32 1}
!90 = !{ptr @__param_disable_softirq, !91, !"__param_disable_softirq", i1 false, i1 false}
!91 = !{!"../lib/test_lockup.c", i32 93, i32 1}
!92 = !{ptr @__UNIQUE_ID_disable_softirqtype263, !91, !"__UNIQUE_ID_disable_softirqtype263", i1 false, i1 false}
!93 = !{ptr @__UNIQUE_ID_disable_softirq264, !94, !"__UNIQUE_ID_disable_softirq264", i1 false, i1 false}
!94 = !{!"../lib/test_lockup.c", i32 94, i32 1}
!95 = !{ptr @__param_disable_preempt, !96, !"__param_disable_preempt", i1 false, i1 false}
!96 = !{!"../lib/test_lockup.c", i32 97, i32 1}
!97 = !{ptr @__UNIQUE_ID_disable_preempttype265, !96, !"__UNIQUE_ID_disable_preempttype265", i1 false, i1 false}
!98 = !{ptr @__UNIQUE_ID_disable_preempt266, !99, !"__UNIQUE_ID_disable_preempt266", i1 false, i1 false}
!99 = !{!"../lib/test_lockup.c", i32 98, i32 1}
!100 = !{ptr @__param_lock_rcu, !101, !"__param_lock_rcu", i1 false, i1 false}
!101 = !{!"../lib/test_lockup.c", i32 101, i32 1}
!102 = !{ptr @__UNIQUE_ID_lock_rcutype267, !101, !"__UNIQUE_ID_lock_rcutype267", i1 false, i1 false}
!103 = !{ptr @__UNIQUE_ID_lock_rcu268, !104, !"__UNIQUE_ID_lock_rcu268", i1 false, i1 false}
!104 = !{!"../lib/test_lockup.c", i32 102, i32 1}
!105 = !{ptr @__param_lock_mmap_sem, !106, !"__param_lock_mmap_sem", i1 false, i1 false}
!106 = !{!"../lib/test_lockup.c", i32 105, i32 1}
!107 = !{ptr @__UNIQUE_ID_lock_mmap_semtype269, !106, !"__UNIQUE_ID_lock_mmap_semtype269", i1 false, i1 false}
!108 = !{ptr @__UNIQUE_ID_lock_mmap_sem270, !109, !"__UNIQUE_ID_lock_mmap_sem270", i1 false, i1 false}
!109 = !{!"../lib/test_lockup.c", i32 106, i32 1}
!110 = !{ptr @__param_lock_rwsem_ptr, !111, !"__param_lock_rwsem_ptr", i1 false, i1 false}
!111 = !{!"../lib/test_lockup.c", i32 109, i32 1}
!112 = !{ptr @__UNIQUE_ID_lock_rwsem_ptrtype271, !111, !"__UNIQUE_ID_lock_rwsem_ptrtype271", i1 false, i1 false}
!113 = !{ptr @__UNIQUE_ID_lock_rwsem_ptr272, !114, !"__UNIQUE_ID_lock_rwsem_ptr272", i1 false, i1 false}
!114 = !{!"../lib/test_lockup.c", i32 110, i32 1}
!115 = !{ptr @__param_lock_mutex_ptr, !116, !"__param_lock_mutex_ptr", i1 false, i1 false}
!116 = !{!"../lib/test_lockup.c", i32 113, i32 1}
!117 = !{ptr @__UNIQUE_ID_lock_mutex_ptrtype273, !116, !"__UNIQUE_ID_lock_mutex_ptrtype273", i1 false, i1 false}
!118 = !{ptr @__UNIQUE_ID_lock_mutex_ptr274, !119, !"__UNIQUE_ID_lock_mutex_ptr274", i1 false, i1 false}
!119 = !{!"../lib/test_lockup.c", i32 114, i32 1}
!120 = !{ptr @__param_lock_spinlock_ptr, !121, !"__param_lock_spinlock_ptr", i1 false, i1 false}
!121 = !{!"../lib/test_lockup.c", i32 117, i32 1}
!122 = !{ptr @__UNIQUE_ID_lock_spinlock_ptrtype275, !121, !"__UNIQUE_ID_lock_spinlock_ptrtype275", i1 false, i1 false}
!123 = !{ptr @__UNIQUE_ID_lock_spinlock_ptr276, !124, !"__UNIQUE_ID_lock_spinlock_ptr276", i1 false, i1 false}
!124 = !{!"../lib/test_lockup.c", i32 118, i32 1}
!125 = !{ptr @__param_lock_rwlock_ptr, !126, !"__param_lock_rwlock_ptr", i1 false, i1 false}
!126 = !{!"../lib/test_lockup.c", i32 121, i32 1}
!127 = !{ptr @__UNIQUE_ID_lock_rwlock_ptrtype277, !126, !"__UNIQUE_ID_lock_rwlock_ptrtype277", i1 false, i1 false}
!128 = !{ptr @__UNIQUE_ID_lock_rwlock_ptr278, !129, !"__UNIQUE_ID_lock_rwlock_ptr278", i1 false, i1 false}
!129 = !{!"../lib/test_lockup.c", i32 122, i32 1}
!130 = !{ptr @__param_alloc_pages_nr, !131, !"__param_alloc_pages_nr", i1 false, i1 false}
!131 = !{!"../lib/test_lockup.c", i32 125, i32 1}
!132 = !{ptr @__UNIQUE_ID_alloc_pages_nrtype279, !131, !"__UNIQUE_ID_alloc_pages_nrtype279", i1 false, i1 false}
!133 = !{ptr @__UNIQUE_ID_alloc_pages_nr280, !134, !"__UNIQUE_ID_alloc_pages_nr280", i1 false, i1 false}
!134 = !{!"../lib/test_lockup.c", i32 126, i32 1}
!135 = !{ptr @__param_alloc_pages_order, !136, !"__param_alloc_pages_order", i1 false, i1 false}
!136 = !{!"../lib/test_lockup.c", i32 129, i32 1}
!137 = !{ptr @__UNIQUE_ID_alloc_pages_ordertype281, !136, !"__UNIQUE_ID_alloc_pages_ordertype281", i1 false, i1 false}
!138 = !{ptr @__UNIQUE_ID_alloc_pages_order282, !139, !"__UNIQUE_ID_alloc_pages_order282", i1 false, i1 false}
!139 = !{!"../lib/test_lockup.c", i32 130, i32 1}
!140 = !{ptr @__param_alloc_pages_gfp, !141, !"__param_alloc_pages_gfp", i1 false, i1 false}
!141 = !{!"../lib/test_lockup.c", i32 133, i32 1}
!142 = !{ptr @__UNIQUE_ID_alloc_pages_gfptype283, !141, !"__UNIQUE_ID_alloc_pages_gfptype283", i1 false, i1 false}
!143 = !{ptr @__UNIQUE_ID_alloc_pages_gfp284, !144, !"__UNIQUE_ID_alloc_pages_gfp284", i1 false, i1 false}
!144 = !{!"../lib/test_lockup.c", i32 134, i32 1}
!145 = !{ptr @__param_alloc_pages_atomic, !146, !"__param_alloc_pages_atomic", i1 false, i1 false}
!146 = !{!"../lib/test_lockup.c", i32 137, i32 1}
!147 = !{ptr @__UNIQUE_ID_alloc_pages_atomictype285, !146, !"__UNIQUE_ID_alloc_pages_atomictype285", i1 false, i1 false}
!148 = !{ptr @__UNIQUE_ID_alloc_pages_atomic286, !149, !"__UNIQUE_ID_alloc_pages_atomic286", i1 false, i1 false}
!149 = !{!"../lib/test_lockup.c", i32 138, i32 1}
!150 = !{ptr @__param_reallocate_pages, !151, !"__param_reallocate_pages", i1 false, i1 false}
!151 = !{!"../lib/test_lockup.c", i32 141, i32 1}
!152 = !{ptr @__UNIQUE_ID_reallocate_pagestype287, !151, !"__UNIQUE_ID_reallocate_pagestype287", i1 false, i1 false}
!153 = !{ptr @__UNIQUE_ID_reallocate_pages288, !154, !"__UNIQUE_ID_reallocate_pages288", i1 false, i1 false}
!154 = !{!"../lib/test_lockup.c", i32 142, i32 1}
!155 = !{ptr @__param_file_path, !156, !"__param_file_path", i1 false, i1 false}
!156 = !{!"../lib/test_lockup.c", i32 147, i32 1}
!157 = !{ptr @__UNIQUE_ID_file_pathtype289, !156, !"__UNIQUE_ID_file_pathtype289", i1 false, i1 false}
!158 = !{ptr @__UNIQUE_ID_file_path290, !159, !"__UNIQUE_ID_file_path290", i1 false, i1 false}
!159 = !{!"../lib/test_lockup.c", i32 148, i32 1}
!160 = !{ptr @__param_lock_inode, !161, !"__param_lock_inode", i1 false, i1 false}
!161 = !{!"../lib/test_lockup.c", i32 151, i32 1}
!162 = !{ptr @__UNIQUE_ID_lock_inodetype291, !161, !"__UNIQUE_ID_lock_inodetype291", i1 false, i1 false}
!163 = !{ptr @__UNIQUE_ID_lock_inode292, !164, !"__UNIQUE_ID_lock_inode292", i1 false, i1 false}
!164 = !{!"../lib/test_lockup.c", i32 152, i32 1}
!165 = !{ptr @__param_lock_mapping, !166, !"__param_lock_mapping", i1 false, i1 false}
!166 = !{!"../lib/test_lockup.c", i32 155, i32 1}
!167 = !{ptr @__UNIQUE_ID_lock_mappingtype293, !166, !"__UNIQUE_ID_lock_mappingtype293", i1 false, i1 false}
!168 = !{ptr @__UNIQUE_ID_lock_mapping294, !169, !"__UNIQUE_ID_lock_mapping294", i1 false, i1 false}
!169 = !{!"../lib/test_lockup.c", i32 156, i32 1}
!170 = !{ptr @__param_lock_sb_umount, !171, !"__param_lock_sb_umount", i1 false, i1 false}
!171 = !{!"../lib/test_lockup.c", i32 159, i32 1}
!172 = !{ptr @__UNIQUE_ID_lock_sb_umounttype295, !171, !"__UNIQUE_ID_lock_sb_umounttype295", i1 false, i1 false}
!173 = !{ptr @__UNIQUE_ID_lock_sb_umount296, !174, !"__UNIQUE_ID_lock_sb_umount296", i1 false, i1 false}
!174 = !{!"../lib/test_lockup.c", i32 160, i32 1}
!175 = !{ptr @__UNIQUE_ID_license298, !176, !"__UNIQUE_ID_license298", i1 false, i1 false}
!176 = !{!"../lib/test_lockup.c", i32 613, i32 1}
!177 = !{ptr @__UNIQUE_ID_author299, !178, !"__UNIQUE_ID_author299", i1 false, i1 false}
!178 = !{!"../lib/test_lockup.c", i32 614, i32 1}
!179 = !{ptr @__UNIQUE_ID_description300, !180, !"__UNIQUE_ID_description300", i1 false, i1 false}
!180 = !{!"../lib/test_lockup.c", i32 615, i32 1}
!181 = !{ptr @time_secs, !182, !"time_secs", i1 false, i1 false}
!182 = !{!"../lib/test_lockup.c", i32 19, i32 21}
!183 = !{ptr @time_nsecs, !184, !"time_nsecs", i1 false, i1 false}
!184 = !{!"../lib/test_lockup.c", i32 23, i32 21}
!185 = !{ptr @cooldown_secs, !186, !"cooldown_secs", i1 false, i1 false}
!186 = !{!"../lib/test_lockup.c", i32 27, i32 21}
!187 = !{ptr @cooldown_nsecs, !188, !"cooldown_nsecs", i1 false, i1 false}
!188 = !{!"../lib/test_lockup.c", i32 31, i32 21}
!189 = !{ptr @all_cpus, !190, !"all_cpus", i1 false, i1 false}
!190 = !{!"../lib/test_lockup.c", i32 39, i32 13}
!191 = !{ptr @use_hrtimer, !192, !"use_hrtimer", i1 false, i1 false}
!192 = !{!"../lib/test_lockup.c", i32 48, i32 13}
!193 = !{ptr @iowait, !194, !"iowait", i1 false, i1 false}
!194 = !{!"../lib/test_lockup.c", i32 52, i32 13}
!195 = !{ptr @lock_read, !196, !"lock_read", i1 false, i1 false}
!196 = !{!"../lib/test_lockup.c", i32 56, i32 13}
!197 = !{ptr @lock_single, !198, !"lock_single", i1 false, i1 false}
!198 = !{!"../lib/test_lockup.c", i32 60, i32 13}
!199 = !{ptr @reacquire_locks, !200, !"reacquire_locks", i1 false, i1 false}
!200 = !{!"../lib/test_lockup.c", i32 64, i32 13}
!201 = !{ptr @touch_softlockup, !202, !"touch_softlockup", i1 false, i1 false}
!202 = !{!"../lib/test_lockup.c", i32 68, i32 13}
!203 = !{ptr @touch_hardlockup, !204, !"touch_hardlockup", i1 false, i1 false}
!204 = !{!"../lib/test_lockup.c", i32 72, i32 13}
!205 = !{ptr @call_cond_resched, !206, !"call_cond_resched", i1 false, i1 false}
!206 = !{!"../lib/test_lockup.c", i32 76, i32 13}
!207 = !{ptr @measure_lock_wait, !208, !"measure_lock_wait", i1 false, i1 false}
!208 = !{!"../lib/test_lockup.c", i32 80, i32 13}
!209 = !{ptr @test_disable_irq, !210, !"test_disable_irq", i1 false, i1 false}
!210 = !{!"../lib/test_lockup.c", i32 88, i32 13}
!211 = !{ptr @disable_softirq, !212, !"disable_softirq", i1 false, i1 false}
!212 = !{!"../lib/test_lockup.c", i32 92, i32 13}
!213 = !{ptr @disable_preempt, !214, !"disable_preempt", i1 false, i1 false}
!214 = !{!"../lib/test_lockup.c", i32 96, i32 13}
!215 = !{ptr @lock_rcu, !216, !"lock_rcu", i1 false, i1 false}
!216 = !{!"../lib/test_lockup.c", i32 100, i32 13}
!217 = !{ptr @lock_mmap_sem, !218, !"lock_mmap_sem", i1 false, i1 false}
!218 = !{!"../lib/test_lockup.c", i32 104, i32 13}
!219 = !{ptr @lock_rwsem_ptr, !220, !"lock_rwsem_ptr", i1 false, i1 false}
!220 = !{!"../lib/test_lockup.c", i32 108, i32 22}
!221 = !{ptr @lock_mutex_ptr, !222, !"lock_mutex_ptr", i1 false, i1 false}
!222 = !{!"../lib/test_lockup.c", i32 112, i32 22}
!223 = !{ptr @lock_spinlock_ptr, !224, !"lock_spinlock_ptr", i1 false, i1 false}
!224 = !{!"../lib/test_lockup.c", i32 116, i32 22}
!225 = !{ptr @lock_rwlock_ptr, !226, !"lock_rwlock_ptr", i1 false, i1 false}
!226 = !{!"../lib/test_lockup.c", i32 120, i32 22}
!227 = !{ptr @alloc_pages_nr, !228, !"alloc_pages_nr", i1 false, i1 false}
!228 = !{!"../lib/test_lockup.c", i32 124, i32 21}
!229 = !{ptr @alloc_pages_order, !230, !"alloc_pages_order", i1 false, i1 false}
!230 = !{!"../lib/test_lockup.c", i32 128, i32 21}
!231 = !{ptr @alloc_pages_atomic, !232, !"alloc_pages_atomic", i1 false, i1 false}
!232 = !{!"../lib/test_lockup.c", i32 136, i32 13}
!233 = !{ptr @reallocate_pages, !234, !"reallocate_pages", i1 false, i1 false}
!234 = !{!"../lib/test_lockup.c", i32 140, i32 13}
!235 = !{ptr @test_file, !236, !"test_file", i1 false, i1 false}
!236 = !{!"../lib/test_lockup.c", i32 144, i32 14}
!237 = !{ptr @test_lock_inode, !238, !"test_lock_inode", i1 false, i1 false}
!238 = !{!"../lib/test_lockup.c", i32 150, i32 13}
!239 = !{ptr @test_lock_mapping, !240, !"test_lock_mapping", i1 false, i1 false}
!240 = !{!"../lib/test_lockup.c", i32 154, i32 13}
!241 = !{ptr @test_lock_sb_umount, !242, !"test_lock_sb_umount", i1 false, i1 false}
!242 = !{!"../lib/test_lockup.c", i32 158, i32 13}
!243 = !{ptr @__pcpu_unique_test_works, !244, !"__pcpu_unique_test_works", i1 false, i1 false}
!244 = !{!"../lib/test_lockup.c", i32 403, i32 8}
!245 = !{ptr @test_works, !244, !"test_works", i1 false, i1 false}
!246 = !{ptr @___asan_gen_.90, !1, !"__param_str_time_secs", i1 false, i1 false}
!247 = !{ptr @___asan_gen_.93, !6, !"__param_str_time_nsecs", i1 false, i1 false}
!248 = !{ptr @___asan_gen_.96, !11, !"__param_str_cooldown_secs", i1 false, i1 false}
!249 = !{ptr @___asan_gen_.99, !16, !"__param_str_cooldown_nsecs", i1 false, i1 false}
!250 = !{ptr @___asan_gen_.102, !21, !"__param_str_iterations", i1 false, i1 false}
!251 = !{ptr @iterations, !252, !"iterations", i1 false, i1 false}
!252 = !{!"../lib/test_lockup.c", i32 35, i32 21}
!253 = !{ptr @___asan_gen_.105, !26, !"__param_str_all_cpus", i1 false, i1 false}
!254 = !{ptr @___asan_gen_.108, !31, !"__param_str_state", i1 false, i1 false}
!255 = !{ptr @.str, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../lib/test_lockup.c", i32 44, i32 22}
!257 = !{ptr @state, !258, !"state", i1 false, i1 false}
!258 = !{!"../lib/test_lockup.c", i32 44, i32 14}
!259 = !{ptr @___asan_gen_.111, !36, !"__param_str_use_hrtimer", i1 false, i1 false}
!260 = !{ptr @___asan_gen_.114, !41, !"__param_str_iowait", i1 false, i1 false}
!261 = !{ptr @___asan_gen_.117, !46, !"__param_str_lock_read", i1 false, i1 false}
!262 = !{ptr @___asan_gen_.120, !51, !"__param_str_lock_single", i1 false, i1 false}
!263 = !{ptr @___asan_gen_.123, !56, !"__param_str_reacquire_locks", i1 false, i1 false}
!264 = !{ptr @___asan_gen_.126, !61, !"__param_str_touch_softlockup", i1 false, i1 false}
!265 = !{ptr @___asan_gen_.129, !66, !"__param_str_touch_hardlockup", i1 false, i1 false}
!266 = !{ptr @___asan_gen_.132, !71, !"__param_str_call_cond_resched", i1 false, i1 false}
!267 = !{ptr @___asan_gen_.135, !76, !"__param_str_measure_lock_wait", i1 false, i1 false}
!268 = !{ptr @___asan_gen_.138, !81, !"__param_str_lock_wait_threshold", i1 false, i1 false}
!269 = !{ptr @lock_wait_threshold, !270, !"lock_wait_threshold", i1 false, i1 false}
!270 = !{!"../lib/test_lockup.c", i32 84, i32 22}
!271 = !{ptr @__param_str_disable_irq, !86, !"__param_str_disable_irq", i1 false, i1 false}
!272 = !{ptr @___asan_gen_.144, !91, !"__param_str_disable_softirq", i1 false, i1 false}
!273 = !{ptr @___asan_gen_.147, !96, !"__param_str_disable_preempt", i1 false, i1 false}
!274 = !{ptr @___asan_gen_.150, !101, !"__param_str_lock_rcu", i1 false, i1 false}
!275 = !{ptr @___asan_gen_.153, !106, !"__param_str_lock_mmap_sem", i1 false, i1 false}
!276 = !{ptr @___asan_gen_.156, !111, !"__param_str_lock_rwsem_ptr", i1 false, i1 false}
!277 = !{ptr @___asan_gen_.159, !116, !"__param_str_lock_mutex_ptr", i1 false, i1 false}
!278 = !{ptr @___asan_gen_.162, !121, !"__param_str_lock_spinlock_ptr", i1 false, i1 false}
!279 = !{ptr @___asan_gen_.165, !126, !"__param_str_lock_rwlock_ptr", i1 false, i1 false}
!280 = !{ptr @___asan_gen_.168, !131, !"__param_str_alloc_pages_nr", i1 false, i1 false}
!281 = !{ptr @___asan_gen_.171, !136, !"__param_str_alloc_pages_order", i1 false, i1 false}
!282 = !{ptr @___asan_gen_.174, !141, !"__param_str_alloc_pages_gfp", i1 false, i1 false}
!283 = !{ptr @alloc_pages_gfp, !284, !"alloc_pages_gfp", i1 false, i1 false}
!284 = !{!"../lib/test_lockup.c", i32 132, i32 14}
!285 = !{ptr @___asan_gen_.177, !146, !"__param_str_alloc_pages_atomic", i1 false, i1 false}
!286 = !{ptr @___asan_gen_.180, !151, !"__param_str_reallocate_pages", i1 false, i1 false}
!287 = !{ptr @__param_str_file_path, !156, !"__param_str_file_path", i1 false, i1 false}
!288 = !{ptr @__param_string_file_path, !156, !"__param_string_file_path", i1 false, i1 false}
!289 = !{ptr @test_file_path, !290, !"test_file_path", i1 false, i1 false}
!290 = !{!"../lib/test_lockup.c", i32 146, i32 13}
!291 = !{ptr @__param_str_lock_inode, !161, !"__param_str_lock_inode", i1 false, i1 false}
!292 = !{ptr @__param_str_lock_mapping, !166, !"__param_str_lock_mapping", i1 false, i1 false}
!293 = !{ptr @__param_str_lock_sb_umount, !171, !"__param_str_lock_sb_umount", i1 false, i1 false}
!294 = !{ptr @.str.1, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../lib/test_lockup.c", i32 469, i32 3}
!296 = !{ptr @.str.2, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.3, !295, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @test_lockup_init._entry, !295, !"_entry", i1 false, i1 false}
!299 = !{ptr @test_lockup_init._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.5, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../lib/test_lockup.c", i32 519, i32 3}
!302 = !{ptr @test_lockup_init._entry.4, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @test_lockup_init._entry_ptr.6, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.8, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../lib/test_lockup.c", i32 524, i32 3}
!306 = !{ptr @test_lockup_init._entry.7, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @test_lockup_init._entry_ptr.9, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.11, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../lib/test_lockup.c", i32 531, i32 4}
!310 = !{ptr @test_lockup_init._entry.10, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @test_lockup_init._entry_ptr.12, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.14, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../lib/test_lockup.c", i32 538, i32 3}
!314 = !{ptr @test_lockup_init._entry.13, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @test_lockup_init._entry_ptr.15, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.17, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../lib/test_lockup.c", i32 551, i32 2}
!318 = !{ptr @test_lockup_init._entry.16, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @test_lockup_init._entry_ptr.18, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.19, !317, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.20, !317, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.21, !317, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.22, !317, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.23, !317, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.24, !317, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.25, !317, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.26, !317, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.27, !317, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.28, !317, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.29, !317, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.30, !317, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.32, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../lib/test_lockup.c", i32 567, i32 3}
!334 = !{ptr @test_lockup_init._entry.31, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @test_lockup_init._entry_ptr.33, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.34, !333, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @test_lockup_init.__key, !338, !"__key", i1 false, i1 false}
!338 = !{!"../lib/test_lockup.c", i32 579, i32 4}
!339 = !{ptr @.str.35, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.37, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../lib/test_lockup.c", i32 594, i32 3}
!342 = !{ptr @test_lockup_init._entry.36, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @test_lockup_init._entry_ptr.38, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.40, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../lib/test_lockup.c", i32 598, i32 3}
!346 = !{ptr @test_lockup_init._entry.39, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @test_lockup_init._entry_ptr.41, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.43, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../lib/test_lockup.c", i32 601, i32 2}
!350 = !{ptr @test_lockup_init._entry.42, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @test_lockup_init._entry_ptr.44, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @main_task, !353, !"main_task", i1 false, i1 false}
!353 = !{!"../lib/test_lockup.c", i32 166, i32 28}
!354 = !{ptr @wait_state, !355, !"wait_state", i1 false, i1 false}
!355 = !{!"../lib/test_lockup.c", i32 43, i32 12}
!356 = !{ptr @.str.45, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../lib/test_lockup.c", i32 424, i32 3}
!358 = !{ptr @.str.46, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @test_kernel_ptr._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @test_kernel_ptr._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.47, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../lib/test_lockup.c", i32 441, i32 3}
!363 = !{ptr @.str.48, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @test_magic._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @test_magic._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @test_inode, !367, !"test_inode", i1 false, i1 false}
!367 = !{!"../lib/test_lockup.c", i32 145, i32 22}
!368 = !{ptr @master_cpu, !369, !"master_cpu", i1 false, i1 false}
!369 = !{!"../lib/test_lockup.c", i32 167, i32 12}
!370 = !{ptr @.str.49, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../lib/test_lockup.c", i32 355, i32 2}
!372 = !{ptr @.str.50, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @test_lockup._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @test_lockup._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.52, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../lib/test_lockup.c", i32 395, i32 2}
!377 = !{ptr @test_lockup._entry.51, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @test_lockup._entry_ptr.53, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.54, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../lib/test_lockup.c", i32 178, i32 4}
!381 = !{ptr @.str.55, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @test_lock._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @test_lock._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.57, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../lib/test_lockup.c", i32 184, i32 4}
!386 = !{ptr @test_lock._entry.56, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @test_lock._entry_ptr.58, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.60, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../lib/test_lockup.c", i32 194, i32 4}
!390 = !{ptr @test_lock._entry.59, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @test_lock._entry_ptr.61, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.63, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../lib/test_lockup.c", i32 215, i32 4}
!394 = !{ptr @test_lock._entry.62, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @test_lock._entry_ptr.64, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.66, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../lib/test_lockup.c", i32 222, i32 4}
!398 = !{ptr @test_lock._entry.65, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @test_lock._entry_ptr.67, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.68, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../lib/test_lockup.c", i32 242, i32 4}
!402 = !{ptr @test_lock._rs, !401, !"_rs", i1 false, i1 false}
!403 = !{ptr @.str.70, !401, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @test_lock._entry.69, !401, !"_entry", i1 false, i1 false}
!405 = !{ptr @test_lock._entry_ptr.71, !401, !"_entry_ptr", i1 false, i1 false}
!406 = distinct !{null, !407, !"__warned", i1 false, i1 false}
!407 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!408 = !{ptr @.str.72, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.73, !407, !"<string literal>", i1 false, i1 false}
!410 = distinct !{null, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!412 = distinct !{null, !413, !"__already_done", i1 false, i1 false}
!413 = !{!"../lib/test_lockup.c", i32 338, i32 2}
!414 = !{ptr @.str.75, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../lib/test_lockup.c", i32 254, i32 4}
!416 = !{ptr @.str.76, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @test_unlock._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @test_unlock._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.78, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../lib/test_lockup.c", i32 261, i32 4}
!421 = !{ptr @test_unlock._entry.77, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @test_unlock._entry_ptr.79, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.81, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../lib/test_lockup.c", i32 283, i32 4}
!425 = !{ptr @test_unlock._entry.80, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @test_unlock._entry_ptr.82, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.84, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../lib/test_lockup.c", i32 292, i32 4}
!429 = !{ptr @test_unlock._entry.83, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @test_unlock._entry_ptr.85, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.87, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../lib/test_lockup.c", i32 299, i32 4}
!433 = !{ptr @test_unlock._entry.86, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @test_unlock._entry_ptr.88, !432, !"_entry_ptr", i1 false, i1 false}
!435 = distinct !{null, !436, !"__warned", i1 false, i1 false}
!436 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!437 = !{ptr @.str.89, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @max_lock_wait, !439, !"max_lock_wait", i1 false, i1 false}
!439 = !{!"../lib/test_lockup.c", i32 164, i32 19}
!440 = !{ptr @alloc_pages_failed, !441, !"alloc_pages_failed", i1 false, i1 false}
!441 = !{!"../lib/test_lockup.c", i32 162, i32 17}
!442 = !{!"sp"}
!443 = !{i32 1, !"wchar_size", i32 2}
!444 = !{i32 1, !"min_enum_size", i32 4}
!445 = !{i32 8, !"branch-target-enforcement", i32 0}
!446 = !{i32 8, !"sign-return-address", i32 0}
!447 = !{i32 8, !"sign-return-address-all", i32 0}
!448 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!449 = !{i32 7, !"uwtable", i32 1}
!450 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!451 = !{i8 0, i8 2}
!452 = !{i64 2153944495}
!453 = !{i64 2153949796}
!454 = !{!"branch_weights", i32 2000, i32 1}
!455 = !{!"auto-init"}
!456 = !{i64 2153923583, i64 2153923608}
!457 = !{i64 2153924312, i64 2153924337}
!458 = !{i64 2148224432, i64 2148224458, i64 2148224487, i64 2148224521, i64 2148224552, i64 2148224575}
!459 = !{i64 2148705863, i64 2148705868, i64 2148705881, i64 2148705925, i64 2148705959, i64 2148705980}
!460 = !{i64 619645}
!461 = !{i64 617348}
!462 = !{i64 2153892355}
!463 = !{i64 2149370517}
!464 = !{i64 2149370783}
!465 = !{i64 2153902071}
!466 = !{i64 617158}
